Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/parser?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@match_token:bb.a
  %i.w = icmp sgt i32 %.04570.i, 2
  br i1 %i.w, label %match_one.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sext i32 %.04570.i to i64
  %i.y = getelementptr [16 x i8], ptr %2, i64 %i.x ; 8 uses
  store ptr %i.l, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1       ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = load i8, ptr %i.z, align 1
  switch i8 %i.ab, label %match_one.exit.thread [
    i8 115, label %bb.i
    i8 100, label %bb.k
    i8 117, label %bb.l
    i8 111, label %bb.m
    i8 120, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = call i64 @strlen(ptr noundef %i.l) #8   ; 3 uses
  %.not57.i = icmp eq i64 %i.ac, 0
  br i1 %.not57.i, label %match_one.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %.0.i, -1
  %i.ae = sext i32 %.0.i to i64
  %i.af = icmp ult i64 %i.ac, %i.ae
  %or.cond.i = or i1 %i.ad, %i.af
  %i.ag = trunc i64 %i.ac to i32
  %.1.i = select i1 %or.cond.i, i32 %i.ag, i32 %.0.i
  %i.ah = sext i32 %.1.i to i64
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.p

bb.k:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.y, i64 8
  %i.al = call i64 @simple_strtol(ptr noundef %i.l, ptr noundef %i.ak, i32 noundef 0) #8 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.y, i64 8
  %i.an = call i64 @simple_strtoul(ptr noundef %i.l, ptr noundef %i.am, i32 noundef 0) #8 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.y, i64 8
  %i.ap = call i64 @simple_strtoul(ptr noundef %i.l, ptr noundef %i.ao, i32 noundef 8) #8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %i.y, i64 8
  %i.ar = call i64 @simple_strtoul(ptr noundef %i.l, ptr noundef %i.aq, i32 noundef 16) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.as = getelementptr i8, ptr %i.y, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.y, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %match_one.exit.thread, label %._crit_edge73.i

._crit_edge73.i:                                  ; preds = %bb.o
  %.pre.pre.i = load ptr, ptr %i.a, align 8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge73.i, %bb.j
  %.pre.i = phi ptr [ %i.aa, %bb.j ], [ %.pre.pre.i, %._crit_edge73.i ]
  %i.aw = phi ptr [ %i.ai, %bb.j ], [ %i.at, %._crit_edge73.i ]
  %i.ax = add nsw i32 %.04570.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f
  %i.ay = phi ptr [ %i.v, %bb.f ], [ %.pre.i, %bb.p ] ; 3 uses
  %.150.i = phi ptr [ %i.u, %bb.f ], [ %i.aw, %bb.p ] ; 2 uses
  %.146.i = phi i32 [ %.04570.i, %bb.f ], [ %i.ax, %bb.p ]
  %i.az = call ptr @strchr(ptr noundef %i.ay, i32 noundef 37) #8 ; 2 uses
  %.not53.i = icmp eq ptr %i.az, null
  br i1 %.not53.i, label %match_one.exit, label %.lr.ph.i

match_one.exit.thread:                            ; preds = %bb.e, %bb.o, %bb.g, %.lr.ph.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

match_one.exit:                                   ; preds = %bb.q, %.preheader.i
  %.049.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %.150.i, %bb.q ]
  %.lcssa.i = phi ptr [ %i.d, %.preheader.i ], [ %i.ay, %bb.q ]
  %i.ba = call i32 @strcmp(ptr noundef %.lcssa.i, ptr noundef %.049.lcssa.i) #8
  %.not = icmp eq i32 %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %match_one.exit.thread, %match_one.exit
  %i.bb = getelementptr i8, ptr %.014, i64 16     ; 2 uses
  %i.bc = getelementptr i8, ptr %.014, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bd, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %match_one.exit.thread8, label %.preheader.i, !llvm.loop !12

.loopexit:                                        ; preds = %match_one.exit, %match_one.exit.thread8
  %.012 = phi ptr [ %.0.lcssa, %match_one.exit.thread8 ], [ %.014, %match_one.exit ]
  %i.be = load i32, ptr %.012, align 8
  ret i32 %i.be
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -34, 1) i32 @match_int(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !annotation !11
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 23) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %.val, i64 %i.g, i1 false)
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.h, align 1
  %i.i = icmp ugt i64 %i.f, 23
  br i1 %i.i, label %match_number.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !11
  %i.j = call i64 @simple_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #8 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %match_number.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.j, -2147483648
  %or.cond.i = icmp ult i64 %i.m, -4294967296
  br i1 %or.cond.i, label %match_number.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nsw i64 %i.j to i32
  store i32 %i.n, ptr %1, align 4
  br label %match_number.exit

