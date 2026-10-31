Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@codebook_decode_deinterleave_repeat:bb.a
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !88  ; 2 uses
  %i.af = and i32 %i.ae, 1023
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !59 ; 3 uses
  %i.aj = icmp sgt i16 %i.ai, -1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %prep_huffman.exit
  %i.ak = zext nneg i16 %i.ai to i32
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.am = zext nneg i16 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !50
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = lshr i32 %i.ae, %i.ap
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !88
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !84
  %i.as = sub nsw i32 %i.ar, %i.ap                ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  store i32 %spec.select, ptr %i.h, align 8, !tbaa !84
  br i1 %i.at, label %.thread118, label %.thread

bb.k:                                             ; preds = %prep_huffman.exit
  %i.au = tail call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %.thread, label %.thread118

.thread118:                                       ; preds = %bb.j, %bb.k
  %i.aw = load i8, ptr %i.j, align 4, !tbaa !86
  %.not109 = icmp eq i8 %i.aw, 0
  br i1 %.not109, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread118
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !83
  %.not110 = icmp eq i32 %i.ax, 0
  br i1 %.not110, label %bb.m, label %.thread120

bb.m:                                             ; preds = %bb.l, %.thread118
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.ay, align 4, !tbaa !39
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
  %i.be = load i32, ptr %1, align 8, !tbaa !91
  %i.bf = mul nsw i32 %i.be, %.183117             ; 2 uses
  %i.bg = load i8, ptr %i.o, align 2, !tbaa !92
  %.not = icmp eq i8 %i.bg, 0
  %i.bh = icmp sgt i32 %.1, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader126

.preheader126:                                    ; preds = %.thread
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader126
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !93
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
  %i.bl = load float, ptr %gep, align 4, !tbaa !64
  %i.bm = fadd float %.0134, %i.bl                ; 2 uses
  %i.bn = sext i32 %.190131 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  %.not108 = icmp eq ptr %i.bp, null
  br i1 %.not108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = sext i32 %.187132 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !64
  %i.bt = fadd float %i.bm, %i.bs
  store float %i.bt, ptr %i.br, align 4, !tbaa !64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = add nsw i32 %.190131, 1                 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, %3                   ; 2 uses
  %spec.select112 = select i1 %i.bv, i32 0, i32 %i.bu ; 2 uses
  %i.bw = zext i1 %i.bv to i32
  %spec.select113 = add nsw i32 %.187132, %i.bw   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !194

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.r
  %indvars.iv151 = phi i64 [ 0, %.lr.ph139.preheader ], [ %indvars.iv.next152, %bb.r ] ; 2 uses
  %.3137 = phi i32 [ %.086144, %.lr.ph139.preheader ], [ %spec.select115, %bb.r ] ; 2 uses
  %.392136 = phi i32 [ %.089143, %.lr.ph139.preheader ], [ %spec.select114, %bb.r ] ; 2 uses
  %i.bx = sext i32 %.392136 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65 ; 2 uses
  %.not107 = icmp eq ptr %i.bz, null
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph139
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv151
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %i.bk
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !64
  %i.ce = fadd float %i.cd, 0.000000e+00
  %i.cf = sext i32 %.3137 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !64
  %i.ci = fadd float %i.ch, %i.ce
  store float %i.ci, ptr %i.cg, align 4, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph139
  %i.cj = add nsw i32 %.392136, 1                 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %3                   ; 2 uses
  %spec.select114 = select i1 %i.ck, i32 0, i32 %i.cj ; 2 uses
  %i.cl = zext i1 %i.ck to i32
  %spec.select115 = add nsw i32 %.3137, %i.cl     ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph139, !llvm.loop !195

.loopexit:                                        ; preds = %bb.p, %bb.r, %.preheader126, %.preheader
  %.594 = phi i32 [ %spec.select114, %bb.r ], [ %.089143, %.preheader ], [ %.089143, %.preheader126 ], [ %spec.select112, %bb.p ] ; 2 uses
  %.5 = phi i32 [ %spec.select115, %bb.r ], [ %.086144, %.preheader ], [ %.086144, %.preheader126 ], [ %spec.select113, %bb.p ] ; 2 uses
  %i.cm = sub nsw i32 %.096142, %.1               ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.c, label %._crit_edge, !llvm.loop !196

._crit_edge:                                      ; preds = %.loopexit, %.preheader128
  %.089.lcssa = phi i32 [ %i.a, %.preheader128 ], [ %.594, %.loopexit ]
  %.086.lcssa = phi i32 [ %i.b, %.preheader128 ], [ %.5, %.loopexit ]
  store i32 %.089.lcssa, ptr %4, align 4, !tbaa !47
  store i32 %.086.lcssa, ptr %5, align 4, !tbaa !47
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
  %i.f = load i32, ptr %1, align 8, !tbaa !91
  %i.g = sdiv i32 %4, %i.f                        ; 3 uses
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %2, i64 %i.h
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
  %i.m = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv ; 8 uses
  %i.n = tail call i32 @codebook_decode_start(ptr noundef %0, ptr noundef nonnull readonly %1) ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %codebook_decode_step.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = add i32 %3, %i.p
  %i.r = sub i32 %4, %i.q
  %i.s = load i32, ptr %1, align 8, !tbaa !91     ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s) ; 5 uses
  %i.t = icmp sgt i32 %spec.select.i, 0
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = mul i32 %i.s, %i.n
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %i.w = load i8, ptr %i.k, align 2, !tbaa !92
  %.fr.i = freeze i8 %i.w
  %.not.i = icmp eq i8 %.fr.i, 0
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %wide.trip.count34.i = zext nneg i32 %spec.select.i to i64 ; 9 uses
  %invariant.gep37.i = getelementptr [4 x i8], ptr %i.v, i64 %i.x ; 8 uses
  br i1 %.not.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter112 = and i64 %wide.trip.count34.i, 1
  %i.y = icmp eq i32 %spec.select.i, 1
  br i1 %i.y, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter115 = and i64 %wide.trip.count34.i, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check91 = icmp ugt i32 %spec.select.i, 7
  %or.cond = and i1 %min.iters.check91, %ident.check.not
  br i1 %or.cond, label %vector.memcheck84, label %.lr.ph.split.us.i.preheader104

vector.memcheck84:                                ; preds = %.lr.ph.split.us.i.preheader
  %6 = add i64 %indvars.iv, %i.h
  %7 = add i64 %6, %wide.trip.count34.i
  %i.z = shl i64 %7, 2
  %scevgep85 = getelementptr i8, ptr %2, i64 %i.z
  %i.aa = add nsw i64 %i.x, %wide.trip.count34.i
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep86 = getelementptr i8, ptr %i.v, i64 %i.ab
  %bound087 = icmp ult ptr %i.m, %scevgep86
  %bound188 = icmp ult ptr %invariant.gep37.i, %scevgep85
  %found.conflict89 = and i1 %bound087, %bound188
  br i1 %found.conflict89, label %.lr.ph.split.us.i.preheader104, label %vector.ph92

vector.ph92:                                      ; preds = %vector.memcheck84
  %n.vec93 = and i64 %wide.trip.count34.i, 2147483640 ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next100, %vector.body94 ] ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %index95 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %wide.load96 = load <4 x float>, ptr %i.ac, align 4, !tbaa !64, !alias.scope !207
  %wide.load97 = load <4 x float>, ptr %i.ad, align 4, !tbaa !64, !alias.scope !207
  %i.ae = fadd <4 x float> %wide.load96, zeroinitializer
  %i.af = fadd <4 x float> %wide.load97, zeroinitializer
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index95 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load98 = load <4 x float>, ptr %i.ag, align 4, !tbaa !64, !alias.scope !208, !noalias !207
  %wide.load99 = load <4 x float>, ptr %i.ah, align 4, !tbaa !64, !alias.scope !208, !noalias !207
  %i.ai = fadd <4 x float> %wide.load98, %i.ae
  %i.aj = fadd <4 x float> %wide.load99, %i.af
  store <4 x float> %i.ai, ptr %i.ag, align 4, !tbaa !64, !alias.scope !208, !noalias !207
  store <4 x float> %i.aj, ptr %i.ah, align 4, !tbaa !64, !alias.scope !208, !noalias !207
  %index.next100 = add nuw i64 %index95, 8        ; 2 uses
  %i.ak = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.ak, label %middle.block101, label %vector.body94, !llvm.loop !200

middle.block101:                                  ; preds = %vector.body94
  %cmp.n102 = icmp eq i64 %n.vec93, %wide.trip.count34.i
  br i1 %cmp.n102, label %.loopexit, label %.lr.ph.split.us.i.preheader104

.lr.ph.split.us.i.preheader104:                   ; preds = %vector.memcheck84, %.lr.ph.split.us.i.preheader, %middle.block101
  %indvars.iv31.i.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec93, %middle.block101 ] ; 5 uses
  %xtraiter117 = and i64 %wide.trip.count34.i, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader104
  %gep38.i.prol = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv31.i.ph
  %i.al = load float, ptr %gep38.i.prol, align 4, !tbaa !64
  %i.am = fadd float %i.al, 0.000000e+00
  %i.an = mul nuw nsw i64 %indvars.iv31.i.ph, %i.l
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !64
  %i.aq = fadd float %i.ap, %i.am
  store float %i.aq, ptr %i.ao, align 4, !tbaa !64
  %indvars.iv.next32.i.prol = or disjoint i64 %indvars.iv31.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader104
  %indvars.iv31.i.unr = phi i64 [ %indvars.iv31.i.ph, %.lr.ph.split.us.i.preheader104 ], [ %indvars.iv.next32.i.prol, %.lr.ph.split.us.i.prol ]
  %i.ar = add nsw i64 %wide.trip.count34.i, -1
  %i.as = icmp eq i64 %indvars.iv31.i.ph, %i.ar
  br i1 %i.as, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.1, %.lr.ph.split.us.i ], [ %indvars.iv31.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %gep38.i = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv31.i
  %i.at = load float, ptr %gep38.i, align 4, !tbaa !64
  %i.au = fadd float %i.at, 0.000000e+00
  %i.av = mul nuw nsw i64 %indvars.iv31.i, %i.l
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !64
  %i.ay = fadd float %i.ax, %i.au
  store float %i.ay, ptr %i.aw, align 4, !tbaa !64
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %gep38.i.1 = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.next32.i
  %i.az = load float, ptr %gep38.i.1, align 4, !tbaa !64
  %i.ba = fadd float %i.az, 0.000000e+00
  %i.bb = mul nuw nsw i64 %indvars.iv.next32.i, %i.l
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bb ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !64
  %i.be = fadd float %i.bd, %i.ba
  store float %i.be, ptr %i.bc, align 4, !tbaa !64
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %exitcond35.not.i.1 = icmp eq i64 %indvars.iv.next32.i.1, %wide.trip.count34.i
  br i1 %exitcond35.not.i.1, label %.loopexit, label %.lr.ph.split.us.i, !llvm.loop !201

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.split.i ] ; 4 uses
  %.028.i = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader.new ], [ %i.bm, %.lr.ph.split.i ]
  %niter116 = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter116.next.1, %.lr.ph.split.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.i
  %i.bf = load float, ptr %gep.i, align 4, !tbaa !64
  %i.bg = fadd float %.028.i, %i.bf               ; 2 uses
  %i.bh = mul nuw nsw i64 %indvars.iv.i, %i.l
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !64
  %i.bk = fadd float %i.bj, %i.bg
  store float %i.bk, ptr %i.bi, align 4, !tbaa !64
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.next.i
  %i.bl = load float, ptr %gep.i.1, align 4, !tbaa !64
  %i.bm = fadd float %i.bg, %i.bl                 ; 3 uses
  %i.bn = mul nuw nsw i64 %indvars.iv.next.i, %i.l
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !64
  %i.bq = fadd float %i.bp, %i.bm
  store float %i.bq, ptr %i.bo, align 4, !tbaa !64
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter116.next.1 = add i64 %niter116, 2         ; 2 uses
  %niter116.ncmp.1 = icmp eq i64 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %.loopexit.loopexit105.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !12

.loopexit.loopexit105.unr-lcssa:                  ; preds = %.lr.ph.split.i
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.loopexit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.loopexit.loopexit105.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit.loopexit105.unr-lcssa ] ; 2 uses
  %.028.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %i.bm, %.loopexit.loopexit105.unr-lcssa ]
  %lcmp.mod114 = trunc i32 %spec.select.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep37.i, i64 %indvars.iv.i.epil.init
  %i.br = load float, ptr %gep.i.epil, align 4, !tbaa !64
  %i.bs = fadd float %.028.i.epil.init, %i.br
  %i.bt = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.l
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !64
  %i.bw = fadd float %i.bv, %i.bs
  store float %i.bw, ptr %i.bu, align 4, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.i.epil.preheader, %.loopexit.loopexit105.unr-lcssa, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block101, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %codebook_decode_step.exit, label %bb.c, !llvm.loop !13

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
  %i.cc = load i32, ptr %1, align 8, !tbaa !91    ; 4 uses
  %spec.select.i36 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc) ; 6 uses
  %i.cd = mul nsw i32 %i.cc, %i.bz                ; 2 uses
  %i.ce = load i8, ptr %i.c, align 2, !tbaa !92
  %.not.i37 = icmp eq i8 %i.ce, 0
  %i.cf = icmp sgt i32 %spec.select.i36, 0        ; 2 uses
  br i1 %.not.i37, label %.preheader.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.f
  br i1 %i.cf, label %.lr.ph.i38, label %.loopexit49

