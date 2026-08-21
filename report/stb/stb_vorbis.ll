inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@codebook_decode_deinterleave_repeat:bb.a
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !97  ; 2 uses
  %i.af = and i32 %i.ae, 1023
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !44 ; 3 uses
  %i.aj = icmp sgt i16 %i.ai, -1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %prep_huffman.exit
  %i.ak = zext nneg i16 %i.ai to i32
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.am = zext nneg i16 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = lshr i32 %i.ae, %i.ap
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !97
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !92
  %i.as = sub nsw i32 %i.ar, %i.ap                ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  store i32 %spec.select, ptr %i.h, align 8, !tbaa !92
  br i1 %i.at, label %.thread118, label %.thread

bb.k:                                             ; preds = %prep_huffman.exit
  %i.au = tail call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %.thread, label %.thread118

.thread118:                                       ; preds = %bb.j, %bb.k
  %i.aw = load i8, ptr %i.j, align 4, !tbaa !94
  %.not109 = icmp eq i8 %i.aw, 0
  br i1 %.not109, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread118
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !91
  %.not110 = icmp eq i32 %i.ax, 0
  br i1 %.not110, label %bb.m, label %.thread120

bb.m:                                             ; preds = %bb.l, %.thread118
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.ay, align 4
  br label %.thread120

.thread:                                          ; preds = %bb.j, %bb.k
  %.183117 = phi i32 [ %i.au, %bb.k ], [ %i.ak, %bb.j ]
  %i.az = mul nsw i32 %.086144, %3                ; 2 uses
  %i.ba = add nsw i32 %i.az, %.089143
  %i.bb = add nsw i32 %i.ba, %.081145
  %i.bc = icmp sgt i32 %i.bb, %i.n
  %.neg = add i32 %.089143, %i.n
  %i.bd = sub i32 %.neg, %i.az
  %.1 = select i1 %i.bc, i32 %i.bd, i32 %.081145  ; 5 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !104
  %i.bf = mul nsw i32 %i.be, %.183117             ; 2 uses
  %i.bg = load i8, ptr %i.o, align 2, !tbaa !105
  %.not = icmp eq i8 %i.bg, 0
  %i.bh = icmp sgt i32 %.1, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader126

.preheader126:                                    ; preds = %.thread
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader126
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.bj = sext i32 %i.bf to i64
  %wide.trip.count = zext nneg i32 %.1 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bi, i64 %i.bj
  br label %bb.n

.preheader:                                       ; preds = %.thread
  br i1 %i.bh, label %.lr.ph139.preheader, label %.loopexit

.lr.ph139.preheader:                              ; preds = %.preheader
  %i.bk = sext i32 %i.bf to i64
  %wide.trip.count154 = zext nneg i32 %.1 to i64
  br label %.lr.ph139

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.0134 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bm, %bb.p ]
  %.187132 = phi i32 [ %.086144, %.lr.ph ], [ %spec.select113, %bb.p ] ; 2 uses
  %.190131 = phi i32 [ %.089143, %.lr.ph ], [ %spec.select112, %bb.p ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bl = load float, ptr %gep, align 4, !tbaa !56
  %i.bm = fadd float %.0134, %i.bl                ; 2 uses
  %i.bn = sext i32 %.190131 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 2 uses
  %.not108 = icmp eq ptr %i.bp, null
  br i1 %.not108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = sext i32 %.187132 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !56
  %i.bt = fadd float %i.bm, %i.bs
  store float %i.bt, ptr %i.br, align 4, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = add nsw i32 %.190131, 1                 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, %3                   ; 2 uses
  %spec.select112 = select i1 %i.bv, i32 0, i32 %i.bu ; 2 uses
  %i.bw = zext i1 %i.bv to i32
  %spec.select113 = add nsw i32 %.187132, %i.bw   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !124

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.r
  %indvars.iv151 = phi i64 [ 0, %.lr.ph139.preheader ], [ %indvars.iv.next152, %bb.r ] ; 2 uses
  %.3137 = phi i32 [ %.086144, %.lr.ph139.preheader ], [ %spec.select115, %bb.r ] ; 2 uses
  %.392136 = phi i32 [ %.089143, %.lr.ph139.preheader ], [ %spec.select114, %bb.r ] ; 2 uses
  %i.bx = sext i32 %.392136 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62 ; 2 uses
  %.not107 = icmp eq ptr %i.bz, null
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph139
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv151
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %i.bk
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !56
  %i.ce = fadd float %i.cd, 0.000000e+00
  %i.cf = sext i32 %.3137 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !56
  %i.ci = fadd float %i.ch, %i.ce
  store float %i.ci, ptr %i.cg, align 4, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph139
  %i.cj = add nsw i32 %.392136, 1                 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %3                   ; 2 uses
  %spec.select114 = select i1 %i.ck, i32 0, i32 %i.cj ; 2 uses
  %i.cl = zext i1 %i.ck to i32
  %spec.select115 = add nsw i32 %.3137, %i.cl     ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph139, !llvm.loop !125

.loopexit:                                        ; preds = %bb.p, %bb.r, %.preheader126, %.preheader
  %.594 = phi i32 [ %spec.select114, %bb.r ], [ %.089143, %.preheader ], [ %.089143, %.preheader126 ], [ %spec.select112, %bb.p ] ; 2 uses
  %.5 = phi i32 [ %spec.select115, %bb.r ], [ %.086144, %.preheader ], [ %.086144, %.preheader126 ], [ %spec.select113, %bb.p ] ; 2 uses
  %i.cm = sub nsw i32 %.096142, %.1               ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.c, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %.loopexit, %.preheader128
  %.089.lcssa = phi i32 [ %i.a, %.preheader128 ], [ %.594, %.loopexit ]
  %.086.lcssa = phi i32 [ %i.b, %.preheader128 ], [ %.5, %.loopexit ]
  store i32 %.089.lcssa, ptr %4, align 4, !tbaa !25
  store i32 %.086.lcssa, ptr %5, align 4, !tbaa !25
  br label %.thread120

.thread120:                                       ; preds = %bb.l, %bb.m, %._crit_edge, %bb.b
  %.2100 = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ 1, %._crit_edge ], [ 0, %bb.m ]
  ret i32 %.2100
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @predict_point(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = sub nsw i32 %4, %3                       ; 2 uses
  %i.b = sub nsw i32 %2, %1
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.d = sub nsw i32 %0, %1
  %i.e = mul nsw i32 %i.c, %i.d
  %i.f = sdiv i32 %i.e, %i.b                      ; 2 uses
  %i.g = icmp slt i32 %i.a, 0
  %i.h = sub i32 0, %i.f
  %.p = select i1 %i.g, i32 %i.h, i32 %i.f
  %i.i = add i32 %.p, %3
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @residue_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph, label %codebook_decode_step.exit

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !104
  %i.g = sdiv i32 %4, %i.f                        ; 3 uses
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %.not3557 = icmp sgt i32 %i.g, 0
  br i1 %.not3557, label %.lr.ph59, label %codebook_decode_step.exit

.lr.ph59:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.l = zext nneg i32 %i.g to i64                ; 7 uses
  %ident.check.not = icmp eq i32 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %6 = add i64 %indvars.iv, %i.h
  %7 = shl i64 %6, 2
  %scevgep85 = getelementptr i8, ptr %2, i64 %7   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 7 uses
  %i.n = tail call i32 @codebook_decode_start(ptr noundef %0, ptr noundef nonnull readonly %1) ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %codebook_decode_step.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = add i32 %3, %i.p
  %i.r = sub i32 %4, %i.q
  %i.s = load i32, ptr %1, align 8, !tbaa !104    ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s) ; 5 uses
  %i.t = icmp sgt i32 %spec.select.i, 0
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = mul i32 %i.s, %i.n
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !106  ; 2 uses
  %i.w = load i8, ptr %i.k, align 2, !tbaa !105
  %.fr.i = freeze i8 %i.w
  %.not.i = icmp eq i8 %.fr.i, 0
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %wide.trip.count34.i = zext nneg i32 %spec.select.i to i64 ; 9 uses
  %invariant.gep37.i = getelementptr [4 x i8], ptr %i.v, i64 %i.x ; 8 uses
  br i1 %.not.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter113 = and i64 %wide.trip.count34.i, 1
  %i.y = icmp eq i32 %spec.select.i, 1
  br i1 %i.y, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter116 = and i64 %wide.trip.count34.i, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check92 = icmp ugt i32 %spec.select.i, 7
  %or.cond = and i1 %min.iters.check92, %ident.check.not
  br i1 %or.cond, label %vector.memcheck84, label %.lr.ph.split.us.i.preheader105

