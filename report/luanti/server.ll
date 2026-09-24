Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
@_ZGVZN6Server15SendBlockNoLockEtP8MapBlockhtPSt13unordered_mapISt4pairIN4core8vector3dIsEEtENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7SBCHashESt8equal_toIS7_ESaIS3_IKS7_SD_EEEE21net_compression_level = internal thread_local unnamed_addr global i1 false, align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"map_compression_level_net\00", align 1
@.str.161 = private unnamed_addr constant [35 x i8] c"Server::SendBlocks(): Collect list\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"max_users\00", align 1
@.str.163 = private unnamed_addr constant [40 x i8] c"max_simultaneous_block_sends_per_client\00", align 1
@.str.164 = private unnamed_addr constant [38 x i8] c"Server::SendBlocks(): Send to clients\00", align 1
@.str.165 = private unnamed_addr constant [66 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.-\00", align 1
@.str.166 = private unnamed_addr constant [57 x i8] c"Server: ignoring file as it has disallowed characters: \22\00", align 1
@.str.181 = private unnamed_addr constant [47 x i8] c"Server: ignoring unsupported file extension: \22\00", align 1
@.str.182 = private unnamed_addr constant [37 x i8] c"Server::addMediaFile(): Empty file \22\00", align 1
@.str.183 = private unnamed_addr constant [26 x i8] c"Server::addMediaFile(): \22\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"\22 is too big (\00", align 1
@.str.185 = private unnamed_addr constant [29 x i8] c"KiB). The internal limit is \00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"KiB.\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"KiB)\00", align 1
@.str.190 = private unnamed_addr constant [41 x i8] c"Server: Calculating media file checksums\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"/locale\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"/textures/server\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"/textures\00", align 1
@.str.194 = private unnamed_addr constant [23 x i8] c" media files collected\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"remote_media\00", align 1
@.str.196 = private unnamed_addr constant [32 x i8] c"Server: Announcing files to id(\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"): count=\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c" size=\00", align 1
@.str.199 = private unnamed_addr constant [39 x i8] c"Server::sendRequestedMedia(): Sending \00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c" files to \00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c" (compressed)\00", align 1
@.str.202 = private unnamed_addr constant [62 x i8] c"Server::sendRequestedMedia(): Client asked for unknown file \22\00", align 1
@.str.203 = private unnamed_addr constant [53 x i8] c"Server::sendRequestedMedia(): Client has requested \22\00", align 1
@.str.204 = private unnamed_addr constant [32 x i8] c"\22 before, not sending it again.\00", align 1
@.str.205 = private unnamed_addr constant [37 x i8] c"Server::sendRequestedMedia(): bunch \00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c" files=\00", align 1
@.str.207 = private unnamed_addr constant [54 x i8] c"Server::sendRequestedMedia(): size after compression \00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"% (\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c" byte)\00", align 1
@.str.210 = private unnamed_addr constant [29 x i8] c"Server::DiePlayer(): Player \00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c" dies\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"times out.\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"leaves game.\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c" List of players: \00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"craft\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"craftpreview\00", align 1
@.str.217 = private unnamed_addr constant [31 x i8] c"You haven't set up an account.\00", align 1
@.str.218 = private unnamed_addr constant [36 x i8] c"Please log in using the client as '\00", align 1
@.str.219 = private unnamed_addr constant [26 x i8] c"' with a secure password.\00", align 1
@.str.220 = private unnamed_addr constant [59 x i8] c"Until then, you can't execute admin tasks via the console,\00", align 1
@.str.221 = private unnamed_addr constant [57 x i8] c"and everybody can claim the user account instead of you,\00", align 1
@.str.222 = private unnamed_addr constant [43 x i8] c"giving them full control over this server.\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"player:\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"strip_color_codes\00", align 1
@.str.225 = private unnamed_addr constant [51 x i32] [i32 89, i32 111, i32 117, i32 32, i32 99, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 115, i32 101, i32 110, i32 100, i32 32, i32 109, i32 111, i32 114, i32 101, i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 115, i32 46, i32 32, i32 89, i32 111, i32 117, i32 32, i32 97, i32 114, i32 101, i32 32, i32 108, i32 105, i32 109, i32 105, i32 116, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 0], align 4
@.str.226 = private unnamed_addr constant [29 x i8] c"chat_message_limit_per_10sec\00", align 1
@.str.227 = private unnamed_addr constant [26 x i32] [i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 115, i32 32, i32 112, i32 101, i32 114, i32 32, i32 49, i32 48, i32 32, i32 115, i32 101, i32 99, i32 111, i32 110, i32 100, i32 115, i32 46, i32 0], align 4
@.str.228 = private unnamed_addr constant [46 x i8] c"You have been kicked due to message flooding.\00", align 1
@.str.229 = private unnamed_addr constant [39 x i8] c"Unhandled chat filtering result found.\00", align 1
@__PRETTY_FUNCTION__._ZN6Server10handleChatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_IwS2_IwESaIwEEEbP12RemotePlayer = private unnamed_addr constant [89 x i8] c"std::wstring Server::handleChat(const std::string &, std::wstring, bool, RemotePlayer *)\00", align 1
@.str.230 = private unnamed_addr constant [109 x i32] [i32 89, i32 111, i32 117, i32 114, i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 32, i32 101, i32 120, i32 99, i32 101, i32 101, i32 100, i32 32, i32 116, i32 104, i32 101, i32 32, i32 109, i32 97, i32 120, i32 105, i32 109, i32 117, i32 109, i32 32, i32 99, i32 104, i32 97, i32 116, i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 32, i32 108, i32 105, i32 109, i32 105, i32 116, i32 32, i32 115, i32 101, i32 116, i32 32, i32 111, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 46, i32 32, i32 73, i32 116, i32 32, i32 119, i32 97, i32 115, i32 32, i32 114, i32 101, i32 102, i32 117, i32 115, i32 101, i32 100, i32 46, i32 32, i32 83, i32 101, i32 110, i32 100, i32 32, i32 97, i32 32, i32 115, i32 104, i32 111, i32 114, i32 116, i32 101, i32 114, i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 0], align 4
@.str.231 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.232 = private unnamed_addr constant [44 x i32] [i32 78, i32 101, i32 119, i32 108, i32 105, i32 110, i32 101, i32 115, i32 32, i32 97, i32 114, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 112, i32 101, i32 114, i32 109, i32 105, i32 116, i32 116, i32 101, i32 100, i32 32, i32 105, i32 110, i32 32, i32 99, i32 104, i32 97, i32 116, i32 32, i32 109, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 115, i32 0], align 4
@.str.233 = private unnamed_addr constant [6 x i8] c"shout\00", align 1
@.str.234 = private unnamed_addr constant [40 x i32] [i32 45, i32 33, i32 45, i32 32, i32 89, i32 111, i32 117, i32 32, i32 100, i32 111, i32 110, i32 39, i32 116, i32 32, i32 104, i32 97, i32 118, i32 101, i32 32, i32 112, i32 101, i32 114, i32 109, i32 105, i32 115, i32 115, i32 105, i32 111, i32 110, i32 32, i32 116, i32 111, i32 32, i32 115, i32 104, i32 111, i32 117, i32 116, i32 46, i32 0], align 4
@.str.235 = private unnamed_addr constant [7 x i8] c"CHAT: \00", align 1
@.str.236 = private unnamed_addr constant [17 x i8] c"Client not found\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"[id=\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"# Server: \00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"version: \00", align 1
@g_version_string = external local_unnamed_addr global ptr, align 8
@.str.240 = private unnamed_addr constant [10 x i8] c" | game: \00", align 1
@.str.241 = private unnamed_addr constant [12 x i8] c" | uptime: \00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c" | max lag: \00", align 1
@.str.243 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c" | clients: \00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.246 = private unnamed_addr constant [34 x i8] c" WARNING: Map saving is disabled.\00", align 1
@.str.248 = private unnamed_addr constant [47 x i8] c"Server: A banned client tried to connect from \00", align 1
@.str.249 = private unnamed_addr constant [19 x i8] c"; banned name was \00", align 1
@.str.250 = private unnamed_addr constant [36 x i8] c"Your IP is banned. Banned name was \00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"hud_changed\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@__PRETTY_FUNCTION__._ZN6Server24setLocalPlayerAnimationsEP12RemotePlayerPN4core8vector2dIfEEf = private unnamed_addr constant [66 x i8] c"void Server::setLocalPlayerAnimations(RemotePlayer *, v2f *, f32)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server18setPlayerEyeOffsetEP12RemotePlayerN4core8vector3dIfEES4_S4_ = private unnamed_addr constant [63 x i8] c"void Server::setPlayerEyeOffset(RemotePlayer *, v3f, v3f, v3f)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server6setSkyEP12RemotePlayerRK12SkyboxParams = private unnamed_addr constant [58 x i8] c"void Server::setSky(RemotePlayer *, const SkyboxParams &)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server6setSunEP12RemotePlayerRK9SunParams = private unnamed_addr constant [55 x i8] c"void Server::setSun(RemotePlayer *, const SunParams &)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server7setMoonEP12RemotePlayerRK10MoonParams = private unnamed_addr constant [57 x i8] c"void Server::setMoon(RemotePlayer *, const MoonParams &)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server8setStarsEP12RemotePlayerRK10StarParams = private unnamed_addr constant [58 x i8] c"void Server::setStars(RemotePlayer *, const StarParams &)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server9setCloudsEP12RemotePlayerRK11CloudParams = private unnamed_addr constant [60 x i8] c"void Server::setClouds(RemotePlayer *, const CloudParams &)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server21overrideDayNightRatioEP12RemotePlayerbf = private unnamed_addr constant [64 x i8] c"void Server::overrideDayNightRatio(RemotePlayer *, bool, float)\00", align 1
@__PRETTY_FUNCTION__._ZN6Server11setLightingEP12RemotePlayerRK8Lighting = private unnamed_addr constant [59 x i8] c"void Server::setLighting(RemotePlayer *, const Lighting &)\00", align 1
@.str.254 = private unnamed_addr constant [54 x i8] c"Can't delete particle spawners during initialisation!\00", align 1
@.str.255 = private unnamed_addr constant [73 x i8] c"Server: adding ephemeral or player-specific media at startup is nonsense\00", align 1
@.str.256 = private unnamed_addr constant [8 x i8] c"!a.data\00", align 1
@__PRETTY_FUNCTION__._ZN6Server15dynamicAddMediaERKNS_16DynamicMediaArgsE = private unnamed_addr constant [55 x i8] c"bool Server::dynamicAddMedia(const DynamicMediaArgs &)\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"a.data\00", align 1
@.str.258 = private unnamed_addr constant [18 x i8] c"!filename.empty()\00", align 1
@.str.259 = private unnamed_addr constant [36 x i8] c"Server: failed writing media file \22\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"\22 to disk\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"Server: \22\00", align 1
@.str.262 = private unnamed_addr constant [26 x i8] c"\22 temporarily written to \00", align 1
@.str.263 = private unnamed_addr constant [34 x i8] c"Server::dynamicAddMedia(): file \22\00", align 1
@.str.264 = private unnamed_addr constant [31 x i8] c"\22 already exists in media list\00", align 1
@.str.265 = private unnamed_addr constant [47 x i8] c"Server: failed creating a copy of media file \22\00", align 1
@.str.266 = private unnamed_addr constant [25 x i8] c"\22 temporarily copied to \00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"The media \22\00", align 1
@.str.268 = private unnamed_addr constant [39 x i8] c"\22 (dynamic) could not be delivered to \00", align 1
@.str.269 = private unnamed_addr constant [26 x i8] c" due to a race condition.\00", align 1
@.str.270 = private unnamed_addr constant [35 x i8] c"Server::rollbackRevertActions(len=\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"Nothing to do.\00", align 1
@.str.272 = private unnamed_addr constant [17 x i8] c"Revert of step (\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.274 = private unnamed_addr constant [8 x i8] c" failed\00", align 1
@.str.275 = private unnamed_addr constant [31 x i8] c"Map::rollbackRevertActions(): \00", align 1
@.str.276 = private unnamed_addr constant [29 x i8] c"Successfully reverted step (\00", align 1
@_ZN7porting10path_shareB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@.str.277 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.278 = private unnamed_addr constant [21 x i8] c"setAsyncFatalError: \00", align 1
@.str.279 = private unnamed_addr constant [6 x i8] c"Lua: \00", align 1
@.str.280 = private unnamed_addr constant [25 x i8] c"%s while shutting down: \00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c"ModError\00", align 1
@.str.282 = private unnamed_addr constant [30 x i8] c"\0ACheck debug.txt for details.\00", align 1
@.str.283 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.284 = private unnamed_addr constant [18 x i8] c"static_spawnpoint\00", align 1
@.str.285 = private unnamed_addr constant [41 x i8] c"*** Immediate Server shutdown requested.\00", align 1
@.str.286 = private unnamed_addr constant [30 x i8] c"*** Server shutdown canceled.\00", align 1
@.str.287 = private unnamed_addr constant [29 x i8] c"*** Server shutting down in \00", align 1
@.str.288 = private unnamed_addr constant [41 x i8] c"emergePlayer(): Player already connected\00", align 1
@.str.289 = private unnamed_addr constant [71 x i8] c"emergePlayer(): Player with wrong name but same peer_id already exists\00", align 1
@.str.290 = private unnamed_addr constant [24 x i8] c"dedicated_server_loop()\00", align 1
@.str.291 = private unnamed_addr constant [24 x i8] c"profiler_print_interval\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"Profiler:\00", align 1
@.str.293 = private unnamed_addr constant [26 x i8] c"Dedicated server quitting\00", align 1
@.str.294 = private unnamed_addr constant [54 x i8] c"ModChannel message too long, dropping before sending \00", align 1
@.str.295 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c", channel: \00", align 1
@.str.297 = private unnamed_addr constant [9 x i8] c"world.mt\00", align 1
@.str.298 = private unnamed_addr constant [22 x i8] c"Cannot read world.mt!\00", align 1
@.str.299 = private unnamed_addr constant [20 x i8] c"mod_storage_backend\00", align 1
@.str.300 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.301 = private unnamed_addr constant [228 x i8] c"/!\\ You are using the old mod storage files backend. This backend is deprecated and may be removed in a future release /!\\\0ASwitching to SQLite3 is advised, please read https://docs.luanti.org/for-server-hosts/database-backends.\00", align 1
@.str.302 = private unnamed_addr constant [8 x i8] c"sqlite3\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.304 = private unnamed_addr constant [30 x i8] c"Mod storage database backend \00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c" not supported\00", align 1
@.str.306 = private unnamed_addr constant [20 x i8] c"migrate-mod-storage\00", align 1
@.str.307 = private unnamed_addr constant [36 x i8] c"Cannot migrate: new backend is same\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c" as the old one\00", align 1
@.str.309 = private unnamed_addr constant [39 x i8] c"Successfully migrated the metadata of \00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c" mods\00", align 1
@.str.311 = private unnamed_addr constant [27 x i8] c"Failed to update world.mt!\00", align 1
@.str.312 = private unnamed_addr constant [17 x i8] c"world.mt updated\00", align 1
@.str.313 = private unnamed_addr constant [37 x i8] c"An error occurred during migration: \00", align 1
@.str.314 = private unnamed_addr constant [12 x i8] c"mod_storage\00", align 1
@.str.315 = private unnamed_addr constant [16 x i8] c"mod_storage.bak\00", align 1
@.str.316 = private unnamed_addr constant [18 x i8] c"After migration, \00", align 1
@.str.317 = private unnamed_addr constant [26 x i8] c" could not be renamed to \00", align 1
@.str.318 = private unnamed_addr constant [21 x i8] c"protocol_version_min\00", align 1
@.str.319 = private unnamed_addr constant [33 x i8] c"strict_protocol_version_checking\00", align 1
@LATEST_PROTOCOL_VERSION = external local_unnamed_addr constant i16, align 2
@_ZTV12ServerThread = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12ServerThread, ptr @_ZN6ThreadD2Ev, ptr @_ZN12ServerThreadD0Ev, ptr @_ZN12ServerThread3runEv] }, align 8
@_ZTI12ServerThread = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12ServerThread, ptr @_ZTI6Thread }, align 8
@_ZTS12ServerThread = dso_local constant [15 x i8] c"12ServerThread\00", align 1
@_ZTI6Thread = external constant ptr
@_ZTI6Server = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS6Server, i32 0, i32 3, ptr @_ZTIN3con11PeerHandlerE, i64 2, ptr @_ZTI16MapEventReceiver, i64 2050, ptr @_ZTI8IGameDef, i64 4098 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS6Server = dso_local constant [8 x i8] c"6Server\00", align 1
@_ZTIN3con11PeerHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3con11PeerHandlerE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3con11PeerHandlerE = linkonce_odr dso_local constant [20 x i8] c"N3con11PeerHandlerE\00", comdat, align 1
@_ZTI16MapEventReceiver = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS16MapEventReceiver }, comdat, align 8
@_ZTS16MapEventReceiver = linkonce_odr dso_local constant [19 x i8] c"16MapEventReceiver\00", comdat, align 1
@_ZTI8IGameDef = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8IGameDef }, comdat, align 8
@_ZTS8IGameDef = linkonce_odr dso_local constant [10 x i8] c"8IGameDef\00", comdat, align 1
@_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local global { { { ptr } } } zeroinitializer, comdat, align 8
@_ZGVN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE), align 8
@__dso_handle = external hidden global i8
@.str.320 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.321 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.322 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.323 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.324 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [72 x i8] c"St23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@.str.325 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@_ZTV11ServerError = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI11ServerError, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN11ServerErrorD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@_ZTV13BaseException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13BaseException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13BaseExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.326 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.327 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.328 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.329 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.330 = private unnamed_addr constant [6 x i8] c" cmd=\00", align 1
@.str.331 = private unnamed_addr constant [9 x i8] c" offset=\00", align 1
@.str.333 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.334 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@_ZL9hex_chars = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@_ZTV17ItemStackMetadata = external constant { [19 x ptr] }, align 8
@_ZTT17ItemStackMetadata = external unnamed_addr constant [4 x ptr], align 8
@_ZTV23ClientNotFoundException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI23ClientNotFoundException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN23ClientNotFoundExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTV14Database_Dummy = external constant { [24 x ptr], [8 x ptr], [16 x ptr] }, align 8
@.str.337 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIwSt11char_traitsIwEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [71 x i8] c"St15_Sp_counted_ptrIPN3con11IConnectionELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTV14MetricsBackend = external constant { [6 x ptr] }, align 8
@.str.338 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.339 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.340 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.341 = private unnamed_addr constant [21 x i8] c"it->second.ephemeral\00", align 1
@"__PRETTY_FUNCTION__._ZZN6Server28stepPendingDynMediaCallbacksEfENK3$_0clERSt4pairIKjNS_27PendingDynamicMediaCallbackEE" = private unnamed_addr constant [128 x i8] c"auto Server::stepPendingDynMediaCallbacks(float)::(lambda)::operator()(decltype(this->m_pending_dyn_media)::value_type &) const\00", align 1
@"_ZTIZN6Server23sendDetachedInventoriesEtbE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6Server23sendDetachedInventoriesEtbE3$_0" }, align 8
@"_ZTSZN6Server23sendDetachedInventoriesEtbE3$_0" = internal constant [43 x i8] c"ZN6Server23sendDetachedInventoriesEtbE3$_0\00", align 1
@_ZTVN18ParticleParamTypes9ParameterIfLm1EEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN18ParticleParamTypes9ParameterIfLm1EEE, ptr @_ZNK18ParticleParamTypes9ParameterIfLm1EE9serializeERSo, ptr @_ZN18ParticleParamTypes9ParameterIfLm1EE11deSerializeERSi, ptr @_ZNK18ParticleParamTypes9ParameterIfLm1EE11interpolateEfRKS1_] }, comdat, align 8
@_ZTIN18ParticleParamTypes9ParameterIfLm1EEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN18ParticleParamTypes9ParameterIfLm1EEE }, comdat, align 8
@_ZTSN18ParticleParamTypes9ParameterIfLm1EEE = linkonce_odr dso_local constant [40 x i8] c"N18ParticleParamTypes9ParameterIfLm1EEE\00", comdat, align 1
@_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EE9serializeERSo, ptr @_ZN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EE11deSerializeERSi, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EE11interpolateEfRKS4_] }, comdat, align 8
@_ZTIN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, ptr @_ZTIN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE }, comdat, align 8
@_ZTSN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE = linkonce_odr dso_local constant [65 x i8] c"N18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE\00", comdat, align 1
@_ZTIN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE }, comdat, align 8
@_ZTSN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE = linkonce_odr dso_local constant [58 x i8] c"N18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE\00", comdat, align 1
@_ZTVN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EEE, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EE9serializeERSo, ptr @_ZN18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EE11deSerializeERSi, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector2dIfEELm2EE11interpolateEfRKS4_] }, comdat, align 8
@_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EE9serializeERSo, ptr @_ZN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EE11deSerializeERSi, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EE11interpolateEfRKS4_] }, comdat, align 8
@_ZTIN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, ptr @_ZTIN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE }, comdat, align 8
@_ZTSN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE = linkonce_odr dso_local constant [65 x i8] c"N18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE\00", comdat, align 1
@_ZTIN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE }, comdat, align 8
@_ZTSN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE = linkonce_odr dso_local constant [58 x i8] c"N18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE\00", comdat, align 1
@_ZTVN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EEE, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EE9serializeERSo, ptr @_ZN18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EE11deSerializeERSi, ptr @_ZNK18ParticleParamTypes9ParameterIN4core8vector3dIfEELm3EE11interpolateEfRKS4_] }, comdat, align 8
@.str.342 = private unnamed_addr constant [23 x i8] c"gettext format error: \00", align 1
@_ZTISt13runtime_error = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"