.lr.ph.i38:                                       ; preds = %.preheader36.i
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !93
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
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !93  ; 2 uses
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
  %wide.load = load <4 x float>, ptr %i.cp, align 4, !tbaa !64, !alias.scope !209
end_hunk_0
begin_hunk_1_@decode_residue:bb.a

bb.bh:                                            ; preds = %bb.bg
  store i32 32, ptr %i.dl, align 4, !tbaa !39
  br label %prep_huffman.exit352

bb.bi:                                            ; preds = %._crit_edge.i.i, %bb.be
  %i.lr = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.lj, %bb.be ] ; 3 uses
  %i.ls = add nsw i32 %i.lr, 1                    ; 2 uses
  store i32 %i.ls, ptr %i.db, align 8, !tbaa !82
  %i.lt = sext i32 %i.lr to i64
  %i.lu = getelementptr inbounds i8, ptr %i.df, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !50  ; 4 uses
  %.not22.i.i = icmp eq i8 %i.lv, -1
  br i1 %.not22.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr %i.da, align 4, !tbaa !83
  store i32 %i.lr, ptr %i.dd, align 8, !tbaa !87
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lw = load i32, ptr %i.dc, align 8, !tbaa !79
  %.not23.i.i = icmp slt i32 %i.ls, %i.lw
  br i1 %.not23.i.i, label %next_segment.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 -1, ptr %i.db, align 8, !tbaa !82
  br label %next_segment.exit.i

next_segment.exit.i:                              ; preds = %bb.bl, %bb.bk
  store i8 %i.lv, ptr %i.cz, align 4, !tbaa !86
  %.not7.i = icmp eq i8 %i.lv, 0
  br i1 %.not7.i, label %prep_huffman.exit352, label %.thread569

.thread569:                                       ; preds = %bb.bc, %next_segment.exit.i, %bb.bd
  %i.lx = phi i8 [ %i.lv, %next_segment.exit.i ], [ %.pr, %bb.bd ], [ %.pr, %bb.bc ]
  %i.ly = add i8 %i.lx, -1
  store i8 %i.ly, ptr %i.cz, align 4, !tbaa !86
  %i.lz = load i32, ptr %i.dg, align 4, !tbaa !85
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.dg, align 4, !tbaa !85
  %i.mb = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.mb, null
  br i1 %.not.i8.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %.thread569
  %i.mc = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i = icmp ult ptr %i.mb, %i.mc
  br i1 %.not11.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread573

bb.bo:                                            ; preds = %bb.bm
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store ptr %i.md, ptr %i.dh, align 8, !tbaa !70
  %i.me = load i8, ptr %i.mb, align 1, !tbaa !50
  br label %get8_packet_raw.exit

bb.bp:                                            ; preds = %.thread569
  %i.mf = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.mg = call i32 @fgetc(ptr noundef %i.mf)      ; 2 uses
  %i.mh = icmp eq i32 %i.mg, -1
  br i1 %i.mh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit.thread573

bb.br:                                            ; preds = %bb.bp
  %i.mi = trunc i32 %i.mg to i8
  br label %get8_packet_raw.exit

get8_packet_raw.exit:                             ; preds = %bb.bo, %bb.br
  %.1.i.i = phi i8 [ %i.mi, %bb.br ], [ %i.me, %bb.bo ]
  %i.mj = zext i8 %.1.i.i to i32
  br label %get8_packet_raw.exit.thread573

get8_packet_raw.exit.thread573:                   ; preds = %get8_packet_raw.exit, %bb.bq, %bb.bn
  %i.mk = phi i32 [ %i.mj, %get8_packet_raw.exit ], [ 0, %bb.bn ], [ 0, %bb.bq ]
  %i.ml = load i32, ptr %i.cx, align 8, !tbaa !84 ; 3 uses
  %i.mm = shl i32 %i.mk, %i.ml
  %i.mn = load i32, ptr %i.cy, align 4, !tbaa !88
  %i.mo = add i32 %i.mn, %i.mm
  store i32 %i.mo, ptr %i.cy, align 4, !tbaa !88
  %i.mp = add nsw i32 %i.ml, 8
  store i32 %i.mp, ptr %i.cx, align 8, !tbaa !84
  %i.mq = icmp slt i32 %i.ml, 17
  br i1 %i.mq, label %bb.bb, label %prep_huffman.exit352, !llvm.loop !8

prep_huffman.exit352:                             ; preds = %next_segment.exit.i, %get8_packet_raw.exit.thread573, %bb.bc, %.loopexit655, %bb.bh, %bb.ay
  %i.mr = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %i.ms = and i32 %i.mr, 1023
  %i.mt = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.mu = zext nneg i32 %i.ms to i64
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !59 ; 3 uses
  %i.mx = icmp sgt i16 %i.mw, -1
  br i1 %i.mx, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %prep_huffman.exit352
  %i.my = zext nneg i16 %i.mw to i32
  %i.mz = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !57
  %i.nb = zext nneg i16 %i.mw to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !50
  %i.ne = zext i8 %i.nd to i32                    ; 2 uses
  %i.nf = lshr i32 %i.mr, %i.ne
  store i32 %i.nf, ptr %i.cy, align 4, !tbaa !88
  %i.ng = load i32, ptr %i.cx, align 8, !tbaa !84
  %i.nh = sub nsw i32 %i.ng, %i.ne                ; 2 uses
  %spec.select343 = call i32 @llvm.smax.i32(i32 %i.nh, i32 0)
  %.inv = icmp sgt i32 %i.nh, -1
  %spec.select344 = select i1 %.inv, i32 %i.my, i32 -1
  store i32 %spec.select343, ptr %i.cx, align 8, !tbaa !84
  br label %bb.bu