vector.memcheck84:                                ; preds = %.lr.ph.split.us.i.preheader
  %i.z = shl nuw nsw i64 %wide.trip.count34.i, 2
  %scevgep86.a = getelementptr i8, ptr %scevgep85, i64 %i.z
  %i.aa = add nsw i64 %i.x, %wide.trip.count34.i
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep87 = getelementptr i8, ptr %i.v, i64 %i.ab
  %bound088 = icmp ult ptr %scevgep85, %scevgep87
  %bound189 = icmp ult ptr %invariant.gep37.i, %scevgep86.a
  %found.conflict90 = and i1 %bound088, %bound189
  br i1 %found.conflict90, label %.lr.ph.split.us.i.preheader105, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck84
  %n.vec94 = and i64 %wide.trip.count34.i, 2147483640 ; 3 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body95 ] ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %index96 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %wide.load97.a = load <4 x float>, ptr %i.ac, align 4, !tbaa !56, !alias.scope !127
  %wide.load98.a = load <4 x float>, ptr %i.ad, align 4, !tbaa !56, !alias.scope !127
  %i.ae = fadd <4 x float> %wide.load97.a, zeroinitializer
  %i.af = fadd <4 x float> %wide.load98.a, zeroinitializer
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load99.a = load <4 x float>, ptr %i.ag, align 4, !tbaa !56, !alias.scope !130, !noalias !127
  %wide.load100 = load <4 x float>, ptr %i.ah, align 4, !tbaa !56, !alias.scope !130, !noalias !127
  %i.ai = fadd <4 x float> %wide.load99.a, %i.ae
  %i.aj = fadd <4 x float> %wide.load100, %i.af
  store <4 x float> %i.ai, ptr %i.ag, align 4, !tbaa !56, !alias.scope !130, !noalias !127
  store <4 x float> %i.aj, ptr %i.ah, align 4, !tbaa !56, !alias.scope !130, !noalias !127
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.ak = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.ak, label %middle.block102, label %vector.body95, !llvm.loop !132

middle.block102:                                  ; preds = %vector.body95
  %cmp.n103 = icmp eq i64 %n.vec94, %wide.trip.count34.i
  br i1 %cmp.n103, label %.loopexit, label %.lr.ph.split.us.i.preheader105

.lr.ph.split.us.i.preheader105:                   ; preds = %vector.memcheck84, %.lr.ph.split.us.i.preheader, %middle.block102
  %indvars.iv31.i.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec94, %middle.block102 ] ; 5 uses
  %xtraiter118 = and i64 %wide.trip.count34.i, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader105
  %gep38.i.prol = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv31.i.ph
  %i.al = load float, ptr %gep38.i.prol, align 4, !tbaa !56
  %i.am = fadd float %i.al, 0.000000e+00
  %i.an = mul nuw nsw i64 %indvars.iv31.i.ph, %i.l
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !56
  %i.aq = fadd float %i.ap, %i.am
  store float %i.aq, ptr %i.ao, align 4, !tbaa !56
  %indvars.iv.next32.i.prol = or disjoint i64 %indvars.iv31.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader105
  %indvars.iv31.i.unr = phi i64 [ %indvars.iv31.i.ph, %.lr.ph.split.us.i.preheader105 ], [ %indvars.iv.next32.i.prol, %.lr.ph.split.us.i.prol ]
  %i.ar = add nsw i64 %wide.trip.count34.i, -1
  %i.as = icmp eq i64 %indvars.iv31.i.ph, %i.ar
  br i1 %i.as, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.1, %.lr.ph.split.us.i ], [ %indvars.iv31.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %gep38.i = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv31.i
  %i.at = load float, ptr %gep38.i, align 4, !tbaa !56
  %i.au = fadd float %i.at, 0.000000e+00
  %i.av = mul nuw nsw i64 %indvars.iv31.i, %i.l
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !56
  %i.ay = fadd float %i.ax, %i.au
  store float %i.ay, ptr %i.aw, align 4, !tbaa !56
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %gep38.i.1 = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.next32.i
  %i.az = load float, ptr %gep38.i.1, align 4, !tbaa !56
  %i.ba = fadd float %i.az, 0.000000e+00
  %i.bb = mul nuw nsw i64 %indvars.iv.next32.i, %i.l
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bb ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !56
  %i.be = fadd float %i.bd, %i.ba
  store float %i.be, ptr %i.bc, align 4, !tbaa !56
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %exitcond35.not.i.1 = icmp eq i64 %indvars.iv.next32.i.1, %wide.trip.count34.i
  br i1 %exitcond35.not.i.1, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !133

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.split.i ] ; 4 uses
  %.028.i = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader.new ], [ %i.bm, %.lr.ph.split.i ]
  %niter117 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter117.next.1, %.lr.ph.split.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.i
  %i.bf = load float, ptr %gep.i, align 4, !tbaa !56
  %i.bg = fadd float %.028.i, %i.bf               ; 2 uses
  %i.bh = mul nuw nsw i64 %indvars.iv.i, %i.l
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !56
  %i.bk = fadd float %i.bj, %i.bg
  store float %i.bk, ptr %i.bi, align 4, !tbaa !56
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.next.i
  %i.bl = load float, ptr %gep.i.1, align 4, !tbaa !56
  %i.bm = fadd float %i.bg, %i.bl                 ; 3 uses
  %i.bn = mul nuw nsw i64 %indvars.iv.next.i, %i.l
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !56
  %i.bq = fadd float %i.bp, %i.bm
  store float %i.bq, ptr %i.bo, align 4, !tbaa !56
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter117.next.1 = add i64 %niter117, 2         ; 2 uses
  %niter117.ncmp.1 = icmp eq i64 %niter117.next.1, %unroll_iter116
  br i1 %niter117.ncmp.1, label %.loopexit.loopexit106.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !123

.loopexit.loopexit106.unr-lcssa:                  ; preds = %.lr.ph.split.i
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.loopexit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.loopexit.loopexit106.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit.loopexit106.unr-lcssa ] ; 2 uses
  %.028.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %i.bm, %.loopexit.loopexit106.unr-lcssa ]
  %lcmp.mod115 = trunc i32 %spec.select.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.i.epil.init
  %i.br = load float, ptr %gep.i.epil, align 4, !tbaa !56
  %i.bs = fadd float %.028.i.epil.init, %i.br
  %i.bt = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.l
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !56
  %i.bw = fadd float %i.bv, %i.bs
  store float %i.bw, ptr %i.bu, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.i.epil.preheader, %.loopexit.loopexit106.unr-lcssa, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block102, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %codebook_decode_step.exit, label %bb.c, !llvm.loop !134

