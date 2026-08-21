inline.NumInlined: 608
inline.NumDeleted: 306
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK5faiss16ProductQuantizer32compute_code_from_distance_tableEPKfPh:bb.a
  %.011.lcssa = phi i64 [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %i.o = zext nneg i8 %.sroa.8.034 to i64
  %i.p = shl i64 %.011.lcssa, %i.o
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %.sroa.19.033, %i.q                ; 2 uses
  %i.s = zext i8 %.sroa.8.034 to i32              ; 3 uses
  %i.t = add nsw i32 %i.s, %i.c                   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 7
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.v = sub nsw i32 8, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 %.011.lcssa, %i.w               ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 1 ; 3 uses
  store i8 %i.r, ptr %.sroa.0.035, align 1, !tbaa !71
  %i.z = add i32 %.neg10.i, %i.s                  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 7
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = lshr i32 %i.z, 3                        ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1
  %xtraiter59 = and i32 %i.ab, 7                  ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 7
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter64 = and i32 %i.ab, 268435448
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod60.not = icmp eq i32 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.2.epil.init = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.bg, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0711.i.epil.init = phi i64 [ %i.x, %.lr.ph.i.preheader ], [ 0, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i32 %xtraiter59, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.2.epil = phi ptr [ %i.af, %.lr.ph.i.epil ], [ %.sroa.0.2.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0711.i.epil = phi i64 [ %i.ag, %.lr.ph.i.epil ], [ %.0711.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ae = trunc i64 %.0711.i.epil to i8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.2.epil, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.sroa.0.2.epil, align 1, !tbaa !71
  %i.ag = lshr i64 %.0711.i.epil, 8               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter59
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !120

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c
  %.sroa.0.1 = phi ptr [ %i.y, %bb.c ], [ %i.bg, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.i.epil ]
  %.07.lcssa.i = phi i64 [ %i.x, %bb.c ], [ 0, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil ]
  %i.ah = add i8 %.sroa.8.034, %i.g
  %i.ai = and i8 %i.ah, 7
  %i.aj = trunc i64 %.07.lcssa.i to i8
  %.pre = load i64, ptr %i.d, align 8, !tbaa !28
  br label %_ZN5faiss16PQEncoderGeneric6encodeEm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.2 = phi ptr [ %i.y, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 9 uses
  %.0711.i = phi i64 [ %i.x, %.lr.ph.i.preheader.new ], [ 0, %.lr.ph.i ] ; 8 uses
  %niter65 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter65.next.7, %.lr.ph.i ]
  %i.ak = trunc i64 %.0711.i to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1
  store i8 %i.ak, ptr %.sroa.0.2, align 1, !tbaa !71
  %i.am = lshr i64 %.0711.i, 8
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2
  store i8 %i.an, ptr %i.al, align 1, !tbaa !71
  %i.ap = lshr i64 %.0711.i, 16
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 3
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !71
  %i.as = lshr i64 %.0711.i, 24
  %i.at = trunc i64 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !71
  %i.av = lshr i64 %.0711.i, 32
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 5
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !71
  %i.ay = lshr i64 %.0711.i, 40
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 6
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !71
  %i.bb = lshr i64 %.0711.i, 48
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 7
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !71
  %i.be = lshr i64 %.0711.i, 56
  %i.bf = trunc nuw i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8 ; 3 uses
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !71
  %niter65.next.7 = add i32 %niter65, 8           ; 2 uses
  %niter65.ncmp.7 = icmp eq i32 %niter65.next.7, %unroll_iter64
  br i1 %niter65.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !111

bb.d:                                             ; preds = %._crit_edge
  %i.bh = trunc i32 %i.t to i8
  br label %_ZN5faiss16PQEncoderGeneric6encodeEm.exit

_ZN5faiss16PQEncoderGeneric6encodeEm.exit:        ; preds = %._crit_edge.i, %bb.d
  %i.bi = phi i64 [ %.pre, %._crit_edge.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.19.1 = phi i8 [ %i.aj, %._crit_edge.i ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.8.1 = phi i8 [ %i.ai, %._crit_edge.i ], [ %i.bh, %bb.d ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %._crit_edge.i ], [ %.sroa.0.035, %bb.d ] ; 2 uses
  %i.bj = add nuw i64 %.01437, 1                  ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  br i1 %i.bk, label %.preheader, label %._crit_edge38, !llvm.loop !121

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.031 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ] ; 3 uses
  %.01130 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.01229 = phi float [ 1.000000e+20, %.lr.ph.preheader.new ], [ %.113.1, %.lr.ph ] ; 2 uses
  %.11628 = phi ptr [ %.01536, %.lr.ph.preheader.new ], [ %i.bp, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.11628, i64 4
  %i.bm = load float, ptr %.11628, align 4, !tbaa !36 ; 2 uses
  %i.bn = fcmp olt float %i.bm, %.01229           ; 2 uses
  %.113 = select i1 %i.bn, float %i.bm, float %.01229 ; 2 uses
  %.1 = select i1 %i.bn, i64 %.031, i64 %.01130
  %i.bo = or disjoint i64 %.031, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.11628, i64 8 ; 2 uses
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !36 ; 2 uses
  %i.br = fcmp olt float %i.bq, %.113             ; 2 uses
  %.113.1 = select i1 %i.br, float %i.bq, float %.113 ; 2 uses
  %.1.1 = select i1 %i.br, i64 %i.bo, i64 %.1     ; 3 uses
  %i.bs = add nuw i64 %.031, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !122
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss16ProductQuantizer31compute_codes_with_assign_indexEPKfPhm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !123
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %.preheader116, label %bb.l

.preheader116:                                    ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %.not145 = icmp eq i64 %i.j, 0
  br i1 %.not145, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not146 = icmp eq i64 %3, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not146, label %.lr.ph139.split, label %.lr.ph139.split.us

.lr.ph139.split.us:                               ; preds = %.lr.ph139, %._ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit_crit_edge.us
  %.071138.us = phi i64 [ %i.gh, %._ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit_crit_edge.us ], [ 0, %.lr.ph139 ] ; 7 uses
  %indvars167 = trunc i64 %.071138.us to i32
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(36) %i.p)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.u = load i64, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.v = mul i64 %i.u, %.071138.us
  %i.w = load i64, ptr %i.f, align 8, !tbaa !26
  %i.x = mul i64 %i.v, %i.w
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 noundef %i.u, ptr noundef %i.z)
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ae = and i64 %i.ad, 211106232532992
  %.not77.us = icmp eq i64 %i.ae, 0
  %i.af = shl i64 %i.ad, 18
  %i.ag = select i1 %.not77.us, i64 %i.af, i64 -1
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #28 ; 6 uses
  %i.ai = invoke noalias noundef nonnull dereferenceable(524288) ptr @_Znam(i64 noundef 524288) #28
          to label %.preheader115.us unwind label %.split.us ; 14 uses

bb.c:                                             ; preds = %.preheader115.us, %.loopexit.us
  %indvar = phi i64 [ 0, %.preheader115.us ], [ %indvar.next, %.loopexit.us ] ; 2 uses
  %indvars.iv = phi i64 [ 65536, %.preheader115.us ], [ %indvars.iv.next, %.loopexit.us ] ; 3 uses
  %.070134.us = phi i64 [ 0, %.preheader115.us ], [ %i.ak, %.loopexit.us ] ; 26 uses
  %umin209 = tail call i64 @llvm.umin.i64(i64 %3, i64 %indvars.iv) ; 4 uses
  %i.aj = shl i64 %indvar, 16
  %5 = xor i64 %i.aj, -1
  %6 = add i64 %umin209, %5                       ; 3 uses
  %umin165 = tail call i64 @llvm.umin.i64(i64 %3, i64 %indvars.iv) ; 4 uses
  %i.ak = add i64 %.070134.us, 65536              ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.ak) ; 2 uses
  %i.al = icmp ult i64 %.070134.us, %.sroa.speculated.us ; 4 uses
  br i1 %i.al, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us.new:                                    ; preds = %.prol.loopexit, %.lr.ph.us.new
  %.069121.us = phi i64 [ %i.av, %.lr.ph.us.new ], [ %.069121.us.unr, %.prol.loopexit ] ; 4 uses
  %i.am = sub nuw i64 %.069121.us, %.070134.us
  %i.an = mul i64 %i.fr, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an
  %i.ap = mul i64 %i.fs, %.069121.us
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %gep.us, i64 %i.fu, i1 false)
  %i.aq = add nuw i64 %.069121.us, 1              ; 2 uses
  %i.ar = sub nuw i64 %i.aq, %.070134.us
  %i.as = mul i64 %i.fr, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.as
  %i.au = mul i64 %i.fs, %i.aq
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %gep.us.1, i64 %i.fu, i1 false)
  %i.av = add nuw i64 %.069121.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %umin165
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph.us.new, !llvm.loop !126

._crit_edge.us:                                   ; preds = %.prol.loopexit, %.lr.ph.us.new, %bb.c
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.ax = sub i64 %.sroa.speculated.us, %.070134.us
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, i64 noundef %i.ax, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %bb.d unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit84.split.us

bb.d:                                             ; preds = %._crit_edge.us
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !27
  switch i64 %i.bb, label %.preheader.us [
    i64 8, label %bb.g
    i64 16, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.al, label %.lr.ph125.us, label %.loopexit.us

bb.f:                                             ; preds = %bb.f, %.lr.ph125.us.new
  %.065123.us = phi i64 [ %.065123.us.unr, %.lr.ph125.us.new ], [ %i.bt, %bb.f ] ; 5 uses
  %.066122.us = phi ptr [ %.066122.us.unr, %.lr.ph125.us.new ], [ %i.bs, %bb.f ] ; 2 uses
  %i.bc = sub nuw i64 %.065123.us, %.070134.us
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88
  %i.bf = trunc i64 %i.be to i16
  store i16 %i.bf, ptr %.066122.us, align 2, !tbaa !108
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.066122.us, i64 %i.ga ; 2 uses
  %.reass = add i64 %.065123.us, %invariant.op
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !88
  %i.bj = trunc i64 %i.bi to i16
  store i16 %i.bj, ptr %i.bg, align 2, !tbaa !108
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.ga ; 2 uses
  %.reass234.a = add i64 %.065123.us, %invariant.op233.a
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass234.a
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !88
  %i.bn = trunc i64 %i.bm to i16
  store i16 %i.bn, ptr %i.bk, align 2, !tbaa !108
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.ga ; 2 uses
  %.reass236.a = add i64 %.065123.us, %invariant.op235
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass236.a
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !88
  %i.br = trunc i64 %i.bq to i16
  store i16 %i.br, ptr %i.bo, align 2, !tbaa !108
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.ga
  %i.bt = add nuw i64 %.065123.us, 4              ; 2 uses
  %exitcond159.not.3 = icmp eq i64 %i.bt, %umin165
  br i1 %exitcond159.not.3, label %.loopexit.us, label %bb.f, !llvm.loop !127

bb.g:                                             ; preds = %bb.d
  br i1 %i.al, label %.lr.ph129.us.preheader, label %.loopexit.us

.lr.ph129.us.preheader:                           ; preds = %bb.g
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !86
  %i.bv = mul i64 %i.bu, %.070134.us
  %gep133.us = getelementptr i8, ptr %invariant.gep132.us, i64 %i.bv ; 2 uses
  %xtraiter213 = and i64 %umin209, 3              ; 2 uses
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.lr.ph129.us.prol.loopexit, label %.lr.ph129.us.prol

.lr.ph129.us.prol:                                ; preds = %.lr.ph129.us.preheader, %.lr.ph129.us.prol
  %.067127.us.prol = phi i64 [ %i.cc, %.lr.ph129.us.prol ], [ %.070134.us, %.lr.ph129.us.preheader ] ; 2 uses
  %.068126.us.prol = phi ptr [ %i.cb, %.lr.ph129.us.prol ], [ %gep133.us, %.lr.ph129.us.preheader ] ; 2 uses
  %prol.iter215 = phi i64 [ %prol.iter215.next, %.lr.ph129.us.prol ], [ 0, %.lr.ph129.us.preheader ]
  %i.bw = sub nuw i64 %.067127.us.prol, %.070134.us
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !88
  %i.bz = trunc i64 %i.by to i8
  store i8 %i.bz, ptr %.068126.us.prol, align 1, !tbaa !71
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.068126.us.prol, i64 %i.ca ; 2 uses
  %i.cc = add nuw i64 %.067127.us.prol, 1         ; 2 uses
  %prol.iter215.next = add i64 %prol.iter215, 1   ; 2 uses
  %prol.iter215.cmp.not = icmp eq i64 %prol.iter215.next, %xtraiter213
  br i1 %prol.iter215.cmp.not, label %.lr.ph129.us.prol.loopexit, label %.lr.ph129.us.prol, !llvm.loop !128

.lr.ph129.us.prol.loopexit:                       ; preds = %.lr.ph129.us.prol, %.lr.ph129.us.preheader
  %.067127.us.unr = phi i64 [ %.070134.us, %.lr.ph129.us.preheader ], [ %i.cc, %.lr.ph129.us.prol ]
  %.068126.us.unr = phi ptr [ %gep133.us, %.lr.ph129.us.preheader ], [ %i.cb, %.lr.ph129.us.prol ]
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %.loopexit.us, label %.lr.ph129.us.preheader.new

.lr.ph129.us.preheader.new:                       ; preds = %.lr.ph129.us.prol.loopexit
  %invariant.op237.a = sub i64 1, %.070134.us
  %invariant.op239.a = sub i64 2, %.070134.us
  %invariant.op241 = sub i64 3, %.070134.us
  br label %.lr.ph129.us

.lr.ph129.us:                                     ; preds = %.lr.ph129.us, %.lr.ph129.us.preheader.new
  %.067127.us = phi i64 [ %.067127.us.unr, %.lr.ph129.us.preheader.new ], [ %i.cy, %.lr.ph129.us ] ; 5 uses
  %.068126.us = phi ptr [ %.068126.us.unr, %.lr.ph129.us.preheader.new ], [ %i.cx, %.lr.ph129.us ] ; 2 uses
  %i.cd = sub nuw i64 %.067127.us, %.070134.us
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !88
  %i.cg = trunc i64 %i.cf to i8
  store i8 %i.cg, ptr %.068126.us, align 1, !tbaa !71
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %.068126.us, i64 %i.ch ; 2 uses
  %.reass238.a = add i64 %.067127.us, %invariant.op237.a
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass238.a
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !88
  %i.cl = trunc i64 %i.ck to i8
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !71
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm ; 2 uses
  %.reass240.a = add i64 %.067127.us, %invariant.op239.a
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass240.a
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !88
  %i.cq = trunc i64 %i.cp to i8
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !71
  %i.cr = load i64, ptr %i.i, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr ; 2 uses
  %.reass242 = add i64 %.067127.us, %invariant.op241
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass242
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !88
  %i.cv = trunc i64 %i.cu to i8
  store i8 %i.cv, ptr %i.cs, align 1, !tbaa !71
  %i.cw = load i64, ptr %i.i, align 8, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw
  %i.cy = add nuw i64 %.067127.us, 4              ; 2 uses
  %exitcond161.not.3 = icmp eq i64 %i.cy, %umin165
  br i1 %exitcond161.not.3, label %.loopexit.us, label %.lr.ph129.us, !llvm.loop !129

.lr.ph131.us:                                     ; preds = %.preheader.us, %_ZN5faiss16PQEncoderGenericD2Ev.exit.us
  %.064130.us = phi i64 [ %i.fh, %_ZN5faiss16PQEncoderGenericD2Ev.exit.us ], [ %.070134.us, %.preheader.us ] ; 3 uses
  %i.cz = load i64, ptr %i.o, align 8, !tbaa !86
  %i.da = mul i64 %i.cz, %.064130.us
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da
  %i.dc = load i64, ptr %i.n, align 8, !tbaa !27  ; 4 uses
  %i.dd = mul i64 %i.dc, %.071138.us              ; 3 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de ; 4 uses
  %i.dg = trunc i64 %i.dd to i8                   ; 2 uses
  %i.dh = and i8 %i.dg, 7                         ; 3 uses
  %i.di = sub nuw i64 %.064130.us, %.070134.us
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !88 ; 2 uses
  %i.dl = trunc i64 %i.dc to i32                  ; 3 uses
  %.not.i85.us = icmp eq i8 %i.dh, 0
  br i1 %.not.i85.us, label %_ZN5faiss16PQEncoderGenericC2EPhih.exit.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph131.us
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !71
  %notmask.i.us = shl nsw i8 -1, %i.dh
  %i.dn = xor i8 %notmask.i.us, -1
  %i.do = and i8 %i.dm, %i.dn
  br label %_ZN5faiss16PQEncoderGenericC2EPhih.exit.us

_ZN5faiss16PQEncoderGenericC2EPhih.exit.us:       ; preds = %bb.h, %.lr.ph131.us
  %.sroa.19.0.us = phi i8 [ 0, %.lr.ph131.us ], [ %i.do, %bb.h ]
  %i.dp = and i64 %i.dd, 7
  %i.dq = shl i64 %i.dk, %i.dp
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = or i8 %.sroa.19.0.us, %i.dr             ; 2 uses
  %i.dt = zext nneg i8 %i.dh to i32               ; 3 uses
  %i.du = add nsw i32 %i.dt, %i.dl                ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 7
  br i1 %i.dv, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5faiss16PQEncoderGenericC2EPhih.exit.us
  %i.dw = trunc i32 %i.du to i8
  br label %_ZN5faiss16PQEncoderGeneric6encodeEm.exit.us

bb.j:                                             ; preds = %_ZN5faiss16PQEncoderGenericC2EPhih.exit.us
  %i.dx = sub nuw nsw i32 8, %i.dt
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = lshr i64 %i.dk, %i.dy                   ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 3 uses
  store i8 %i.ds, ptr %i.df, align 1, !tbaa !71
  %.neg10.i.us = add i32 %i.dl, -8
  %i.eb = add i32 %.neg10.i.us, %i.dt
  %i.ec = icmp sgt i32 %i.eb, 7
  br i1 %i.ec, label %.lr.ph.i.preheader.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.i.preheader.us.new
  %.sroa.0.1.us = phi ptr [ %i.ea, %.lr.ph.i.preheader.us.new ], [ %i.ez, %.lr.ph.i.us ] ; 9 uses
  %.0711.i.us = phi i64 [ %i.dz, %.lr.ph.i.preheader.us.new ], [ 0, %.lr.ph.i.us ] ; 8 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.us.new ], [ %niter.next.7, %.lr.ph.i.us ]
  %i.ed = trunc i64 %.0711.i.us to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 1
  store i8 %i.ed, ptr %.sroa.0.1.us, align 1, !tbaa !71
  %i.ef = lshr i64 %.0711.i.us, 8
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 2
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !71
  %i.ei = lshr i64 %.0711.i.us, 16
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 3
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !71
  %i.el = lshr i64 %.0711.i.us, 24
  %i.em = trunc i64 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 4
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !71
  %i.eo = lshr i64 %.0711.i.us, 32
  %i.ep = trunc i64 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 5
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !71
  %i.er = lshr i64 %.0711.i.us, 40
  %i.es = trunc i64 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 6
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !71
  %i.eu = lshr i64 %.0711.i.us, 48
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 7
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !71
  %i.ex = lshr i64 %.0711.i.us, 56
  %i.ey = trunc nuw i64 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us, i64 8 ; 3 uses
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !71
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.us.loopexit.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !111

._crit_edge.i.us.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us
  %lcmp.mod217.not = icmp eq i32 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %._crit_edge.i.us.loopexit.unr-lcssa, %.lr.ph.i.preheader.us
  %.sroa.0.1.us.epil.init = phi ptr [ %i.ea, %.lr.ph.i.preheader.us ], [ %i.ez, %._crit_edge.i.us.loopexit.unr-lcssa ]
  %.0711.i.us.epil.init = phi i64 [ %i.dz, %.lr.ph.i.preheader.us ], [ 0, %._crit_edge.i.us.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i32 %xtraiter216, 0
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %.sroa.0.1.us.epil = phi ptr [ %i.fb, %.lr.ph.i.us.epil ], [ %.sroa.0.1.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %.0711.i.us.epil = phi i64 [ %i.fc, %.lr.ph.i.us.epil ], [ %.0711.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.fa = trunc i64 %.0711.i.us.epil to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.epil, i64 1 ; 2 uses
  store i8 %i.fa, ptr %.sroa.0.1.us.epil, align 1, !tbaa !71
  %i.fc = lshr i64 %.0711.i.us.epil, 8            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter216
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil, !llvm.loop !130

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.loopexit.unr-lcssa, %.lr.ph.i.us.epil, %bb.j
  %.sroa.0.0.us = phi ptr [ %i.ea, %bb.j ], [ %i.ez, %._crit_edge.i.us.loopexit.unr-lcssa ], [ %i.fb, %.lr.ph.i.us.epil ]
  %.07.lcssa.i.us = phi i64 [ %i.dz, %bb.j ], [ 0, %._crit_edge.i.us.loopexit.unr-lcssa ], [ %i.fc, %.lr.ph.i.us.epil ]
  %i.fd = trunc i64 %i.dc to i8
  %i.fe = add i8 %i.dg, %i.fd
  %i.ff = and i8 %i.fe, 7
  %i.fg = trunc i64 %.07.lcssa.i.us to i8
  br label %_ZN5faiss16PQEncoderGeneric6encodeEm.exit.us

_ZN5faiss16PQEncoderGeneric6encodeEm.exit.us:     ; preds = %._crit_edge.i.us, %bb.i
  %.sroa.19.1.us = phi i8 [ %i.fg, %._crit_edge.i.us ], [ %i.ds, %bb.i ]
  %.sroa.8.0.us = phi i8 [ %i.ff, %._crit_edge.i.us ], [ %i.dw, %bb.i ]
  %.sroa.0.2.us = phi ptr [ %.sroa.0.0.us, %._crit_edge.i.us ], [ %i.df, %bb.i ]
  %.not.i86.us = icmp eq i8 %.sroa.8.0.us, 0
  br i1 %.not.i86.us, label %_ZN5faiss16PQEncoderGenericD2Ev.exit.us, label %bb.k

bb.k:                                             ; preds = %_ZN5faiss16PQEncoderGeneric6encodeEm.exit.us
  store i8 %.sroa.19.1.us, ptr %.sroa.0.2.us, align 1, !tbaa !71
  br label %_ZN5faiss16PQEncoderGenericD2Ev.exit.us

_ZN5faiss16PQEncoderGenericD2Ev.exit.us:          ; preds = %bb.k, %_ZN5faiss16PQEncoderGeneric6encodeEm.exit.us
  %i.fh = add nuw i64 %.064130.us, 1              ; 2 uses
  %exitcond166.not = icmp eq i64 %i.fh, %umin165
  br i1 %exitcond166.not, label %.loopexit.us, label %.lr.ph131.us, !llvm.loop !131

.loopexit.us:                                     ; preds = %.prol.loopexit208, %bb.f, %.lr.ph129.us.prol.loopexit, %.lr.ph129.us, %_ZN5faiss16PQEncoderGenericD2Ev.exit.us, %bb.e, %bb.g, %.preheader.us
  %i.fi = icmp ult i64 %i.ak, %3
  %indvars.iv.next = add i64 %indvars.iv, 65536
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fi, label %bb.c, label %._ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit_crit_edge.us, !llvm.loop !132

.lr.ph.i.preheader.us:                            ; preds = %bb.j
  %i.fj = trunc i64 %i.dc to i32
  %i.fk = mul i32 %indvars167, %i.fj
  %i.fl = or i32 %i.fk, -8
  %i.fm = add i32 %i.fl, %i.dl
  %i.fn = lshr i32 %i.fm, 3                       ; 3 uses
  %i.fo = add nsw i32 %i.fn, -1
  %xtraiter216 = and i32 %i.fn, 7                 ; 3 uses
  %i.fp = icmp ult i32 %i.fo, 7
  br i1 %i.fp, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.preheader.us.new

.lr.ph.i.preheader.us.new:                        ; preds = %.lr.ph.i.preheader.us
  %unroll_iter = and i32 %i.fn, 536870904
  br label %.lr.ph.i.us

.preheader.us:                                    ; preds = %bb.d
  br i1 %i.al, label %.lr.ph131.us, label %.loopexit.us

.preheader115.us:                                 ; preds = %.lr.ph139.split.us
  %invariant.gep132.us = getelementptr i8, ptr %2, i64 %.071138.us
  %i.fq = shl i64 %.071138.us, 1
  %invariant.gep136.us = getelementptr i8, ptr %2, i64 %i.fq
  br label %bb.c

.lr.ph.us:                                        ; preds = %bb.c
  %i.fr = load i64, ptr %i.f, align 8, !tbaa !26  ; 4 uses
  %i.fs = load i64, ptr %i.m, align 8, !tbaa !29  ; 3 uses
  %i.ft = mul i64 %i.fr, %.071138.us
  %invariant.gep.us = getelementptr [4 x i8], ptr %1, i64 %i.ft ; 3 uses
  %i.fu = shl i64 %i.fr, 2                        ; 3 uses
  %xtraiter = and i64 %umin209, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us
  %i.fv = mul i64 %i.fs, %.070134.us
  %gep.us.prol = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.fv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %gep.us.prol, i64 %i.fu, i1 false)
  %i.fw = or disjoint i64 %.070134.us, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us
  %.069121.us.unr = phi i64 [ %.070134.us, %.lr.ph.us ], [ %i.fw, %.prol.loopexit.unr-lcssa ]
  %i.fx = icmp eq i64 %6, 0
  br i1 %i.fx, label %._crit_edge.us, label %.lr.ph.us.new

.lr.ph125.us:                                     ; preds = %bb.e
  %i.fy = load i64, ptr %i.o, align 8, !tbaa !86
  %i.fz = mul i64 %i.fy, %.070134.us
  %gep137.us = getelementptr i8, ptr %invariant.gep136.us, i64 %i.fz ; 2 uses
  %i.ga = load i64, ptr %i.i, align 8, !tbaa !28  ; 5 uses
  %xtraiter210 = and i64 %umin209, 3              ; 2 uses
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.prol.loopexit208, label %.prol.preheader207

.prol.preheader207:                               ; preds = %.lr.ph125.us, %.prol.preheader207
  %.065123.us.prol = phi i64 [ %i.gg, %.prol.preheader207 ], [ %.070134.us, %.lr.ph125.us ] ; 2 uses
  %.066122.us.prol = phi ptr [ %i.gf, %.prol.preheader207 ], [ %gep137.us, %.lr.ph125.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader207 ], [ 0, %.lr.ph125.us ]
  %i.gb = sub nuw i64 %.065123.us.prol, %.070134.us
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !88
  %i.ge = trunc i64 %i.gd to i16
  store i16 %i.ge, ptr %.066122.us.prol, align 2, !tbaa !108
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.066122.us.prol, i64 %i.ga ; 2 uses
  %i.gg = add nuw i64 %.065123.us.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter210
  br i1 %prol.iter.cmp.not, label %.prol.loopexit208, label %.prol.preheader207, !llvm.loop !133

.prol.loopexit208:                                ; preds = %.prol.preheader207, %.lr.ph125.us
  %.065123.us.unr = phi i64 [ %.070134.us, %.lr.ph125.us ], [ %i.gg, %.prol.preheader207 ]
  %.066122.us.unr = phi ptr [ %gep137.us, %.lr.ph125.us ], [ %i.gf, %.prol.preheader207 ]
  %8 = icmp ult i64 %6, 3
  br i1 %8, label %.loopexit.us, label %.lr.ph125.us.new

.lr.ph125.us.new:                                 ; preds = %.prol.loopexit208
  %invariant.op = sub i64 1, %.070134.us
  %invariant.op233.a = sub i64 2, %.070134.us
  %invariant.op235 = sub i64 3, %.070134.us
  br label %bb.f

._ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit_crit_edge.us: ; preds = %.loopexit.us
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #29
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #29
  %i.gh = add nuw i64 %.071138.us, 1              ; 2 uses
  %i.gi = load i64, ptr %i.i, align 8, !tbaa !28
  %i.gj = icmp ult i64 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph139.split.us, label %._crit_edge140, !llvm.loop !134

.split.us:                                        ; preds = %.lr.ph139.split.us
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit89

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit84.split.us: ; preds = %._crit_edge.us
  %i.gl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit89

bb.l:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.gm, ptr %4, align 8, !tbaa !100
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.gn, align 8, !tbaa !102
  store i8 0, ptr %i.gm, align 8, !tbaa !71
  %i.go = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #21 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.gq = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gr = add nuw nsw i64 %i.gq, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.gr)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gs = load ptr, ptr %4, align 8, !tbaa !104
  %i.gt = load i64, ptr %i.gn, align 8, !tbaa !102
  %i.gu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.gs, i64 noundef %i.gt, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.gq)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n, %bb.m
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.gw = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16ProductQuantizer31compute_codes_with_assign_indexEPKfPhm, ptr noundef nonnull @.str.2, i32 noundef 361)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.u unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gw) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn = phi { ptr, i32 } [ %i.gv, %bb.o ], [ %i.gx, %bb.r ]
  %i.gy = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gm
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ha = load i64, ptr %i.gm, align 8, !tbaa !71
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.t