bb.bt:                                            ; preds = %prep_huffman.exit352
  %i.ni = call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.le)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1 = phi i32 [ %spec.select344, %bb.bs ], [ %i.ni, %bb.bt ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.le, i64 27
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !55
  %.not326 = icmp eq i8 %i.nk, 0
  br i1 %.not326, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nl = getelementptr inbounds nuw i8, ptr %i.le, i64 2104
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !63
  %i.nn = sext i32 %.1 to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !47
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2 = phi i32 [ %i.np, %bb.bv ], [ %.1, %bb.bu ] ; 2 uses
  %.not327 = icmp eq i32 %.2, -1
  br i1 %.not327, label %.thread633, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nq = load ptr, ptr %i.dm, align 8, !tbaa !103
  %i.nr = sext i32 %.2 to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !104
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv782
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !105
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv803
  store ptr %i.nt, ptr %i.nw, align 8, !tbaa !104
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph695
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next783, %wide.trip.count785
  br i1 %exitcond786.not, label %.loopexit657, label %.lr.ph695, !llvm.loop !219

.loopexit657:                                     ; preds = %bb.by, %bb.ax
  %i.nx = icmp slt i32 %.0279721, %i.ac
  %i.ny = select i1 %i.dn, i1 %i.nx, i1 false
  br i1 %i.ny, label %.preheader654.lr.ph, label %._crit_edge706

.preheader654.lr.ph:                              ; preds = %.loopexit657
  br i1 %i.ce, label %.preheader654.lr.ph.split.us, label %.preheader654

.preheader654.lr.ph.split.us:                     ; preds = %.preheader654.lr.ph
  br i1 %i.dp, label %.preheader654.us.us, label %.preheader654.us

.preheader654.us.us:                              ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us.us.us
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %._crit_edge700.split.us.us.us ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us.us = phi i32 [ %i.yp, %._crit_edge700.split.us.us.us ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.thread629.us.us.us, %.preheader654.us.us
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %.thread629.us.us.us ], [ 0, %.preheader654.us.us ] ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv795
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !50
  %.not323.us.us.us = icmp eq i8 %i.oa, 0
  br i1 %.not323.us.us.us, label %bb.ca, label %.thread629.us.us.us

bb.ca:                                            ; preds = %bb.bz
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv795
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !105
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv803
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !104
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %indvars.iv800
  %i.og = load i8, ptr %i.of, align 1, !tbaa !50
  %i.oh = load ptr, ptr %i.do, align 8, !tbaa !106
  %i.oi = zext i8 %i.og to i64
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.oi
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %indvars.iv806
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !59 ; 2 uses
  %i.om = icmp sgt i16 %i.ol, -1
  br i1 %i.om, label %bb.cb, label %.thread629.us.us.us

bb.cb:                                            ; preds = %bb.ca
  %i.on = zext nneg i16 %i.ol to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv795
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !65 ; 2 uses
  %i.oq = load i32, ptr %i.h, align 8, !tbaa !99
  %i.or = load i32, ptr %i.aa, align 8, !tbaa !101 ; 3 uses
  %i.os = mul i32 %i.or, %.1280704.us.us
  %i.ot = add i32 %i.os, %i.oq                    ; 2 uses
  %i.ou = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.ov = getelementptr inbounds nuw [2120 x i8], ptr %i.ou, i64 %i.on ; 13 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !91
  %i.ox = sdiv i32 %i.or, %i.ow                   ; 3 uses
  %i.oy = sext i32 %i.ot to i64                   ; 2 uses
  %i.oz = getelementptr [4 x i8], ptr %i.op, i64 %i.oy
  %.not3557.i.us.us.us = icmp sgt i32 %i.ox, 0
  br i1 %.not3557.i.us.us.us, label %.lr.ph59.i.us.us.us, label %.thread629.us.us.us

.lr.ph59.i.us.us.us:                              ; preds = %bb.cb
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 26
  %i.pc = zext nneg i32 %i.ox to i64              ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 25
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %.phi.trans.insert.i417.us.us.us = getelementptr inbounds nuw i8, ptr %i.ov, i64 2096 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ov, i64 2112
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 27
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ov, i64 2104
  %ident.check.not = icmp eq i32 %i.ox, 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i.us.us.us, %.lr.ph59.i.us.us.us
  %indvars.iv.i354.us.us.us = phi i64 [ 0, %.lr.ph59.i.us.us.us ], [ %indvars.iv.next.i355.us.us.us, %.loopexit.i.us.us.us ] ; 4 uses
  %i.pl = getelementptr [4 x i8], ptr %i.oz, i64 %indvars.iv.i354.us.us.us ; 8 uses
  %i.pm = load i8, ptr %i.pd, align 1, !tbaa !90
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %.thread31.sink.split.i367, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.po = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %i.pp = icmp slt i32 %i.po, 10
  br i1 %i.pp, label %bb.ce, label %prep_huffman.exit.i362.us.us.us

bb.ce:                                            ; preds = %bb.cd
  %i.pq = icmp eq i32 %i.po, 0
  br i1 %i.pq, label %bb.cf, label %.preheader1031

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.cy, align 4, !tbaa !88
  br label %.preheader1031

.preheader1031:                                   ; preds = %bb.cf, %bb.ce
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader1031, %get8_packet_raw.exit453.thread585.us.us.us
  %i.pr = load i32, ptr %i.da, align 4, !tbaa !83
  %.not.i.i371.us.us.us = icmp eq i32 %i.pr, 0
  %.pr578.us.us.us = load i8, ptr %i.cz, align 4, !tbaa !86 ; 3 uses
  %.not.i435.us.us.us = icmp eq i8 %.pr578.us.us.us, 0 ; 2 uses
  br i1 %.not.i.i371.us.us.us, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not.i435.us.us.us, label %prep_huffman.exit.i362.us.us.us, label %.thread579.us.us.us

bb.ci:                                            ; preds = %bb.cg
  br i1 %.not.i435.us.us.us, label %bb.cj, label %.thread579.us.us.us

bb.cj:                                            ; preds = %bb.ci
  %i.ps = load i32, ptr %i.db, align 8, !tbaa !82 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, -1
  br i1 %i.pt, label %bb.ck, label %bb.df

bb.ck:                                            ; preds = %bb.cj
  %i.pu = load i32, ptr %i.dc, align 8, !tbaa !79
  %i.pv = add nsw i32 %i.pu, -1
  store i32 %i.pv, ptr %i.dd, align 8, !tbaa !87
  %i.pw = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i.i500.us.us.us = icmp eq ptr %i.pw, null
  br i1 %.not.i.i500.us.us.us, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.px = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i501.us.us.us = icmp ult ptr %i.pw, %i.px
  br i1 %.not11.i.i501.us.us.us, label %bb.cm, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cm:                                            ; preds = %bb.cl
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.py, ptr %i.dh, align 8, !tbaa !70
  %i.pz = load i8, ptr %i.pw, align 1, !tbaa !50
  br label %get8.exit.i503.us.us.us

bb.cn:                                            ; preds = %bb.ck
  %i.qa = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qb = call i32 @fgetc(ptr noundef %i.qa)      ; 2 uses
  %i.qc = icmp eq i32 %i.qb, -1
  br i1 %i.qc, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qd = trunc i32 %i.qb to i8
  br label %get8.exit.i503.us.us.us

get8.exit.i503.us.us.us:                          ; preds = %bb.co, %bb.cm
  %.1.i.i504.us.us.us = phi i8 [ %i.qd, %bb.co ], [ %i.pz, %bb.cm ]
  %.not.i505.us.us.us = icmp eq i8 %.1.i.i504.us.us.us, 79
  br i1 %.not.i505.us.us.us, label %bb.cp, label %start_page.exit.thread.i.i452.us.us.us

bb.cp:                                            ; preds = %get8.exit.i503.us.us.us
  %i.qe = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i7.i506.us.us.us = icmp eq ptr %i.qe, null
  br i1 %.not.i7.i506.us.us.us, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qf = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i8.i507.us.us.us = icmp ult ptr %i.qe, %i.qf
  br i1 %.not11.i8.i507.us.us.us, label %bb.cr, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cr:                                            ; preds = %bb.cq
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  store ptr %i.qg, ptr %i.dh, align 8, !tbaa !70
  %i.qh = load i8, ptr %i.qe, align 1, !tbaa !50
  br label %get8.exit10.i508.us.us.us

bb.cs:                                            ; preds = %bb.cp
  %i.qi = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qj = call i32 @fgetc(ptr noundef %i.qi)      ; 2 uses
  %i.qk = icmp eq i32 %i.qj, -1
  br i1 %i.qk, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ql = trunc i32 %i.qj to i8
  br label %get8.exit10.i508.us.us.us

get8.exit10.i508.us.us.us:                        ; preds = %bb.ct, %bb.cr
  %.1.i9.i509.us.us.us = phi i8 [ %i.ql, %bb.ct ], [ %i.qh, %bb.cr ]
  %.not4.i510.us.us.us = icmp eq i8 %.1.i9.i509.us.us.us, 103
  br i1 %.not4.i510.us.us.us, label %bb.cu, label %start_page.exit.thread.i.i452.us.us.us

bb.cu:                                            ; preds = %get8.exit10.i508.us.us.us
  %i.qm = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i11.i511.us.us.us = icmp eq ptr %i.qm, null
  br i1 %.not.i11.i511.us.us.us, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qn = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i12.i512.us.us.us = icmp ult ptr %i.qm, %i.qn
  br i1 %.not11.i12.i512.us.us.us, label %bb.cw, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.cw:                                            ; preds = %bb.cv
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 1
  store ptr %i.qo, ptr %i.dh, align 8, !tbaa !70
  %i.qp = load i8, ptr %i.qm, align 1, !tbaa !50
  br label %get8.exit14.i513.us.us.us

bb.cx:                                            ; preds = %bb.cu
  %i.qq = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.qr = call i32 @fgetc(ptr noundef %i.qq)      ; 2 uses
  %i.qs = icmp eq i32 %i.qr, -1
  br i1 %i.qs, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qt = trunc i32 %i.qr to i8
  br label %get8.exit14.i513.us.us.us

get8.exit14.i513.us.us.us:                        ; preds = %bb.cy, %bb.cw
  %.1.i13.i514.us.us.us = phi i8 [ %i.qt, %bb.cy ], [ %i.qp, %bb.cw ]
  %.not5.i515.us.us.us = icmp eq i8 %.1.i13.i514.us.us.us, 103
  br i1 %.not5.i515.us.us.us, label %bb.cz, label %start_page.exit.thread.i.i452.us.us.us

bb.cz:                                            ; preds = %get8.exit14.i513.us.us.us
  %i.qu = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i15.i516.us.us.us = icmp eq ptr %i.qu, null
  br i1 %.not.i15.i516.us.us.us, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qv = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i16.i517.us.us.us = icmp ult ptr %i.qu, %i.qv
  br i1 %.not11.i16.i517.us.us.us, label %bb.db, label %start_page.exit.thread.i.i452.us.us.us.sink.split

bb.db:                                            ; preds = %bb.da
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  store ptr %i.qw, ptr %i.dh, align 8, !tbaa !70
  %i.qx = load i8, ptr %i.qu, align 1, !tbaa !50
  %i.qy = freeze i8 %i.qx
  br label %capture_pattern.exit522.us.us.us

bb.dc:                                            ; preds = %bb.cz
  %i.qz = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.ra = call i32 @fgetc(ptr noundef %i.qz)      ; 2 uses
  %i.rb = icmp eq i32 %i.ra, -1
  br i1 %i.rb, label %start_page.exit.thread.i.i452.us.us.us.sink.split, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rc = trunc i32 %i.ra to i8
  br label %capture_pattern.exit522.us.us.us

capture_pattern.exit522.us.us.us:                 ; preds = %bb.dd, %bb.db
  %.1.i17.i519.us.us.us = phi i8 [ %i.rc, %bb.dd ], [ %i.qy, %bb.db ]
  %.not6.i520.not.us.us.us = icmp eq i8 %.1.i17.i519.us.us.us, 83
  br i1 %.not6.i520.not.us.us.us, label %start_page.exit.i.i447.us.us.us, label %start_page.exit.thread.i.i452.us.us.us

start_page.exit.i.i447.us.us.us:                  ; preds = %capture_pattern.exit522.us.us.us
  %i.rd = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i448.us.us.us = icmp eq i32 %i.rd, 0
  br i1 %.not20.i.i448.us.us.us, label %.loopexit647.us.us.us, label %bb.de

bb.de:                                            ; preds = %start_page.exit.i.i447.us.us.us
  %i.re = load i8, ptr %i.de, align 1, !tbaa !78
  %i.rf = and i8 %i.re, 1
  %.not21.i.i449.us.us.us = icmp eq i8 %i.rf, 0
  br i1 %.not21.i.i449.us.us.us, label %bb.dp, label %._crit_edge.i.i450.us.us.us

._crit_edge.i.i450.us.us.us:                      ; preds = %bb.de
  %.pre.i.i451.us.us.us = load i32, ptr %i.db, align 8, !tbaa !82
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i.i450.us.us.us, %bb.cj
  %i.rg = phi i32 [ %.pre.i.i451.us.us.us, %._crit_edge.i.i450.us.us.us ], [ %i.ps, %bb.cj ] ; 3 uses
  %i.rh = add nsw i32 %i.rg, 1                    ; 2 uses
  store i32 %i.rh, ptr %i.db, align 8, !tbaa !82
  %i.ri = sext i32 %i.rg to i64
  %i.rj = getelementptr inbounds i8, ptr %i.df, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !50  ; 4 uses
  %.not22.i.i442.us.us.us = icmp eq i8 %i.rk, -1
  br i1 %.not22.i.i442.us.us.us, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store i32 1, ptr %i.da, align 4, !tbaa !83
  store i32 %i.rg, ptr %i.dd, align 8, !tbaa !87
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.rl = load i32, ptr %i.dc, align 8, !tbaa !79
  %.not23.i.i443.us.us.us = icmp slt i32 %i.rh, %i.rl
  br i1 %.not23.i.i443.us.us.us, label %next_segment.exit.i444.us.us.us, label %bb.di
end_hunk_1
begin_hunk_2_@decode_residue:bb.a
  %i.tt = shl i32 %i.tr, %i.ts
  %i.tu = load i32, ptr %i.cy, align 4, !tbaa !88
  %i.tv = add i32 %i.tu, %i.tt
  store i32 %i.tv, ptr %i.cy, align 4, !tbaa !88
  %i.tw = add nsw i32 %i.ts, 8
  store i32 %i.tw, ptr %i.cx, align 8, !tbaa !84
  %i.tx = icmp slt i32 %i.ts, 17
  br i1 %i.tx, label %bb.dt, label %prep_huffman.exit.i402.us.us.us, !llvm.loop !8

bb.ej:                                            ; preds = %bb.dy
  store i32 32, ptr %i.dl, align 4, !tbaa !39
  br label %prep_huffman.exit.i402.us.us.us

start_page.exit.thread.i.i498.us.us.us:           ; preds = %bb.dx
  store i32 30, ptr %i.dl, align 4, !tbaa !39
  br label %.loopexit646.us.us.us

.loopexit646.us.us.us:                            ; preds = %start_page.exit.i.i493.us.us.us, %start_page.exit.thread.i.i498.us.us.us
  store i32 1, ptr %i.da, align 4, !tbaa !83
  br label %prep_huffman.exit.i402.us.us.us

prep_huffman.exit.i402.us.us.us:                  ; preds = %bb.du, %next_segment.exit.i490.us.us.us, %get8_packet_raw.exit499.thread593.us.us.us, %.loopexit646.us.us.us, %bb.ej, %bb.dq
  %i.ty = load ptr, ptr %i.pf, align 8, !tbaa !56 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %bb.eq, label %.thread.i403.us.us.us

.thread.i403.us.us.us:                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.ua = load i32, ptr %i.pg, align 4, !tbaa !62 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 8
  br i1 %i.ub, label %bb.ek, label %.thread66.i404.us.us.us

.thread66.i404.us.us.us:                          ; preds = %.thread.i403.us.us.us
  %i.uc = icmp sgt i32 %i.ua, 0
  br i1 %i.uc, label %.lr.ph76.i410.us.us.us, label %._crit_edge77.i405

bb.ek:                                            ; preds = %.thread.i403.us.us.us
  %.pre.i418.us.us.us = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !60 ; 2 uses
  %.not61.i419.us.us.us = icmp eq ptr %.pre.i418.us.us.us, null
  br i1 %.not61.i419.us.us.us, label %.lr.ph76.i410.us.us.us, label %.thread96.i420.us.us.us

.lr.ph76.i410.us.us.us:                           ; preds = %bb.ek, %.thread66.i404.us.us.us
  %i.ud = load ptr, ptr %i.ph, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count.i411.us.us.us = zext nneg i32 %i.ua to i64
  br label %bb.el

bb.el:                                            ; preds = %bb.en, %.lr.ph76.i410.us.us.us
  %indvars.iv.i412.us.us.us = phi i64 [ 0, %.lr.ph76.i410.us.us.us ], [ %indvars.iv.next.i414.us.us.us, %bb.en ] ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.i412.us.us.us
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !50  ; 2 uses
  %i.ug = icmp eq i8 %i.uf, -1
  br i1 %i.ug, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.uh = zext i8 %i.uf to i32                    ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv.i412.us.us.us
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !47
  %i.uk = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %notmask.i413.us.us.us = shl nsw i32 -1, %i.uh
  %i.ul = xor i32 %notmask.i413.us.us.us, -1
  %i.um = and i32 %i.uk, %i.ul
  %i.un = icmp eq i32 %i.uj, %i.um
  br i1 %i.un, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %indvars.iv.next.i414.us.us.us = add nuw nsw i64 %indvars.iv.i412.us.us.us, 1 ; 2 uses
  %exitcond.not.i415.us.us.us = icmp eq i64 %indvars.iv.next.i414.us.us.us, %wide.trip.count.i411.us.us.us
  br i1 %exitcond.not.i415.us.us.us, label %._crit_edge77.i405, label %bb.el, !llvm.loop !10

bb.eo:                                            ; preds = %bb.em
  %i.uo = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %.not62.i416.us.us.us = icmp slt i32 %i.uo, %i.uh
  br i1 %.not62.i416.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.up = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.i412.us.us.us
  %i.uq = trunc nuw nsw i64 %indvars.iv.i412.us.us.us to i32
  %i.ur = lshr i32 %i.uk, %i.uh
  store i32 %i.ur, ptr %i.cy, align 4, !tbaa !88
  %i.us = load i8, ptr %i.up, align 1, !tbaa !50
  %i.ut = zext i8 %i.us to i32
  %i.uu = sub nsw i32 %i.uo, %i.ut
  br label %codebook_decode_scalar_raw.exit434.us.us.us

bb.eq:                                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.uv = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !60 ; 2 uses
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %.thread.i364, label %.thread96.i420.us.us.us

.thread96.i420.us.us.us:                          ; preds = %bb.eq, %bb.ek
  %i.ux = phi ptr [ %.pre.i418.us.us.us, %bb.ek ], [ %i.uv, %bb.eq ]
  %i.uy = load i32, ptr %i.cy, align 4, !tbaa !88 ; 2 uses
  %i.uz = call noundef i32 @llvm.bitreverse.i32(i32 %i.uy)
  %i.va = load i32, ptr %i.pi, align 8, !tbaa !61 ; 2 uses
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us

.lr.ph.i426.us.us.us:                             ; preds = %.thread96.i420.us.us.us, %.lr.ph.i426.us.us.us
  %.072.i427.us.us.us = phi i32 [ %.1.i431.us.us.us, %.lr.ph.i426.us.us.us ], [ %i.va, %.thread96.i420.us.us.us ] ; 2 uses
  %.05471.i428.us.us.us = phi i32 [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ], [ 0, %.thread96.i420.us.us.us ] ; 2 uses
  %i.vc = lshr i32 %.072.i427.us.us.us, 1         ; 3 uses
  %i.vd = add nsw i32 %i.vc, %.05471.i428.us.us.us ; 2 uses
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !47
  %.not65.i429.us.us.us = icmp ugt i32 %i.vg, %i.uz ; 2 uses
  %i.vh = sub nuw nsw i32 %.072.i427.us.us.us, %i.vc
  %.155.i430.us.us.us = select i1 %.not65.i429.us.us.us, i32 %.05471.i428.us.us.us, i32 %i.vd ; 2 uses
  %.1.i431.us.us.us = select i1 %.not65.i429.us.us.us, i32 %i.vc, i32 %i.vh ; 2 uses
  %i.vi = icmp samesign ugt i32 %.1.i431.us.us.us, 1
  br i1 %i.vi, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us, !llvm.loop !9

._crit_edge.i421.us.us.us:                        ; preds = %.lr.ph.i426.us.us.us, %.thread96.i420.us.us.us
  %.054.lcssa.i422.us.us.us = phi i32 [ 0, %.thread96.i420.us.us.us ], [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ] ; 2 uses
  %i.vj = load i8, ptr %i.pj, align 1, !tbaa !55
  %.not63.i423.us.us.us = icmp eq i8 %i.vj, 0
  br i1 %.not63.i423.us.us.us, label %bb.er, label %bb.es

bb.er:                                            ; preds = %._crit_edge.i421.us.us.us
  %i.vk = load ptr, ptr %i.pk, align 8, !tbaa !63
  %i.vl = sext i32 %.054.lcssa.i422.us.us.us to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !47
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge.i421.us.us.us
  %.2.i424.us.us.us = phi i32 [ %.054.lcssa.i422.us.us.us, %._crit_edge.i421.us.us.us ], [ %i.vn, %bb.er ] ; 2 uses
  %i.vo = load ptr, ptr %i.ph, align 8, !tbaa !57
  %i.vp = sext i32 %.2.i424.us.us.us to i64
  %i.vq = getelementptr inbounds i8, ptr %i.vo, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !50
  %i.vs = zext i8 %i.vr to i32                    ; 3 uses
  %i.vt = load i32, ptr %i.cx, align 8, !tbaa !84 ; 2 uses
  %.not64.i425.us.us.us = icmp slt i32 %i.vt, %i.vs
  br i1 %.not64.i425.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vu = lshr i32 %i.uy, %i.vs
  store i32 %i.vu, ptr %i.cy, align 4, !tbaa !88
  %i.vv = sub nuw nsw i32 %i.vt, %i.vs
  br label %codebook_decode_scalar_raw.exit434.us.us.us

codebook_decode_scalar_raw.exit434.us.us.us:      ; preds = %bb.et, %bb.ep
  %.sink.i407.us.us.us = phi i32 [ %i.uu, %bb.ep ], [ %i.vv, %bb.et ]
  %.158.ph.i408.us.us.us = phi i32 [ %i.uq, %bb.ep ], [ %.2.i424.us.us.us, %bb.et ] ; 2 uses
  store i32 %.sink.i407.us.us.us, ptr %i.cx, align 8, !tbaa !84
  %i.vw = icmp slt i32 %.158.ph.i408.us.us.us, 0
  br i1 %i.vw, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

bb.eu:                                            ; preds = %prep_huffman.exit.i362.us.us.us
  %i.vx = zext nneg i16 %i.sk to i32
  %i.vy = load ptr, ptr %i.ph, align 8, !tbaa !57
  %i.vz = zext nneg i16 %i.sk to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !50
  %i.wc = zext i8 %i.wb to i32                    ; 2 uses
  %i.wd = lshr i32 %i.sg, %i.wc
  store i32 %i.wd, ptr %i.cy, align 4, !tbaa !88
  %i.we = load i32, ptr %i.cx, align 8, !tbaa !84
  %i.wf = sub nsw i32 %i.we, %i.wc                ; 2 uses
  %i.wg = icmp slt i32 %i.wf, 0
  %spec.select.i370.us.us.us = call i32 @llvm.smax.i32(i32 %i.wf, i32 0)
  store i32 %spec.select.i370.us.us.us, ptr %i.cx, align 8, !tbaa !84
  br i1 %i.wg, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

codebook_decode_start.exit373.us.us.us:           ; preds = %bb.eu, %codebook_decode_scalar_raw.exit434.us.us.us
  %.025.i363.us.us.us = phi i32 [ %i.vx, %bb.eu ], [ %.158.ph.i408.us.us.us, %codebook_decode_scalar_raw.exit434.us.us.us ]
  %i.wh = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wi = add i32 %i.ot, %i.wh
  %i.wj = sub i32 %i.or, %i.wi
  %i.wk = load i32, ptr %i.ov, align 8, !tbaa !91 ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wj, i32 %i.wk) ; 5 uses
  %i.wl = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wl, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit373.us.us.us
  %i.wm = mul i32 %i.wk, %.025.i363.us.us.us
  %i.wn = load ptr, ptr %i.pa, align 8, !tbaa !93 ; 2 uses
  %i.wo = load i8, ptr %i.pb, align 2, !tbaa !92
  %.fr.i.i.us.us.us = freeze i8 %i.wo
  %.not.i.i.us.us.us = icmp eq i8 %.fr.i.i.us.us.us, 0
  %i.wp = sext i32 %i.wm to i64                   ; 2 uses
  %wide.trip.count34.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64 ; 9 uses
  %invariant.gep37.i.i.us.us.us = getelementptr [4 x i8], ptr %i.wn, i64 %i.wp ; 8 uses
  br i1 %.not.i.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader, label %.lr.ph.split.i.i.us.us.us.preheader

