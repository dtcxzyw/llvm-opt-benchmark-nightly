inline.NumInlined: 48
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK4ncnn11Pooling_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not79 = icmp sgt i32 %i.k, %i.j
  br i1 %.not79, label %._crit_edge81, label %.noexc44.lr.ph

.noexc44.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 220
  %i.s = load i32, ptr %5, align 4, !tbaa !37     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.noexc44.preheader, label %._crit_edge81

.noexc44.preheader:                               ; preds = %.noexc44.lr.ph
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  br label %.noexc44

.noexc44:                                         ; preds = %.noexc44.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.w = phi i32 [ %i.s, %.noexc44.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.x = phi i32 [ %i.s, %.noexc44.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv90 = phi i64 [ %i.u, %.noexc44.preheader ], [ %indvars.iv.next91, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !42, !noalias !85
  %i.z = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !85
  %i.aa = mul i64 %i.z, %indvars.iv90
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !85 ; 2 uses
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = icmp sgt i32 %i.x, 0
  br i1 %i.ae, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc44
  %i.af = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !85
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.ab, %i.ag
  %i.ai = load i32, ptr %6, align 4, !tbaa !37    ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ak = load ptr, ptr %4, align 8, !tbaa !42, !noalias !88
  %i.al = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !88
  %i.am = mul i64 %i.al, %indvars.iv90
  %i.an = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !88
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %i.aq = phi i32 [ %i.av, %._crit_edge75 ], [ %i.w, %.preheader.preheader ]
  %i.ar = phi i32 [ %i.aw, %._crit_edge75 ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %.04078 = phi i32 [ %i.ba, %._crit_edge75 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04177 = phi ptr [ %i.az, %._crit_edge75 ], [ %i.ap, %.preheader.preheader ] ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph74, label %._crit_edge75

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge75, %.preheader.lr.ph, %.noexc44
  %i.at = phi i32 [ %i.w, %.noexc44 ], [ %i.w, %.preheader.lr.ph ], [ %i.av, %._crit_edge75 ]
  %i.au = phi i32 [ %i.x, %.noexc44 ], [ %i.x, %.preheader.lr.ph ], [ %i.av, %._crit_edge75 ]
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next91 to i32
  %exitcond93.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond93.not, label %._crit_edge81, label %.noexc44, !llvm.loop !91

._crit_edge75.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %5, align 4, !tbaa !37
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.preheader
  %i.av = phi i32 [ %i.aq, %.preheader ], [ %.pre, %._crit_edge75.loopexit ] ; 4 uses
  %i.aw = phi i32 [ %i.ar, %.preheader ], [ %i.ca, %._crit_edge75.loopexit ] ; 2 uses
  %i.ax = shl nsw i32 %i.aw, 2
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.04177, i64 %i.ay
  %i.ba = add nuw nsw i32 %.04078, 1              ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.av
  br i1 %i.bb, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !92

.lr.ph74:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bd = mul nsw i32 %i.bc, %.04078
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.ah, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !47
  %i.bi = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bj = shl i32 %i.bi, 2
  %i.bk = mul i32 %i.bj, %i.bh
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bl ; 6 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 1, !tbaa !73 ; 3 uses
  %i.bo = load i32, ptr %8, align 4, !tbaa !37    ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph74
  %i.bq = load ptr, ptr %9, align 8, !tbaa !51    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bo to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.br = icmp ult i32 %i.bo, 4
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03871.epil.init = phi <4 x float> [ %i.bn, %.lr.ph ], [ %i.dh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.03871.epil = phi <4 x float> [ %.03871.epil.init, %.epil.preheader ], [ %i.by, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.epil
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !37
  %i.bu = shl nsw i32 %i.bt, 2
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bv
  %i.bx = load <4 x float>, ptr %i.bw, align 1, !tbaa !73
  %i.by = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03871.epil, <4 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !93

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.lr.ph74
  %.038.lcssa = phi <4 x float> [ %i.bn, %.lr.ph74 ], [ %i.dh, %._crit_edge.loopexit.unr-lcssa ], [ %i.by, %bb.c ]
  %.idx = shl nuw nsw i64 %indvars.iv87, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.04177, i64 %.idx
  store <4 x float> %.038.lcssa, ptr %i.bz, align 1, !tbaa !73
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.ca = load i32, ptr %6, align 4, !tbaa !37    ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next88, %i.cb
  br i1 %i.cc, label %.lr.ph74, label %._crit_edge75.loopexit, !llvm.loop !94

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.03871 = phi <4 x float> [ %i.bn, %.lr.ph.new ], [ %i.dh, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !37
  %i.cf = shl nsw i32 %i.ce, 2
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cg
  %i.ci = load <4 x float>, ptr %i.ch, align 1, !tbaa !73
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03871, <4 x float> nofpclass(nan inf) %i.ci)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !37
  %i.cn = shl nsw i32 %i.cm, 2
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.co
  %i.cq = load <4 x float>, ptr %i.cp, align 1, !tbaa !73
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> nofpclass(nan inf) %i.cq)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !37
  %i.cv = shl nsw i32 %i.cu, 2
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cw
  %i.cy = load <4 x float>, ptr %i.cx, align 1, !tbaa !73
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> nofpclass(nan inf) %i.cy)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dd = shl nsw i32 %i.dc, 2
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.de
  %i.dg = load <4 x float>, ptr %i.df, align 1, !tbaa !73
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.dg) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !95

._crit_edge81:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc44.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge81, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Pooling_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not142 = icmp sgt i32 %i.k, %i.j
  br i1 %.not142, label %._crit_edge144, label %.noexc74.lr.ph

.noexc74.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.y = load i32, ptr %5, align 4, !tbaa !37     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc74.preheader, label %._crit_edge144

.noexc74.preheader:                               ; preds = %.noexc74.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc74

.noexc74:                                         ; preds = %.noexc74.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ac = phi i32 [ %i.y, %.noexc74.preheader ], [ %i.aw, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ad = phi i32 [ %i.y, %.noexc74.preheader ], [ %i.ax, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv157 = phi i64 [ %i.aa, %.noexc74.preheader ], [ %indvars.iv.next158, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !42, !noalias !96
  %i.af = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !96
  %i.ag = mul i64 %i.af, %indvars.iv157
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !96 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  %i.ak = icmp sgt i32 %i.ad, 0
  br i1 %i.ak, label %.lr.ph141, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph141:                                        ; preds = %.noexc74
  %i.al = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !96
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ah, %i.am
  %i.ao = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph141.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %i.aq = load ptr, ptr %4, align 8, !tbaa !42, !noalias !99
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !99
  %i.as = mul i64 %i.ar, %indvars.iv157
  %i.at = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !99
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  br label %.lr.ph141.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge137, %.lr.ph141, %.noexc74
  %i.aw = phi i32 [ %i.ac, %.noexc74 ], [ %i.ac, %.lr.ph141 ], [ %i.be, %._crit_edge137 ]
  %i.ax = phi i32 [ %i.ad, %.noexc74 ], [ %i.ad, %.lr.ph141 ], [ %i.be, %._crit_edge137 ]
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next158 to i32
  %exitcond160.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond160.not, label %._crit_edge144, label %.noexc74, !llvm.loop !102

.lr.ph141.split:                                  ; preds = %.lr.ph141.split.preheader, %._crit_edge137
  %i.ay = phi i32 [ %i.be, %._crit_edge137 ], [ %i.ac, %.lr.ph141.split.preheader ]
  %i.az = phi i32 [ %i.bf, %._crit_edge137 ], [ %i.ao, %.lr.ph141.split.preheader ] ; 2 uses
  %.066140 = phi i32 [ %i.bj, %._crit_edge137 ], [ 0, %.lr.ph141.split.preheader ] ; 2 uses
  %.067139 = phi ptr [ %i.bi, %._crit_edge137 ], [ %i.av, %.lr.ph141.split.preheader ] ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph136.preheader, label %._crit_edge137

.lr.ph136.preheader:                              ; preds = %.lr.ph141.split
  %i.bb = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bc = mul nsw i32 %i.bb, %.066140
  %i.bd = sext i32 %i.bc to i64
  br label %.lr.ph136

._crit_edge137.loopexit:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %5, align 4, !tbaa !37
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.lr.ph141.split
  %i.be = phi i32 [ %i.ay, %.lr.ph141.split ], [ %.pre, %._crit_edge137.loopexit ] ; 4 uses
  %i.bf = phi i32 [ %i.az, %.lr.ph141.split ], [ %i.cz, %._crit_edge137.loopexit ] ; 2 uses
  %i.bg = shl nsw i32 %i.bf, 2
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.067139, i64 %i.bh
  %i.bj = add nuw nsw i32 %.066140, 1             ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.be
  br i1 %i.bk, label %.lr.ph141.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !103

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %._crit_edge
  %indvars.iv154 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next155, %._crit_edge ] ; 3 uses
  %i.bl = load i32, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph128, label %._crit_edge

.lr.ph128:                                        ; preds = %.lr.ph136
  %i.bn = load i32, ptr %i.r, align 4, !tbaa !47
  %i.bo = trunc nuw nsw i64 %indvars.iv154 to i32
  %i.bp = mul nsw i32 %i.bn, %i.bo
  %i.bq = load i32, ptr %i.t, align 4, !tbaa !68
  %i.br = sext i32 %i.bp to i64
  %i.bs = sext i32 %i.bq to i64
  %wide.trip.count152 = zext nneg i32 %i.bl to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph128, %.loopexit
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next150, %.loopexit ] ; 2 uses
  %.056126 = phi i32 [ 0, %.lr.ph128 ], [ %.4.ph, %.loopexit ] ; 4 uses
  %.057125 = phi <4 x float> [ zeroinitializer, %.lr.ph128 ], [ %.461.ph, %.loopexit ] ; 4 uses
  %i.bt = add nsw i64 %indvars.iv149, %i.bd       ; 3 uses
  %i.bu = icmp slt i64 %i.bt, %i.bs
  br i1 %i.bu, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = load i32, ptr %8, align 4, !tbaa !37
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !69
  %i.bx = load i32, ptr %9, align 4, !tbaa !37
  %i.by = add i32 %i.bw, %i.bx
  %i.bz = sub i32 %i.bv, %i.by
  %i.ca = sext i32 %i.bz to i64
  %.not71 = icmp slt i64 %i.bt, %i.ca
  br i1 %.not71, label %.preheader, label %._crit_edge.loopexit

.preheader:                                       ; preds = %bb.d
  %i.cb = load i32, ptr %i.v, align 4, !tbaa !46  ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cd = load i32, ptr %i.w, align 4, !tbaa !66
  %i.ce = mul i64 %i.an, %i.bt
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ce
  %i.cg = sext i32 %i.cd to i64
  %wide.trip.count = zext nneg i32 %i.cb to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.1119 = phi i32 [ %.056126, %.lr.ph ], [ %.2.ph, %bb.h ] ; 3 uses
  %.158118 = phi <4 x float> [ %.057125, %.lr.ph ], [ %.259.ph, %bb.h ] ; 3 uses
  %i.ch = add nsw i64 %indvars.iv, %i.br          ; 3 uses
  %i.ci = icmp slt i64 %i.ch, %i.cg
  br i1 %i.ci, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = load i32, ptr %10, align 4, !tbaa !37
  %i.ck = load i32, ptr %i.x, align 8, !tbaa !67
  %i.cl = load i32, ptr %11, align 4, !tbaa !37
  %i.cm = add i32 %i.ck, %i.cl
  %i.cn = sub i32 %i.cj, %i.cm
  %i.co = sext i32 %i.cn to i64
  %.not72 = icmp slt i64 %i.ch, %i.co
  br i1 %.not72, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Pooling_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge82, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.s = load i32, ptr %6, align 4, !tbaa !37     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.noexc45.preheader, label %._crit_edge82

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.w = phi i32 [ %i.s, %.noexc45.preheader ], [ %i.ay, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.x = phi i32 [ %i.s, %.noexc45.preheader ], [ %i.az, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.u, %.noexc45.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !42, !noalias !107
  %i.z = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !107
  %i.aa = mul i64 %i.z, %indvars.iv91
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !107 ; 2 uses
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i32, ptr %5, align 4, !tbaa !37
  %i.af = sitofp fast i32 %i.ae to float
  %i.ag = fdiv fast float 1.000000e+00, %i.af
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = icmp sgt i32 %i.x, 0
  br i1 %i.aj, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc45
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !107
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.ab, %i.al
  %i.an = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ap = load ptr, ptr %4, align 8, !tbaa !42, !noalias !110
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !110
  %i.ar = mul i64 %i.aq, %indvars.iv91
  %i.as = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !110
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge76
  %i.av = phi i32 [ %i.ba, %._crit_edge76 ], [ %i.w, %.preheader.preheader ]
  %i.aw = phi i32 [ %i.bb, %._crit_edge76 ], [ %i.an, %.preheader.preheader ] ; 2 uses
  %.04179 = phi i32 [ %i.bf, %._crit_edge76 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04278 = phi ptr [ %i.be, %._crit_edge76 ], [ %i.au, %.preheader.preheader ] ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph75, label %._crit_edge76

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge76, %.preheader.lr.ph, %.noexc45
  %i.ay = phi i32 [ %i.w, %.noexc45 ], [ %i.w, %.preheader.lr.ph ], [ %i.ba, %._crit_edge76 ]
  %i.az = phi i32 [ %i.x, %.noexc45 ], [ %i.x, %.preheader.lr.ph ], [ %i.ba, %._crit_edge76 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond94.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond94.not, label %._crit_edge82, label %.noexc45, !llvm.loop !113

._crit_edge76.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %6, align 4, !tbaa !37
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %.preheader
  %i.ba = phi i32 [ %i.av, %.preheader ], [ %.pre, %._crit_edge76.loopexit ] ; 4 uses
  %i.bb = phi i32 [ %i.aw, %.preheader ], [ %i.cf, %._crit_edge76.loopexit ] ; 2 uses
  %i.bc = shl nsw i32 %i.bb, 2
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.04278, i64 %i.bd
  %i.bf = add nuw nsw i32 %.04179, 1              ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.ba
  br i1 %i.bg, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !114

.lr.ph75:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bi = mul nsw i32 %i.bh, %.04179
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.am, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bk
  %i.bm = load i32, ptr %i.r, align 4, !tbaa !47
  %i.bn = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.bo = shl i32 %i.bn, 2
  %i.bp = mul i32 %i.bo, %i.bm
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bq ; 5 uses
  %i.bs = load i32, ptr %5, align 4, !tbaa !37    ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph75
  %i.bu = load ptr, ptr %9, align 8, !tbaa !51    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bs to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bv = icmp ult i32 %i.bs, 4
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03972.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod112)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.03972.epil = phi <4 x float> [ %.03972.epil.init, %.epil.preheader ], [ %i.cc, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.epil
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !37
  %i.by = shl nsw i32 %i.bx, 2
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bz
  %i.cb = load <4 x float>, ptr %i.ca, align 1, !tbaa !73
  %i.cc = fadd fast <4 x float> %i.cb, %.03972.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !115

._crit_edge.loopexit:                             ; preds = %bb.c, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi <4 x float> [ %i.dm, %._crit_edge.loopexit.unr-lcssa ], [ %i.cc, %bb.c ]
  %i.cd = fmul fast <4 x float> %.lcssa, %i.ai
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph75
  %.039.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph75 ], [ %i.cd, %._crit_edge.loopexit ]
  %.idx = shl nuw nsw i64 %indvars.iv88, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.04278, i64 %.idx
  store <4 x float> %.039.lcssa, ptr %i.ce, align 1, !tbaa !73
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.cf = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next89, %i.cg
  br i1 %i.ch, label %.lr.ph75, label %._crit_edge76.loopexit, !llvm.loop !116

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.03972 = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.dm, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !37
  %i.ck = shl nsw i32 %i.cj, 2
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cl
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !73
  %i.co = fadd fast <4 x float> %i.cn, %.03972
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37
  %i.cs = shl nsw i32 %i.cr, 2
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ct
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !73
  %i.cw = fadd fast <4 x float> %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !37
  %i.da = shl nsw i32 %i.cz, 2
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.db
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !tbaa !73
  %i.de = fadd fast <4 x float> %i.dd, %i.cw
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !37
  %i.di = shl nsw i32 %i.dh, 2
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dj
  %i.dl = load <4 x float>, ptr %i.dk, align 1, !tbaa !73
  %i.dm = fadd fast <4 x float> %i.dl, %i.de      ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !117

._crit_edge82:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc45.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge82, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26pooling2x2s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not86 = icmp sgt i32 %i.k, %i.j
  br i1 %.not86, label %._crit_edge88, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !37     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge88

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.x = load i32, ptr %6, align 4, !tbaa !37     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.z = load ptr, ptr %4, align 8, !tbaa !42, !noalias !118
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !118
  %i.ab = mul i64 %i.aa, %indvars.iv
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !118
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %3, align 8, !tbaa !42, !noalias !121
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !121
  %i.ah = mul i64 %i.ag, %indvars.iv
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !121 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !121
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.bj, %._crit_edge ], [ %i.u, %.preheader.preheader ]
  %i.aq = phi i32 [ %i.bk, %._crit_edge ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.04085 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ae, %.preheader.preheader ] ; 2 uses
  %.04184 = phi ptr [ %i.bn, %._crit_edge ], [ %i.ak, %.preheader.preheader ] ; 2 uses
  %.04383 = phi ptr [ %i.bo, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 2 uses
  %.04682 = phi i32 [ %i.bp, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.preheader.lr.ph, %.noexc
  %i.as = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.bj, %._crit_edge ]
  %i.at = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.bj, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge88, label %.noexc, !llvm.loop !124

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.179 = phi ptr [ %i.bf, %.lr.ph ], [ %.04085, %.preheader ] ; 2 uses
  %.14278 = phi ptr [ %i.bd, %.lr.ph ], [ %.04184, %.preheader ] ; 3 uses
  %.14477 = phi ptr [ %i.be, %.lr.ph ], [ %.04383, %.preheader ] ; 3 uses
  %.04576 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.preheader ]
  %i.au = load <4 x float>, ptr %.14278, align 1, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %.14278, i64 16
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !73
  %i.ax = load <4 x float>, ptr %.14477, align 1, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %.14477, i64 16
  %i.az = load <4 x float>, ptr %i.ay, align 1, !tbaa !73
  %i.ba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.au, <4 x float> nofpclass(nan inf) %i.aw)
  %i.bb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ax, <4 x float> nofpclass(nan inf) %i.az)
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.bb)
  store <4 x float> %i.bc, ptr %.179, align 1, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %.14278, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.14477, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.179, i64 16 ; 2 uses
  %i.bg = add nuw nsw i32 %.04576, 1              ; 2 uses
  %i.bh = load i32, ptr %6, align 4, !tbaa !37    ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !125

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %5, align 4, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bj = phi i32 [ %i.ap, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %i.bk = phi i32 [ %i.aq, %.preheader ], [ %i.bh, %._crit_edge.loopexit ]
  %.144.lcssa = phi ptr [ %.04383, %.preheader ], [ %i.be, %._crit_edge.loopexit ]
  %.142.lcssa = phi ptr [ %.04184, %.preheader ], [ %i.bd, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.04085, %.preheader ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bl = load i32, ptr %7, align 4, !tbaa !37
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %.142.lcssa, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %.144.lcssa, i64 %i.bm
  %i.bp = add nuw nsw i32 %.04682, 1              ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bj
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !126

._crit_edge88:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge88, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26pooling3x3s2_max_pack4_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
end_hunk_1
begin_hunk_2_@_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE:bb.a

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.as, %.preheader ], [ %i.au, %middle.block ]
  %.161.ph = phi i32 [ %.04265, %.preheader ], [ %i.av, %middle.block ]
  br label %scalar.ph

._crit_edge67.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ay = icmp eq i32 %12, 0
  br i1 %i.ay, label %bb.b, label %bb.g

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.av, %middle.block ], [ %i.bc, %scalar.ph ]
  %i.az = add nsw i32 %i.an, %.lcssa
  %i.ba = add nuw nsw i32 %.04166, 1              ; 2 uses
  %exitcond70.not = icmp eq i32 %i.ba, %4
  br i1 %exitcond70.not, label %._crit_edge67.split, label %.preheader, !llvm.loop !143

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.161 = phi i32 [ %i.bc, %scalar.ph ], [ %.161.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.sroa.048.0, i64 %indvars.iv
  store i32 %.161, ptr %i.bb, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bc = add nsw i32 %.161, 1                    ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !144

bb.b:                                             ; preds = %._crit_edge67.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  store i32 0, ptr %i.p, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %i.bd = icmp eq i32 %11, 0
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !36
  %i.bg = add i32 %8, %7
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = sub i32 %i.t, %i.bh
  store i32 %i.bi, ptr %i.p, align 4, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !38
  %i.bl = add i32 %10, %9
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = sub i32 %i.v, %i.bm
  store i32 %i.bn, ptr %i.q, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %i.z, label %bb.f [
    i32 4, label %.sink.split
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.8.sink = phi ptr [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.8, %bb.e ], [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined, %bb.d ]
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.bp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull %_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.8.sink, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.g, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.q, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.i, ptr nonnull %i.f, ptr nonnull %i.p)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge67.split
  switch i32 %i.z, label %bb.j [
    i32 4, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.br)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.9, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.bt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.10, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.n, ptr nonnull %i.o)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  %.not.i.i.i = icmp eq ptr %.sroa.048.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = ptrtoint ptr %.sroa.9.0 to i64
  %i.bv = ptrtoint ptr %.sroa.048.0 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.0, i64 noundef %i.bw) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge44, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !42, !noalias !145
  %i.q = load i64, ptr %i.l, align 8, !tbaa !43, !noalias !145
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !145
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 1, !tbaa !73
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <8 x i16>
  %i.y = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.x, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.z = load i32, ptr %4, align 4, !tbaa !37     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.ab = bitcast <8 x i16> %i.y to <4 x float>   ; 2 uses
  %i.ac = add nsw i32 %i.z, -1                    ; 3 uses
  %xtraiter = and i32 %i.ac, 1
  %i.ad = icmp eq i32 %i.z, 2
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ac, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn40 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %.025.1, %.lr.ph ] ; 2 uses
  %.03839 = phi <4 x float> [ %i.ab, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn40, i64 8
  %i.ae = load i64, ptr %.025, align 1, !tbaa !73
  %i.af = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <8 x i16>
  %i.ah = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ai = bitcast <8 x i16> %i.ah to <4 x float>
  %i.aj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839, <4 x float> nofpclass(nan inf) %i.ai)
  %.025.1 = getelementptr inbounds nuw i8, ptr %.pn40, i64 16 ; 3 uses
  %i.ak = load i64, ptr %.025.1, align 1, !tbaa !73
  %i.al = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.am = bitcast <2 x i64> %i.al to <8 x i16>
  %i.an = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ao = bitcast <8 x i16> %i.an to <4 x float>
  %i.ap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aj, <4 x float> nofpclass(nan inf) %i.ao) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !148

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.pn40.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %.025.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03839.epil.init = phi <4 x float> [ %i.ab, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i32 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  %.025.epil = getelementptr inbounds nuw i8, ptr %.pn40.epil.init, i64 8
  %i.aq = load i64, ptr %.025.epil, align 1, !tbaa !73
  %i.ar = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %i.as = bitcast <2 x i64> %i.ar to <8 x i16>
  %i.at = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.as, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.au = bitcast <8 x i16> %i.at to <4 x float>
  %i.av = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839.epil.init, <4 x float> nofpclass(nan inf) %i.au)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi <4 x float> [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.aw = bitcast <4 x float> %.lcssa to <8 x i16>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %.038.lcssa = phi <8 x i16> [ %i.y, %.noexc ], [ %i.aw, %._crit_edge.loopexit ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !42
  %i.ay = shufflevector <8 x i16> %.038.lcssa, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.az = bitcast <8 x i16> %i.ay to <4 x float>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bb = bitcast <4 x float> %i.ba to <2 x i64>
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %.idx
  %i.bd = extractelement <2 x i64> %i.bb, i64 0
  store i64 %i.bd, ptr %i.bc, align 1, !tbaa !73
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond46.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond46.not, label %._crit_edge44, label %.noexc

._crit_edge44:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 7 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 4 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge37, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !42, !noalias !149 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !149 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 14 uses
  %i.q = load i32, ptr %4, align 4, !tbaa !37     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  %i.s = load ptr, ptr %5, align 8, !tbaa !42     ; 9 uses
  %i.t = sext i32 %i.k to i64                     ; 9 uses
  %i.u = add nsw i32 %i.j, 1                      ; 2 uses
  br i1 %i.r, label %.noexc.us.preheader, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.v = sub i32 %i.j, %i.k                       ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 55
  br i1 %min.iters.check, label %.noexc.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc.preheader
  %i.y = shl nsw i64 %i.t, 1
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.y
  %i.z = sub i32 %i.j, %i.k
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = shl nsw i64 %i.ab, 1
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %scevgep54 = getelementptr i8, ptr %i.ad, i64 2
  %i.ae = mul i64 %i.n, %i.p                      ; 2 uses
  %i.af = add nsw i64 %i.t, %i.aa
  %i.ag = mul i64 %i.ae, %i.af
  %scevgep55 = getelementptr i8, ptr %i.l, i64 %i.ag ; 4 uses
  %i.ah = mul i64 %i.ae, %i.t
  %scevgep56 = getelementptr i8, ptr %i.l, i64 %i.ah ; 4 uses
  %i.ai = icmp ult ptr %scevgep55, %scevgep56
  %umin = select i1 %i.ai, ptr %scevgep55, ptr %scevgep56
  %i.aj = icmp ugt ptr %scevgep55, %scevgep56
  %umax = select i1 %i.aj, ptr %scevgep55, ptr %scevgep56
  %scevgep57 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %umin, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934584               ; 3 uses
  %i.ak = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %index, %i.t                    ; 9 uses
  %i.am = add i64 %i.al, 1
  %i.an = add i64 %i.al, 2
  %i.ao = add i64 %i.al, 3
  %i.ap = add i64 %i.al, 4
  %i.aq = add i64 %i.al, 5
  %i.ar = add i64 %i.al, 6
  %i.as = add i64 %i.al, 7
  %i.at = mul i64 %factor.op.mul, %i.al
  %i.au = mul i64 %factor.op.mul, %i.am
  %i.av = mul i64 %factor.op.mul, %i.an
  %i.aw = mul i64 %factor.op.mul, %i.ao
  %i.ax = mul i64 %factor.op.mul, %i.ap
  %i.ay = mul i64 %factor.op.mul, %i.aq
  %i.az = mul i64 %factor.op.mul, %i.ar
  %i.ba = mul i64 %factor.op.mul, %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ax
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ba
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !152, !alias.scope !154
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !152, !alias.scope !154
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !152, !alias.scope !154
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !152, !alias.scope !154
  %i.bn = load i16, ptr %i.bf, align 2, !tbaa !152, !alias.scope !154
  %i.bo = load i16, ptr %i.bg, align 2, !tbaa !152, !alias.scope !154
  %i.bp = load i16, ptr %i.bh, align 2, !tbaa !152, !alias.scope !154
  %i.bq = load i16, ptr %i.bi, align 2, !tbaa !152, !alias.scope !154
  %i.br = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 1
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 2
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 3
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 4
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 5
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 6
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 7
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.al
  store <8 x i16> %i.by, ptr %i.bz, align 2, !tbaa !152, !alias.scope !157, !noalias !154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge37, label %.noexc.preheader72

.noexc.preheader72:                               ; preds = %vector.memcheck, %.noexc.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.noexc.preheader ], [ %i.ak, %middle.block ] ; 3 uses
  %i.cb = add i32 %i.j, 1
  %i.cc = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.cd = sub i32 %i.cb, %i.cc
  %i.ce = sub i32 %i.j, %i.cc
  %xtraiter = and i32 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader72, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %indvars.iv.ph, %.noexc.preheader72 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader72 ]
end_hunk_2
begin_hunk_3_@_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a

bb.d:                                             ; preds = %._crit_edge84, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not81 = icmp sgt i32 %i.k, %i.j
  br i1 %.not81, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !183
  %i.n = load ptr, ptr %3, align 8, !tbaa !42, !noalias !183 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !183 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35, !noalias !183 ; 5 uses
  %factor.op.mul = mul i64 %i.p, %i.r             ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !42, !noalias !186 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43, !noalias !186 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35, !noalias !186 ; 3 uses
  %factor.op.mul83 = mul i64 %i.v, %i.x           ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !37     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.r, %i.s                      ; 2 uses
  br i1 %i.z, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ab = load i32, ptr %6, align 4, !tbaa !37    ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = sext i32 %i.ab to i64                   ; 3 uses
  br i1 %i.ac, label %.noexc.lr.ph.split.split, label %._crit_edge.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ae = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  %i.af = load i32, ptr %8, align 4, !tbaa !37    ; 3 uses
  %i.ag = load i32, ptr %9, align 4, !tbaa !37    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ai = sext i32 %i.af to i64                   ; 5 uses
  %i.aj = sext i32 %i.ae to i64                   ; 2 uses
  %i.ak = sext i32 %i.k to i64                    ; 4 uses
  %i.al = add nsw i32 %i.j, 1
  %wide.trip.count93 = zext nneg i32 %i.y to i64  ; 2 uses
  %factor.op.mul125 = mul i64 %i.aa, %i.aj        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 9 uses
  %i.am = mul i64 %i.v, %i.x
  %i.an = mul i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = mul i64 %i.v, %i.x
  %i.ap = add nsw i64 %wide.trip.count93, -1      ; 2 uses
  %i.aq = mul nsw i64 %i.ap, %i.ad
  %i.ar = shl i64 %i.aq, 1
  %i.as = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.at = mul i64 %i.p, %i.r
  %i.au = mul i64 %i.at, %i.ak
  %i.av = mul i64 %i.p, %i.r
  %i.aw = mul nsw i64 %i.ap, %i.s
  %i.ax = mul i64 %i.aw, %i.aj
  %i.ay = mul i64 %i.p, %i.ak
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = mul i64 %i.r, %i.az
  %i.bb = getelementptr i8, ptr %i.t, i64 %i.an
  %i.bc = getelementptr i8, ptr %i.t, i64 %i.an
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ar
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.as
  %i.bf = getelementptr i8, ptr %i.n, i64 %i.au
  %i.bg = getelementptr i8, ptr %i.n, i64 %i.ba
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.as
  %min.iters.check = icmp ugt i32 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.af, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %factor.op.mul125, 0
  %min.iters.check133 = icmp ult i32 %i.ab, 16
  %i.bi = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec135 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n139 = icmp eq i64 %n.vec135, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.bj = load ptr, ptr %10, align 8, !tbaa !51   ; 5 uses
  %i.bk = sext i32 %i.af to i64
  %i.bl = sext i32 %i.ae to i64
  %i.bm = sext i32 %i.k to i64
  %i.bn = add nsw i32 %i.j, 1
  %wide.trip.count112 = zext nneg i32 %i.y to i64
  %factor.op.mul127 = mul i64 %i.aa, %i.bl
  %wide.trip.count107 = zext nneg i32 %i.ab to i64
  %wide.trip.count102 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count102, 3   ; 3 uses
  %i.bo = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count102, 2147483644
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  br label %.noexc.us

.noexc.us:                                        ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us, %.noexc.lr.ph.split.split.split.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us ], [ %i.bm, %.noexc.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv114
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass84.us = mul i64 %factor.op.mul83, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass84.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge74.split.us.us.us, %.noexc.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %._crit_edge74.split.us.us.us ], [ 0, %.noexc.us ] ; 2 uses
  %.03876.us.us = phi ptr [ %i.dt, %._crit_edge74.split.us.us.us ], [ %i.bq, %.noexc.us ] ; 2 uses
  %.reass128 = mul i64 %indvars.iv109, %factor.op.mul127
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.reass128
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bs = mul nsw i64 %indvars.iv104, %i.bk
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bs ; 6 uses
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !152
  %i.bv = zext i16 %i.bu to i32
  %i.bw = shl nuw i32 %i.bv, 16
  %i.bx = bitcast i32 %i.bw to float              ; 2 uses
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.06970.us.us.us = phi float [ %.sroa.speculated.us.us.us.3, %.lr.ph.us.us.us.new ], [ %i.bx, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv99
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !37
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !152
  %i.cd = zext i16 %i.cc to i32
  %i.ce = shl nuw i32 %i.cd, 16
  %i.cf = bitcast i32 %i.ce to float
  %.sroa.speculated.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.06970.us.us.us, float %i.cf)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv99
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !37
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !152
  %i.cm = zext i16 %i.cl to i32
  %i.cn = shl nuw i32 %i.cm, 16
  %i.co = bitcast i32 %i.cn to float
  %.sroa.speculated.us.us.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us, float %i.co)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv99
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !152
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 16
  %i.cx = bitcast i32 %i.cw to float
  %.sroa.speculated.us.us.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.1, float %i.cx)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv99
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !37
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !152
  %i.de = zext i16 %i.dd to i32
  %i.df = shl nuw i32 %i.de, 16
  %i.dg = bitcast i32 %i.df to float
  %.sroa.speculated.us.us.us.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.2, float %i.dg) ; 3 uses
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !189

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod142.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next100.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.06970.us.us.us.epil.init = phi float [ %i.bx, %.lr.ph.us.us.us ], [ %.sroa.speculated.us.us.us.3, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv.next100.epil, %bb.c ], [ %indvars.iv99.epil.init, %.epil.preheader ] ; 2 uses
  %.06970.us.us.us.epil = phi float [ %.sroa.speculated.us.us.us.epil, %bb.c ], [ %.06970.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv99.epil
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !37
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !152
  %i.dm = zext i16 %i.dl to i32
  %i.dn = shl nuw i32 %i.dm, 16
  %i.do = bitcast i32 %i.dn to float
  %.sroa.speculated.us.us.us.epil = call nnan ninf nsz float @llvm.maxnum.f32(float %.06970.us.us.us.epil, float %i.do) ; 2 uses
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter141
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !190

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.sroa.speculated.us.us.us.lcssa = phi float [ %.sroa.speculated.us.us.us.3, %._crit_edge.us.us.us.unr-lcssa ], [ %.sroa.speculated.us.us.us.epil, %bb.c ]
  %i.dp = bitcast float %.sroa.speculated.us.us.us.lcssa to i32
  %i.dq = lshr i32 %i.dp, 16
  %i.dr = trunc nuw i32 %i.dq to i16
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.03876.us.us, i64 %indvars.iv104
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !152
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge74.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !191

._crit_edge74.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.03876.us.us, i64 %i.ad
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us, label %.preheader.us.us, !llvm.loop !192

._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us:   ; preds = %._crit_edge74.split.us.us.us
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %lftr.wideiv117 = trunc i64 %indvars.iv.next115 to i32
  %exitcond118.not = icmp eq i32 %i.bn, %lftr.wideiv117
  br i1 %exitcond118.not, label %._crit_edge.split, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80
  %indvar = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80 ] ; 3 uses
  %indvars.iv95 = phi i64 [ %i.ak, %.noexc.preheader ], [ %indvars.iv.next96, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80 ] ; 3 uses
  %i.du = mul i64 %i.ao, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.du
  %scevgep130 = getelementptr i8, ptr %i.be, i64 %i.du
  %i.dv = mul i64 %i.av, %indvar                  ; 2 uses
  %scevgep131 = getelementptr i8, ptr %i.bf, i64 %i.dv
  %scevgep132 = getelementptr i8, ptr %i.bh, i64 %i.dv
  %.reass = mul i64 %factor.op.mul, %indvars.iv95
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass
  %.reass84 = mul i64 %factor.op.mul83, %indvars.iv95
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass84
  %bound0 = icmp ult ptr %scevgep, %scevgep132
  %bound1 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict = and i1 %bound0, %bound1
  %i.dy = or i1 %found.conflict, %stride.check
  br label %iter.check

