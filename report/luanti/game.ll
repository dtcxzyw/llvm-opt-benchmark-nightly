Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.58 = private unnamed_addr constant [13 x i8] c"Singleplayer\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"Multiplayer\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"] [\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"touch_controls\00", align 1
@guienv = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [21 x i8] c"Resolving address...\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Couldn't resolve address: %s\00", align 1
@.str.66 = private unnamed_addr constant [49 x i8] c"Unable to connect to %s because IPv6 is disabled\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"Resolved two addresses for \22\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"\22 isIPv6[0]=\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c" isIPv6[1]=\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Resolved one address for \22\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"\22 isIPv6=\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"Error creating client: %s\00", align 1
@_ZTIN3con21PeerNotFoundExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3con21PeerNotFoundExceptionE, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTSN3con21PeerNotFoundExceptionE = linkonce_odr dso_local constant [30 x i8] c"N3con21PeerNotFoundExceptionE\00", comdat, align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"Connect aborted [Escape]\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"Connection timed out.\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"Connecting to server...\00", align 1
@.str.77 = private unnamed_addr constant [45 x i8] c"This should not happen. Please report a bug.\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"Client disconnected\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"Item definitions...\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"Node definitions...\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"Media...\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"enable_remote_media_server\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"KiB/s\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"MiB/s\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"Connect aborted [device]\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"Access denied. Reason: %s\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"profiler_print_interval\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"Time non-rendering [us]\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Sleep [us]\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"FPS\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"Irr: drawcalls\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"Irr: primitives per drawcall\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"Irr: HW buffers uploaded\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"Irr: HW buffers active\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"Irr: HW skinning use [%]\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Profiler:\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"Game lost focus\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"continuous_forward\00", align 1
@.str.104 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4
@.str.105 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.106 = private unnamed_addr constant [34 x i8] c"Client side scripting is disabled\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"console_height\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"mute_sound\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"Sound muted\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"Sound unmuted\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"sound_volume\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"Volume changed to %d%%\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"fly\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"Fly mode enabled\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"Fly mode enabled (note: no 'fly' privilege)\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"Fly mode disabled\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"pitch_move\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"Pitch move mode enabled\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"Pitch move mode disabled\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"Fast mode enabled\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"Fast mode enabled (note: no 'fast' privilege)\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"Fast mode disabled\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"Noclip mode enabled\00", align 1
@.str.125 = private unnamed_addr constant [50 x i8] c"Noclip mode enabled (note: no 'noclip' privilege)\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"Noclip mode disabled\00", align 1
@.str.127 = private unnamed_addr constant [23 x i8] c"Cinematic mode enabled\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"Cinematic mode disabled\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"Can't show block bounds (disabled by game or mod)\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"Block bounds hidden\00", align 1
@.str.131 = private unnamed_addr constant [37 x i8] c"Block bounds shown for current block\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"Block bounds shown for nearby blocks\00", align 1
@.str.133 = private unnamed_addr constant [26 x i8] c"Automatic forward enabled\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"Automatic forward disabled\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"enable_minimap\00", align 1
@.str.136 = private unnamed_addr constant [42 x i8] c"Minimap currently disabled by game or mod\00", align 1
@.str.137 = private unnamed_addr constant [27 x i8] c"Fog enabled by game or mod\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"Fog enabled\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"Fog disabled\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"Debug info shown\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"Profiler graph shown\00", align 1
@.str.142 = private unnamed_addr constant [40 x i8] c"Wireframe not supported by video driver\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"Wireframe shown\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"Bounding boxes shown\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"All debug info hidden\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"Camera update disabled\00", align 1
@.str.147 = private unnamed_addr constant [22 x i8] c"Camera update enabled\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"viewing_range\00", align 1
@.str.149 = private unnamed_addr constant [76 x i8] c"Viewing range changed to %d (the maximum), but limited to %d by game or mod\00", align 1
@.str.150 = private unnamed_addr constant [42 x i8] c"Viewing range changed to %d (the maximum)\00", align 1
@.str.151 = private unnamed_addr constant [62 x i8] c"Viewing range changed to %d, but limited to %d by game or mod\00", align 1
@.str.152 = private unnamed_addr constant [28 x i8] c"Viewing range changed to %d\00", align 1
@.str.153 = private unnamed_addr constant [70 x i8] c"Viewing changed to %d (the minimum), but limited to %d by game or mod\00", align 1
@.str.154 = private unnamed_addr constant [36 x i8] c"Viewing changed to %d (the minimum)\00", align 1
@.str.155 = private unnamed_addr constant [62 x i8] c"Unlimited viewing range enabled, but forbidden by game or mod\00", align 1
@.str.156 = private unnamed_addr constant [32 x i8] c"Unlimited viewing range enabled\00", align 1
@.str.157 = private unnamed_addr constant [33 x i8] c"Unlimited viewing range disabled\00", align 1
@.str.158 = private unnamed_addr constant [39 x i8] c"Zoom currently disabled by game or mod\00", align 1
@_ZN4Game18clientEventHandlerE = dso_local local_unnamed_addr constant [20 x %struct.ClientEventHandler] [%struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game22handleClientEvent_NoneEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game30handleClientEvent_PlayerDamageEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game33handleClientEvent_PlayerForceMoveEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game35handleClientEvent_DeathscreenLegacyEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game30handleClientEvent_ShowFormSpecEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game33handleClientEvent_ShowCSMFormSpecEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game39handleClientEvent_ShowPauseMenuFormSpecEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game37handleClientEvent_HandleParticleEventEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game37handleClientEvent_HandleParticleEventEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game37handleClientEvent_HandleParticleEventEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game24handleClientEvent_HudAddEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game27handleClientEvent_HudRemoveEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game27handleClientEvent_HudChangeEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game24handleClientEvent_SetSkyEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game24handleClientEvent_SetSunEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game25handleClientEvent_SetMoonEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game26handleClientEvent_SetStarsEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game39handleClientEvent_OverrideDayNightRatioEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game29handleClientEvent_CloudParamsEP11ClientEventP17CameraOrientation to i64), i64 0 } }, %struct.ClientEventHandler { { i64, i64 } { i64 ptrtoint (ptr @_ZN4Game30handleClientEvent_UpdateCameraEP11ClientEventP17CameraOrientation to i64), i64 0 } }], align 16
@.str.159 = private unnamed_addr constant [31 x i8] c"ClientEvent type None received\00", align 1
@.str.160 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/luanti/luanti/src/client/game.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN4Game22handleClientEvent_NoneEP11ClientEventP17CameraOrientation = private unnamed_addr constant [70 x i8] c"void Game::handleClientEvent_None(ClientEvent *, CameraOrientation *)\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"hurt_flash_enabled\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"skybox\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"Unknown sky type: \00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"Invalid clientevent type\00", align 1
@__PRETTY_FUNCTION__._ZN4Game19processClientEventsEP17CameraOrientation = private unnamed_addr constant [52 x i8] c"void Game::processClientEvents(CameraOrientation *)\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"performance_tradeoffs\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"Pointing at \00", align 1
@.str.170 = private unnamed_addr constant [38 x i8] c"Dig button released (stopped digging)\00", align 1
@.str.171 = private unnamed_addr constant [42 x i8] c"Pointing away from node (stopped digging)\00", align 1
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.173 = private unnamed_addr constant [19 x i8] c"safe_dig_and_place\00", align 1
@_ZZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox = internal thread_local global i8 0, align 1
@_ZGVZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEEE24show_entity_selectionbox = internal thread_local unnamed_addr global i1 false, align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"show_entity_selectionbox\00", align 1
@_ZTI18ClientActiveObject = external constant ptr
@_ZTI10GenericCAO = external constant ptr
@g_6dirs = external local_unnamed_addr global [6 x %"class.core::vector3d"], align 16
@.str.175 = private unnamed_addr constant [50 x i8] c"Attempted to place item while pointing at nothing\00", align 1
@.str.179 = private unnamed_addr constant [13 x i32] [i32 85, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 32, i32 110, i32 111, i32 100, i32 101, i32 0], align 4
@.str.180 = private unnamed_addr constant [45 x i8] c"Place button pressed while looking at ground\00", align 1
@verbosestream = external thread_local global %class.LogStream, align 8
@.str.182 = private unnamed_addr constant [31 x i8] c"Node placement prediction for \00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.184 = private unnamed_addr constant [38 x i8] c"Node placement prediction failed for \00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c" (places \00", align 1
@.str.186 = private unnamed_addr constant [19 x i8] c") - Name not known\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"attached_node\00", align 1
@facedir_dirs = external local_unnamed_addr global [32 x %"class.core::vector3d"], align 16
@.str.188 = private unnamed_addr constant [14 x i8] c"palette_index\00", align 1
@_ZTI24InvalidPositionException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24InvalidPositionException, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS24InvalidPositionException = linkonce_odr dso_local constant [27 x i8] c"24InvalidPositionException\00", comdat, align 1
@.str.189 = private unnamed_addr constant [29 x i8] c"enable_build_where_you_stand\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c") - Position not loaded\00", align 1
@.str.191 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.192 = private unnamed_addr constant [15 x i8] c"Punched object\00", align 1
@.str.193 = private unnamed_addr constant [46 x i8] c"Pressed place button while pointing at object\00", align 1
@.str.194 = private unnamed_addr constant [16 x i8] c"Started digging\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"default_dig_\00", align 1
@.str.197 = private unnamed_addr constant [18 x i8] c"Digging completed\00", align 1
@.str.199 = private unnamed_addr constant [20 x i8] c"Game::updateFrame()\00", align 1
@.str.200 = private unnamed_addr constant [39 x i8] c"Game::updateFrame(): update frame [ms]\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"Draw scene\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"Draw scene [us]\00", align 1
@.str.203 = private unnamed_addr constant [52 x i8] c"Supplied unrecognized chat_log_level; showing none.\00", align 1
@_ZTI18SerializationError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18SerializationError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS18SerializationError = linkonce_odr dso_local constant [21 x i8] c"18SerializationError\00", comdat, align 1
@_ZTI11ServerError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11ServerError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS11ServerError = linkonce_odr dso_local constant [14 x i8] c"11ServerError\00", comdat, align 1
@_ZTI8ModError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8ModError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS8ModError = linkonce_odr dso_local constant [10 x i8] c"8ModError\00", comdat, align 1
@_ZTI15ShaderException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15ShaderException, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS15ShaderException = linkonce_odr dso_local constant [18 x i8] c"15ShaderException\00", comdat, align 1
@.str.204 = private unnamed_addr constant [30 x i8] c"Connection error (timed out?)\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"ModError: \00", align 1
@.str.206 = private unnamed_addr constant [30 x i8] c"\0ACheck debug.txt for details.\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"ServerError: \00", align 1
@.str.208 = private unnamed_addr constant [58 x i8] c"The server is probably running a different version of %s.\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"A serialization error occurred:\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.211 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local global { { { ptr } } } zeroinitializer, comdat, align 8
@_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE), align 8
@__dso_handle = external hidden global i8
@_ZTV12LambdaThread = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12LambdaThread, ptr @_ZN12LambdaThreadD2Ev, ptr @_ZN12LambdaThreadD0Ev, ptr @_ZN12LambdaThread3runEv] }, comdat, align 8
@_ZTI12LambdaThread = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12LambdaThread, ptr @_ZTI6Thread }, comdat, align 8
@_ZTS12LambdaThread = linkonce_odr dso_local constant [15 x i8] c"12LambdaThread\00", comdat, align 1
@_ZTI6Thread = external constant ptr
@_ZTV16CaptureLogOutput = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI16CaptureLogOutput, ptr @_ZN16CaptureLogOutput6logRawE8LogLevelSt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZN16CaptureLogOutput3logE8LogLevelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_St17basic_string_viewIcS4_E] }, comdat, align 8
@_ZTI16CaptureLogOutput = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16CaptureLogOutput, ptr @_ZTI10ILogOutput }, comdat, align 8
@_ZTS16CaptureLogOutput = linkonce_odr dso_local constant [19 x i8] c"16CaptureLogOutput\00", comdat, align 1
@_ZTI10ILogOutput = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS10ILogOutput }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS10ILogOutput = linkonce_odr dso_local constant [13 x i8] c"10ILogOutput\00", comdat, align 1
@.str.212 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.213 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN15RenderingEngine11s_singletonE = external local_unnamed_addr global ptr, align 8
@.str.214 = private unnamed_addr constant [37 x i8] c"s_singleton && s_singleton->m_device\00", align 1
@.str.215 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/luanti/luanti/src/client/renderingengine.h\00", align 1
@__PRETTY_FUNCTION__._ZN15RenderingEngine14get_raw_deviceEv = private unnamed_addr constant [57 x i8] c"static IrrlichtDevice *RenderingEngine::get_raw_device()\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"!isRunning()\00", align 1
@.str.217 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/luanti/luanti/src/threading/lambda.h\00", align 1
@__PRETTY_FUNCTION__._ZN12LambdaThread7rethrowEv = private unnamed_addr constant [29 x i8] c"void LambdaThread::rethrow()\00", align 1
@_ZTV12EventManager = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI12EventManager, ptr @_ZN12EventManagerD2Ev, ptr @_ZN12EventManagerD0Ev, ptr @_ZN12EventManager3putEP7MtEvent, ptr @_ZN12EventManager3regEN7MtEvent4TypeEPFvPS0_PvES3_, ptr @_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_] }, comdat, align 8
@_ZTI12EventManager = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12EventManager, ptr @_ZTI14MtEventManager }, comdat, align 8
@_ZTS12EventManager = linkonce_odr dso_local constant [15 x i8] c"12EventManager\00", comdat, align 1
@_ZTI14MtEventManager = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14MtEventManager }, comdat, align 8
@_ZTS14MtEventManager = linkonce_odr dso_local constant [17 x i8] c"14MtEventManager\00", comdat, align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.219 = private unnamed_addr constant [39 x i8] c"s_singleton && s_singleton->m_receiver\00", align 1
@__PRETTY_FUNCTION__._ZN15RenderingEngine18getLastPointerTypeEv = private unnamed_addr constant [57 x i8] c"static PointerType RenderingEngine::getLastPointerType()\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"Selected \22\00", align 1
@.str.226 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.227 = private unnamed_addr constant [10 x i8] c"(nothing)\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"\22 = \00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"[quicktune] \00", align 1
@_ZTV11IDropAction = external constant { [8 x ptr] }, align 8
@.str.230 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTIN3gui11IGUIElementE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3gui11IGUIElementE, i32 0, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTI14IEventReceiver, i64 2 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3gui11IGUIElementE = linkonce_odr dso_local constant [20 x i8] c"N3gui11IGUIElementE\00", comdat, align 1
@_ZTI17IReferenceCounted = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17IReferenceCounted }, comdat, align 8
@_ZTS17IReferenceCounted = linkonce_odr dso_local constant [20 x i8] c"17IReferenceCounted\00", comdat, align 1
@_ZTI14IEventReceiver = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14IEventReceiver }, comdat, align 8
@_ZTS14IEventReceiver = linkonce_odr dso_local constant [17 x i8] c"14IEventReceiver\00", comdat, align 1
@_ZTI12GUIModalMenu = external constant ptr
@.str.231 = private unnamed_addr constant [18 x i8] c"fps_max_unfocused\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"fps_max\00", align 1
@_ZTV18SimpleTriggerEvent = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI18SimpleTriggerEvent, ptr @_ZN7MtEventD2Ev, ptr @_ZN18SimpleTriggerEventD0Ev, ptr @_ZNK18SimpleTriggerEvent7getTypeEv] }, comdat, align 8
@_ZTI18SimpleTriggerEvent = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18SimpleTriggerEvent, ptr @_ZTI7MtEvent }, comdat, align 8
@_ZTS18SimpleTriggerEvent = linkonce_odr dso_local constant [21 x i8] c"18SimpleTriggerEvent\00", comdat, align 1
@_ZTI7MtEvent = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS7MtEvent }, comdat, align 8
@_ZTS7MtEvent = linkonce_odr dso_local constant [9 x i8] c"7MtEvent\00", comdat, align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"\1B(c@#F00)\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"\1B(c@#EE0)\00", align 1
@.str.235 = private unnamed_addr constant [10 x i8] c"\1B(c@#BBB)\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"\1B(c@#888)\00", align 1
@_ZTV17ItemStackMetadata = external constant { [19 x ptr] }, align 8
@_ZTT17ItemStackMetadata = external unnamed_addr constant [4 x ptr], align 8
@_ZTV12NodeDugEvent = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12NodeDugEvent, ptr @_ZN7MtEventD2Ev, ptr @_ZN12NodeDugEventD0Ev, ptr @_ZNK12NodeDugEvent7getTypeEv] }, comdat, align 8
@_ZTI12NodeDugEvent = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NodeDugEvent, ptr @_ZTI7MtEvent }, comdat, align 8
@_ZTS12NodeDugEvent = linkonce_odr dso_local constant [15 x i8] c"12NodeDugEvent\00", comdat, align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.239 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@"_ZTIZN4Game8shutdownEvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4Game8shutdownEvE3$_0" }, align 8
@"_ZTSZN4Game8shutdownEvE3$_0" = internal constant [24 x i8] c"ZN4Game8shutdownEvE3$_0\00", align 1
@_ZTV25SoundFallbackPathProvider = external constant { [5 x ptr] }, align 8
@_ZTV17DummySoundManager = linkonce_odr dso_local constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI17DummySoundManager, ptr @_ZN13ISoundManagerD2Ev, ptr @_ZN17DummySoundManagerD0Ev, ptr @_ZN17DummySoundManager4stepEf, ptr @_ZN17DummySoundManager8pauseAllEv, ptr @_ZN17DummySoundManager9resumeAllEv, ptr @_ZN17DummySoundManager14updateListenerERKN4core8vector3dIfEES4_S4_S4_, ptr @_ZN17DummySoundManager15setListenerGainEf, ptr @_ZN17DummySoundManager13loadSoundFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, ptr @_ZN17DummySoundManager13loadSoundDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOS5_, ptr @_ZN17DummySoundManager15addSoundToGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_, ptr @_ZN17DummySoundManager9playSoundEiRK9SoundSpec, ptr @_ZN17DummySoundManager11playSoundAtEiRK9SoundSpecRKN4core8vector3dIfEES7_, ptr @_ZN17DummySoundManager9stopSoundEi, ptr @_ZN17DummySoundManager9fadeSoundEiff, ptr @_ZN17DummySoundManager17updateSoundPosVelEiRKN4core8vector3dIfEES4_] }, comdat, align 8
@_ZTI17DummySoundManager = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DummySoundManager, ptr @_ZTI13ISoundManager }, comdat, align 8
@_ZTS17DummySoundManager = linkonce_odr dso_local constant [20 x i8] c"17DummySoundManager\00", comdat, align 1
@_ZTI13ISoundManager = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13ISoundManager }, comdat, align 8
@_ZTS13ISoundManager = linkonce_odr dso_local constant [16 x i8] c"13ISoundManager\00", comdat, align 1
@_ZTV13ISoundManager = linkonce_odr dso_local constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI13ISoundManager, ptr @_ZN13ISoundManagerD2Ev, ptr @_ZN13ISoundManagerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.240 = private unnamed_addr constant [23 x i8] c"gettext format error: \00", align 1
@_ZTISt13runtime_error = external constant ptr
@"_ZTIZN4Game12createServerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11SubgameSpectE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4Game12createServerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11SubgameSpectE3$_0" }, align 8
@"_ZTSZN4Game12createServerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11SubgameSpectE3$_0" = internal constant [98 x i8] c"ZN4Game12createServerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11SubgameSpectE3$_0\00", align 1
@_ZTV24NodeShaderConstantSetter = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI24NodeShaderConstantSetter, ptr @_ZN21IShaderConstantSetterD2Ev, ptr @_ZN24NodeShaderConstantSetterD0Ev, ptr @_ZN24NodeShaderConstantSetter10onGenerateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt3mapIS5_St7variantIJifEESt4lessIS5_ESaISt4pairIS6_SA_EEE] }, comdat, align 8
@_ZTI24NodeShaderConstantSetter = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24NodeShaderConstantSetter, ptr @_ZTI21IShaderConstantSetter }, comdat, align 8
@_ZTS24NodeShaderConstantSetter = linkonce_odr dso_local constant [27 x i8] c"24NodeShaderConstantSetter\00", comdat, align 1
@_ZTI21IShaderConstantSetter = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS21IShaderConstantSetter }, comdat, align 8
@_ZTS21IShaderConstantSetter = linkonce_odr dso_local constant [24 x i8] c"21IShaderConstantSetter\00", comdat, align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"MATERIAL_TYPE\00", align 1
@.str.242 = private unnamed_addr constant [20 x i8] c"TILE_MATERIAL_BASIC\00", align 1
@.str.243 = private unnamed_addr constant [20 x i8] c"TILE_MATERIAL_ALPHA\00", align 1
@.str.244 = private unnamed_addr constant [33 x i8] c"TILE_MATERIAL_LIQUID_TRANSPARENT\00", align 1
@.str.245 = private unnamed_addr constant [28 x i8] c"TILE_MATERIAL_LIQUID_OPAQUE\00", align 1
@.str.246 = private unnamed_addr constant [28 x i8] c"TILE_MATERIAL_WAVING_LEAVES\00", align 1
@.str.247 = private unnamed_addr constant [28 x i8] c"TILE_MATERIAL_WAVING_PLANTS\00", align 1
@.str.248 = private unnamed_addr constant [21 x i8] c"TILE_MATERIAL_OPAQUE\00", align 1
@.str.249 = private unnamed_addr constant [34 x i8] c"TILE_MATERIAL_WAVING_LIQUID_BASIC\00", align 1
@.str.250 = private unnamed_addr constant [40 x i8] c"TILE_MATERIAL_WAVING_LIQUID_TRANSPARENT\00", align 1
@.str.251 = private unnamed_addr constant [35 x i8] c"TILE_MATERIAL_WAVING_LIQUID_OPAQUE\00", align 1
@.str.252 = private unnamed_addr constant [20 x i8] c"TILE_MATERIAL_PLAIN\00", align 1
@.str.253 = private unnamed_addr constant [26 x i8] c"TILE_MATERIAL_PLAIN_ALPHA\00", align 1
@.str.254 = private unnamed_addr constant [20 x i8] c"enable_waving_water\00", align 1
@.str.255 = private unnamed_addr constant [20 x i8] c"ENABLE_WAVING_WATER\00", align 1
@.str.256 = private unnamed_addr constant [18 x i8] c"water_wave_height\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"WATER_WAVE_HEIGHT\00", align 1
@.str.258 = private unnamed_addr constant [18 x i8] c"water_wave_length\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"WATER_WAVE_LENGTH\00", align 1
@.str.260 = private unnamed_addr constant [17 x i8] c"water_wave_speed\00", align 1
@.str.261 = private unnamed_addr constant [17 x i8] c"WATER_WAVE_SPEED\00", align 1
@.str.262 = private unnamed_addr constant [23 x i8] c"MATERIAL_WAVING_LIQUID\00", align 1
@.str.263 = private unnamed_addr constant [27 x i8] c"MATERIAL_WATER_REFLECTIONS\00", align 1
@.str.264 = private unnamed_addr constant [21 x i8] c"enable_waving_leaves\00", align 1
@.str.265 = private unnamed_addr constant [21 x i8] c"ENABLE_WAVING_LEAVES\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"enable_waving_plants\00", align 1
@.str.267 = private unnamed_addr constant [21 x i8] c"ENABLE_WAVING_PLANTS\00", align 1
@.str.269 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt18bad_variant_access = linkonce_odr dso_local constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTVSt18bad_variant_access = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@_ZTV36GameGlobalShaderUniformSetterFactory = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI36GameGlobalShaderUniformSetterFactory, ptr @_ZN36GameGlobalShaderUniformSetterFactoryD2Ev, ptr @_ZN36GameGlobalShaderUniformSetterFactoryD0Ev, ptr @_ZN36GameGlobalShaderUniformSetterFactory6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTI36GameGlobalShaderUniformSetterFactory = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS36GameGlobalShaderUniformSetterFactory, ptr @_ZTI27IShaderUniformSetterFactory }, comdat, align 8
@_ZTS36GameGlobalShaderUniformSetterFactory = linkonce_odr dso_local constant [39 x i8] c"36GameGlobalShaderUniformSetterFactory\00", comdat, align 1
@_ZTI27IShaderUniformSetterFactory = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS27IShaderUniformSetterFactory }, comdat, align 8
@_ZTS27IShaderUniformSetterFactory = linkonce_odr dso_local constant [30 x i8] c"27IShaderUniformSetterFactory\00", comdat, align 1
@_ZTV29GameGlobalShaderUniformSetter = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI29GameGlobalShaderUniformSetter, ptr @_ZN29GameGlobalShaderUniformSetterD2Ev, ptr @_ZN29GameGlobalShaderUniformSetterD0Ev, ptr @_ZN29GameGlobalShaderUniformSetter13onSetUniformsEPN5video25IMaterialRendererServicesE, ptr @_ZN29GameGlobalShaderUniformSetter13onSetMaterialERKN5video9SMaterialE] }, comdat, align 8
@.str.271 = private unnamed_addr constant [15 x i8] c"animationTimer\00", align 1
@.str.272 = private unnamed_addr constant [20 x i8] c"animationTimerDelta\00", align 1
@.str.273 = private unnamed_addr constant [21 x i8] c"crackAnimationLength\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"crackLevel\00", align 1
@.str.275 = private unnamed_addr constant [18 x i8] c"crackTextureScale\00", align 1
@.str.276 = private unnamed_addr constant [9 x i8] c"dayLight\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"yawVec\00", align 1
@.str.278 = private unnamed_addr constant [13 x i8] c"cameraOffset\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"cameraPosition\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"texelSize0\00", align 1
@.str.281 = private unnamed_addr constant [15 x i8] c"exposureParams\00", align 1
@.str.282 = private unnamed_addr constant [13 x i8] c"luminanceMin\00", align 1
@.str.283 = private unnamed_addr constant [13 x i8] c"luminanceMax\00", align 1
@.str.284 = private unnamed_addr constant [19 x i8] c"exposureCorrection\00", align 1
@.str.285 = private unnamed_addr constant [16 x i8] c"speedDarkBright\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"speedBrightDark\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"centerWeightPower\00", align 1
@.str.288 = private unnamed_addr constant [19 x i8] c"compensationFactor\00", align 1
@constinit = private unnamed_addr constant [7 x ptr] [ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288], align 8
@.str.289 = private unnamed_addr constant [15 x i8] c"bloomIntensity\00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"bloomStrength\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"bloomRadius\00", align 1
@.str.292 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.293 = private unnamed_addr constant [18 x i8] c"sunPositionScreen\00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"sunBrightness\00", align 1
@.str.295 = private unnamed_addr constant [19 x i8] c"moonPositionScreen\00", align 1
@.str.296 = private unnamed_addr constant [15 x i8] c"moonBrightness\00", align 1
@.str.297 = private unnamed_addr constant [24 x i8] c"volumetricLightStrength\00", align 1
@.str.298 = private unnamed_addr constant [22 x i8] c"exposure_compensation\00", align 1
@.str.299 = private unnamed_addr constant [13 x i8] c"enable_bloom\00", align 1
@.str.300 = private unnamed_addr constant [27 x i8] c"enable_volumetric_lighting\00", align 1
@_ZTI29GameGlobalShaderUniformSetter = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS29GameGlobalShaderUniformSetter, ptr @_ZTI20IShaderUniformSetter }, comdat, align 8
@_ZTS29GameGlobalShaderUniformSetter = linkonce_odr dso_local constant [32 x i8] c"29GameGlobalShaderUniformSetter\00", comdat, align 1
@_ZTI20IShaderUniformSetter = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20IShaderUniformSetter }, comdat, align 8
@_ZTS20IShaderUniformSetter = linkonce_odr dso_local constant [23 x i8] c"20IShaderUniformSetter\00", comdat, align 1
@.str.301 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTV29FogShaderUniformSetterFactory = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"
@switch.table._ZN4Game17toggleBlockBoundsEv = private unnamed_addr constant [3 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132], align 8
@switch.table._ZN4Game10updateChatEf = private unnamed_addr constant [6 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.172, ptr @.str.235, ptr @.str.236, ptr @.str.236], align 8

