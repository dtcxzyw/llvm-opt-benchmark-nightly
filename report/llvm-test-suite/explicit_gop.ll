Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/explicit_gop?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@interpret_gop_structure:bb.a
  %i.db = call noundef i32 @llvm.smax.i32(i32 %i.da, i32 range(i32 -2147483647, -2147483648) %i.cx)
  %i.dc = call noundef i32 @llvm.smin.i32(i32 %i.db, i32 51)
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !21
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) @errortext, ptr noundef nonnull align 1 dereferenceable(75) @.str.9, i64 75, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

bb.y:                                             ; preds = %bb.u
  %i.dd = icmp slt i32 %.05977, %i.h
  %or.cond73 = select i1 %.not69, i1 %i.dd, i1 false
  br i1 %or.cond73, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.de = add nsw i32 %.05977, -1                 ; 2 uses
  %i.df = add nsw i32 %.082, 1                    ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !40
  %.not68 = icmp slt i32 %i.df, %i.dh
  br i1 %.not68, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(92) @errortext, ptr noundef nonnull align 1 dereferenceable(92) @.str.10, i64 92, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.p, %bb.k, %bb.r, %bb.s, %bb.t, %bb.d, %bb.e, %bb.f, %bb.g, %bb.x, %bb.w, %bb.z, %bb.aa, %bb.y, %bb.n
  %.160 = phi i32 [ %.05977, %bb.d ], [ %.05977, %bb.s ], [ %.05977, %bb.n ], [ %.05977, %bb.w ], [ %.05977, %bb.x ], [ %.05977, %bb.y ], [ %i.de, %bb.aa ], [ %i.de, %bb.z ], [ %.05977, %bb.r ], [ %.05977, %bb.p ], [ %.05977, %bb.g ], [ %.05977, %bb.f ], [ %.05977, %bb.e ], [ %.05977, %bb.t ], [ %.05977, %bb.k ], [ %.05977, %bb.m ]
  %.157 = phi i32 [ 1, %bb.d ], [ 1, %bb.s ], [ 1, %bb.n ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.r ], [ 1, %bb.p ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.t ], [ 1, %bb.k ], [ 1, %bb.m ]
  %.155 = phi i32 [ %.05479, %bb.d ], [ 1, %bb.s ], [ 0, %bb.n ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.r ], [ 1, %bb.p ], [ %.05479, %bb.g ], [ %.05479, %bb.f ], [ %.05479, %bb.e ], [ 1, %bb.t ], [ 1, %bb.k ], [ 1, %bb.m ]
  %.153 = phi i32 [ %.05280, %bb.d ], [ 1, %bb.s ], [ %.05280, %bb.n ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.r ], [ 0, %bb.p ], [ %.05280, %bb.g ], [ %.05280, %bb.f ], [ %.05280, %bb.e ], [ 1, %bb.t ], [ %.05280, %bb.k ], [ %.05280, %bb.m ]
  %.151 = phi i32 [ %.05081, %bb.d ], [ %.05081, %bb.s ], [ %.05081, %bb.n ], [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ %.05081, %bb.r ], [ %.05081, %bb.p ], [ %.05081, %bb.g ], [ %.05081, %bb.f ], [ %.05081, %bb.e ], [ %.05081, %bb.t ], [ %.05081, %bb.k ], [ %.05081, %bb.m ]
  %.1 = phi i32 [ %.082, %bb.d ], [ %.082, %bb.s ], [ %.082, %bb.n ], [ %.082, %bb.w ], [ %.082, %bb.x ], [ %.082, %bb.y ], [ %i.df, %bb.aa ], [ %i.df, %bb.z ], [ %.082, %bb.r ], [ %.082, %bb.p ], [ %.082, %bb.g ], [ %.082, %bb.f ], [ %.082, %bb.e ], [ %.082, %bb.t ], [ %.082, %bb.k ], [ %.082, %bb.m ] ; 2 uses
  %i.di = add nsw i32 %.160, 1                    ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.f
  br i1 %i.dj, label %bb.b, label %.loopexit75.loopexit, !llvm.loop !53

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(67) @errortext, ptr noundef nonnull align 1 dereferenceable(67) @.str.11, i64 67, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit75

