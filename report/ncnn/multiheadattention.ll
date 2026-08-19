inline.NumInlined: 35
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.17:bb.a
  br i1 %i.gn, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit48

bb.k:                                             ; preds = %bb.j
  %i.go = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 3 uses
  %.not3.i51 = icmp eq ptr %i.go, null
  %i.gp = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !9
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %i.gp)
          to label %_ZN4ncnn3MatD2Ev.exit48 unwind label %bb.o, !inline_history !19

bb.m:                                             ; preds = %bb.k
  %.not.i77 = icmp eq ptr %i.gp, null
  br i1 %.not.i77, label %_ZN4ncnn3MatD2Ev.exit48, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.gp) #11
  br label %_ZN4ncnn3MatD2Ev.exit48

bb.o:                                             ; preds = %bb.l
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit48:                          ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit49, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.gv = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %.not.i54 = icmp eq ptr %i.gv, null
  br i1 %.not.i54, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit48
  %i.gw = atomicrmw add ptr %i.gv, i32 -1 acq_rel, align 4
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.gy = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %.not3.i55 = icmp eq ptr %i.gy, null
  %i.gz = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i55, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !9
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef %i.gz)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.u, !inline_history !19

bb.s:                                             ; preds = %bb.q
  %.not.i75 = icmp eq ptr %i.gz, null
  br i1 %.not.i75, label %_ZN4ncnn3MatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.gz) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.p, %_ZN4ncnn3MatD2Ev.exit48, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, 1
  %i.hf = load i32, ptr %i.b, align 4, !tbaa !50
  %i.hg = sext i32 %i.hf to i64
  %.not.not = icmp slt i64 %indvars.iv150, %i.hg
  br i1 %.not.not, label %bb.c, label %._crit_edge129

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %._crit_edge119.split
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %._crit_edge119.split ], [ 0, %.lr.ph118.preheader ] ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv134 ; 5 uses
  br i1 %i.es, label %.epil.preheader, label %.lr.ph118.new

._crit_edge119.split.unr-lcssa:                   ; preds = %.lr.ph118.new
  br i1 %lcmp.mod.not, label %._crit_edge119.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge119.split.unr-lcssa, %.lr.ph118
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next.3, %._crit_edge119.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.v ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.hh = mul i64 %i.bx, %indvars.iv.epil
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.hh
  store float 0.000000e+00, ptr %gep.epil, align 4, !tbaa !52
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge119.split, label %bb.v, !llvm.loop !246

._crit_edge119.split:                             ; preds = %bb.v, %._crit_edge119.split.unr-lcssa
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count148
  br i1 %exitcond138.not, label %._crit_edge.split, label %.lr.ph118, !llvm.loop !245

.lr.ph118.new:                                    ; preds = %.lr.ph118, %.lr.ph118.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph118.new ], [ 0, %.lr.ph118 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph118.new ], [ 0, %.lr.ph118 ]
  %i.hi = mul i64 %i.bx, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.hi
  store float 0.000000e+00, ptr %gep, align 4, !tbaa !52
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.hj = mul i64 %i.bx, %indvars.iv.next
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.hj
  store float 0.000000e+00, ptr %gep.1, align 4, !tbaa !52
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.hk = mul i64 %i.bx, %indvars.iv.next.1
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.hk
  store float 0.000000e+00, ptr %gep.2, align 4, !tbaa !52
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.hl = mul i64 %i.bx, %indvars.iv.next.2
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.hl
  store float 0.000000e+00, ptr %gep.3, align 4, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge119.split.unr-lcssa, label %.lr.ph118.new, !llvm.loop !244

._crit_edge129:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge129, %bb.a
  ret void