iter.check:                                       ; preds = %.noexc, %._crit_edge74.split
  %indvars.iv90 = phi i64 [ 0, %.noexc ], [ %indvars.iv.next91, %._crit_edge74.split ] ; 2 uses
  %.03876 = phi ptr [ %i.dx, %.noexc ], [ %i.eo, %._crit_edge74.split ] ; 8 uses
  %.reass126 = mul i64 %indvars.iv90, %factor.op.mul125
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.reass126 ; 7 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.dy
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <8 x i16>, ptr %i.ea, align 2, !tbaa !152, !alias.scope !193
  %wide.load134 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !152, !alias.scope !193
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <8 x i16> %wide.load, ptr %i.ec, align 2, !tbaa !152, !alias.scope !196, !noalias !193
  store <8 x i16> %wide.load134, ptr %i.ed, align 2, !tbaa !152, !alias.scope !196, !noalias !193
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge74.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !199

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %index136
  %wide.load137 = load <4 x i16>, ptr %i.ef, align 2, !tbaa !152, !alias.scope !193
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %index136
  store <4 x i16> %wide.load137, ptr %i.eg, align 2, !tbaa !152, !alias.scope !196, !noalias !193
  %index.next138 = add nuw i64 %index136, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next138, %n.vec135
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n139, label %._crit_edge74.split, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec135, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ei = mul nsw i64 %indvars.iv.prol, %i.ai
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !152
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %indvars.iv.prol
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !152
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !201

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.em = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %._crit_edge74.split, label %vec.epilog.scalar.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge.split80:         ; preds = %._crit_edge74.split
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next96 to i32
  %exitcond98.not = icmp eq i32 %i.al, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond98.not, label %._crit_edge.split, label %.noexc

