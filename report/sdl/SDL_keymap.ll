Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_keymap?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.196 = private unnamed_addr constant [16 x i8] c"Keypad MemClear\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"Keypad MemAdd\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"Keypad MemSubtract\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"Keypad MemMultiply\00", align 1
@.str.200 = private unnamed_addr constant [17 x i8] c"Keypad MemDivide\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"Keypad +/-\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"Keypad Clear\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"Keypad ClearEntry\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"Keypad Binary\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"Keypad Octal\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"Keypad Decimal\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"Keypad Hexadecimal\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"Left Ctrl\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"Left Shift\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"Left Alt\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"Left GUI\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"Right Ctrl\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"Right Shift\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"Right Alt\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"Right GUI\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"ModeSwitch\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"Sleep\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"Wake\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"ChannelUp\00", align 1
@.str.220 = private unnamed_addr constant [12 x i8] c"ChannelDown\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"MediaPlay\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"MediaPause\00", align 1
@.str.223 = private unnamed_addr constant [12 x i8] c"MediaRecord\00", align 1
@.str.224 = private unnamed_addr constant [17 x i8] c"MediaFastForward\00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"MediaRewind\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"MediaTrackNext\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"MediaTrackPrevious\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"MediaStop\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"Eject\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"MediaPlayPause\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"MediaSelect\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"AC New\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"AC Open\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"AC Close\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"AC Exit\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"AC Save\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"AC Print\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"AC Properties\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"AC Search\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"AC Home\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"AC Back\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"AC Forward\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"AC Stop\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"AC Refresh\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"AC Bookmarks\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"SoftLeft\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"SoftRight\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"Call\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"EndCall\00", align 1
@SDL_scancode_names = internal unnamed_addr global <{ [291 x ptr], [221 x ptr] }> <{ [291 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr null, ptr null, ptr null, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.41, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr null, ptr null, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249], [221 x ptr] zeroinitializer }>, align 16
@.str.251 = private unnamed_addr constant [8 x i8] c"LeftTab\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"Level5Shift\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"MultiKeyCompose\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"Left Meta\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"Right Meta\00", align 1
@.str.256 = private unnamed_addr constant [11 x i8] c"Left Hyper\00", align 1
@.str.257 = private unnamed_addr constant [12 x i8] c"Right Hyper\00", align 1
@switch.table.SDL_GetKeymapKeycode = private unnamed_addr constant [234 x i32] [i32 1073741881, i32 1073741882, i32 1073741883, i32 1073741884, i32 1073741885, i32 1073741886, i32 1073741887, i32 1073741888, i32 1073741889, i32 1073741890, i32 1073741891, i32 1073741892, i32 1073741893, i32 1073741894, i32 1073741895, i32 1073741896, i32 1073741897, i32 1073741898, i32 1073741899, i32 127, i32 1073741901, i32 1073741902, i32 1073741903, i32 1073741904, i32 1073741905, i32 1073741906, i32 1073741907, i32 1073741908, i32 1073741909, i32 1073741910, i32 1073741911, i32 1073741912, i32 1073741913, i32 1073741914, i32 1073741915, i32 1073741916, i32 1073741917, i32 1073741918, i32 1073741919, i32 1073741920, i32 1073741921, i32 1073741922, i32 1073741923, i32 0, i32 1073741925, i32 1073741926, i32 1073741927, i32 1073741928, i32 1073741929, i32 1073741930, i32 1073741931, i32 1073741932, i32 1073741933, i32 1073741934, i32 1073741935, i32 1073741936, i32 1073741937, i32 1073741938, i32 1073741939, i32 1073741940, i32 1073741941, i32 1073741942, i32 1073741943, i32 1073741944, i32 1073741945, i32 1073741946, i32 1073741947, i32 1073741948, i32 1073741949, i32 1073741950, i32 1073741951, i32 1073741952, i32 1073741953, i32 0, i32 0, i32 0, i32 1073741957, i32 1073741958, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073741977, i32 1073741978, i32 1073741979, i32 1073741980, i32 1073741981, i32 1073741982, i32 1073741983, i32 1073741984, i32 1073741985, i32 1073741986, i32 1073741987, i32 1073741988, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073742000, i32 1073742001, i32 1073742002, i32 1073742003, i32 1073742004, i32 1073742005, i32 1073742006, i32 1073742007, i32 1073742008, i32 1073742009, i32 1073742010, i32 1073742011, i32 1073742012, i32 1073742013, i32 1073742014, i32 1073742015, i32 1073742016, i32 1073742017, i32 1073742018, i32 1073742019, i32 1073742020, i32 1073742021, i32 1073742022, i32 1073742023, i32 1073742024, i32 1073742025, i32 1073742026, i32 1073742027, i32 1073742028, i32 1073742029, i32 1073742030, i32 1073742031, i32 1073742032, i32 1073742033, i32 1073742034, i32 1073742035, i32 1073742036, i32 1073742037, i32 1073742038, i32 1073742039, i32 1073742040, i32 1073742041, i32 1073742042, i32 1073742043, i32 1073742044, i32 1073742045, i32 0, i32 0, i32 1073742048, i32 1073742049, i32 1073742050, i32 1073742051, i32 1073742052, i32 1073742053, i32 1073742054, i32 1073742055, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073742081, i32 1073742082, i32 1073742083, i32 1073742084, i32 1073742085, i32 1073742086, i32 1073742087, i32 1073742088, i32 1073742089, i32 1073742090, i32 1073742091, i32 1073742092, i32 1073742093, i32 1073742094, i32 1073742095, i32 1073742096, i32 1073742097, i32 1073742098, i32 1073742099, i32 1073742100, i32 1073742101, i32 1073742102, i32 1073742103, i32 1073742104, i32 1073742105, i32 1073742106, i32 1073742107, i32 1073742108, i32 1073742109, i32 1073742110, i32 1073742111, i32 1073742112, i32 1073742113, i32 1073742114], align 4
@switch.table.SDL_GetKeymapScancode = private unnamed_addr constant [7 x i8] [i8 0, i8 poison, i8 1, i8 2, i8 3, i8 poison, i8 4], align 8

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreateKeymap(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 32) #5 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %0 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.b, ptr %i.c, align 4
  %i.d = tail call ptr @SDL_CreateHashTable(i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @SDL_HashID, ptr noundef nonnull @SDL_KeyMatchID, ptr noundef null, ptr noundef null) #6 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = tail call ptr @SDL_CreateHashTable(i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @SDL_HashID, ptr noundef nonnull @SDL_KeyMatchID, ptr noundef null, ptr noundef null) #6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %.not10 = icmp eq ptr %i.d, null
  %.not11 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not10, i1 true, i1 %.not11
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %0, label %SDL_DestroyKeymap.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @SDL_GetCurrentKeymap(i1 noundef zeroext true) #6
  %i.h = icmp eq ptr %i.a, %i.g
  br i1 %i.h, label %bb.e, label %SDL_DestroyKeymap.exit

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_SetKeymap(ptr noundef null, i1 noundef zeroext false) #6
  br label %SDL_DestroyKeymap.exit

