Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_udta_string:bb.a
  switch i64 %.2194295305, label %bb.dt [
    i64 1, label %bb.dp
    i64 2, label %bb.dq
    i64 3, label %bb.dr
    i64 4, label %bb.ds
  ]

bb.dp:                                            ; preds = %bb.do
  %i.gn = call i32 @avio_r8(ptr noundef %1) #16
  br label %bb.dt

bb.dq:                                            ; preds = %bb.do
  %i.go = call i32 @avio_rb16(ptr noundef %1) #16
  br label %bb.dt

bb.dr:                                            ; preds = %bb.do
  %i.gp = call i32 @avio_rb24(ptr noundef %1) #16
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.gq = call i32 @avio_rb32(ptr noundef %1) #16
  br label %bb.dt

bb.dt:                                            ; preds = %bb.do, %bb.dq, %bb.ds, %bb.dr, %bb.dp
  %.0 = phi i32 [ %i.gn, %bb.dp ], [ %i.go, %bb.dq ], [ %i.gp, %bb.dr ], [ %i.gq, %bb.ds ], [ 0, %bb.do ] ; 2 uses
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.gs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.gr, i64 noundef 513, ptr noundef nonnull @.str.458, i32 noundef %.0) #16
  %.not239 = icmp ult i32 %i.gs, 513
  br i1 %.not239, label %.thread275, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.gt = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gt, i32 noundef 16, ptr noundef nonnull @.str.459, i32 noundef %.0) #16
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !130
  call void @av_free(ptr noundef %i.gu) #16
  br label %.thread259

bb.dv:                                            ; preds = %bb.cy, %bb.dg
  %i.gv = icmp eq i32 %.2197294306, 23
  %i.gw = icmp samesign ugt i64 %.2194295305, 3
  %or.cond20 = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond20, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.gx = call i32 @avio_rb32(ptr noundef %1) #16
  %i.gy = bitcast i32 %i.gx to float
  %i.gz = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.ha = fpext nsz float %i.gy to double         ; 2 uses
  %i.hb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.gz, i64 noundef 513, ptr noundef nonnull @.str.460, double noundef %i.ha) #16
  %.not238 = icmp ult i32 %i.hb, 513
  br i1 %.not238, label %.thread275, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.hc = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hc, i32 noundef 16, ptr noundef nonnull @.str.461, double noundef %i.ha) #16
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !130
  call void @av_free(ptr noundef %i.hd) #16
  br label %.thread259

bb.dy:                                            ; preds = %bb.dv
  switch i32 %.2197294306, label %bb.dz [
    i32 4, label %.thread283
    i32 1, label %.thread283
    i32 0, label %.thread283
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.he = load ptr, ptr %i.ae, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.he, i32 noundef 24, ptr noundef nonnull @.str.462, ptr noundef nonnull %.6309, i32 noundef %.2197294306) #16
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !130
  call void @av_free(ptr noundef %i.hf) #16
  br label %.thread259

.thread283:                                       ; preds = %bb.cz, %bb.dy, %bb.dy, %bb.dy
  %i.hg = trunc nuw nsw i64 %.2194295305 to i32
  %i.hh = call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.eh, i32 noundef %i.hg) #16 ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, -1
  %i.hj = load ptr, ptr %i.d, align 8, !tbaa !130 ; 2 uses
  br i1 %i.hi, label %.thread284, label %bb.ea

.thread284:                                       ; preds = %.thread283
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.2194295305
  store i8 0, ptr %i.hk, align 1, !tbaa !94
  br label %.thread275

bb.ea:                                            ; preds = %.thread283
  call void @av_free(ptr noundef %i.hj) #16
  br label %.thread259

