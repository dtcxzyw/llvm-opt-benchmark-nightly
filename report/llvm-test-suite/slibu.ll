Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/slibu?download=true
inline.NumInlined: 29
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@init_slibu:bb.a
  call void @init_subr_2(ptr noundef nonnull @.str.181, ptr noundef nonnull @load_so) #27
  call void @init_subr_1(ptr noundef nonnull @.str.182, ptr noundef nonnull @require_so) #27
  call void @init_subr_1(ptr noundef nonnull @.str.183, ptr noundef nonnull @so_ext) #27
  %i.f = call ptr @cintern(ptr noundef nonnull @.str.184) #27
  %i.g = call ptr @flocons(double noundef 0.000000e+00) #27
  %i.h = call ptr @setvar(ptr noundef %i.f, ptr noundef %i.g, ptr noundef null) #27 ; 0 uses
  %i.i = call ptr @cintern(ptr noundef nonnull @.str.185) #27
  %i.j = call ptr @flocons(double noundef 1.000000e+00) #27
  %i.k = call ptr @setvar(ptr noundef %i.i, ptr noundef %i.j, ptr noundef null) #27 ; 0 uses
  %i.l = call ptr @cintern(ptr noundef nonnull @.str.186) #27
  %i.m = call ptr @flocons(double noundef 2.000000e+00) #27
  %i.n = call ptr @setvar(ptr noundef %i.l, ptr noundef %i.m, ptr noundef null) #27 ; 0 uses
  %i.o = call ptr @cintern(ptr noundef nonnull @.str.187) #27
  %i.p = call ptr @flocons(double noundef 0.000000e+00) #27
  %i.q = call ptr @setvar(ptr noundef %i.o, ptr noundef %i.p, ptr noundef null) #27 ; 0 uses
  %i.r = call ptr @cintern(ptr noundef nonnull @.str.188) #27
  %i.s = call ptr @flocons(double noundef 1.000000e+00) #27
  %i.t = call ptr @setvar(ptr noundef %i.r, ptr noundef %i.s, ptr noundef null) #27 ; 0 uses
  %i.u = call ptr @cintern(ptr noundef nonnull @.str.189) #27
  %i.v = call ptr @flocons(double noundef 2.000000e+00) #27
  %i.w = call ptr @setvar(ptr noundef %i.u, ptr noundef %i.v, ptr noundef null) #27 ; 0 uses
  call void @init_subr_5(ptr noundef nonnull @.str.190, ptr noundef nonnull @lF_SETLK) #27
  call void @init_subr_5(ptr noundef nonnull @.str.191, ptr noundef nonnull @lF_SETLKW) #27
  call void @init_subr_5(ptr noundef nonnull @.str.192, ptr noundef nonnull @lF_GETLK) #27
  call void @init_subr_0(ptr noundef nonnull @.str.193, ptr noundef nonnull @siod_lib_l) #27
  %i.x = load ptr, ptr @ld_library_path_env, align 8, !tbaa !253 ; 3 uses
  %i.y = call ptr @getenv(ptr noundef %i.x) #27   ; 4 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #30
  %.pre = load ptr, ptr @siod_lib, align 8, !tbaa !253
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr @siod_lib, align 8, !tbaa !253 ; 2 uses
  %i.ab = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.aa) #30
  %.not8 = icmp eq ptr %i.ab, null
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #30
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #30
  %i.ae = add i64 %i.ad, 1
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.af = phi ptr [ %i.aa, %bb.c ], [ %.pre, %.thread ]
  %.in = phi i64 [ %i.ac, %bb.c ], [ %i.z, %.thread ]
  %i.ag = phi ptr [ @.str.195, %bb.c ], [ @.str.115, %.thread ]
  %i.ah = phi ptr [ %i.y, %bb.c ], [ @.str.115, %.thread ]
  %i.ai = phi i64 [ %i.ae, %bb.c ], [ 0, %.thread ]
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #30
  %i.ak = add i64 %.in, 2
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %i.al, %i.aj
  %i.an = call ptr @must_malloc(i64 noundef %i.am) #27 ; 2 uses
  %i.ao = load ptr, ptr @ld_library_path_env, align 8, !tbaa !253
  %i.ap = load ptr, ptr @siod_lib, align 8, !tbaa !253
  %i.aq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.194, ptr noundef %i.ao, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ag, ptr noundef %i.ap) #27 ; 0 uses
  %i.ar = call i32 @putenv(ptr noundef nonnull %i.an) #27 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @init_subr_1(ptr noundef nonnull @.str.111, ptr noundef nonnull @llocaltime) #27
  call void @init_subr_1(ptr noundef nonnull @.str.112, ptr noundef nonnull @lgmtime) #27
  call void @init_subr_0(ptr noundef nonnull @.str.196, ptr noundef nonnull @ltzset) #27
  call void @init_subr_1(ptr noundef nonnull @.str.197, ptr noundef nonnull @lmktime) #27
  call void @init_subr_1(ptr noundef nonnull @.str.114, ptr noundef nonnull @lchdir) #27
  call void @init_subr_3(ptr noundef nonnull @.str.198, ptr noundef nonnull @lstrptime) #27
  call void @init_subr_2(ptr noundef nonnull @.str.199, ptr noundef nonnull @lstrftime) #27
  call void @init_subr_1(ptr noundef nonnull @.str.200, ptr noundef nonnull @lgetpass) #27
  call void @init_subr_0(ptr noundef nonnull @.str.117, ptr noundef nonnull @lpipe) #27
  call void @init_subr_2(ptr noundef nonnull @.str.201, ptr noundef nonnull @lalarm) #27
  %i.as = call ptr @cintern(ptr noundef nonnull @.str.202) #27
  %i.at = call ptr @flocons(double noundef 1.000000e+00) #27
  %i.au = call ptr @setvar(ptr noundef %i.as, ptr noundef %i.at, ptr noundef null) #27 ; 0 uses
  %i.av = call ptr @cintern(ptr noundef nonnull @.str.203) #27
  %i.aw = call ptr @flocons(double noundef 2.000000e+00) #27
  %i.ax = call ptr @setvar(ptr noundef %i.av, ptr noundef %i.aw, ptr noundef null) #27 ; 0 uses
  %i.ay = call ptr @cintern(ptr noundef nonnull @.str.204) #27
  %i.az = call ptr @flocons(double noundef 9.000000e+00) #27
  %i.ba = call ptr @setvar(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef null) #27 ; 0 uses
  %i.bb = call ptr @cintern(ptr noundef nonnull @.str.205) #27
  %i.bc = call ptr @flocons(double noundef 5.000000e+00) #27
  %i.bd = call ptr @setvar(ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef null) #27 ; 0 uses
  %i.be = call ptr @cintern(ptr noundef nonnull @.str.206) #27
  %i.bf = call ptr @flocons(double noundef 3.000000e+00) #27
  %i.bg = call ptr @setvar(ptr noundef %i.be, ptr noundef %i.bf, ptr noundef null) #27 ; 0 uses
  %i.bh = call ptr @cintern(ptr noundef nonnull @.str.207) #27
  %i.bi = call ptr @flocons(double noundef 7.000000e+00) #27
  %i.bj = call ptr @setvar(ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef null) #27 ; 0 uses
  %i.bk = call ptr @cintern(ptr noundef nonnull @.str.208) #27
  %i.bl = call ptr @flocons(double noundef 1.000000e+01) #27
  %i.bm = call ptr @setvar(ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef null) #27 ; 0 uses
  %i.bn = call ptr @cintern(ptr noundef nonnull @.str.209) #27
  %i.bo = call ptr @flocons(double noundef 6.000000e+00) #27
  %i.bp = call ptr @setvar(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef null) #27 ; 0 uses
  %i.bq = call ptr @cintern(ptr noundef nonnull @.str.210) #27
  %i.br = call ptr @flocons(double noundef 4.000000e+00) #27
  %i.bs = call ptr @setvar(ptr noundef %i.bq, ptr noundef %i.br, ptr noundef null) #27 ; 0 uses
  %i.bt = call ptr @cintern(ptr noundef nonnull @.str.211) #27
  %i.bu = call ptr @flocons(double noundef 8.000000e+00) #27
  %i.bv = call ptr @setvar(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef null) #27 ; 0 uses
  call void @init_subr_3(ptr noundef nonnull @.str.212, ptr noundef nonnull @datref) #27
  call void @init_subr_2(ptr noundef nonnull @.str.121, ptr noundef nonnull @sdatref) #27
  call void @init_subr_2(ptr noundef nonnull @.str.213, ptr noundef nonnull @mkdatref) #27
  call void @init_subr_2(ptr noundef nonnull @.str.214, ptr noundef nonnull @datlength) #27
  call void @init_subr_1(ptr noundef nonnull @.str.215, ptr noundef nonnull @lposition_script) #27
  %i.bw = call ptr @cintern(ptr noundef nonnull @.str.230) #27
  %i.bx = call ptr @cintern(ptr noundef nonnull @.str.231) #27
  %i.by = call ptr @setvar(ptr noundef %i.bw, ptr noundef %i.bx, ptr noundef null) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @init_subr_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @cgi_main(ptr noundef %0) #4 !guid !444 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !261
  %i.d = icmp eq i16 %i.c, 1
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @car(ptr noundef nonnull %0) #27
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @car(ptr noundef nonnull %0) #27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !261
  %i.j = icmp eq i16 %i.i, 13
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void @put_st(ptr noundef nonnull @.str.216) #27
  tail call void @put_st(ptr noundef nonnull @.str.217) #27
  tail call void @put_st(ptr noundef nonnull @.str.218) #27
  tail call void @put_st(ptr noundef nonnull @.str.219) #27
  tail call void @put_st(ptr noundef nonnull @.str.220) #27
  tail call void @put_st(ptr noundef nonnull @.str.221) #27
  tail call void @put_st(ptr noundef nonnull @.str.222) #27
  %i.k = tail call ptr @car(ptr noundef nonnull %0) #27
  %i.l = tail call ptr @lprint(ptr noundef %i.k, ptr noundef null) #27 ; 0 uses
  %i.m = tail call ptr @cdr(ptr noundef nonnull %0) #27
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @put_st(ptr noundef nonnull @.str.99) #27
  %i.n = tail call ptr @cdr(ptr noundef nonnull %0) #27
  %i.o = tail call ptr @lprint(ptr noundef %i.n, ptr noundef null) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @put_st(ptr noundef nonnull @.str.223) #27
  %i.p = tail call ptr @err(ptr noundef nonnull @.str.224, ptr noundef null) #27 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.g, %bb.d, %bb.b
  ret ptr null
}