@_ZN4GameC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4GameC2Ev
@_ZN4GameD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4GameD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11runInThreadRKSt8functionIFvvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 12 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #33 ; 11 uses
  invoke void @_ZN6ThreadC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV12LambdaThread, i64 16), ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !53
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.pre7 = load ptr, ptr %.phi.trans.insert6, align 8, !tbaa !53
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.c, align 16, !tbaa !52  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrI12LambdaThreadSt14default_deleteIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt10unique_ptrI12LambdaThreadSt14default_deleteIS0_EED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #35
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit.i:              ; preds = %bb.d, %bb.b
  %i.n = phi ptr [ null, %bb.b ], [ %.pre7, %bb.d ]
  %i.o = phi ptr [ null, %bb.b ], [ %.pre, %bb.d ] ; 3 uses
  %i.p = phi <2 x ptr> [ splat (ptr null), %bb.b ], [ %i.h, %bb.d ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !1012
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.o, ptr %i.c, align 16, !tbaa !53
  store ptr %i.n, ptr %i.d, align 8, !tbaa !53
  store <2 x ptr> %i.p, ptr %i.q, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.o, null
end_hunk_0
begin_hunk_1_@_ZN4Game7initGuiEv:bb.a
  %i.ad = tail call noalias noundef nonnull dereferenceable(712) ptr @_Znwm(i64 noundef 712) #33 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !301
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !275
  invoke void @_ZN13TouchControlsC1EP14IrrlichtDeviceP20ISimpleTextureSource(ptr noundef nonnull align 8 dereferenceable(712) %i.ad, ptr noundef %i.af, ptr noundef %i.ah)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.ad, ptr @g_touchcontrols, align 8, !tbaa !663
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 712) #36
  br label %common.resume