._crit_edge140:                                   ; preds = %._ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit_crit_edge.us, %.lr.ph139.split, %.preheader116
  ret void

.lr.ph139.split:                                  ; preds = %.lr.ph139, %.lr.ph139.split
  %.071138 = phi i64 [ %i.hq, %.lr.ph139.split ], [ 0, %.lr.ph139 ] ; 2 uses
  %i.hc = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 112
  %i.hf = load ptr, ptr %i.he, align 8
  tail call void %i.hf(ptr noundef nonnull align 8 dereferenceable(36) %i.hc)
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.hh = load i64, ptr %i.k, align 8, !tbaa !30  ; 2 uses
  %i.hi = mul i64 %i.hh, %.071138
  %i.hj = load i64, ptr %i.f, align 8, !tbaa !26
  %i.hk = mul i64 %i.hi, %i.hj
  %i.hl = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load ptr, ptr %i.hg, align 8, !tbaa !54
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8
  tail call void %i.hp(ptr noundef nonnull align 8 dereferenceable(36) %i.hg, i64 noundef %i.hh, ptr noundef %i.hm)
  %i.hq = add nuw i64 %.071138, 1                 ; 2 uses
  %i.hr = load i64, ptr %i.i, align 8, !tbaa !28
  %i.hs = icmp ult i64 %i.hq, %i.hr
  br i1 %i.hs, label %.lr.ph139.split, label %._crit_edge140, !llvm.loop !134

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit89: ; preds = %.split.us, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit84.split.us
  %.pn78 = phi { ptr, i32 } [ %i.gl, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit84.split.us ], [ %i.gk, %.split.us ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #29
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit89 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn78.pn

bb.u:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss16ProductQuantizer13compute_codesEPKfPhm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 1, ptr %i.c, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !88
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !88
  %i.k = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not15 = icmp sgt i64 %i.k, %i.j
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.016 = phi i64 [ %i.k, %.lr.ph ], [ %i.v, %bb.d ] ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !84
  %i.o = load i64, ptr %i.l, align 8, !tbaa !29
  %i.p = mul i64 %i.o, %.016
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  %i.r = load ptr, ptr %5, align 8, !tbaa !85
  %i.s = load i64, ptr %i.m, align 8, !tbaa !86
  %i.t = mul i64 %i.s, %.016
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  invoke void @_ZNK5faiss16ProductQuantizer12compute_codeEPKfPh(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef %i.q, ptr noundef %i.u)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i64 %.016, 1
  %i.w = load i64, ptr %i.b, align 8, !tbaa !88
  %.not.not = icmp slt i64 %.016, %i.w
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss16ProductQuantizer23compute_distance_tablesEmPKfPf(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
end_hunk_0
