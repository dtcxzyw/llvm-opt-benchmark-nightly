inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@seed_chase:bb.a
  store float %.sink, ptr %i.ai, align 4
  %.2 = add nsw i64 %.07380.sink, 1
  %i.aj = add nuw nsw i64 %.06981, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !921

bb.k:                                             ; preds = %.lr.ph89, %._crit_edge
  %.17087 = phi i64 [ 0, %.lr.ph89 ], [ %i.bh, %._crit_edge ] ; 7 uses
  %.07186 = phi i64 [ 0, %.lr.ph89 ], [ %.172.lcssa, %._crit_edge ] ; 6 uses
  %i.ak = icmp slt i64 %.17087, %.07380.sink
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.al = add nuw nsw i64 %.17087, 1              ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.al
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.17087
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp ogt float %i.an, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.as = load i64, ptr %i.ar, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.17087
  %i.au = load i64, ptr %i.at, align 8
  %i.av = add i64 %i.i, %i.au
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.as, %bb.m ], [ %i.av, %bb.n ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.0, i64 %2) ; 5 uses
  %i.aw = icmp slt i64 %.07186, %spec.select
  br i1 %i.aw, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.17087
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = sub i64 %spec.select, %.07186           ; 3 uses
  %min.iters.check = icmp ult i64 %i.az, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84
  %n.vec = and i64 %i.az, -8                      ; 3 uses
  %i.ba = add i64 %.07186, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ay, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %0, i64 %.07186
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x float> %broadcast.splat, ptr %i.bc, align 4
  store <4 x float> %broadcast.splat, ptr %i.bd, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !922

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph84, %middle.block
  %.17283.ph = phi i64 [ %.07186, %.lr.ph84 ], [ %i.ba, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.17283 = phi i64 [ %i.bg, %scalar.ph ], [ %.17283.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.17283
  store float %i.ay, ptr %i.bf, align 4
  %i.bg = add nsw i64 %.17283, 1                  ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bg, %spec.select
  br i1 %exitcond92.not, label %._crit_edge, label %scalar.ph, !llvm.loop !923

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.o
  %.172.lcssa = phi i64 [ %.07186, %bb.o ], [ %spec.select, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.bh = add nuw nsw i64 %.17087, 1
  %exitcond93.not = icmp eq i64 %.17087, %.07380.sink
  br i1 %exitcond93.not, label %._crit_edge90, label %bb.k, !llvm.loop !924

._crit_edge90:                                    ; preds = %._crit_edge, %bb.a, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradf4(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 6 uses
  %i.b = shl i32 %i.a, 1                          ; 2 uses
  %i.c = icmp slt i32 %1, 1                       ; 4 uses
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = mul i32 %i.a, 3
  %i.e = shl i32 %0, 1
  %i.f = sext i32 %i.a to i64                     ; 5 uses
  %i.g = sext i32 %0 to i64                       ; 3 uses
  %i.h = sext i32 %i.d to i64                     ; 5 uses
  %i.i = sext i32 %i.b to i64                     ; 5 uses
  %i.j = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %ident.check = icmp ne i32 %0, 1
  %i.k = add nsw i32 %1, -1                       ; 2 uses
  %mul.result = shl i32 %i.k, 2
  %mul.overflow = icmp ugt i32 %i.k, 1073741823
  %i.l = icmp ugt i32 %mul.result, 2147483643
  %i.m = or i1 %i.l, %mul.overflow
  %i.n = or i1 %ident.check, %i.m
  br i1 %i.n, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.o = shl nuw i32 %1, 1
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2                      ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.q
  %i.r = add nsw i32 %1, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 4 uses
  %i.u = getelementptr i8, ptr %2, i64 %i.q
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %scevgep322 = getelementptr i8, ptr %i.v, i64 4
  %i.w = shl nuw nsw i64 %i.s, 4
  %i.x = getelementptr i8, ptr %3, i64 %i.w
  %scevgep323 = getelementptr i8, ptr %i.x, i64 16 ; 4 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.t
  %scevgep324 = getelementptr i8, ptr %i.y, i64 4
  %i.z = mul i32 %1, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  %scevgep325 = getelementptr i8, ptr %2, i64 %i.ab
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.t
  %scevgep326 = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = zext nneg i32 %1 to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %scevgep327 = getelementptr i8, ptr %2, i64 %i.af
  %i.ag = getelementptr i8, ptr %2, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.t
  %scevgep328 = getelementptr i8, ptr %i.ah, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep323
  %bound1 = icmp ult ptr %3, %scevgep322
  %found.conflict = and i1 %bound0, %bound1
  %bound0329 = icmp ult ptr %2, %scevgep323
  %bound1330 = icmp ult ptr %3, %scevgep324
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx = or i1 %found.conflict, %found.conflict331
  %bound0332 = icmp ult ptr %scevgep325, %scevgep323
  %bound1333 = icmp ult ptr %3, %scevgep326
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx, %found.conflict334
  %bound0336 = icmp ult ptr %scevgep327, %scevgep323
  %bound1337 = icmp ult ptr %3, %scevgep328
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  br i1 %conflict.rdx339, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2147483644               ; 6 uses
  %i.ai = add nsw i64 %n.vec, %i.i
  %i.aj = add nsw i64 %n.vec, %i.h
  %i.ak = add nuw nsw i64 %n.vec, %i.f
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %invariant.gep891 = getelementptr [4 x i8], ptr %2, i64 %i.f
  %invariant.gep893 = getelementptr [4 x i8], ptr %2, i64 %i.h
  %invariant.gep895 = getelementptr [4 x i8], ptr %2, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.am = trunc i64 %index to i32
  %gep892 = getelementptr [4 x i8], ptr %invariant.gep891, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %gep892, align 4, !alias.scope !925, !noalias !928
  %gep894 = getelementptr [4 x i8], ptr %invariant.gep893, i64 %index ; 2 uses
  %wide.load340 = load <4 x float>, ptr %gep894, align 4, !alias.scope !930, !noalias !928
  %i.an = fadd <4 x float> %wide.load, %wide.load340 ; 2 uses
  %sext = shl i64 %index, 32
  %i.ao = ashr exact i64 %sext, 30
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao ; 2 uses
  %wide.load341 = load <4 x float>, ptr %i.ap, align 4, !alias.scope !932, !noalias !928
  %gep896 = getelementptr [4 x i8], ptr %invariant.gep895, i64 %index ; 2 uses
  %wide.load342 = load <4 x float>, ptr %gep896, align 4, !alias.scope !934, !noalias !928
  %i.aq = fadd <4 x float> %wide.load341, %wide.load342 ; 2 uses
  %i.ar = fadd <4 x float> %i.an, %i.aq
  %i.as = shl i32 %i.am, 2
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %3, i64 %i.at
  %wide.load343 = load <4 x float>, ptr %i.ap, align 4, !alias.scope !932, !noalias !928
  %wide.load344 = load <4 x float>, ptr %gep896, align 4, !alias.scope !934, !noalias !928
  %i.av = fsub <4 x float> %wide.load343, %wide.load344
  %wide.load345 = load <4 x float>, ptr %gep894, align 4, !alias.scope !930, !noalias !928
  %wide.load346 = load <4 x float>, ptr %gep892, align 4, !alias.scope !925, !noalias !928
  %i.aw = shufflevector <4 x float> %i.ar, <4 x float> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x float> %wide.load345, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %wide.load346, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = fsub <8 x float> %7, %8
  %interleaved.vec = shufflevector <8 x float> %i.aw, <8 x float> %9, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.au, align 4, !alias.scope !928
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv264.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph ], [ %i.ai, %middle.block ]
  %indvars.iv262.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph ], [ %i.aj, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.f, %vector.memcheck ], [ %i.f, %vector.scevcheck ], [ %i.f, %.lr.ph ], [ %i.ak, %middle.block ]
  %.0231240.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.al, %middle.block ] ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %scalar.ph ], [ %indvars.iv264.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %scalar.ph ], [ %indvars.iv262.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0224243 = phi i32 [ %i.cd, %scalar.ph ], [ %.0231240.ph, %scalar.ph.preheader ]
  %.0231240 = phi i32 [ %i.bo, %scalar.ph ], [ %.0231240.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv262 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fadd float %i.az, %i.bb                 ; 2 uses
  %i.bd = sext i32 %.0231240 to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bd ; 2 uses
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv264 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fadd float %i.bf, %i.bh                 ; 2 uses
  %i.bj = fadd float %i.bc, %i.bi
  %i.bk = shl i32 %.0231240, 2                    ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bl
  store float %i.bj, ptr %i.bm, align 4
  %i.bn = fsub float %i.bi, %i.bc
  %i.bo = add i32 %.0231240, %0                   ; 2 uses
  %i.bp = shl i32 %i.bo, 2
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %3, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  store float %i.bn, ptr %i.bs, align 4
  %i.bt = load float, ptr %i.be, align 4
  %i.bu = load float, ptr %i.bg, align 4
  %i.bv = fsub float %i.bt, %i.bu
  %i.bw = add nsw i32 %i.bk, %i.e
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %3, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  store float %i.bv, ptr %i.bz, align 4
  %i.ca = load float, ptr %i.ba, align 4
  %i.cb = load float, ptr %i.ay, align 4
  %i.cc = fsub float %i.ca, %i.cb
  store float %i.cc, ptr %i.by, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, %i.g
  %indvars.iv.next265 = add nsw i64 %indvars.iv264, %i.g
  %i.cd = add nuw nsw i32 %.0224243, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, %1
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !937

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ce = icmp slt i32 %0, 2
  br i1 %i.ce, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cf = icmp eq i32 %0, 2
  br i1 %i.cf, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.c, label %._crit_edge254.split, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader
  %i.cg = shl nuw i32 %0, 1                       ; 2 uses
  %i.ch = zext nneg i32 %0 to i64                 ; 7 uses
  %i.ci = sext i32 %i.a to i64                    ; 11 uses
  %i.cj = shl i32 %0, 2                           ; 2 uses
  %i.ck = sext i32 %i.cg to i64                   ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.ci ; 2 uses
  %invariant.gep313 = getelementptr [4 x i8], ptr %3, i64 %i.ck ; 2 uses
  %invariant.gep315 = getelementptr [4 x i8], ptr %3, i64 %i.ck ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 4)
  %i.cl = add nsw i64 %umax, -3                   ; 2 uses
  %i.cm = shl nsw i64 %i.ci, 2                    ; 2 uses
  %i.cn = shl nuw nsw i64 %i.ch, 2
  %i.co = shl nsw i64 %i.ci, 3                    ; 2 uses
  %i.cp = mul nsw i64 %i.ci, 12                   ; 2 uses
  %scevgep361 = getelementptr i8, ptr %3, i64 4
  %umax363 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 4)
  %i.cq = shl nuw nsw i64 %umax363, 2
  %i.cr = add nsw i64 %i.cq, -12
  %i.cs = and i64 %i.cr, -8                       ; 11 uses
  %i.ct = add nuw nsw i64 %i.cs, 8                ; 4 uses
  %scevgep364 = getelementptr i8, ptr %3, i64 %i.ct
  %scevgep366 = getelementptr i8, ptr %3, i64 8
  %i.cu = getelementptr i8, ptr %3, i64 %i.cs
  %scevgep368 = getelementptr i8, ptr %i.cu, i64 12
  %i.cv = sub nsw i64 -12, %i.cs
  %scevgep370 = getelementptr i8, ptr %3, i64 %i.cv
  %scevgep372 = getelementptr i8, ptr %3, i64 -8
  %i.cw = sub nuw nsw i64 -8, %i.cs
  %scevgep374 = getelementptr i8, ptr %3, i64 %i.cw
  %scevgep376 = getelementptr i8, ptr %3, i64 -4
  %i.cx = shl nsw i64 %i.ck, 2                    ; 7 uses
  %i.cy = getelementptr i8, ptr %3, i64 %i.cx
  %scevgep378 = getelementptr i8, ptr %i.cy, i64 4
  %i.cz = add nsw i64 %i.cs, %i.cx                ; 2 uses
  %i.da = getelementptr i8, ptr %3, i64 %i.cz
  %scevgep380 = getelementptr i8, ptr %i.da, i64 8
  %i.db = getelementptr i8, ptr %3, i64 %i.cx
  %scevgep382 = getelementptr i8, ptr %i.db, i64 8
  %i.dc = getelementptr i8, ptr %3, i64 %i.cz
  %scevgep384 = getelementptr i8, ptr %i.dc, i64 12
  %i.dd = add nsw i64 %i.cx, -12
  %i.de = sub nsw i64 %i.dd, %i.cs
  %scevgep386 = getelementptr i8, ptr %3, i64 %i.de
  %i.df = getelementptr i8, ptr %3, i64 %i.cx
  %scevgep388 = getelementptr i8, ptr %i.df, i64 -8
  %i.dg = add nsw i64 %i.cx, -8
  %i.dh = sub nsw i64 %i.dg, %i.cs
  %scevgep390 = getelementptr i8, ptr %3, i64 %i.dh
  %i.di = getelementptr i8, ptr %3, i64 %i.cx
  %scevgep392 = getelementptr i8, ptr %i.di, i64 -4
  %scevgep394 = getelementptr i8, ptr %4, i64 %i.ct
  %scevgep395 = getelementptr i8, ptr %5, i64 %i.ct
  %scevgep396 = getelementptr i8, ptr %6, i64 %i.ct
  %scevgep397 = getelementptr i8, ptr %2, i64 4
  %i.dj = add nsw i32 %1, -1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.ch, %i.dk
  %i.dm = shl i64 %i.dl, 2                        ; 4 uses
  %i.dn = getelementptr i8, ptr %2, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.cs
  %scevgep398 = getelementptr i8, ptr %i.do, i64 12
  %i.dp = mul nsw i64 %i.ci, 12                   ; 2 uses
  %i.dq = getelementptr i8, ptr %2, i64 %i.dp
  %scevgep399 = getelementptr i8, ptr %i.dq, i64 4 ; 8 uses
  %i.dr = getelementptr i8, ptr %2, i64 %i.dm
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dp
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.cs
  %scevgep400 = getelementptr i8, ptr %i.dt, i64 12 ; 8 uses
  %i.du = shl nsw i64 %i.ci, 3                    ; 2 uses
  %i.dv = getelementptr i8, ptr %2, i64 %i.du
  %scevgep401 = getelementptr i8, ptr %i.dv, i64 4 ; 8 uses
  %i.dw = getelementptr i8, ptr %2, i64 %i.dm
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.cs
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.du
  %scevgep402 = getelementptr i8, ptr %i.dy, i64 12 ; 8 uses
  %i.dz = shl nsw i64 %i.ci, 2                    ; 2 uses
  %i.ea = getelementptr i8, ptr %2, i64 %i.dz
  %scevgep403 = getelementptr i8, ptr %i.ea, i64 4 ; 8 uses
  %i.eb = getelementptr i8, ptr %2, i64 %i.dm
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.cs
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dz
  %scevgep404 = getelementptr i8, ptr %i.ed, i64 12 ; 8 uses
  %i.ee = insertelement <4 x ptr> poison, ptr %scevgep394, i64 0
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %scevgep395, i64 1
  %i.eg = insertelement <4 x ptr> %i.ef, ptr %scevgep396, i64 2
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %scevgep398, i64 3 ; 8 uses
  %i.ei = insertelement <4 x ptr> poison, ptr %4, i64 0
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %5, i64 1
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %6, i64 2
  %i.el = insertelement <4 x ptr> %i.ek, ptr %scevgep397, i64 3 ; 8 uses
  %i.em = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 4)
  %i.en = add nsw i64 %i.em, -3                   ; 2 uses
  %i.eo = lshr i64 %i.en, 1
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check741 = icmp ult i64 %i.en, 38
  %i.eq = getelementptr i8, ptr %2, i64 %i.cp
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = getelementptr i8, ptr %2, i64 %i.cp
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %i.eu = getelementptr i8, ptr %2, i64 %i.co
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = getelementptr i8, ptr %2, i64 %i.co
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %i.ey = getelementptr i8, ptr %2, i64 %i.cm
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %i.fa = getelementptr i8, ptr %2, i64 %i.cm
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = shl nsw i64 %i.cl, 2
  %mul.result353 = and i64 %i.fc, -8              ; 6 uses
  %mul.overflow354 = icmp ugt i64 %i.cl, 4611686018427387903
  %n.vec744 = and i64 %i.ep, 9223372036854775804  ; 4 uses
  %i.fd = shl nuw i64 %n.vec744, 1
  %i.fe = shl nuw i64 %n.vec744, 1                ; 3 uses
  %i.ff = or disjoint i64 %i.fe, 2
  %cmp.n775 = icmp eq i64 %i.ep, %n.vec744
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %._crit_edge250
  %indvar = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvar.next, %._crit_edge250 ] ; 2 uses
  %indvars.iv281 = phi i32 [ %i.cg, %.lr.ph249.preheader ], [ %indvars.iv.next282, %._crit_edge250 ] ; 3 uses
  %indvars.iv277 = phi i32 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next278, %._crit_edge250 ] ; 3 uses
  %indvars.iv273 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next274, %._crit_edge250 ] ; 6 uses
  %.1252 = phi i32 [ 0, %.lr.ph249.preheader ], [ %i.nt, %._crit_edge250 ]
end_hunk_0
