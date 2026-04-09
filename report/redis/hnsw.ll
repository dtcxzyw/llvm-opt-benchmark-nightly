inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@vectors_distance_float_avx2:bb.a
  %i.z = load <8 x float>, ptr %i.y, align 1, !tbaa !32
  %i.aa = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.s, <8 x float> %i.u, <8 x float> %i.p) ; 3 uses
  %i.ab = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.x, <8 x float> %i.z, <8 x float> %i.q) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38
end_hunk_0
begin_hunk_1_@vectors_distance_float_avx2:bb.a
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.03658.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %.03757.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod83 = trunc i64 %i.e to i1
end_hunk_1
begin_hunk_2_@vectors_distance_float_avx2:bb.a
  %i.al = load <8 x float>, ptr %i.ak, align 1, !tbaa !32
  %i.am = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ae, <8 x float> %i.ag, <8 x float> %.03658.epil.init)
  %i.an = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.aj, <8 x float> %i.al, <8 x float> %.03757.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa79 = phi <8 x float> [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil.preheader ]
  %.lcssa78 = phi <8 x float> [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil.preheader ]
  %3 = and i32 %2, -16
  %i.ao = fadd <8 x float> %.lcssa78, %.lcssa79
  br label %._crit_edge

end_hunk_2
begin_hunk_3_@vectors_distance_float_avx2:bb.a
  br i1 %i.aw, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %._crit_edge
  %i.ax = zext i32 %.038.lcssa to i64             ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter84 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

end_hunk_3
begin_hunk_4_@vectors_distance_float:bb.a
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %3 = and i32 %2, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.f
end_hunk_4
begin_hunk_5_@vectors_distance_float:bb.a
  br i1 %i.k, label %.lr.ph73.preheader, label %._crit_edge

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.m = zext i32 %.0.lcssa to i64                ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

end_hunk_5
begin_hunk_6_@vectors_distance_float:bb.a
  %i.ai = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ai, <2 x float> %i.ag)
  %i.ak = fadd <2 x float> %i.u, %i.aj            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.al = or disjoint i64 %indvars.iv.next, 7
  %i.am = icmp samesign ult i64 %i.al, %i.i
  br i1 %i.am, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !42
end_hunk_6
begin_hunk_7_@vectors_distance_q8_avx2:bb.a
  %i.z = sext <16 x i8> %i.y to <16 x i16>
  %i.aa = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.w, <16 x i16> %i.z)
  %i.ab = add <8 x i32> %i.t, %i.aa               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.ac = or disjoint i64 %indvars.iv.next, 31
  %i.ad = icmp samesign ult i64 %i.ac, %i.g
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %5 = and i32 %2, -32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
end_hunk_7
begin_hunk_8_@vectors_distance_q8_avx2:bb.a

iter.check:                                       ; preds = %._crit_edge
  %i.am = zext i32 %.054.lcssa to i64             ; 6 uses
  %wide.trip.count = zext i32 %2 to i64           ; 4 uses
  %i.an = sub nsw i64 %wide.trip.count, %i.am     ; 4 uses
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph81.preheader, label %vector.main.loop.iter.check

end_hunk_8
begin_hunk_9_@vectors_distance_q8_avx2:bb.a
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 31        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.an, %n.mod.vf       ; 3 uses
  %i.ao = add nsw i64 %n.vec, %i.am
  %i.ap = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.ak, i64 0
  br label %vector.body
end_hunk_9
begin_hunk_10_@vectors_distance_q8_avx2:bb.a
  %bin.rdx106 = add <8 x i32> %i.bm, %bin.rdx
  %bin.rdx107 = add <8 x i32> %i.bn, %bin.rdx106
  %i.bp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx107) ; 3 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bp, %vec.epilog.iter.check ], [ %i.ak, %vector.main.loop.iter.check ]
  %n.vec109.a = and i64 %wide.trip.count, 3       ; 2 uses
  %n.vec109 = sub nsw i64 %i.an, %n.vec109.a      ; 2 uses
  %i.bq = add nsw i64 %n.vec109, %i.am
  %i.br = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_10