bb.e:                                             ; preds = %.lr.ph, %.loopexit49
  %.154 = phi i32 [ 0, %.lr.ph ], [ %i.ei, %.loopexit49 ] ; 2 uses
  %.03153 = phi i32 [ %3, %.lr.ph ], [ %i.ej, %.loopexit49 ] ; 2 uses
  %i.bx = sext i32 %.03153 to i64                 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %2, i64 %i.bx ; 8 uses
  %i.bz = tail call i32 @codebook_decode_start(ptr noundef %0, ptr noundef readonly %1) ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %codebook_decode_step.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = sub i32 %4, %.154
  %i.cc = load i32, ptr %1, align 8, !tbaa !104   ; 4 uses
  %spec.select.i36 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc) ; 6 uses
  %i.cd = mul nsw i32 %i.cc, %i.bz                ; 2 uses
  %i.ce = load i8, ptr %i.c, align 2, !tbaa !105
  %.not.i37 = icmp eq i8 %i.ce, 0
  %i.cf = icmp sgt i32 %spec.select.i36, 0        ; 2 uses
  br i1 %.not.i37, label %.preheader.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.f
  br i1 %i.cf, label %.lr.ph.i38, label %.loopexit49

.lr.ph.i38:                                       ; preds = %.preheader36.i
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.ch = sext i32 %i.cd to i64
  %wide.trip.count.i = zext nneg i32 %spec.select.i36 to i64 ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %i.ch ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ci = icmp eq i32 %spec.select.i36, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i38.new

.lr.ph.i38.new:                                   ; preds = %.lr.ph.i38
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.g

.preheader.i:                                     ; preds = %bb.f
  br i1 %i.cf, label %.lr.ph41.i, label %.loopexit49

.lr.ph41.i:                                       ; preds = %.preheader.i
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.ck = sext i32 %i.cd to i64                   ; 2 uses
  %wide.trip.count47.i = zext nneg i32 %spec.select.i36 to i64 ; 7 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %i.cj, i64 %i.ck ; 5 uses
  %min.iters.check = icmp ult i32 %spec.select.i36, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph41.i
  %i.cl = add nsw i64 %i.bx, %wide.trip.count47.i
  %i.cm = shl nsw i64 %i.cl, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.cm
  %i.cn = add nsw i64 %i.ck, %wide.trip.count47.i
  %i.co = shl nsw i64 %i.cn, 2
  %scevgep80 = getelementptr i8, ptr %i.cj, i64 %i.co
  %bound0 = icmp ult ptr %i.by, %scevgep80
  %bound1 = icmp ult ptr %invariant.gep51.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count47.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %wide.load = load <4 x float>, ptr %i.cp, align 4, !tbaa !56, !alias.scope !135
  %wide.load81 = load <4 x float>, ptr %i.cq, align 4, !tbaa !56, !alias.scope !135
  %i.cr = fadd <4 x float> %wide.load, zeroinitializer
  %i.cs = fadd <4 x float> %wide.load81, zeroinitializer
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index ; 3 uses
end_hunk_0
begin_hunk_1_@decode_residue:bb.a

bb.bf:                                            ; preds = %bb.be
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit352

bb.bg:                                            ; preds = %._crit_edge.i.i, %bb.bc
  %i.ll = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ld, %bb.bc ] ; 3 uses
  %i.lm = add nsw i32 %i.ll, 1                    ; 2 uses
  store i32 %i.lm, ptr %i.db, align 8, !tbaa !89
  %i.ln = sext i32 %i.ll to i64
  %i.lo = getelementptr inbounds i8, ptr %i.df, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !29  ; 4 uses
  %.not22.i.i = icmp eq i8 %i.lp, -1
  br i1 %.not22.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 1, ptr %i.da, align 4, !tbaa !91
  store i32 %i.ll, ptr %i.dd, align 8, !tbaa !95
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lq = load i32, ptr %i.dc, align 8, !tbaa !81
  %.not23.i.i = icmp slt i32 %i.lm, %i.lq
  br i1 %.not23.i.i, label %next_segment.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 -1, ptr %i.db, align 8, !tbaa !89
  br label %next_segment.exit.i

next_segment.exit.i:                              ; preds = %bb.bj, %bb.bi
  store i8 %i.lp, ptr %i.cz, align 4, !tbaa !94
  %.not7.i = icmp eq i8 %i.lp, 0
  br i1 %.not7.i, label %prep_huffman.exit352, label %.thread569

.thread569:                                       ; preds = %bb.ba, %next_segment.exit.i, %bb.bb
  %i.lr = phi i8 [ %i.lp, %next_segment.exit.i ], [ %.pr, %bb.bb ], [ %.pr, %bb.ba ]
  %i.ls = add i8 %i.lr, -1
  store i8 %i.ls, ptr %i.cz, align 4, !tbaa !94
  %i.lt = load i32, ptr %i.dg, align 4, !tbaa !93
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.dg, align 4, !tbaa !93
  %i.lv = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.lv, null
  br i1 %.not.i8.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %.thread569
  %i.lw = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i = icmp ult ptr %i.lv, %i.lw
  br i1 %.not11.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread573

bb.bm:                                            ; preds = %bb.bk
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  store ptr %i.lx, ptr %i.dh, align 8, !tbaa !70
  %i.ly = load i8, ptr %i.lv, align 1, !tbaa !29
  br label %get8_packet_raw.exit

bb.bn:                                            ; preds = %.thread569
  %i.lz = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.ma = call i32 @fgetc(ptr noundef %i.lz)      ; 2 uses
  %i.mb = icmp eq i32 %i.ma, -1
  br i1 %i.mb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread573

bb.bp:                                            ; preds = %bb.bn
  %i.mc = trunc i32 %i.ma to i8
  br label %get8_packet_raw.exit

get8_packet_raw.exit:                             ; preds = %bb.bm, %bb.bp
  %.1.i.i = phi i8 [ %i.mc, %bb.bp ], [ %i.ly, %bb.bm ]
  %i.md = zext i8 %.1.i.i to i32
  br label %get8_packet_raw.exit.thread573

get8_packet_raw.exit.thread573:                   ; preds = %get8_packet_raw.exit, %bb.bo, %bb.bl
  %i.me = phi i32 [ %i.md, %get8_packet_raw.exit ], [ 0, %bb.bl ], [ 0, %bb.bo ]
  %i.mf = load i32, ptr %i.cx, align 8, !tbaa !92 ; 3 uses
  %i.mg = shl i32 %i.me, %i.mf
  %i.mh = load i32, ptr %i.cy, align 4, !tbaa !97
  %i.mi = add i32 %i.mh, %i.mg
  store i32 %i.mi, ptr %i.cy, align 4, !tbaa !97
  %i.mj = add nsw i32 %i.mf, 8
  store i32 %i.mj, ptr %i.cx, align 8, !tbaa !92
  %i.mk = icmp slt i32 %i.mf, 17
  br i1 %i.mk, label %bb.az, label %prep_huffman.exit352, !llvm.loop !100

prep_huffman.exit352:                             ; preds = %next_segment.exit.i, %get8_packet_raw.exit.thread573, %bb.ba, %.loopexit655, %bb.bf, %bb.aw
  %i.ml = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %i.mm = and i32 %i.ml, 1023
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.mo = zext nneg i32 %i.mm to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !44 ; 3 uses
  %i.mr = icmp sgt i16 %i.mq, -1
  br i1 %i.mr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %prep_huffman.exit352
  %i.ms = zext nneg i16 %i.mq to i32
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !36
  %i.mv = zext nneg i16 %i.mq to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !29
  %i.my = zext i8 %i.mx to i32                    ; 2 uses
  %i.mz = lshr i32 %i.ml, %i.my
  store i32 %i.mz, ptr %i.cy, align 4, !tbaa !97
  %i.na = load i32, ptr %i.cx, align 8, !tbaa !92
  %i.nb = sub nsw i32 %i.na, %i.my                ; 2 uses
  %spec.select343 = call i32 @llvm.smax.i32(i32 %i.nb, i32 0)
  %.inv = icmp sgt i32 %i.nb, -1
  %spec.select344 = select i1 %.inv, i32 %i.ms, i32 -1
  store i32 %spec.select343, ptr %i.cx, align 8, !tbaa !92
  br label %bb.bs