.thread275:                                       ; preds = %bb.dw, %bb.dt, %bb.dm, %.thread284, %mov_read_mac_string.exit
  %i.hl = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 276 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !314
  %i.ho = or i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !314
  %i.hp = load i32, ptr %i.ac, align 4, !tbaa !312
  %.not241 = icmp eq i32 %i.hp, 0
  br i1 %.not241, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %.thread275
  %i.hq = load ptr, ptr %.0188, align 8, !tbaa !315
  %i.hr = call ptr @av_dict_get(ptr noundef %i.hq, ptr noundef nonnull %.6309, ptr noundef null, i32 noundef 0) #16
  %.not242 = icmp eq ptr %i.hr, null
  br i1 %.not242, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.hs = call i32 @av_dict_set(ptr noundef nonnull %.0188, ptr noundef nonnull %.6309, ptr noundef nonnull @.str.463, i32 noundef 32) #16 ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %.thread275
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.hu = load i32, ptr %i.ac, align 4, !tbaa !312
  %.not243 = icmp eq i32 %i.hu, 0
  %i.hv = select i1 %.not243, i32 0, i32 32
  %i.hw = call i32 @av_dict_set(ptr noundef nonnull %.0188, ptr noundef nonnull %.6309, ptr noundef %i.ht, i32 noundef %i.hv) #16 ; 0 uses
  %i.hx = load i8, ptr %i.c, align 4, !tbaa !94
  %.not244 = icmp eq i8 %i.hx, 0
  %lhsv = load i32, ptr %i.c, align 4
  %.not980 = icmp eq i32 %lhsv, 6581877
  %or.cond981 = select i1 %.not244, i1 true, i1 %.not980
  br i1 %or.cond981, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.hy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.465, ptr noundef nonnull %.6309, ptr noundef nonnull %i.c) #16 ; 0 uses
  %i.hz = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.ia = call i32 @av_dict_set(ptr noundef nonnull %.0188, ptr noundef nonnull %i.b, ptr noundef %i.hz, i32 noundef 0) #16 ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.ib = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.6309, ptr noundef nonnull dereferenceable(8) @.str.20) #18
  %.not246 = icmp eq i32 %i.ib, 0
  br i1 %.not246, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.id = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ic, ptr noundef nonnull @.str.466, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #16
  %i.ie = icmp eq i32 %i.id, 3
  br i1 %i.ie, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.if = load i32, ptr %i.e, align 4, !tbaa !95
  %i.ig = mul nsw i32 %i.if, 1000000
  %i.ih = load i32, ptr %i.f, align 4, !tbaa !95
  %i.ii = mul nsw i32 %i.ih, 1000
  %i.ij = add nsw i32 %i.ii, %i.ig
  %i.ik = load i32, ptr %i.g, align 4, !tbaa !95
  %i.il = add nsw i32 %i.ij, %i.ik
  store i32 %i.il, ptr %i.al, align 8, !tbaa !234
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ef
  %i.im = sub nsw i64 %.sroa.6.3292308, %.2194295305 ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.d) #16
  %i.in = load i32, ptr %i.ac, align 4, !tbaa !312
  %i.io = icmp ne i32 %i.in, 0
  %i.ip = icmp sgt i64 %i.im, 8
  %or.cond25 = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %or.cond25, label %.outer.outer, label %.loopexit

.loopexit:                                        ; preds = %bb.ej, %bb.cw
  call void @av_freep(ptr noundef nonnull %i.d) #16
  br label %.thread259

.thread259:                                       ; preds = %bb.cu, %.thread298, %bb.ct, %bb.bz, %._crit_edge, %mov_read_covr.exit, %.loopexit311, %bb.ea, %bb.dx, %bb.du, %bb.dn, %.loopexit, %bb.dz, %bb.w, %bb.t
  %.9 = phi i32 [ %i.ab, %bb.w ], [ %i.z, %bb.t ], [ 0, %.loopexit ], [ -1094995529, %bb.dn ], [ -1094995529, %bb.du ], [ -1094995529, %bb.dx ], [ 0, %bb.dz ], [ %i.hh, %bb.ea ], [ %.025.i.ph, %.loopexit311 ], [ 0, %bb.bz ], [ 0, %mov_read_covr.exit ], [ 0, %._crit_edge ], [ -12, %bb.cu ], [ 0, %bb.ct ], [ -1094995529, %.thread298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_keys(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %3, 8
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 4) #16 ; 0 uses
  %i.c = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 4 uses
  %i.d = icmp ugt i32 %i.c, 536870910
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.475, i32 noundef %i.c) #16
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.g, ptr %i.h, align 8, !tbaa !135
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @av_mallocz(i64 noundef %i.j) #16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !309
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not4451 = icmp eq i32 %i.c, 0
  br i1 %.not4451, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.m = add nsw i64 %3, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.sroa.1.052 = phi i64 [ %i.m, %.lr.ph.preheader ], [ %i.v, %bb.k ] ; 2 uses
  %i.n = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 5 uses
  %i.o = tail call i32 @avio_rl32(ptr noundef %1) #16
  %i.p = icmp ult i32 %i.n, 8
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = zext i32 %i.n to i64                     ; 2 uses
  %i.r = icmp slt i64 %.sroa.1.052, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.s = trunc nuw i64 %indvars.iv to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 16, ptr noundef nonnull @.str.476, i32 noundef %i.s, i32 noundef %i.n) #16
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.v = sub nuw nsw i64 %.sroa.1.052, %i.q
  %i.w = add i32 %i.n, -8                         ; 2 uses
  %.not45 = icmp eq i32 %i.o, 1635017837
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i64 @avio_skip(ptr noundef %1, i64 noundef %i.x) #16 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.z = add i32 %i.n, -7
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noalias ptr @av_mallocz(i64 noundef %i.aa) #16 ; 3 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !309
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !130
  %.not46 = icmp eq ptr %i.ab, null
  br i1 %.not46, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @avio_read(ptr noundef %1, ptr noundef nonnull %i.ab, i32 noundef %i.w) #16 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !567

.thread:                                          ; preds = %bb.k, %bb.i, %.preheader, %bb.f, %bb.d, %bb.a, %bb.c
  %.2 = phi i32 [ 0, %bb.a ], [ -1094995529, %bb.c ], [ -1094995529, %bb.f ], [ -12, %bb.d ], [ 0, %.preheader ], [ 0, %bb.k ], [ -12, %bb.i ]
  ret i32 %.2
}