@_ZN11ModIPCStoreD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ModIPCStoreD2Ev
@_ZN6ServerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11SubgameSpecb7AddressbP13ChatInterfacePS5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, ptr, i1, ptr, ptr), ptr @_ZN6ServerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11SubgameSpecb7AddressbP13ChatInterfacePS5_
@_ZN6ServerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6ServerD2Ev

; Function Attrs: nounwind uwtable
define dso_local void @_ZN11ModIPCStoreD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call noundef i32 @pthread_rwlock_trywrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #34
  %.not = icmp eq i32 %i.c, 16
  br i1 %.not, label %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit, label %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit.thread

_ZNSt11unique_lockISt12shared_mutexED2Ev.exit.thread: ; preds = %bb.a
  %i.d = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #34 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZNSt11unique_lockISt12shared_mutexED2Ev.exit:    ; preds = %bb.a
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit
  tail call void @_ZTH11errorstream() #34
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit, %bb.b
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92, !nonnull !93, !align !94 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc unwind label %bb.q, !inline_history !0

.noexc:                                           ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.i, i64 976, i64 984
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @__PRETTY_FUNCTION__._ZN11ModIPCStoreD2Ev, ptr %i.b, align 8, !tbaa !97
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.q       ; 0 uses

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str, ptr %i.a, align 8, !tbaa !97
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 5 uses
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !106
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !98 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !96
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre13 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %.noexc4, %bb.e
  %i.u = phi i64 [ %.pre13, %.noexc4 ], [ %i.p, %bb.e ]
  %i.v = phi ptr [ %.pre.i, %.noexc4 ], [ %i.m, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113  ; 6 uses
  %.not.i.i.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i6, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc7 unwind label %bb.q

.noexc7:                                          ; preds = %bb.h
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !120
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.j
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.q, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc8, %bb.i
  %.0.i.i.i = phi i8 [ %i.ac, %bb.i ], [ %i.ag, %.noexc8 ]
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext %.0.i.i.i)
          to label %.noexc10 unwind label %bb.q