begin_hunk_11_@vectors_distance_q8_avx2:bb.a
  %i.bx = mul nsw <4 x i32> %i.bw, %i.bu
  %i.by = add <4 x i32> %i.bx, %vec.phi111        ; 2 uses
  %index.next114 = add nuw i64 %index110, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.by) ; 2 uses
  %cmp.n115 = icmp eq i64 %n.vec109.a, 0
  br i1 %cmp.n115, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_11
begin_hunk_12_@vectors_distance_q8:bb.a
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %5 = and i32 %2, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.g
end_hunk_12
begin_hunk_13_@vectors_distance_q8:bb.a

.lr.ph92.preheader:                               ; preds = %.preheader
  %i.q = zext i32 %.070.lcssa to i64              ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.r = sub nsw i64 %wide.trip.count, %i.q       ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph92.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader
  %n.vec.a = and i64 %wide.trip.count, 7          ; 2 uses
  %n.vec = sub nuw nsw i64 %i.r, %n.vec.a         ; 2 uses
  %i.s = add nsw i64 %n.vec, %i.q
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa, i64 0
  br label %vector.body

end_hunk_13
begin_hunk_14_@vectors_distance_q8:bb.a
  %i.ae = add <4 x i32> %i.ac, %vec.phi           ; 2 uses
  %i.af = add <4 x i32> %i.ad, %vec.phi108        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec.a, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph92.preheader112

.lr.ph92.preheader112:                            ; preds = %.lr.ph92.preheader, %middle.block
end_hunk_14
begin_hunk_15_@vectors_distance_q8:bb.a
  %i.cy = add i32 %i.cx, %i.ch
  %i.cz = add i32 %i.cy, %i.cp
  %i.da = add i32 %i.cz, %i.cw                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.db = or disjoint i64 %indvars.iv.next, 7
  %i.dc = icmp samesign ult i64 %i.db, %i.o
  br i1 %i.dc, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !57
end_hunk_15
begin_hunk_16_@hnsw_normalize_vector:bb.a
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %3 = and i32 %2, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
end_hunk_16
begin_hunk_17_@hnsw_normalize_vector:bb.a
  br i1 %i.c, label %.lr.ph48.preheader, label %._crit_edge

.lr.ph48.preheader:                               ; preds = %.preheader
  %i.d = zext i32 %.0.lcssa to i64                ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.prol.loopexit, label %.lr.ph48.prol

end_hunk_17
begin_hunk_18_@hnsw_normalize_vector:bb.a
  %i.w = load float, ptr %i.v, align 4, !tbaa !27 ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.t)
  %i.y = fadd float %.03843, %i.x                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.z = or disjoint i64 %indvars.iv.next, 3
  %i.aa = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.aa, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !85
end_hunk_18
begin_hunk_19_@hnsw_node_new:bb.a

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !15   ; 8 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !74  ; 8 uses
  %i.ab = icmp ugt i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader.i

end_hunk_19
begin_hunk_20_@hnsw_node_new:bb.a
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %7 = and i32 %i.aa, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
end_hunk_20
begin_hunk_21_@hnsw_node_new:bb.a
  br i1 %i.ad, label %.lr.ph48.preheader.i, label %._crit_edge.i

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %i.ae = zext i32 %.0.lcssa.i to i64             ; 3 uses
  %wide.trip.count.i = zext i32 %i.aa to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

end_hunk_21
begin_hunk_22_@hnsw_node_new:bb.a
  %i.au = load float, ptr %i.at, align 4, !tbaa !27 ; 2 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.as)
  %i.aw = fadd float %.03843.i, %i.av             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ax = or disjoint i64 %indvars.iv.next.i, 3
  %i.ay = icmp samesign ult i64 %i.ax, %i.ac
  br i1 %i.ay, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !85
end_hunk_22
begin_hunk_23_@hnsw_init_tmp_node:bb.a
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 4 %3, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !74   ; 8 uses
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph.preheader.i, label %.preheader.i