bb.h:                                             ; preds = %bb.f, %_ZN7irr_ptrI14GUIChatConsoleED2Ev.exit
  ret i1 true
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !193
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !189
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !192  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !193  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !192
  %i.o = load i64, ptr %i.i, align 8, !tbaa !54
  store i64 %i.o, ptr %i.g, align 8, !tbaa !54
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !193
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !193
  store ptr %i.i, ptr %i.f, align 8, !tbaa !192
  store i64 0, ptr %i.q, align 8, !tbaa !193
  store i8 0, ptr %i.i, align 8, !tbaa !54
  ret void
}

declare void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.67") align 8, i64, ptr) local_unnamed_addr #3

declare void @_ZN3HudC1EP6ClientP11LocalPlayerP9Inventory(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN15ClientScripting16on_minimap_readyEP7Minimap(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Game23shouldShowTouchControlsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(688) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.f, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = load ptr, ptr @g_settings, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.h, ptr noundef nonnull align 1 dereferenceable(14) @.str.62, i64 14, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 14, ptr %i.i, align 8, !tbaa !193
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 0, ptr %i.j, align 2, !tbaa !54
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !192    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !193  ; 2 uses
  %i.r = icmp eq i64 %i.q, 4
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !192 ; 2 uses
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i32, ptr %.pre, align 1
  %i.t = icmp ne i32 %i.s, 1869903201
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.w = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !289 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1353 ; 2 uses
  %.not2.i = icmp eq ptr %i.y, null
  br i1 %.not2.i, label %bb.d, label %_ZN15RenderingEngine18getLastPointerTypeEv.exit

bb.d:                                             ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.215, i32 noundef 158, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine18getLastPointerTypeEv) #37
  unreachable

_ZN15RenderingEngine18getLastPointerTypeEv.exit:  ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2140
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1367
  %i.ab = icmp eq i32 %i.aa, 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !192   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.e
  %i.af = load i64, ptr %i.h, align 8, !tbaa !54
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.ac

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ah = call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.q, ptr %.pre)
  br label %bb.f