match_number.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.08.i = phi i32 [ -34, %bb.a ], [ 0, %bb.d ], [ -22, %bb.b ], [ -34, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.08.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @match_uint(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !annotation !11
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 23) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.i, align 1
  %i.j = icmp ugt i64 %i.g, 23
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @kstrtouint(ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -34, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local i64 @match_strlcpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12 = icmp ult i64 %i.f, %2
  %i.g = add i64 %2, -1
  %3 = select i1 %.not12, i64 %i.f, i64 %i.g      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.c, i64 %3, i1 false)
  %i.h = getelementptr i8, ptr %0, i64 %3
  store i8 0, ptr %i.h, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %i.f
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @match_u64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 23) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.val, i64 %i.g, i1 false)
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  store i8 0, ptr %i.h, align 1
  %i.i = icmp ugt i64 %i.f, 23
  br i1 %i.i, label %match_u64int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.j = call i32 @kstrtoull(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %match_u64int.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8
  store i64 %i.k, ptr %1, align 8
  br label %match_u64int.exit

match_u64int.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ -34, %bb.a ], [ 0, %bb.c ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -34, 1) i32 @match_octal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !annotation !11
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 23) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %.val, i64 %i.g, i1 false)
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.h, align 1
  %i.i = icmp ugt i64 %i.f, 23
  br i1 %i.i, label %match_number.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !11
  %i.j = call i64 @simple_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 8) #8 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %match_number.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.j, -2147483648
  %or.cond.i = icmp ult i64 %i.m, -4294967296
  br i1 %or.cond.i, label %match_number.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nsw i64 %i.j to i32
  store i32 %i.n, ptr %1, align 4
  br label %match_number.exit

match_number.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.08.i = phi i32 [ -34, %bb.a ], [ 0, %bb.d ], [ -22, %bb.b ], [ -34, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.08.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -34, 1) i32 @match_hex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !annotation !11
  %i.d = ptrtoint ptr %.val2 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 23) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %.val, i64 %i.g, i1 false)
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.h, align 1
  %i.i = icmp ugt i64 %i.f, 23
  br i1 %i.i, label %match_number.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !11
  %i.j = call i64 @simple_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 16) #8 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %match_number.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.j, -2147483648
  %or.cond.i = icmp ult i64 %i.m, -4294967296
  br i1 %or.cond.i, label %match_number.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nsw i64 %i.j to i32
  store i32 %i.n, ptr %1, align 4
  br label %match_number.exit

match_number.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.08.i = phi i32 [ -34, %bb.a ], [ 0, %bb.d ], [ -22, %bb.b ], [ -34, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.08.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local zeroext i1 @match_wildcard(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not33 = icmp eq i8 %i.a, 0
  br i1 %.not33, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.b = phi i8 [ %i.l, %bb.h ], [ %i.a, %bb.a ]
  %.038 = phi i1 [ %.1, %bb.h ], [ false, %bb.a ] ; 3 uses
  %.02037 = phi ptr [ %.121, %bb.h ], [ %0, %bb.a ] ; 4 uses
  %.02236 = phi ptr [ %.123, %bb.h ], [ %1, %bb.a ] ; 4 uses
  %.02435 = phi ptr [ %.125, %bb.h ], [ %1, %bb.a ] ; 3 uses
  %.02634 = phi ptr [ %.127, %bb.h ], [ %0, %bb.a ] ; 4 uses
  %i.c = load i8, ptr %.02037, align 1            ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 63, label %bb.b
    i8 42, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %.02236, i64 1
  %i.e = getelementptr i8, ptr %.02037, i64 1
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.02037, i64 1     ; 3 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not31 = icmp eq i8 %i.g, 0
  br i1 %.not31, label %.loopexit, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.h = icmp eq i8 %i.b, %i.c
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.02236, i64 1
  %i.j = getelementptr i8, ptr %.02037, i64 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.038, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %.02435, i64 1     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.b
  %.127 = phi ptr [ %.02634, %bb.e ], [ %.02634, %bb.g ], [ %.02634, %bb.b ], [ %i.f, %bb.c ]
  %.125 = phi ptr [ %.02435, %bb.e ], [ %i.k, %bb.g ], [ %.02435, %bb.b ], [ %.02236, %bb.c ]
  %.123 = phi ptr [ %i.i, %bb.e ], [ %i.k, %bb.g ], [ %i.d, %bb.b ], [ %.02236, %bb.c ] ; 2 uses
  %.121 = phi ptr [ %i.j, %bb.e ], [ %.02634, %bb.g ], [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.1 = phi i1 [ %.038, %bb.e ], [ true, %bb.g ], [ %.038, %bb.b ], [ true, %bb.c ]
  %i.l = load i8, ptr %.123, align 1              ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !13

.preheader.preheader:                             ; preds = %bb.h, %bb.a
  %.2.ph = phi ptr [ %0, %bb.a ], [ %.121, %bb.h ]
end_hunk_0