bb.x:                                             ; preds = %.noexc84, %bb.c, %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #16
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = load ptr, ptr %4, align 8, !tbaa !18     ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %factor.op.mul = mul i64 %i.t, %i.r             ; 2 uses
  %i.u = load i32, ptr %5, align 4, !tbaa !50     ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1040
  br i1 %i.v, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21 ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = load ptr, ptr %7, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !18  ; 8 uses
  br i1 %i.ac, label %.lr.ph.split.split.us, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph.split
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = sext i32 %i.k to i64                    ; 2 uses
  %i.ah = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 5 uses
  %i.ai = mul i64 %i.t, %i.r
  %i.aj = mul i64 %i.ai, %i.ag
  %i.ak = add i64 %i.aj, %i.o
  %i.al = sub i64 %i.ak, %i.af
  %i.am = mul i64 %i.t, %i.r
  %min.iters.check = icmp ult i32 %i.u, 8
  %invariant.op = add i64 %i.al, -1
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.lr.ph

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.an = load ptr, ptr %6, align 8, !tbaa !18
  %i.ao = load i32, ptr %i.w, align 4, !tbaa !57
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !48
  %factor.op.mul.us.us = mul i64 %i.aq, %i.ap     ; 5 uses
  %i.ar = zext nneg i32 %i.ab to i64
  %i.as = sext i32 %i.k to i64
  %i.at = add nsw i32 %i.j, 1
  %wide.trip.count64 = zext nneg i32 %i.u to i64
  %wide.trip.count59 = zext nneg i32 %i.ab to i64 ; 2 uses
  %xtraiter79 = and i64 %wide.trip.count59, 3     ; 3 uses
  %i.au = icmp ult i32 %i.ab, 4
  %unroll_iter = and i64 %wide.trip.count59, 2147483644
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  %lcmp.mod82 = icmp ne i64 %xtraiter79, 0
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %._crit_edge43.split.us.us, %.lr.ph.split.split.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %._crit_edge43.split.us.us ], [ %i.as, %.lr.ph.split.split.us ] ; 4 uses
  %.reass.us46 = mul i64 %factor.op.mul, %indvars.iv66
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us46
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv66
  %invariant.gep.us.us = getelementptr i8, ptr %i.an, i64 %indvars.iv66 ; 5 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %._crit_edge.us.us ], [ 0, %.preheader.lr.ph.us ] ; 3 uses
  %.03641.us.us = phi ptr [ %scevgep, %._crit_edge.us.us ], [ %i.m, %.preheader.lr.ph.us ] ; 3 uses
  br i1 %i.au, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 5 uses
  %.03438.us.us = phi i32 [ %i.by, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %.137.us.us = phi ptr [ %i.bu, %.preheader.us.us.new ], [ %.03641.us.us, %.preheader.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %.reass.us.us = mul i64 %factor.op.mul.us.us, %indvars.iv56
  %gep.us.us = getelementptr i8, ptr %invariant.gep.us.us, i64 %.reass.us.us
  %i.ax = load i8, ptr %gep.us.us, align 1, !tbaa !153
  %i.ay = sext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.137.us.us, i64 1
  %i.ba = load i8, ptr %.137.us.us, align 1, !tbaa !153
  %i.bb = sext i8 %i.ba to i32
  %i.bc = mul nsw i32 %i.bb, %i.ay
  %i.bd = add nsw i32 %i.bc, %.03438.us.us
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1
  %.reass.us.us.1 = mul i64 %factor.op.mul.us.us, %indvars.iv.next57
  %gep.us.us.1 = getelementptr i8, ptr %invariant.gep.us.us, i64 %.reass.us.us.1
  %i.be = load i8, ptr %gep.us.us.1, align 1, !tbaa !153
  %i.bf = sext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.137.us.us, i64 2
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !153
  %i.bi = sext i8 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bf
  %i.bk = add nsw i32 %i.bj, %i.bd
  %indvars.iv.next57.1 = or disjoint i64 %indvars.iv56, 2
  %.reass.us.us.2 = mul i64 %factor.op.mul.us.us, %indvars.iv.next57.1
  %gep.us.us.2 = getelementptr i8, ptr %invariant.gep.us.us, i64 %.reass.us.us.2
  %i.bl = load i8, ptr %gep.us.us.2, align 1, !tbaa !153
  %i.bm = sext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.137.us.us, i64 3
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !153
  %i.bp = sext i8 %i.bo to i32
  %i.bq = mul nsw i32 %i.bp, %i.bm
  %i.br = add nsw i32 %i.bq, %i.bk
  %indvars.iv.next57.2 = or disjoint i64 %indvars.iv56, 3
  %.reass.us.us.3 = mul i64 %factor.op.mul.us.us, %indvars.iv.next57.2
  %gep.us.us.3 = getelementptr i8, ptr %invariant.gep.us.us, i64 %.reass.us.us.3
  %i.bs = load i8, ptr %gep.us.us.3, align 1, !tbaa !153
  %i.bt = sext i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.137.us.us, i64 4 ; 2 uses
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !153
  %i.bw = sext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.bw, %i.bt
  %i.by = add nsw i32 %i.bx, %i.br                ; 3 uses
  %indvars.iv.next57.3 = add nuw nsw i64 %indvars.iv56, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !247

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod80.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv56.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next57.3, %._crit_edge.us.us.unr-lcssa ]
  %.03438.us.us.epil.init = phi i32 [ 0, %.preheader.us.us ], [ %i.by, %._crit_edge.us.us.unr-lcssa ]
  %.137.us.us.epil.init = phi ptr [ %.03641.us.us, %.preheader.us.us ], [ %i.bu, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv56.epil = phi i64 [ %indvars.iv.next57.epil, %bb.c ], [ %indvars.iv56.epil.init, %.epil.preheader ] ; 2 uses
  %.03438.us.us.epil = phi i32 [ %i.cf, %bb.c ], [ %.03438.us.us.epil.init, %.epil.preheader ]
  %.137.us.us.epil = phi ptr [ %i.cb, %bb.c ], [ %.137.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %.reass.us.us.epil = mul i64 %factor.op.mul.us.us, %indvars.iv56.epil
  %gep.us.us.epil = getelementptr i8, ptr %invariant.gep.us.us, i64 %.reass.us.us.epil
  %i.bz = load i8, ptr %gep.us.us.epil, align 1, !tbaa !153
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.137.us.us.epil, i64 1
  %i.cc = load i8, ptr %.137.us.us.epil, align 1, !tbaa !153
  %i.cd = sext i8 %i.cc to i32
  %i.ce = mul nsw i32 %i.cd, %i.ca
  %i.cf = add nsw i32 %i.ce, %.03438.us.us.epil   ; 2 uses
  %indvars.iv.next57.epil = add nuw nsw i64 %indvars.iv56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter79
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !248

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.lcssa = phi i32 [ %i.by, %._crit_edge.us.us.unr-lcssa ], [ %i.cf, %bb.c ]
  %scevgep = getelementptr i8, ptr %.03641.us.us, i64 %i.ar
  %i.cg = load float, ptr %i.y, align 8, !tbaa !53
  %i.ch = load float, ptr %i.aw, align 4, !tbaa !52
  %i.ci = fmul fast float %i.ch, %i.cg
  %i.cj = sitofp fast i32 %.lcssa to float
  %i.ck = fdiv fast float %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv61
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !52
  %i.cn = fadd fast float %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv61
  store float %i.cn, ptr %i.co, align 4, !tbaa !52
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge43.split.us.us, label %.preheader.us.us, !llvm.loop !249

._crit_edge43.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %lftr.wideiv69 = trunc i64 %indvars.iv.next67 to i32
  %exitcond70.not = icmp eq i32 %i.at, %lftr.wideiv69
  br i1 %exitcond70.not, label %._crit_edge.split, label %.preheader.lr.ph.us

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge43.split
  %indvar = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvar.next, %._crit_edge43.split ] ; 2 uses
  %indvars.iv52 = phi i64 [ %i.ag, %.preheader.lr.ph.preheader ], [ %indvars.iv.next53, %._crit_edge43.split ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv52
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass ; 6 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.cq = mul i64 %i.am, %indvar
  %.reass86 = add i64 %i.cq, %invariant.op
  %diff.check = icmp ult i64 %.reass86, 31
  br i1 %diff.check, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <4 x float>, ptr %i.cr, align 4, !tbaa !52
  %wide.load77 = load <4 x float>, ptr %i.cs, align 4, !tbaa !52
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x float> %wide.load, ptr %i.ct, align 4, !tbaa !52
  store <4 x float> %wide.load77, ptr %i.cu, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.prol ], [ %indvars.iv.ph, %.preheader.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.prol
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !52
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.prol
  store float %i.cx, ptr %i.cy, align 4, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !251

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %i.cz = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %._crit_edge43.split, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !52
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv
  store float %i.dc, ptr %i.dd, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.df = load float, ptr %i.de, align 4, !tbaa !52
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next
  store float %i.df, ptr %i.dg, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.1
  %i.di = load float, ptr %i.dh, align 4, !tbaa !52
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.1
  store float %i.di, ptr %i.dj, align 4, !tbaa !52
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.2
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !52
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next.2
  store float %i.dl, ptr %i.dm, align 4, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge43.split, label %.preheader, !llvm.loop !252

._crit_edge43.split:                              ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next53 to i32
  %exitcond55.not = icmp eq i32 %i.ah, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
end_hunk_0