bb.f:                                             ; preds = %_ZN15RenderingEngine18getLastPointerTypeEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.ab, %_ZN15RenderingEngine18getLastPointerTypeEv.exit ], [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %.not21.i = icmp eq i64 %0, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01318.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.01318.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !54
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @isspace(i32 noundef %i.c) #38
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw i64 %.01318.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %0
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1368

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.01318.i, %.lr.ph.i ], [ %0, %bb.b ] ; 6 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.013.lcssa.i, i64 %0) ; 2 uses
  %i.f = icmp ugt i64 %0, %.013.lcssa.i
  br i1 %i.f, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.h, %.013.lcssa.i
  br i1 %i.g, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !1369

.lr.ph:                                           ; preds = %.critedge.i, %bb.c
  %.0.i25 = phi i64 [ %i.h, %bb.c ], [ %0, %.critedge.i ] ; 2 uses
  %i.h = add i64 %.0.i25, -1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #38
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %..critedge2.i_crit_edge, label %bb.c, !llvm.loop !1369

..critedge2.i_crit_edge:                          ; preds = %.lr.ph
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !1369

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit: ; preds = %bb.c, %..critedge2.i_crit_edge, %.critedge.i
  %.0.lcssa.i = phi i64 [ %.0.i25, %..critedge2.i_crit_edge ], [ %umin.i, %.critedge.i ], [ %umin.i, %bb.c ]
  %i.m = sub i64 %.0.lcssa.i, %.013.lcssa.i
  %i.n = sub nuw i64 %0, %.013.lcssa.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.013.lcssa.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !189, !alias.scope !1373
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !193, !alias.scope !1373
  store i8 0, ptr %i.p, align 8, !tbaa !54, !alias.scope !1373
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.sroa.speculated.i.i, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i: ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %.not.i5 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i5, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i6