.noexc10:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.q ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.d, %.noexc10, %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI11PackedValueSt14default_deleteIS9_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aj) #34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !123 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt3_V222condition_variable_anyD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.am, align 8, !tbaa !125
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !126
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #34, !inline_history !907
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #34, !inline_history !907
  br label %_ZNSt3_V222condition_variable_anyD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n
end_hunk_0
begin_hunk_1_@_ZN6Server10handleChatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_IwS2_IwESaIwEEEbP12RemotePlayer:._crit_edge.i.i
  %i.am = load i64, ptr %i.e, align 8, !tbaa !145 ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.al, ptr noundef nonnull align 1 dereferenceable(17) @.str.224, i64 17, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !146
  %i.ao = load ptr, ptr %9, align 8, !tbaa !140
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.aq = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %.noexc90
  %i.ar = load ptr, ptr %9, align 8, !tbaa !140   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ak
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.e
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !120
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %.pre224.a = load ptr, ptr %3, align 8, !tbaa !551 ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.r

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !552
  invoke void @_Z17unescape_enrichedIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.390") align 8 %10, i64 %i.aw, ptr %.pre224.a)
          to label %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit unwind label %bb.q

_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit: ; preds = %bb.f
  %i.ax = load ptr, ptr %3, align 8, !tbaa !551   ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %10, align 8, !tbaa !551  ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb                ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit
  br i1 %i.bc, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !552 ; 4 uses
  %i.bf = icmp ult i64 %i.be, 4
  call void @llvm.assume(i1 %i.bf)
  %.not21.i = icmp eq ptr %10, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, label %bb.h, !prof !128