bb.br:                                            ; preds = %prep_huffman.exit352
  %i.nc = call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.ky)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1 = phi i32 [ %spec.select344, %bb.bq ], [ %i.nc, %bb.br ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ky, i64 27
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !30
  %.not326 = icmp eq i8 %i.ne, 0
  br i1 %.not326, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ky, i64 2104
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !54
  %i.nh = sext i32 %.1 to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2 = phi i32 [ %i.nj, %bb.bt ], [ %.1, %bb.bs ] ; 2 uses
  %.not327 = icmp eq i32 %.2, -1
  br i1 %.not327, label %.thread633, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nk = load ptr, ptr %i.dm, align 8, !tbaa !154
  %i.nl = sext i32 %.2 to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.nl
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !155
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv782
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !156
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv803
  store ptr %i.nn, ptr %i.nq, align 8, !tbaa !155
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph695
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next783, %wide.trip.count785
  br i1 %exitcond786.not, label %.loopexit657, label %.lr.ph695, !llvm.loop !163

.loopexit657:                                     ; preds = %bb.bw, %bb.av
  %i.nr = icmp slt i32 %.0279721, %i.ac
  %i.ns = select i1 %i.dn, i1 %i.nr, i1 false
  br i1 %i.ns, label %.preheader654.lr.ph, label %._crit_edge706

.preheader654.lr.ph:                              ; preds = %.loopexit657
  br i1 %i.ce, label %.preheader654.lr.ph.split.us, label %.preheader654

.preheader654.lr.ph.split.us:                     ; preds = %.preheader654.lr.ph
  br i1 %i.dp, label %.preheader654.us.us, label %.preheader654.us

.preheader654.us.us:                              ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us.us.us
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %._crit_edge700.split.us.us.us ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us.us = phi i32 [ %i.yj, %._crit_edge700.split.us.us.us ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %.thread629.us.us.us, %.preheader654.us.us
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %.thread629.us.us.us ], [ 0, %.preheader654.us.us ] ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv795
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !29
  %.not323.us.us.us = icmp eq i8 %i.nu, 0
  br i1 %.not323.us.us.us, label %bb.by, label %.thread629.us.us.us

bb.by:                                            ; preds = %bb.bx
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv795
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !156
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv803
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !155
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 %indvars.iv800
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !29
  %i.ob = load ptr, ptr %i.do, align 8, !tbaa !157
  %i.oc = zext i8 %i.oa to i64
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.od, i64 %indvars.iv806
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !44 ; 2 uses
  %i.og = icmp sgt i16 %i.of, -1
  br i1 %i.og, label %bb.bz, label %.thread629.us.us.us

bb.bz:                                            ; preds = %bb.by
  %i.oh = zext nneg i16 %i.of to i64
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv795
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !62 ; 2 uses
  %i.ok = load i32, ptr %i.h, align 8, !tbaa !147
  %i.ol = load i32, ptr %i.aa, align 8, !tbaa !149 ; 3 uses
  %i.om = mul i32 %i.ol, %.1280704.us.us
  %i.on = add i32 %i.om, %i.ok                    ; 2 uses
  %i.oo = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.op = getelementptr inbounds nuw [2120 x i8], ptr %i.oo, i64 %i.oh ; 13 uses
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !104
  %i.or = sdiv i32 %i.ol, %i.oq                   ; 3 uses
  %i.os = sext i32 %i.on to i64                   ; 2 uses
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.os
  %.not3557.i.us.us.us = icmp sgt i32 %i.or, 0
  br i1 %.not3557.i.us.us.us, label %.lr.ph59.i.us.us.us, label %.thread629.us.us.us

.lr.ph59.i.us.us.us:                              ; preds = %bb.bz
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 26
  %i.ow = zext nneg i32 %i.or to i64              ; 7 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.op, i64 25
  %i.oy = getelementptr inbounds nuw i8, ptr %i.op, i64 48
  %i.oz = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.pa = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  %.phi.trans.insert.i417.us.us.us = getelementptr inbounds nuw i8, ptr %i.op, i64 2096 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.op, i64 2112
  %i.pd = getelementptr inbounds nuw i8, ptr %i.op, i64 27
  %i.pe = getelementptr inbounds nuw i8, ptr %i.op, i64 2104
  %ident.check.not = icmp eq i32 %i.or, 1
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.i.us.us.us, %.lr.ph59.i.us.us.us
  %indvars.iv.i354.us.us.us = phi i64 [ 0, %.lr.ph59.i.us.us.us ], [ %indvars.iv.next.i355.us.us.us, %.loopexit.i.us.us.us ] ; 4 uses
  %6 = add i64 %indvars.iv.i354.us.us.us, %i.os
  %7 = shl i64 %6, 2
  %scevgep = getelementptr i8, ptr %i.oj, i64 %7  ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.i354.us.us.us ; 7 uses
  %i.pg = load i8, ptr %i.ox, align 1, !tbaa !103
  %i.ph = icmp eq i8 %i.pg, 0
  br i1 %i.ph, label %.thread31.sink.split.i367, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pi = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %i.pj = icmp slt i32 %i.pi, 10
  br i1 %i.pj, label %bb.cc, label %prep_huffman.exit.i362.us.us.us

bb.cc:                                            ; preds = %bb.cb
  %i.pk = icmp eq i32 %i.pi, 0
  br i1 %i.pk, label %bb.cd, label %.preheader1020

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.cy, align 4, !tbaa !97
  br label %.preheader1020

.preheader1020:                                   ; preds = %bb.cd, %bb.cc
  br label %bb.ce

bb.ce:                                            ; preds = %.preheader1020, %get8_packet_raw.exit453.thread585.us.us.us
  %i.pl = load i32, ptr %i.da, align 4, !tbaa !91
  %.not.i.i371.us.us.us = icmp eq i32 %i.pl, 0
  %.pr578.us.us.us = load i8, ptr %i.cz, align 4, !tbaa !94 ; 3 uses
  %.not.i435.us.us.us = icmp eq i8 %.pr578.us.us.us, 0 ; 2 uses
  br i1 %.not.i.i371.us.us.us, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not.i435.us.us.us, label %prep_huffman.exit.i362.us.us.us, label %.thread579.us.us.us

bb.cg:                                            ; preds = %bb.ce
  br i1 %.not.i435.us.us.us, label %bb.ch, label %.thread579.us.us.us

bb.ch:                                            ; preds = %bb.cg
  %i.pm = load i32, ptr %i.db, align 8, !tbaa !89 ; 2 uses
  %i.pn = icmp eq i32 %i.pm, -1
  br i1 %i.pn, label %bb.ci, label %bb.dd

bb.ci:                                            ; preds = %bb.ch
  %i.po = load i32, ptr %i.dc, align 8, !tbaa !81
  %i.pp = add nsw i32 %i.po, -1
  store i32 %i.pp, ptr %i.dd, align 8, !tbaa !95
  %i.pq = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i.i500.us.us.us = icmp eq ptr %i.pq, null
  br i1 %.not.i.i500.us.us.us, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pr = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i501.us.us.us = icmp ult ptr %i.pq, %i.pr
  br i1 %.not11.i.i501.us.us.us, label %bb.ck, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.ck:                                            ; preds = %bb.cj
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 1
  store ptr %i.ps, ptr %i.dh, align 8, !tbaa !70
  %i.pt = load i8, ptr %i.pq, align 1, !tbaa !29
  br label %get8.exit.i503.us.us.us

bb.cl:                                            ; preds = %bb.ci
  %i.pu = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.pv = call i32 @fgetc(ptr noundef %i.pu)      ; 2 uses
  %i.pw = icmp eq i32 %i.pv, -1
  br i1 %i.pw, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.px = trunc i32 %i.pv to i8
  br label %get8.exit.i503.us.us.us

get8.exit.i503.us.us.us:                          ; preds = %bb.cm, %bb.ck
  %.1.i.i504.us.us.us = phi i8 [ %i.px, %bb.cm ], [ %i.pt, %bb.ck ]
  %.not.i505.us.us.us = icmp eq i8 %.1.i.i504.us.us.us, 79
  br i1 %.not.i505.us.us.us, label %bb.cn, label %start_page.exit.thread.i.i452.us.us.us

bb.cn:                                            ; preds = %get8.exit.i503.us.us.us
  %i.py = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i7.i506.us.us.us = icmp eq ptr %i.py, null
  br i1 %.not.i7.i506.us.us.us, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pz = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i8.i507.us.us.us = icmp ult ptr %i.py, %i.pz
  br i1 %.not11.i8.i507.us.us.us, label %bb.cp, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cp:                                            ; preds = %bb.co
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 1
  store ptr %i.qa, ptr %i.dh, align 8, !tbaa !70
  %i.qb = load i8, ptr %i.py, align 1, !tbaa !29
  br label %get8.exit10.i508.us.us.us

bb.cq:                                            ; preds = %bb.cn
  %i.qc = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qd = call i32 @fgetc(ptr noundef %i.qc)      ; 2 uses
  %i.qe = icmp eq i32 %i.qd, -1
  br i1 %i.qe, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qf = trunc i32 %i.qd to i8
  br label %get8.exit10.i508.us.us.us

get8.exit10.i508.us.us.us:                        ; preds = %bb.cr, %bb.cp
  %.1.i9.i509.us.us.us = phi i8 [ %i.qf, %bb.cr ], [ %i.qb, %bb.cp ]
  %.not4.i510.us.us.us = icmp eq i8 %.1.i9.i509.us.us.us, 103
  br i1 %.not4.i510.us.us.us, label %bb.cs, label %start_page.exit.thread.i.i452.us.us.us

bb.cs:                                            ; preds = %get8.exit10.i508.us.us.us
  %i.qg = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i11.i511.us.us.us = icmp eq ptr %i.qg, null
  br i1 %.not.i11.i511.us.us.us, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qh = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i12.i512.us.us.us = icmp ult ptr %i.qg, %i.qh
  br i1 %.not11.i12.i512.us.us.us, label %bb.cu, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cu:                                            ; preds = %bb.ct
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 1
  store ptr %i.qi, ptr %i.dh, align 8, !tbaa !70
  %i.qj = load i8, ptr %i.qg, align 1, !tbaa !29
  br label %get8.exit14.i513.us.us.us

bb.cv:                                            ; preds = %bb.cs
  %i.qk = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.ql = call i32 @fgetc(ptr noundef %i.qk)      ; 2 uses
  %i.qm = icmp eq i32 %i.ql, -1
  br i1 %i.qm, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qn = trunc i32 %i.ql to i8
  br label %get8.exit14.i513.us.us.us

get8.exit14.i513.us.us.us:                        ; preds = %bb.cw, %bb.cu
  %.1.i13.i514.us.us.us = phi i8 [ %i.qn, %bb.cw ], [ %i.qj, %bb.cu ]
  %.not5.i515.us.us.us = icmp eq i8 %.1.i13.i514.us.us.us, 103
  br i1 %.not5.i515.us.us.us, label %bb.cx, label %start_page.exit.thread.i.i452.us.us.us

bb.cx:                                            ; preds = %get8.exit14.i513.us.us.us
  %i.qo = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i15.i516.us.us.us = icmp eq ptr %i.qo, null
  br i1 %.not.i15.i516.us.us.us, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qp = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i16.i517.us.us.us = icmp ult ptr %i.qo, %i.qp
  br i1 %.not11.i16.i517.us.us.us, label %bb.cz, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cz:                                            ; preds = %bb.cy
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 1
  store ptr %i.qq, ptr %i.dh, align 8, !tbaa !70
  %i.qr = load i8, ptr %i.qo, align 1, !tbaa !29
  %i.qs = freeze i8 %i.qr
  br label %capture_pattern.exit522.us.us.us

bb.da:                                            ; preds = %bb.cx
  %i.qt = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qu = call i32 @fgetc(ptr noundef %i.qt)      ; 2 uses
  %i.qv = icmp eq i32 %i.qu, -1
  br i1 %i.qv, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qw = trunc i32 %i.qu to i8
  br label %capture_pattern.exit522.us.us.us

capture_pattern.exit522.us.us.us:                 ; preds = %bb.db, %bb.cz
  %.1.i17.i519.us.us.us = phi i8 [ %i.qw, %bb.db ], [ %i.qs, %bb.cz ]
  %.not6.i520.not.us.us.us = icmp eq i8 %.1.i17.i519.us.us.us, 83
  br i1 %.not6.i520.not.us.us.us, label %start_page.exit.i.i447.us.us.us, label %start_page.exit.thread.i.i452.us.us.us

start_page.exit.i.i447.us.us.us:                  ; preds = %capture_pattern.exit522.us.us.us
  %i.qx = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i448.us.us.us = icmp eq i32 %i.qx, 0
  br i1 %.not20.i.i448.us.us.us, label %.loopexit647.us.us.us, label %bb.dc

bb.dc:                                            ; preds = %start_page.exit.i.i447.us.us.us
  %i.qy = load i8, ptr %i.de, align 1, !tbaa !79
  %i.qz = and i8 %i.qy, 1
  %.not21.i.i449.us.us.us = icmp eq i8 %i.qz, 0
  br i1 %.not21.i.i449.us.us.us, label %bb.dn, label %._crit_edge.i.i450.us.us.us

._crit_edge.i.i450.us.us.us:                      ; preds = %bb.dc
  %.pre.i.i451.us.us.us = load i32, ptr %i.db, align 8, !tbaa !89
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i.i450.us.us.us, %bb.ch
  %i.ra = phi i32 [ %.pre.i.i451.us.us.us, %._crit_edge.i.i450.us.us.us ], [ %i.pm, %bb.ch ] ; 3 uses
  %i.rb = add nsw i32 %i.ra, 1                    ; 2 uses
  store i32 %i.rb, ptr %i.db, align 8, !tbaa !89
  %i.rc = sext i32 %i.ra to i64
  %i.rd = getelementptr inbounds i8, ptr %i.df, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !29  ; 4 uses
  %.not22.i.i442.us.us.us = icmp eq i8 %i.re, -1
  br i1 %.not22.i.i442.us.us.us, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i32 1, ptr %i.da, align 4, !tbaa !91
  store i32 %i.ra, ptr %i.dd, align 8, !tbaa !95
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.rf = load i32, ptr %i.dc, align 8, !tbaa !81
  %.not23.i.i443.us.us.us = icmp slt i32 %i.rb, %i.rf
  br i1 %.not23.i.i443.us.us.us, label %next_segment.exit.i444.us.us.us, label %bb.dg
end_hunk_1
begin_hunk_2_@decode_residue:bb.a
  %i.to = load i32, ptr %i.cy, align 4, !tbaa !97
  %i.tp = add i32 %i.to, %i.tn
  store i32 %i.tp, ptr %i.cy, align 4, !tbaa !97
  %i.tq = add nsw i32 %i.tm, 8
  store i32 %i.tq, ptr %i.cx, align 8, !tbaa !92
  %i.tr = icmp slt i32 %i.tm, 17
  br i1 %i.tr, label %bb.dr, label %prep_huffman.exit.i402.us.us.us, !llvm.loop !100

bb.eh:                                            ; preds = %bb.dw
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit.i402.us.us.us

start_page.exit.thread.i.i498.us.us.us:           ; preds = %bb.dv
  store i32 30, ptr %i.dl, align 4
  br label %.loopexit646.us.us.us

.loopexit646.us.us.us:                            ; preds = %start_page.exit.i.i493.us.us.us, %start_page.exit.thread.i.i498.us.us.us
  store i32 1, ptr %i.da, align 4, !tbaa !91
  br label %prep_huffman.exit.i402.us.us.us

prep_huffman.exit.i402.us.us.us:                  ; preds = %bb.ds, %next_segment.exit.i490.us.us.us, %get8_packet_raw.exit499.thread593.us.us.us, %.loopexit646.us.us.us, %bb.eh, %bb.do
  %i.ts = load ptr, ptr %i.oz, align 8, !tbaa !35 ; 2 uses
  %i.tt = icmp eq ptr %i.ts, null
  br i1 %i.tt, label %bb.eo, label %.thread.i403.us.us.us

.thread.i403.us.us.us:                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.tu = load i32, ptr %i.pa, align 4, !tbaa !50 ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 8
  br i1 %i.tv, label %bb.ei, label %.thread66.i404.us.us.us

.thread66.i404.us.us.us:                          ; preds = %.thread.i403.us.us.us
  %i.tw = icmp sgt i32 %i.tu, 0
  br i1 %i.tw, label %.lr.ph76.i410.us.us.us, label %._crit_edge77.i405

bb.ei:                                            ; preds = %.thread.i403.us.us.us
  %.pre.i418.us.us.us = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !48 ; 2 uses
  %.not61.i419.us.us.us = icmp eq ptr %.pre.i418.us.us.us, null
  br i1 %.not61.i419.us.us.us, label %.lr.ph76.i410.us.us.us, label %.thread96.i420.us.us.us

.lr.ph76.i410.us.us.us:                           ; preds = %bb.ei, %.thread66.i404.us.us.us
  %i.tx = load ptr, ptr %i.pb, align 8, !tbaa !36 ; 2 uses
  %wide.trip.count.i411.us.us.us = zext nneg i32 %i.tu to i64
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %.lr.ph76.i410.us.us.us
  %indvars.iv.i412.us.us.us = phi i64 [ 0, %.lr.ph76.i410.us.us.us ], [ %indvars.iv.next.i414.us.us.us, %bb.el ] ; 5 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %indvars.iv.i412.us.us.us
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !29  ; 2 uses
  %i.ua = icmp eq i8 %i.tz, -1
  br i1 %i.ua, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ub = zext i8 %i.tz to i32                    ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i412.us.us.us
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !25
  %i.ue = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %notmask.i413.us.us.us = shl nsw i32 -1, %i.ub
  %i.uf = xor i32 %notmask.i413.us.us.us, -1
  %i.ug = and i32 %i.ue, %i.uf
  %i.uh = icmp eq i32 %i.ud, %i.ug
  br i1 %i.uh, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv.next.i414.us.us.us = add nuw nsw i64 %indvars.iv.i412.us.us.us, 1 ; 2 uses
  %exitcond.not.i415.us.us.us = icmp eq i64 %indvars.iv.next.i414.us.us.us, %wide.trip.count.i411.us.us.us
  br i1 %exitcond.not.i415.us.us.us, label %._crit_edge77.i405, label %bb.ej, !llvm.loop !102

bb.em:                                            ; preds = %bb.ek
  %i.ui = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %.not62.i416.us.us.us = icmp slt i32 %i.ui, %i.ub
  br i1 %.not62.i416.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tx, i64 %indvars.iv.i412.us.us.us
  %i.uk = trunc nuw nsw i64 %indvars.iv.i412.us.us.us to i32
  %i.ul = lshr i32 %i.ue, %i.ub
  store i32 %i.ul, ptr %i.cy, align 4, !tbaa !97
  %i.um = load i8, ptr %i.uj, align 1, !tbaa !29
  %i.un = zext i8 %i.um to i32
  %i.uo = sub nsw i32 %i.ui, %i.un
  br label %codebook_decode_scalar_raw.exit434.us.us.us

bb.eo:                                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.up = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !48 ; 2 uses
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %.thread.i364, label %.thread96.i420.us.us.us

.thread96.i420.us.us.us:                          ; preds = %bb.eo, %bb.ei
  %i.ur = phi ptr [ %.pre.i418.us.us.us, %bb.ei ], [ %i.up, %bb.eo ]
  %i.us = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %i.ut = call noundef i32 @llvm.bitreverse.i32(i32 %i.us)
  %i.uu = load i32, ptr %i.pc, align 8, !tbaa !49 ; 2 uses
  %i.uv = icmp sgt i32 %i.uu, 1
  br i1 %i.uv, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us

.lr.ph.i426.us.us.us:                             ; preds = %.thread96.i420.us.us.us, %.lr.ph.i426.us.us.us
  %.072.i427.us.us.us = phi i32 [ %.1.i431.us.us.us, %.lr.ph.i426.us.us.us ], [ %i.uu, %.thread96.i420.us.us.us ] ; 2 uses
  %.05471.i428.us.us.us = phi i32 [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ], [ 0, %.thread96.i420.us.us.us ] ; 2 uses
  %i.uw = lshr i32 %.072.i427.us.us.us, 1         ; 3 uses
  %i.ux = add nuw nsw i32 %i.uw, %.05471.i428.us.us.us ; 2 uses
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !25
  %.not65.i429.us.us.us = icmp ugt i32 %i.va, %i.ut ; 2 uses
  %i.vb = sub nsw i32 %.072.i427.us.us.us, %i.uw
  %.155.i430.us.us.us = select i1 %.not65.i429.us.us.us, i32 %.05471.i428.us.us.us, i32 %i.ux ; 2 uses
  %.1.i431.us.us.us = select i1 %.not65.i429.us.us.us, i32 %i.uw, i32 %i.vb ; 2 uses
  %i.vc = icmp sgt i32 %.1.i431.us.us.us, 1
  br i1 %i.vc, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us, !llvm.loop !101

._crit_edge.i421.us.us.us:                        ; preds = %.lr.ph.i426.us.us.us, %.thread96.i420.us.us.us
  %.054.lcssa.i422.us.us.us = phi i32 [ 0, %.thread96.i420.us.us.us ], [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ] ; 2 uses
  %i.vd = load i8, ptr %i.pd, align 1, !tbaa !30
  %.not63.i423.us.us.us = icmp eq i8 %i.vd, 0
  br i1 %.not63.i423.us.us.us, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %._crit_edge.i421.us.us.us
  %i.ve = load ptr, ptr %i.pe, align 8, !tbaa !54
  %i.vf = zext nneg i32 %.054.lcssa.i422.us.us.us to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge.i421.us.us.us
  %.2.i424.us.us.us = phi i32 [ %.054.lcssa.i422.us.us.us, %._crit_edge.i421.us.us.us ], [ %i.vh, %bb.ep ] ; 2 uses
  %i.vi = load ptr, ptr %i.pb, align 8, !tbaa !36
  %i.vj = sext i32 %.2.i424.us.us.us to i64
  %i.vk = getelementptr inbounds i8, ptr %i.vi, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !29
  %i.vm = zext i8 %i.vl to i32                    ; 3 uses
  %i.vn = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %.not64.i425.us.us.us = icmp slt i32 %i.vn, %i.vm
  br i1 %.not64.i425.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.vo = lshr i32 %i.us, %i.vm
  store i32 %i.vo, ptr %i.cy, align 4, !tbaa !97
  %i.vp = sub nsw i32 %i.vn, %i.vm
  br label %codebook_decode_scalar_raw.exit434.us.us.us

codebook_decode_scalar_raw.exit434.us.us.us:      ; preds = %bb.er, %bb.en
  %.sink.i407.us.us.us = phi i32 [ %i.uo, %bb.en ], [ %i.vp, %bb.er ]
  %.158.ph.i408.us.us.us = phi i32 [ %i.uk, %bb.en ], [ %.2.i424.us.us.us, %bb.er ] ; 2 uses
  store i32 %.sink.i407.us.us.us, ptr %i.cx, align 8, !tbaa !92
  %i.vq = icmp slt i32 %.158.ph.i408.us.us.us, 0
  br i1 %i.vq, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

bb.es:                                            ; preds = %prep_huffman.exit.i362.us.us.us
  %i.vr = zext nneg i16 %i.se to i32
  %i.vs = load ptr, ptr %i.pb, align 8, !tbaa !36
  %i.vt = zext nneg i16 %i.se to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !29
  %i.vw = zext i8 %i.vv to i32                    ; 2 uses
  %i.vx = lshr i32 %i.sa, %i.vw
  store i32 %i.vx, ptr %i.cy, align 4, !tbaa !97
  %i.vy = load i32, ptr %i.cx, align 8, !tbaa !92
  %i.vz = sub nsw i32 %i.vy, %i.vw                ; 2 uses
  %i.wa = icmp slt i32 %i.vz, 0
  %spec.select.i370.us.us.us = call i32 @llvm.smax.i32(i32 %i.vz, i32 0)
  store i32 %spec.select.i370.us.us.us, ptr %i.cx, align 8, !tbaa !92
  br i1 %i.wa, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

codebook_decode_start.exit373.us.us.us:           ; preds = %bb.es, %codebook_decode_scalar_raw.exit434.us.us.us
  %.025.i363.us.us.us = phi i32 [ %i.vr, %bb.es ], [ %.158.ph.i408.us.us.us, %codebook_decode_scalar_raw.exit434.us.us.us ]
  %i.wb = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wc = add i32 %i.on, %i.wb
  %i.wd = sub i32 %i.ol, %i.wc
  %i.we = load i32, ptr %i.op, align 8, !tbaa !104 ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wd, i32 %i.we) ; 5 uses
  %i.wf = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wf, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit373.us.us.us
  %i.wg = mul i32 %i.we, %.025.i363.us.us.us
  %i.wh = load ptr, ptr %i.ou, align 8, !tbaa !106 ; 2 uses
  %i.wi = load i8, ptr %i.ov, align 2, !tbaa !105
  %.fr.i.i.us.us.us = freeze i8 %i.wi
  %.not.i.i.us.us.us = icmp eq i8 %.fr.i.i.us.us.us, 0
  %i.wj = sext i32 %i.wg to i64                   ; 2 uses
  %wide.trip.count34.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64 ; 9 uses
  %invariant.gep37.i.i.us.us.us = getelementptr [4 x i8], ptr %i.wh, i64 %i.wj ; 8 uses
  br i1 %.not.i.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader, label %.lr.ph.split.i.i.us.us.us.preheader

