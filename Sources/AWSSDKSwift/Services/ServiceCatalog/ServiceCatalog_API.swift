//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS ServiceCatalog service.

AWS Service Catalog  AWS Service Catalog enables organizations to create and manage catalogs of IT services that are approved for use on AWS. To get the most out of this documentation, you should be familiar with the terminology discussed in AWS Service Catalog Concepts.
*/
public struct ServiceCatalog {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the ServiceCatalog client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWS242ServiceCatalogService",
            service: "servicecatalog",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-12-10",
            endpoint: endpoint,
            possibleErrorTypes: [ServiceCatalogErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Accepts an offer to share the specified portfolio.
    public func acceptPortfolioShare(_ input: AcceptPortfolioShareInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptPortfolioShareOutput> {
        return client.send(operation: "AcceptPortfolioShare", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified budget with the specified resource.
    public func associateBudgetWithResource(_ input: AssociateBudgetWithResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateBudgetWithResourceOutput> {
        return client.send(operation: "AssociateBudgetWithResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified principal ARN with the specified portfolio.
    public func associatePrincipalWithPortfolio(_ input: AssociatePrincipalWithPortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociatePrincipalWithPortfolioOutput> {
        return client.send(operation: "AssociatePrincipalWithPortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified product with the specified portfolio.
    public func associateProductWithPortfolio(_ input: AssociateProductWithPortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateProductWithPortfolioOutput> {
        return client.send(operation: "AssociateProductWithPortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a self-service action with a provisioning artifact.
    public func associateServiceActionWithProvisioningArtifact(_ input: AssociateServiceActionWithProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateServiceActionWithProvisioningArtifactOutput> {
        return client.send(operation: "AssociateServiceActionWithProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associate the specified TagOption with the specified portfolio or product.
    public func associateTagOptionWithResource(_ input: AssociateTagOptionWithResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateTagOptionWithResourceOutput> {
        return client.send(operation: "AssociateTagOptionWithResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates multiple self-service actions with provisioning artifacts.
    public func batchAssociateServiceActionWithProvisioningArtifact(_ input: BatchAssociateServiceActionWithProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAssociateServiceActionWithProvisioningArtifactOutput> {
        return client.send(operation: "BatchAssociateServiceActionWithProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a batch of self-service actions from the specified provisioning artifact.
    public func batchDisassociateServiceActionFromProvisioningArtifact(_ input: BatchDisassociateServiceActionFromProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDisassociateServiceActionFromProvisioningArtifactOutput> {
        return client.send(operation: "BatchDisassociateServiceActionFromProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Copies the specified source product to the specified target product or a new product. You can copy a product to the same account or another account. You can copy a product to the same region or another region. This operation is performed asynchronously. To track the progress of the operation, use DescribeCopyProductStatus.
    public func copyProduct(_ input: CopyProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyProductOutput> {
        return client.send(operation: "CopyProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a constraint.
    public func createConstraint(_ input: CreateConstraintInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConstraintOutput> {
        return client.send(operation: "CreateConstraint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a portfolio.
    public func createPortfolio(_ input: CreatePortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePortfolioOutput> {
        return client.send(operation: "CreatePortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the master account of an Organization. AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.
    public func createPortfolioShare(_ input: CreatePortfolioShareInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePortfolioShareOutput> {
        return client.send(operation: "CreatePortfolioShare", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a product.
    public func createProduct(_ input: CreateProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProductOutput> {
        return client.send(operation: "CreateProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed. You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED. To view the resource changes in the change set, use DescribeProvisionedProductPlan. To create or modify the provisioned product, use ExecuteProvisionedProductPlan.
    public func createProvisionedProductPlan(_ input: CreateProvisionedProductPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProvisionedProductPlanOutput> {
        return client.send(operation: "CreateProvisionedProductPlan", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a provisioning artifact (also known as a version) for the specified product. You cannot create a provisioning artifact for a product that was shared with you.
    public func createProvisioningArtifact(_ input: CreateProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProvisioningArtifactOutput> {
        return client.send(operation: "CreateProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a self-service action.
    public func createServiceAction(_ input: CreateServiceActionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceActionOutput> {
        return client.send(operation: "CreateServiceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a TagOption.
    public func createTagOption(_ input: CreateTagOptionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagOptionOutput> {
        return client.send(operation: "CreateTagOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified constraint.
    public func deleteConstraint(_ input: DeleteConstraintInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConstraintOutput> {
        return client.send(operation: "DeleteConstraint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified portfolio. You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.
    public func deletePortfolio(_ input: DeletePortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePortfolioOutput> {
        return client.send(operation: "DeletePortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the master account of an Organization.
    public func deletePortfolioShare(_ input: DeletePortfolioShareInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePortfolioShareOutput> {
        return client.send(operation: "DeletePortfolioShare", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified product. You cannot delete a product if it was shared with you or is associated with a portfolio.
    public func deleteProduct(_ input: DeleteProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProductOutput> {
        return client.send(operation: "DeleteProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified plan.
    public func deleteProvisionedProductPlan(_ input: DeleteProvisionedProductPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProvisionedProductPlanOutput> {
        return client.send(operation: "DeleteProvisionedProductPlan", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified provisioning artifact (also known as a version) for the specified product. You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.
    public func deleteProvisioningArtifact(_ input: DeleteProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProvisioningArtifactOutput> {
        return client.send(operation: "DeleteProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a self-service action.
    public func deleteServiceAction(_ input: DeleteServiceActionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceActionOutput> {
        return client.send(operation: "DeleteServiceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified TagOption. You cannot delete a TagOption if it is associated with a product or portfolio.
    public func deleteTagOption(_ input: DeleteTagOptionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagOptionOutput> {
        return client.send(operation: "DeleteTagOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified constraint.
    public func describeConstraint(_ input: DescribeConstraintInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConstraintOutput> {
        return client.send(operation: "DescribeConstraint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the status of the specified copy product operation.
    public func describeCopyProductStatus(_ input: DescribeCopyProductStatusInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCopyProductStatusOutput> {
        return client.send(operation: "DescribeCopyProductStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified portfolio.
    public func describePortfolio(_ input: DescribePortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePortfolioOutput> {
        return client.send(operation: "DescribePortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the status of the specified portfolio share operation. This API can only be called by the master account in the organization.
    public func describePortfolioShareStatus(_ input: DescribePortfolioShareStatusInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePortfolioShareStatusOutput> {
        return client.send(operation: "DescribePortfolioShareStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified product.
    public func describeProduct(_ input: DescribeProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductOutput> {
        return client.send(operation: "DescribeProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified product. This operation is run with administrator access.
    public func describeProductAsAdmin(_ input: DescribeProductAsAdminInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductAsAdminOutput> {
        return client.send(operation: "DescribeProductAsAdmin", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified product.
    public func describeProductView(_ input: DescribeProductViewInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductViewOutput> {
        return client.send(operation: "DescribeProductView", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified provisioned product.
    public func describeProvisionedProduct(_ input: DescribeProvisionedProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProvisionedProductOutput> {
        return client.send(operation: "DescribeProvisionedProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the resource changes for the specified plan.
    public func describeProvisionedProductPlan(_ input: DescribeProvisionedProductPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProvisionedProductPlanOutput> {
        return client.send(operation: "DescribeProvisionedProductPlan", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified provisioning artifact (also known as a version) for the specified product.
    public func describeProvisioningArtifact(_ input: DescribeProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProvisioningArtifactOutput> {
        return client.send(operation: "DescribeProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the configuration required to provision the specified product using the specified provisioning artifact. If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to ProvisionProduct, do not include conflicted TagOption keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value". Tag the provisioned product with the value sc-tagoption-conflict-portfolioId-productId.
    public func describeProvisioningParameters(_ input: DescribeProvisioningParametersInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProvisioningParametersOutput> {
        return client.send(operation: "DescribeProvisioningParameters", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified request operation. Use this operation after calling a request operation (for example, ProvisionProduct, TerminateProvisionedProduct, or UpdateProvisionedProduct).   If a provisioned product was transferred to a new owner using UpdateProvisionedProductProperties, the new owner will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to use ListRecordHistory to see the product's history from when he was the owner. 
    public func describeRecord(_ input: DescribeRecordInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordOutput> {
        return client.send(operation: "DescribeRecord", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a self-service action.
    public func describeServiceAction(_ input: DescribeServiceActionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceActionOutput> {
        return client.send(operation: "DescribeServiceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Finds the default parameters for a specific self-service action on a specific provisioned product and returns a map of the results to the user.
    public func describeServiceActionExecutionParameters(_ input: DescribeServiceActionExecutionParametersInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceActionExecutionParametersOutput> {
        return client.send(operation: "DescribeServiceActionExecutionParameters", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the specified TagOption.
    public func describeTagOption(_ input: DescribeTagOptionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagOptionOutput> {
        return client.send(operation: "DescribeTagOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disable portfolio sharing through AWS Organizations feature. This feature will not delete your current shares but it will prevent you from creating new shares throughout your organization. Current shares will not be in sync with your organization structure if it changes after calling this API. This API can only be called by the master account in the organization.
    public func disableAWSOrganizationsAccess(_ input: DisableAWSOrganizationsAccessInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableAWSOrganizationsAccessOutput> {
        return client.send(operation: "DisableAWSOrganizationsAccess", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified budget from the specified resource.
    public func disassociateBudgetFromResource(_ input: DisassociateBudgetFromResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateBudgetFromResourceOutput> {
        return client.send(operation: "DisassociateBudgetFromResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a previously associated principal ARN from a specified portfolio.
    public func disassociatePrincipalFromPortfolio(_ input: DisassociatePrincipalFromPortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociatePrincipalFromPortfolioOutput> {
        return client.send(operation: "DisassociatePrincipalFromPortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified product from the specified portfolio. 
    public func disassociateProductFromPortfolio(_ input: DisassociateProductFromPortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateProductFromPortfolioOutput> {
        return client.send(operation: "DisassociateProductFromPortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified self-service action association from the specified provisioning artifact.
    public func disassociateServiceActionFromProvisioningArtifact(_ input: DisassociateServiceActionFromProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateServiceActionFromProvisioningArtifactOutput> {
        return client.send(operation: "DisassociateServiceActionFromProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified TagOption from the specified resource.
    public func disassociateTagOptionFromResource(_ input: DisassociateTagOptionFromResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateTagOptionFromResourceOutput> {
        return client.send(operation: "DisassociateTagOptionFromResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enable portfolio sharing feature through AWS Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This API can only be called by the master account in the organization. By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
    public func enableAWSOrganizationsAccess(_ input: EnableAWSOrganizationsAccessInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableAWSOrganizationsAccessOutput> {
        return client.send(operation: "EnableAWSOrganizationsAccess", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provisions or modifies a product based on the resource changes for the specified plan.
    public func executeProvisionedProductPlan(_ input: ExecuteProvisionedProductPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteProvisionedProductPlanOutput> {
        return client.send(operation: "ExecuteProvisionedProductPlan", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Executes a self-service action against a provisioned product.
    public func executeProvisionedProductServiceAction(_ input: ExecuteProvisionedProductServiceActionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteProvisionedProductServiceActionOutput> {
        return client.send(operation: "ExecuteProvisionedProductServiceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Get the Access Status for AWS Organization portfolio share feature. This API can only be called by the master account in the organization.
    public func getAWSOrganizationsAccessStatus(_ input: GetAWSOrganizationsAccessStatusInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAWSOrganizationsAccessStatusOutput> {
        return client.send(operation: "GetAWSOrganizationsAccessStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all portfolios for which sharing was accepted by this account.
    public func listAcceptedPortfolioShares(_ input: ListAcceptedPortfolioSharesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAcceptedPortfolioSharesOutput> {
        return client.send(operation: "ListAcceptedPortfolioShares", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all the budgets associated to the specified resource.
    public func listBudgetsForResource(_ input: ListBudgetsForResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBudgetsForResourceOutput> {
        return client.send(operation: "ListBudgetsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the constraints for the specified portfolio and product.
    public func listConstraintsForPortfolio(_ input: ListConstraintsForPortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConstraintsForPortfolioOutput> {
        return client.send(operation: "ListConstraintsForPortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
    public func listLaunchPaths(_ input: ListLaunchPathsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLaunchPathsOutput> {
        return client.send(operation: "ListLaunchPaths", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization.
    public func listOrganizationPortfolioAccess(_ input: ListOrganizationPortfolioAccessInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationPortfolioAccessOutput> {
        return client.send(operation: "ListOrganizationPortfolioAccess", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the account IDs that have access to the specified portfolio.
    public func listPortfolioAccess(_ input: ListPortfolioAccessInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPortfolioAccessOutput> {
        return client.send(operation: "ListPortfolioAccess", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all portfolios in the catalog.
    public func listPortfolios(_ input: ListPortfoliosInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPortfoliosOutput> {
        return client.send(operation: "ListPortfolios", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all portfolios that the specified product is associated with.
    public func listPortfoliosForProduct(_ input: ListPortfoliosForProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPortfoliosForProductOutput> {
        return client.send(operation: "ListPortfoliosForProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all principal ARNs associated with the specified portfolio.
    public func listPrincipalsForPortfolio(_ input: ListPrincipalsForPortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPrincipalsForPortfolioOutput> {
        return client.send(operation: "ListPrincipalsForPortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the plans for the specified provisioned product or all plans to which the user has access.
    public func listProvisionedProductPlans(_ input: ListProvisionedProductPlansInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProvisionedProductPlansOutput> {
        return client.send(operation: "ListProvisionedProductPlans", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all provisioning artifacts (also known as versions) for the specified product.
    public func listProvisioningArtifacts(_ input: ListProvisioningArtifactsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProvisioningArtifactsOutput> {
        return client.send(operation: "ListProvisioningArtifacts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all provisioning artifacts (also known as versions) for the specified self-service action.
    public func listProvisioningArtifactsForServiceAction(_ input: ListProvisioningArtifactsForServiceActionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProvisioningArtifactsForServiceActionOutput> {
        return client.send(operation: "ListProvisioningArtifactsForServiceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the specified requests or all performed requests.
    public func listRecordHistory(_ input: ListRecordHistoryInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordHistoryOutput> {
        return client.send(operation: "ListRecordHistory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the resources associated with the specified TagOption.
    public func listResourcesForTagOption(_ input: ListResourcesForTagOptionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesForTagOptionOutput> {
        return client.send(operation: "ListResourcesForTagOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all self-service actions.
    public func listServiceActions(_ input: ListServiceActionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServiceActionsOutput> {
        return client.send(operation: "ListServiceActions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.
    public func listServiceActionsForProvisioningArtifact(_ input: ListServiceActionsForProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServiceActionsForProvisioningArtifactOutput> {
        return client.send(operation: "ListServiceActionsForProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns summary information about stack instances that are associated with the specified CFN_STACKSET type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. 
    public func listStackInstancesForProvisionedProduct(_ input: ListStackInstancesForProvisionedProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStackInstancesForProvisionedProductOutput> {
        return client.send(operation: "ListStackInstancesForProvisionedProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the specified TagOptions or all TagOptions.
    public func listTagOptions(_ input: ListTagOptionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagOptionsOutput> {
        return client.send(operation: "ListTagOptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provisions the specified product. A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using DescribeRecord. If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value".
    public func provisionProduct(_ input: ProvisionProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProvisionProductOutput> {
        return client.send(operation: "ProvisionProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Rejects an offer to share the specified portfolio.
    public func rejectPortfolioShare(_ input: RejectPortfolioShareInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectPortfolioShareOutput> {
        return client.send(operation: "RejectPortfolioShare", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the provisioned products that are available (not terminated). To use additional filtering, see SearchProvisionedProducts.
    public func scanProvisionedProducts(_ input: ScanProvisionedProductsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanProvisionedProductsOutput> {
        return client.send(operation: "ScanProvisionedProducts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the products to which the caller has access.
    public func searchProducts(_ input: SearchProductsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchProductsOutput> {
        return client.send(operation: "SearchProducts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the products for the specified portfolio or all products.
    public func searchProductsAsAdmin(_ input: SearchProductsAsAdminInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchProductsAsAdminOutput> {
        return client.send(operation: "SearchProductsAsAdmin", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the provisioned products that meet the specified criteria.
    public func searchProvisionedProducts(_ input: SearchProvisionedProductsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchProvisionedProductsOutput> {
        return client.send(operation: "SearchProvisionedProducts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Terminates the specified provisioned product. This operation does not delete any records associated with the provisioned product. You can check the status of this request using DescribeRecord.
    public func terminateProvisionedProduct(_ input: TerminateProvisionedProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateProvisionedProductOutput> {
        return client.send(operation: "TerminateProvisionedProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified constraint.
    public func updateConstraint(_ input: UpdateConstraintInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConstraintOutput> {
        return client.send(operation: "UpdateConstraint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified portfolio. You cannot update a product that was shared with you.
    public func updatePortfolio(_ input: UpdatePortfolioInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePortfolioOutput> {
        return client.send(operation: "UpdatePortfolio", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified product.
    public func updateProduct(_ input: UpdateProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProductOutput> {
        return client.send(operation: "UpdateProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Requests updates to the configuration of the specified provisioned product. If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely. You can check the status of this request using DescribeRecord.
    public func updateProvisionedProduct(_ input: UpdateProvisionedProductInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProvisionedProductOutput> {
        return client.send(operation: "UpdateProvisionedProduct", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Requests updates to the properties of the specified provisioned product.
    public func updateProvisionedProductProperties(_ input: UpdateProvisionedProductPropertiesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProvisionedProductPropertiesOutput> {
        return client.send(operation: "UpdateProvisionedProductProperties", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified provisioning artifact (also known as a version) for the specified product. You cannot update a provisioning artifact for a product that was shared with you.
    public func updateProvisioningArtifact(_ input: UpdateProvisioningArtifactInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProvisioningArtifactOutput> {
        return client.send(operation: "UpdateProvisioningArtifact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a self-service action.
    public func updateServiceAction(_ input: UpdateServiceActionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServiceActionOutput> {
        return client.send(operation: "UpdateServiceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified TagOption.
    public func updateTagOption(_ input: UpdateTagOptionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTagOptionOutput> {
        return client.send(operation: "UpdateTagOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
