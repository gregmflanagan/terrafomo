-- This module is auto-generated.

{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE RecordWildCards        #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE UndecidableInstances   #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.GitHub.Resource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.GitHub.Resource where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)
import Data.Text    (Text)

import GHC.Base (Eq, const, ($))
import GHC.Show (Show)

import qualified Terrafomo.GitHub          as TF
import qualified Terrafomo.Syntax.HCL      as TF
import qualified Terrafomo.Syntax.Resource as TF
import qualified Terrafomo.Syntax.Variable as TF
import qualified Terrafomo.TH              as TF

{- | The @github_branch_protection@ GitHub resource.

Protects a GitHub branch. This resource allows you to configure branch
protection for repositories in your organization. When applied, the branch
will be protected from forced pushes and deletion. Additional constraints,
such as required status checks or restrictions on users and teams, can also
be configured.
-}
data BranchProtectionResource = BranchProtectionResource {
      _branch                        :: !(TF.Argument Text)
    {- ^ (Required) The Git branch to protect. -}
    , _enforce_admins                :: !(TF.Argument Text)
    {- ^ (Optional) Boolean, setting this to @true@ enforces status checks for repository administrators. -}
    , _repository                    :: !(TF.Argument Text)
    {- ^ (Required) The GitHub repository name. -}
    , _required_pull_request_reviews :: !(TF.Argument Text)
    {- ^ (Optional) Enforce restrictions for pull request reviews. See <#required-pull-request-reviews> below for details. -}
    , _required_status_checks        :: !(TF.Argument Text)
    {- ^ (Optional) Enforce restrictions for required status checks. See <#required-status-checks> below for details. -}
    , _restrictions                  :: !(TF.Argument Text)
    {- ^ (Optional) Enforce restrictions for the users and teams that may push to the branch. See <#restrictions> below for details. -}
    } deriving (Show, Eq)

branchProtectionResource :: TF.Resource TF.GitHub BranchProtectionResource
branchProtectionResource =
    TF.newResource "github_branch_protection" $
        BranchProtectionResource {
            _branch = TF.Absent
            , _enforce_admins = TF.Absent
            , _repository = TF.Absent
            , _required_pull_request_reviews = TF.Absent
            , _required_status_checks = TF.Absent
            , _restrictions = TF.Absent
            }

instance TF.ToHCL BranchProtectionResource where
    toHCL BranchProtectionResource{..} = TF.arguments
        [ TF.assign "branch" <$> _branch
        , TF.assign "enforce_admins" <$> _enforce_admins
        , TF.assign "repository" <$> _repository
        , TF.assign "required_pull_request_reviews" <$> _required_pull_request_reviews
        , TF.assign "required_status_checks" <$> _required_status_checks
        , TF.assign "restrictions" <$> _restrictions
        ]

$(TF.makeSchemaLenses
    ''BranchProtectionResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_issue_label@ GitHub resource.

Provides a GitHub issue label resource. This resource allows you to create
and manage issue labels within your Github organization. Issue labels are
keyed off of their "name", so pre-existing issue labels result in a 422 HTTP
error if they exist outside of Terraform. Normally this would not be an
issue, except new repositories are created with a "default" set of labels,
and those labels easily conflict with custom ones. This resource will first
check if the label exists, and then issue an update, otherwise it will
create.
-}
data IssueLabelResource = IssueLabelResource {
      _color      :: !(TF.Argument Text)
    {- ^ (Required) A 6 character hex code, without the leading # , identifying the color of the label. -}
    , _name       :: !(TF.Argument Text)
    {- ^ (Required) The name of the label. -}
    , _repository :: !(TF.Argument Text)
    {- ^ (Required) The GitHub repository -}
    , _url        :: !(TF.Argument Text)
    {- ^ - (Computed) The URL to the issue label -}
    } deriving (Show, Eq)

issueLabelResource :: TF.Resource TF.GitHub IssueLabelResource
issueLabelResource =
    TF.newResource "github_issue_label" $
        IssueLabelResource {
            _color = TF.Absent
            , _name = TF.Absent
            , _repository = TF.Absent
            , _url = TF.Absent
            }

instance TF.ToHCL IssueLabelResource where
    toHCL IssueLabelResource{..} = TF.arguments
        [ TF.assign "color" <$> _color
        , TF.assign "name" <$> _name
        , TF.assign "repository" <$> _repository
        , TF.assign "url" <$> _url
        ]

$(TF.makeSchemaLenses
    ''IssueLabelResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_membership@ GitHub resource.

Provides a GitHub membership resource. This resource allows you to
add/remove users from your organization. When applied, an invitation will be
sent to the user to become part of the organization. When destroyed, either
the invitation will be cancelled or the user will be removed.
-}
data MembershipResource = MembershipResource {
      _role     :: !(TF.Argument Text)
    {- ^ (Optional) The role of the user within the organization. Must be one of @member@ or @admin@ . Defaults to @member@ . -}
    , _username :: !(TF.Argument Text)
    {- ^ (Required) The user to add to the organization. -}
    } deriving (Show, Eq)

membershipResource :: TF.Resource TF.GitHub MembershipResource
membershipResource =
    TF.newResource "github_membership" $
        MembershipResource {
            _role = TF.Absent
            , _username = TF.Absent
            }

instance TF.ToHCL MembershipResource where
    toHCL MembershipResource{..} = TF.arguments
        [ TF.assign "role" <$> _role
        , TF.assign "username" <$> _username
        ]

$(TF.makeSchemaLenses
    ''MembershipResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_organization_webhook@ GitHub resource.

This resource allows you to create and manage webhooks for Github
organization.
-}
data OrganizationWebhookResource = OrganizationWebhookResource {
      _active        :: !(TF.Argument Text)
    {- ^ (Optional) Indicate of the webhook should receive events. Defaults to @true@ . -}
    , _configuration :: !(TF.Argument Text)
    {- ^ (Required) key/value pair of configuration for this webhook. Available keys are @url@ , @content_type@ , @secret@ and @insecure_ssl@ . -}
    , _events        :: !(TF.Argument Text)
    {- ^ (Required) A list of events which should trigger the webhook. See a list of <https://developer.github.com/v3/activity/events/types/> -}
    , _name          :: !(TF.Argument Text)
    {- ^ (Required) The type of the webhook. See a list of <https://api.github.com/hooks> . -}
    , _computed_url  :: !(TF.Attribute Text)
    {- ^ - URL of the webhook -}
    } deriving (Show, Eq)

organizationWebhookResource :: TF.Resource TF.GitHub OrganizationWebhookResource
organizationWebhookResource =
    TF.newResource "github_organization_webhook" $
        OrganizationWebhookResource {
            _active = TF.Absent
            , _configuration = TF.Absent
            , _events = TF.Absent
            , _name = TF.Absent
            , _computed_url = TF.Computed "url"
            }

instance TF.ToHCL OrganizationWebhookResource where
    toHCL OrganizationWebhookResource{..} = TF.arguments
        [ TF.assign "active" <$> _active
        , TF.assign "configuration" <$> _configuration
        , TF.assign "events" <$> _events
        , TF.assign "name" <$> _name
        ]

$(TF.makeSchemaLenses
    ''OrganizationWebhookResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_repository_collaborator@ GitHub resource.

Provides a GitHub repository collaborator resource. This resource allows you
to add/remove collaborators from repositories in your organization.
Collaborators can have explicit (and differing levels of) read, write, or
administrator access to specific repositories in your organization, without
giving the user full organization membership. When applied, an invitation
will be sent to the user to become a collaborator on a repository. When
destroyed, either the invitation will be cancelled or the collaborator will
be removed from the repository. Further documentation on GitHub
collaborators:
-}
data RepositoryCollaboratorResource = RepositoryCollaboratorResource {
      _permission :: !(TF.Argument Text)
    {- ^ (Optional) The permission of the outside collaborator for the repository. Must be one of @pull@ , @push@ , or @admin@ . Defaults to @push@ . -}
    , _repository :: !(TF.Argument Text)
    {- ^ (Required) The GitHub repository -}
    , _username   :: !(TF.Argument Text)
    {- ^ (Required) The user to add to the repository as a collaborator. -}
    } deriving (Show, Eq)

repositoryCollaboratorResource :: TF.Resource TF.GitHub RepositoryCollaboratorResource
repositoryCollaboratorResource =
    TF.newResource "github_repository_collaborator" $
        RepositoryCollaboratorResource {
            _permission = TF.Absent
            , _repository = TF.Absent
            , _username = TF.Absent
            }

instance TF.ToHCL RepositoryCollaboratorResource where
    toHCL RepositoryCollaboratorResource{..} = TF.arguments
        [ TF.assign "permission" <$> _permission
        , TF.assign "repository" <$> _repository
        , TF.assign "username" <$> _username
        ]

$(TF.makeSchemaLenses
    ''RepositoryCollaboratorResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_repository_deploy_key@ GitHub resource.

Provides a GitHub repository deploy key resource. A deploy key is an SSH key
that is stored on your server and grants access to a single GitHub
repository. This key is attached directly to the repository instead of to a
personal user account. This resource allows you to add/remove repository
deploy keys. Further documentation on GitHub repository deploy keys:
-}
data RepositoryDeployKeyResource = RepositoryDeployKeyResource {
      _key        :: !(TF.Argument Text)
    {- ^ (Required) A ssh key. -}
    , _read_only  :: !(TF.Argument Text)
    {- ^ (Required) A boolean qualifying the key to be either read only or read/write. -}
    , _repository :: !(TF.Argument Text)
    {- ^ (Required) Name of the Github repository. -}
    , _title      :: !(TF.Argument Text)
    {- ^ (Required) A title. -}
    } deriving (Show, Eq)

repositoryDeployKeyResource :: TF.Resource TF.GitHub RepositoryDeployKeyResource
repositoryDeployKeyResource =
    TF.newResource "github_repository_deploy_key" $
        RepositoryDeployKeyResource {
            _key = TF.Absent
            , _read_only = TF.Absent
            , _repository = TF.Absent
            , _title = TF.Absent
            }

instance TF.ToHCL RepositoryDeployKeyResource where
    toHCL RepositoryDeployKeyResource{..} = TF.arguments
        [ TF.assign "key" <$> _key
        , TF.assign "read_only" <$> _read_only
        , TF.assign "repository" <$> _repository
        , TF.assign "title" <$> _title
        ]

$(TF.makeSchemaLenses
    ''RepositoryDeployKeyResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_repository@ GitHub resource.

This resource allows you to create and manage repositories within your
Github organization. This resource cannot currently be used to manage
personal repositories, outside of organizations.
-}
data RepositoryResource = RepositoryResource {
      _allow_merge_commit      :: !(TF.Argument Text)
    {- ^ (Optional) Set to @false@ to disable merge commits on the repository. -}
    , _allow_rebase_merge      :: !(TF.Argument Text)
    {- ^ (Optional) Set to @false@ to disable rebase merges on the repository. -}
    , _allow_squash_merge      :: !(TF.Argument Text)
    {- ^ (Optional) Set to @false@ to disable squash merges on the repository. -}
    , _auto_init               :: !(TF.Argument Text)
    {- ^ (Optional) Meaningful only during create; set to @true@ to produce an initial commit in the repository. -}
    , _default_branch          :: !(TF.Argument Text)
    {- ^ (Optional) The name of the default branch of the repository. NOTE: This can only be set after a repository has already been created, and after a correct reference has been created for the target branch inside the repository. This means a user will have to omit this parameter from the initial repository creation and create the target branch inside of the repository prior to setting this attribute. -}
    , _description             :: !(TF.Argument Text)
    {- ^ (Optional) A description of the repository. -}
    , _gitignore_template      :: !(TF.Argument Text)
    {- ^ (Optional) Meaningful only during create, will be ignored after repository creation. Use the <https://github.com/github/gitignore> without the extension. For example, "Haskell". -}
    , _has_downloads           :: !(TF.Argument Text)
    {- ^ (Optional) Set to @true@ to enable the (deprecated) downloads features on the repository. -}
    , _has_issues              :: !(TF.Argument Text)
    {- ^ (Optional) Set to @true@ to enable the Github Issues features on the repository. -}
    , _has_wiki                :: !(TF.Argument Text)
    {- ^ (Optional) Set to @true@ to enable the Github Wiki features on the repository. -}
    , _homepage_url            :: !(TF.Argument Text)
    {- ^ (Optional) URL of a page describing the project. -}
    , _license_template        :: !(TF.Argument Text)
    {- ^ (Optional) Meaningful only during create, will be ignored after repository creation. Use the <https://github.com/github/choosealicense.com/tree/gh-pages/_licenses> without the extension. For example, "mit" or "mozilla". -}
    , _name                    :: !(TF.Argument Text)
    {- ^ (Required) The name of the repository. -}
    , _private                 :: !(TF.Argument Text)
    {- ^ (Optional) Set to @true@ to create a private repository. Repositories are created as public (e.g. open source) by default. -}
    , _computed_full_name      :: !(TF.Attribute Text)
    {- ^ - A string of the form "orgname/reponame". -}
    , _computed_git_clone_url  :: !(TF.Attribute Text)
    {- ^ - URL that can be provided to @git clone@ to clone the repository anonymously via the git protocol. -}
    , _computed_http_clone_url :: !(TF.Attribute Text)
    {- ^ - URL that can be provided to @git clone@ to clone the repository via HTTPS. -}
    , _computed_ssh_clone_url  :: !(TF.Attribute Text)
    {- ^ - URL that can be provided to @git clone@ to clone the repository via SSH. -}
    , _computed_svn_url        :: !(TF.Attribute Text)
    {- ^ - URL that can be provided to @svn checkout@ to check out the repository via Github's Subversion protocol emulation. -}
    } deriving (Show, Eq)

repositoryResource :: TF.Resource TF.GitHub RepositoryResource
repositoryResource =
    TF.newResource "github_repository" $
        RepositoryResource {
            _allow_merge_commit = TF.Absent
            , _allow_rebase_merge = TF.Absent
            , _allow_squash_merge = TF.Absent
            , _auto_init = TF.Absent
            , _default_branch = TF.Absent
            , _description = TF.Absent
            , _gitignore_template = TF.Absent
            , _has_downloads = TF.Absent
            , _has_issues = TF.Absent
            , _has_wiki = TF.Absent
            , _homepage_url = TF.Absent
            , _license_template = TF.Absent
            , _name = TF.Absent
            , _private = TF.Absent
            , _computed_full_name = TF.Computed "full_name"
            , _computed_git_clone_url = TF.Computed "git_clone_url"
            , _computed_http_clone_url = TF.Computed "http_clone_url"
            , _computed_ssh_clone_url = TF.Computed "ssh_clone_url"
            , _computed_svn_url = TF.Computed "svn_url"
            }

instance TF.ToHCL RepositoryResource where
    toHCL RepositoryResource{..} = TF.arguments
        [ TF.assign "allow_merge_commit" <$> _allow_merge_commit
        , TF.assign "allow_rebase_merge" <$> _allow_rebase_merge
        , TF.assign "allow_squash_merge" <$> _allow_squash_merge
        , TF.assign "auto_init" <$> _auto_init
        , TF.assign "default_branch" <$> _default_branch
        , TF.assign "description" <$> _description
        , TF.assign "gitignore_template" <$> _gitignore_template
        , TF.assign "has_downloads" <$> _has_downloads
        , TF.assign "has_issues" <$> _has_issues
        , TF.assign "has_wiki" <$> _has_wiki
        , TF.assign "homepage_url" <$> _homepage_url
        , TF.assign "license_template" <$> _license_template
        , TF.assign "name" <$> _name
        , TF.assign "private" <$> _private
        ]

$(TF.makeSchemaLenses
    ''RepositoryResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_repository_webhook@ GitHub resource.

This resource allows you to create and manage webhooks for repositories
within your Github organization. This resource cannot currently be used to
manage webhooks for personal repositories, outside of organizations.
-}
data RepositoryWebhookResource = RepositoryWebhookResource {
      _active        :: !(TF.Argument Text)
    {- ^ (Optional) Indicate of the webhook should receive events. Defaults to @true@ . -}
    , _configuration :: !(TF.Argument Text)
    {- ^ (Required) key/value pair of configuration for this webhook. Available keys are @url@ , @content_type@ , @secret@ and @insecure_ssl@ . -}
    , _events        :: !(TF.Argument Text)
    {- ^ (Required) A list of events which should trigger the webhook. See a list of <https://developer.github.com/v3/activity/events/types/> -}
    , _name          :: !(TF.Argument Text)
    {- ^ (Required) The type of the webhook. See a list of <https://api.github.com/hooks> . -}
    , _repository    :: !(TF.Argument Text)
    {- ^ (Required) The repository of the webhook. -}
    , _computed_url  :: !(TF.Attribute Text)
    {- ^ - URL of the webhook -}
    } deriving (Show, Eq)

repositoryWebhookResource :: TF.Resource TF.GitHub RepositoryWebhookResource
repositoryWebhookResource =
    TF.newResource "github_repository_webhook" $
        RepositoryWebhookResource {
            _active = TF.Absent
            , _configuration = TF.Absent
            , _events = TF.Absent
            , _name = TF.Absent
            , _repository = TF.Absent
            , _computed_url = TF.Computed "url"
            }

instance TF.ToHCL RepositoryWebhookResource where
    toHCL RepositoryWebhookResource{..} = TF.arguments
        [ TF.assign "active" <$> _active
        , TF.assign "configuration" <$> _configuration
        , TF.assign "events" <$> _events
        , TF.assign "name" <$> _name
        , TF.assign "repository" <$> _repository
        ]

$(TF.makeSchemaLenses
    ''RepositoryWebhookResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_team_membership@ GitHub resource.

Provides a GitHub team membership resource. This resource allows you to
add/remove users from teams in your organization. When applied, the user
will be added to the team. If the user hasn't accepted their invitation to
the organization, they won't be part of the team until they do. When
destroyed, the user will be removed from the team.
-}
data TeamMembershipResource = TeamMembershipResource {
      _role     :: !(TF.Argument Text)
    {- ^ (Optional) The role of the user within the team. Must be one of @member@ or @maintainer@ . Defaults to @member@ . -}
    , _team_id  :: !(TF.Argument Text)
    {- ^ (Required) The GitHub team id -}
    , _username :: !(TF.Argument Text)
    {- ^ (Required) The user to add to the team. -}
    } deriving (Show, Eq)

teamMembershipResource :: TF.Resource TF.GitHub TeamMembershipResource
teamMembershipResource =
    TF.newResource "github_team_membership" $
        TeamMembershipResource {
            _role = TF.Absent
            , _team_id = TF.Absent
            , _username = TF.Absent
            }

instance TF.ToHCL TeamMembershipResource where
    toHCL TeamMembershipResource{..} = TF.arguments
        [ TF.assign "role" <$> _role
        , TF.assign "team_id" <$> _team_id
        , TF.assign "username" <$> _username
        ]

$(TF.makeSchemaLenses
    ''TeamMembershipResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_team_repository@ GitHub resource.

This resource manages relationships between teams and repositories in your
Github organization. Creating this resource grants a particular team
permissions on a particular repository. The repository and the team must
both belong to the same organization on Github. This resource does not
actually create any repositories; to do that, see <repository.html> .
-}
data TeamRepositoryResource = TeamRepositoryResource {
      _permission :: !(TF.Argument Text)
    {- ^ (Optional) The permissions of team members regarding the repository. Must be one of @pull@ , @push@ , or @admin@ . Defaults to @pull@ . -}
    , _repository :: !(TF.Argument Text)
    {- ^ (Required) The repository to add to the team. -}
    , _team_id    :: !(TF.Argument Text)
    {- ^ (Required) The GitHub team id -}
    } deriving (Show, Eq)

teamRepositoryResource :: TF.Resource TF.GitHub TeamRepositoryResource
teamRepositoryResource =
    TF.newResource "github_team_repository" $
        TeamRepositoryResource {
            _permission = TF.Absent
            , _repository = TF.Absent
            , _team_id = TF.Absent
            }

instance TF.ToHCL TeamRepositoryResource where
    toHCL TeamRepositoryResource{..} = TF.arguments
        [ TF.assign "permission" <$> _permission
        , TF.assign "repository" <$> _repository
        , TF.assign "team_id" <$> _team_id
        ]

$(TF.makeSchemaLenses
    ''TeamRepositoryResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)

{- | The @github_team@ GitHub resource.

Provides a GitHub team resource. This resource allows you to add/remove
teams from your organization. When applied, a new team will be created. When
destroyed, that team will be removed.
-}
data TeamResource = TeamResource {
      _description :: !(TF.Argument Text)
    {- ^ (Optional) A description of the team. -}
    , _ldap_dn     :: !(TF.Argument Text)
    {- ^ (Optional) The LDAP Distinguished Name of the group where membership will be synchronized. Only available in GitHub Enterprise. -}
    , _name        :: !(TF.Argument Text)
    {- ^ (Required) The name of the team. -}
    , _privacy     :: !(TF.Argument Text)
    {- ^ (Optional) The level of privacy for the team. Must be one of @secret@ or @closed@ . Defaults to @secret@ . -}
    , _computed_id :: !(TF.Attribute Text)
    {- ^ - The ID of the created team. -}
    } deriving (Show, Eq)

teamResource :: TF.Resource TF.GitHub TeamResource
teamResource =
    TF.newResource "github_team" $
        TeamResource {
            _description = TF.Absent
            , _ldap_dn = TF.Absent
            , _name = TF.Absent
            , _privacy = TF.Absent
            , _computed_id = TF.Computed "id"
            }

instance TF.ToHCL TeamResource where
    toHCL TeamResource{..} = TF.arguments
        [ TF.assign "description" <$> _description
        , TF.assign "ldap_dn" <$> _ldap_dn
        , TF.assign "name" <$> _name
        , TF.assign "privacy" <$> _privacy
        ]

$(TF.makeSchemaLenses
    ''TeamResource
    ''TF.GitHub
    ''TF.Resource
    'TF.schema)
