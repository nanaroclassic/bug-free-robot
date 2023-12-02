/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

// swiftlint:disable:next swiftlint_disable_without_this_or_next
// swiftlint:disable line_length

enum TestCoreKitComponents {

  static func makeComponents(
    accessTokenExpirer: AccessTokenExpiring = TestAccessTokenExpirer(),
    accessTokenWallet: (AccessTokenProviding & TokenStringProviding).Type = TestAccessTokenWallet.self,
    advertiserIDProvider: AdvertiserIDProviding = TestAdvertiserIDProvider(),
    appEvents: AppEventsConfiguring & ApplicationActivating & ApplicationLifecycleObserving & ApplicationStateSetting & EventLogging & SourceApplicationTracking = TestAppEvents(),
    appEventsConfigurationProvider: AppEventsConfigurationProviding = TestAppEventsConfigurationProvider(),
    appEventsStateProvider: AppEventsStateProviding = TestAppEventsStateProvider(),
    appEventsStateStore: AppEventsStatePersisting = TestAppEventsStateStore(),
    appEventsUtility: AppEventDropDetermining & AppEventParametersExtracting & AppEventsUtilityProtocol & LoggingNotifying = TestAppEventsUtility(),
    atePublisherFactory: ATEPublisherCreating = TestATEPublisherFactory(),
    authenticationTokenWallet: AuthenticationTokenProviding.Type = TestAuthenticationTokenWallet.self,
    crashHandler: CrashHandlerProtocol = TestCrashHandler(),
    crashObserver: CrashObserving = TestCrashObserver(),
    defaultDataStore: DataPersisting = TestDataStore(),
    deviceInformationProvider: DeviceInformationProviding = TestDeviceInformationProvider(),
    dialogConfigurationMapBuilder: DialogConfigurationMapBuilding = TestDialogConfigurationMapBuilder(),
    errorConfigurationProvider: ErrorConfigurationProviding = TestErrorConfigurationProvider(),
    errorFactory: ErrorCreating = TestErrorFactory(),
    errorReporter: ErrorReporting = TestErrorReporter(),
    eventDeactivationManager: AppEventsParameterProcessing & EventsProcessing = TestAppEventsParameterProcessor(),
    eventLogger: EventLogging = TestEventLogger(),
    featureChecker: FeatureChecking & FeatureDisabling = TestFeatureManager(),
    gateKeeperManager: GateKeeperManaging.Type = TestGateKeeperManager.self,
    getApplicationActivationNotifier: @escaping () -> Any = { UninhabitedObject.shared },
    graphRequestConnectionFactory: GraphRequestConnectionFactoryProtocol = TestGraphRequestConnectionFactory(),
    graphRequestFactory: GraphRequestFactoryProtocol = TestGraphRequestFactory(),
    impressionLoggerFactory: ImpressionLoggerFactoryProtocol = TestImpressionLoggerFactory(),
    infoDictionaryProvider: InfoDictionaryProviding = TestBundle(),
    internalUtility: InternalUtilityProtocol = TestInternalUtility(),
    logger: Logging.Type = TestLogger.self,
    loggerFactory: LoggerCreating = TestLoggerFactory(),
    macCatalystDeterminator: MacCatalystDetermining = TestMacCatalystDeterminator(),
    notificationCenter: NotificationDelivering & NotificationPosting = TestNotificationCenter(),
    operatingSystemVersionComparer: OperatingSystemVersionComparing = TestProcessInfo(),
    paymentObserver: PaymentObserving = TestPaymentObserver(),
    piggybackManager: GraphRequestPiggybackManaging = TestGraphRequestPiggybackManager(),
    restrictiveDataFilterManager: AppEventsParameterProcessing & EventsProcessing = TestAppEventsParameterProcessor(),
    serverConfigurationProvider: ServerConfigurationProviding = TestServerConfigurationProvider(),
    settings: SettingsLogging & SettingsProtocol = TestSettings(),
    timeSpentRecorder: SourceApplicationTracking & TimeSpentRecording = TestTimeSpentRecorder(),
    tokenCache: TokenCaching = TestTokenCache(),
    urlSessionProxyFactory: URLSessionProxyProviding = TestURLSessionProxyFactory(),
    userDataStore: UserDataPersisting = TestUserDataStore(),
    capiReporter: CAPIReporter = TestCAPIReporter(),

    // Non-tvOS
    aemNetworker: AEMNetworking? = TestAEMNetworker(),
    aemReporter: _AEMReporterProtocol.Type = TestAEMReporter.self,
    appEventParametersExtractor: AppEventParametersExtracting = TestAppEventParametersExtractor(),
    appEventsDropDeterminer: AppEventDropDetermining = TestAppEventsDropDeterminer(),
    appLinkEventPoster: AppLinkEventPosting = TestAppLinkEventPoster(),
    appLinkFactory: AppLinkCreating = TestAppLinkFactory(),
    appLinkResolver: AppLinkResolving = TestAppLinkResolver(),
    appLinkTargetFactory: AppLinkTargetCreating = TestAppLinkTargetFactory(),
    appLinkURLFactory: AppLinkURLCreating = TestAppLinkURLFactory(),
    backgroundEventLogger: BackgroundEventLogging = TestBackgroundEventLogger(),
    codelessIndexer: CodelessIndexing.Type = TestCodelessEvents.self,
    dataExtractor: FileDataExtracting.Type = TestFileDataExtractor.self,
    featureExtractor: FeatureExtracting.Type = TestFeatureExtractor.self,
    fileManager: FileManaging = TestFileManager(),
    internalURLOpener: InternalURLOpener = TestInternalURLOpener(),
    metadataIndexer: MetadataIndexing = TestMetadataIndexer(),
    modelManager: EventProcessing & IntegrityParametersProcessorProvider = TestOnDeviceMLModelManager(),
    profileSetter: ProfileProviding.Type = TestProfileProvider.self,
    rulesFromKeyProvider: RulesFromKeyProvider = TestOnDeviceMLModelManager(),
    sessionDataTaskProvider: URLSessionProviding = TestSessionProvider(),
    skAdNetworkReporter: (SKAdNetworkReporting & AppEventsReporter)? = TestSKAdNetworkReporter(),
    suggestedEventsIndexer: SuggestedEventsIndexerProtocol = TestSuggestedEventsIndexer(),
    swizzler: Swizzling.Type = TestSwizzler.self,
    urlHoster: URLHosting = TestURLHoster(),
    userIDProvider: UserIDProviding = TestUserIDProvider(),
    webViewProvider: WebViewProviding = TestWebViewFactory()
  ) -> CoreKitComponents {
    CoreKitComponents(
      accessTokenExpirer: accessTokenExpirer,
      accessTokenWallet: accessTokenWallet,
      advertiserIDProvider: advertiserIDProvider,
      appEvents: appEvents,
      appEventsConfigurationProvider: appEventsConfigurationProvider,
      appEventsStateProvider: appEventsStateProvider,
      appEventsStateStore: appEventsStateStore,
      appEventsUtility: appEventsUtility,
      atePublisherFactory: atePublisherFactory,
      authenticationTokenWallet: authenticationTokenWallet,
      crashHandler: crashHandler,
      crashObserver: crashObserver,
      defaultDataStore: defaultDataStore,
      deviceInformationProvider: deviceInformationProvider,
      dialogConfigurationMapBuilder: dialogConfigurationMapBuilder,
      errorConfigurationProvider: errorConfigurationProvider,
      errorFactory: errorFactory,
      errorReporter: errorReporter,
      eventDeactivationManager: eventDeactivationManager,
      eventLogger: eventLogger,
      featureChecker: featureChecker,
      gateKeeperManager: gateKeeperManager,
      getApplicationActivationNotifier: getApplicationActivationNotifier,
      graphRequestConnectionFactory: graphRequestConnectionFactory,
      graphRequestFactory: graphRequestFactory,
      impressionLoggerFactory: impressionLoggerFactory,
      infoDictionaryProvider: infoDictionaryProvider,
      internalUtility: internalUtility,
      logger: logger,
      loggerFactory: loggerFactory,
      macCatalystDeterminator: macCatalystDeterminator,
      notificationCenter: notificationCenter,
      operatingSystemVersionComparer: operatingSystemVersionComparer,
      paymentObserver: paymentObserver,
      piggybackManager: piggybackManager,
      restrictiveDataFilterManager: restrictiveDataFilterManager,
      serverConfigurationProvider: serverConfigurationProvider,
      settings: settings,
      timeSpentRecorder: timeSpentRecorder,
      tokenCache: tokenCache,
      urlSessionProxyFactory: urlSessionProxyFactory,
      userDataStore: userDataStore,
      capiReporter: capiReporter,

      // Non-tvOS
      aemNetworker: aemNetworker,
      aemReporter: aemReporter,
      appEventParametersExtractor: appEventParametersExtractor,
      appEventsDropDeterminer: appEventsDropDeterminer,
      appLinkEventPoster: appLinkEventPoster,
      appLinkFactory: appLinkFactory,
      appLinkResolver: appLinkResolver,
      appLinkTargetFactory: appLinkTargetFactory,
      appLinkURLFactory: appLinkURLFactory,
      backgroundEventLogger: backgroundEventLogger,
      codelessIndexer: codelessIndexer,
      dataExtractor: dataExtractor,
      featureExtractor: featureExtractor,
      fileManager: fileManager,
      internalURLOpener: internalURLOpener,
      metadataIndexer: metadataIndexer,
      modelManager: modelManager,
      profileSetter: profileSetter,
      rulesFromKeyProvider: rulesFromKeyProvider,
      sessionDataTaskProvider: sessionDataTaskProvider,
      skAdNetworkReporter: skAdNetworkReporter,
      suggestedEventsIndexer: suggestedEventsIndexer,
      swizzler: swizzler,
      urlHoster: urlHoster,
      userIDProvider: userIDProvider,
      webViewProvider: webViewProvider
    )
  }
}