._crit_edge74.split:                              ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %i.ad
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80, label %iter.check, !llvm.loop !192

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ep = mul nsw i64 %indvars.iv, %i.ai
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !152
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %indvars.iv
  store i16 %i.er, ptr %i.es, align 2, !tbaa !152
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.et = mul nsw i64 %indvars.iv.next, %i.ai
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !152
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %indvars.iv.next
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !152
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ex = mul nsw i64 %indvars.iv.next.1, %i.ai
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !152
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %indvars.iv.next.1
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !152
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fb = mul nsw i64 %indvars.iv.next.2, %i.ai
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !152
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %indvars.iv.next.2
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !152
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74.split, label %vec.epilog.scalar.ph, !llvm.loop !202

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18) #6 personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.9:bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not82 = icmp sgt i32 %i.k, %i.j
  br i1 %.not82, label %._crit_edge84, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %6, align 4, !tbaa !37     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge84

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.aw, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ax, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !42, !noalias !227
  %i.x = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !227
  %i.y = mul i64 %i.x, %indvars.iv93
  %i.z = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !227 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = load i32, ptr %5, align 4, !tbaa !37
  %i.ad = sitofp fast i32 %i.ac to float
  %i.ae = fdiv fast float 1.000000e+00, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = icmp sgt i32 %i.v, 0
  br i1 %i.ah, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !227
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.z, %i.aj
  %i.al = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.an = load ptr, ptr %4, align 8, !tbaa !42, !noalias !230
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !230
  %i.ap = mul i64 %i.ao, %indvars.iv93
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !230
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge78
  %i.at = phi i32 [ %i.ay, %._crit_edge78 ], [ %i.u, %.preheader.preheader ]
  %i.au = phi i32 [ %i.az, %._crit_edge78 ], [ %i.al, %.preheader.preheader ] ; 2 uses
  %.04181 = phi i32 [ %i.bd, %._crit_edge78 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04280 = phi ptr [ %i.bc, %._crit_edge78 ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph77, label %._crit_edge78

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge78, %.preheader.lr.ph, %.noexc
  %i.aw = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.ay, %._crit_edge78 ]
  %i.ax = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.ay, %._crit_edge78 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next94 to i32
  %exitcond96.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond96.not, label %._crit_edge84, label %.noexc, !llvm.loop !233

._crit_edge78.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %6, align 4, !tbaa !37
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader
  %i.ay = phi i32 [ %i.at, %.preheader ], [ %.pre, %._crit_edge78.loopexit ] ; 4 uses
  %i.az = phi i32 [ %i.au, %.preheader ], [ %i.cm, %._crit_edge78.loopexit ] ; 2 uses
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %.04280, i64 %i.bb
  %i.bd = add nuw nsw i32 %.04181, 1              ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.ay
  br i1 %i.be, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !234

.lr.ph77:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.bf = load i32, ptr %8, align 4, !tbaa !37
  %i.bg = mul nsw i32 %i.bf, %.04181
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.ak, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bi
  %i.bk = load i32, ptr %9, align 4, !tbaa !37
  %i.bl = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.bm = shl i32 %i.bl, 2
  %i.bn = mul i32 %i.bm, %i.bk
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = load i32, ptr %5, align 4, !tbaa !37    ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph77
  %i.bs = load ptr, ptr %10, align 8, !tbaa !51
  %wide.trip.count = zext nneg i32 %i.bq to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.03974 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.cd, %bb.c ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37
  %i.bv = shl nsw i32 %i.bu, 2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 1, !tbaa !73
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>
  %i.cd = fadd fast <4 x float> %.03974, %i.cc    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !235

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ce = fmul fast <4 x float> %i.cd, %i.ag
  %i.cf = bitcast <4 x float> %i.ce to <8 x i16>
  %i.cg = shufflevector <8 x i16> %i.cf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ch = bitcast <8 x i16> %i.cg to <4 x float>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cj = bitcast <4 x float> %i.ci to <2 x i64>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph77
  %.039.lcssa = phi <2 x i64> [ <i64 0, i64 undef>, %.lr.ph77 ], [ %i.cj, %._crit_edge.loopexit ]
  %.idx = shl nuw nsw i64 %indvars.iv90, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.04280, i64 %.idx
  %i.cl = extractelement <2 x i64> %.039.lcssa, i64 0
  store i64 %i.cl, ptr %i.ck, align 1, !tbaa !73
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.cm = load i32, ptr %7, align 4, !tbaa !37    ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next91, %i.cn
  br i1 %i.co, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !236

._crit_edge84:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge84, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 5 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !237
  %i.n = load ptr, ptr %3, align 8, !tbaa !42, !noalias !237
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !237
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35, !noalias !237 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load ptr, ptr %4, align 8, !tbaa !42, !noalias !240 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43, !noalias !240
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35, !noalias !240
  %factor.op.mul86 = mul i64 %i.v, %i.x           ; 6 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !37     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.r, %i.s
  br i1 %i.z, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ab = load i32, ptr %6, align 4, !tbaa !37    ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = sext i32 %i.ab to i64
  br i1 %i.ac, label %.noexc.lr.ph.split.split, label %._crit_edge.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ae = load i32, ptr %9, align 4, !tbaa !37    ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ag = zext nneg i32 %i.ab to i64
  %i.ah = sext i32 %i.k to i64                    ; 5 uses
  %i.ai = zext nneg i32 %i.y to i64
  %i.aj = mul nuw nsw i64 %i.ag, %i.ai
  %i.ak = shl nuw nsw i64 %i.aj, 1                ; 5 uses
  %i.al = add nsw i32 %i.j, 1
  %i.am = sub i32 %i.al, %i.k                     ; 2 uses
  %11 = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.am, 3                    ; 3 uses
  %i.an = icmp ult i32 %11, 3
  br i1 %i.an, label %.noexc.epil.preheader, label %.noexc.preheader.new

.noexc.preheader.new:                             ; preds = %.noexc.preheader
  %unroll_iter = and i32 %i.am, -4
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ao = sitofp fast i32 %i.ae to float
  %i.ap = load i32, ptr %8, align 4, !tbaa !37
  %i.aq = load i32, ptr %7, align 4, !tbaa !37
  %i.ar = load ptr, ptr %10, align 8, !tbaa !51   ; 5 uses
  %i.as = sext i32 %i.ap to i64
  %i.at = sext i32 %i.aq to i64
  %i.au = sext i32 %i.k to i64
  %i.av = add nsw i32 %i.j, 1
  %wide.trip.count103 = zext nneg i32 %i.y to i64
  %factor.op.mul116 = mul i64 %i.aa, %i.at
  %wide.trip.count98 = zext nneg i32 %i.ab to i64
  %wide.trip.count.a = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter122 = and i64 %wide.trip.count.a, 3    ; 3 uses
  %i.aw = icmp ult i32 %i.ae, 4
  %unroll_iter127 = and i64 %wide.trip.count.a, 2147483644
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod126 = icmp ne i64 %xtraiter122, 0
  %i.ax = fdiv fast float 1.000000e+00, %i.ao
  br label %.noexc.us

.noexc.us:                                        ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc.lr.ph.split.split.split.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.au, %.noexc.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv105
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge77.split.us.us.us ], [ 0, %.noexc.us ] ; 2 uses
  %.04079.us.us = phi ptr [ %i.de, %._crit_edge77.split.us.us.us ], [ %i.az, %.noexc.us ] ; 2 uses
  %.reass = mul i64 %indvars.iv100, %factor.op.mul116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.reass
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv95, %i.as
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bb ; 5 uses
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.03772.us.us.us = phi float [ %i.cp, %.lr.ph.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us ]
  %niter128 = phi i64 [ %niter128.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !152
  %i.bi = zext i16 %i.bh to i32
  %i.bj = shl nuw i32 %i.bi, 16
  %i.bk = bitcast i32 %i.bj to float
  %i.bl = fadd fast float %.03772.us.us.us, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !37
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !152
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = bitcast i32 %i.bt to float
  %i.bv = fadd fast float %i.bl, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !37
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !152
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 16
  %i.ce = bitcast i32 %i.cd to float
  %i.cf = fadd fast float %i.bv, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !37
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !152
  %i.cm = zext i16 %i.cl to i32
  %i.cn = shl nuw i32 %i.cm, 16
  %i.co = bitcast i32 %i.cn to float
  %i.cp = fadd fast float %i.cf, %i.co            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter128.next.3 = add i64 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !243

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod124.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.03772.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.us ], [ %i.cp, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod126)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %.03772.us.us.us.epil = phi float [ %i.cy, %bb.c ], [ %.03772.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.epil
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !152
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 16
  %i.cx = bitcast i32 %i.cw to float
  %i.cy = fadd fast float %.03772.us.us.us.epil, %i.cx ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !244

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cp, %._crit_edge.us.us.us.unr-lcssa ], [ %i.cy, %bb.c ]
  %i.cz = fmul fast float %.lcssa, %i.ax
  %i.da = bitcast float %i.cz to i32
  %i.db = lshr i32 %i.da, 16
  %i.dc = trunc nuw i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.04079.us.us, i64 %indvars.iv95
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !152
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %._crit_edge77.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !245