bb.h:                                             ; preds = %bb.g
  switch i64 %i.be, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !558
  store i32 %i.bg, ptr %i.ax, align 4, !tbaa !558
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bh = call ptr @wmemcpy(ptr noundef %i.ax, ptr noundef %i.ba, i64 noundef %i.be) #34 ; 0 uses
  %.pre.i96 = load i64, ptr %i.bd, align 8, !tbaa !552
  %.pre30.i = load ptr, ptr %3, align 8, !tbaa !551
  %.pre31.pre.i = load ptr, ptr %10, align 8, !tbaa !551
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.pre31.i = phi ptr [ %i.ba, %bb.h ], [ %.pre31.pre.i, %bb.j ], [ %i.ba, %bb.i ]
  %i.bi = phi ptr [ %i.ax, %bb.h ], [ %.pre30.i, %bb.j ], [ %i.ax, %bb.i ] ; 2 uses
  %i.bj = phi i64 [ %i.be, %bb.h ], [ %.pre.i96, %bb.j ], [ 1, %bb.i ] ; 2 uses
  store i64 %i.bj, ptr %i.av, align 8, !tbaa !552
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  store i32 0, ptr %i.bk, align 4, !tbaa !558
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !551
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = load <2 x i64>, ptr %i.bl, align 8, !tbaa !120
  store <2 x i64> %i.bm, ptr %i.av, align 8, !tbaa !120
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i
  %i.bn = load i64, ptr %i.ay, align 8, !tbaa !120
  store ptr %i.ba, ptr %3, align 8, !tbaa !551
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = load <2 x i64>, ptr %i.bo, align 8, !tbaa !120
  store <2 x i64> %i.bp, ptr %i.av, align 8, !tbaa !120
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ax, ptr %10, align 8, !tbaa !551
  store i64 %i.bn, ptr %i.bb, align 8, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bb, ptr %10, align 8, !tbaa !551
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i, %bb.k, %bb.l
  %.pre227 = phi ptr [ %i.bi, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.ba, %bb.k ], [ %i.ba, %bb.l ], [ %i.ax, %bb.g ]
  %i.bq = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.ax, %bb.k ], [ %i.bb, %bb.l ], [ %i.ba, %bb.g ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !552
  store i32 0, ptr %i.bq, align 4, !tbaa !558
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !120
  %i.bv = shl i64 %i.bu, 2
  %i.bw = add i64 %i.bv, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bw) #37
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !551
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %.pre = phi ptr [ %.pre227, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit ], [ %.pre.pre, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.r

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.n:                                             ; preds = %bb.c
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !140   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.p
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.n
  %i.cb = load i64, ptr %i.p, align 8, !tbaa !120
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.m ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.by, %bb.n ]
  %i.cd = load ptr, ptr %8, align 8, !tbaa !140   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.h
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.cf = load i64, ptr %i.h, align 8, !tbaa !120
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.cm

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.p:                                             ; preds = %.noexc90
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %9, align 8, !tbaa !140   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ak
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.p
  %i.cl = load i64, ptr %i.ak, align 8, !tbaa !120
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.o
  %.pn53 = phi { ptr, i32 } [ %i.ch, %bb.o ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.ci, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.cl

bb.q:                                             ; preds = %bb.f
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.cl

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.co = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ], [ %.pre224.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !552 ; 9 uses
  %.not21.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not21.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.01318.i.i = phi i64 [ %i.cu, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.01318.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !558
  %i.ct = call i32 @iswspace(i32 noundef %i.cs) #34
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cu = add nuw i64 %.01318.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cu, %i.cq
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !1534

.critedge.i.i:                                    ; preds = %bb.s, %.lr.ph.i.i, %bb.r
  %.013.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.cq, %bb.s ], [ %.01318.i.i, %.lr.ph.i.i ] ; 7 uses
  %i.cv = icmp ugt i64 %i.cq, %.013.lcssa.i.i
  br i1 %i.cv, label %.lr.ph, label %.critedge2.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.cw = icmp ugt i64 %i.cx, %.013.lcssa.i.i
  br i1 %i.cw, label %.lr.ph, label %.critedge2.i.i, !llvm.loop !1535

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.t
  %.0.i.i301 = phi i64 [ %i.cx, %bb.t ], [ %i.cq, %.critedge.i.i ] ; 2 uses
  %i.cx = add i64 %.0.i.i301, -1                  ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !558
  %i.da = call i32 @iswspace(i32 noundef %i.cz) #34
  %.not17.i.i = icmp eq i32 %i.da, 0
  br i1 %.not17.i.i, label %..critedge2.i.i_crit_edge, label %bb.t, !llvm.loop !1535

..critedge2.i.i_crit_edge:                        ; preds = %.lr.ph
  br label %.critedge2.i.i, !llvm.loop !1535

.critedge2.i.i:                                   ; preds = %bb.t, %..critedge2.i.i_crit_edge, %.critedge.i.i
  %.0.i.i.lcssa = phi i64 [ %.0.i.i301, %..critedge2.i.i_crit_edge ], [ %i.cq, %.critedge.i.i ], [ %i.cx, %bb.t ]
  %23 = icmp ugt i64 %.013.lcssa.i.i, %i.cq
  br i1 %23, label %24, label %bb.u

24:                                               ; preds = %.critedge2.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.333, i64 noundef %.013.lcssa.i.i, i64 noundef %i.cq) #35
          to label %.noexc106 unwind label %bb.x