.lr.ph.split.i.i.us.us.us.preheader:              ; preds = %.lr.ph.i.i.us.us.us
  %xtraiter1067 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %i.wq = icmp eq i32 %spec.select.i.i.us.us.us, 1
  br i1 %i.wq, label %.lr.ph.split.i.i.us.us.us.epil.preheader, label %.lr.ph.split.i.i.us.us.us.preheader.new

.lr.ph.split.i.i.us.us.us.preheader.new:          ; preds = %.lr.ph.split.i.i.us.us.us.preheader
  %unroll_iter1071 = and i64 %wide.trip.count34.i.i.us.us.us, 2147483646
  br label %.lr.ph.split.i.i.us.us.us

.lr.ph.split.us.i.i.us.us.us.preheader:           ; preds = %.lr.ph.i.i.us.us.us
  %min.iters.check = icmp ugt i32 %spec.select.i.i.us.us.us, 7
  %or.cond1021 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1021, label %vector.memcheck, label %.lr.ph.split.us.i.i.us.us.us.preheader1028

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader
  %6 = add i64 %indvars.iv.i354.us.us.us, %i.oy
  %7 = add i64 %6, %wide.trip.count34.i.i.us.us.us
  %i.wr = shl i64 %7, 2
  %scevgep = getelementptr i8, ptr %i.op, i64 %i.wr
  %i.ws = add nsw i64 %i.wp, %wide.trip.count34.i.i.us.us.us
  %i.wt = shl nsw i64 %i.ws, 2
  %scevgep997 = getelementptr i8, ptr %i.wn, i64 %i.wt
  %bound0 = icmp ult ptr %i.pl, %scevgep997
  %bound1 = icmp ult ptr %invariant.gep37.i.i.us.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.us.us.us.preheader1028, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count34.i.i.us.us.us, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.wu = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %index ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 16
  %wide.load = load <4 x float>, ptr %i.wu, align 4, !tbaa !64, !alias.scope !234
  %wide.load998 = load <4 x float>, ptr %i.wv, align 4, !tbaa !64, !alias.scope !234
  %i.ww = fadd <4 x float> %wide.load, zeroinitializer
  %i.wx = fadd <4 x float> %wide.load998, zeroinitializer
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 2 uses
  %wide.load999 = load <4 x float>, ptr %i.wy, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %wide.load1000 = load <4 x float>, ptr %i.wz, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %i.xa = fadd <4 x float> %wide.load999, %i.ww
  %i.xb = fadd <4 x float> %wide.load1000, %i.wx
  store <4 x float> %i.xa, ptr %i.wy, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  store <4 x float> %i.xb, ptr %i.wz, align 4, !tbaa !64, !alias.scope !235, !noalias !234
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xc = icmp eq i64 %index.next, %n.vec
  br i1 %i.xc, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34.i.i.us.us.us
  br i1 %cmp.n, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader1028

.lr.ph.split.us.i.i.us.us.us.preheader1028:       ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.us.us.us.preheader, %middle.block
  %indvars.iv31.i.i.us.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter1073 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %lcmp.mod1074.not = icmp eq i64 %xtraiter1073, 0
  br i1 %lcmp.mod1074.not, label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, label %.lr.ph.split.us.i.i.us.us.us.prol

.lr.ph.split.us.i.i.us.us.us.prol:                ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader1028
  %gep38.i.i.us.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us.ph
  %i.xd = load float, ptr %gep38.i.i.us.us.us.prol, align 4, !tbaa !64
  %i.xe = fadd float %i.xd, 0.000000e+00
  %i.xf = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us.ph, %i.pc
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xf ; 2 uses
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !64
  %i.xi = fadd float %i.xh, %i.xe
  store float %i.xi, ptr %i.xg, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us.prol = or disjoint i64 %indvars.iv31.i.i.us.us.us.ph, 1
  br label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit

.lr.ph.split.us.i.i.us.us.us.prol.loopexit:       ; preds = %.lr.ph.split.us.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.preheader1028
  %indvars.iv31.i.i.us.us.us.unr = phi i64 [ %indvars.iv31.i.i.us.us.us.ph, %.lr.ph.split.us.i.i.us.us.us.preheader1028 ], [ %indvars.iv.next32.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.prol ]
  %i.xj = add nsw i64 %wide.trip.count34.i.i.us.us.us, -1
  %i.xk = icmp eq i64 %indvars.iv31.i.i.us.us.us.ph, %i.xj
  br i1 %i.xk, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us

.lr.ph.split.i.i.us.us.us:                        ; preds = %.lr.ph.split.i.i.us.us.us, %.lr.ph.split.i.i.us.us.us.preheader.new
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %indvars.iv.next.i.i.us.us.us.1, %.lr.ph.split.i.i.us.us.us ] ; 4 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %i.xs, %.lr.ph.split.i.i.us.us.us ]
  %niter1072 = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %niter1072.next.1, %.lr.ph.split.i.i.us.us.us ]
  %gep.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.xl = load float, ptr %gep.i.i.us.us.us, align 4, !tbaa !64
  %i.xm = fadd float %.028.i.i.us.us.us, %i.xl    ; 2 uses
  %i.xn = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.pc
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xn ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !64
  %i.xq = fadd float %i.xp, %i.xm
  store float %i.xq, ptr %i.xo, align 4, !tbaa !64
  %indvars.iv.next.i.i.us.us.us = or disjoint i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %gep.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.xr = load float, ptr %gep.i.i.us.us.us.1, align 4, !tbaa !64
  %i.xs = fadd float %i.xm, %i.xr                 ; 3 uses
  %i.xt = mul nuw nsw i64 %indvars.iv.next.i.i.us.us.us, %i.pc
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xt ; 2 uses
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !64
  %i.xw = fadd float %i.xv, %i.xs
  store float %i.xw, ptr %i.xu, align 4, !tbaa !64
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %niter1072.next.1 = add i64 %niter1072, 2       ; 2 uses
  %niter1072.ncmp.1 = icmp eq i64 %niter1072.next.1, %unroll_iter1071
  br i1 %niter1072.ncmp.1, label %.loopexit.i.us.us.us.loopexit1029.unr-lcssa, label %.lr.ph.split.i.i.us.us.us, !llvm.loop !12

.lr.ph.split.us.i.i.us.us.us:                     ; preds = %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us
  %indvars.iv31.i.i.us.us.us = phi i64 [ %indvars.iv.next32.i.i.us.us.us.1, %.lr.ph.split.us.i.i.us.us.us ], [ %indvars.iv31.i.i.us.us.us.unr, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit ] ; 4 uses
  %gep38.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us
  %i.xx = load float, ptr %gep38.i.i.us.us.us, align 4, !tbaa !64
  %i.xy = fadd float %i.xx, 0.000000e+00
  %i.xz = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us, %i.pc
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.xz ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !64
  %i.yc = fadd float %i.yb, %i.xy
  store float %i.yc, ptr %i.ya, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 1 ; 2 uses
  %gep38.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next32.i.i.us.us.us
  %i.yd = load float, ptr %gep38.i.i.us.us.us.1, align 4, !tbaa !64
  %i.ye = fadd float %i.yd, 0.000000e+00
  %i.yf = mul nuw nsw i64 %indvars.iv.next32.i.i.us.us.us, %i.pc
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yf ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !64
  %i.yi = fadd float %i.yh, %i.ye
  store float %i.yi, ptr %i.yg, align 4, !tbaa !64
  %indvars.iv.next32.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 2 ; 2 uses
  %exitcond35.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next32.i.i.us.us.us.1, %wide.trip.count34.i.i.us.us.us
  br i1 %exitcond35.not.i.i.us.us.us.1, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us, !llvm.loop !224