._crit_edge77.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.04079.us.us, i64 %i.ad
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, label %.preheader.us.us, !llvm.loop !246

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us:   ; preds = %._crit_edge77.split.us.us.us
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %lftr.wideiv108 = trunc i64 %indvars.iv.next106 to i32
  %exitcond109.not = icmp eq i32 %i.av, %lftr.wideiv108
  br i1 %exitcond109.not, label %._crit_edge.split, label %.noexc.us

.noexc:                                           ; preds = %.noexc, %.noexc.preheader.new
  %indvar = phi i64 [ 0, %.noexc.preheader.new ], [ %indvar.next.3, %.noexc ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc.preheader.new ], [ %niter.next.3, %.noexc ]
  %i.df = add nsw i64 %indvar, %i.ah
  %i.dg = mul i64 %factor.op.mul86, %i.df
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.dg
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.ak, i1 false), !tbaa !152
  %indvar.next = or disjoint i64 %indvar, 1
  %i.dh = add nsw i64 %indvar.next, %i.ah
  %i.di = mul i64 %factor.op.mul86, %i.dh
  %scevgep.1 = getelementptr i8, ptr %i.t, i64 %i.di
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.1, i8 0, i64 %i.ak, i1 false), !tbaa !152
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.dj = add nsw i64 %indvar.next.1, %i.ah
  %i.dk = mul i64 %factor.op.mul86, %i.dj
  %scevgep.2 = getelementptr i8, ptr %i.t, i64 %i.dk
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.2, i8 0, i64 %i.ak, i1 false), !tbaa !152
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.dl = add nsw i64 %indvar.next.2, %i.ah
  %i.dm = mul i64 %factor.op.mul86, %i.dl
  %scevgep.3 = getelementptr i8, ptr %i.t, i64 %i.dm
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.3, i8 0, i64 %i.ak, i1 false), !tbaa !152
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.loopexit118.unr-lcssa, label %.noexc