SDL_DestroyKeymap.exit:                           ; preds = %bb.c, %bb.d, %bb.e
  tail call void @SDL_DestroyHashTable(ptr noundef %i.d) #6
  tail call void @SDL_DestroyHashTable(ptr noundef %i.e) #6
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %SDL_DestroyKeymap.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %SDL_DestroyKeymap.exit ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateHashTable(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SDL_HashID(ptr noundef, ptr noundef) #3

declare zeroext i1 @SDL_KeyMatchID(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @SDL_DestroyKeymap(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @SDL_GetCurrentKeymap(i1 noundef zeroext true) #6
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_SetKeymap(ptr noundef null, i1 noundef zeroext false) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.f = load ptr, ptr %0, align 8
  tail call void @SDL_DestroyHashTable(ptr noundef %i.f) #6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @SDL_DestroyHashTable(ptr noundef %i.h) #6
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_SetKeymapEntry(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %2, 25351                        ; 2 uses
  %i.c = and i16 %2, 3
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = or i16 %i.b, 3
  %spec.select.i = select i1 %.not.i, i16 %i.b, i16 %i.d ; 3 uses
  %i.e = and i16 %spec.select.i, 768
  %.not6.i = icmp eq i16 %i.e, 0
  %i.f = or i16 %spec.select.i, 768
  %.1.i = select i1 %.not6.i, i16 %spec.select.i, i16 %i.f
  %i.g = zext nneg i16 %.1.i to i32               ; 2 uses
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or i32 %i.h, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.j = load ptr, ptr %0, align 8
  %i.k = zext i32 %i.i to i64
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %i.a) #6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = trunc i64 %i.o to i32
  %.not22 = icmp eq i32 %3, %i.p
  %or.cond = select i1 %i.m, i1 %.not22, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8
  %i.r = zext i32 %3 to i64
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.q, ptr noundef %i.l, ptr noundef %i.s, i1 noundef zeroext true) #6 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.v, ptr noundef %i.s, ptr noundef nonnull %i.a) #6
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %4 = lshr i64 %i.y, 16
  %i.z = trunc i64 %4 to i32
  %5 = and i32 %i.z, 65535
  %.not23 = icmp samesign ule i32 %5, %i.g
  %.1.not = select i1 %i.w, i1 %.not23, i1 false
  br i1 %.1.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.aa, ptr noundef %i.s, ptr noundef %i.l, i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare zeroext i1 @SDL_FindInHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_InsertIntoHashTable(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetKeymapKeycode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 43 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = and i16 %2, 25351                        ; 2 uses
  %i.c = and i16 %2, 3
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = or i16 %i.b, 3
  %spec.select.i = select i1 %.not.i, i16 %i.b, i16 %i.d ; 3 uses
  %i.e = and i16 %spec.select.i, 768
  %.not6.i = icmp eq i16 %i.e, 0
  %i.f = or i16 %spec.select.i, 768
  %.1.i = select i1 %.not6.i, i16 %spec.select.i, i16 %i.f ; 4 uses
  %i.g = zext nneg i16 %.1.i to i32               ; 8 uses
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or i32 %i.h, %1
  %i.j = load ptr, ptr %0, align 8
  %i.k = zext i32 %i.i to i64
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %i.a) #6
  br i1 %i.m, label %.thread100, label %bb.c

.thread100:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = trunc i64 %i.o to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %SDL_GetDefaultKeyFromScancode.exit

bb.c:                                             ; preds = %bb.b
  %.not70 = icmp eq i16 %.1.i, 0
  br i1 %.not70, label %.thread97, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i16 %.1.i, 8192                      ; 3 uses
  %.not71.not = icmp eq i16 %i.q, 0               ; 4 uses
  %i.r = zext nneg i16 %i.q to i32                ; 16 uses
  %i.s = and i32 %i.g, 4
  %.not73 = icmp eq i32 %i.s, 0
  %i.t = and i32 %i.g, 16387
  %i.u = icmp eq i32 %i.t, 16387                  ; 3 uses
  %.not76 = icmp samesign ult i16 %.1.i, 16384    ; 5 uses
  %i.v = and i32 %i.g, 3
  %.not78 = icmp eq i32 %i.v, 0                   ; 7 uses
  br i1 %.not73, label %.thread.us.preheader, label %.split

.thread.us.preheader:                             ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %.thread85.us.peel

bb.e:                                             ; preds = %.thread.us.preheader
  %i.w = or disjoint i32 %i.r, 16387              ; 2 uses
  %.not75.us.peel = icmp eq i32 %i.w, %i.g
  br i1 %.not75.us.peel, label %.thread85.us.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or i32 %i.x, %1
  %i.z = load ptr, ptr %0, align 8
  %i.aa = zext i32 %i.y to i64
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.z, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a) #6
  br i1 %i.ac, label %.split110.us, label %.thread85.us.peel

.thread85.us.peel:                                ; preds = %bb.f, %bb.e, %.thread.us.preheader
  br i1 %.not76, label %.thread89.us.peel, label %bb.g

bb.g:                                             ; preds = %.thread85.us.peel
  %i.ad = or disjoint i32 %i.r, 16384             ; 2 uses
  %.not77.us.peel = icmp eq i32 %i.ad, %i.g
  br i1 %.not77.us.peel, label %.thread89.us.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = shl nuw nsw i32 %i.ad, 16
  %i.af = or i32 %i.ae, %1
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = zext i32 %i.af to i64
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a) #6
  br i1 %i.aj, label %.split110.us, label %.thread89.us.peel

