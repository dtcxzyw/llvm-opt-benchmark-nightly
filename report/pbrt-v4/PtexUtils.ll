Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexUtils?download=true
inline.NumInlined: 292
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4Ptex4v2_416ConvertFromFloatEPvPKfNS0_8DataTypeEi:bb.a

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 5 uses
  %min.iters.check36 = icmp ult i32 %3, 4
  br i1 %min.iters.check36, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %scevgep = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %i.b = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep34
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck
  %n.vec38 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next42, %vector.body39 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index40
  %wide.load41 = load <4 x float>, ptr %i.c, align 4, !tbaa !16, !alias.scope !33 ; 2 uses
  %i.d = fcmp ogt <4 x float> %wide.load41, zeroinitializer
  %i.e = select <4 x i1> %i.d, <4 x float> %wide.load41, <4 x float> zeroinitializer ; 2 uses
  %i.f = fcmp olt <4 x float> %i.e, splat (float 1.000000e+00)
  %i.g = select <4 x i1> %i.f, <4 x float> %i.e, <4 x float> splat (float 1.000000e+00)
  %i.h = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.i = fptoui <4 x float> %i.h to <4 x i8>
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index40
  store <4 x i8> %i.i, ptr %i.j, align 1, !tbaa !12, !alias.scope !36, !noalias !33
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next42, %n.vec38
  br i1 %i.k, label %middle.block43, label %vector.body39, !llvm.loop !38

middle.block43:                                   ; preds = %vector.body39
  %cmp.n44 = icmp eq i64 %n.vec38, %wide.trip.count.i
  br i1 %cmp.n44, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block43
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec38, %middle.block43 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !16 ; 2 uses
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  %i.o = select i1 %i.n, float %i.m, float 0.000000e+00 ; 2 uses
  %i.p = fcmp olt float %i.o, 1.000000e+00
  %i.q = select i1 %i.p, float %i.o, float 1.000000e+00
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 2.550000e+02, float 5.000000e-01)
  %i.s = fptoui float %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit, label %.lr.ph.i, !llvm.loop !39

bb.c:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  br i1 %i.u, label %.lr.ph.preheader.i12, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit

.lr.ph.preheader.i12:                             ; preds = %bb.c
  %wide.trip.count.i13 = zext nneg i32 %3 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i14.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i12
  %n.vec = and i64 %wide.trip.count.i13, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !16 ; 2 uses
  %i.w = fcmp ogt <4 x float> %wide.load, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x float> %wide.load, <4 x float> zeroinitializer ; 2 uses
  %i.y = fcmp olt <4 x float> %i.x, splat (float 1.000000e+00)
  %i.z = select <4 x i1> %i.y, <4 x float> %i.x, <4 x float> splat (float 1.000000e+00)
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.ab = fptoui <4 x float> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i13
  br i1 %cmp.n, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %.lr.ph.preheader.i12, %middle.block
  %indvars.iv.i15.ph = phi i64 [ 0, %.lr.ph.preheader.i12 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i16, %.lr.ph.i14 ], [ %indvars.iv.i15.ph, %.lr.ph.i14.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i15
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %i.ah = select i1 %i.ag, float %i.af, float 0.000000e+00 ; 2 uses
  %i.ai = fcmp olt float %i.ah, 1.000000e+00
  %i.aj = select i1 %i.ai, float %i.ah, float 1.000000e+00
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 6.553500e+04, float 5.000000e-01)
  %i.al = fptoui float %i.ak to i16
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i15
  store i16 %i.al, ptr %i.am, align 2, !tbaa !25
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.next.i16, %wide.trip.count.i13
  br i1 %exitcond.not.i17, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit, label %.lr.ph.i14, !llvm.loop !41

bb.d:                                             ; preds = %bb.a
  %i.an = icmp sgt i32 %3, 0
  br i1 %i.an, label %.lr.ph.preheader.i18, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit

.lr.ph.preheader.i18:                             ; preds = %bb.d
  %wide.trip.count.i19 = zext nneg i32 %3 to i64
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, %.lr.ph.preheader.i18
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.preheader.i18 ], [ %indvars.iv.next.i22, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i21
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = fcmp oeq float %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i20
  %i.ar = bitcast float %i.ap to i32              ; 3 uses
  %i.as = lshr i32 %i.ar, 23
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !25 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = and i32 %i.ar, 8384512
  %i.ax = add nuw nsw i32 %i.aw, 4096
  %i.ay = lshr i32 %i.ax, 13
  %i.az = trunc nuw nsw i32 %i.ay to i16
  %i.ba = add i16 %i.av, %i.az
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bb = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.ar)
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i:                ; preds = %bb.g, %bb.f, %.lr.ph.i20
  %.1.i.i.i = phi i16 [ 0, %.lr.ph.i20 ], [ %i.ba, %bb.f ], [ %i.bb, %bb.g ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i21
  store i16 %.1.i.i.i, ptr %i.bc, align 2, !tbaa !25
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i19
  br i1 %exitcond.not.i23, label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit, label %.lr.ph.i20, !llvm.loop !42

bb.h:                                             ; preds = %bb.a
  %i.bd = sext i32 %3 to i64
  %i.be = shl nsw i64 %i.bd, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 4 %1, i64 %i.be, i1 false)
  br label %_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit

_ZN4Ptex4v2_412_GLOBAL__N_119ConvertArrayClampedIhKfEEvPT_PT0_iff.exit: ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, %.lr.ph.i14, %.lr.ph.i, %middle.block, %middle.block43, %bb.d, %bb.c, %bb.b, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4Ptex4v2_49PtexUtils10isConstantEPKviiii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.not3138 = icmp sgt i32 %3, 1
  br i1 %.not3138, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul nsw i32 %4, %2
  %i.c = sext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = add nuw nsw i32 %.02639, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %3
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !43

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pn48 = phi ptr [ %0, %.lr.ph ], [ %.02740, %bb.b ]
  %.02639 = phi i32 [ 1, %.lr.ph ], [ %i.d, %bb.b ]
  %.02740 = getelementptr inbounds i8, ptr %.pn48, i64 %i.a ; 2 uses
  %bcmp35 = tail call i32 @bcmp(ptr %0, ptr %.02740, i64 %i.c)
  %.not = icmp eq i32 %bcmp35, 0
  br i1 %.not, label %bb.b, label %.loopexit

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.e = sext i32 %4 to i64                       ; 2 uses
  %.not3442 = icmp slt i32 %2, 2
  br i1 %.not3442, label %.loopexit, label %.lr.ph45

.lr.ph45:                                         ; preds = %.critedge, %.lr.ph45
  %.pn32.pn = phi ptr [ %.12844, %.lr.ph45 ], [ %0, %.critedge ]
  %.043 = phi i32 [ %i.f, %.lr.ph45 ], [ 1, %.critedge ]
  %.12844 = getelementptr inbounds i8, ptr %.pn32.pn, i64 %i.e ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %.12844, i64 %i.e)
  %.not33 = icmp eq i32 %bcmp, 0                  ; 2 uses
  %i.f = add nuw nsw i32 %.043, 1                 ; 2 uses
  %exitcond50.not = icmp ne i32 %i.f, %2
  %or.cond.not = select i1 %.not33, i1 %exitcond50.not, i1 false
  br i1 %or.cond.not, label %.lr.ph45, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %bb.c, %.lr.ph45, %.critedge
  %.2 = phi i1 [ true, %.critedge ], [ %.not33, %.lr.ph45 ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils10interleaveEPKviiiPviNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  switch i32 %6, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %7 to i64                       ; 10 uses
  %i.b = getelementptr inbounds i8, ptr %4, i64 %i.a
  %.not41.i = icmp eq i32 %7, 0
  br i1 %.not41.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.b
  %i.c = mul nsw i32 %3, %1                       ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = sext i32 %2 to i64                       ; 3 uses
  %i.f = sext i32 %1 to i64
  %i.g = sext i32 %5 to i64
  %.not3035.i = icmp eq i32 %i.c, 0
  %.not3132.i = icmp eq i32 %2, 0
  %or.cond = or i1 %.not3035.i, %.not3132.i
  br i1 %or.cond, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph39.i.preheader.preheader

.lr.ph39.i.preheader.preheader:                   ; preds = %.lr.ph45.i
  %i.h = add nsw i64 %i.e, -1
  %xtraiter92 = and i64 %i.e, 7
  %i.i = and i32 %2, 7
  %lcmp.mod93.not = icmp eq i32 %i.i, 0
  %i.j = icmp ult i64 %i.h, 7
  br label %.lr.ph39.i.preheader

.lr.ph39.i.preheader:                             ; preds = %.lr.ph39.i.preheader.preheader, %._crit_edge40.i.loopexit.split
  %.02843.i = phi ptr [ %i.k, %._crit_edge40.i.loopexit.split ], [ %0, %.lr.ph39.i.preheader.preheader ] ; 2 uses
  %.02942.i = phi ptr [ %i.l, %._crit_edge40.i.loopexit.split ], [ %4, %.lr.ph39.i.preheader.preheader ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.02843.i, i64 %i.d ; 2 uses
  br label %.lr.ph39.i

._crit_edge40.i.loopexit.split:                   ; preds = %._crit_edge.i.loopexit
  %i.l = getelementptr inbounds nuw i8, ptr %.02942.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph39.i.preheader, !llvm.loop !45

.lr.ph39.i:                                       ; preds = %.lr.ph39.i.preheader, %._crit_edge.i.loopexit
  %.02737.i = phi ptr [ %i.r, %._crit_edge.i.loopexit ], [ %.02942.i, %.lr.ph39.i.preheader ] ; 3 uses
  %.136.i = phi ptr [ %i.q, %._crit_edge.i.loopexit ], [ %.02843.i, %.lr.ph39.i.preheader ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.136.i, i64 %i.e
  br i1 %lcmp.mod93.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph39.i, %.lr.ph.i.prol
  %.034.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %.136.i, %.lr.ph39.i ] ; 2 uses
  %.02633.i.prol = phi ptr [ %i.p, %.lr.ph.i.prol ], [ %.02737.i, %.lr.ph39.i ] ; 2 uses
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.lr.ph.i.prol ], [ 0, %.lr.ph39.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.034.i.prol, i64 1 ; 2 uses
  %i.o = load i8, ptr %.034.i.prol, align 1, !tbaa !12
  store i8 %i.o, ptr %.02633.i.prol, align 1, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %.02633.i.prol, i64 %i.a ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !46

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph39.i
  %.034.i.unr = phi ptr [ %.136.i, %.lr.ph39.i ], [ %i.n, %.lr.ph.i.prol ]
  %.02633.i.unr = phi ptr [ %.02737.i, %.lr.ph39.i ], [ %i.p, %.lr.ph.i.prol ]
  br i1 %i.j, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.q = getelementptr inbounds i8, ptr %.136.i, i64 %i.f ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.02737.i, i64 %i.g
  %.not30.i = icmp eq ptr %i.q, %i.k
  br i1 %.not30.i, label %._crit_edge40.i.loopexit.split, label %.lr.ph39.i, !llvm.loop !48

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.034.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.034.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.02633.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.02633.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.034.i, i64 1
  %i.t = load i8, ptr %.034.i, align 1, !tbaa !12
  store i8 %i.t, ptr %.02633.i, align 1, !tbaa !12
  %i.u = getelementptr inbounds i8, ptr %.02633.i, i64 %i.a ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.034.i, i64 2
  %i.w = load i8, ptr %i.s, align 1, !tbaa !12
  store i8 %i.w, ptr %i.u, align 1, !tbaa !12
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.a ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.034.i, i64 3
  %i.z = load i8, ptr %i.v, align 1, !tbaa !12
  store i8 %i.z, ptr %i.x, align 1, !tbaa !12
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !12
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !12
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.a ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.034.i, i64 5
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !12
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !12
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.a ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.034.i, i64 6
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !12
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !12
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.a ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.034.i, i64 7
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !12
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !12
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.a ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.034.i, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !12
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !12
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.a
  %.not31.i.7 = icmp eq ptr %i.an, %i.m
  br i1 %.not31.i.7, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !49

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.aq = sext i32 %7 to i64                      ; 10 uses
  %.idx.i = shl nsw i64 %i.aq, 1
  %i.ar = getelementptr inbounds i8, ptr %4, i64 %.idx.i
  %.not41.i21 = icmp eq i32 %7, 0
  br i1 %.not41.i21, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph45.i22

.lr.ph45.i22:                                     ; preds = %bb.c
  %i.as = sdiv i32 %5, 2
  %i.at = sdiv i32 %1, 2                          ; 2 uses
  %i.au = mul nsw i32 %3, %i.at                   ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %2 to i64
  %i.ax = sext i32 %i.at to i64
  %i.ay = sext i32 %i.as to i64
  %.idx47.i = shl nsw i64 %i.av, 1
  %.not3035.i23 = icmp eq i32 %i.au, 0
  %.idx48.i = shl nsw i64 %i.aw, 1                ; 2 uses
  %.not3132.i24 = icmp eq i32 %2, 0
  %or.cond83 = or i1 %.not3035.i23, %.not3132.i24
  br i1 %or.cond83, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph39.i27.preheader.preheader

.lr.ph39.i27.preheader.preheader:                 ; preds = %.lr.ph45.i22
  %i.az = add nsw i64 %.idx48.i, -2               ; 2 uses
  %i.ba = lshr exact i64 %i.az, 1
  %i.bb = add nuw i64 %i.ba, 1
  %xtraiter89 = and i64 %i.bb, 7                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  %i.bc = icmp ult i64 %i.az, 14
  br label %.lr.ph39.i27.preheader

.lr.ph39.i27.preheader:                           ; preds = %.lr.ph39.i27.preheader.preheader, %._crit_edge40.i36.loopexit.split
  %.02843.i25 = phi ptr [ %i.bd, %._crit_edge40.i36.loopexit.split ], [ %0, %.lr.ph39.i27.preheader.preheader ] ; 2 uses
  %.02942.i26 = phi ptr [ %i.be, %._crit_edge40.i36.loopexit.split ], [ %4, %.lr.ph39.i27.preheader.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.02843.i25, i64 %.idx47.i ; 2 uses
  br label %.lr.ph39.i27

._crit_edge40.i36.loopexit.split:                 ; preds = %._crit_edge.i34.loopexit
  %i.be = getelementptr inbounds nuw i8, ptr %.02942.i26, i64 2 ; 2 uses
  %.not.i38 = icmp eq ptr %i.be, %i.ar
  br i1 %.not.i38, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_110interleaveIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph39.i27.preheader, !llvm.loop !50

.lr.ph39.i27:                                     ; preds = %.lr.ph39.i27.preheader, %._crit_edge.i34.loopexit
  %.02737.i28 = phi ptr [ %i.bk, %._crit_edge.i34.loopexit ], [ %.02942.i26, %.lr.ph39.i27.preheader ] ; 3 uses
  %.136.i29 = phi ptr [ %i.bj, %._crit_edge.i34.loopexit ], [ %.02843.i25, %.lr.ph39.i27.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %.136.i29, i64 %.idx48.i
  br i1 %lcmp.mod90.not, label %.lr.ph.i30.prol.loopexit, label %.lr.ph.i30.prol

.lr.ph.i30.prol:                                  ; preds = %.lr.ph39.i27, %.lr.ph.i30.prol
  %.034.i31.prol = phi ptr [ %i.bg, %.lr.ph.i30.prol ], [ %.136.i29, %.lr.ph39.i27 ] ; 2 uses
  %.02633.i32.prol = phi ptr [ %i.bi, %.lr.ph.i30.prol ], [ %.02737.i28, %.lr.ph39.i27 ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.i30.prol ], [ 0, %.lr.ph39.i27 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.034.i31.prol, i64 2 ; 2 uses
  %i.bh = load i16, ptr %.034.i31.prol, align 2, !tbaa !25
  store i16 %i.bh, ptr %.02633.i32.prol, align 2, !tbaa !25
  %i.bi = getelementptr inbounds [2 x i8], ptr %.02633.i32.prol, i64 %i.aq ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.i30.prol.loopexit, label %.lr.ph.i30.prol, !llvm.loop !51

.lr.ph.i30.prol.loopexit:                         ; preds = %.lr.ph.i30.prol, %.lr.ph39.i27
  %.034.i31.unr = phi ptr [ %.136.i29, %.lr.ph39.i27 ], [ %i.bg, %.lr.ph.i30.prol ]
  %.02633.i32.unr = phi ptr [ %.02737.i28, %.lr.ph39.i27 ], [ %i.bi, %.lr.ph.i30.prol ]
  br i1 %i.bc, label %._crit_edge.i34.loopexit, label %.lr.ph.i30

._crit_edge.i34.loopexit:                         ; preds = %.lr.ph.i30, %.lr.ph.i30.prol.loopexit
  %i.bj = getelementptr inbounds [2 x i8], ptr %.136.i29, i64 %i.ax ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %.02737.i28, i64 %i.ay
  %.not30.i35 = icmp eq ptr %i.bj, %i.bd
  br i1 %.not30.i35, label %._crit_edge40.i36.loopexit.split, label %.lr.ph39.i27, !llvm.loop !52

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.prol.loopexit, %.lr.ph.i30
  %.034.i31 = phi ptr [ %i.cg, %.lr.ph.i30 ], [ %.034.i31.unr, %.lr.ph.i30.prol.loopexit ] ; 9 uses
  %.02633.i32 = phi ptr [ %i.ci, %.lr.ph.i30 ], [ %.02633.i32.unr, %.lr.ph.i30.prol.loopexit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.034.i31, i64 2
  %i.bm = load i16, ptr %.034.i31, align 2, !tbaa !25
  store i16 %i.bm, ptr %.02633.i32, align 2, !tbaa !25
  %i.bn = getelementptr inbounds [2 x i8], ptr %.02633.i32, i64 %i.aq ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.034.i31, i64 4
  %i.bp = load i16, ptr %i.bl, align 2, !tbaa !25
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !25
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.aq ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.034.i31, i64 6
  %i.bs = load i16, ptr %i.bo, align 2, !tbaa !25
end_hunk_0