end_hunk_23
begin_hunk_24_@hnsw_init_tmp_node:bb.a
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %4 = and i32 %i.m, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
end_hunk_24
begin_hunk_25_@hnsw_init_tmp_node:bb.a
  br i1 %i.p, label %.lr.ph48.preheader.i, label %._crit_edge.i

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %i.q = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %wide.trip.count.i = zext i32 %i.m to i64       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

end_hunk_25
begin_hunk_26_@hnsw_init_tmp_node:bb.a
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ae)
  %i.ai = fadd float %.03843.i, %i.ah             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.aj = or disjoint i64 %indvars.iv.next.i, 3
  %i.ak = icmp samesign ult i64 %i.aj, %i.o
  br i1 %i.ak, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !85
end_hunk_26
begin_hunk_27_@hnsw_reconnect_nodes:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15 ; 8 uses
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !74  ; 8 uses
  %i.aq = icmp ugt i32 %i.ap, 15                  ; 2 uses
  %.pre.i360 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.ar = and i32 %.pre.i360, 2129920
end_hunk_27
begin_hunk_28_@hnsw_reconnect_nodes:bb.a
  br label %.lr.ph.i368

.preheader.loopexit.i371:                         ; preds = %.lr.ph.i368
  %4 = and i32 %i.ap, -8
  br label %.preheader.i362

.preheader.i362:                                  ; preds = %.preheader.loopexit.i371, %bb.o
end_hunk_28
begin_hunk_29_@hnsw_reconnect_nodes:bb.a
  br i1 %i.ba, label %.lr.ph73.preheader.i, label %._crit_edge.i364

.lr.ph73.preheader.i:                             ; preds = %.preheader.i362
  %i.bc = zext i32 %.0.lcssa.i363 to i64          ; 3 uses
  %wide.trip.count.i365 = zext i32 %i.ap to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i365, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

end_hunk_29
begin_hunk_30_@hnsw_reconnect_nodes:bb.a
  %i.by = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bw)
  %i.ca = fadd <2 x float> %i.bk, %i.bz           ; 2 uses
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i369, 8 ; 2 uses
  %i.cb = or disjoint i64 %indvars.iv.next.i370, 7
  %i.cc = icmp samesign ult i64 %i.cb, %i.ay
  br i1 %i.cc, label %.lr.ph.i368, label %.preheader.loopexit.i371, !llvm.loop !42
end_hunk_30
begin_hunk_31_@hnsw_reconnect_nodes:bb.a
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15 ; 12 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !15 ; 12 uses
  %i.de = load i32, ptr %i.h, align 8, !tbaa !74  ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dg = load float, ptr %i.df, align 8, !tbaa !27 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
end_hunk_31
begin_hunk_32_@hnsw_reconnect_nodes:bb.a
  br label %.lr.ph.i357

.preheader.loopexit.i:                            ; preds = %.lr.ph.i357
  %5 = and i32 %i.de, -8
  br label %.preheader.i356

.preheader.i356:                                  ; preds = %.preheader.loopexit.i, %bb.v
  %.072.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.ga, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.hj, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.v ], [ %5, %.preheader.loopexit.i ] ; 2 uses
  %i.dy = icmp ult i32 %.070.lcssa.i, %i.de
  br i1 %i.dy, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.dz = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.de to i64      ; 3 uses
  %i.ea = sub nsw i64 %wide.trip.count.i, %i.dz   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ea, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.vec.a = and i64 %wide.trip.count.i, 7        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ea, %n.vec.a        ; 2 uses
  %i.eb = add nsw i64 %n.vec, %i.dz
  %i.ec = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

end_hunk_32
begin_hunk_33_@hnsw_reconnect_nodes:bb.a
  %i.en = add <4 x i32> %i.el, %vec.phi           ; 2 uses
  %i.eo = add <4 x i32> %i.em, %vec.phi620        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eo, %i.en
  %i.eq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec.a, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