declare i64 @repl_driver(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @htqs_arg(ptr noundef %0) unnamed_addr #4 !guid !446 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.225) #30
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.226) #30
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i64 @repl_driver(i64 noundef 1, i64 noundef 1, ptr noundef null) #27
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 40) #30
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.227, i64 11, i1 false) #27
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 2 uses
  %1 = load i8, ptr %0, align 1, !tbaa !254       ; 2 uses
  %.not1520 = icmp eq i8 %1, 0
  br i1 %.not1520, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.split.thread
  %2 = phi i8 [ %3, %.split.thread ], [ %1, %bb.e ] ; 2 uses
  %.022 = phi ptr [ %i.m, %.split.thread ], [ %0, %bb.e ] ; 2 uses
  %.01221 = phi ptr [ %i.l, %.split.thread ], [ %i.i, %bb.e ] ; 3 uses
  switch i8 %2, label %.split.thread [
    i8 92, label %.split
    i8 34, label %.split
  ]

.split:                                           ; preds = %.lr.ph, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.01221, i64 1
  store i8 92, ptr %.01221, align 1, !tbaa !254
  %.pre = load i8, ptr %.022, align 1, !tbaa !254
  br label %.split.thread

.split.thread:                                    ; preds = %.lr.ph, %.split
  %i.k = phi i8 [ %.pre, %.split ], [ %2, %.lr.ph ]
  %.1 = phi ptr [ %i.j, %.split ], [ %.01221, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  store i8 %i.k, ptr %.1, align 1, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %3 = load i8, ptr %i.m, align 1, !tbaa !254     ; 2 uses
  %.not15 = icmp eq i8 %3, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !445

._crit_edge:                                      ; preds = %.split.thread, %bb.e
  %.012.lcssa = phi ptr [ %i.i, %bb.e ], [ %i.l, %.split.thread ]
  store i8 0, ptr %.012.lcssa, align 1, !tbaa !254
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.229, i64 3, i1 false)
  %i.n = call i64 @repl_c_string(ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = tail call i64 @repl_c_string(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.c
  %.013.in = phi i64 [ %i.f, %bb.c ], [ %i.o, %bb.f ], [ %i.n, %._crit_edge ]
  %.013 = trunc i64 %.013.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.013
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -9223372036854775808, 250000) i64 @position_script(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 1)) %1, i64 noundef %2) local_unnamed_addr #20 !guid !449 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.j
  %.02737 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.j ] ; 2 uses
  %.02836 = phi i64 [ -1, %bb.a ], [ %.1, %bb.j ] ; 5 uses
  %.02935 = phi i32 [ 0, %bb.a ], [ %.130, %bb.j ] ; 2 uses
  %i.a = tail call i32 @getc(ptr noundef %0)
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 31)
  switch i32 %i.c, label %bb.i [
    i32 0, label %.loopexit
    i32 18, label %bb.j
    i32 17, label %bb.c
    i32 24, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %.02935, 35
  %i.e = select i1 %i.d, i32 33, i32 0
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %.02935, 33
  br i1 %i.f, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d, %.preheader
  %i.g = tail call i32 @getc(ptr noundef %0)
  switch i32 %i.g, label %.preheader [
    i32 -1, label %.preheader43
    i32 32, label %.preheader43
  ]

.preheader43:                                     ; preds = %.preheader, %.preheader
  br label %bb.e

bb.e:                                             ; preds = %.preheader43, %bb.g
  %.0 = phi i64 [ %i.i, %bb.g ], [ 0, %.preheader43 ] ; 2 uses
  %i.h = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  switch i32 %i.h, label %bb.f [
    i32 -1, label %.critedge
    i32 10, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %.0, 1                           ; 3 uses
  %.not = icmp ugt i64 %i.i, %2
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = trunc i32 %i.h to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  store i8 %i.j, ptr %i.k, align 1, !tbaa !254
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !254
  br label %bb.e, !llvm.loop !447

.critedge:                                        ; preds = %bb.e, %bb.e, %bb.f
  %i.m = tail call i64 @strspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.132) #30
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.critedge
  store i8 0, ptr %1, align 1, !tbaa !254
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.i
  %.130 = phi i32 [ 0, %bb.i ], [ 35, %bb.b ], [ %i.e, %bb.c ], [ 0, %bb.d ]
  %.1 = phi i64 [ %.02836, %bb.i ], [ %.02737, %bb.b ], [ %.02836, %bb.c ], [ %.02836, %bb.d ]
  %i.p = add nuw nsw i64 %.02737, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, 250000
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !448

.loopexit:                                        ; preds = %bb.j, %bb.b, %.critedge, %bb.h
  %.031 = phi i64 [ %.02836, %.critedge ], [ %.02836, %bb.h ], [ -1, %bb.b ], [ -1, %bb.j ]
  ret i64 %.031
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local void @siod_shuffle_args(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #20 !guid !452 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = load i32, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !258    ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !253
  %i.f = tail call noalias ptr @fopen(ptr noundef %i.e, ptr noundef nonnull @.str.133) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @position_script(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i64 noundef 100) ; 2 uses
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 16, !tbaa !254
  %.not33 = icmp eq i8 %i.j, 0                    ; 2 uses
  %i.k = select i1 %.not33, i32 1, i32 2
  %i.l = add nsw i32 %i.k, %i.c                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #33 ; 6 uses
  store ptr @.str.134, ptr %i.o, align 8, !tbaa !253
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call noalias ptr @strdup(ptr noundef nonnull %i.a) #27
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !253
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i32 [ 2, %bb.d ], [ 1, %bb.c ]      ; 2 uses
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.135, i64 noundef %i.g) #27 ; 0 uses
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #30
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !253  ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #30
  %i.v = add i64 %i.s, 2
  %i.w = add i64 %i.v, %i.u
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #33 ; 2 uses
  %i.y = zext nneg i32 %.030 to i64               ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  store ptr %i.x, ptr %i.z, align 8, !tbaa !253
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.136, ptr noundef nonnull %i.b, i32 noundef 124, ptr noundef nonnull %i.t) #27 ; 0 uses
  %i.ab = icmp sgt i32 %i.c, 1
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ac = add nuw i32 %.030, %i.c
  %i.ad = add i32 %i.ac, -1
  %wide.trip.count = zext i32 %i.ad to i64        ; 2 uses
  %i.ae = sub nsw i64 %wide.trip.count, %i.y      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ae, -4                      ; 4 uses
  %i.af = or disjoint i64 %n.vec, %i.y
  %i.ag = or disjoint i64 %n.vec, 1
  %invariant.gep = getelementptr [8 x i8], ptr %i.o, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !253
  %wide.load45 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !253
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 24
  store <2 x ptr> %wide.load, ptr %i.ak, align 8, !tbaa !253
  store <2 x ptr> %wide.load45, ptr %i.al, align 8, !tbaa !253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !450

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv38.ph = phi i64 [ %i.y, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph
end_hunk_0
