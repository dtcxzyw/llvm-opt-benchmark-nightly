Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-parse-options?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@cmd__parse_options:bb.a
  store i32 0, ptr %i.lc, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 3320
  store ptr null, ptr %i.ld, align 8, !tbaa !42
  %i.le = getelementptr inbounds nuw i8, ptr %4, i64 3328
  store i64 1, ptr %i.le, align 16, !tbaa !43
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 3336
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 3360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i8 0, i64 24, i1 false)
  store i32 8, ptr %i.lg, align 16, !tbaa !17
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 3364
  store i32 113, ptr %i.lh, align 4, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 3368
  store ptr @.str.67, ptr %i.li, align 8, !tbaa !19
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 3376
  store ptr @quiet, ptr %i.lj, align 16, !tbaa !20
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 3384
  store i64 4, ptr %i.lk, align 8, !tbaa !21
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 3392
  store ptr null, ptr %i.ll, align 16, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %4, i64 3400
  store ptr @.str.68, ptr %i.lm, align 8, !tbaa !23
  %i.ln = getelementptr inbounds nuw i8, ptr %4, i64 3408
  store i32 2, ptr %i.ln, align 16, !tbaa !41
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 3412
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 3456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.lo, i8 0, i64 44, i1 false)
  store i32 13, ptr %i.lp, align 16, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 3460
  store i32 0, ptr %i.lq, align 4, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 3464
  store ptr @.str.69, ptr %i.lr, align 8, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 3472
  store ptr %2, ptr %i.ls, align 16, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 3480
  store i64 0, ptr %i.lt, align 8, !tbaa !21
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 3488
  store ptr @.str.41, ptr %i.lu, align 16, !tbaa !22
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 3496
  store ptr @.str.70, ptr %i.lv, align 8, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 3504
  store i32 0, ptr %i.lw, align 16, !tbaa !41
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 3508
  store i32 0, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 3512
  store ptr @collect_expect, ptr %i.ly, align 8, !tbaa !42
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 3520
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 3552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.lz, i8 0, i64 128, i1 false)
  store i32 1, ptr %i.ma, align 16, !tbaa !17
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 3592
  store ptr @.str.71, ptr %i.mb, align 8, !tbaa !23
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 3648
  store i32 10, ptr %i.mc, align 16, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 3652
  store i32 65, ptr %i.md, align 4, !tbaa !18
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 3656
  store ptr @.str.72, ptr %i.me, align 8, !tbaa !19
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 3664
  store ptr @string, ptr %i.mf, align 16, !tbaa !20
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 3672
  store i64 0, ptr %i.mg, align 8, !tbaa !21
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 3680
  store ptr @.str.41, ptr %i.mh, align 16, !tbaa !22
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 3688
  store ptr @.str.42, ptr %i.mi, align 8, !tbaa !23
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 3696
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 3744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.mj, i8 0, i64 144, i1 false)
  store i32 3, ptr %i.mk, align 16, !tbaa !17
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 3748
  store i32 90, ptr %i.ml, align 4, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %4, i64 3752
  store ptr @.str.73, ptr %i.mm, align 8, !tbaa !19
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 3760
  store ptr @.str.72, ptr %i.mn, align 16, !tbaa !20
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 3840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.mo, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !24
  call void @trace2_cmd_name_fl(ptr noundef nonnull @.str.74, i32 noundef 216, ptr noundef nonnull @.str.75) #13
  %i.mp = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 0) #13 ; 2 uses
  %.b = load i1, ptr @length_cb.0, align 8
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.mq = load ptr, ptr @length_cb.1, align 8, !tbaa !26 ; 2 uses
  %i.mr = load i32, ptr @length_cb.2, align 8, !tbaa !27
  %.not = icmp eq ptr %i.mq, null
  %i.ms = select i1 %.not, ptr @.str.77, ptr %i.mq
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.ms, i32 noundef %i.mr)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.mt = load i32, ptr @boolean, align 4, !tbaa !24
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.78, i32 noundef %i.mt)
  %i.mu = load i32, ptr @integer, align 4, !tbaa !24
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.79, i32 noundef %i.mu)
  %i.mv = load i16, ptr %i.c, align 2, !tbaa !40
  %i.mw = sext i16 %i.mv to i64
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.80, i64 noundef %i.mw)
  %i.mx = load i64, ptr @unsigned_integer, align 8, !tbaa !44
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.81, i64 noundef %i.mx)
  %i.my = load i16, ptr %i.b, align 2, !tbaa !40
  %i.mz = zext i16 %i.my to i64
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.82, i64 noundef %i.mz)
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.83, i64 noundef 0)
  %i.na = load ptr, ptr @string, align 8, !tbaa !28 ; 2 uses
  %.not15 = icmp eq ptr %i.na, null
  %i.nb = select i1 %.not15, ptr @.str.85, ptr %i.na
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.nb)
  %i.nc = load i32, ptr @abbrev, align 4, !tbaa !24
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.86, i32 noundef %i.nc)
  %i.nd = load i32, ptr @verbose, align 4, !tbaa !24
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.87, i32 noundef %i.nd)
  %i.ne = load i32, ptr @quiet, align 4, !tbaa !24
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.88, i32 noundef %i.ne)
  %i.nf = load i32, ptr @dry_run, align 4, !tbaa !24
  %.not16 = icmp eq i32 %i.nf, 0
  %i.ng = select i1 %.not16, ptr @.str.90, ptr @.str.4
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.ng)
  %i.nh = load ptr, ptr @file, align 8, !tbaa !28 ; 2 uses
  %.not17 = icmp eq ptr %i.nh, null
  %i.ni = select i1 %.not17, ptr @.str.85, ptr %i.nh
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.ni)
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !31
  %.not21 = icmp eq i64 %i.nk, 0
  br i1 %.not21, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.nl = icmp sgt i32 %i.mp, 0
  br i1 %i.nl, label %.lr.ph20.preheader, label %._crit_edge