.loopexit75.loopexit:                             ; preds = %.loopexit
  %i.dk = add nsw i32 %.1, 1
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %bb.ab
  %.2 = phi i32 [ 1, %bb.ab ], [ %i.dk, %.loopexit75.loopexit ]
  %i.dl = load ptr, ptr @input, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2096
  store i32 %.2, ptr %i.dm, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @encode_enhancement_layer() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !9  ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14   ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  %.pre48 = load ptr, ptr @img, align 8, !tbaa !9 ; 15 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %.pre48, align 8, !tbaa !61
  %i.e = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !7
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !62
  %.not4 = icmp eq i32 %i.h, 0
  %spec.select = zext i1 %.not4 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %.pre48, i64 20
  store i32 %spec.select, ptr %i.i, align 4, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.k = load i32, ptr %i.j, align 8, !tbaa !64
  %i.l = icmp ne i32 %i.k, 0
  %.sink28 = zext i1 %i.l to i32
  %i.m = getelementptr inbounds nuw i8, ptr %.pre48, i64 15248
  store i32 %.sink28, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2964
  %i.o = load i32, ptr %i.n, align 4, !tbaa !66
  %.not5 = icmp eq i32 %i.o, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 2968
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !15
  %i.p = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %.thread, label %.thread61

.thread61:                                        ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pre48, i64 15360
  store i32 0, ptr %i.q, align 8, !tbaa !67
  br label %bb.f

.thread:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pre48, i64 15332 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !68
  %i.t = add i32 %i.s, 1
  %i.u = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !7
  %i.v = add i32 %i.u, 4
  %notmask = shl nsw i32 -1, %i.v
  %i.w = xor i32 %notmask, -1
  %i.x = and i32 %i.t, %i.w
  store i32 %i.x, ptr %i.r, align 4, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %.pre48, i64 15360
  store i32 0, ptr %i.y, align 8, !tbaa !67
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pre48, i64 15360
  store i32 0, ptr %i.z, align 8, !tbaa !67
  br i1 %i.p, label %bb.w, label %bb.f