bb.d:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !192, !alias.scope !1373 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.p, align 8, !tbaa !54, !alias.scope !1373
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.r

.lr.ph.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i, %_Z10my_tolowerc.exit.i
  %.07.i = phi i64 [ %i.ae, %_Z10my_tolowerc.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.07.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !54, !noalias !1373 ; 3 uses
  %i.y = icmp slt i8 %i.x, 0
  br i1 %i.y, label %_Z10my_tolowerc.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i6
  %i.z = zext nneg i8 %i.x to i32
  %i.aa = call i32 @tolower(i32 noundef %i.z) #38
  %i.ab = trunc i32 %i.aa to i8
  br label %_Z10my_tolowerc.exit.i

_Z10my_tolowerc.exit.i:                           ; preds = %bb.e, %.lr.ph.i6
  %.0.i.i = phi i8 [ %i.ab, %bb.e ], [ %i.x, %.lr.ph.i6 ]
  %i.ac = load ptr, ptr %2, align 8, !tbaa !192, !alias.scope !1373
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.07.i
  store i8 %.0.i.i, ptr %i.ad, align 1, !tbaa !54
  %i.ae = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ae, %.sroa.speculated.i.i
  br i1 %exitcond.not.i7, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i6, !llvm.loop !1372

_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_Z10my_tolowerc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i
  %i.af = load i64, ptr %i.q, align 8, !tbaa !193 ; 3 uses
  %.pre16 = load ptr, ptr %2, align 8, !tbaa !192 ; 7 uses
  switch i64 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %lhsc = load i8, ptr %.pre16, align 1
  %i.ag = icmp eq i8 %lhsc, 121
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %bcmp.i8 = call i32 @bcmp(ptr %.pre16, ptr nonnull @.str.221, i64 %i.af)
  %i.ah = icmp eq i32 %bcmp.i8, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %bcmp.i10 = call i32 @bcmp(ptr %.pre16, ptr nonnull @.str.222, i64 %i.af)
  %i.ai = icmp eq i32 %bcmp.i10, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  %i.aj = call i64 @__isoc23_strtol(ptr noundef nonnull %.pre16, ptr noundef null, i32 noundef 10) #34, !inline_history !27
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp ne i64 %i.ak, 0
  %.pre17 = load ptr, ptr %2, align 8, !tbaa !192
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = phi ptr [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 ] ; 2 uses
  %i.an = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 ]
  %i.ao = icmp eq ptr %i.am, %i.p
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !54
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i1 %i.an
}