.thread89.us.peel:                                ; preds = %bb.h, %bb.g, %.thread85.us.peel
  br i1 %.not78, label %.thread93.us.peel, label %bb.i

bb.i:                                             ; preds = %.thread89.us.peel
  %i.ak = or disjoint i32 %i.r, 3                 ; 2 uses
  %.not79.us.peel = icmp eq i32 %i.ak, %i.g
  br i1 %.not79.us.peel, label %.thread93.us.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or i32 %i.al, %1
  %i.an = load ptr, ptr %0, align 8
  %i.ao = zext i32 %i.am to i64
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.an, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a) #6
  br i1 %i.aq, label %.split110.us, label %.thread93.us.peel

.thread93.us.peel:                                ; preds = %bb.j, %bb.i, %.thread89.us.peel
  %i.ar = shl nuw nsw i32 %i.r, 16
  %i.as = or i32 %i.ar, %1
  %i.at = load ptr, ptr %0, align 8
  %i.au = zext i32 %i.as to i64
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.at, ptr noundef %i.av, ptr noundef nonnull %i.a) #6
  br i1 %i.aw, label %.split110.us, label %bb.k

bb.k:                                             ; preds = %.thread93.us.peel
  %.not72.us.peel = icmp eq i16 %i.q, 0
  br i1 %.not72.us.peel, label %.thread97, label %.thread.us