bb.f:                                             ; preds = %.thread61, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre48, i64 14364
  store i32 1, ptr %i.aa, align 4, !tbaa !69
  %.not1422 = icmp slt i32 %i.c, 1
  br i1 %.not1422, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre32 = load ptr, ptr @gop_structure, align 8, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge39
  %i.ab = phi ptr [ %i.dm, %._crit_edge39 ], [ %.pre32, %.lr.ph.preheader ]
  %i.ac = phi i32 [ %i.dw, %._crit_edge39 ], [ %i.c, %.lr.ph.preheader ]
  %i.ad = phi ptr [ %.pre38, %._crit_edge39 ], [ %i.a, %.lr.ph.preheader ] ; 6 uses
  %i.ae = phi i32 [ %i.eg, %._crit_edge39 ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %i.dn, %._crit_edge39 ], [ %.pre48, %.lr.ph.preheader ] ; 11 uses
  %.023 = phi i32 [ %.1, %._crit_edge39 ], [ 1, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 15360 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !67
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr [24 x i8], ptr %i.ab, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !63
  %i.am = icmp eq i32 %.023, 1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 15332 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !68
  %i.ap = add i32 %i.ao, 1
  %i.aq = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !7
  %i.ar = add i32 %i.aq, 4
  %notmask15 = shl nsw i32 -1, %i.ar
  %i.as = xor i32 %notmask15, -1
  %i.at = and i32 %i.ap, %i.as
  store i32 %i.at, ptr %i.an, align 4, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.au = getelementptr i8, ptr %i.ai, i64 -16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ag, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = add nsw i32 %i.ay, 1                    ; 4 uses
  %i.ba = sitofp i32 %i.az to double
  %i.bb = sitofp i32 %i.ac to double
  %i.bc = fadd double %i.bb, 1.000000e+00
  %i.bd = fdiv double %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 14352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 2968
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !15
  %i.bh = icmp eq i32 %i.bg, 3
  %spec.store.select = select i1 %i.bh, double 1.000000e+00, double %i.bd ; 3 uses
  store double %spec.store.select, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 1560
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !70 ; 2 uses
  %.not16 = icmp eq i32 %i.bj, 0
  br i1 %.not16, label %._crit_edge33, label %bb.k

._crit_edge33:                                    ; preds = %bb.j
  %.pre34 = load i32, ptr %i.af, align 8, !tbaa !61
  %.pre36 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !7
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 1568
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !71
  %.not17 = icmp eq i32 %i.bl, 0
  %.pre35 = load i32, ptr %i.af, align 8, !tbaa !61 ; 3 uses
  %.pre37 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !7 ; 3 uses
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = sub nsw i32 %.pre35, %.pre37
  %i.bn = srem i32 %i.bm, %i.bj
  %i.bo = add nsw i32 %i.bn, -1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge33, %bb.k
  %i.bp = phi i32 [ %.pre36, %._crit_edge33 ], [ %.pre37, %bb.k ] ; 2 uses
  %i.bq = phi i32 [ %.pre34, %._crit_edge33 ], [ %.pre35, %bb.k ] ; 2 uses
  %i.br = xor i32 %i.bp, -1
  %i.bs = add i32 %i.bq, %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink79 = phi i32 [ %i.bs, %bb.m ], [ %i.bo, %bb.l ]
  %i.bt = phi i32 [ %i.bp, %bb.m ], [ %.pre37, %bb.l ] ; 2 uses
  %i.bu = phi i32 [ %i.bq, %bb.m ], [ %.pre35, %bb.l ] ; 2 uses
  %i.bv = mul nsw i32 %.sink79, %i.az
  %i.bw = getelementptr i8, ptr %i.ai, i64 -20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = sitofp i32 %i.by to double
  %i.ca = fmul double %spec.store.select, %i.bz
  %i.cb = fptosi double %i.ca to i32
  %i.cc = add nsw i32 %i.bv, %i.cb                ; 2 uses
  %i.cd = shl nsw i32 %i.cc, 1                    ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 15316
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !72
  %i.cf = icmp eq i32 %i.ae, 1
  %i.cg = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !7 ; 2 uses
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = sub nsw i32 %i.bu, %i.bt
  %i.ci = mul nsw i32 %i.ch, %i.az
  %i.cj = add nsw i32 %i.ci, %i.cg
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ck = xor i32 %i.bt, -1
  %i.cl = add i32 %i.bu, %i.ck
  %i.cm = mul nsw i32 %i.cl, %i.az
  %i.cn = add nsw i32 %i.cm, %i.cg
  %i.co = fmul double %spec.store.select, 2.000000e+00
  %i.cp = getelementptr i8, ptr %i.ai, i64 -44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18
  %i.cr = add nsw i32 %i.cq, 1
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fmul double %i.co, %i.cs
  %i.cu = fptosi double %i.ct to i32
  %i.cv = add nsw i32 %i.cn, %i.cu
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.in = phi i32 [ %i.cj, %bb.o ], [ %i.cv, %bb.p ]
  %i.cw = sub nsw i32 %i.cc, %.pn.in
  %.sink29 = shl nsw i32 %i.cw, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 15304
  store i32 %.sink29, ptr %i.cx, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ad, i64 4704
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !73
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 4708
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !74
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.de = or disjoint i32 %i.cd, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink = phi i32 [ %i.de, %bb.s ], [ %i.cd, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 15320
  store i32 %.sink, ptr %i.df, align 8, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 15324
  store i32 %i.cd, ptr %i.dg, align 4, !tbaa !76
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 15308
  store i32 0, ptr %i.dh, align 4, !tbaa !7
  %i.di = tail call i32 @encode_one_frame() #13   ; 0 uses
  %i.dj = load ptr, ptr @input, align 8, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 5104
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !77
  %.not18 = icmp eq i32 %i.dl, 0
  br i1 %.not18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @report_frame_statistic() #13
  %.pre38.pre = load ptr, ptr @input, align 8, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre38 = phi ptr [ %.pre38.pre, %bb.u ], [ %i.dj, %bb.t ] ; 2 uses
  %i.dm = load ptr, ptr @gop_structure, align 8, !tbaa !9 ; 2 uses
  %i.dn = load ptr, ptr @img, align 8, !tbaa !9   ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 14364 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !69 ; 5 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [24 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !20
  %i.du = icmp eq i32 %i.dt, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre38, i64 2096
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !14 ; 3 uses
  %i.dx = icmp eq i32 %i.dp, %i.dw
  %or.cond = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %or.cond, label %.thread63, label %._crit_edge39

.thread63:                                        ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 15332 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !68
  %i.ea = add i32 %i.dz, 1
  %i.eb = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !7
  %i.ec = add i32 %i.eb, 4
  %notmask19 = shl nsw i32 -1, %i.ec
  %i.ed = xor i32 %notmask19, -1
  %i.ee = and i32 %i.ea, %i.ed
  store i32 %i.ee, ptr %i.dy, align 4, !tbaa !68
  %i.ef = add nsw i32 %i.dp, 1
  store i32 %i.ef, ptr %i.do, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge39:                                    ; preds = %bb.v
  %i.eg = add nsw i32 %i.dp, 1                    ; 2 uses
  store i32 %i.eg, ptr %i.do, align 4, !tbaa !69
  %.not14.not = icmp slt i32 %i.dp, %i.dw
  br i1 %.not14.not, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %._crit_edge39, %.thread63, %bb.f
  %.lcssa21 = phi ptr [ %.pre48, %bb.f ], [ %i.dn, %.thread63 ], [ %i.dn, %._crit_edge39 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 14364
  store i32 0, ptr %i.eh, align 4, !tbaa !69
  br label %.loopexit

bb.w:                                             ; preds = %.thread, %bb.e
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre48, i64 14364
  store i32 1, ptr %i.ei, align 4, !tbaa !69
  %.not724 = icmp slt i32 %i.c, 1
  br i1 %.not724, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.w, %bb.ak
  %i.ej = phi i32 [ %i.ho, %bb.ak ], [ %i.c, %bb.w ]
  %i.ek = phi ptr [ %i.hi, %bb.ak ], [ %i.a, %bb.w ] ; 7 uses
  %i.el = phi i32 [ %i.hm, %bb.ak ], [ 1, %bb.w ] ; 2 uses
  %i.em = phi ptr [ %i.hj, %bb.ak ], [ %.pre48, %bb.w ] ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 15360 ; 2 uses
  store i32 0, ptr %i.en, align 8, !tbaa !67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 2964
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !66
  %i.eq = icmp eq i32 %i.ep, 1                    ; 2 uses
  br i1 %i.eq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph26
  store i32 1, ptr %i.en, align 8, !tbaa !67
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 15332 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !68
  %i.et = add i32 %i.es, 1
  %i.eu = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !7
  %i.ev = add i32 %i.eu, 4
  %notmask8 = shl nsw i32 -1, %i.ev
  %i.ew = xor i32 %notmask8, -1
  %i.ex = and i32 %i.et, %i.ew
  store i32 %i.ex, ptr %i.er, align 4, !tbaa !68
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !40
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = sitofp i32 %i.ej to double
  %i.fd = fadd double %i.fc, 1.000000e+00
  %i.fe = fdiv double %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 14352
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 2968
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !15
  %i.fi = icmp eq i32 %i.fh, 3
  %spec.store.select20 = select i1 %i.fi, double 1.000000e+00, double %i.fe ; 2 uses
  store double %spec.store.select20, ptr %i.ff, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ek, i64 1560
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !70 ; 2 uses
  %.not9 = icmp eq i32 %i.fk, 0
  br i1 %.not9, label %._crit_edge42, label %bb.z

._crit_edge42:                                    ; preds = %bb.y
  %.pre43 = load i32, ptr %i.em, align 8, !tbaa !61
  %.pre45 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !7
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 1568
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !71
  %.not10 = icmp eq i32 %i.fm, 0
  %.pre44 = load i32, ptr %i.em, align 8, !tbaa !61 ; 2 uses
  %.pre46 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !7 ; 2 uses
  br i1 %.not10, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = sub nsw i32 %.pre44, %.pre46
  %i.fo = srem i32 %i.fn, %i.fk
  %i.fp = add nsw i32 %i.fo, -1
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge42, %bb.z
  %i.fq = phi i32 [ %.pre45, %._crit_edge42 ], [ %.pre46, %bb.z ]
  %i.fr = phi i32 [ %.pre43, %._crit_edge42 ], [ %.pre44, %bb.z ]
  %i.fs = xor i32 %i.fq, -1
  %i.ft = add i32 %i.fr, %i.fs
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink88 = phi i32 [ %i.ft, %bb.ab ], [ %i.fp, %bb.aa ]
  %i.fu = mul nsw i32 %.sink88, %i.fa
  %i.fv = sitofp i32 %i.el to double
  %i.fw = fmul double %spec.store.select20, %i.fv
  %i.fx = fptosi double %i.fw to i32
  %i.fy = add nsw i32 %i.fu, %i.fx
  %i.fz = shl nsw i32 %i.fy, 1                    ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.em, i64 15316
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ek, i64 4704
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !73
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ek, i64 4708
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !74
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gh = or disjoint i32 %i.fz, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink89 = phi i32 [ %i.gh, %bb.ae ], [ %i.fz, %bb.ad ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 15320
  store i32 %.sink89, ptr %i.gi, align 8, !tbaa !75
  %i.gj = getelementptr inbounds nuw i8, ptr %i.em, i64 15324
  store i32 %i.fz, ptr %i.gj, align 4, !tbaa !76
  %i.gk = shl i32 %i.el, 1
  %i.gl = add i32 %i.gk, -2
  %.sink30 = select i1 %i.eq, i32 -2, i32 %i.gl
  %i.gm = getelementptr inbounds nuw i8, ptr %i.em, i64 15304
  store i32 %.sink30, ptr %i.gm, align 8, !tbaa !7
  %i.gn = getelementptr inbounds nuw i8, ptr %i.em, i64 15308
  store i32 0, ptr %i.gn, align 4, !tbaa !7
  %i.go = tail call i32 @encode_one_frame() #13   ; 0 uses
  %i.gp = load ptr, ptr @input, align 8, !tbaa !9 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2964
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !66
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr @img, align 8, !tbaa !9   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 14364
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !69
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 2096
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !14
  %i.gy = icmp eq i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 15332 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !68
  %i.hb = add i32 %i.ha, 1
  %i.hc = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !7
  %i.hd = add i32 %i.hc, 4
  %notmask12 = shl nsw i32 -1, %i.hd
  %i.he = xor i32 %notmask12, -1
  %i.hf = and i32 %i.hb, %i.he
  store i32 %i.hf, ptr %i.gz, align 4, !tbaa !68
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 5104
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !77
  %.not13 = icmp eq i32 %i.hh, 0
  br i1 %.not13, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @report_frame_statistic() #13
  %.pre47 = load ptr, ptr @input, align 8, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.hi = phi ptr [ %i.gp, %bb.ai ], [ %.pre47, %bb.aj ] ; 2 uses
  %i.hj = load ptr, ptr @img, align 8, !tbaa !9   ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 14364 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !69 ; 2 uses
  %i.hm = add nsw i32 %i.hl, 1                    ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !69
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 2096
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !14 ; 2 uses
  %.not7.not = icmp slt i32 %i.hl, %i.ho
  br i1 %.not7.not, label %.lr.ph26, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %bb.ak, %bb.w, %._crit_edge, %bb.b, %bb.a
  %i.hp = phi ptr [ %.pre48, %bb.a ], [ %.pre48, %bb.w ], [ %.lcssa21, %._crit_edge ], [ %.pre48, %bb.b ], [ %i.hj, %bb.ak ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 14364
  store i32 0, ptr %i.hq, align 4, !tbaa !69
  ret void
}

declare i32 @encode_one_frame() local_unnamed_addr #2

declare void @report_frame_statistic() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @poc_based_ref_management(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !83
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !84
  %i.f = sub i32 0, %i.e
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !85 ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr @dpb, align 8, !tbaa !86
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.023 = phi i32 [ 2147483647, %.lr.ph ], [ %.1, %bb.g ] ; 4 uses
  %.01622 = phi i32 [ 0, %.lr.ph ], [ %.117, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !90
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !92
  %i.r = icmp slt i32 %i.q, %.023
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 6364
  %i.x = load i32, ptr %i.w, align 4, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.117 = phi i32 [ %.01622, %bb.d ], [ %i.x, %bb.f ], [ %.01622, %bb.e ], [ %.01622, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.023, %bb.d ], [ %i.v, %bb.f ], [ %.023, %bb.e ], [ %.023, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !78

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.y = xor i32 %.117, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.016.lcssa = phi i32 [ -1, %.preheader ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ab = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !104
  store i32 1, ptr %i.ab, align 8, !tbaa !105
  %i.ae = add i32 %0, %.016.lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !106
  %i.ag = load ptr, ptr @img, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15376
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"p1 int", !8, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !6, i64 1560, !6, i64 1564, !6, i64 1568, !6, i64 1572, !6, i64 1576, !6, i64 1580, !5, i64 1584, !6, i64 2084, !6, i64 2088, !6, i64 2092, !6, i64 2096, !6, i64 2100, !6, i64 2104, !6, i64 2108, !6, i64 2112, !6, i64 2116, !6, i64 2120, !6, i64 2124, !6, i64 2128, !6, i64 2132, !6, i64 2136, !6, i64 2140, !6, i64 2144, !6, i64 2148, !6, i64 2152, !6, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !6, i64 2928, !6, i64 2932, !6, i64 2936, !6, i64 2940, !6, i64 2944, !6, i64 2948, !6, i64 2952, !6, i64 2956, !6, i64 2960, !6, i64 2964, !6, i64 2968, !6, i64 2972, !5, i64 2976, !6, i64 4000, !6, i64 4004, !6, i64 4008, !6, i64 4012, !6, i64 4016, !6, i64 4020, !6, i64 4024, !6, i64 4028, !6, i64 4032, !6, i64 4036, !6, i64 4040, !6, i64 4044, !6, i64 4048, !6, i64 4052, !6, i64 4056, !6, i64 4060, !6, i64 4064, !6, i64 4068, !6, i64 4072, !6, i64 4076, !10, i64 4080, !6, i64 4088, !6, i64 4092, !6, i64 4096, !6, i64 4100, !6, i64 4104, !6, i64 4108, !6, i64 4112, !6, i64 4116, !6, i64 4120, !6, i64 4124, !6, i64 4128, !6, i64 4132, !6, i64 4136, !6, i64 4140, !6, i64 4144, !6, i64 4148, !6, i64 4152, !6, i64 4156, !6, i64 4160, !6, i64 4164, !6, i64 4168, !6, i64 4172, !6, i64 4176, !6, i64 4180, !6, i64 4184, !6, i64 4188, !5, i64 4192, !5, i64 4448, !6, i64 4704, !6, i64 4708, !6, i64 4712, !6, i64 4716, !6, i64 4720, !6, i64 4724, !6, i64 4728, !6, i64 4732, !6, i64 4736, !6, i64 4740, !6, i64 4744, !6, i64 4748, !6, i64 4752, !6, i64 4756, !6, i64 4760, !6, i64 4764, !6, i64 4768, !6, i64 4772, !5, i64 4776, !6, i64 5032, !6, i64 5036, !11, i64 5040, !11, i64 5048, !12, i64 5056, !11, i64 5064, !6, i64 5072, !6, i64 5076, !6, i64 5080, !6, i64 5084, !6, i64 5088, !6, i64 5092, !6, i64 5096, !6, i64 5100, !6, i64 5104, !6, i64 5108, !6, i64 5112, !6, i64 5116, !6, i64 5120, !6, i64 5124, !6, i64 5128, !6, i64 5132, !6, i64 5136, !10, i64 5144, !10, i64 5152, !10, i64 5160, !5, i64 5168, !6, i64 5208, !5, i64 5212, !6, i64 5244, !6, i64 5248, !6, i64 5252, !6, i64 5256, !6, i64 5260, !6, i64 5264, !6, i64 5268, !6, i64 5272, !6, i64 5276, !6, i64 5280, !6, i64 5284, !6, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !6, i64 5648, !6, i64 5652, !6, i64 5656, !6, i64 5660, !5, i64 5664, !5, i64 5704, !6, i64 5744, !6, i64 5748, !6, i64 5752, !6, i64 5756, !6, i64 5760, !6, i64 5764, !6, i64 5768, !6, i64 5772, !6, i64 5776, !5, i64 5780, !6, i64 5792}
!14 = !{!13, !6, i64 2096}
!15 = !{!13, !6, i64 2968}
!16 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!17 = !{!16, !6, i64 0}
!18 = !{!16, !6, i64 4}
!19 = !{!16, !6, i64 16}
!20 = !{!16, !6, i64 8}
!21 = !{!16, !6, i64 12}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"float", !5, i64 0}
!24 = !{!"any p2 pointer", !8, i64 0}
!25 = !{!"p2 omnipotent char", !24, i64 0}
!26 = !{!"any p3 pointer", !24, i64 0}
!27 = !{!"p3 int", !26, i64 0}
!28 = !{!"any p4 pointer", !26, i64 0}
!29 = !{!"p4 int", !28, i64 0}
!30 = !{!"p1 _ZTS10macroblock", !8, i64 0}
!31 = !{!"any p5 pointer", !28, i64 0}
!32 = !{!"any p6 pointer", !31, i64 0}
!33 = !{!"p6 short", !32, i64 0}
!34 = !{!"p1 _ZTS18DecRefPicMarking_s", !8, i64 0}
!35 = !{!"p2 double", !24, i64 0}
!36 = !{!"p3 double", !26, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !25, i64 128, !25, i64 136, !6, i64 144, !27, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !29, i64 14160, !27, i64 14168, !27, i64 14176, !27, i64 14184, !29, i64 14192, !29, i64 14200, !8, i64 14208, !8, i64 14216, !30, i64 14224, !11, i64 14232, !11, i64 14240, !6, i64 14248, !6, i64 14252, !6, i64 14256, !6, i64 14260, !5, i64 14264, !6, i64 14328, !6, i64 14332, !6, i64 14336, !6, i64 14340, !6, i64 14344, !10, i64 14352, !6, i64 14360, !6, i64 14364, !6, i64 14368, !6, i64 14372, !33, i64 14376, !33, i64 14384, !33, i64 14392, !33, i64 14400, !5, i64 14408, !6, i64 14440, !6, i64 14444, !6, i64 14448, !6, i64 14452, !6, i64 14456, !6, i64 14460, !6, i64 14464, !6, i64 14468, !5, i64 14472, !6, i64 15240, !6, i64 15244, !6, i64 15248, !6, i64 15252, !6, i64 15256, !6, i64 15260, !6, i64 15264, !6, i64 15268, !6, i64 15272, !6, i64 15276, !6, i64 15280, !6, i64 15284, !6, i64 15288, !5, i64 15292, !6, i64 15296, !6, i64 15300, !5, i64 15304, !6, i64 15312, !6, i64 15316, !6, i64 15320, !6, i64 15324, !6, i64 15328, !6, i64 15332, !6, i64 15336, !6, i64 15340, !6, i64 15344, !6, i64 15348, !6, i64 15352, !6, i64 15356, !6, i64 15360, !6, i64 15364, !6, i64 15368, !6, i64 15372, !34, i64 15376, !6, i64 15384, !6, i64 15388, !6, i64 15392, !6, i64 15396, !6, i64 15400, !6, i64 15404, !6, i64 15408, !6, i64 15412, !6, i64 15416, !6, i64 15420, !6, i64 15424, !6, i64 15428, !6, i64 15432, !6, i64 15436, !6, i64 15440, !6, i64 15444, !6, i64 15448, !6, i64 15452, !6, i64 15456, !6, i64 15460, !6, i64 15464, !6, i64 15468, !6, i64 15472, !35, i64 15480, !36, i64 15488, !27, i64 15496, !35, i64 15504, !6, i64 15512, !6, i64 15516, !6, i64 15520, !6, i64 15524, !6, i64 15528, !6, i64 15532, !6, i64 15536, !6, i64 15540, !6, i64 15544, !6, i64 15548, !5, i64 15552, !5, i64 15576, !6, i64 15584, !6, i64 15588, !37, i64 15592, !6, i64 15596, !6, i64 15600, !6, i64 15604, !6, i64 15608, !6, i64 15612}
!39 = !{!38, !6, i64 15612}
!40 = !{!13, !6, i64 20}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = !{!13, !6, i64 2104}
!49 = !{!13, !6, i64 2972}
!50 = !{!13, !6, i64 2108}
!51 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = !{!5, !5, i64 0}
!55 = !{!"p1 short", !8, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!37, !37, i64 0}
!58 = !{!38, !6, i64 15452}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = !{!38, !6, i64 0}
!62 = !{!13, !6, i64 2100}
!63 = !{!38, !6, i64 20}
!64 = !{!13, !6, i64 4736}
!65 = !{!38, !6, i64 15248}
!66 = !{!13, !6, i64 2964}
!67 = !{!38, !6, i64 15360}
!68 = !{!38, !6, i64 15332}
!69 = !{!38, !6, i64 14364}
!70 = !{!13, !6, i64 1560}
!71 = !{!13, !6, i64 1568}
!72 = !{!38, !6, i64 15316}
!73 = !{!13, !6, i64 4704}
!74 = !{!13, !6, i64 4708}
!75 = !{!38, !6, i64 15320}
!76 = !{!38, !6, i64 15324}
!77 = !{!13, !6, i64 5104}
!78 = distinct !{!78, !22}
!79 = !{!38, !34, i64 15376}
!80 = !{!"p2 _ZTS11frame_store", !24, i64 0}
!81 = !{!"p1 _ZTS11frame_store", !8, i64 0}
!82 = !{!"decoded_picture_buffer", !80, i64 0, !80, i64 8, !80, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !81, i64 56}
!83 = !{!82, !6, i64 32}
!84 = !{!82, !6, i64 36}
!85 = !{!82, !6, i64 28}
!86 = !{!82, !80, i64 0}
!87 = !{!81, !81, i64 0}
!88 = !{!"p1 _ZTS16storable_picture", !8, i64 0}
!89 = !{!"frame_store", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !88, i64 40, !88, i64 48, !88, i64 56}
!90 = !{!89, !6, i64 4}
!91 = !{!89, !6, i64 8}
!92 = !{!89, !6, i64 36}
!93 = !{!89, !88, i64 40}
!94 = !{!"p2 short", !24, i64 0}
!95 = !{!"p4 short", !28, i64 0}
!96 = !{!"p5 short", !31, i64 0}
!97 = !{!"p3 short", !26, i64 0}
!98 = !{!"p3 omnipotent char", !26, i64 0}
!99 = !{!"p3 long long", !26, i64 0}
!100 = !{!"storable_picture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !6, i64 6360, !6, i64 6364, !6, i64 6368, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !6, i64 6392, !6, i64 6396, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !6, i64 6420, !6, i64 6424, !6, i64 6428, !6, i64 6432, !94, i64 6440, !95, i64 6448, !95, i64 6456, !96, i64 6464, !97, i64 6472, !12, i64 6480, !98, i64 6488, !99, i64 6496, !99, i64 6504, !95, i64 6512, !25, i64 6520, !25, i64 6528, !88, i64 6536, !88, i64 6544, !88, i64 6552, !6, i64 6560, !6, i64 6564, !6, i64 6568, !6, i64 6572, !6, i64 6576, !6, i64 6580, !6, i64 6584}
!101 = !{!100, !6, i64 4}
!102 = !{!100, !6, i64 6364}
!103 = !{!"DecRefPicMarking_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !34, i64 24}
!104 = !{!103, !34, i64 24}
!105 = !{!103, !6, i64 0}
!106 = !{!103, !6, i64 4}
end_hunk_0