.loopexit.i.us.us.us.loopexit1029.unr-lcssa:      ; preds = %.lr.ph.split.i.i.us.us.us
  %lcmp.mod1069.not.a = icmp eq i64 %xtraiter1067, 0
  br i1 %lcmp.mod1069.not.a, label %.loopexit.i.us.us.us, label %.lr.ph.split.i.i.us.us.us.epil.preheader

.lr.ph.split.i.i.us.us.us.epil.preheader:         ; preds = %.loopexit.i.us.us.us.loopexit1029.unr-lcssa, %.lr.ph.split.i.i.us.us.us.preheader
  %indvars.iv.i.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader ], [ %indvars.iv.next.i.i.us.us.us.1, %.loopexit.i.us.us.us.loopexit1029.unr-lcssa ] ; 2 uses
  %.028.i.i.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader ], [ %i.xs, %.loopexit.i.us.us.us.loopexit1029.unr-lcssa ]
  %lcmp.mod1070 = trunc i32 %spec.select.i.i.us.us.us to i1
  call void @llvm.assume(i1 %lcmp.mod1070)
  %gep.i.i.us.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.epil.init
  %i.yj = load float, ptr %gep.i.i.us.us.us.epil, align 4, !tbaa !64
  %i.yk = fadd float %.028.i.i.us.us.us.epil.init, %i.yj
  %i.yl = mul nuw nsw i64 %indvars.iv.i.i.us.us.us.epil.init, %i.pc
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.yl ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !64
  %i.yo = fadd float %i.yn, %i.yk
  store float %i.yo, ptr %i.ym, align 4, !tbaa !64
  br label %.loopexit.i.us.us.us

.loopexit.i.us.us.us:                             ; preds = %.lr.ph.split.i.i.us.us.us.epil.preheader, %.loopexit.i.us.us.us.loopexit1029.unr-lcssa, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us, %middle.block, %codebook_decode_start.exit373.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.pc
  br i1 %exitcond.not.i356.us.us.us, label %.thread629.us.us.us, label %bb.cc, !llvm.loop !13

.thread629.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.cb, %bb.ca, %bb.bz
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge700.split.us.us.us, label %bb.bz, !llvm.loop !225

._crit_edge700.split.us.us.us:                    ; preds = %.thread629.us.us.us
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %i.yp = add nsw i32 %.1280704.us.us, 1          ; 3 uses
  %i.yq = icmp slt i64 %indvars.iv.next801, %i.dq
  %i.yr = icmp slt i32 %i.yp, %i.ac
  %i.ys = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %i.ys, label %.preheader654.us.us, label %._crit_edge706, !llvm.loop !226

.preheader654.us:                                 ; preds = %.preheader654.lr.ph.split.us, %._crit_edge700.split.us711
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %._crit_edge700.split.us711 ], [ 0, %.preheader654.lr.ph.split.us ] ; 2 uses
  %.1280704.us = phi i32 [ %i.akp, %._crit_edge700.split.us711 ], [ %.0279721, %.preheader654.lr.ph.split.us ] ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %.thread629.us710, %.preheader654.us
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %.thread629.us710 ], [ 0, %.preheader654.us ] ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv787
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !50
  %.not323.us709 = icmp eq i8 %i.yu, 0
  br i1 %.not323.us709, label %bb.ew, label %.thread629.us710

bb.ew:                                            ; preds = %bb.ev
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv787
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !105
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv803
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !104
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 %indvars.iv792
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !50
  %i.zb = load ptr, ptr %i.do, align 8, !tbaa !106
  %i.zc = zext i8 %i.za to i64
  %i.zd = getelementptr inbounds nuw [16 x i8], ptr %i.zb, i64 %i.zc
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.zd, i64 %indvars.iv806
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !59 ; 2 uses
  %i.zg = icmp sgt i16 %i.zf, -1
  br i1 %i.zg, label %.preheader.i.us, label %.thread629.us710

.preheader.i.us:                                  ; preds = %bb.ew
  %i.zh = zext nneg i16 %i.zf to i64
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv787
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !65 ; 2 uses
  %i.zk = load i32, ptr %i.aa, align 8, !tbaa !101 ; 4 uses
  %i.zl = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.zm = getelementptr inbounds nuw [2120 x i8], ptr %i.zl, i64 %i.zh ; 13 uses
  %i.zn = icmp sgt i32 %i.zk, 0
  br i1 %i.zn, label %.lr.ph.i353.us, label %.thread629.us710

.lr.ph.i353.us:                                   ; preds = %.preheader.i.us
  %i.zo = mul i32 %i.zk, %.1280704.us
  %i.zp = load i32, ptr %i.h, align 8, !tbaa !99
  %i.zq = add i32 %i.zo, %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zm, i64 26
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 32 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zm, i64 16 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zm, i64 25
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zm, i64 48
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zm, i64 40
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.zm, i64 2096 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zm, i64 8 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zm, i64 2112
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zm, i64 27
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zm, i64 2104
  br label %bb.ex
end_hunk_2
begin_hunk_3_@vorbis_finish_frame:bb.a
..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !102
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %get_window.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.h = load i32, ptr %i.g, align 4, !tbaa !108
  %i.i = icmp eq i32 %i.c, %i.h
  br i1 %i.i, label %get_window.exit, label %.critedge

get_window.exit:                                  ; preds = %bb.b, %bb.c
  %.sink9.i = phi i64 [ 1464, %bb.b ], [ 1472, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 7 uses
  %.not66 = icmp eq ptr %i.k, null
  br i1 %.not66, label %.critedge, label %.preheader71

.preheader71:                                     ; preds = %get_window.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader70.lr.ph, label %._crit_edge77.split.thread

._crit_edge77.split.thread:                       ; preds = %.preheader71
  %i.o = sub i32 %1, %3
  store i32 %i.o, ptr %i.a, align 8, !tbaa !132
  br label %bb.d

.preheader70.lr.ph:                               ; preds = %.preheader71
  %i.p = icmp sgt i32 %i.b, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1144
  br i1 %i.p, label %.preheader70.preheader, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader70.lr.ph
  %i.s = sub i32 %1, %3                           ; 2 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !132
  br label %.preheader.lr.ph

.preheader70.preheader:                           ; preds = %.preheader70.lr.ph
  %i.t = zext nneg i32 %i.b to i64                ; 3 uses
  %i.u = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count82 = zext nneg i32 %i.m to i64
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %i.v = getelementptr [4 x i8], ptr %i.k, i64 %i.t ; 5 uses
  %i.w = shl nuw nsw i64 %wide.trip.count, 2
  %i.x = add nsw i64 %i.u, %wide.trip.count
  %i.y = shl nsw i64 %i.x, 2
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.z = add nsw i64 %i.t, -1
  br label %.preheader70

.preheader70:                                     ; preds = %.preheader70.preheader, %._crit_edge
  %indvars.iv79 = phi i64 [ 0, %.preheader70.preheader ], [ %indvars.iv.next80, %._crit_edge ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv79
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ab, i64 %i.u ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader70
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.y ; 2 uses
  %scevgep103 = getelementptr i8, ptr %i.ad, i64 %i.w
  %bound0 = icmp ult ptr %invariant.gep, %i.v
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0104 = icmp ult ptr %invariant.gep, %scevgep103
  %bound1105 = icmp ult ptr %i.ad, %scevgep
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx = or i1 %found.conflict, %found.conflict106
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ae, align 4, !tbaa !64, !alias.scope !302, !noalias !303
  %wide.load107 = load <4 x float>, ptr %i.af, align 4, !tbaa !64, !alias.scope !302, !noalias !303
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load108 = load <4 x float>, ptr %i.ag, align 4, !tbaa !64, !alias.scope !304
  %wide.load109 = load <4 x float>, ptr %i.ah, align 4, !tbaa !64, !alias.scope !304
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load110 = load <4 x float>, ptr %i.ai, align 4, !tbaa !64, !alias.scope !305
  %wide.load111 = load <4 x float>, ptr %i.aj, align 4, !tbaa !64, !alias.scope !305
  %i.ak = xor i64 %index, -1
  %i.al = getelementptr [4 x i8], ptr %i.v, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -12
  %i.an = getelementptr i8, ptr %i.al, i64 -28
  %wide.load112 = load <4 x float>, ptr %i.am, align 4, !tbaa !64, !alias.scope !304
  %wide.load113 = load <4 x float>, ptr %i.an, align 4, !tbaa !64, !alias.scope !304
  %reverse = shufflevector <4 x float> %wide.load112, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse114 = shufflevector <4 x float> %wide.load113, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ao = fmul <4 x float> %wide.load110, %reverse
  %i.ap = fmul <4 x float> %wide.load111, %reverse114
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load108, <4 x float> %i.ao)
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load107, <4 x float> %wide.load109, <4 x float> %i.ap)
  store <4 x float> %i.aq, ptr %i.ae, align 4, !tbaa !64, !alias.scope !302, !noalias !303
  store <4 x float> %i.ar, ptr %i.af, align 4, !tbaa !64, !alias.scope !302, !noalias !303
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader70, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader70 ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.at = load float, ptr %gep.prol, align 4, !tbaa !64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.ph
  %i.av = load float, ptr %i.au, align 4, !tbaa !64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !64
  %i.ay = xor i64 %indvars.iv.ph, -1
  %i.az = getelementptr [4 x i8], ptr %i.v, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !64
  %i.bb = fmul float %i.ax, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %i.av, float %i.bb)
  store float %i.bc, ptr %gep.prol, align 4, !tbaa !64
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = icmp eq i64 %indvars.iv.ph, %i.z
  br i1 %i.bd, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.be = load float, ptr %gep, align 4, !tbaa !64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !64
  %i.bj = xor i64 %indvars.iv, -1
  %i.bk = getelementptr [4 x i8], ptr %i.v, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !64
  %i.bm = fmul float %i.bi, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.bm)
  store float %i.bn, ptr %gep, align 4, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bo = load float, ptr %gep.1, align 4, !tbaa !64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.bs = load float, ptr %i.br, align 4, !tbaa !64
  %i.bt = sub i64 -2, %indvars.iv
  %i.bu = getelementptr [4 x i8], ptr %i.v, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !64
  %i.bw = fmul float %i.bs, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bq, float %i.bw)
  store float %i.bx, ptr %gep.1, align 4, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !296

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.loopexit, label %.preheader70, !llvm.loop !297

.loopexit:                                        ; preds = %._crit_edge, %..loopexit_crit_edge
  %i.by = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.bz = sub i32 %1, %3                          ; 2 uses
  store i32 %i.bz, ptr %i.a, align 8, !tbaa !132
  %i.ca = icmp sgt i32 %i.by, 0
  br i1 %i.ca, label %.preheader.lr.ph, label %._crit_edge77.split

.preheader.lr.ph:                                 ; preds = %.loopexit.thread, %.loopexit
  %i.cb = phi i32 [ %i.s, %.loopexit.thread ], [ %i.bz, %.loopexit ] ; 2 uses
  %i.cc = phi i32 [ %i.m, %.loopexit.thread ], [ %i.by, %.loopexit ]
  %i.cd = icmp slt i32 %3, %1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1144
  br i1 %i.cd, label %.preheader.preheader, label %._crit_edge77.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.cg = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count92 = zext nneg i32 %i.cc to i64
  %wide.trip.count87 = zext i32 %i.cb to i64      ; 5 uses
  %4 = shl nsw i64 %i.cg, 2
  %min.iters.check120 = icmp ult i32 %i.cb, 8
  %n.vec119 = and i64 %wide.trip.count87, 4294967288 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec119, %wide.trip.count87
  %xtraiter128 = and i64 %wide.trip.count87, 3    ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge75
  %indvars.iv89 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next90, %._crit_edge75 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv89
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv89
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65 ; 7 uses
  %invariant.gep101 = getelementptr [4 x i8], ptr %i.ci, i64 %i.cg ; 6 uses
  br i1 %min.iters.check120, label %scalar.ph116.preheader, label %vector.memcheck115

vector.memcheck115:                               ; preds = %.preheader
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %i.cm = ptrtoaddr ptr %i.ci to i64
  %i.cn = add i64 %4, %i.cm
  %i.co = sub i64 %i.cn, %i.cl
  %diff.check = icmp ugt i64 %i.co, -32
  br i1 %diff.check, label %scalar.ph116.preheader, label %vector.body120

vector.body120:                                   ; preds = %vector.memcheck115, %vector.body120
  %index121 = phi i64 [ %index.next124, %vector.body120 ], [ 0, %vector.memcheck115 ] ; 3 uses
  %i.cp = getelementptr [4 x i8], ptr %invariant.gep101, i64 %index121 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %wide.load122 = load <4 x float>, ptr %i.cp, align 4, !tbaa !64
  %wide.load123 = load <4 x float>, ptr %i.cq, align 4, !tbaa !64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index121 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x float> %wide.load122, ptr %i.cr, align 4, !tbaa !64
  store <4 x float> %wide.load123, ptr %i.cs, align 4, !tbaa !64
  %index.next124 = add nuw i64 %index121, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.ct, label %middle.block125, label %vector.body120, !llvm.loop !298