.lr.ph.split.i.i.us.us.us.preheader:              ; preds = %.lr.ph.i.i.us.us.us
  %xtraiter1056 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %i.wk = icmp eq i32 %spec.select.i.i.us.us.us, 1
  br i1 %i.wk, label %.lr.ph.split.i.i.us.us.us.epil.preheader, label %.lr.ph.split.i.i.us.us.us.preheader.new

.lr.ph.split.i.i.us.us.us.preheader.new:          ; preds = %.lr.ph.split.i.i.us.us.us.preheader
  %unroll_iter1060 = and i64 %wide.trip.count34.i.i.us.us.us, 2147483646
  br label %.lr.ph.split.i.i.us.us.us

.lr.ph.split.us.i.i.us.us.us.preheader:           ; preds = %.lr.ph.i.i.us.us.us
  %min.iters.check = icmp ugt i32 %spec.select.i.i.us.us.us, 7
  %or.cond1010 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1010, label %vector.memcheck, label %.lr.ph.split.us.i.i.us.us.us.preheader1017

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader
  %i.wl = shl nuw nsw i64 %wide.trip.count34.i.i.us.us.us, 2
  %scevgep985.a = getelementptr i8, ptr %scevgep, i64 %i.wl
  %i.wm = add nsw i64 %i.wj, %wide.trip.count34.i.i.us.us.us
  %i.wn = shl nsw i64 %i.wm, 2
  %scevgep986 = getelementptr i8, ptr %i.wh, i64 %i.wn
  %bound0 = icmp ult ptr %scevgep, %scevgep986
  %bound1 = icmp ult ptr %invariant.gep37.i.i.us.us.us, %scevgep985.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.us.us.us.preheader1017, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count34.i.i.us.us.us, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.wo = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %index ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 16
  %wide.load = load <4 x float>, ptr %i.wo, align 4, !tbaa !56, !alias.scope !164
  %wide.load987.a = load <4 x float>, ptr %i.wp, align 4, !tbaa !56, !alias.scope !164
  %i.wq = fadd <4 x float> %wide.load, zeroinitializer
  %i.wr = fadd <4 x float> %wide.load987.a, zeroinitializer
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16 ; 2 uses
  %wide.load988.a = load <4 x float>, ptr %i.ws, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  %wide.load989 = load <4 x float>, ptr %i.wt, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  %i.wu = fadd <4 x float> %wide.load988.a, %i.wq
  %i.wv = fadd <4 x float> %wide.load989, %i.wr
  store <4 x float> %i.wu, ptr %i.ws, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  store <4 x float> %i.wv, ptr %i.wt, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ww = icmp eq i64 %index.next, %n.vec
  br i1 %i.ww, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34.i.i.us.us.us
  br i1 %cmp.n, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader1017

