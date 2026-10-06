Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.dc, label %.lr.ph, label %.preheader, !llvm.loop !71

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %.197 = phi ptr [ %i.dp, %.lr.ph98 ], [ %.197.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17196 = phi ptr [ %i.dr, %.lr.ph98 ], [ %.17196.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17395 = phi ptr [ %i.du, %.lr.ph98 ], [ %.17395.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17594 = phi ptr [ %i.dx, %.lr.ph98 ], [ %.17594.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17793 = phi i32 [ %i.eb, %.lr.ph98 ], [ %.17793.unr, %.lr.ph98.prol.loopexit ]
  %.17992 = phi ptr [ %i.ea, %.lr.ph98 ], [ %.17992.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.197, i64 4
  %i.de = load float, ptr %.197, align 4, !tbaa !51
  store float %i.de, ptr %.17992, align 4, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %.17196, i64 4
  %i.dg = load float, ptr %.17196, align 4, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %.17992, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %.17395, i64 4
  %i.dj = load float, ptr %.17395, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %.17992, i64 8
  store float %i.dj, ptr %i.dk, align 4, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.17594, i64 4
  %i.dm = load float, ptr %.17594, align 4, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %.17992, i64 12
  store float %i.dm, ptr %i.dn, align 4, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.17992, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %i.dq = load float, ptr %i.dd, align 4, !tbaa !51
  store float %i.dq, ptr %i.do, align 4, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %.17196, i64 8
  %i.ds = load float, ptr %i.df, align 4, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %.17992, i64 20
  store float %i.ds, ptr %i.dt, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.17395, i64 8
  %i.dv = load float, ptr %i.di, align 4, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.17992, i64 24
  store float %i.dv, ptr %i.dw, align 4, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %.17594, i64 8
  %i.dy = load float, ptr %i.dl, align 4, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.17992, i64 28
  store float %i.dy, ptr %i.dz, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.17992, i64 32
  %i.eb = add nuw nsw i32 %.17793, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.eb, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph98, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge103, label %bb.c

._crit_edge103:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !57 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not99 = icmp sgt i32 %i.k, %i.j
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph102, %._crit_edge
  %i.r = phi i32 [ %.pre, %.lr.ph102 ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph102 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !36
  %i.t = load i32, ptr %i.l, align 4, !tbaa !43
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !16
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = shl nsw i64 %indvars.iv, 2               ; 4 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !36    ; 4 uses
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !43
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !16
  %i.ae = mul i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = mul i64 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af ; 2 uses
  %i.ah = or disjoint i64 %i.z, 1
  %i.ai = mul i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = or disjoint i64 %i.z, 2
  %i.al = mul i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = or disjoint i64 %i.z, 3
  %i.ao = mul i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.r, 3
  br i1 %i.aq, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.ar = phi i32 [ %i.r, %bb.c ], [ %i.by, %.lr.ph ] ; 5 uses
  %.078.lcssa = phi ptr [ %i.ap, %bb.c ], [ %i.bv, %.lr.ph ] ; 3 uses
  %.076.lcssa = phi i32 [ 0, %bb.c ], [ %i.bw, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.am, %bb.c ], [ %i.bu, %.lr.ph ] ; 3 uses
  %.072.lcssa = phi ptr [ %i.aj, %bb.c ], [ %i.bt, %.lr.ph ] ; 3 uses
  %.070.lcssa = phi ptr [ %i.ag, %bb.c ], [ %i.bs, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.y, %bb.c ], [ %i.br, %.lr.ph ] ; 6 uses
  %i.as = icmp slt i32 %.076.lcssa, %i.ar
  br i1 %i.as, label %.lr.ph98.preheader, label %._crit_edge

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.at = sub i32 %i.ar, %.076.lcssa
  %.neg = add i32 %.076.lcssa, 1
  %xtraiter = and i32 %i.at, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader
  %i.au = load float, ptr %.069.lcssa, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %.070.lcssa, i64 4
  store float %i.au, ptr %.070.lcssa, align 4, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %.072.lcssa, i64 4
  store float %i.ax, ptr %.072.lcssa, align 4, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4
  store float %i.ba, ptr %.074.lcssa, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 4
  store float %i.bd, ptr %.078.lcssa, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 16
  %i.bg = add nuw nsw i32 %.076.lcssa, 1
  br label %.lr.ph98.prol.loopexit

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.197.unr = phi ptr [ %.069.lcssa, %.lr.ph98.preheader ], [ %i.bf, %.lr.ph98.prol ]
  %.17196.unr = phi ptr [ %.070.lcssa, %.lr.ph98.preheader ], [ %i.av, %.lr.ph98.prol ]
  %.17395.unr = phi ptr [ %.072.lcssa, %.lr.ph98.preheader ], [ %i.ay, %.lr.ph98.prol ]
  %.17594.unr = phi ptr [ %.074.lcssa, %.lr.ph98.preheader ], [ %i.bb, %.lr.ph98.prol ]
  %.17793.unr = phi i32 [ %.076.lcssa, %.lr.ph98.preheader ], [ %i.bg, %.lr.ph98.prol ]
  %.17992.unr = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.be, %.lr.ph98.prol ]
  %i.bh = icmp eq i32 %i.ar, %.neg
  br i1 %i.bh, label %._crit_edge, label %.lr.ph98

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06985 = phi ptr [ %i.br, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.07084 = phi ptr [ %i.bs, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %.07283 = phi ptr [ %i.bt, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %.07482 = phi ptr [ %i.bu, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %.07681 = phi i32 [ %i.bw, %.lr.ph ], [ 0, %bb.c ]
  %.07880 = phi ptr [ %i.bv, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %6 = load <8 x float>, ptr %.06985, align 16, !tbaa !55 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.06985, i64 32
  %7 = load <8 x float>, ptr %i.bi, align 16, !tbaa !55 ; 2 uses
  %i.bj = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bk = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bl = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bm = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bo = shufflevector <4 x float> %i.bk, <4 x float> %i.bj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bp = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bq = shufflevector <4 x float> %i.bm, <4 x float> %i.bl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.bn, ptr %.07084, align 1, !tbaa !55
  store <4 x float> %i.bo, ptr %.07283, align 1, !tbaa !55
  store <4 x float> %i.bp, ptr %.07482, align 1, !tbaa !55
  store <4 x float> %i.bq, ptr %.07880, align 1, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %.06985, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.07084, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.07283, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.07482, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.07880, i64 16 ; 2 uses
  %i.bw = add nuw nsw i32 %.07681, 4              ; 3 uses
  %i.bx = or disjoint i32 %i.bw, 3
  %i.by = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %.preheader, !llvm.loop !79

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %.197 = phi ptr [ %i.cx, %.lr.ph98 ], [ %.197.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.17196 = phi ptr [ %i.cn, %.lr.ph98 ], [ %.17196.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17395 = phi ptr [ %i.cq, %.lr.ph98 ], [ %.17395.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17594 = phi ptr [ %i.ct, %.lr.ph98 ], [ %.17594.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17793 = phi i32 [ %i.cy, %.lr.ph98 ], [ %.17793.unr, %.lr.ph98.prol.loopexit ]
  %.17992 = phi ptr [ %i.cw, %.lr.ph98 ], [ %.17992.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %i.ca = load float, ptr %.197, align 4, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %.17196, i64 4
  store float %i.ca, ptr %.17196, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %.197, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %.17395, i64 4
  store float %i.cd, ptr %.17395, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %.17594, i64 4
  store float %i.cg, ptr %.17594, align 4, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %.197, i64 12
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %.17992, i64 4
  store float %i.cj, ptr %.17992, align 4, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.197, i64 16
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.17196, i64 8
  store float %i.cm, ptr %i.cb, align 4, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %.197, i64 20
  %i.cp = load float, ptr %i.co, align 4, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %.17395, i64 8
  store float %i.cp, ptr %i.ce, align 4, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.197, i64 24
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.17594, i64 8
  store float %i.cs, ptr %i.ch, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.197, i64 28
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.17992, i64 8
  store float %i.cv, ptr %i.ck, align 4, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.197, i64 32
  %i.cy = add nuw nsw i32 %.17793, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cy, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph98, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge103, label %bb.c

._crit_edge103:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = mul i64 %i.q, %i.o                       ; 8 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %factor.op.mul = mul i64 %i.x, %i.v
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ac = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %i.ad = mul i64 %i.r, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  %i.af = or disjoint i64 %i.ac, 1
  %i.ag = mul i64 %i.r, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag
  %i.ai = or disjoint i64 %i.ac, 2
  %i.aj = mul i64 %i.r, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj
  %i.al = or disjoint i64 %i.ac, 3
  %i.am = mul i64 %i.r, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.am
  %i.ao = or disjoint i64 %i.ac, 4
  %i.ap = mul i64 %i.r, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ap
  %i.ar = or disjoint i64 %i.ac, 5
  %i.as = mul i64 %i.r, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as
  %i.au = or disjoint i64 %i.ac, 6
  %i.av = mul i64 %i.r, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.ax = or disjoint i64 %i.ac, 7
  %i.ay = mul i64 %i.r, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.069 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.c ]
  %.05068 = phi ptr [ %i.ba, %.lr.ph ], [ %i.by, %bb.c ] ; 9 uses
  %.05167 = phi ptr [ %i.az, %.lr.ph ], [ %i.bv, %bb.c ] ; 2 uses
  %.05266 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bs, %bb.c ] ; 2 uses
  %.05365 = phi ptr [ %i.at, %.lr.ph ], [ %i.bp, %bb.c ] ; 2 uses
  %.05464 = phi ptr [ %i.aq, %.lr.ph ], [ %i.bm, %bb.c ] ; 2 uses
  %.05563 = phi ptr [ %i.an, %.lr.ph ], [ %i.bj, %bb.c ] ; 2 uses
  %.05662 = phi ptr [ %i.ak, %.lr.ph ], [ %i.bg, %bb.c ] ; 2 uses
  %.05761 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bd, %bb.c ] ; 2 uses
  %.05860 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bb, %bb.c ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05860, i64 4
  %i.bc = load float, ptr %.05860, align 4, !tbaa !51
  store float %i.bc, ptr %.05068, align 4, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %.05761, i64 4
  %i.be = load float, ptr %.05761, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %.05068, i64 4
  store float %i.be, ptr %i.bf, align 4, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.05662, i64 4
  %i.bh = load float, ptr %.05662, align 4, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  store float %i.bh, ptr %i.bi, align 4, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %.05563, i64 4
  %i.bk = load float, ptr %.05563, align 4, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %.05068, i64 12
  store float %i.bk, ptr %i.bl, align 4, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %.05464, i64 4
  %i.bn = load float, ptr %.05464, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %.05068, i64 16
  store float %i.bn, ptr %i.bo, align 4, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %.05365, i64 4
  %i.bq = load float, ptr %.05365, align 4, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %.05068, i64 20
  store float %i.bq, ptr %i.br, align 4, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %.05266, i64 4
  %i.bt = load float, ptr %.05266, align 4, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.12:bb.a
  %i.cr = shufflevector <4 x float> %i.cn, <4 x float> %i.cm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.co, ptr %.078186, align 16, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %.078186, i64 16
  store <4 x float> %i.cp, ptr %i.cs, align 16, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %.078186, i64 32
  store <4 x float> %i.cq, ptr %i.ct, align 16, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %.078186, i64 48
  store <4 x float> %i.cr, ptr %i.cu, align 16, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %.069191, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.070190, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.072189, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.074188, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.078186, i64 64 ; 2 uses
  %i.da = add nuw nsw i32 %.076187, 4             ; 3 uses
  %i.db = or disjoint i32 %i.da, 3
  %i.dc = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph, label %.preheader, !llvm.loop !102

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %.1203 = phi ptr [ %i.dq, %.lr.ph204 ], [ %.1203.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.171202 = phi ptr [ %i.ds, %.lr.ph204 ], [ %.171202.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.173201 = phi ptr [ %i.dv, %.lr.ph204 ], [ %.173201.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.175200 = phi ptr [ %i.dy, %.lr.ph204 ], [ %.175200.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.177199 = phi i32 [ %i.ec, %.lr.ph204 ], [ %.177199.unr, %.lr.ph204.prol.loopexit ]
  %.179198 = phi ptr [ %i.eb, %.lr.ph204 ], [ %.179198.unr, %.lr.ph204.prol.loopexit ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1203, i64 4
  %i.df = load float, ptr %.1203, align 4, !tbaa !51
  store float %i.df, ptr %.179198, align 4, !tbaa !51
  %i.dg = getelementptr inbounds nuw i8, ptr %.171202, i64 4
  %i.dh = load float, ptr %.171202, align 4, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %.179198, i64 4
  store float %i.dh, ptr %i.di, align 4, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %.173201, i64 4
  %i.dk = load float, ptr %.173201, align 4, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.179198, i64 8
  store float %i.dk, ptr %i.dl, align 4, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %.175200, i64 4
  %i.dn = load float, ptr %.175200, align 4, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.179198, i64 12
  store float %i.dn, ptr %i.do, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %.179198, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.1203, i64 8
  %i.dr = load float, ptr %i.de, align 4, !tbaa !51
  store float %i.dr, ptr %i.dp, align 4, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %.171202, i64 8
  %i.dt = load float, ptr %i.dg, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.179198, i64 20
  store float %i.dt, ptr %i.du, align 4, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %.173201, i64 8
  %i.dw = load float, ptr %i.dj, align 4, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %.179198, i64 24
  store float %i.dw, ptr %i.dx, align 4, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %.175200, i64 8
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.179198, i64 28
  store float %i.dz, ptr %i.ea, align 4, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %.179198, i64 32
  %i.ec = add nuw nsw i32 %.177199, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ec, %i.as
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph204, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond216.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond216.not, label %._crit_edge207, label %.noexc84

._crit_edge207:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge207, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not205 = icmp sgt i32 %i.k, %i.j
  br i1 %.not205, label %._crit_edge207, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !41
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.r = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !36, !noalias !118
  %i.t = load i64, ptr %i.l, align 8, !tbaa !39, !noalias !118
  %i.u = mul i64 %i.t, %indvars.iv
  %i.v = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !118
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = shl nsw i64 %indvars.iv, 2               ; 4 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !36, !noalias !119 ; 4 uses
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !39, !noalias !119 ; 4 uses
  %i.ab = mul i64 %i.aa, %i.y
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !119 ; 4 uses
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = or disjoint i64 %i.y, 1
  %i.ag = mul i64 %i.aa, %i.af
  %i.ah = mul i64 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ah ; 2 uses
  %i.aj = or disjoint i64 %i.y, 2
  %i.ak = mul i64 %i.aa, %i.aj
  %i.al = mul i64 %i.ak, %i.ac
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.al ; 2 uses
  %i.an = or disjoint i64 %i.y, 3
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ao, %i.ac
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ap ; 2 uses
  %i.ar = icmp sgt i32 %i.r, 3
  br i1 %i.ar, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.as = phi i32 [ %i.r, %.noexc ], [ %i.bz, %.lr.ph ] ; 5 uses
  %.078.lcssa = phi ptr [ %i.aq, %.noexc ], [ %i.bw, %.lr.ph ] ; 3 uses
  %.076.lcssa = phi i32 [ 0, %.noexc ], [ %i.bx, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.bv, %.lr.ph ] ; 3 uses
  %.072.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.bu, %.lr.ph ] ; 3 uses
  %.070.lcssa = phi ptr [ %i.ae, %.noexc ], [ %i.bt, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.x, %.noexc ], [ %i.bs, %.lr.ph ] ; 6 uses
  %i.at = icmp slt i32 %.076.lcssa, %i.as
  br i1 %i.at, label %.lr.ph204.preheader, label %._crit_edge

.lr.ph204.preheader:                              ; preds = %.preheader
  %i.au = sub i32 %i.as, %.076.lcssa
  %.neg = add i32 %.076.lcssa, 1
  %xtraiter = and i32 %i.au, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader
  %i.av = load float, ptr %.069.lcssa, align 4, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %.070.lcssa, i64 4
  store float %i.av, ptr %.070.lcssa, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %.072.lcssa, i64 4
  store float %i.ay, ptr %.072.lcssa, align 4, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4
  store float %i.bb, ptr %.074.lcssa, align 4, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 4
  store float %i.be, ptr %.078.lcssa, align 4, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 16
  %i.bh = add nuw nsw i32 %.076.lcssa, 1
  br label %.lr.ph204.prol.loopexit

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader
  %.1203.unr = phi ptr [ %.069.lcssa, %.lr.ph204.preheader ], [ %i.bg, %.lr.ph204.prol ]
  %.171202.unr = phi ptr [ %.070.lcssa, %.lr.ph204.preheader ], [ %i.aw, %.lr.ph204.prol ]
  %.173201.unr = phi ptr [ %.072.lcssa, %.lr.ph204.preheader ], [ %i.az, %.lr.ph204.prol ]
  %.175200.unr = phi ptr [ %.074.lcssa, %.lr.ph204.preheader ], [ %i.bc, %.lr.ph204.prol ]
  %.177199.unr = phi i32 [ %.076.lcssa, %.lr.ph204.preheader ], [ %i.bh, %.lr.ph204.prol ]
  %.179198.unr = phi ptr [ %.078.lcssa, %.lr.ph204.preheader ], [ %i.bf, %.lr.ph204.prol ]
  %i.bi = icmp eq i32 %i.as, %.neg
  br i1 %i.bi, label %._crit_edge, label %.lr.ph204

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.069191 = phi ptr [ %i.bs, %.lr.ph ], [ %i.x, %.noexc ] ; 3 uses
  %.070190 = phi ptr [ %i.bt, %.lr.ph ], [ %i.ae, %.noexc ] ; 2 uses
  %.072189 = phi ptr [ %i.bu, %.lr.ph ], [ %i.ai, %.noexc ] ; 2 uses
  %.074188 = phi ptr [ %i.bv, %.lr.ph ], [ %i.am, %.noexc ] ; 2 uses
  %.076187 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.noexc ]
  %.078186 = phi ptr [ %i.bw, %.lr.ph ], [ %i.aq, %.noexc ] ; 2 uses
  %6 = load <8 x float>, ptr %.069191, align 16, !tbaa !55 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.069191, i64 32
  %7 = load <8 x float>, ptr %i.bj, align 16, !tbaa !55 ; 2 uses
  %i.bk = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bl = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bm = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bn = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bp = shufflevector <4 x float> %i.bl, <4 x float> %i.bk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bq = shufflevector <4 x float> %i.bm, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.br = shufflevector <4 x float> %i.bn, <4 x float> %i.bm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.bo, ptr %.070190, align 1, !tbaa !55
  store <4 x float> %i.bp, ptr %.072189, align 1, !tbaa !55
  store <4 x float> %i.bq, ptr %.074188, align 1, !tbaa !55
  store <4 x float> %i.br, ptr %.078186, align 1, !tbaa !55
  %i.bs = getelementptr inbounds nuw i8, ptr %.069191, i64 64 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.070190, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.072189, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.074188, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.078186, i64 16 ; 2 uses
  %i.bx = add nuw nsw i32 %.076187, 4             ; 3 uses
  %i.by = or disjoint i32 %i.bx, 3
  %i.bz = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %.preheader, !llvm.loop !116

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %.1203 = phi ptr [ %i.cy, %.lr.ph204 ], [ %.1203.unr, %.lr.ph204.prol.loopexit ] ; 9 uses
  %.171202 = phi ptr [ %i.co, %.lr.ph204 ], [ %.171202.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.173201 = phi ptr [ %i.cr, %.lr.ph204 ], [ %.173201.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.175200 = phi ptr [ %i.cu, %.lr.ph204 ], [ %.175200.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.177199 = phi i32 [ %i.cz, %.lr.ph204 ], [ %.177199.unr, %.lr.ph204.prol.loopexit ]
  %.179198 = phi ptr [ %i.cx, %.lr.ph204 ], [ %.179198.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %i.cb = load float, ptr %.1203, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %.171202, i64 4
  store float %i.cb, ptr %.171202, align 4, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %.1203, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.173201, i64 4
  store float %i.ce, ptr %.173201, align 4, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %.1203, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %.175200, i64 4
  store float %i.ch, ptr %.175200, align 4, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %.1203, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.179198, i64 4
  store float %i.ck, ptr %.179198, align 4, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %.1203, i64 16
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %.171202, i64 8
  store float %i.cn, ptr %i.cc, align 4, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %.1203, i64 20
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.173201, i64 8
  store float %i.cq, ptr %i.cf, align 4, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %.1203, i64 24
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.175200, i64 8
  store float %i.ct, ptr %i.ci, align 4, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %.1203, i64 28
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.179198, i64 8
  store float %i.cw, ptr %i.cl, align 4, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %.1203, i64 32
  %i.cz = add nuw nsw i32 %.177199, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cz, %i.as
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph204, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond216.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond216.not, label %._crit_edge207, label %.noexc

._crit_edge207:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge207, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not276 = icmp sgt i32 %i.k, %i.j
  br i1 %.not276, label %._crit_edge278.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !125 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !125
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !125
  %factor.op.mul = mul i64 %i.n, %i.p             ; 8 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !126
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !126
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !126
  %factor.op.mul293 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc72.preheader, label %._crit_edge278.split

.noexc72.preheader:                               ; preds = %.noexc72.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc72

.noexc72:                                         ; preds = %.noexc72.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc72.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = shl nsw i64 %indvars.iv, 3               ; 8 uses
  %.reass = mul i64 %factor.op.mul, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.ab = or disjoint i64 %i.z, 1
  %.reass280 = mul i64 %factor.op.mul, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass280
  %i.ad = or disjoint i64 %i.z, 2
  %.reass282 = mul i64 %factor.op.mul, %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass282
  %i.af = or disjoint i64 %i.z, 3
  %.reass284 = mul i64 %factor.op.mul, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass284
  %i.ah = or disjoint i64 %i.z, 4
  %.reass286 = mul i64 %factor.op.mul, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass286
  %i.aj = or disjoint i64 %i.z, 5
  %.reass288 = mul i64 %factor.op.mul, %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass288
  %i.al = or disjoint i64 %i.z, 6
  %.reass290 = mul i64 %factor.op.mul, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass290
  %i.an = or disjoint i64 %i.z, 7
  %.reass292 = mul i64 %factor.op.mul, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass292
  %.reass294 = mul i64 %factor.op.mul293, %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass294
  br label %bb.c

bb.c:                                             ; preds = %.noexc72, %bb.c
  %.0275 = phi i32 [ 0, %.noexc72 ], [ %i.bo, %bb.c ]
  %.050274 = phi ptr [ %i.ap, %.noexc72 ], [ %i.bn, %bb.c ] ; 9 uses
  %.051273 = phi ptr [ %i.ao, %.noexc72 ], [ %i.bk, %bb.c ] ; 2 uses
  %.052272 = phi ptr [ %i.am, %.noexc72 ], [ %i.bh, %bb.c ] ; 2 uses
  %.053271 = phi ptr [ %i.ak, %.noexc72 ], [ %i.be, %bb.c ] ; 2 uses
  %.054270 = phi ptr [ %i.ai, %.noexc72 ], [ %i.bb, %bb.c ] ; 2 uses
  %.055269 = phi ptr [ %i.ag, %.noexc72 ], [ %i.ay, %bb.c ] ; 2 uses
  %.056268 = phi ptr [ %i.ae, %.noexc72 ], [ %i.av, %bb.c ] ; 2 uses
  %.057267 = phi ptr [ %i.ac, %.noexc72 ], [ %i.as, %bb.c ] ; 2 uses
  %.058266 = phi ptr [ %i.aa, %.noexc72 ], [ %i.aq, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.058266, i64 4
  %i.ar = load float, ptr %.058266, align 4, !tbaa !51
  store float %i.ar, ptr %.050274, align 4, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %.057267, i64 4
  %i.at = load float, ptr %.057267, align 4, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %.050274, i64 4
  store float %i.at, ptr %i.au, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %.056268, i64 4
  %i.aw = load float, ptr %.056268, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %.050274, i64 8
  store float %i.aw, ptr %i.ax, align 4, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %.055269, i64 4
  %i.az = load float, ptr %.055269, align 4, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %.050274, i64 12
  store float %i.az, ptr %i.ba, align 4, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %.054270, i64 4
  %i.bc = load float, ptr %.054270, align 4, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %.050274, i64 16
  store float %i.bc, ptr %i.bd, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %.053271, i64 4
  %i.bf = load float, ptr %.053271, align 4, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.050274, i64 20
  store float %i.bf, ptr %i.bg, align 4, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %.052272, i64 4
  %i.bi = load float, ptr %.052272, align 4, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %.050274, i64 24
  store float %i.bi, ptr %i.bj, align 4, !tbaa !51
end_hunk_1
begin_hunk_2_@_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.24:bb.a
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  %bound0148 = icmp ult ptr %.068.lcssa, %scevgep128
  %bound1149 = icmp ult ptr %.059.lcssa, %scevgep122
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  %bound0152 = icmp ult ptr %.066.lcssa, %scevgep126
  %bound1153 = icmp ult ptr %.064.lcssa, %scevgep124
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  %bound0156 = icmp ult ptr %.066.lcssa, %scevgep128
  %bound1157 = icmp ult ptr %.059.lcssa, %scevgep124
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  %bound0160 = icmp ult ptr %.064.lcssa, %scevgep128
  %bound1161 = icmp ult ptr %.059.lcssa, %scevgep126
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  br i1 %conflict.rdx163, label %.lr.ph88.preheader180, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 8589934584              ; 5 uses
  %i.bc = shl nuw nsw i64 %n.vec, 3
  %i.bd = getelementptr i8, ptr %.059.lcssa, i64 %i.bc
  %i.be = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.bf = getelementptr i8, ptr %.060.lcssa, i64 %i.be
  %i.bg = trunc i64 %n.vec to i32
  %i.bh = add i32 %.062.lcssa, %i.bg
  %i.bi = getelementptr i8, ptr %.064.lcssa, i64 %i.be
  %i.bj = getelementptr i8, ptr %.066.lcssa, i64 %i.be
  %i.bk = getelementptr i8, ptr %.068.lcssa, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %i.bm = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep164 = getelementptr i8, ptr %i.bm, i64 8
  %i.bn = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep165 = getelementptr i8, ptr %i.bn, i64 16
  %i.bo = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep166 = getelementptr i8, ptr %i.bo, i64 24
  %i.bp = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep167 = getelementptr i8, ptr %i.bp, i64 32
  %i.bq = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep168 = getelementptr i8, ptr %i.bq, i64 40
  %i.br = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep169 = getelementptr i8, ptr %i.br, i64 48
  %i.bs = getelementptr i8, ptr %.059.lcssa, i64 %i.bl ; 4 uses
  %next.gep170 = getelementptr i8, ptr %i.bs, i64 56
  %i.bt = shl i64 %index, 1                       ; 4 uses
  %next.gep171 = getelementptr i8, ptr %.060.lcssa, i64 %i.bt
  %next.gep172 = getelementptr i8, ptr %.064.lcssa, i64 %i.bt
  %next.gep173 = getelementptr i8, ptr %.066.lcssa, i64 %i.bt
  %next.gep174 = getelementptr i8, ptr %.068.lcssa, i64 %i.bt
  %i.bu = load i16, ptr %next.gep, align 2, !tbaa !60, !alias.scope !214
  %i.bv = load i16, ptr %next.gep164, align 2, !tbaa !60, !alias.scope !214
  %i.bw = load i16, ptr %next.gep165, align 2, !tbaa !60, !alias.scope !214
  %i.bx = load i16, ptr %next.gep166, align 2, !tbaa !60, !alias.scope !214
  %i.by = load i16, ptr %next.gep167, align 2, !tbaa !60, !alias.scope !214
  %i.bz = load i16, ptr %next.gep168, align 2, !tbaa !60, !alias.scope !214
  %i.ca = load i16, ptr %next.gep169, align 2, !tbaa !60, !alias.scope !214
  %i.cb = load i16, ptr %next.gep170, align 2, !tbaa !60, !alias.scope !214
  %i.cc = insertelement <8 x i16> poison, i16 %i.bu, i64 0
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 1
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 2
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 3
  %i.cg = insertelement <8 x i16> %i.cf, i16 %i.by, i64 4
  %i.ch = insertelement <8 x i16> %i.cg, i16 %i.bz, i64 5
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.ca, i64 6
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 7
  store <8 x i16> %i.cj, ptr %next.gep171, align 2, !tbaa !60, !alias.scope !215, !noalias !216
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cl = getelementptr i8, ptr %i.bm, i64 10
  %i.cm = getelementptr i8, ptr %i.bn, i64 18
  %i.cn = getelementptr i8, ptr %i.bo, i64 26
  %i.co = getelementptr i8, ptr %i.bp, i64 34
  %i.cp = getelementptr i8, ptr %i.bq, i64 42
  %i.cq = getelementptr i8, ptr %i.br, i64 50
  %i.cr = getelementptr i8, ptr %i.bs, i64 58
  %i.cs = load i16, ptr %i.ck, align 2, !tbaa !60, !alias.scope !214
  %i.ct = load i16, ptr %i.cl, align 2, !tbaa !60, !alias.scope !214
  %i.cu = load i16, ptr %i.cm, align 2, !tbaa !60, !alias.scope !214
  %i.cv = load i16, ptr %i.cn, align 2, !tbaa !60, !alias.scope !214
  %i.cw = load i16, ptr %i.co, align 2, !tbaa !60, !alias.scope !214
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !60, !alias.scope !214
  %i.cy = load i16, ptr %i.cq, align 2, !tbaa !60, !alias.scope !214
  %i.cz = load i16, ptr %i.cr, align 2, !tbaa !60, !alias.scope !214
  %i.da = insertelement <8 x i16> poison, i16 %i.cs, i64 0
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 1
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 2
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 3
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 4
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 5
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 6
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 7
  store <8 x i16> %i.dh, ptr %next.gep174, align 2, !tbaa !60, !alias.scope !217, !noalias !218
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.dj = getelementptr i8, ptr %i.bm, i64 12
  %i.dk = getelementptr i8, ptr %i.bn, i64 20
  %i.dl = getelementptr i8, ptr %i.bo, i64 28
  %i.dm = getelementptr i8, ptr %i.bp, i64 36
  %i.dn = getelementptr i8, ptr %i.bq, i64 44
  %i.do = getelementptr i8, ptr %i.br, i64 52
  %i.dp = getelementptr i8, ptr %i.bs, i64 60
  %i.dq = load i16, ptr %i.di, align 2, !tbaa !60, !alias.scope !214
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !60, !alias.scope !214
  %i.ds = load i16, ptr %i.dk, align 2, !tbaa !60, !alias.scope !214
  %i.dt = load i16, ptr %i.dl, align 2, !tbaa !60, !alias.scope !214
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !60, !alias.scope !214
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !60, !alias.scope !214
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !60, !alias.scope !214
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !60, !alias.scope !214
  %i.dy = insertelement <8 x i16> poison, i16 %i.dq, i64 0
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 1
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 2
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 3
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 4
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 5
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 6
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 7
  store <8 x i16> %i.ef, ptr %next.gep173, align 2, !tbaa !60, !alias.scope !219, !noalias !220
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.eh = getelementptr i8, ptr %i.bm, i64 14
  %i.ei = getelementptr i8, ptr %i.bn, i64 22
  %i.ej = getelementptr i8, ptr %i.bo, i64 30
  %i.ek = getelementptr i8, ptr %i.bp, i64 38
  %i.el = getelementptr i8, ptr %i.bq, i64 46
  %i.em = getelementptr i8, ptr %i.br, i64 54
  %i.en = getelementptr i8, ptr %i.bs, i64 62
  %i.eo = load i16, ptr %i.eg, align 2, !tbaa !60, !alias.scope !214
  %i.ep = load i16, ptr %i.eh, align 2, !tbaa !60, !alias.scope !214
  %i.eq = load i16, ptr %i.ei, align 2, !tbaa !60, !alias.scope !214
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !60, !alias.scope !214
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !60, !alias.scope !214
  %i.et = load i16, ptr %i.el, align 2, !tbaa !60, !alias.scope !214
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !60, !alias.scope !214
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !60, !alias.scope !214
  %i.ew = insertelement <8 x i16> poison, i16 %i.eo, i64 0
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 1
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 2
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 3
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 4
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 5
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 6
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 7
  store <8 x i16> %i.fd, ptr %next.gep172, align 2, !tbaa !60, !alias.scope !221, !noalias !214
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph88.preheader180

.lr.ph88.preheader180:                            ; preds = %vector.memcheck, %.lr.ph88.preheader, %middle.block
  %.187.ph = phi ptr [ %.059.lcssa, %vector.memcheck ], [ %.059.lcssa, %.lr.ph88.preheader ], [ %i.bd, %middle.block ] ; 6 uses
  %.16186.ph = phi ptr [ %.060.lcssa, %vector.memcheck ], [ %.060.lcssa, %.lr.ph88.preheader ], [ %i.bf, %middle.block ] ; 3 uses
  %.16385.ph = phi i32 [ %.062.lcssa, %vector.memcheck ], [ %.062.lcssa, %.lr.ph88.preheader ], [ %i.bh, %middle.block ] ; 4 uses
  %.16584.ph = phi ptr [ %.064.lcssa, %vector.memcheck ], [ %.064.lcssa, %.lr.ph88.preheader ], [ %i.bi, %middle.block ] ; 3 uses
  %.16783.ph = phi ptr [ %.066.lcssa, %vector.memcheck ], [ %.066.lcssa, %.lr.ph88.preheader ], [ %i.bj, %middle.block ] ; 3 uses
  %.16982.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph88.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %i.ff = sub i32 %i.ar, %.16385.ph
  %.neg = add i32 %.16385.ph, 1
  %xtraiter = and i32 %i.ff, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph88.prol.loopexit, label %.lr.ph88.prol

.lr.ph88.prol:                                    ; preds = %.lr.ph88.preheader180
  %i.fg = load i16, ptr %.187.ph, align 2, !tbaa !60
  %i.fh = getelementptr inbounds nuw i8, ptr %.16186.ph, i64 2
  store i16 %i.fg, ptr %.16186.ph, align 2, !tbaa !60
  %i.fi = getelementptr inbounds nuw i8, ptr %.187.ph, i64 2
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !60
  %i.fk = getelementptr inbounds nuw i8, ptr %.16982.ph, i64 2
  store i16 %i.fj, ptr %.16982.ph, align 2, !tbaa !60
  %i.fl = getelementptr inbounds nuw i8, ptr %.187.ph, i64 4
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !60
  %i.fn = getelementptr inbounds nuw i8, ptr %.16783.ph, i64 2
  store i16 %i.fm, ptr %.16783.ph, align 2, !tbaa !60
  %i.fo = getelementptr inbounds nuw i8, ptr %.187.ph, i64 6
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %.16584.ph, i64 2
  store i16 %i.fp, ptr %.16584.ph, align 2, !tbaa !60
  %i.fr = getelementptr inbounds nuw i8, ptr %.187.ph, i64 8
  %i.fs = add nuw nsw i32 %.16385.ph, 1
  br label %.lr.ph88.prol.loopexit

.lr.ph88.prol.loopexit:                           ; preds = %.lr.ph88.prol, %.lr.ph88.preheader180
  %.187.unr = phi ptr [ %.187.ph, %.lr.ph88.preheader180 ], [ %i.fr, %.lr.ph88.prol ]
  %.16186.unr = phi ptr [ %.16186.ph, %.lr.ph88.preheader180 ], [ %i.fh, %.lr.ph88.prol ]
  %.16385.unr = phi i32 [ %.16385.ph, %.lr.ph88.preheader180 ], [ %i.fs, %.lr.ph88.prol ]
  %.16584.unr = phi ptr [ %.16584.ph, %.lr.ph88.preheader180 ], [ %i.fq, %.lr.ph88.prol ]
  %.16783.unr = phi ptr [ %.16783.ph, %.lr.ph88.preheader180 ], [ %i.fn, %.lr.ph88.prol ]
  %.16982.unr = phi ptr [ %.16982.ph, %.lr.ph88.preheader180 ], [ %i.fk, %.lr.ph88.prol ]
  %i.ft = icmp eq i32 %i.ar, %.neg
  br i1 %i.ft, label %._crit_edge, label %.lr.ph88

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.05975 = phi ptr [ %i.ge, %.lr.ph ], [ %i.y, %bb.c ] ; 2 uses
  %.06074 = phi ptr [ %i.gf, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %.06273 = phi i32 [ %i.gj, %.lr.ph ], [ 0, %bb.c ]
  %.06472 = phi ptr [ %i.gi, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %.06671 = phi ptr [ %i.gh, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %.06870 = phi ptr [ %i.gg, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %6 = load <16 x i16>, ptr %.05975, align 1, !tbaa !55 ; 2 uses
  %i.fu = shufflevector <16 x i16> %6, <16 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.fv = bitcast <8 x i16> %i.fu to <2 x i64>
  %i.fw = shufflevector <16 x i16> %6, <16 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.fx = bitcast <8 x i16> %i.fw to <2 x i64>
  %i.fy = extractelement <2 x i64> %i.fv, i64 0
  store i64 %i.fy, ptr %.06074, align 1, !tbaa !55
  %i.fz = bitcast <8 x i16> %i.fu to <2 x i64>
  %i.ga = extractelement <2 x i64> %i.fz, i64 1
  store i64 %i.ga, ptr %.06870, align 1, !tbaa !55
  %i.gb = extractelement <2 x i64> %i.fx, i64 0
  store i64 %i.gb, ptr %.06671, align 1, !tbaa !55
  %i.gc = bitcast <8 x i16> %i.fw to <2 x i64>
  %i.gd = extractelement <2 x i64> %i.gc, i64 1
  store i64 %i.gd, ptr %.06472, align 1, !tbaa !55
  %i.ge = getelementptr inbounds nuw i8, ptr %.05975, i64 32 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.06074, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.06870, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.06671, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.06472, i64 8 ; 2 uses
  %i.gj = add nuw nsw i32 %.06273, 4              ; 3 uses
  %i.gk = or disjoint i32 %i.gj, 3
  %i.gl = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.gm = icmp slt i32 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph, label %.preheader, !llvm.loop !212

.lr.ph88:                                         ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88
  %.187 = phi ptr [ %i.hk, %.lr.ph88 ], [ %.187.unr, %.lr.ph88.prol.loopexit ] ; 9 uses
  %.16186 = phi ptr [ %i.ha, %.lr.ph88 ], [ %.16186.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16385 = phi i32 [ %i.hl, %.lr.ph88 ], [ %.16385.unr, %.lr.ph88.prol.loopexit ]
  %.16584 = phi ptr [ %i.hj, %.lr.ph88 ], [ %.16584.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16783 = phi ptr [ %i.hg, %.lr.ph88 ], [ %.16783.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16982 = phi ptr [ %i.hd, %.lr.ph88 ], [ %.16982.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %i.gn = load i16, ptr %.187, align 2, !tbaa !60
  %i.go = getelementptr inbounds nuw i8, ptr %.16186, i64 2
  store i16 %i.gn, ptr %.16186, align 2, !tbaa !60
  %i.gp = getelementptr inbounds nuw i8, ptr %.187, i64 2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !60
  %i.gr = getelementptr inbounds nuw i8, ptr %.16982, i64 2
  store i16 %i.gq, ptr %.16982, align 2, !tbaa !60
  %i.gs = getelementptr inbounds nuw i8, ptr %.187, i64 4
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !60
  %i.gu = getelementptr inbounds nuw i8, ptr %.16783, i64 2
  store i16 %i.gt, ptr %.16783, align 2, !tbaa !60
  %i.gv = getelementptr inbounds nuw i8, ptr %.187, i64 6
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !60
  %i.gx = getelementptr inbounds nuw i8, ptr %.16584, i64 2
  store i16 %i.gw, ptr %.16584, align 2, !tbaa !60
  %i.gy = getelementptr inbounds nuw i8, ptr %.187, i64 8
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !60
  %i.ha = getelementptr inbounds nuw i8, ptr %.16186, i64 4
  store i16 %i.gz, ptr %i.go, align 2, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %.187, i64 10
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !60
  %i.hd = getelementptr inbounds nuw i8, ptr %.16982, i64 4
  store i16 %i.hc, ptr %i.gr, align 2, !tbaa !60
  %i.he = getelementptr inbounds nuw i8, ptr %.187, i64 12
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !60
  %i.hg = getelementptr inbounds nuw i8, ptr %.16783, i64 4
  store i16 %i.hf, ptr %i.gu, align 2, !tbaa !60
  %i.hh = getelementptr inbounds nuw i8, ptr %.187, i64 14
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %.16584, i64 4
  store i16 %i.hi, ptr %i.gx, align 2, !tbaa !60
  %i.hk = getelementptr inbounds nuw i8, ptr %.187, i64 16
  %i.hl = add nuw nsw i32 %.16385, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.hl, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph88, !llvm.loop !213

._crit_edge:                                      ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond102.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond102.not, label %._crit_edge93, label %bb.c

._crit_edge93:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge93, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = mul i64 %i.q, %i.o                       ; 8 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %factor.op.mul = mul i64 %i.x, %i.v
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ac = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %i.ad = mul i64 %i.r, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  %i.af = or disjoint i64 %i.ac, 1
  %i.ag = mul i64 %i.r, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag
  %i.ai = or disjoint i64 %i.ac, 2
  %i.aj = mul i64 %i.r, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj
  %i.al = or disjoint i64 %i.ac, 3
  %i.am = mul i64 %i.r, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.am
  %i.ao = or disjoint i64 %i.ac, 4
  %i.ap = mul i64 %i.r, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ap
  %i.ar = or disjoint i64 %i.ac, 5
  %i.as = mul i64 %i.r, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as
  %i.au = or disjoint i64 %i.ac, 6
  %i.av = mul i64 %i.r, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.ax = or disjoint i64 %i.ac, 7
  %i.ay = mul i64 %i.r, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.069 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.c ]
  %.05068 = phi ptr [ %i.ba, %.lr.ph ], [ %i.by, %bb.c ] ; 9 uses
  %.05167 = phi ptr [ %i.az, %.lr.ph ], [ %i.bv, %bb.c ] ; 2 uses
  %.05266 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bs, %bb.c ] ; 2 uses
  %.05365 = phi ptr [ %i.at, %.lr.ph ], [ %i.bp, %bb.c ] ; 2 uses
  %.05464 = phi ptr [ %i.aq, %.lr.ph ], [ %i.bm, %bb.c ] ; 2 uses
  %.05563 = phi ptr [ %i.an, %.lr.ph ], [ %i.bj, %bb.c ] ; 2 uses
  %.05662 = phi ptr [ %i.ak, %.lr.ph ], [ %i.bg, %bb.c ] ; 2 uses
  %.05761 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bd, %bb.c ] ; 2 uses
  %.05860 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bb, %bb.c ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.bc = load i16, ptr %.05860, align 2, !tbaa !60
  store i16 %i.bc, ptr %.05068, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  %i.be = load i16, ptr %.05761, align 2, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %.05068, i64 2
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.05662, i64 2
  %i.bh = load i16, ptr %.05662, align 2, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %.05068, i64 4
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %.05563, i64 2
  %i.bk = load i16, ptr %.05563, align 2, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %.05068, i64 6
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %.05464, i64 2
  %i.bn = load i16, ptr %.05464, align 2, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %.05365, i64 2
  %i.bq = load i16, ptr %.05365, align 2, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %.05068, i64 10
end_hunk_2
begin_hunk_3_@_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.36:bb.a
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %.068.lcssa, %scevgep232
  %bound1253 = icmp ult ptr %.059.lcssa, %scevgep226
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %.066.lcssa, %scevgep230
  %bound1257 = icmp ult ptr %.064.lcssa, %scevgep228
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %.066.lcssa, %scevgep232
  %bound1261 = icmp ult ptr %.059.lcssa, %scevgep228
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %.064.lcssa, %scevgep232
  %bound1265 = icmp ult ptr %.059.lcssa, %scevgep230
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  br i1 %conflict.rdx267, label %.lr.ph194.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 8589934584              ; 5 uses
  %i.bd = shl nuw nsw i64 %n.vec, 3
  %i.be = getelementptr i8, ptr %.059.lcssa, i64 %i.bd
  %i.bf = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.bg = getelementptr i8, ptr %.060.lcssa, i64 %i.bf
  %i.bh = trunc i64 %n.vec to i32
  %i.bi = add i32 %.062.lcssa, %i.bh
  %i.bj = getelementptr i8, ptr %.064.lcssa, i64 %i.bf
  %i.bk = getelementptr i8, ptr %.066.lcssa, i64 %i.bf
  %i.bl = getelementptr i8, ptr %.068.lcssa, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %i.bn = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep268 = getelementptr i8, ptr %i.bn, i64 8
  %i.bo = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep269 = getelementptr i8, ptr %i.bo, i64 16
  %i.bp = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep270 = getelementptr i8, ptr %i.bp, i64 24
  %i.bq = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep271 = getelementptr i8, ptr %i.bq, i64 32
  %i.br = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep272 = getelementptr i8, ptr %i.br, i64 40
  %i.bs = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep273 = getelementptr i8, ptr %i.bs, i64 48
  %i.bt = getelementptr i8, ptr %.059.lcssa, i64 %i.bm ; 4 uses
  %next.gep274 = getelementptr i8, ptr %i.bt, i64 56
  %i.bu = shl i64 %index, 1                       ; 4 uses
  %next.gep275 = getelementptr i8, ptr %.060.lcssa, i64 %i.bu
  %next.gep276 = getelementptr i8, ptr %.064.lcssa, i64 %i.bu
  %next.gep277 = getelementptr i8, ptr %.066.lcssa, i64 %i.bu
  %next.gep278 = getelementptr i8, ptr %.068.lcssa, i64 %i.bu
  %i.bv = load i16, ptr %next.gep, align 2, !tbaa !60, !alias.scope !268
  %i.bw = load i16, ptr %next.gep268, align 2, !tbaa !60, !alias.scope !268
  %i.bx = load i16, ptr %next.gep269, align 2, !tbaa !60, !alias.scope !268
  %i.by = load i16, ptr %next.gep270, align 2, !tbaa !60, !alias.scope !268
  %i.bz = load i16, ptr %next.gep271, align 2, !tbaa !60, !alias.scope !268
  %i.ca = load i16, ptr %next.gep272, align 2, !tbaa !60, !alias.scope !268
  %i.cb = load i16, ptr %next.gep273, align 2, !tbaa !60, !alias.scope !268
  %i.cc = load i16, ptr %next.gep274, align 2, !tbaa !60, !alias.scope !268
  %i.cd = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 1
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 2
  %i.cg = insertelement <8 x i16> %i.cf, i16 %i.by, i64 3
  %i.ch = insertelement <8 x i16> %i.cg, i16 %i.bz, i64 4
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.ca, i64 5
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 6
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 7
  store <8 x i16> %i.ck, ptr %next.gep275, align 2, !tbaa !60, !alias.scope !269, !noalias !270
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cm = getelementptr i8, ptr %i.bn, i64 10
  %i.cn = getelementptr i8, ptr %i.bo, i64 18
  %i.co = getelementptr i8, ptr %i.bp, i64 26
  %i.cp = getelementptr i8, ptr %i.bq, i64 34
  %i.cq = getelementptr i8, ptr %i.br, i64 42
  %i.cr = getelementptr i8, ptr %i.bs, i64 50
  %i.cs = getelementptr i8, ptr %i.bt, i64 58
  %i.ct = load i16, ptr %i.cl, align 2, !tbaa !60, !alias.scope !268
  %i.cu = load i16, ptr %i.cm, align 2, !tbaa !60, !alias.scope !268
  %i.cv = load i16, ptr %i.cn, align 2, !tbaa !60, !alias.scope !268
  %i.cw = load i16, ptr %i.co, align 2, !tbaa !60, !alias.scope !268
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !60, !alias.scope !268
  %i.cy = load i16, ptr %i.cq, align 2, !tbaa !60, !alias.scope !268
  %i.cz = load i16, ptr %i.cr, align 2, !tbaa !60, !alias.scope !268
  %i.da = load i16, ptr %i.cs, align 2, !tbaa !60, !alias.scope !268
  %i.db = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 1
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 2
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 3
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 4
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 5
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 6
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 7
  store <8 x i16> %i.di, ptr %next.gep278, align 2, !tbaa !60, !alias.scope !271, !noalias !272
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.dk = getelementptr i8, ptr %i.bn, i64 12
  %i.dl = getelementptr i8, ptr %i.bo, i64 20
  %i.dm = getelementptr i8, ptr %i.bp, i64 28
  %i.dn = getelementptr i8, ptr %i.bq, i64 36
  %i.do = getelementptr i8, ptr %i.br, i64 44
  %i.dp = getelementptr i8, ptr %i.bs, i64 52
  %i.dq = getelementptr i8, ptr %i.bt, i64 60
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !60, !alias.scope !268
  %i.ds = load i16, ptr %i.dk, align 2, !tbaa !60, !alias.scope !268
  %i.dt = load i16, ptr %i.dl, align 2, !tbaa !60, !alias.scope !268
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !60, !alias.scope !268
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !60, !alias.scope !268
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !60, !alias.scope !268
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !60, !alias.scope !268
  %i.dy = load i16, ptr %i.dq, align 2, !tbaa !60, !alias.scope !268
  %i.dz = insertelement <8 x i16> poison, i16 %i.dr, i64 0
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 1
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 2
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 3
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 4
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 5
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 6
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.dy, i64 7
  store <8 x i16> %i.eg, ptr %next.gep277, align 2, !tbaa !60, !alias.scope !273, !noalias !274
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.ei = getelementptr i8, ptr %i.bn, i64 14
  %i.ej = getelementptr i8, ptr %i.bo, i64 22
  %i.ek = getelementptr i8, ptr %i.bp, i64 30
  %i.el = getelementptr i8, ptr %i.bq, i64 38
  %i.em = getelementptr i8, ptr %i.br, i64 46
  %i.en = getelementptr i8, ptr %i.bs, i64 54
  %i.eo = getelementptr i8, ptr %i.bt, i64 62
  %i.ep = load i16, ptr %i.eh, align 2, !tbaa !60, !alias.scope !268
  %i.eq = load i16, ptr %i.ei, align 2, !tbaa !60, !alias.scope !268
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !60, !alias.scope !268
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !60, !alias.scope !268
  %i.et = load i16, ptr %i.el, align 2, !tbaa !60, !alias.scope !268
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !60, !alias.scope !268
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !60, !alias.scope !268
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !60, !alias.scope !268
  %i.ex = insertelement <8 x i16> poison, i16 %i.ep, i64 0
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 1
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 2
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 3
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 4
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 5
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 6
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 7
  store <8 x i16> %i.fe, ptr %next.gep276, align 2, !tbaa !60, !alias.scope !275, !noalias !268
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph194.preheader284

.lr.ph194.preheader284:                           ; preds = %vector.memcheck, %.lr.ph194.preheader, %middle.block
  %.1193.ph = phi ptr [ %.059.lcssa, %vector.memcheck ], [ %.059.lcssa, %.lr.ph194.preheader ], [ %i.be, %middle.block ] ; 6 uses
  %.161192.ph = phi ptr [ %.060.lcssa, %vector.memcheck ], [ %.060.lcssa, %.lr.ph194.preheader ], [ %i.bg, %middle.block ] ; 3 uses
  %.163191.ph = phi i32 [ %.062.lcssa, %vector.memcheck ], [ %.062.lcssa, %.lr.ph194.preheader ], [ %i.bi, %middle.block ] ; 4 uses
  %.165190.ph = phi ptr [ %.064.lcssa, %vector.memcheck ], [ %.064.lcssa, %.lr.ph194.preheader ], [ %i.bj, %middle.block ] ; 3 uses
  %.167189.ph = phi ptr [ %.066.lcssa, %vector.memcheck ], [ %.066.lcssa, %.lr.ph194.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %.169188.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph194.preheader ], [ %i.bl, %middle.block ] ; 3 uses
  %i.fg = sub i32 %i.as, %.163191.ph
  %.neg = add i32 %.163191.ph, 1
  %xtraiter = and i32 %i.fg, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph194.prol.loopexit, label %.lr.ph194.prol

.lr.ph194.prol:                                   ; preds = %.lr.ph194.preheader284
  %i.fh = load i16, ptr %.1193.ph, align 2, !tbaa !60
  %i.fi = getelementptr inbounds nuw i8, ptr %.161192.ph, i64 2
  store i16 %i.fh, ptr %.161192.ph, align 2, !tbaa !60
  %i.fj = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !60
  %i.fl = getelementptr inbounds nuw i8, ptr %.169188.ph, i64 2
  store i16 %i.fk, ptr %.169188.ph, align 2, !tbaa !60
  %i.fm = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 4
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !60
  %i.fo = getelementptr inbounds nuw i8, ptr %.167189.ph, i64 2
  store i16 %i.fn, ptr %.167189.ph, align 2, !tbaa !60
  %i.fp = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 6
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !60
  %i.fr = getelementptr inbounds nuw i8, ptr %.165190.ph, i64 2
  store i16 %i.fq, ptr %.165190.ph, align 2, !tbaa !60
  %i.fs = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 8
  %i.ft = add nuw nsw i32 %.163191.ph, 1
  br label %.lr.ph194.prol.loopexit

.lr.ph194.prol.loopexit:                          ; preds = %.lr.ph194.prol, %.lr.ph194.preheader284
  %.1193.unr = phi ptr [ %.1193.ph, %.lr.ph194.preheader284 ], [ %i.fs, %.lr.ph194.prol ]
  %.161192.unr = phi ptr [ %.161192.ph, %.lr.ph194.preheader284 ], [ %i.fi, %.lr.ph194.prol ]
  %.163191.unr = phi i32 [ %.163191.ph, %.lr.ph194.preheader284 ], [ %i.ft, %.lr.ph194.prol ]
  %.165190.unr = phi ptr [ %.165190.ph, %.lr.ph194.preheader284 ], [ %i.fr, %.lr.ph194.prol ]
  %.167189.unr = phi ptr [ %.167189.ph, %.lr.ph194.preheader284 ], [ %i.fo, %.lr.ph194.prol ]
  %.169188.unr = phi ptr [ %.169188.ph, %.lr.ph194.preheader284 ], [ %i.fl, %.lr.ph194.prol ]
  %i.fu = icmp eq i32 %i.as, %.neg
  br i1 %i.fu, label %._crit_edge, label %.lr.ph194

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.059181 = phi ptr [ %i.gf, %.lr.ph ], [ %i.x, %.noexc ] ; 2 uses
  %.060180 = phi ptr [ %i.gg, %.lr.ph ], [ %i.ae, %.noexc ] ; 2 uses
  %.062179 = phi i32 [ %i.gk, %.lr.ph ], [ 0, %.noexc ]
  %.064178 = phi ptr [ %i.gj, %.lr.ph ], [ %i.aq, %.noexc ] ; 2 uses
  %.066177 = phi ptr [ %i.gi, %.lr.ph ], [ %i.am, %.noexc ] ; 2 uses
  %.068176 = phi ptr [ %i.gh, %.lr.ph ], [ %i.ai, %.noexc ] ; 2 uses
  %6 = load <16 x i16>, ptr %.059181, align 1, !tbaa !55 ; 2 uses
  %i.fv = shufflevector <16 x i16> %6, <16 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.fw = bitcast <8 x i16> %i.fv to <2 x i64>
  %i.fx = shufflevector <16 x i16> %6, <16 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.fy = bitcast <8 x i16> %i.fx to <2 x i64>
  %i.fz = extractelement <2 x i64> %i.fw, i64 0
  store i64 %i.fz, ptr %.060180, align 1, !tbaa !55
  %i.ga = bitcast <8 x i16> %i.fv to <2 x i64>
  %i.gb = extractelement <2 x i64> %i.ga, i64 1
  store i64 %i.gb, ptr %.068176, align 1, !tbaa !55
  %i.gc = extractelement <2 x i64> %i.fy, i64 0
  store i64 %i.gc, ptr %.066177, align 1, !tbaa !55
  %i.gd = bitcast <8 x i16> %i.fx to <2 x i64>
  %i.ge = extractelement <2 x i64> %i.gd, i64 1
  store i64 %i.ge, ptr %.064178, align 1, !tbaa !55
  %i.gf = getelementptr inbounds nuw i8, ptr %.059181, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.060180, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.068176, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.066177, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.064178, i64 8 ; 2 uses
  %i.gk = add nuw nsw i32 %.062179, 4             ; 3 uses
  %i.gl = or disjoint i32 %i.gk, 3
  %i.gm = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.gn = icmp slt i32 %i.gl, %i.gm
  br i1 %i.gn, label %.lr.ph, label %.preheader, !llvm.loop !264

.lr.ph194:                                        ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194
  %.1193 = phi ptr [ %i.hl, %.lr.ph194 ], [ %.1193.unr, %.lr.ph194.prol.loopexit ] ; 9 uses
  %.161192 = phi ptr [ %i.hb, %.lr.ph194 ], [ %.161192.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.163191 = phi i32 [ %i.hm, %.lr.ph194 ], [ %.163191.unr, %.lr.ph194.prol.loopexit ]
  %.165190 = phi ptr [ %i.hk, %.lr.ph194 ], [ %.165190.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.167189 = phi ptr [ %i.hh, %.lr.ph194 ], [ %.167189.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.169188 = phi ptr [ %i.he, %.lr.ph194 ], [ %.169188.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %i.go = load i16, ptr %.1193, align 2, !tbaa !60
  %i.gp = getelementptr inbounds nuw i8, ptr %.161192, i64 2
  store i16 %i.go, ptr %.161192, align 2, !tbaa !60
  %i.gq = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !60
  %i.gs = getelementptr inbounds nuw i8, ptr %.169188, i64 2
  store i16 %i.gr, ptr %.169188, align 2, !tbaa !60
  %i.gt = getelementptr inbounds nuw i8, ptr %.1193, i64 4
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !60
  %i.gv = getelementptr inbounds nuw i8, ptr %.167189, i64 2
  store i16 %i.gu, ptr %.167189, align 2, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %.1193, i64 6
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !60
  %i.gy = getelementptr inbounds nuw i8, ptr %.165190, i64 2
  store i16 %i.gx, ptr %.165190, align 2, !tbaa !60
  %i.gz = getelementptr inbounds nuw i8, ptr %.1193, i64 8
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %.161192, i64 4
  store i16 %i.ha, ptr %i.gp, align 2, !tbaa !60
  %i.hc = getelementptr inbounds nuw i8, ptr %.1193, i64 10
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !60
  %i.he = getelementptr inbounds nuw i8, ptr %.169188, i64 4
  store i16 %i.hd, ptr %i.gs, align 2, !tbaa !60
  %i.hf = getelementptr inbounds nuw i8, ptr %.1193, i64 12
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !60
  %i.hh = getelementptr inbounds nuw i8, ptr %.167189, i64 4
  store i16 %i.hg, ptr %i.gv, align 2, !tbaa !60
  %i.hi = getelementptr inbounds nuw i8, ptr %.1193, i64 14
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !60
  %i.hk = getelementptr inbounds nuw i8, ptr %.165190, i64 4
  store i16 %i.hj, ptr %i.gy, align 2, !tbaa !60
  %i.hl = getelementptr inbounds nuw i8, ptr %.1193, i64 16
  %i.hm = add nuw nsw i32 %.163191, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.hm, %i.as
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph194, !llvm.loop !265

._crit_edge:                                      ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond206.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond206.not, label %._crit_edge197, label %.noexc

._crit_edge197:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge197, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.37(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not276 = icmp sgt i32 %i.k, %i.j
  br i1 %.not276, label %._crit_edge278.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !281 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !281
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !281
  %factor.op.mul = mul i64 %i.n, %i.p             ; 8 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !282
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !282
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !282
  %factor.op.mul293 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc72.preheader, label %._crit_edge278.split

.noexc72.preheader:                               ; preds = %.noexc72.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc72

.noexc72:                                         ; preds = %.noexc72.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc72.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = shl nsw i64 %indvars.iv, 3               ; 8 uses
  %.reass = mul i64 %factor.op.mul, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.ab = or disjoint i64 %i.z, 1
  %.reass280 = mul i64 %factor.op.mul, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass280
  %i.ad = or disjoint i64 %i.z, 2
  %.reass282 = mul i64 %factor.op.mul, %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass282
  %i.af = or disjoint i64 %i.z, 3
  %.reass284 = mul i64 %factor.op.mul, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass284
  %i.ah = or disjoint i64 %i.z, 4
  %.reass286 = mul i64 %factor.op.mul, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass286
  %i.aj = or disjoint i64 %i.z, 5
  %.reass288 = mul i64 %factor.op.mul, %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass288
  %i.al = or disjoint i64 %i.z, 6
  %.reass290 = mul i64 %factor.op.mul, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass290
  %i.an = or disjoint i64 %i.z, 7
  %.reass292 = mul i64 %factor.op.mul, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass292
  %.reass294 = mul i64 %factor.op.mul293, %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass294
  br label %bb.c

bb.c:                                             ; preds = %.noexc72, %bb.c
  %.0275 = phi i32 [ 0, %.noexc72 ], [ %i.bo, %bb.c ]
  %.050274 = phi ptr [ %i.ap, %.noexc72 ], [ %i.bn, %bb.c ] ; 9 uses
  %.051273 = phi ptr [ %i.ao, %.noexc72 ], [ %i.bk, %bb.c ] ; 2 uses
  %.052272 = phi ptr [ %i.am, %.noexc72 ], [ %i.bh, %bb.c ] ; 2 uses
  %.053271 = phi ptr [ %i.ak, %.noexc72 ], [ %i.be, %bb.c ] ; 2 uses
  %.054270 = phi ptr [ %i.ai, %.noexc72 ], [ %i.bb, %bb.c ] ; 2 uses
  %.055269 = phi ptr [ %i.ag, %.noexc72 ], [ %i.ay, %bb.c ] ; 2 uses
  %.056268 = phi ptr [ %i.ae, %.noexc72 ], [ %i.av, %bb.c ] ; 2 uses
  %.057267 = phi ptr [ %i.ac, %.noexc72 ], [ %i.as, %bb.c ] ; 2 uses
  %.058266 = phi ptr [ %i.aa, %.noexc72 ], [ %i.aq, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.058266, i64 2
  %i.ar = load i16, ptr %.058266, align 2, !tbaa !60
  store i16 %i.ar, ptr %.050274, align 2, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %.057267, i64 2
  %i.at = load i16, ptr %.057267, align 2, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %.050274, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %.056268, i64 2
  %i.aw = load i16, ptr %.056268, align 2, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.050274, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %.055269, i64 2
  %i.az = load i16, ptr %.055269, align 2, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %.050274, i64 6
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %.054270, i64 2
  %i.bc = load i16, ptr %.054270, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %.050274, i64 8
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %.053271, i64 2
  %i.bf = load i16, ptr %.053271, align 2, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.050274, i64 10
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %.052272, i64 2
end_hunk_3