middle.block125:                                  ; preds = %vector.body120
  br i1 %cmp.n126, label %._crit_edge75, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck115, %.preheader, %middle.block125
  %indvars.iv84.ph = phi i64 [ 0, %vector.memcheck115 ], [ 0, %.preheader ], [ %n.vec119, %middle.block125 ] ; 3 uses
  br i1 %lcmp.mod129.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph116.prol ], [ %indvars.iv84.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %gep102.prol = getelementptr [4 x i8], ptr %invariant.gep101, i64 %indvars.iv84.prol
  %i.cu = load float, ptr %gep102.prol, align 4, !tbaa !64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv84.prol
  store float %i.cu, ptr %i.cv, align 4, !tbaa !64
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter128
  br i1 %prol.iter.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !299

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph116.preheader ], [ %indvars.iv.next85.prol, %scalar.ph116.prol ]
  %i.cw = sub nsw i64 %indvars.iv84.ph, %wide.trip.count87
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %._crit_edge75, label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph116 ], [ %indvars.iv84.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %gep102 = getelementptr [4 x i8], ptr %invariant.gep101, i64 %indvars.iv84
  %i.cy = load float, ptr %gep102, align 4, !tbaa !64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv84
  store float %i.cy, ptr %i.cz, align 4, !tbaa !64
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %gep102.1 = getelementptr [4 x i8], ptr %invariant.gep101, i64 %indvars.iv.next85
  %i.da = load float, ptr %gep102.1, align 4, !tbaa !64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next85
  store float %i.da, ptr %i.db, align 4, !tbaa !64
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %gep102.2 = getelementptr [4 x i8], ptr %invariant.gep101, i64 %indvars.iv.next85.1
  %i.dc = load float, ptr %gep102.2, align 4, !tbaa !64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next85.1
  store float %i.dc, ptr %i.dd, align 4, !tbaa !64
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv84, 3 ; 2 uses
  %gep102.3 = getelementptr [4 x i8], ptr %invariant.gep101, i64 %indvars.iv.next85.2
  %i.de = load float, ptr %gep102.3, align 4, !tbaa !64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next85.2
  store float %i.de, ptr %i.df, align 4, !tbaa !64
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %indvars.iv.next85.3, %wide.trip.count87
  br i1 %exitcond88.not.3, label %._crit_edge75, label %scalar.ph116, !llvm.loop !300

._crit_edge75:                                    ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block125
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge77.split, label %.preheader, !llvm.loop !301

._crit_edge77.split:                              ; preds = %._crit_edge75, %.preheader.lr.ph, %.loopexit
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %._crit_edge77.split.thread, %._crit_edge77.split
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %i.dg = sub nsw i32 %spec.select, %2            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1804 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !133
  %i.dj = add i32 %i.di, %i.dg
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !133
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %get_window.exit, %._crit_edge77.split, %bb.d
  %.1 = phi i32 [ %i.dg, %bb.d ], [ 0, %._crit_edge77.split ], [ 0, %bb.c ], [ 0, %get_window.exit ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @vorbis_pump_first_frame(ptr noundef initializes((1892, 1900)) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.g = call i32 @vorbis_decode_initial(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %vorbis_decode_packet.exit.thread, label %vorbis_decode_packet.exit

vorbis_decode_packet.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.c

vorbis_decode_packet.exit:                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.i = load i32, ptr %i.a, align 4, !tbaa !47
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.j
  %i.l = load i32, ptr %i.f, align 4, !tbaa !47
  %i.m = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !47
  %i.o = call i32 @vorbis_decode_packet_rest(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, i32 noundef %i.l, i32 poison, i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vorbis_decode_packet.exit
  %i.p = load i32, ptr %i.d, align 4, !tbaa !47
  %i.q = load i32, ptr %i.f, align 4, !tbaa !47
  %i.r = tail call i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.m) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %vorbis_decode_packet.exit.thread, %bb.b, %vorbis_decode_packet.exit
  %.0.i5 = phi i32 [ 0, %vorbis_decode_packet.exit.thread ], [ 1, %bb.b ], [ 0, %vorbis_decode_packet.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret i32 %.0.i5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @is_whole_packet_present(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  %.not = icmp ne i32 %i.b, -1                    ; 2 uses
  br i1 %.not, label %.preheader78, label %bb.d

.preheader78:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader78
  %i.i = sext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.05280 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.m, %bb.b ]
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !50    ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.05280, i64 %i.l ; 3 uses
  %.not69 = icmp eq i8 %i.k, -1
  br i1 %.not69, label %bb.b, label %._crit_edge.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %.preheader78
  %.056.lcssa = phi i32 [ %i.b, %.preheader78 ], [ %i.n, %._crit_edge.loopexit.split.loop.exit ], [ %i.g, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.d, %.preheader78 ], [ %i.m, %._crit_edge.loopexit.split.loop.exit ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.q = icmp ugt ptr %.1, %i.p
  br i1 %i.q, label %.critedge.sink.split, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = icmp eq i32 %.056.lcssa, %i.g
end_hunk_3
begin_hunk_4_@start_decoder:bb.a

bb.eq:                                            ; preds = %.split1374.us
  %i.sr = shl i32 %i.rf, 1
  %i.ss = add nsw i32 %i.sr, 6
  %i.st = and i32 %i.ss, -8
  %i.su = load i32, ptr %i.hd, align 4, !tbaa !46
  %i.sv = add nsw i32 %i.su, %i.st
  store i32 %i.sv, ptr %i.hd, align 4, !tbaa !46
  br label %.thread1225

bb.er:                                            ; preds = %.split1374.us
  tail call void @free(ptr noundef nonnull %i.pm) #30
  br label %.thread1225

.thread1225:                                      ; preds = %bb.eq, %bb.er
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.sw, align 4, !tbaa !39
  br label %.critedge

._crit_edge1381:                                  ; preds = %._crit_edge1371.us, %.lr.ph1380, %bb.eh
  store i8 2, ptr %i.oi, align 1, !tbaa !90
  br label %.loopexit1264

bb.es:                                            ; preds = %._crit_edge1360
  %i.sx = shl i32 %.lcssa1286, 2
  %i.sy = tail call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.sx) ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !93
  %.not1153 = icmp eq ptr %i.sy, null
  br i1 %.not1153, label %bb.et, label %.preheader1263

.preheader1263:                                   ; preds = %bb.es
  %i.ta = load i32, ptr %i.pi, align 4, !tbaa !356 ; 4 uses
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %.lr.ph1364, label %.loopexit1264

.lr.ph1364:                                       ; preds = %.preheader1263
  %i.tc = load i8, ptr %i.oy, align 2, !tbaa !92
  %.not1152 = icmp eq i8 %i.tc, 0                 ; 2 uses
  %wide.trip.count1591 = zext nneg i32 %i.ta to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count1591, 1
  %i.td = icmp eq i32 %i.ta, 1
  br i1 %i.td, label %.epil.preheader, label %.lr.ph1364.new

.lr.ph1364.new:                                   ; preds = %.lr.ph1364
  %unroll_iter = and i64 %wide.trip.count1591, 2147483646
  br label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.te = load ptr, ptr %i.hc, align 8, !tbaa !44
  %.not.i1193 = icmp eq ptr %i.te, null
  br i1 %.not.i1193, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tf = load i32, ptr %i.pi, align 4, !tbaa !356
  %i.tg = shl i32 %i.tf, 1
  %i.th = add nsw i32 %i.tg, 6
  %i.ti = and i32 %i.th, -8
  %i.tj = load i32, ptr %i.hd, align 4, !tbaa !46
  %i.tk = add nsw i32 %i.ti, %i.tj
  store i32 %i.tk, ptr %i.hd, align 4, !tbaa !46
  br label %.thread1230

bb.ev:                                            ; preds = %bb.et
  tail call void @free(ptr noundef nonnull %i.pm) #30
  br label %.thread1230

.thread1230:                                      ; preds = %bb.ev, %bb.eu
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.tl, align 4, !tbaa !39
  br label %.critedge

bb.ew:                                            ; preds = %bb.ew, %.lr.ph1364.new
  %indvars.iv1588 = phi i64 [ 0, %.lr.ph1364.new ], [ %indvars.iv.next1589.1, %bb.ew ] ; 4 uses
  %.09431363 = phi float [ 0.000000e+00, %.lr.ph1364.new ], [ %.1944.1, %bb.ew ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1364.new ], [ %niter.next.1, %bb.ew ]
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv1588
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !59
  %i.to = uitofp i16 %i.tn to float
  %i.tp = load float, ptr %i.or, align 4, !tbaa !354
  %i.tq = load float, ptr %i.oo, align 8, !tbaa !94
  %i.tr = tail call float @llvm.fmuladd.f32(float %i.to, float %i.tp, float %i.tq)
  %i.ts = fadd float %.09431363, %i.tr            ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv1588
  store float %i.ts, ptr %i.tt, align 4, !tbaa !64
  %.1944 = select i1 %.not1152, float %.09431363, float %i.ts
  %indvars.iv.next1589 = or disjoint i64 %indvars.iv1588, 1 ; 2 uses
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv.next1589
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !59
  %i.tw = uitofp i16 %i.tv to float
  %i.tx = load float, ptr %i.or, align 4, !tbaa !354
  %i.ty = load float, ptr %i.oo, align 8, !tbaa !94
  %i.tz = tail call float @llvm.fmuladd.f32(float %i.tw, float %i.tx, float %i.ty)
  %i.ua = fadd float %.1944, %i.tz                ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv.next1589
  store float %i.ua, ptr %i.ub, align 4, !tbaa !64
  %.1944.1 = select i1 %.not1152, float %.09431363, float %i.ua ; 2 uses
  %indvars.iv.next1589.1 = add nuw nsw i64 %indvars.iv1588, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1264.loopexit.unr-lcssa, label %bb.ew, !llvm.loop !320

.loopexit1264.loopexit.unr-lcssa:                 ; preds = %bb.ew
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1264, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1264.loopexit.unr-lcssa, %.lr.ph1364
  %indvars.iv1588.epil.init = phi i64 [ 0, %.lr.ph1364 ], [ %indvars.iv.next1589.1, %.loopexit1264.loopexit.unr-lcssa ] ; 2 uses
  %.09431363.epil.init = phi float [ 0.000000e+00, %.lr.ph1364 ], [ %.1944.1, %.loopexit1264.loopexit.unr-lcssa ]
  %lcmp.mod2030 = trunc i32 %i.ta to i1
  tail call void @llvm.assume(i1 %lcmp.mod2030)
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv1588.epil.init
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !59
  %i.ue = uitofp i16 %i.ud to float
  %i.uf = load float, ptr %i.or, align 4, !tbaa !354
  %i.ug = load float, ptr %i.oo, align 8, !tbaa !94
  %i.uh = tail call float @llvm.fmuladd.f32(float %i.ue, float %i.uf, float %i.ug)
  %i.ui = fadd float %.09431363.epil.init, %i.uh
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv1588.epil.init
  store float %i.ui, ptr %i.uj, align 4, !tbaa !64
  br label %.loopexit1264

.loopexit1264:                                    ; preds = %.epil.preheader, %.loopexit1264.loopexit.unr-lcssa, %.preheader1263, %._crit_edge1381, %bb.eb
  %i.uk = load ptr, ptr %i.hc, align 8, !tbaa !44
  %.not.i1195 = icmp eq ptr %i.uk, null
  br i1 %.not.i1195, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %.loopexit1264
  %i.ul = load i32, ptr %i.pi, align 4, !tbaa !356
  %i.um = shl i32 %i.ul, 1
  %i.un = add nsw i32 %i.um, 6
  %i.uo = and i32 %i.un, -8
  %i.up = load i32, ptr %i.hd, align 4, !tbaa !46
  %i.uq = add nsw i32 %i.uo, %i.up
  store i32 %i.uq, ptr %i.hd, align 4, !tbaa !46
  br label %setup_temp_free.exit1196

bb.ey:                                            ; preds = %.loopexit1264
  tail call void @free(ptr noundef nonnull %i.pm) #30
  br label %setup_temp_free.exit1196

setup_temp_free.exit1196:                         ; preds = %bb.ex, %bb.ey, %bb.do
  %indvars.iv.next1609 = add nuw nsw i64 %indvars.iv1608, 1 ; 2 uses
  %i.ur = load i32, ptr %i.gq, align 8, !tbaa !138
  %i.us = sext i32 %i.ur to i64
  %i.ut = icmp slt i64 %indvars.iv.next1609, %i.us
  br i1 %i.ut, label %bb.bj, label %._crit_edge1399, !llvm.loop !321

._crit_edge1399:                                  ; preds = %setup_temp_free.exit1196, %bb.bi
  %i.uu = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.uv = add i32 %i.uu, 1
  %i.uw = and i32 %i.uv, 255                      ; 2 uses
  %.not1487 = icmp eq i32 %i.uw, 0
  br i1 %.not1487, label %._crit_edge1401, label %.critedge1166

bb.ez:                                            ; preds = %.critedge1166
  %i.ux = add nuw nsw i32 %.510061400, 1          ; 2 uses
  %exitcond1611.not = icmp eq i32 %i.ux, %i.uw
  br i1 %exitcond1611.not, label %._crit_edge1401, label %.critedge1166, !llvm.loop !322

.critedge1166:                                    ; preds = %._crit_edge1399, %bb.ez
  %.510061400 = phi i32 [ %i.ux, %bb.ez ], [ 0, %._crit_edge1399 ]
  %i.uy = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %.not1126 = icmp eq i32 %i.uy, 0
  br i1 %.not1126, label %bb.ez, label %bb.fa

bb.fa:                                            ; preds = %.critedge1166
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.uz, align 4, !tbaa !39
  br label %.critedge

._crit_edge1401:                                  ; preds = %bb.ez, %._crit_edge1399
  %i.va = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.vb = add i32 %i.va, 1                        ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store i32 %i.vb, ptr %i.vc, align 8, !tbaa !357
  %i.vd = mul i32 %i.vb, 1596
  %i.ve = tail call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.vd) ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store ptr %i.ve, ptr %i.vf, align 8, !tbaa !113
  %i.vg = icmp eq ptr %i.ve, null
  br i1 %i.vg, label %bb.fb, label %.preheader1262

.preheader1262:                                   ; preds = %._crit_edge1401
  %i.vh = load i32, ptr %i.vc, align 8, !tbaa !357
  %i.vi = icmp sgt i32 %i.vh, 0
  br i1 %i.vi, label %.lr.ph1434, label %._crit_edge1435

.lr.ph1434:                                       ; preds = %.preheader1262
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 196
  br label %bb.fc

bb.fb:                                            ; preds = %._crit_edge1401
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.vk, align 4, !tbaa !39
  br label %.critedge

bb.fc:                                            ; preds = %.lr.ph1434, %._crit_edge1430
  %indvars.iv1642 = phi i64 [ 0, %.lr.ph1434 ], [ %indvars.iv.next1643, %._crit_edge1430 ] ; 5 uses
  %.09701433 = phi i32 [ 0, %.lr.ph1434 ], [ %spec.select1167, %._crit_edge1430 ]
  %i.vl = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16) ; 2 uses
  %i.vm = trunc i32 %i.vl to i16
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %indvars.iv1642
  store i16 %i.vm, ptr %i.vn, align 2, !tbaa !59
  %i.vo = and i32 %i.vl, 65535                    ; 2 uses
  %i.vp = icmp samesign ugt i32 %i.vo, 1
  br i1 %i.vp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.vq, align 4, !tbaa !39
  br label %.critedge

bb.fe:                                            ; preds = %bb.fc
  %i.vr = icmp eq i32 %i.vo, 0
  br i1 %i.vr, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.vs = load ptr, ptr %i.vf, align 8, !tbaa !113
  %i.vt = getelementptr inbounds nuw [1596 x i8], ptr %i.vs, i64 %indvars.iv1642 ; 7 uses
  %i.vu = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.vv = trunc i32 %i.vu to i8
  store i8 %i.vv, ptr %i.vt, align 2, !tbaa !359
  %i.vw = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %i.vx = trunc i32 %i.vw to i16
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  store i16 %i.vx, ptr %i.vy, align 2, !tbaa !360
  %i.vz = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %i.wa = trunc i32 %i.vz to i16
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  store i16 %i.wa, ptr %i.wb, align 2, !tbaa !361
  %i.wc = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.wd = trunc i32 %i.wc to i8
  %i.we = getelementptr inbounds nuw i8, ptr %i.vt, i64 6
  store i8 %i.wd, ptr %i.we, align 2, !tbaa !362
  %i.wf = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.wg = trunc i32 %i.wf to i8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vt, i64 7
  store i8 %i.wg, ptr %i.wh, align 1, !tbaa !363
  %i.wi = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %i.wj = trunc i32 %i.wi to i8
  %i.wk = add i8 %i.wj, 1                         ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 2 uses
  store i8 %i.wk, ptr %i.wl, align 2, !tbaa !364
  %.not1496 = icmp eq i8 %i.wk, 0
  br i1 %.not1496, label %._crit_edge1486, label %.lr.ph1485

.lr.ph1485:                                       ; preds = %bb.ff
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vt, i64 9
  br label %bb.fg

bb.fg:                                            ; preds = %.lr.ph1485, %bb.fg
  %indvars.iv1692 = phi i64 [ 0, %.lr.ph1485 ], [ %indvars.iv.next1693, %bb.fg ] ; 2 uses
  %i.wn = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.wo = trunc i32 %i.wn to i8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 %indvars.iv1692
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !50
  %indvars.iv.next1693 = add nuw nsw i64 %indvars.iv1692, 1 ; 2 uses
  %i.wq = load i8, ptr %i.wl, align 2, !tbaa !364
  %i.wr = zext i8 %i.wq to i64
  %i.ws = icmp samesign ult i64 %indvars.iv.next1693, %i.wr
  br i1 %i.ws, label %bb.fg, label %._crit_edge1486, !llvm.loop !323

._crit_edge1486:                                  ; preds = %bb.fg, %bb.ff
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 4, ptr %i.wt, align 4, !tbaa !39
  br label %.critedge

bb.fh:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.wu = load ptr, ptr %i.vf, align 8, !tbaa !113 ; 2 uses
  %i.wv = getelementptr inbounds nuw [1596 x i8], ptr %i.wu, i64 %indvars.iv1642 ; 18 uses
  %i.ww = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5) ; 2 uses
  %i.wx = trunc i32 %i.ww to i8
  store i8 %i.wx, ptr %i.wv, align 4, !tbaa !124
  %i.wy = and i32 %i.ww, 255
  %.not1488 = icmp eq i32 %i.wy, 0
  br i1 %.not1488, label %._crit_edge1414, label %.lr.ph1405

.lr.ph1405:                                       ; preds = %bb.fh
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wv, i64 1
  br label %bb.fi

.lr.ph1413:                                       ; preds = %bb.fi
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 33
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wv, i64 49
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wv, i64 65
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wv, i64 82
  %i.xe = add nuw nsw i32 %spec.select, 1
  %wide.trip.count1621 = zext nneg i32 %i.xe to i64
  br label %bb.fj

bb.fi:                                            ; preds = %.lr.ph1405, %bb.fi
  %indvars.iv1612 = phi i64 [ 0, %.lr.ph1405 ], [ %indvars.iv.next1613, %bb.fi ] ; 2 uses
  %.09411403 = phi i32 [ -1, %.lr.ph1405 ], [ %spec.select, %bb.fi ]
  %i.xf = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4) ; 2 uses
  %i.xg = trunc i32 %i.xf to i8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv1612
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !50
  %i.xi = and i32 %i.xf, 255
  %spec.select = call i32 @llvm.smax.i32(i32 %i.xi, i32 %.09411403) ; 2 uses
  %indvars.iv.next1613 = add nuw nsw i64 %indvars.iv1612, 1 ; 2 uses
  %i.xj = load i8, ptr %i.wv, align 4, !tbaa !124
  %i.xk = zext i8 %i.xj to i64
  %i.xl = icmp samesign ult i64 %indvars.iv.next1613, %i.xk
  br i1 %i.xl, label %bb.fi, label %.lr.ph1413, !llvm.loop !324

bb.fj:                                            ; preds = %.lr.ph1413, %._crit_edge1410
  %indvars.iv1618 = phi i64 [ 0, %.lr.ph1413 ], [ %indvars.iv.next1619, %._crit_edge1410 ] ; 5 uses
  %i.xm = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 3)
  %i.xn = trunc i32 %i.xm to i8
  %i.xo = add i8 %i.xn, 1
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xa, i64 %indvars.iv1618
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !50
  %i.xq = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %i.xr = trunc i32 %i.xq to i8                   ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv1618 ; 3 uses
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !50
  %.not1123 = icmp eq i8 %i.xr, 0
  br i1 %.not1123, label %.lr.ph1409, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xt = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.xu = trunc i32 %i.xt to i8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xc, i64 %indvars.iv1618
  store i8 %i.xu, ptr %i.xv, align 1, !tbaa !50
  %i.xw = and i32 %i.xt, 255
  %i.xx = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1124 = icmp slt i32 %i.xw, %i.xx
  br i1 %.not1124, label %bb.fl, label %.thread1234