.noexc106:                                        ; preds = %24
  unreachable

bb.u:                                             ; preds = %.critedge2.i.i
  %i.db = sub i64 %.0.i.i.lcssa, %.013.lcssa.i.i
  %i.dc = sub nuw i64 %i.cq, %.013.lcssa.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.db)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.013.lcssa.i.i
  %i.de = load i64, ptr %i.cp, align 8, !tbaa !552
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.de, ptr noundef %i.dd, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.u
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.an, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit
  %i.dg = invoke noundef i32 @_ZN12RemotePlayer18canSendChatMessageEv(ptr noundef nonnull align 8 dereferenceable(1002) %5)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  switch i32 %i.dg, label %bb.al [
    i32 1, label %bb.z
    i32 2, label %bb.ak
    i32 0, label %bb.an
  ]

bb.x:                                             ; preds = %bb.u, %24
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.y:                                             ; preds = %.noexc125, %.noexc124.a, %.noexc123.a, %bb.ak, %bb.al, %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  invoke void @_ZNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.225, i64 noundef 50)
          to label %_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit unwind label %bb.ag ; 0 uses

_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit: ; preds = %bb.aa
  %i.dl = load ptr, ptr @g_settings, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dm, ptr %12, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 28, ptr %i.d, align 8, !tbaa !145
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc111 unwind label %bb.ah ; 2 uses