end_hunk_33
begin_hunk_34_@hnsw_reconnect_nodes:bb.a
  %i.hh = add i32 %i.hg, %i.gq
  %i.hi = add i32 %i.hh, %i.gy
  %i.hj = add i32 %i.hi, %i.hf                    ; 2 uses
  %indvars.iv.next.i359 = add nuw nsw i64 %indvars.iv.i358, 8 ; 2 uses
  %i.hk = or disjoint i64 %indvars.iv.next.i359, 7
  %i.hl = icmp samesign ult i64 %i.hk, %i.dx
  br i1 %i.hl, label %.lr.ph.i357, label %.preheader.loopexit.i, !llvm.loop !57
end_hunk_34
begin_hunk_35_@hnsw_unlink_node:bb.a
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15 ; 8 uses
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !74  ; 8 uses
  %i.bc = icmp ugt i32 %i.bb, 15                  ; 2 uses
  %.pre.i103 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.bd = and i32 %.pre.i103, 2129920
end_hunk_35
begin_hunk_36_@hnsw_unlink_node:bb.a
  br label %.lr.ph.i111

.preheader.loopexit.i114:                         ; preds = %.lr.ph.i111
  %2 = and i32 %i.bb, -8
  br label %.preheader.i105

.preheader.i105:                                  ; preds = %.preheader.loopexit.i114, %bb.n
end_hunk_36
begin_hunk_37_@hnsw_unlink_node:bb.a
  br i1 %i.bm, label %.lr.ph73.preheader.i, label %._crit_edge.i107

.lr.ph73.preheader.i:                             ; preds = %.preheader.i105
  %i.bo = zext i32 %.0.lcssa.i106 to i64          ; 3 uses
  %wide.trip.count.i108 = zext i32 %i.bb to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i108, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

end_hunk_37
begin_hunk_38_@hnsw_unlink_node:bb.a
  %i.ck = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = fadd <2 x float> %i.bw, %i.cl           ; 2 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 8 ; 2 uses
  %i.cn = or disjoint i64 %indvars.iv.next.i113, 7
  %i.co = icmp samesign ult i64 %i.cn, %i.bk
  br i1 %i.co, label %.lr.ph.i111, label %.preheader.loopexit.i114, !llvm.loop !42
end_hunk_38
begin_hunk_39_@hnsw_unlink_node:bb.a
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 12 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !15 ; 12 uses
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !74  ; 9 uses
  %i.dq = load float, ptr %i.as, align 8, !tbaa !27 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !27 ; 4 uses
end_hunk_39
begin_hunk_40_@hnsw_unlink_node:bb.a
  br label %.lr.ph.i99

.preheader.loopexit.i:                            ; preds = %.lr.ph.i99
  %3 = and i32 %i.dp, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.u
  %.072.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.gk, %.preheader.loopexit.i ] ; 3 uses
  %.071.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.ht, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi i32 [ 0, %bb.u ], [ %3, %.preheader.loopexit.i ] ; 2 uses
  %i.ei = icmp ult i32 %.070.lcssa.i, %i.dp
  br i1 %i.ei, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i
  %i.ej = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dp to i64      ; 3 uses
  %i.ek = sub nsw i64 %wide.trip.count.i, %i.ej   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.vec.a = and i64 %wide.trip.count.i, 7        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ek, %n.vec.a        ; 2 uses
  %i.el = add nsw i64 %n.vec, %i.ej
  %i.em = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

end_hunk_40
begin_hunk_41_@hnsw_unlink_node:bb.a
  %i.ex = add <4 x i32> %i.ev, %vec.phi           ; 2 uses
  %i.ey = add <4 x i32> %i.ew, %vec.phi210        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ey, %i.ex
  %i.fa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec.a, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
end_hunk_41
begin_hunk_42_@hnsw_unlink_node:bb.a
  %i.hr = add i32 %i.hq, %i.ha
  %i.hs = add i32 %i.hr, %i.hi
  %i.ht = add i32 %i.hs, %i.hp                    ; 2 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 8 ; 2 uses
  %i.hu = or disjoint i64 %indvars.iv.next.i101, 7
  %i.hv = icmp samesign ult i64 %i.hu, %i.eh
  br i1 %i.hv, label %.lr.ph.i99, label %.preheader.loopexit.i, !llvm.loop !57
end_hunk_42