bb.fl:                                            ; preds = %bb.fk
  %.pre1705 = load i8, ptr %i.xs, align 1, !tbaa !50
  %i.xy = icmp eq i8 %.pre1705, 31
  br i1 %i.xy, label %._crit_edge1410, label %.lr.ph1409

.lr.ph1409:                                       ; preds = %bb.fj, %bb.fl
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %indvars.iv1618
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fn
  %indvars.iv.next1616 = add nuw nsw i64 %indvars.iv1615, 1 ; 2 uses
  %i.ya = load i8, ptr %i.xs, align 1, !tbaa !50
  %i.yb = zext nneg i8 %i.ya to i32
  %i.yc = shl nuw i32 1, %i.yb
  %i.yd = sext i32 %i.yc to i64
  %i.ye = icmp slt i64 %indvars.iv.next1616, %i.yd
  br i1 %i.ye, label %bb.fn, label %._crit_edge1410, !llvm.loop !325

bb.fn:                                            ; preds = %.lr.ph1409, %bb.fm
  %indvars.iv1615 = phi i64 [ 0, %.lr.ph1409 ], [ %indvars.iv.next1616, %bb.fm ] ; 2 uses
  %i.yf = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.yg = trunc i32 %i.yf to i16
  %i.yh = add i16 %i.yg, -1                       ; 2 uses
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.xz, i64 %indvars.iv1615
  store i16 %i.yh, ptr %i.yi, align 2, !tbaa !59
  %i.yj = sext i16 %i.yh to i32
  %i.yk = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1125 = icmp sgt i32 %i.yk, %i.yj
  br i1 %.not1125, label %bb.fm, label %.thread1234

._crit_edge1410:                                  ; preds = %bb.fm, %bb.fl
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %exitcond1622.not = icmp eq i64 %indvars.iv.next1619, %wide.trip.count1621
  br i1 %exitcond1622.not, label %._crit_edge1414, label %bb.fj, !llvm.loop !326

._crit_edge1414:                                  ; preds = %._crit_edge1410, %bb.fh
  %i.yl = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %i.ym = trunc i32 %i.yl to i8
  %i.yn = add i8 %i.ym, 1
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wv, i64 1588
  store i8 %i.yn, ptr %i.yo, align 4, !tbaa !115
  %i.yp = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4) ; 2 uses
  %i.yq = trunc i32 %i.yp to i8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wv, i64 1589 ; 2 uses
  store i8 %i.yq, ptr %i.yr, align 1, !tbaa !365
  %i.ys = getelementptr inbounds nuw i8, ptr %i.wv, i64 338 ; 11 uses
  store i16 0, ptr %i.ys, align 2, !tbaa !59
  %i.yt = and i32 %i.yp, 255
  %i.yu = shl nuw i32 1, %i.yt
  %i.yv = trunc i32 %i.yu to i16
  %i.yw = getelementptr inbounds nuw i8, ptr %i.wv, i64 340
  store i16 %i.yv, ptr %i.yw, align 4, !tbaa !59
  %i.yx = getelementptr inbounds nuw i8, ptr %i.wv, i64 1592 ; 6 uses
  store i32 2, ptr %i.yx, align 4, !tbaa !116
  %i.yy = load i8, ptr %i.wv, align 4, !tbaa !124 ; 2 uses
  %.not1490 = icmp eq i8 %i.yy, 0
  br i1 %.not1490, label %.lr.ph1423.preheader, label %.lr.ph1421

.lr.ph1421:                                       ; preds = %._crit_edge1414
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wv, i64 1
  %i.za = getelementptr inbounds nuw i8, ptr %i.wv, i64 33
  br label %bb.fo

.preheader1260:                                   ; preds = %._crit_edge1418
  %i.zb = icmp sgt i32 %i.aan, 0
  br i1 %i.zb, label %.lr.ph1423.preheader, label %._crit_edge1424

.lr.ph1423.preheader:                             ; preds = %._crit_edge1414, %.preheader1260
  %i.zc = phi i32 [ %i.aan, %.preheader1260 ], [ 2, %._crit_edge1414 ] ; 5 uses
  %wide.trip.count1629 = zext nneg i32 %i.zc to i64 ; 7 uses
  %min.iters.check1937 = icmp samesign ult i32 %i.zc, 8
  br i1 %min.iters.check1937, label %.lr.ph1423.preheader1955, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1423.preheader
  %i.zd = shl nuw nsw i64 %wide.trip.count1629, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.zd
  %2 = mul nuw nsw i64 %indvars.iv1642, 1596
  %i.ze = shl nuw nsw i64 %wide.trip.count1629, 1
  %i.zf = getelementptr i8, ptr %i.wu, i64 %2
  %i.zg = getelementptr i8, ptr %i.zf, i64 338
  %scevgep1935 = getelementptr i8, ptr %i.zg, i64 %i.ze
  %bound0 = icmp ult ptr %1, %scevgep1935
  %bound1 = icmp ult ptr %i.ys, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1423.preheader1955, label %vector.ph1938