.lr.ph.split.us.i.i.us.us.us.preheader1017:       ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.us.us.us.preheader, %middle.block
  %indvars.iv31.i.i.us.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter1062 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %lcmp.mod1063.not = icmp eq i64 %xtraiter1062, 0
  br i1 %lcmp.mod1063.not, label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, label %.lr.ph.split.us.i.i.us.us.us.prol

.lr.ph.split.us.i.i.us.us.us.prol:                ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader1017
  %gep38.i.i.us.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us.ph
  %i.wx = load float, ptr %gep38.i.i.us.us.us.prol, align 4, !tbaa !56
  %i.wy = fadd float %i.wx, 0.000000e+00
  %i.wz = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us.ph, %i.ow
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.wz ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !56
  %i.xc = fadd float %i.xb, %i.wy
  store float %i.xc, ptr %i.xa, align 4, !tbaa !56
  %indvars.iv.next32.i.i.us.us.us.prol = or disjoint i64 %indvars.iv31.i.i.us.us.us.ph, 1
  br label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit

.lr.ph.split.us.i.i.us.us.us.prol.loopexit:       ; preds = %.lr.ph.split.us.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.preheader1017
  %indvars.iv31.i.i.us.us.us.unr = phi i64 [ %indvars.iv31.i.i.us.us.us.ph, %.lr.ph.split.us.i.i.us.us.us.preheader1017 ], [ %indvars.iv.next32.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.prol ]
  %i.xd = add nsw i64 %wide.trip.count34.i.i.us.us.us, -1
  %i.xe = icmp eq i64 %indvars.iv31.i.i.us.us.us.ph, %i.xd
  br i1 %i.xe, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us