.noexc111:                                        ; preds = %_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit
  store ptr %i.dn, ptr %12, align 8, !tbaa !140
  %i.do = load i64, ptr %i.d, align 8, !tbaa !145 ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.dn, ptr noundef nonnull align 1 dereferenceable(28) @.str.226, i64 28, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !146
  %i.dq = load ptr, ptr %12, align 8, !tbaa !140
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.ds = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %.noexc111
  %i.dt = fpext nsz float %i.ds to double
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13basic_ostreamIwSt11char_traitsIwEE9_M_insertIdEERS2_T_(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, double noundef %i.dt)
          to label %_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEf.exit unwind label %bb.ai

_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEf.exit: ; preds = %bb.ab
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.227, i64 noundef 25)
          to label %_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit115 unwind label %bb.ai ; 0 uses

_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit115: ; preds = %_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEf.exit
  %i.dw = load ptr, ptr %12, align 8, !tbaa !140  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dm
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit115
  %i.dy = load i64, ptr %i.dm, align 8, !tbaa !120
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ea, ptr %0, align 8, !tbaa !556, !alias.scope !1544
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.eb, align 8, !tbaa !552, !alias.scope !1544
  store i32 0, ptr %i.ea, align 8, !tbaa !558, !alias.scope !1544
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !561, !noalias !1544 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ed, null
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !1544 ; 2 uses
  %i.eg = icmp ugt ptr %i.ed, %i.ef
  %.08.i.i.i = select i1 %i.eg, ptr %i.ed, ptr %i.ef ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i119 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i119, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !562, !noalias !1544 ; 2 uses
  %i.ej = ptrtoint ptr %.08.i.i.i to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 2
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ei, i64 noundef %i.em)
          to label %_ZNKSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEE3strEv.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !551, !alias.scope !1544 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ea
  br i1 %i.eq, label %.body, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ad
  %i.er = load i64, ptr %i.ea, align 8, !tbaa !120, !alias.scope !1544
  %i.es = shl i64 %i.er, 2
  %i.et = add i64 %i.es, 4
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #37
  br label %.body

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.eu)
          to label %_ZNKSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEE3strEv.exit unwind label %bb.ad

_ZNKSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEE3strEv.exit: ; preds = %bb.ae, %bb.ac
  %i.ev = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEE, align 8 ; 2 uses
  store ptr %i.ev, ptr %11, align 8, !tbaa !96
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEE, i64 64), align 8
  %i.ex = getelementptr i8, ptr %i.ev, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %11, i64 %i.ey
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !96
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEE, i64 72), align 8
  store ptr %i.fa, ptr %i.dj, align 8, !tbaa !96
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEE, i64 16), ptr %i.fb, align 8, !tbaa !96
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !551 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEE3strEv.exit
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !120
  %i.fh = shl i64 %i.fg, 2
  %i.fi = add i64 %i.fh, 4
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fi) #37
  br label %_ZNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %i.fb, align 8, !tbaa !96
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fj) #34
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fk, ptr %11, align 8, !tbaa !96
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEEE, i64 24), align 8
  %i.fm = getelementptr i8, ptr %i.fk, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds i8, ptr %11, i64 %i.fn
  store ptr %i.fl, ptr %i.fo, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fp, align 8, !tbaa !564
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fq) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ch

bb.af:                                            ; preds = %bb.z
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %bb.aa
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_PKS3_.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.ai:                                            ; preds = %_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEf.exit, %bb.ab, %.noexc111
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %12, align 8, !tbaa !140  ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dm
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.ai
  %i.fx = load i64, ptr %i.dm, align 8, !tbaa !120
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ah
  %.pn72 = phi { ptr, i32 } [ %i.ft, %bb.ah ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.fu, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.ag, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %.pn74 = phi { ptr, i32 } [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %i.fs, %bb.ag ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i ], [ %i.eo, %bb.ad ]
  call void @_ZNSt7__cxx1118basic_stringstreamIwSt11char_traitsIwESaIwEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #34
  br label %bb.aj

bb.aj:                                            ; preds = %.body, %bb.af
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %.body ], [ %i.fr, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.cl

bb.ak:                                            ; preds = %bb.w
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 1000
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8Profiler8DataPairEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #37
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1807

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8Profiler8DataPairEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9VoxelArea8addPointERKN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !756
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not1.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %0, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !685
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !685
  %i.h = load i16, ptr %i.g, align 2, !tbaa !758
  %i.i = sext i16 %i.h to i32
  %i.j = load i16, ptr %0, align 4, !tbaa !757
  %i.k = sext i16 %i.j to i32
  %i.l = add nsw i32 %i.i, 1
  %i.m = sub nsw i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i16, ptr %i.n, align 4, !tbaa !760
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !759
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.p, 1
  %i.u = sub nsw i32 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load i16, ptr %i.v, align 2, !tbaa !762
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i16, ptr %i.x, align 4, !tbaa !761
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.z = load i16, ptr %1, align 2, !tbaa !413    ; 3 uses
  %i.aa = load i16, ptr %0, align 4, !tbaa !757   ; 2 uses
  %i.ab = icmp slt i16 %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %i.z, ptr %0, align 4, !tbaa !757
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi i16 [ %i.z, %bb.c ], [ %i.aa, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !414 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !759 ; 2 uses
  %i.ah = icmp slt i16 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !759
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi i16 [ %i.ae, %bb.e ], [ %i.ag, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !415 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !761 ; 2 uses
  %i.an = icmp slt i16 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 %i.ak, ptr %i.al, align 4, !tbaa !761
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = phi i16 [ %i.ak, %bb.g ], [ %i.am, %bb.f ]
  %i.ap = load i16, ptr %1, align 2, !tbaa !413   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !758 ; 2 uses
  %i.as = icmp sgt i16 %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !758
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = phi i16 [ %i.ap, %bb.i ], [ %i.ar, %bb.h ]
  %i.au = load i16, ptr %i.ad, align 2, !tbaa !414 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !760 ; 2 uses
  %i.ax = icmp sgt i16 %i.au, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.au, ptr %i.av, align 4, !tbaa !760
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi i16 [ %i.au, %bb.k ], [ %i.aw, %bb.j ]
  %i.az = load i16, ptr %i.aj, align 2, !tbaa !415 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !762 ; 2 uses
  %i.bc = icmp sgt i16 %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !762
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi i16 [ %i.az, %bb.m ], [ %i.bb, %bb.l ]
  %i.be = sext i16 %i.at to i32
  %i.bf = sext i16 %i.ac to i32
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sub nsw i32 %i.bg, %i.bf
  %i.bi = sext i16 %i.ay to i32
  %i.bj = sext i16 %i.ai to i32
  %i.bk = add nsw i32 %i.bi, 1
  %i.bl = sub nsw i32 %i.bk, %i.bj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread
  %.sink = phi i16 [ %i.ao, %bb.n ], [ %i.y, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread ]
  %.sink37.in = phi i16 [ %i.bd, %bb.n ], [ %i.w, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread ]
  %storemerge35 = phi i32 [ %i.bh, %bb.n ], [ %i.m, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread ]
  %storemerge34 = phi i32 [ %i.bl, %bb.n ], [ %i.u, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread ]
  %.sink37 = sext i16 %.sink37.in to i32
  %i.bm = sext i16 %.sink to i32
  %i.bn = add nsw i32 %.sink37, 1
  %i.bo = sub nsw i32 %i.bn, %i.bm
  store i32 %storemerge35, ptr %i.a, align 4, !tbaa !127
  store i32 %storemerge34, ptr %i.c, align 4, !tbaa !127
  store i32 %i.bo, ptr %i.e, align 4, !tbaa !127
  ret void
}

declare void @_Z12compressZstdPKhmRSoi(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

declare void @_Z12compressZlibPKhmRSoi(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

declare void @_ZN13NetworkPacket12putRawStringEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !857
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !858  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !120
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #37
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #37
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1808

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRKS5_EEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %0, ptr %2, align 8, !tbaa !1811
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !861
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !607
  %.not = icmp ugt i64 %i.e, 20
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.032.052 = load ptr, ptr %i.f, align 8, !tbaa !439 ; 3 uses
  %.not4553 = icmp eq ptr %.sroa.032.052, null
  br i1 %.not4553, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146
  %.fr56 = freeze i64 %i.h                        ; 3 uses
  %i.i = icmp eq i64 %.fr56, 0
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37.us
  %.sroa.032.054.us = phi ptr [ %.sroa.032.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37.us ], [ %.sroa.032.052, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.054.us, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !146
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37.us: ; preds = %.lr.ph.split.us
  %.sroa.032.0.us = load ptr, ptr %.sroa.032.054.us, align 8, !tbaa !439 ; 2 uses
  %.not45.us = icmp eq ptr %.sroa.032.0.us, null
  br i1 %.not45.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !1809

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37
  %.sroa.032.054 = phi ptr [ %.sroa.032.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37 ], [ %.sroa.032.052, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !146
  %i.o = icmp eq i64 %.fr56, %i.n
  br i1 %i.o, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !140
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %.fr56)
  %i.s = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.s, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.032.0 = load ptr, ptr %.sroa.032.054, align 8, !tbaa !439 ; 2 uses
  %.not45 = icmp eq ptr %.sroa.032.0, null
  br i1 %.not45, label %.critedge, label %.lr.ph.split, !llvm.loop !1809

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread37.us, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !140
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !146
  %i.w = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.t, i64 noundef %i.v, i64 noundef 3339675911)
          to label %bb.d unwind label %bb.c       ; 4 uses

bb.c:                                             ; preds = %.critedge
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #36
  unreachable

bb.d:                                             ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !606 ; 3 uses
  %i.ab = urem i64 %i.w, %i.aa                    ; 4 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !607
  %i.ad = icmp ugt i64 %i.ac, 20
  br i1 %i.ad, label %bb.e, label %.critedge27

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !605
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !492 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !439 ; 3 uses
  %i.ai = load i64, ptr %i.u, align 8
  %.fr22.i.i = freeze i64 %i.ai                   ; 3 uses
  %i.aj = icmp eq i64 %.fr22.i.i, 0
  %i.ak = load ptr, ptr %i.c, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !676 ; 2 uses
  br i1 %i.aj, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.h
  %i.al = phi i64 [ %i.as, %bb.h ], [ %.pre26.i.i, %bb.f ]
  %.0.us.i.i = phi ptr [ %i.aq, %bb.h ], [ %i.ah, %bb.f ] ; 3 uses
  %i.am = icmp eq i64 %i.w, %i.al
  br i1 %i.am, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.g:                                             ; preds = %.split.us.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !146
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.g, %.split.us.i.i
  %i.aq = load ptr, ptr %.0.us.i.i, align 8, !tbaa !439 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aq, null
  br i1 %.not18.us.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !676 ; 2 uses
  %i.at = urem i64 %i.as, %i.aa
  %.not19.us.i.i = icmp eq i64 %i.at, %i.ab
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge27, !llvm.loop !1810

.split.i.i:                                       ; preds = %bb.f, %bb.j
  %i.au = phi i64 [ %i.be, %bb.j ], [ %.pre26.i.i, %bb.f ]
  %.0.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.ah, %bb.f ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.aw = icmp eq i64 %i.w, %i.au
  br i1 %i.aw, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !146
  %i.az = icmp eq i64 %.fr22.i.i, %i.ay
  br i1 %i.az, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !140
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.ba, i64 %.fr22.i.i)
  %i.bb = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.i, %.split.i.i
  %i.bc = load ptr, ptr %.0.i.i, align 8, !tbaa !439 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bc, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !676 ; 2 uses
  %i.bf = urem i64 %i.be, %i.aa
  %.not19.i.i = icmp eq i64 %i.bf, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge27, !llvm.loop !1810

.critedge27:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %bb.j, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i, %bb.e, %bb.d
  %i.bg = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.w, ptr noundef %i.b, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.critedge27
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.bh

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread: ; preds = %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.g
  %.sroa.036.0.ph = phi ptr [ %.0.us.i.i, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ %.sroa.032.054.us, %.lr.ph.split.us ] ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.thread

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread
  %.sroa.036.0.ph73 = phi ptr [ %.sroa.036.0.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread ], [ %.sroa.032.054, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.thread
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !120
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #37
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i
  %.sroa.4.044 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread ], [ 1, %.critedge27 ]
  %.sroa.036.043 = phi ptr [ %.sroa.036.0.ph73, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i ], [ %.sroa.036.0.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread ], [ %i.bg, %.critedge27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.036.043, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

end_hunk_2