.thread.us:                                       ; preds = %bb.k
  br i1 %i.u, label %bb.l, label %.thread85.us

bb.l:                                             ; preds = %.thread.us
  %i.ax = or i32 %1, 1073938432
  %i.ay = load ptr, ptr %0, align 8
  %i.az = zext i32 %i.ax to i64
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.ay, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a) #6
  br i1 %i.bb, label %.split110.us, label %.thread85.us

.thread85.us:                                     ; preds = %bb.l, %.thread.us
  br i1 %.not76, label %.thread89.us, label %bb.m

bb.m:                                             ; preds = %.thread85.us
  %i.bc = or i32 %1, 1073741824
  %i.bd = load ptr, ptr %0, align 8
  %i.be = zext i32 %i.bc to i64
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.bd, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a) #6
  br i1 %i.bg, label %.split110.us, label %.thread89.us

.thread89.us:                                     ; preds = %bb.m, %.thread85.us
  br i1 %.not78, label %.thread93.us, label %bb.n

bb.n:                                             ; preds = %.thread89.us
  %i.bh = or i32 %1, 196608
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = zext i32 %i.bh to i64
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.bi, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) #6
  br i1 %i.bl, label %.split110.us, label %.thread93.us

.thread93.us:                                     ; preds = %bb.n, %.thread89.us
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = zext i32 %1 to i64
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef nonnull %i.a) #6
  br i1 %i.bp, label %.split110.us, label %.thread97

.split:                                           ; preds = %bb.d
  br i1 %i.u, label %.split.split.us.preheader, label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %i.bq = shl nuw nsw i32 %i.r, 16
  %i.br = or i32 %i.bq, %1
  %i.bs = or i32 %i.br, 262144
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = zext i32 %i.bs to i64
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.a) #6
  br i1 %i.bw, label %.split110.us, label %.thread.us113.peel

.thread.us113.peel:                               ; preds = %.split.split.us.preheader
  %i.bx = shl nuw nsw i32 %i.r, 16
  %i.by = or i32 %i.bx, %1
  %i.bz = or i32 %i.by, 1073938432
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = zext i32 %i.bz to i64
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.ca, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.a) #6
  br i1 %i.cd, label %.split110.us, label %.thread85.us115.peel

.thread85.us115.peel:                             ; preds = %.thread.us113.peel
  br i1 %.not76, label %.thread89.us117.peel, label %bb.o
end_hunk_0