.lr.ph.split.i.i.us.us.us:                        ; preds = %.lr.ph.split.i.i.us.us.us, %.lr.ph.split.i.i.us.us.us.preheader.new
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %indvars.iv.next.i.i.us.us.us.1, %.lr.ph.split.i.i.us.us.us ] ; 4 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %i.xm, %.lr.ph.split.i.i.us.us.us ]
  %niter1061 = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %niter1061.next.1, %.lr.ph.split.i.i.us.us.us ]
  %gep.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.xf = load float, ptr %gep.i.i.us.us.us, align 4, !tbaa !56
  %i.xg = fadd float %.028.i.i.us.us.us, %i.xf    ; 2 uses
  %i.xh = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.ow
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xh ; 2 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !56
  %i.xk = fadd float %i.xj, %i.xg
  store float %i.xk, ptr %i.xi, align 4, !tbaa !56
  %indvars.iv.next.i.i.us.us.us = or disjoint i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %gep.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.xl = load float, ptr %gep.i.i.us.us.us.1, align 4, !tbaa !56
  %i.xm = fadd float %i.xg, %i.xl                 ; 3 uses
  %i.xn = mul nuw nsw i64 %indvars.iv.next.i.i.us.us.us, %i.ow
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xn ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !56
  %i.xq = fadd float %i.xp, %i.xm
  store float %i.xq, ptr %i.xo, align 4, !tbaa !56
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %niter1061.next.1 = add i64 %niter1061, 2       ; 2 uses
  %niter1061.ncmp.1 = icmp eq i64 %niter1061.next.1, %unroll_iter1060
  br i1 %niter1061.ncmp.1, label %.loopexit.i.us.us.us.loopexit1018.unr-lcssa, label %.lr.ph.split.i.i.us.us.us, !llvm.loop !123