declare void @_ZN6GameUI4initEv(ptr noundef nonnull align 8 dereferenceable(122)) local_unnamed_addr #3

declare void @_ZN11ChatBackend15clearRecentChatEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare void @_ZN11ChatBackend13applySettingsEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare void @_ZN13TouchControlsC1EP14IrrlichtDeviceP20ISimpleTextureSource(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN7AddressC1Ev(ptr noundef nonnull align 4 dereferenceable(22)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK7Address5isAnyEv(ptr noundef nonnull align 4 dereferenceable(22)) local_unnamed_addr #3

declare void @_ZN7Address10setAddressEhhhh(ptr noundef nonnull align 4 dereferenceable(22), i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN7Address7setPortEt(ptr noundef nonnull align 4 dereferenceable(22), i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !222
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !215
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !193
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare void @_ZN6ClientC1EPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14MapDrawControlP22IWritableTextureSourceP21IWritableShaderSourceP23IWritableItemDefManagerP14NodeDefManagerP13ISoundManagerP14MtEventManagerP15RenderingEngineP18ItemVisualsManager14ELoginRegister(ptr noundef nonnull align 8 dereferenceable(1674), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(7), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6Client17migrateModStorageEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

declare void @_ZN6Client7connectERK7AddressRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1674), ptr noundef nonnull align 4 dereferenceable(22), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN15RenderingEngine16draw_load_screenERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPN3gui15IGUIEnvironmentEP14ITextureSourcefiPf(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z11wstrgettextB5cxx11PKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.67") align 8 %0, ptr noundef %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.b = load i8, ptr %1, align 1, !tbaa !54, !noalias !1376
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !189, !alias.scope !1376
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @gettext(ptr noundef nonnull %1) #34, !noalias !1376 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !189, !alias.scope !1376
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.213) #37
  unreachable

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.g = phi ptr [ %i.c, %.thread.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = phi ptr [ @.str.172, %.thread.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !1376
  store i64 %i.i, ptr %i.a, align 8, !tbaa !190, !noalias !1376
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !192, !alias.scope !1376
end_hunk_1
begin_hunk_2_@_ZNKSt14default_deleteI10SoundMakerEclEPS0_:bb.a
bb.c:                                             ; preds = %_ZN10SoundMakerD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !185    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !215    ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !222
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !215
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.218, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !222
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !215 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !185   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !47
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !222
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !847  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !260 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #36
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !716
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !717
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !716    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !717
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !847  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !260 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !54
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #36
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !25

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !716
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !717
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

declare void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.67") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z17unescape_enrichedIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.67") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !565
  store i32 0, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not33 = icmp eq i64 %1, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader, %.backedge
  %.031 = phi i64 [ %i.t, %.backedge ], [ 0, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.031
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.e = icmp eq i32 %i.d, 27
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph32
  %i.f = add nuw i64 %.031, 1                     ; 3 uses
  %i.g = icmp eq i64 %i.f, %1
  br i1 %i.g, label %._crit_edge, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %i.k = icmp eq i32 %i.j, 40
  br i1 %i.k, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.031, 2                         ; 3 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %.lr.ph, label %.backedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.128 = phi i64 [ %i.r, %bb.f ], [ %i.l, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.128
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76   ; 2 uses
  %.not = icmp eq i32 %i.o, 41
  br i1 %.not, label %.backedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.p = icmp eq i32 %i.o, 92
  %i.q = zext i1 %i.p to i64
  %spec.select = add nuw i64 %.128, 1
  %i.r = add i64 %spec.select, %i.q               ; 3 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %.lr.ph, label %.backedge, !llvm.loop !1709

.backedge:                                        ; preds = %.lr.ph, %bb.f, %bb.d, %bb.e, %bb.i
  %.3.sink = phi i64 [ %.031, %bb.i ], [ %i.f, %bb.d ], [ %i.l, %bb.e ], [ %i.r, %bb.f ], [ %.128, %.lr.ph ]
  %i.t = add i64 %.3.sink, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %.lr.ph32, label %._crit_edge, !llvm.loop !1710

bb.g:                                             ; preds = %.lr.ph32
  %i.v = load i64, ptr %i.b, align 8, !tbaa !565  ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !263    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.z = icmp ult i64 %i.v, 4
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !54
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !263
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  %i.ad = phi ptr [ %.pre.i.i, %.noexc ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.v
  store i32 %i.d, ptr %i.ae, align 4, !tbaa !76
  store i64 %i.w, ptr %i.b, align 8, !tbaa !565
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.w
  store i32 0, ptr %i.af, align 4, !tbaa !76
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %bb.b, %.backedge, %.preheader
  ret void

bb.k:                                             ; preds = %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.h, %bb.c ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !263   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ak = shl i64 %i.aj, 2
  %i.al = add i64 %i.ak, 4
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #36
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE7emplaceIJRS9_RfEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !540  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !193  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #34 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !543 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !28

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !193  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
end_hunk_2