vector.ph1938:                                    ; preds = %vector.memcheck
  %n.vec1939 = and i64 %wide.trip.count1629, 2147483640 ; 3 uses
  br label %vector.body1940

vector.body1940:                                  ; preds = %vector.body1940, %vector.ph1938
  %index1941 = phi i64 [ 0, %vector.ph1938 ], [ %index.next1945, %vector.body1940 ] ; 4 uses
  %vec.ind = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %vector.ph1938 ], [ %vec.ind.next, %vector.body1940 ] ; 3 uses
  %step.add = add <4 x i16> %vec.ind, splat (i16 4)
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %index1941 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %wide.load1942 = load <4 x i16>, ptr %i.zh, align 2, !tbaa !59, !alias.scope !366
  %wide.load1943 = load <4 x i16>, ptr %i.zi, align 2, !tbaa !59, !alias.scope !366
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1941
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1941
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %interleaved.vec = shufflevector <4 x i16> %wide.load1942, <4 x i16> %vec.ind, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.zj, align 16, !tbaa !59, !alias.scope !367, !noalias !366
  %interleaved.vec1944 = shufflevector <4 x i16> %wide.load1943, <4 x i16> %step.add, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec1944, ptr %i.zl, align 16, !tbaa !59, !alias.scope !367, !noalias !366
  %index.next1945 = add nuw i64 %index1941, 8     ; 2 uses
  %vec.ind.next = add <4 x i16> %vec.ind, splat (i16 8)
  %i.zm = icmp eq i64 %index.next1945, %n.vec1939
  br i1 %i.zm, label %middle.block1946, label %vector.body1940, !llvm.loop !330

middle.block1946:                                 ; preds = %vector.body1940
  %cmp.n1947 = icmp eq i64 %n.vec1939, %wide.trip.count1629
  br i1 %cmp.n1947, label %._crit_edge1424, label %.lr.ph1423.preheader1955

.lr.ph1423.preheader1955:                         ; preds = %vector.memcheck, %.lr.ph1423.preheader, %middle.block1946
  %indvars.iv1626.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1423.preheader ], [ %n.vec1939, %middle.block1946 ] ; 3 uses
  %xtraiter2031 = and i64 %wide.trip.count1629, 3 ; 2 uses
  %lcmp.mod2032.not = icmp eq i64 %xtraiter2031, 0
  br i1 %lcmp.mod2032.not, label %.lr.ph1423.prol.loopexit, label %.lr.ph1423.prol

.lr.ph1423.prol:                                  ; preds = %.lr.ph1423.preheader1955, %.lr.ph1423.prol
  %indvars.iv1626.prol = phi i64 [ %indvars.iv.next1627.prol, %.lr.ph1423.prol ], [ %indvars.iv1626.ph, %.lr.ph1423.preheader1955 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1423.prol ], [ 0, %.lr.ph1423.preheader1955 ]
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %indvars.iv1626.prol
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !59
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1626.prol ; 2 uses
  store i16 %i.zo, ptr %i.zp, align 4, !tbaa !69
  %i.zq = trunc i64 %indvars.iv1626.prol to i16
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 2
  store i16 %i.zq, ptr %i.zr, align 2, !tbaa !368
  %indvars.iv.next1627.prol = add nuw nsw i64 %indvars.iv1626.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2031
  br i1 %prol.iter.cmp.not, label %.lr.ph1423.prol.loopexit, label %.lr.ph1423.prol, !llvm.loop !331

.lr.ph1423.prol.loopexit:                         ; preds = %.lr.ph1423.prol, %.lr.ph1423.preheader1955
  %indvars.iv1626.unr = phi i64 [ %indvars.iv1626.ph, %.lr.ph1423.preheader1955 ], [ %indvars.iv.next1627.prol, %.lr.ph1423.prol ]
  %i.zs = sub nsw i64 %indvars.iv1626.ph, %wide.trip.count1629
  %i.zt = icmp ugt i64 %i.zs, -4
  br i1 %i.zt, label %._crit_edge1424, label %.lr.ph1423

bb.fo:                                            ; preds = %.lr.ph1421, %._crit_edge1418
  %i.zu = phi i32 [ 2, %.lr.ph1421 ], [ %i.aan, %._crit_edge1418 ]
  %i.zv = phi i8 [ %i.yy, %.lr.ph1421 ], [ %i.aao, %._crit_edge1418 ]
  %indvars.iv1623 = phi i64 [ 0, %.lr.ph1421 ], [ %indvars.iv.next1624, %._crit_edge1418 ] ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yz, i64 %indvars.iv1623
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !50
  %i.zy = zext i8 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zy ; 2 uses
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !50
  %.not1491 = icmp eq i8 %i.aaa, 0
  br i1 %.not1491, label %._crit_edge1418, label %.lr.ph1417

.lr.ph1417:                                       ; preds = %bb.fo, %.lr.ph1417
  %.29781415 = phi i32 [ %i.aaj, %.lr.ph1417 ], [ 0, %bb.fo ]
  %i.aab = load i8, ptr %i.yr, align 1, !tbaa !365
  %i.aac = zext i8 %i.aab to i32
  %i.aad = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.aac)
  %i.aae = trunc i32 %i.aad to i16
  %i.aaf = load i32, ptr %i.yx, align 4, !tbaa !116 ; 2 uses
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [2 x i8], ptr %i.ys, i64 %i.aag
  store i16 %i.aae, ptr %i.aah, align 2, !tbaa !59
  %i.aai = add nsw i32 %i.aaf, 1                  ; 2 uses
  store i32 %i.aai, ptr %i.yx, align 4, !tbaa !116
  %i.aaj = add nuw nsw i32 %.29781415, 1          ; 2 uses
  %i.aak = load i8, ptr %i.zz, align 1, !tbaa !50
  %i.aal = zext i8 %i.aak to i32
  %i.aam = icmp samesign ult i32 %i.aaj, %i.aal
  br i1 %i.aam, label %.lr.ph1417, label %._crit_edge1418.loopexit, !llvm.loop !332

._crit_edge1418.loopexit:                         ; preds = %.lr.ph1417
  %.pre1706 = load i8, ptr %i.wv, align 4, !tbaa !124
  br label %._crit_edge1418

._crit_edge1418:                                  ; preds = %._crit_edge1418.loopexit, %bb.fo
  %i.aan = phi i32 [ %i.aai, %._crit_edge1418.loopexit ], [ %i.zu, %bb.fo ] ; 4 uses
  %i.aao = phi i8 [ %.pre1706, %._crit_edge1418.loopexit ], [ %i.zv, %bb.fo ] ; 2 uses
  %indvars.iv.next1624 = add nuw nsw i64 %indvars.iv1623, 1 ; 2 uses
  %i.aap = zext i8 %i.aao to i64
  %i.aaq = icmp samesign ult i64 %indvars.iv.next1624, %i.aap
  br i1 %i.aaq, label %bb.fo, label %.preheader1260, !llvm.loop !333

.lr.ph1423:                                       ; preds = %.lr.ph1423.prol.loopexit, %.lr.ph1423
  %indvars.iv1626 = phi i64 [ %indvars.iv.next1627.3, %.lr.ph1423 ], [ %indvars.iv1626.unr, %.lr.ph1423.prol.loopexit ] ; 7 uses
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %indvars.iv1626
  %i.aas = load i16, ptr %i.aar, align 2, !tbaa !59
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1626 ; 2 uses
  store i16 %i.aas, ptr %i.aat, align 4, !tbaa !69
  %i.aau = trunc i64 %indvars.iv1626 to i16
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 2
  store i16 %i.aau, ptr %i.aav, align 2, !tbaa !368
  %indvars.iv.next1627 = add nuw nsw i64 %indvars.iv1626, 1 ; 3 uses
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %indvars.iv.next1627
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !59
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1627 ; 2 uses
  store i16 %i.aax, ptr %i.aay, align 4, !tbaa !69
  %i.aaz = trunc i64 %indvars.iv.next1627 to i16
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 2
  store i16 %i.aaz, ptr %i.aba, align 2, !tbaa !368
  %indvars.iv.next1627.1 = add nuw nsw i64 %indvars.iv1626, 2 ; 3 uses
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %indvars.iv.next1627.1
  %i.abc = load i16, ptr %i.abb, align 2, !tbaa !59
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1627.1 ; 2 uses
  store i16 %i.abc, ptr %i.abd, align 4, !tbaa !69
  %i.abe = trunc i64 %indvars.iv.next1627.1 to i16
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 2
  store i16 %i.abe, ptr %i.abf, align 2, !tbaa !368
  %indvars.iv.next1627.2 = add nuw nsw i64 %indvars.iv1626, 3 ; 3 uses
  %i.abg = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %indvars.iv.next1627.2
  %i.abh = load i16, ptr %i.abg, align 2, !tbaa !59
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1627.2 ; 2 uses
  store i16 %i.abh, ptr %i.abi, align 4, !tbaa !69
  %i.abj = trunc i64 %indvars.iv.next1627.2 to i16
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 2
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !368
  %indvars.iv.next1627.3 = add nuw nsw i64 %indvars.iv1626, 4 ; 2 uses
  %exitcond1630.not.3 = icmp eq i64 %indvars.iv.next1627.3, %wide.trip.count1629
  br i1 %exitcond1630.not.3, label %._crit_edge1424, label %.lr.ph1423, !llvm.loop !334

._crit_edge1424:                                  ; preds = %.lr.ph1423.prol.loopexit, %.lr.ph1423, %middle.block1946, %.preheader1260
  %i.abl = phi i32 [ %i.aan, %.preheader1260 ], [ %i.zc, %middle.block1946 ], [ %i.zc, %.lr.ph1423 ], [ %i.zc, %.lr.ph1423.prol.loopexit ]
  %i.abm = sext i32 %i.abl to i64
  call void @qsort(ptr noundef nonnull %1, i64 noundef %i.abm, i64 noundef 4, ptr noundef nonnull @point_compare) #30
  %i.abn = load i32, ptr %i.yx, align 4, !tbaa !116 ; 3 uses
  %i.abo = call i32 @llvm.smax.i32(i32 %i.abn, i32 1)
  %smax = add nsw i32 %i.abo, -1                  ; 2 uses
  %wide.trip.count1634 = zext nneg i32 %smax to i64
  %exitcond1635.not1930 = icmp eq i32 %smax, 0
  br i1 %exitcond1635.not1930, label %.preheader1259, label %.lr.ph1932

bb.fp:                                            ; preds = %.lr.ph1932
  %exitcond1635.not = icmp eq i64 %indvars.iv.next1632, %wide.trip.count1634
  br i1 %exitcond1635.not, label %.preheader1259, label %.lr.ph1932, !llvm.loop !335

.preheader1259:                                   ; preds = %bb.fp, %._crit_edge1424
  %i.abp = icmp sgt i32 %i.abn, 0
  br i1 %i.abp, label %.lr.ph1427, label %._crit_edge1430

.lr.ph1427:                                       ; preds = %.preheader1259
  %i.abq = getelementptr inbounds nuw i8, ptr %i.wv, i64 838
  br label %bb.fq

.lr.ph1932:                                       ; preds = %._crit_edge1424, %bb.fp
  %indvars.iv16311931 = phi i64 [ %indvars.iv.next1632, %bb.fp ], [ 0, %._crit_edge1424 ] ; 2 uses
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv16311931
  %i.abs = load i16, ptr %i.abr, align 4, !tbaa !69
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv16311931, 1 ; 3 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1632
  %i.abu = load i16, ptr %i.abt, align 4, !tbaa !69
  %i.abv = icmp eq i16 %i.abs, %i.abu
  br i1 %i.abv, label %.thread1234, label %bb.fp, !llvm.loop !335

.preheader1258:                                   ; preds = %bb.fq
  %i.abw = icmp sgt i32 %i.acd, 2
  br i1 %i.abw, label %.lr.ph1429, label %._crit_edge1430

.lr.ph1429:                                       ; preds = %.preheader1258
  %i.abx = getelementptr inbounds nuw i8, ptr %i.wv, i64 1088
  br label %bb.fr

bb.fq:                                            ; preds = %.lr.ph1427, %bb.fq
  %indvars.iv1636 = phi i64 [ 0, %.lr.ph1427 ], [ %indvars.iv.next1637, %bb.fq ] ; 3 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1636
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !368
  %i.acb = trunc i16 %i.aca to i8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abq, i64 %indvars.iv1636
  store i8 %i.acb, ptr %i.acc, align 1, !tbaa !50
  %indvars.iv.next1637 = add nuw nsw i64 %indvars.iv1636, 1 ; 2 uses
  %i.acd = load i32, ptr %i.yx, align 4, !tbaa !116 ; 3 uses
  %i.ace = sext i32 %i.acd to i64
  %i.acf = icmp slt i64 %indvars.iv.next1637, %i.ace
  br i1 %i.acf, label %bb.fq, label %.preheader1258, !llvm.loop !336

bb.fr:                                            ; preds = %.lr.ph1429, %neighbors.exit
  %indvars.iv1639 = phi i64 [ 2, %.lr.ph1429 ], [ %indvars.iv.next1640, %neighbors.exit ] ; 4 uses
end_hunk_4