.lr.ph.split.us.i.i.us.us.us:                     ; preds = %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us
  %indvars.iv31.i.i.us.us.us = phi i64 [ %indvars.iv.next32.i.i.us.us.us.1, %.lr.ph.split.us.i.i.us.us.us ], [ %indvars.iv31.i.i.us.us.us.unr, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit ] ; 4 uses
  %gep38.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us
  %i.xr = load float, ptr %gep38.i.i.us.us.us, align 4, !tbaa !56
  %i.xs = fadd float %i.xr, 0.000000e+00
  %i.xt = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us, %i.ow
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xt ; 2 uses
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !56
  %i.xw = fadd float %i.xv, %i.xs
  store float %i.xw, ptr %i.xu, align 4, !tbaa !56
  %indvars.iv.next32.i.i.us.us.us = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 1 ; 2 uses
  %gep38.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next32.i.i.us.us.us
  %i.xx = load float, ptr %gep38.i.i.us.us.us.1, align 4, !tbaa !56
  %i.xy = fadd float %i.xx, 0.000000e+00
  %i.xz = mul nuw nsw i64 %indvars.iv.next32.i.i.us.us.us, %i.ow
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xz ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !56
  %i.yc = fadd float %i.yb, %i.xy
  store float %i.yc, ptr %i.ya, align 4, !tbaa !56
  %indvars.iv.next32.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 2 ; 2 uses
  %exitcond35.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next32.i.i.us.us.us.1, %wide.trip.count34.i.i.us.us.us
  br i1 %exitcond35.not.i.i.us.us.us.1, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us, !llvm.loop !170

.loopexit.i.us.us.us.loopexit1018.unr-lcssa:      ; preds = %.lr.ph.split.i.i.us.us.us
  %lcmp.mod1058.not = icmp eq i64 %xtraiter1056, 0
  br i1 %lcmp.mod1058.not, label %.loopexit.i.us.us.us, label %.lr.ph.split.i.i.us.us.us.epil.preheader

.lr.ph.split.i.i.us.us.us.epil.preheader:         ; preds = %.loopexit.i.us.us.us.loopexit1018.unr-lcssa, %.lr.ph.split.i.i.us.us.us.preheader
  %indvars.iv.i.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader ], [ %indvars.iv.next.i.i.us.us.us.1, %.loopexit.i.us.us.us.loopexit1018.unr-lcssa ] ; 2 uses
  %.028.i.i.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader ], [ %i.xm, %.loopexit.i.us.us.us.loopexit1018.unr-lcssa ]
  %lcmp.mod1059 = trunc i32 %spec.select.i.i.us.us.us to i1
  call void @llvm.assume(i1 %lcmp.mod1059)
  %gep.i.i.us.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.epil.init
  %i.yd = load float, ptr %gep.i.i.us.us.us.epil, align 4, !tbaa !56
  %i.ye = fadd float %.028.i.i.us.us.us.epil.init, %i.yd
  %i.yf = mul nuw nsw i64 %indvars.iv.i.i.us.us.us.epil.init, %i.ow
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.yf ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !56
  %i.yi = fadd float %i.yh, %i.ye
  store float %i.yi, ptr %i.yg, align 4, !tbaa !56
  br label %.loopexit.i.us.us.us

.loopexit.i.us.us.us:                             ; preds = %.lr.ph.split.i.i.us.us.us.epil.preheader, %.loopexit.i.us.us.us.loopexit1018.unr-lcssa, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us, %middle.block, %codebook_decode_start.exit373.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.ow
  br i1 %exitcond.not.i356.us.us.us, label %.thread629.us.us.us, label %bb.ca, !llvm.loop !134

.thread629.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.bz, %bb.by, %bb.bx
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge700.split.us.us.us, label %bb.bx, !llvm.loop !171

._crit_edge700.split.us.us.us:                    ; preds = %.thread629.us.us.us
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %i.yj = add nsw i32 %.1280704.us.us, 1          ; 3 uses
  %i.yk = icmp slt i64 %indvars.iv.next801, %i.dq
  %i.yl = icmp slt i32 %i.yj, %i.ac
  %i.ym = select i1 %i.yk, i1 %i.yl, i1 false
  br i1 %i.ym, label %.preheader654.us.us, label %._crit_edge706, !llvm.loop !172

.preheader654.us:                                 ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us710
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %._crit_edge700.split.us710 ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us = phi i32 [ %i.akj, %._crit_edge700.split.us710 ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.et

bb.et:                                            ; preds = %.preheader654.us, %.thread629.us709
  %indvars.iv787 = phi i64 [ 0, %.preheader654.us ], [ %indvars.iv.next788, %.thread629.us709 ] ; 4 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv787
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !29
  %.not323.us708 = icmp eq i8 %i.yo, 0
  br i1 %.not323.us708, label %bb.eu, label %.thread629.us709

bb.eu:                                            ; preds = %bb.et
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv787
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !156
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %indvars.iv803
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !155
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %indvars.iv792
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !29
  %i.yv = load ptr, ptr %i.do, align 8, !tbaa !157
  %i.yw = zext i8 %i.yu to i64
  %i.yx = getelementptr inbounds nuw [16 x i8], ptr %i.yv, i64 %i.yw
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.yx, i64 %indvars.iv806
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !44 ; 2 uses
  %i.za = icmp sgt i16 %i.yz, -1
  br i1 %i.za, label %.preheader.i.us, label %.thread629.us709

.preheader.i.us:                                  ; preds = %bb.eu
  %i.zb = zext nneg i16 %i.yz to i64
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv787
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !62 ; 2 uses
  %i.ze = load i32, ptr %i.aa, align 8, !tbaa !149 ; 4 uses
  %i.zf = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.zg = getelementptr inbounds nuw [2120 x i8], ptr %i.zf, i64 %i.zb ; 13 uses
  %i.zh = icmp sgt i32 %i.ze, 0
  br i1 %i.zh, label %.lr.ph.i353.us, label %.thread629.us709

.lr.ph.i353.us:                                   ; preds = %.preheader.i.us
  %i.zi = mul i32 %i.ze, %.1280704.us
  %i.zj = load i32, ptr %i.h, align 8, !tbaa !147
  %i.zk = add i32 %i.zi, %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 26
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 32 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zg, i64 16 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zg, i64 25
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 40
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.zg, i64 2096 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zg, i64 8 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zg, i64 2112
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zg, i64 27
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zg, i64 2104
  br label %bb.ev

bb.ev:                                            ; preds = %.loopexit49.i.us, %.lr.ph.i353.us
  %.154.i.us = phi i32 [ 0, %.lr.ph.i353.us ], [ %i.akg, %.loopexit49.i.us ] ; 2 uses
  %.03153.i.us = phi i32 [ %i.zk, %.lr.ph.i353.us ], [ %i.akh, %.loopexit49.i.us ] ; 2 uses
end_hunk_2