declare i64 @avio_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_aclr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = add i32 %i.d, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !90
  %.not39 = icmp eq i32 %i.n, 27
  br i1 %.not39, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %3, 16
  br i1 %i.o, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 6 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !127  ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = add nsw i64 %i.r, 88                     ; 2 uses
  %or.cond.not.i = icmp ult i64 %i.s, 2147483648
  br i1 %or.cond.not.i, label %mov_realloc_extradata.exit, label %mov_realloc_extradata.exit.thread

mov_realloc_extradata.exit:                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.u = tail call i32 @av_reallocp(ptr noundef nonnull %i.t, i64 noundef %i.s) #16 ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = add nsw i32 %i.q, 24
  %.sink.i = select i1 %i.v, i32 0, i32 %i.w
  store i32 %.sink.i, ptr %i.p, align 8, !tbaa !127
  %.not38 = icmp sgt i32 %i.u, -1
  br i1 %.not38, label %bb.e, label %mov_realloc_extradata.exit.mov_realloc_extradata.exit.thread_crit_edge

mov_realloc_extradata.exit.mov_realloc_extradata.exit.thread_crit_edge: ; preds = %mov_realloc_extradata.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %mov_realloc_extradata.exit.thread

bb.e:                                             ; preds = %mov_realloc_extradata.exit
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r ; 3 uses
  store i32 402653184, ptr %i.y, align 1, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %2, ptr %i.z, align 1, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.aa, i32 noundef 16) #16 ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.critedge47, label %bb.f

.critedge47:                                      ; preds = %bb.e
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !127
  %i.ae = add i32 %i.ad, -16
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !127
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.af = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.ab, 15
  br i1 %i.ag, label %.critedge48, label %mov_read_atom_into_extradata.exit

mov_read_atom_into_extradata.exit:                ; preds = %bb.f
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ah, i32 noundef 24, ptr noundef nonnull @.str.41) #16
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !127
  %i.aj = or disjoint i32 %i.ab, -16
  %i.ak = add i32 %i.aj, %i.ai
  store i32 %i.ak, ptr %i.p, align 8, !tbaa !127
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  br label %bb.j

.critedge48:                                      ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.am, i8 0, i64 64, i1 false)
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.r
  %i.ap = getelementptr i8, ptr %i.ao, i64 19
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !94  ; 2 uses
  switch i8 %i.aq, label %bb.i [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %.critedge48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  store i32 1, ptr %i.ar, align 4, !tbaa !316
  br label %.critedge

bb.h:                                             ; preds = %.critedge48
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  store i32 2, ptr %i.as, align 4, !tbaa !316
  br label %.critedge

bb.i:                                             ; preds = %.critedge48
  %i.at = zext i8 %i.aq to i32
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 24, ptr noundef nonnull @.str.37, i32 noundef %i.at) #16
  br label %.critedge

bb.j:                                             ; preds = %mov_read_atom_into_extradata.exit, %.critedge47
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.av, i32 noundef 16, ptr noundef nonnull @.str.38) #16
  br label %.critedge

mov_realloc_extradata.exit.thread:                ; preds = %mov_realloc_extradata.exit.mov_realloc_extradata.exit.thread_crit_edge, %bb.d
  %i.aw = phi ptr [ %.pre, %mov_realloc_extradata.exit.mov_realloc_extradata.exit.thread_crit_edge ], [ %i.b, %bb.d ]
  %.0.i43 = phi i32 [ %i.u, %mov_realloc_extradata.exit.mov_realloc_extradata.exit.thread_crit_edge ], [ -1094995529, %bb.d ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 16, ptr noundef nonnull @.str.39) #16
  br label %.critedge

bb.k:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull @.str.40, i64 noundef %3) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %mov_realloc_extradata.exit.thread, %bb.j, %bb.k, %bb.b, %bb.a
  %.132 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.i ], [ %.0.i43, %mov_realloc_extradata.exit.thread ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.132
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_avid(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @mov_read_extradata(ptr noundef %0, ptr noundef %1, i32 %2, i64 %3, i32 noundef 199) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @mov_read_extradata(ptr noundef %0, ptr noundef %1, i32 %2, i64 %3, i32 noundef 99)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_ares(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread50, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = add i32 %i.d, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  switch i32 %i.n, label %bb.f [
    i32 1852397121, label %bb.c
    i32 828659265, label %bb.g
    i32 845829697, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !90
  %i.q = icmp eq i32 %i.p, 27
  %i.r = icmp sgt i64 %3, 11
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %.thread50

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 10) #16 ; 0 uses
  %i.t = tail call i32 @avio_rb16(ptr noundef %1) #16
  %i.u = add i32 %i.t, -3405
  %or.cond4 = icmp ult i32 %i.u, 2
  br i1 %or.cond4, label %bb.e, label %mov_read_avid.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 72
end_hunk_0