.lr.ph20.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.mp to i64
  br label %.lr.ph20

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01418 = phi i64 [ %i.np, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.nm = load ptr, ptr %3, align 8, !tbaa !45
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %.01418
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !46
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.92, ptr noundef %i.no)
  %i.np = add nuw i64 %.01418, 1                  ; 2 uses
  %i.nq = load i64, ptr %i.nj, align 8, !tbaa !31
  %i.nr = icmp ult i64 %i.np, %i.nq
  br i1 %i.nr, label %.lr.ph, label %.preheader, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 8
  %i.nu = or i8 %i.nt, 1
  store i8 %i.nu, ptr %i.ns, align 8
  call void @string_list_clear(ptr noundef nonnull %2, i32 noundef 0) #13
  call void @string_list_clear(ptr noundef nonnull %3, i32 noundef 0) #13
  %i.nv = load ptr, ptr @file, align 8, !tbaa !28
  call void @free(ptr noundef %i.nv) #13
  %i.nw = load i32, ptr %i.d, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.nw

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %.lr.ph20
  %indvars.iv = phi i64 [ 0, %.lr.ph20.preheader ], [ %indvars.iv.next, %.lr.ph20 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !28
  %i.nz = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ptr, ptr, ...) @show(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.93, i32 noundef %i.nz, ptr noundef %i.ny)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph20, !llvm.loop !38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mode34_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %sub_0, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  store i32 0, ptr %i.b, align 4, !tbaa !24
  br label %bb.e

sub_0:                                            ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  switch i8 %i.c, label %.tail9.thread [
    i8 51, label %.tail
    i8 52, label %.tail9
  ]

.tail:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %sub_010

bb.c:                                             ; preds = %.tail
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  store i32 3, ptr %i.h, align 4, !tbaa !24
  br label %bb.e

sub_010:                                          ; preds = %.tail
  %.not14 = icmp eq i8 %i.c, 52
  br i1 %.not14, label %.tail9, label %.tail9.thread

.tail9:                                           ; preds = %sub_0, %sub_010
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %.tail9.thread

bb.d:                                             ; preds = %.tail9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  store i32 4, ptr %i.m, align 4, !tbaa !24
  br label %bb.e

.tail9.thread:                                    ; preds = %sub_0, %sub_010, %.tail9
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull %1) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %.tail9.thread
  %.0 = phi i32 [ -1, %.tail9.thread ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @length_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #3 {
bb.a:
  store i1 true, ptr @length_cb.0, align 8
  store ptr %1, ptr @length_cb.1, align 8, !tbaa !26
  store i32 %2, ptr @length_cb.2, align 8, !tbaa !27
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  store i32 %i.b, ptr %i.d, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @parse_opt_noop_cb(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @parse_opt_string_list(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @number_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.74, i32 noundef 52, ptr noundef nonnull @.str.102) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call i64 @__isoc23_strtol(ptr noundef %1, ptr noundef null, i32 noundef 10) #13
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  store i32 %i.b, ptr %i.d, align 4, !tbaa !24
  ret i32 0
}

declare i32 @parse_opt_abbrev_cb(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @collect_expect(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.show.buf, i64 24, i1 false)
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.103) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #14 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.104) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %i.h) #13
  %i.i = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef null) #13
  %i.j = call ptr @string_list_insert(ptr noundef %i.e, ptr noundef %i.i) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  call void (ptr, ...) @die(ptr noundef nonnull @.str.105, ptr noundef %i.n) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %1, ptr %i.k, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 0
}

declare void @trace2_cmd_name_fl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @show(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.show.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @strbuf_vaddf(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull %4) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.d) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 58) #14 ; 3 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @die(ptr noundef nonnull @.str.107, ptr noundef %2) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 1, !tbaa !47
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.g = call ptr @string_list_lookup(ptr noundef nonnull %0, ptr noundef %i.f) #13 ; 2 uses
  store i8 58, ptr %i.e, align 1, !tbaa !47
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.k = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.j) #14
  %.not14 = icmp eq i32 %i.k, 0
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef nonnull %i.i) ; 0 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef %i.m) ; 0 uses
  store i32 1, ptr %1, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.b
  call void @strbuf_release(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cmd__parse_options_flags(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca [2 x %struct.option], align 16      ; 11 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd__parse_options_flags.usage, i64 16, i1 false)
  %i.d = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @test_flag_options, ptr noundef nonnull %i.c, i32 noundef 2) #13 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !28
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(4) @.str.95) #14
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.96) #13 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull %i.c, ptr noundef nonnull @test_flag_options) #15
end_hunk_0