._crit_edge.split.loopexit118.unr-lcssa:          ; preds = %.noexc
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.noexc.epil.preheader

.noexc.epil.preheader:                            ; preds = %._crit_edge.split.loopexit118.unr-lcssa, %.noexc.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next.3, %._crit_edge.split.loopexit118.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.noexc.epil

.noexc.epil:                                      ; preds = %.noexc.epil, %.noexc.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc.epil.preheader ], [ %indvar.next.epil, %.noexc.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc.epil.preheader ], [ %epil.iter.next, %.noexc.epil ]
  %i.dn = add i64 %indvar.epil, %i.ah
  %i.do = mul i64 %factor.op.mul86, %i.dn
  %scevgep.epil = getelementptr i8, ptr %i.t, i64 %i.do
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.epil, i8 0, i64 %i.ak, i1 false), !tbaa !152
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.noexc.epil, !llvm.loop !247

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit118.unr-lcssa, %.noexc.epil, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #17

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 256}
!10 = !{!"_ZTSN4ncnn7PoolingE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!29, !12, i64 32}
!29 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !30, i64 8, !30, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!30 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!34, !6, i64 24}
!34 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !30, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!35 = !{!34, !17, i64 16}
!36 = !{!34, !6, i64 44}
!37 = !{!6, !6, i64 0}
!38 = !{!34, !6, i64 48}
!39 = !{!34, !6, i64 56}
!40 = !{!10, !6, i64 244}
!41 = !{!29, !30, i64 8}
!42 = !{!34, !13, i64 0}
!43 = !{!34, !17, i64 64}
!44 = !{!10, !6, i64 208}
!45 = !{!29, !6, i64 4}
!46 = !{!10, !6, i64 212}
!47 = !{!10, !6, i64 220}
!48 = !{!10, !6, i64 216}
!49 = !{!10, !6, i64 224}
!50 = !{!21, !22, i64 0}
!51 = !{!22, !22, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = distinct !{!55, !53}
!56 = !{!10, !6, i64 252}
!57 = !{!10, !6, i64 248}
!58 = !{!21, !22, i64 16}
!59 = !{!34, !22, i64 8}
!60 = !{!34, !30, i64 32}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !8, i64 0}
!63 = distinct !{null}
!64 = !{!11, !12, i64 11}
!65 = !{!11, !12, i64 12}
!66 = !{!10, !6, i64 228}
!67 = !{!10, !6, i64 232}
!68 = !{!10, !6, i64 236}
!69 = !{!10, !6, i64 240}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, !"_ZNK4ncnn3Mat7channelEi"}
!73 = !{!7, !7, i64 0}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !53}
!77 = !{!78}
!78 = !{i64 2, i64 -1, i64 -1, i1 true}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!81 = distinct !{!81, !"_ZNK4ncnn3Mat7channelEi"}
!82 = distinct !{!82, !75}
!83 = distinct !{!83, !53}
!84 = !{!21, !22, i64 8}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!87 = distinct !{!87, !"_ZN4ncnn3Mat7channelEi"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!90 = distinct !{!90, !"_ZN4ncnn3Mat7channelEi"}
!91 = distinct !{!91, !54}
!92 = distinct !{!92, !53, !54}
!93 = distinct !{!93, !75}
!94 = distinct !{!94, !53}
!95 = distinct !{!95, !53}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!98 = distinct !{!98, !"_ZN4ncnn3Mat7channelEi"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!101 = distinct !{!101, !"_ZN4ncnn3Mat7channelEi"}
!102 = distinct !{!102, !54}
!103 = distinct !{!103, !53, !54}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !53}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!109 = distinct !{!109, !"_ZN4ncnn3Mat7channelEi"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!112 = distinct !{!112, !"_ZN4ncnn3Mat7channelEi"}
!113 = distinct !{!113, !54}
!114 = distinct !{!114, !53, !54}
!115 = distinct !{!115, !75}
!116 = distinct !{!116, !53}
!117 = distinct !{!117, !53}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!120 = distinct !{!120, !"_ZN4ncnn3Mat7channelEi"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!123 = distinct !{!123, !"_ZNK4ncnn3Mat7channelEi"}
!124 = distinct !{!124, !54}
!125 = distinct !{!125, !53}
!126 = distinct !{!126, !53, !54}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, !"_ZNK4ncnn3Mat7channelEi"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!132 = distinct !{!132, !"_ZN4ncnn3Mat7channelEi"}
!133 = distinct !{!133, !54}
!134 = distinct !{!134, !53}
!135 = distinct !{!135, !53}
end_hunk_4
