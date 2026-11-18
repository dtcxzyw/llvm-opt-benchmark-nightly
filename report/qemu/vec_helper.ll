Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_sve2_sqrdmulh_b:iter.check
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.o, align 1
  %i.p = sext <16 x i8> %wide.load to <16 x i32>
  %i.q = sext <16 x i8> %wide.load15 to <16 x i32>
  %i.r = mul nsw <16 x i32> %i.q, %i.p
  %i.s = add nsw <16 x i32> %i.r, splat (i32 64)
  %i.t = ashr <16 x i32> %i.s, splat (i32 7)
  %i.u = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.t, <16 x i32> splat (i32 127))
  %i.v = trunc nsw <16 x i32> %i.u to <16 x i8>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.v, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !17

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index17.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index17 = phi i64 [ %index.next20, %vec.epilog.vector.body ], [ %index17.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index17
  %wide.load18 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index17
  %wide.load19 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = sext <8 x i8> %wide.load18 to <8 x i32>
  %i.ab = sext <8 x i8> %wide.load19 to <8 x i32>
  %i.ac = mul nsw <8 x i32> %i.ab, %i.aa
  %i.ad = add nsw <8 x i32> %i.ac, splat (i32 64)
  %i.ae = ashr <8 x i32> %i.ad, splat (i32 7)
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ae, <8 x i32> splat (i32 127))
  %i.ag = trunc nsw <8 x i32> %i.af to <8 x i8>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index17
  store <8 x i8> %i.ag, ptr %i.ah, align 1
  %index.next20 = add nuw i64 %index17, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next20, %i.g
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bg, %vec.epilog.scalar.ph ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.012
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.ak to i32
  %i.ao = sext i8 %i.am to i32
  %i.ap = mul nsw i32 %i.ao, %i.an
  %i.aq = add nsw i32 %i.ap, 64
  %i.ar = ashr i32 %i.aq, 7
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 127)
  %i.as = trunc nsw i32 %.1.i to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.as, ptr %i.at, align 1
  %i.au = or disjoint i64 %.012, 1                ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = sext i8 %i.aw to i32
  %i.ba = sext i8 %i.ay to i32
  %i.bb = mul nsw i32 %i.ba, %i.az
  %i.bc = add nsw i32 %i.bb, 64
  %i.bd = ashr i32 %i.bc, 7
  %.1.i.1 = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 127)
  %i.be = trunc nsw i32 %.1.i.1 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = add nuw nsw i64 %.012, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bg, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local signext i16 @do_sqrdmlah_h(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = sext i16 %1 to i32
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %spec.select = select i1 %3, i32 %i.d, i32 %i.c
  %i.e = sext i16 %2 to i32
  %i.f = shl nsw i32 %i.e, 15
  %i.g = select i1 %4, i32 16384, i32 0
  %i.h = add nsw i32 %spec.select, %i.f
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = ashr i32 %i.i, 15                        ; 3 uses
  %i.k = add nsw i32 %i.j, 32768
  %.not = icmp ult i32 %i.k, 65536
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %5, align 4
  %i.l = icmp slt i32 %i.j, 0
  %i.m = select i1 %i.l, i32 -32768, i32 32767
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.m, %bb.b ], [ %i.j, %bb.a ]
  %i.n = trunc nsw i32 %.1 to i16
  ret i16 %i.n
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrdmlah_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.b = shl i32 %1, 16
  %i.c = ashr exact i32 %i.b, 16
  %i.d = shl i32 %2, 16
  %i.e = ashr exact i32 %i.d, 16
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = shl i32 %3, 16
  %i.h = ashr exact i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 16384
  %i.j = add i32 %i.i, %i.f
  %i.k = ashr i32 %i.j, 15                        ; 3 uses
  %i.l = add nsw i32 %i.k, 32768
  %.not.i = icmp ult i32 %i.l, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  %i.m = icmp slt i32 %i.k, 0
  %i.n = select i1 %i.m, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %i.k, %bb.a ]
  %i.o = ashr i32 %1, 16
  %i.p = ashr i32 %2, 16
  %i.q = mul nsw i32 %i.p, %i.o
  %i.r = ashr i32 %3, 1
  %i.s = and i32 %i.r, -32768
  %i.t = add nsw i32 %i.q, 16384
  %i.u = add i32 %i.t, %i.s
  %i.v = ashr i32 %i.u, 15                        ; 3 uses
  %i.w = add nsw i32 %i.v, 32768
  %.not.i10 = icmp ult i32 %i.w, 65536
  br i1 %.not.i10, label %do_sqrdmlah_h.exit12, label %bb.c

bb.c:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %i.a, align 4
  %i.x = icmp slt i32 %i.v, 0
  %i.y = select i1 %i.x, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit12

do_sqrdmlah_h.exit12:                             ; preds = %do_sqrdmlah_h.exit, %bb.c
  %.1.i11 = phi i32 [ %i.y, %bb.c ], [ %i.v, %do_sqrdmlah_h.exit ]
  %i.z = and i32 %.1.i, 65535
  %i.aa = shl nsw i32 %.1.i11, 16
  %i.ab = or disjoint i32 %i.aa, %i.z
  ret i32 %i.ab
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_qrdmlah_s16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  br label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.g         ; 2 uses
  %bound0.a = icmp ult ptr %3, %i.j
  %bound1 = icmp ult ptr %0, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound038 = icmp ult ptr %3, %5
  %bound139 = icmp ult ptr %1, %i.i
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %3, %6
  %bound142 = icmp ult ptr %2, %i.i
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  %bound045 = icmp ult ptr %0, %5
  %bound146 = icmp ult ptr %1, %i.j
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  %bound049 = icmp ult ptr %0, %6
  %bound150 = icmp ult ptr %2, %i.j
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  br i1 %conflict.rdx52, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.k, align 2, !alias.scope !44
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load53 = load <4 x i16>, ptr %i.l, align 2, !alias.scope !45
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load54 = load <4 x i16>, ptr %i.m, align 2, !alias.scope !46, !noalias !47
  %i.n = sext <4 x i16> %wide.load to <4 x i32>
  %i.o = sext <4 x i16> %wide.load53 to <4 x i32>
  %i.p = mul nsw <4 x i32> %i.o, %i.n
  %i.q = sext <4 x i16> %wide.load54 to <4 x i32>
  %i.r = shl nsw <4 x i32> %i.q, splat (i32 15)
  %i.s = add nsw <4 x i32> %i.p, splat (i32 16384)
  %i.t = add nsw <4 x i32> %i.s, %i.r
  %i.u = ashr <4 x i32> %i.t, splat (i32 15)      ; 3 uses
  %i.v = add nsw <4 x i32> %i.u, splat (i32 -32768)
  %i.w = icmp ult <4 x i32> %i.v, splat (i32 -65536) ; 2 uses
  %i.x = bitcast <4 x i1> %i.w to i4
  %.not = icmp eq i4 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %3, align 4, !alias.scope !48, !noalias !49
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.y = icmp slt <4 x i32> %i.u, zeroinitializer
  %i.z = select <4 x i1> %i.y, <4 x i32> splat (i32 32768), <4 x i32> splat (i32 32767)
  %predphi = select <4 x i1> %i.w, <4 x i32> %i.z, <4 x i32> %i.u
  %i.aa = trunc <4 x i32> %predphi to <4 x i16>
  store <4 x i16> %i.aa, ptr %i.m, align 2, !alias.scope !46, !noalias !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %i.h
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !42

scalar.ph:                                        ; preds = %scalar.ph.preheader, %do_sqrdmlah_h.exit
  %.018 = phi i64 [ %i.au, %do_sqrdmlah_h.exit ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.018
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.018
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = sext i16 %i.ad to i32
  %i.aj = sext i16 %i.af to i32
  %i.ak = mul nsw i32 %i.aj, %i.ai
  %i.al = sext i16 %i.ah to i32
  %i.am = shl nsw i32 %i.al, 15
  %i.an = add nsw i32 %i.ak, 16384
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = ashr i32 %i.ao, 15                      ; 3 uses
  %i.aq = add nsw i32 %i.ap, 32768
  %.not.i = icmp ult i32 %i.aq, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  store i32 1, ptr %3, align 4
  %i.ar = icmp slt i32 %i.ap, 0
  %i.as = select i1 %i.ar, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %scalar.ph, %bb.d
  %.1.i = phi i32 [ %i.as, %bb.d ], [ %i.ap, %scalar.ph ]
  %i.at = trunc nsw i32 %.1.i to i16
  store i16 %i.at, ptr %i.ag, align 2
  %i.au = add nuw nsw i64 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.h
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !43

middle.block:                                     ; preds = %bb.c, %do_sqrdmlah_h.exit
  %i.av = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.av, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %middle.block
  %i.aw = add nuw nsw i32 %i.e, 8
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %0, i64 %i.g
  %i.az = xor i64 %i.g, -1
  %i.ba = add nsw i64 %i.az, %i.ax
  %i.bb = and i64 %i.ba, -8
  %i.bc = add nsw i64 %i.bb, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 range(i64 0, 8185) %i.bc, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrdmlsh_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.b = shl i32 %1, 16
  %i.c = ashr exact i32 %i.b, 16
  %i.d = shl i32 %2, 16
  %i.e = ashr exact i32 %i.d, 16
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = shl i32 %3, 16
  %i.h = ashr exact i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 16384
  %i.j = sub nsw i32 %i.i, %i.f
  %i.k = ashr i32 %i.j, 15                        ; 3 uses
  %i.l = add nsw i32 %i.k, 32768
  %.not.i = icmp ult i32 %i.l, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  %i.m = icmp slt i32 %i.k, 0
  %i.n = select i1 %i.m, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %i.k, %bb.a ]
  %i.o = ashr i32 %1, 16
  %i.p = ashr i32 %2, 16
  %i.q = mul nsw i32 %i.p, %i.o
  %i.r = ashr i32 %3, 1
  %i.s = and i32 %i.r, -32768
  %reass.sub = sub i32 %i.s, %i.q
  %i.t = add i32 %reass.sub, 16384
  %i.u = ashr i32 %i.t, 15                        ; 3 uses
  %i.v = add nsw i32 %i.u, 32768
  %.not.i10 = icmp ult i32 %i.v, 65536
  br i1 %.not.i10, label %do_sqrdmlah_h.exit12, label %bb.c

bb.c:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %i.a, align 4
  %i.w = icmp slt i32 %i.u, 0
  %i.x = select i1 %i.w, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit12

do_sqrdmlah_h.exit12:                             ; preds = %do_sqrdmlah_h.exit, %bb.c
  %.1.i11 = phi i32 [ %i.x, %bb.c ], [ %i.u, %do_sqrdmlah_h.exit ]
  %i.y = and i32 %.1.i, 65535
  %i.z = shl nsw i32 %.1.i11, 16
  %i.aa = or disjoint i32 %i.z, %i.y
  ret i32 %i.aa
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_qrdmlsh_s16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a
  br label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.g         ; 2 uses
  %bound0.a = icmp ult ptr %3, %i.j
  %bound1 = icmp ult ptr %0, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound038 = icmp ult ptr %3, %5
  %bound139 = icmp ult ptr %1, %i.i
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %3, %6
  %bound142 = icmp ult ptr %2, %i.i
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  %bound045 = icmp ult ptr %0, %5
  %bound146 = icmp ult ptr %1, %i.j
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  %bound049 = icmp ult ptr %0, %6
  %bound150 = icmp ult ptr %2, %i.j
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  br i1 %conflict.rdx52, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.k, align 2, !alias.scope !57
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load53 = load <4 x i16>, ptr %i.l, align 2, !alias.scope !58
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load54 = load <4 x i16>, ptr %i.m, align 2, !alias.scope !59, !noalias !60
  %i.n = sext <4 x i16> %wide.load to <4 x i32>
  %i.o = sext <4 x i16> %wide.load53 to <4 x i32>
  %i.p = mul nsw <4 x i32> %i.o, %i.n
  %i.q = sext <4 x i16> %wide.load54 to <4 x i32>
  %i.r = shl nsw <4 x i32> %i.q, splat (i32 15)
  %i.s = sub nsw <4 x i32> %i.r, %i.p
  %i.t = add nsw <4 x i32> %i.s, splat (i32 16384)
  %i.u = ashr <4 x i32> %i.t, splat (i32 15)      ; 3 uses
  %i.v = add nsw <4 x i32> %i.u, splat (i32 -32768)
  %i.w = icmp ult <4 x i32> %i.v, splat (i32 -65536) ; 2 uses
  %i.x = bitcast <4 x i1> %i.w to i4
  %.not = icmp eq i4 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %3, align 4, !alias.scope !61, !noalias !62
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.y = icmp slt <4 x i32> %i.u, zeroinitializer
  %i.z = select <4 x i1> %i.y, <4 x i32> splat (i32 32768), <4 x i32> splat (i32 32767)
  %predphi = select <4 x i1> %i.w, <4 x i32> %i.z, <4 x i32> %i.u
  %i.aa = trunc <4 x i32> %predphi to <4 x i16>
  store <4 x i16> %i.aa, ptr %i.m, align 2, !alias.scope !59, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %i.h
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !55

scalar.ph:                                        ; preds = %scalar.ph.preheader, %do_sqrdmlah_h.exit
  %.018 = phi i64 [ %i.at, %do_sqrdmlah_h.exit ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.018
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.018
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = sext i16 %i.ad to i32
  %i.aj = sext i16 %i.af to i32
  %i.ak = mul nsw i32 %i.aj, %i.ai
  %i.al = sext i16 %i.ah to i32
  %i.am = shl nsw i32 %i.al, 15
  %reass.sub = sub nsw i32 %i.am, %i.ak
  %i.an = add nsw i32 %reass.sub, 16384
  %i.ao = ashr i32 %i.an, 15                      ; 3 uses
  %i.ap = add nsw i32 %i.ao, 32768
  %.not.i = icmp ult i32 %i.ap, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  store i32 1, ptr %3, align 4
  %i.aq = icmp slt i32 %i.ao, 0
  %i.ar = select i1 %i.aq, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %scalar.ph, %bb.d
  %.1.i = phi i32 [ %i.ar, %bb.d ], [ %i.ao, %scalar.ph ]
  %i.as = trunc nsw i32 %.1.i to i16
  store i16 %i.as, ptr %i.ag, align 2
  %i.at = add nuw nsw i64 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.h
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !56

middle.block:                                     ; preds = %bb.c, %do_sqrdmlah_h.exit
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %middle.block
  %i.av = add nuw nsw i32 %i.e, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %0, i64 %i.g
  %i.ay = xor i64 %i.g, -1
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = and i64 %i.az, -8
  %i.bb = add nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 range(i64 0, 8185) %i.bb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqdmulh_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

scalar.ph.preheader.new:                          ; preds = %bb.a, %vector.memcheck
  br label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.g         ; 2 uses
  %bound0.a = icmp ult ptr %3, %i.j
  %bound1 = icmp ult ptr %0, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound037 = icmp ult ptr %3, %5
  %bound138 = icmp ult ptr %1, %i.i
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %3, %6
  %bound141 = icmp ult ptr %2, %i.i
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  %bound044 = icmp ult ptr %0, %5
  %bound145 = icmp ult ptr %1, %i.j
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ult ptr %0, %6
  %bound149 = icmp ult ptr %2, %i.j
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  br i1 %conflict.rdx51, label %scalar.ph.preheader.new, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.k, align 2, !alias.scope !70
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load52 = load <4 x i16>, ptr %i.l, align 2, !alias.scope !71
  %i.m = sext <4 x i16> %wide.load to <4 x i32>
  %i.n = sext <4 x i16> %wide.load52 to <4 x i32>
  %i.o = mul nsw <4 x i32> %i.n, %i.m
  %i.p = ashr <4 x i32> %i.o, splat (i32 15)      ; 2 uses
  %i.q = icmp sgt <4 x i32> %i.p, splat (i32 32767)
  %i.r = bitcast <4 x i1> %i.q to i4
  %.not = icmp eq i4 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %3, align 4, !alias.scope !72, !noalias !73
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.p, <4 x i32> splat (i32 32767))
  %i.s = trunc nsw <4 x i32> %predphi to <4 x i16>
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <4 x i16> %i.s, ptr %i.t, align 2, !alias.scope !74, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %i.h
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !68

scalar.ph:                                        ; preds = %do_sqrdmlah_h.exit.1, %scalar.ph.preheader.new
  %.016 = phi i64 [ 0, %scalar.ph.preheader.new ], [ %i.aq, %do_sqrdmlah_h.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.1, %do_sqrdmlah_h.exit.1 ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.w = load i16, ptr %i.v, align 2
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.y = load i16, ptr %i.x, align 2
  %i.z = sext i16 %i.w to i32
  %i.aa = sext i16 %i.y to i32
  %i.ab = mul nsw i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, 15                      ; 2 uses
  %.not.i = icmp slt i32 %i.ac, 32768
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %scalar.ph, %bb.d
  %.1.i = phi i32 [ 32767, %bb.d ], [ %i.ac, %scalar.ph ]
  %i.ad = trunc nsw i32 %.1.i to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = or disjoint i64 %.016, 1                ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.af
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sext i16 %i.ah to i32
  %i.al = sext i16 %i.aj to i32
  %i.am = mul nsw i32 %i.al, %i.ak
  %i.an = ashr i32 %i.am, 15                      ; 2 uses
  %.not.i.1 = icmp slt i32 %i.an, 32768
  br i1 %.not.i.1, label %do_sqrdmlah_h.exit.1, label %bb.e

bb.e:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit.1

do_sqrdmlah_h.exit.1:                             ; preds = %bb.e, %do_sqrdmlah_h.exit
  %.1.i.1 = phi i32 [ 32767, %bb.e ], [ %i.an, %do_sqrdmlah_h.exit ]
  %i.ao = trunc nsw i32 %.1.i.1 to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.016, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %middle.block, label %scalar.ph, !llvm.loop !69

middle.block:                                     ; preds = %bb.c, %do_sqrdmlah_h.exit.1
  %i.ar = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ar, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %middle.block
  %i.as = add nuw nsw i32 %i.e, 8
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %0, i64 %i.g
  %i.av = xor i64 %i.g, -1
  %i.aw = add nsw i64 %i.av, %i.at
  %i.ax = and i64 %i.aw, -8
  %i.ay = add nsw i64 %i.ax, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.au, i8 0, i64 range(i64 0, 8185) %i.ay, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqrdmulh_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

scalar.ph.preheader.new:                          ; preds = %bb.a, %vector.memcheck
  br label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.g         ; 2 uses
  %bound0.a = icmp ult ptr %3, %i.j
  %bound1 = icmp ult ptr %0, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound037 = icmp ult ptr %3, %5
  %bound138 = icmp ult ptr %1, %i.i
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %3, %6
  %bound141 = icmp ult ptr %2, %i.i
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  %bound044 = icmp ult ptr %0, %5
  %bound145 = icmp ult ptr %1, %i.j
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ult ptr %0, %6
  %bound149 = icmp ult ptr %2, %i.j
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  br i1 %conflict.rdx51, label %scalar.ph.preheader.new, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.k, align 2, !alias.scope !83
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load52 = load <4 x i16>, ptr %i.l, align 2, !alias.scope !84
  %i.m = sext <4 x i16> %wide.load to <4 x i32>
  %i.n = sext <4 x i16> %wide.load52 to <4 x i32>
  %i.o = mul nsw <4 x i32> %i.n, %i.m
  %i.p = add nsw <4 x i32> %i.o, splat (i32 16384)
  %i.q = ashr <4 x i32> %i.p, splat (i32 15)      ; 2 uses
  %i.r = icmp sgt <4 x i32> %i.q, splat (i32 32767)
  %i.s = bitcast <4 x i1> %i.r to i4
  %.not = icmp eq i4 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %3, align 4, !alias.scope !85, !noalias !86
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.q, <4 x i32> splat (i32 32767))
  %i.t = trunc nsw <4 x i32> %predphi to <4 x i16>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <4 x i16> %i.t, ptr %i.u, align 2, !alias.scope !87, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %i.h
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !81

scalar.ph:                                        ; preds = %do_sqrdmlah_h.exit.1, %scalar.ph.preheader.new
  %.016 = phi i64 [ 0, %scalar.ph.preheader.new ], [ %i.at, %do_sqrdmlah_h.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.1, %do_sqrdmlah_h.exit.1 ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.x = load i16, ptr %i.w, align 2
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sext i16 %i.x to i32
  %i.ab = sext i16 %i.z to i32
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = add nsw i32 %i.ac, 16384
  %i.ae = ashr i32 %i.ad, 15                      ; 2 uses
  %.not.i = icmp slt i32 %i.ae, 32768
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %scalar.ph, %bb.d
  %.1.i = phi i32 [ 32767, %bb.d ], [ %i.ae, %scalar.ph ]
  %i.af = trunc nsw i32 %.1.i to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = or disjoint i64 %.016, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ah
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = sext i16 %i.aj to i32
  %i.an = sext i16 %i.al to i32
  %i.ao = mul nsw i32 %i.an, %i.am
  %i.ap = add nsw i32 %i.ao, 16384
  %i.aq = ashr i32 %i.ap, 15                      ; 2 uses
  %.not.i.1 = icmp slt i32 %i.aq, 32768
  br i1 %.not.i.1, label %do_sqrdmlah_h.exit.1, label %bb.e

bb.e:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit.1

do_sqrdmlah_h.exit.1:                             ; preds = %bb.e, %do_sqrdmlah_h.exit
  %.1.i.1 = phi i32 [ 32767, %bb.e ], [ %i.aq, %do_sqrdmlah_h.exit ]
  %i.ar = trunc nsw i32 %.1.i.1 to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = add nuw nsw i64 %.016, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %middle.block, label %scalar.ph, !llvm.loop !82

middle.block:                                     ; preds = %bb.c, %do_sqrdmlah_h.exit.1
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %middle.block
  %i.av = add nuw nsw i32 %i.e, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %0, i64 %i.g
  %i.ay = xor i64 %i.g, -1
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = and i64 %i.az, -8
  %i.bb = add nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 range(i64 0, 8185) %i.bb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqdmulh_idx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = ashr i32 %4, 10
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %2, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %exitcond.not.3 = icmp eq i32 %.v.v.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.l
  %.033 = phi i64 [ 0, %bb.a ], [ %i.bz, %bb.l ]  ; 11 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.033
  %i.m = load i16, ptr %i.l, align 2
  %i.n = sext i16 %i.m to i32                     ; 8 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.033
  %i.p = load i16, ptr %i.o, align 2
  %i.q = sext i16 %i.p to i32
  %i.r = mul nsw i32 %i.q, %i.n
  %i.s = ashr i32 %i.r, 15                        ; 2 uses
  %.not.i = icmp slt i32 %i.s, 32768
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.b, %bb.c
  %.1.i = phi i32 [ 32767, %bb.c ], [ %i.s, %bb.b ]
  %i.t = trunc nsw i32 %.1.i to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.033
  store i16 %i.t, ptr %i.u, align 2
  %i.v = or disjoint i64 %.033, 1                 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = mul nsw i32 %i.y, %i.n
  %i.aa = ashr i32 %i.z, 15                       ; 2 uses
  %.not.i.1 = icmp slt i32 %i.aa, 32768
  br i1 %.not.i.1, label %do_sqrdmlah_h.exit.1, label %bb.d

bb.d:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit.1

do_sqrdmlah_h.exit.1:                             ; preds = %bb.d, %do_sqrdmlah_h.exit
  %.1.i.1 = phi i32 [ 32767, %bb.d ], [ %i.aa, %do_sqrdmlah_h.exit ]
  %i.ab = trunc nsw i32 %.1.i.1 to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = or disjoint i64 %.033, 2                ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.n
  %i.ai = ashr i32 %i.ah, 15                      ; 2 uses
  %.not.i.2 = icmp slt i32 %i.ai, 32768
  br i1 %.not.i.2, label %do_sqrdmlah_h.exit.2, label %bb.e

bb.e:                                             ; preds = %do_sqrdmlah_h.exit.1
  store i32 1, ptr %3, align 4
  br label %do_sqrdmlah_h.exit.2

do_sqrdmlah_h.exit.2:                             ; preds = %bb.e, %do_sqrdmlah_h.exit.1
  %.1.i.2 = phi i32 [ 32767, %bb.e ], [ %i.ai, %do_sqrdmlah_h.exit.1 ]
  %i.aj = trunc nsw i32 %.1.i.2 to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = or disjoint i64 %.033, 3                ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.n
  %i.aq = ashr i32 %i.ap, 15                      ; 2 uses
  %.not.i.3 = icmp slt i32 %i.aq, 32768
  br i1 %.not.i.3, label %do_sqrdmlah_h.exit.3, label %bb.f

bb.f:                                             ; preds = %do_sqrdmlah_h.exit.2
end_hunk_0
begin_hunk_1_@helper_sve2_sqrdmulh_h:bb.a
  %wide.load15 = load <8 x i16>, ptr %i.o, align 2
  %i.p = sext <8 x i16> %wide.load to <8 x i32>
  %i.q = sext <8 x i16> %wide.load15 to <8 x i32>
  %i.r = mul nsw <8 x i32> %i.q, %i.p
  %i.s = add nsw <8 x i32> %i.r, splat (i32 16384)
  %i.t = ashr <8 x i32> %i.s, splat (i32 15)
  %i.u = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.t, <8 x i32> splat (i32 32767))
  %i.v = trunc nsw <8 x i32> %i.u to <8 x i16>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.v, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit, label %do_sqrdmlah_h.exit.preheader.new

do_sqrdmlah_h.exit.preheader.new:                 ; preds = %vector.memcheck, %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %do_sqrdmlah_h.exit, %do_sqrdmlah_h.exit.preheader.new
  %.012 = phi i64 [ %.012.ph, %do_sqrdmlah_h.exit.preheader.new ], [ %i.av, %do_sqrdmlah_h.exit ] ; 5 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.012
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = sext i16 %i.z to i32
  %i.ad = sext i16 %i.ab to i32
  %i.ae = mul nsw i32 %i.ad, %i.ac
  %i.af = add nsw i32 %i.ae, 16384
  %i.ag = ashr i32 %i.af, 15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 32767)
  %i.ah = trunc nsw i32 %spec.select to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = or disjoint i64 %.012, 1                ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = sext i16 %i.al to i32
  %i.ap = sext i16 %i.an to i32
  %i.aq = mul nsw i32 %i.ap, %i.ao
  %i.ar = add nsw i32 %i.aq, 16384
  %i.as = ashr i32 %i.ar, 15
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 32767)
  %i.at = trunc nsw i32 %spec.select.1 to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  store i16 %i.at, ptr %i.au, align 2
  %i.av = add nuw nsw i64 %.012, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %do_sqrdmlah_h.exit, !llvm.loop !100

.loopexit:                                        ; preds = %do_sqrdmlah_h.exit, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqdmulh_idx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = ashr i32 %3, 10
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %2, i64 %i.h
  %i.j = lshr exact i32 %.v.i, 1
  %i.k = zext nneg i32 %i.j to i64
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %do_sqrdmlah_h.exit
  %.01921 = phi i64 [ 0, %bb.a ], [ %i.bz, %do_sqrdmlah_h.exit ] ; 11 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.01921
  %i.m = load i16, ptr %i.l, align 2
  %i.n = sext i16 %i.m to i32                     ; 8 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01921
  %i.p = load i16, ptr %i.o, align 2
  %i.q = sext i16 %i.p to i32
  %i.r = mul nsw i32 %i.q, %i.n
  %i.s = ashr i32 %i.r, 15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.s, i32 32767)
  %i.t = trunc nsw i32 %spec.select to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01921
  store i16 %i.t, ptr %i.u, align 2
  %i.v = or disjoint i64 %.01921, 1               ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = mul nsw i32 %i.y, %i.n
  %i.aa = ashr i32 %i.z, 15
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 32767)
  %i.ab = trunc nsw i32 %spec.select.1 to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = or disjoint i64 %.01921, 2              ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.n
  %i.ai = ashr i32 %i.ah, 15
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 32767)
  %i.aj = trunc nsw i32 %spec.select.2 to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = or disjoint i64 %.01921, 3              ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.n
  %i.aq = ashr i32 %i.ap, 15
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 32767)
  %i.ar = trunc nsw i32 %spec.select.3 to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.al
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = or disjoint i64 %.01921, 4              ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32
  %i.ax = mul nsw i32 %i.aw, %i.n
  %i.ay = ashr i32 %i.ax, 15
  %spec.select.4 = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 32767)
  %i.az = trunc nsw i32 %spec.select.4 to i16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.at
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = or disjoint i64 %.01921, 5              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = sext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.n
  %i.bg = ashr i32 %i.bf, 15
  %spec.select.5 = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 32767)
  %i.bh = trunc nsw i32 %spec.select.5 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bb
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = or disjoint i64 %.01921, 6              ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.n
  %i.bo = ashr i32 %i.bn, 15
  %spec.select.6 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 32767)
  %i.bp = trunc nsw i32 %spec.select.6 to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = or disjoint i64 %.01921, 7              ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i32
  %i.bv = mul nsw i32 %i.bu, %i.n
  %i.bw = ashr i32 %i.bv, 15
  %spec.select.7 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 32767)
  %i.bx = trunc nsw i32 %spec.select.7 to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.br
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = add nuw nsw i64 %.01921, 8              ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %i.k
  br i1 %i.ca, label %do_sqrdmlah_h.exit, label %bb.b, !llvm.loop !101

bb.b:                                             ; preds = %do_sqrdmlah_h.exit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqrdmulh_idx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = ashr i32 %3, 10
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [2 x i8], ptr %2, i64 %i.h ; 10 uses
  %i.j = lshr exact i32 %.v.i, 1
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 122
  br i1 %min.iters.check, label %do_sqrdmlah_h.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.o = shl nuw nsw i64 %i.l, 1
  %i.p = and i64 %i.o, 9223372036854775792        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 16                 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 2 uses
  %i.s = shl nsw i64 %i.h, 1
  %i.t = getelementptr i8, ptr %2, i64 %i.p
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %4 = getelementptr i8, ptr %1, i64 %i.q
  %bound0.a = icmp ult ptr %0, %i.v
  %bound1 = icmp ult ptr %i.i, %i.r
  %found.conflict = and i1 %bound0.a, %bound1
  %bound027 = icmp ult ptr %0, %4
  %bound128 = icmp ult ptr %1, %i.r
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  br i1 %conflict.rdx, label %do_sqrdmlah_h.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.w = and i64 %i.n, 7                          ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i64 8, i64 %i.w
  %n.vec = sub nsw i64 %i.n, %i.y                 ; 2 uses
  %i.z = shl i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl nuw i64 %index, 3                   ; 66 uses
  %i.ab = or disjoint i64 %i.aa, 8                ; 2 uses
  %i.ac = or disjoint i64 %i.aa, 16               ; 2 uses
  %i.ad = or disjoint i64 %i.aa, 24               ; 2 uses
  %i.ae = or disjoint i64 %i.aa, 32               ; 2 uses
  %i.af = or disjoint i64 %i.aa, 40               ; 2 uses
  %i.ag = or disjoint i64 %i.aa, 48               ; 2 uses
  %i.ah = or disjoint i64 %i.aa, 56               ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.aa
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ab
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ac
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ad
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ae
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.af
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ag
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ah
  %i.aq = load i16, ptr %i.ai, align 2, !alias.scope !108
  %i.ar = load i16, ptr %i.aj, align 2, !alias.scope !108
  %i.as = load i16, ptr %i.ak, align 2, !alias.scope !108
  %i.at = load i16, ptr %i.al, align 2, !alias.scope !108
  %i.au = load i16, ptr %i.am, align 2, !alias.scope !108
  %i.av = load i16, ptr %i.an, align 2, !alias.scope !108
  %i.aw = load i16, ptr %i.ao, align 2, !alias.scope !108
  %i.ax = load i16, ptr %i.ap, align 2, !alias.scope !108
  %i.ay = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 1
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 2
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 3
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 4
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 5
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 6
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 7
  %i.bg = sext <8 x i16> %i.bf to <8 x i32>       ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ab
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.bp = load i16, ptr %i.bh, align 2, !alias.scope !109
  %i.bq = load i16, ptr %i.bi, align 2, !alias.scope !109
  %i.br = load i16, ptr %i.bj, align 2, !alias.scope !109
  %i.bs = load i16, ptr %i.bk, align 2, !alias.scope !109
  %i.bt = load i16, ptr %i.bl, align 2, !alias.scope !109
  %i.bu = load i16, ptr %i.bm, align 2, !alias.scope !109
  %i.bv = load i16, ptr %i.bn, align 2, !alias.scope !109
  %i.bw = load i16, ptr %i.bo, align 2, !alias.scope !109
  %i.bx = insertelement <8 x i16> poison, i16 %i.bp, i64 0
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 1
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 2
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 3
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 4
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 5
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 6
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 7
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 18
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 34
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 50
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 66
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 82
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 98
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 114
  %i.cw = load i16, ptr %i.ch, align 2, !alias.scope !109
  %i.cx = load i16, ptr %i.cj, align 2, !alias.scope !109
  %i.cy = load i16, ptr %i.cl, align 2, !alias.scope !109
  %i.cz = load i16, ptr %i.cn, align 2, !alias.scope !109
  %i.da = load i16, ptr %i.cp, align 2, !alias.scope !109
  %i.db = load i16, ptr %i.cr, align 2, !alias.scope !109
  %i.dc = load i16, ptr %i.ct, align 2, !alias.scope !109
  %i.dd = load i16, ptr %i.cv, align 2, !alias.scope !109
  %i.de = insertelement <8 x i16> poison, i16 %i.cw, i64 0
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 1
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 2
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 3
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 4
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 5
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 6
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 7
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 84
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 100
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 116
  %i.ec = load i16, ptr %i.dn, align 2, !alias.scope !109
  %i.ed = load i16, ptr %i.dp, align 2, !alias.scope !109
  %i.ee = load i16, ptr %i.dr, align 2, !alias.scope !109
  %i.ef = load i16, ptr %i.dt, align 2, !alias.scope !109
  %i.eg = load i16, ptr %i.dv, align 2, !alias.scope !109
  %i.eh = load i16, ptr %i.dx, align 2, !alias.scope !109
  %i.ei = load i16, ptr %i.dz, align 2, !alias.scope !109
  %i.ej = load i16, ptr %i.eb, align 2, !alias.scope !109
  %i.ek = insertelement <8 x i16> poison, i16 %i.ec, i64 0
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.ed, i64 1
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 2
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 3
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 4
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 5
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 6
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 7
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 22
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 38
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 54
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 70
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 86
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 102
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 118
  %i.fi = load i16, ptr %i.et, align 2, !alias.scope !109
  %i.fj = load i16, ptr %i.ev, align 2, !alias.scope !109
  %i.fk = load i16, ptr %i.ex, align 2, !alias.scope !109
  %i.fl = load i16, ptr %i.ez, align 2, !alias.scope !109
  %i.fm = load i16, ptr %i.fb, align 2, !alias.scope !109
  %i.fn = load i16, ptr %i.fd, align 2, !alias.scope !109
  %i.fo = load i16, ptr %i.ff, align 2, !alias.scope !109
  %i.fp = load i16, ptr %i.fh, align 2, !alias.scope !109
  %i.fq = insertelement <8 x i16> poison, i16 %i.fi, i64 0
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 1
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 2
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 3
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 4
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.fn, i64 5
  %i.fw = insertelement <8 x i16> %i.fv, i16 %i.fo, i64 6
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fp, i64 7
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.go = load i16, ptr %i.fz, align 2, !alias.scope !109
  %i.gp = load i16, ptr %i.gb, align 2, !alias.scope !109
  %i.gq = load i16, ptr %i.gd, align 2, !alias.scope !109
  %i.gr = load i16, ptr %i.gf, align 2, !alias.scope !109
  %i.gs = load i16, ptr %i.gh, align 2, !alias.scope !109
  %i.gt = load i16, ptr %i.gj, align 2, !alias.scope !109
  %i.gu = load i16, ptr %i.gl, align 2, !alias.scope !109
  %i.gv = load i16, ptr %i.gn, align 2, !alias.scope !109
  %i.gw = insertelement <8 x i16> poison, i16 %i.go, i64 0
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 1
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 2
  %i.gz = insertelement <8 x i16> %i.gy, i16 %i.gr, i64 3
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 4
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 5
end_hunk_1
begin_hunk_2_@helper_gvec_usdot_idx_4b:bb.a
  %i.as = getelementptr i8, ptr %i.ad, i64 3
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = mul nsw i32 %i.au, %i.z
  %i.aw = add i32 %i.ar, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %.1
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nsw i64 %.1, 1                      ; 4 uses
  %i.az = icmp slt i64 %i.ay, %.045
  br i1 %i.az, label %bb.c, label %bb.d, !llvm.loop !143

bb.d:                                             ; preds = %bb.c
  %i.ba = add i64 %.1, 5
  %i.bb = icmp slt i64 %i.ay, %i.h
  br i1 %i.bb, label %bb.b, label %bb.e, !llvm.loop !144

bb.e:                                             ; preds = %bb.d
  %i.bc = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bc, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.bd = add nuw nsw i32 %i.e, 8
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.g
  %i.bg = xor i64 %i.g, -1
  %i.bh = add nsw i64 %i.bg, %i.be
  %i.bi = and i64 %i.bh, -8
  %i.bj = add nsw i64 %i.bi, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 range(i64 0, 8185) %i.bj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sdot_idx_4h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 3
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.045 = phi i64 [ %i.i, %bb.a ], [ %i.ax, %bb.d ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.av, %bb.d ]    ; 2 uses
  %.idx47 = shl i64 %.0, 3
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx47 ; 4 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sext i16 %i.n to i64
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = sext i16 %i.q to i64
  %i.s = getelementptr i8, ptr %i.m, i64 4
  %i.t = load i16, ptr %i.s, align 2
  %i.u = sext i16 %i.t to i64
  %i.v = getelementptr i8, ptr %i.m, i64 6
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.0, %bb.b ], [ %i.av, %bb.c ]  ; 5 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %3, i64 %.1
  %i.z = load i64, ptr %i.y, align 8
  %.idx48 = shl i64 %.1, 3
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %.idx48 ; 4 uses
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = sext i16 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.o
  %i.ae = add i64 %i.ad, %i.z
  %i.af = getelementptr i8, ptr %i.aa, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.r
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = getelementptr i8, ptr %i.aa, i64 4
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = sext i16 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.u
  %i.ao = add i64 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %i.aa, i64 6
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = sext i16 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.x
  %i.at = add i64 %i.ao, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  store i64 %i.at, ptr %i.au, align 8
  %i.av = add nsw i64 %.1, 1                      ; 4 uses
  %i.aw = icmp slt i64 %i.av, %.045
  br i1 %i.aw, label %bb.c, label %bb.d, !llvm.loop !145

bb.d:                                             ; preds = %bb.c
  %i.ax = add i64 %.1, 3
  %i.ay = icmp slt i64 %i.av, %i.h
  br i1 %i.ay, label %bb.b, label %bb.e, !llvm.loop !146

bb.e:                                             ; preds = %bb.d
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 range(i64 0, 8185) %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_udot_idx_4h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 3
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  %scevgep = getelementptr i8, ptr %1, i64 2
  %scevgep52 = getelementptr i8, ptr %1, i64 4
  %scevgep54 = getelementptr i8, ptr %1, i64 6
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.045 = phi i64 [ %i.i, %bb.a ], [ %i.dj, %.loopexit ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 10 uses
  %.idx47 = shl i64 %.0, 3                        ; 7 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx47 ; 4 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 4
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 6
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = add nsw i64 %.0, 1
  %i.z = tail call i64 @llvm.smax.i64(i64 %.045, i64 %i.y) ; 2 uses
  %i.aa = sub i64 %i.z, %.0                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 26
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.ab = add nsw i64 %.0, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.045, i64 %i.ab)
  %i.ac = xor i64 %.0, -1
  %i.ad = add i64 %smax, %i.ac                    ; 2 uses
  %scevgep51 = getelementptr i8, ptr %scevgep, i64 %.idx47 ; 2 uses
  %mul.result = shl i64 %i.ad, 3                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.ad, 2305843009213693951
  %i.ae = getelementptr i8, ptr %scevgep51, i64 %mul.result
  %i.af = icmp ult ptr %i.ae, %scevgep51
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %.idx47 ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep53, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep53
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %.idx47 ; 2 uses
  %i.ai = getelementptr i8, ptr %scevgep55, i64 %mul.result
  %i.aj = icmp ult ptr %i.ai, %scevgep55
  %i.ak = or i1 %i.aj, %mul.overflow
  %i.al = or i1 %i.ah, %i.af
  %i.am = or i1 %i.al, %i.ak
  br i1 %i.am, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.an = getelementptr i8, ptr %0, i64 %.idx47   ; 2 uses
  %i.ao = shl i64 %i.z, 3                         ; 3 uses
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao     ; 2 uses
  %i.aq = getelementptr i8, ptr %3, i64 %.idx47
  %i.ar = getelementptr i8, ptr %3, i64 %i.ao
  %5 = getelementptr i8, ptr %1, i64 %.idx47
  %6 = getelementptr i8, ptr %1, i64 %i.ao
  %bound0 = icmp ult ptr %i.an, %i.ar
  %bound1 = icmp ult ptr %i.aq, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  %bound066 = icmp ult ptr %i.an, %6
  %bound167 = icmp ult ptr %5, %i.ap
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx = or i1 %found.conflict, %found.conflict68
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -2                      ; 3 uses
  %i.as = add i64 %.0, %n.vec                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat70 = shufflevector <2 x i64> %broadcast.splatinsert69, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat74 = shufflevector <2 x i64> %broadcast.splatinsert73, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add i64 %.0, %index                     ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %3, i64 %i.at
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !alias.scope !154
  %i.av = shl i64 %i.at, 3
  %i.aw = shl i64 %i.at, 3
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.av ; 4 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw     ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load i16, ptr %i.ax, align 2, !alias.scope !155
  %i.bb = load i16, ptr %i.az, align 2, !alias.scope !155
  %i.bc = insertelement <2 x i16> poison, i16 %i.ba, i64 0
  %i.bd = insertelement <2 x i16> %i.bc, i16 %i.bb, i64 1
  %i.be = zext <2 x i16> %i.bd to <2 x i64>
  %i.bf = mul nuw nsw <2 x i64> %broadcast.splat, %i.be
  %i.bg = add <2 x i64> %i.bf, %wide.load
  %i.bh = getelementptr i8, ptr %i.ax, i64 2
  %i.bi = getelementptr i8, ptr %i.ay, i64 10
  %i.bj = load i16, ptr %i.bh, align 2, !alias.scope !155
  %i.bk = load i16, ptr %i.bi, align 2, !alias.scope !155
  %i.bl = insertelement <2 x i16> poison, i16 %i.bj, i64 0
  %i.bm = insertelement <2 x i16> %i.bl, i16 %i.bk, i64 1
  %i.bn = zext <2 x i16> %i.bm to <2 x i64>
  %i.bo = mul nuw nsw <2 x i64> %broadcast.splat70, %i.bn
  %i.bp = add <2 x i64> %i.bg, %i.bo
  %i.bq = getelementptr i8, ptr %i.ax, i64 4
  %i.br = getelementptr i8, ptr %i.ay, i64 12
  %i.bs = load i16, ptr %i.bq, align 2, !alias.scope !155
  %i.bt = load i16, ptr %i.br, align 2, !alias.scope !155
  %i.bu = insertelement <2 x i16> poison, i16 %i.bs, i64 0
  %i.bv = insertelement <2 x i16> %i.bu, i16 %i.bt, i64 1
  %i.bw = zext <2 x i16> %i.bv to <2 x i64>
  %i.bx = mul nuw nsw <2 x i64> %broadcast.splat72, %i.bw
  %i.by = add <2 x i64> %i.bp, %i.bx
  %i.bz = getelementptr i8, ptr %i.ax, i64 6
  %i.ca = getelementptr i8, ptr %i.ay, i64 14
  %i.cb = load i16, ptr %i.bz, align 2, !alias.scope !155
  %i.cc = load i16, ptr %i.ca, align 2, !alias.scope !155
  %i.cd = insertelement <2 x i16> poison, i16 %i.cb, i64 0
  %i.ce = insertelement <2 x i16> %i.cd, i16 %i.cc, i64 1
  %i.cf = zext <2 x i16> %i.ce to <2 x i64>
  %i.cg = mul nuw nsw <2 x i64> %broadcast.splat74, %i.cf
  %i.ch = add <2 x i64> %i.by, %i.cg
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  store <2 x i64> %i.ch, ptr %i.ci, align 8, !alias.scope !156, !noalias !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.as, -1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.b, %middle.block
  %.1.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %vector.scevcheck ], [ %.0, %bb.b ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi i64 [ %i.dh, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %3, i64 %.1
  %i.cl = load i64, ptr %i.ck, align 8
  %.idx48 = shl i64 %.1, 3
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %.idx48 ; 4 uses
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i64
  %i.cp = mul nuw nsw i64 %i.co, %i.o
  %i.cq = add i64 %i.cp, %i.cl
  %i.cr = getelementptr i8, ptr %i.cm, i64 2
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = zext i16 %i.cs to i64
  %i.cu = mul nuw nsw i64 %i.ct, %i.r
  %i.cv = add i64 %i.cq, %i.cu
  %i.cw = getelementptr i8, ptr %i.cm, i64 4
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i64
  %i.cz = mul nuw nsw i64 %i.cy, %i.u
  %i.da = add i64 %i.cv, %i.cz
  %i.db = getelementptr i8, ptr %i.cm, i64 6
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = zext i16 %i.dc to i64
  %i.de = mul nuw nsw i64 %i.dd, %i.x
  %i.df = add i64 %i.da, %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = add nsw i64 %.1, 1                      ; 3 uses
  %i.di = icmp slt i64 %i.dh, %.045
  br i1 %i.di, label %scalar.ph, label %.loopexit, !llvm.loop !152

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.1, %scalar.ph ]
  %.lcssa = phi i64 [ %i.as, %middle.block ], [ %i.dh, %scalar.ph ] ; 2 uses
  %i.dj = add i64 %.1.lcssa, 3
  %i.dk = icmp slt i64 %.lcssa, %i.h
  br i1 %i.dk, label %bb.b, label %bb.c, !llvm.loop !153

bb.c:                                             ; preds = %.loopexit
  %i.dl = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dl, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.dm = add nuw nsw i32 %i.e, 8
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %0, i64 %i.g
  %i.dp = xor i64 %i.g, -1
  %i.dq = add nsw i64 %i.dp, %i.dn
  %i.dr = and i64 %i.dq, -8
  %i.ds = add nsw i64 %i.dr, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.do, i8 0, i64 range(i64 0, 8185) %i.ds, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sdot_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %i.j = getelementptr i8, ptr %3, i64 %i.g
  %5 = getelementptr i8, ptr %1, i64 %i.g
  %6 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %3, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound033 = icmp ult ptr %0, %5
  %bound134 = icmp ult ptr %1, %i.i
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %0, %6
  %bound137 = icmp ult ptr %2, %i.i
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !alias.scope !165
  %i.l = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %wide.vec = load <8 x i16>, ptr %i.m, align 2, !alias.scope !166 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.n = sext <4 x i16> %strided.vec to <4 x i32>
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.l
  %wide.vec41 = load <8 x i16>, ptr %i.o, align 2, !alias.scope !167 ; 2 uses
  %strided.vec42 = shufflevector <8 x i16> %wide.vec41, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec43 = shufflevector <8 x i16> %wide.vec41, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.p = sext <4 x i16> %strided.vec42 to <4 x i32>
  %i.q = mul nsw <4 x i32> %i.p, %i.n
  %i.r = add <4 x i32> %i.q, %wide.load
  %i.s = sext <4 x i16> %strided.vec40 to <4 x i32>
  %i.t = sext <4 x i16> %strided.vec43 to <4 x i32>
  %i.u = mul nsw <4 x i32> %i.t, %i.s
  %i.v = add <4 x i32> %i.r, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.v, ptr %i.w, align 4, !alias.scope !168, !noalias !169
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022 = phi i64 [ %i.at, %scalar.ph ], [ %.022.ph, %scalar.ph.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = shl nuw nsw i64 %.022, 1                ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aa
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.z
  %i.aj = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ao to i32
  %i.aq = mul nsw i32 %i.ap, %i.am
  %i.ar = add i32 %i.ai, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.022
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !164

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.av = add nuw nsw i32 %i.e, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %0, i64 %i.g
  %i.ay = xor i64 %i.g, -1
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = and i64 %i.az, -8
  %i.bb = add nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 range(i64 0, 8185) %i.bb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_udot_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %i.j = getelementptr i8, ptr %3, i64 %i.g
  %5 = getelementptr i8, ptr %1, i64 %i.g
  %6 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %3, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound033 = icmp ult ptr %0, %5
  %bound134 = icmp ult ptr %1, %i.i
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %0, %6
  %bound137 = icmp ult ptr %2, %i.i
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !alias.scope !177
  %i.l = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %wide.vec = load <8 x i16>, ptr %i.m, align 2, !alias.scope !178
  %i.n = freeze <8 x i16> %wide.vec               ; 2 uses
  %i.o = bitcast <8 x i16> %i.n to <4 x i32>
  %i.p = bitcast <8 x i16> %i.n to <4 x i32>
  %i.q = and <4 x i32> %i.p, splat (i32 65535)
  %i.r = lshr <4 x i32> %i.o, splat (i32 16)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.l
  %wide.vec41 = load <8 x i16>, ptr %i.s, align 2, !alias.scope !179
  %i.t = freeze <8 x i16> %wide.vec41             ; 2 uses
  %i.u = bitcast <8 x i16> %i.t to <4 x i32>
  %i.v = bitcast <8 x i16> %i.t to <4 x i32>
  %i.w = and <4 x i32> %i.v, splat (i32 65535)
  %i.x = lshr <4 x i32> %i.u, splat (i32 16)
  %i.y = mul nuw <4 x i32> %i.w, %i.q
  %i.z = add <4 x i32> %i.y, %wide.load
  %i.aa = mul nuw <4 x i32> %i.x, %i.r
  %i.ab = add <4 x i32> %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.ab, ptr %i.ac, align 4, !alias.scope !180, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022 = phi i64 [ %i.az, %scalar.ph ], [ %.022.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = shl nuw nsw i64 %.022, 1                ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ag
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = mul nuw i32 %i.am, %i.aj
  %i.ao = add i32 %i.an, %i.af
  %i.ap = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = mul nuw i32 %i.av, %i.as
  %i.ax = add i32 %i.ao, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.022
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !176

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ba = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ba, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bb = add nuw nsw i32 %i.e, 8
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %0, i64 %i.g
  %i.be = xor i64 %i.g, -1
  %i.bf = add nsw i64 %i.be, %i.bc
  %i.bg = and i64 %i.bf, -8
  %i.bh = add nsw i64 %i.bg, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 range(i64 0, 8185) %i.bh, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sdot_idx_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  %scevgep = getelementptr i8, ptr %1, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.035 = phi i64 [ %i.i, %bb.a ], [ %i.bi, %.loopexit ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 10 uses
  %.idx37 = shl i64 %.0, 2                        ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx37 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = add nsw i64 %.0, 1
  %i.t = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.s) ; 2 uses
  %i.u = sub i64 %i.t, %.0                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.v = add nsw i64 %.0, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.v)
  %i.w = xor i64 %.0, -1
  %i.x = add i64 %smax, %i.w                      ; 2 uses
  %scevgep41 = getelementptr i8, ptr %scevgep, i64 %.idx37 ; 2 uses
  %mul.result = shl i64 %i.x, 2
  %mul.overflow = icmp ugt i64 %i.x, 4611686018427387903
  %i.y = getelementptr i8, ptr %scevgep41, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep41
  %i.aa = or i1 %i.z, %mul.overflow
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ab = getelementptr i8, ptr %0, i64 %.idx37   ; 2 uses
  %i.ac = shl i64 %i.t, 2                         ; 3 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac     ; 2 uses
  %i.ae = getelementptr i8, ptr %3, i64 %.idx37
  %i.af = getelementptr i8, ptr %3, i64 %i.ac
  %5 = getelementptr i8, ptr %1, i64 %.idx37
  %6 = getelementptr i8, ptr %1, i64 %i.ac
  %bound0 = icmp ult ptr %i.ab, %i.af
  %bound1 = icmp ult ptr %i.ae, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.ab, %6
  %bound153 = icmp ult ptr %5, %i.ad
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.ag = add i64 %.0, %n.vec                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %.0, %index                     ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ah
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !189
  %i.aj = shl i64 %i.ah, 2
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %wide.vec = load <8 x i16>, ptr %i.ak, align 2, !alias.scope !190 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec57 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.al = sext <4 x i16> %strided.vec to <4 x i32>
  %i.am = mul nsw <4 x i32> %broadcast.splat, %i.al
  %i.an = add <4 x i32> %i.am, %wide.load
  %i.ao = sext <4 x i16> %strided.vec57 to <4 x i32>
  %i.ap = mul nsw <4 x i32> %broadcast.splat56, %i.ao
  %i.aq = add <4 x i32> %i.an, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  store <4 x i32> %i.aq, ptr %i.ar, align 4, !alias.scope !191, !noalias !192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ag, -1
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.b, %middle.block
  %.1.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %vector.scevcheck ], [ %.0, %bb.b ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi i64 [ %i.bg, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 5 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %.1
  %i.au = load i32, ptr %i.at, align 4
  %.idx38 = shl i64 %.1, 2
  %i.av = getelementptr inbounds i8, ptr %1, i64 %.idx38 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = sext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.ax, %i.o
  %i.az = add i32 %i.ay, %i.au
  %i.ba = getelementptr i8, ptr %i.av, i64 2
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = sext i16 %i.bb to i32
  %i.bd = mul nsw i32 %i.bc, %i.r
  %i.be = add i32 %i.az, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.1
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = add nsw i64 %.1, 1                      ; 3 uses
  %i.bh = icmp slt i64 %i.bg, %.035
  br i1 %i.bh, label %scalar.ph, label %.loopexit, !llvm.loop !187

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.1, %scalar.ph ]
  %.lcssa = phi i64 [ %i.ag, %middle.block ], [ %i.bg, %scalar.ph ] ; 2 uses
  %i.bi = add i64 %.1.lcssa, 5
  %i.bj = icmp slt i64 %.lcssa, %i.h
  br i1 %i.bj, label %bb.b, label %bb.c, !llvm.loop !188

bb.c:                                             ; preds = %.loopexit
  %i.bk = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bk, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bl = add nuw nsw i32 %i.e, 8
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %0, i64 %i.g
  %i.bo = xor i64 %i.g, -1
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = and i64 %i.bp, -8
  %i.br = add nsw i64 %i.bq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 range(i64 0, 8185) %i.br, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_udot_idx_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  %scevgep = getelementptr i8, ptr %1, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.035 = phi i64 [ %i.i, %bb.a ], [ %i.bl, %.loopexit ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 10 uses
  %.idx37 = shl i64 %.0, 2                        ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx37 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = add nsw i64 %.0, 1
  %i.t = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.s) ; 2 uses
  %i.u = sub i64 %i.t, %.0                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.v = add nsw i64 %.0, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.v)
  %i.w = xor i64 %.0, -1
  %i.x = add i64 %smax, %i.w                      ; 2 uses
  %scevgep41 = getelementptr i8, ptr %scevgep, i64 %.idx37 ; 2 uses
  %mul.result = shl i64 %i.x, 2
  %mul.overflow = icmp ugt i64 %i.x, 4611686018427387903
  %i.y = getelementptr i8, ptr %scevgep41, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep41
  %i.aa = or i1 %i.z, %mul.overflow
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ab = getelementptr i8, ptr %0, i64 %.idx37   ; 2 uses
  %i.ac = shl i64 %i.t, 2                         ; 3 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac     ; 2 uses
  %i.ae = getelementptr i8, ptr %3, i64 %.idx37
  %i.af = getelementptr i8, ptr %3, i64 %i.ac
  %5 = getelementptr i8, ptr %1, i64 %.idx37
  %6 = getelementptr i8, ptr %1, i64 %i.ac
  %bound0 = icmp ult ptr %i.ab, %i.af
  %bound1 = icmp ult ptr %i.ae, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.ab, %6
  %bound153 = icmp ult ptr %5, %i.ad
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.ag = add i64 %.0, %n.vec                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %.0, %index                     ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ah
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !200
  %i.aj = shl i64 %i.ah, 2
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %wide.vec = load <8 x i16>, ptr %i.ak, align 2, !alias.scope !201
  %i.al = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.am = bitcast <8 x i16> %i.al to <4 x i32>
  %i.an = bitcast <8 x i16> %i.al to <4 x i32>
  %i.ao = and <4 x i32> %i.an, splat (i32 65535)
  %i.ap = lshr <4 x i32> %i.am, splat (i32 16)
  %i.aq = mul nuw <4 x i32> %i.ao, %broadcast.splat
  %i.ar = add <4 x i32> %i.aq, %wide.load
  %i.as = mul nuw <4 x i32> %i.ap, %broadcast.splat56
  %i.at = add <4 x i32> %i.ar, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  store <4 x i32> %i.at, ptr %i.au, align 4, !alias.scope !202, !noalias !203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ag, -1
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.b, %middle.block
  %.1.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %vector.scevcheck ], [ %.0, %bb.b ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi i64 [ %i.bj, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %.1
  %i.ax = load i32, ptr %i.aw, align 4
  %.idx38 = shl i64 %.1, 2
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %.idx38 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nuw i32 %i.ba, %i.o
  %i.bc = add i32 %i.bb, %i.ax
  %i.bd = getelementptr i8, ptr %i.ay, i64 2
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = mul nuw i32 %i.bf, %i.r
  %i.bh = add i32 %i.bc, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.1
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = add nsw i64 %.1, 1                      ; 3 uses
  %i.bk = icmp slt i64 %i.bj, %.035
  br i1 %i.bk, label %scalar.ph, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.1, %scalar.ph ]
  %.lcssa = phi i64 [ %i.ag, %middle.block ], [ %i.bj, %scalar.ph ] ; 2 uses
  %i.bl = add i64 %.1.lcssa, 5
  %i.bm = icmp slt i64 %.lcssa, %i.h
  br i1 %i.bm, label %bb.b, label %bb.c, !llvm.loop !199

bb.c:                                             ; preds = %.loopexit
  %i.bn = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bn, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bo = add nuw nsw i32 %i.e, 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %0, i64 %i.g
  %i.br = xor i64 %i.g, -1
  %i.bs = add nsw i64 %i.br, %i.bp
  %i.bt = and i64 %i.bs, -8
  %i.bu = add nsw i64 %i.bt, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 range(i64 0, 8185) %i.bu, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcaddh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = and i32 %4, 1024
  %.not = icmp eq i32 %i.h, 0
  %i.i = and i32 %4, 2048
  %.not44 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = lshr exact i64 %i.g, 1                   ; 4 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not44, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %.split.us.split.us
  %.03538.us.us = phi i64 [ %i.y, %.split.us.split.us ], [ 0, %.split.us ] ; 5 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538.us.us
  %i.l = load i16, ptr %i.k, align 2
  %i.m = or disjoint i64 %.03538.us.us, 1         ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.m
  %i.q = load i16, ptr %i.p, align 2
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538.us.us
  %i.s = load i16, ptr %i.r, align 2
  %i.t = xor i16 %i.o, -32768
  %i.u = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.l, i16 noundef zeroext %i.t, ptr noundef %3) #18
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03538.us.us
  store i16 %i.u, ptr %i.v, align 2
  %i.w = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.q, i16 noundef zeroext %i.s, ptr noundef %3) #18
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  store i16 %i.w, ptr %i.x, align 2
  %i.y = add nuw nsw i64 %.03538.us.us, 2         ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, %i.j
  br i1 %i.z, label %.split.us.split.us, label %.split40.us, !llvm.loop !204

.split.us.split:                                  ; preds = %.split.us, %.split.us.split
  %.03538.us = phi i64 [ %i.aq, %.split.us.split ], [ 0, %.split.us ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538.us
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = or disjoint i64 %.03538.us, 1           ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2            ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538.us
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ae, 32767
  %i.ak = icmp samesign ugt i16 %i.aj, 31744
  %i.al = xor i16 %i.ae, -32768
  %spec.select = select i1 %i.ak, i16 %i.ae, i16 %i.al
  %i.am = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.ab, i16 noundef zeroext %spec.select, ptr noundef %3) #18
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03538.us
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.ag, i16 noundef zeroext %i.ai, ptr noundef %3) #18
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.03538.us, 2           ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.j
  br i1 %i.ar, label %.split.us.split, label %.split40.us, !llvm.loop !204

.split:                                           ; preds = %bb.a
  br i1 %.not44, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %.split.split.us
  %.03538.us41 = phi i64 [ %i.bg, %.split.split.us ], [ 0, %.split ] ; 5 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538.us41
  %i.at = load i16, ptr %i.as, align 2
  %i.au = or disjoint i64 %.03538.us41, 1         ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538.us41
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = xor i16 %i.ba, -32768
  %i.bc = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, ptr noundef %3) #18
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03538.us41
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.ay, i16 noundef zeroext %i.bb, ptr noundef %3) #18
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = add nuw nsw i64 %.03538.us41, 2         ; 2 uses
  %i.bh = icmp samesign ult i64 %i.bg, %i.j
  br i1 %i.bh, label %.split.split.us, label %.split40.us, !llvm.loop !204

.split.split:                                     ; preds = %.split, %.split.split
  %.03538 = phi i64 [ %i.by, %.split.split ], [ 0, %.split ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = or disjoint i64 %.03538, 1              ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538
  %i.bq = load i16, ptr %i.bp, align 2            ; 3 uses
  %i.br = and i16 %i.bq, 32767
end_hunk_2
begin_hunk_3_@helper_gvec_uabd_s:bb.a
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.av, %scalar.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = icmp ult i32 %i.ad, %i.af
  %i.ah = sub nuw i32 %i.af, %i.ad
  %i.ai = sub nuw i32 %i.ad, %i.af
  %i.aj = select i1 %i.ag, i32 %i.ah, i32 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = or disjoint i64 %.026, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = sub nuw i32 %i.ap, %i.an
  %i.as = sub nuw i32 %i.an, %i.ap
  %i.at = select i1 %i.aq, i32 %i.ar, i32 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !671

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aw = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aw, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ax = add nuw nsw i32 %i.e, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 %i.g
  %i.ba = xor i64 %i.g, -1
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = and i64 %i.bb, -8
  %i.bd = add nsw i64 %i.bc, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 range(i64 0, 8185) %i.bd, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uabd_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check28 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check28
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435452                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8  ; 3 uses
  %wide.load29 = load <2 x i64>, ptr %i.o, align 8 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load30 = load <2 x i64>, ptr %i.p, align 8 ; 3 uses
  %wide.load31 = load <2 x i64>, ptr %i.q, align 8 ; 3 uses
  %i.r = icmp ult <2 x i64> %wide.load, %wide.load30
  %i.s = icmp ult <2 x i64> %wide.load29, %wide.load31
  %i.t = sub nuw <2 x i64> %wide.load30, %wide.load
  %i.u = sub nuw <2 x i64> %wide.load31, %wide.load29
  %i.v = sub nuw <2 x i64> %wide.load, %wide.load30
  %i.w = sub nuw <2 x i64> %wide.load29, %wide.load31
  %i.x = select <2 x i1> %i.r, <2 x i64> %i.t, <2 x i64> %i.v
  %i.y = select <2 x i1> %i.s, <2 x i64> %i.u, <2 x i64> %i.w
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %i.x, ptr %i.z, align 8
  store <2 x i64> %i.y, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.026.ph, 1
  %i.ac = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026.ph
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026.ph
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  %i.ai = sub nuw i64 %i.ag, %i.ae
  %i.aj = sub nuw i64 %i.ae, %i.ag
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026.ph
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = or disjoint i64 %.026.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.026.unr = phi i64 [ %.026.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.h, %.neg
  br i1 %i.an, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi i64 [ %i.bh, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp ult i64 %i.ap, %i.ar
  %i.at = sub nuw i64 %i.ar, %i.ap
  %i.au = sub nuw i64 %i.ap, %i.ar
  %i.av = select i1 %i.as, i64 %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.026, 1                ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ax
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp ult i64 %i.az, %i.bb
  %i.bd = sub nuw i64 %i.bb, %i.az
  %i.be = sub nuw i64 %i.az, %i.bb
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !673

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bi, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bj = add nuw nsw i32 %i.e, 8
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %0, i64 %i.g
  %i.bm = xor i64 %i.g, -1
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = and i64 %i.bn, -8
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 range(i64 0, 8185) %i.bp, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_saba_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 10 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.i
  %bound1 = icmp ult ptr %1, %i.h
  %found.conflict = and i1 %bound0.a, %bound1
  %bound034 = icmp ult ptr %0, %4
  %bound135 = icmp ult ptr %2, %i.h
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !alias.scope !681 ; 3 uses
  %wide.load37 = load <16 x i8>, ptr %i.l, align 1, !alias.scope !681 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load38 = load <16 x i8>, ptr %i.m, align 1, !alias.scope !682 ; 3 uses
  %wide.load39 = load <16 x i8>, ptr %i.n, align 1, !alias.scope !682 ; 3 uses
  %i.o = icmp slt <16 x i8> %wide.load, %wide.load38
  %i.p = icmp slt <16 x i8> %wide.load37, %wide.load39
  %i.q = sub <16 x i8> %wide.load38, %wide.load
  %i.r = sub <16 x i8> %wide.load39, %wide.load37
  %i.s = sub <16 x i8> %wide.load, %wide.load38
  %i.t = sub <16 x i8> %wide.load37, %wide.load39
  %i.u = select <16 x i1> %i.o, <16 x i8> %i.q, <16 x i8> %i.s
  %i.v = select <16 x i1> %i.p, <16 x i8> %i.r, <16 x i8> %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load40 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !683, !noalias !684
  %wide.load41 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !683, !noalias !684
  %i.y = add <16 x i8> %i.u, %wide.load40
  %i.z = add <16 x i8> %i.v, %wide.load41
  store <16 x i8> %i.y, ptr %i.w, align 1, !alias.scope !683, !noalias !684
  store <16 x i8> %i.z, ptr %i.x, align 1, !alias.scope !683, !noalias !684
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index43.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index43 = phi i64 [ %index.next47, %vec.epilog.vector.body ], [ %index43.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %index43
  %wide.load44 = load <8 x i8>, ptr %i.ab, align 1, !alias.scope !681 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %index43
  %wide.load45 = load <8 x i8>, ptr %i.ac, align 1, !alias.scope !682 ; 3 uses
  %i.ad = icmp slt <8 x i8> %wide.load44, %wide.load45
  %i.ae = sub <8 x i8> %wide.load45, %wide.load44
  %i.af = sub <8 x i8> %wide.load44, %wide.load45
  %i.ag = select <8 x i1> %i.ad, <8 x i8> %i.ae, <8 x i8> %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index43 ; 2 uses
  %wide.load46 = load <8 x i8>, ptr %i.ah, align 1, !alias.scope !683, !noalias !684
  %i.ai = add <8 x i8> %i.ag, %wide.load46
  store <8 x i8> %i.ai, ptr %i.ah, align 1, !alias.scope !683, !noalias !684
  %index.next47 = add nuw i64 %index43, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next47, %i.g
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !679

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bh, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.027
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp slt i8 %i.al, %i.an
  %i.ap = sub i8 %i.an, %i.al
  %i.aq = sub i8 %i.al, %i.an
  %i.ar = select i1 %i.ao, i8 %i.ap, i8 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.027 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1
  %i.au = add i8 %i.ar, %i.at
  store i8 %i.au, ptr %i.as, align 1
  %i.av = or disjoint i64 %.027, 1                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1             ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1             ; 3 uses
  %i.ba = icmp slt i8 %i.ax, %i.az
  %i.bb = sub i8 %i.az, %i.ax
  %i.bc = sub i8 %i.ax, %i.az
  %i.bd = select i1 %i.ba, i8 %i.bb, i8 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = add i8 %i.bd, %i.bf
  store i8 %i.bg, ptr %i.be, align 1
  %i.bh = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !680

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bi = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bi, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bj = add nuw nsw i32 %i.e, 8
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %0, i64 %i.g
  %i.bm = xor i64 %i.g, -1
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = and i64 %i.bn, -8
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 range(i64 0, 8185) %i.bp, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_saba_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound032 = icmp ult ptr %0, %4
  %bound133 = icmp ult ptr %2, %i.i
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !alias.scope !692 ; 3 uses
  %wide.load35 = load <8 x i16>, ptr %i.l, align 2, !alias.scope !692 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load36 = load <8 x i16>, ptr %i.m, align 2, !alias.scope !693 ; 3 uses
  %wide.load37 = load <8 x i16>, ptr %i.n, align 2, !alias.scope !693 ; 3 uses
  %i.o = icmp slt <8 x i16> %wide.load, %wide.load36
  %i.p = icmp slt <8 x i16> %wide.load35, %wide.load37
  %i.q = sub <8 x i16> %wide.load36, %wide.load
  %i.r = sub <8 x i16> %wide.load37, %wide.load35
  %i.s = sub <8 x i16> %wide.load, %wide.load36
  %i.t = sub <8 x i16> %wide.load35, %wide.load37
  %i.u = select <8 x i1> %i.o, <8 x i16> %i.q, <8 x i16> %i.s
  %i.v = select <8 x i1> %i.p, <8 x i16> %i.r, <8 x i16> %i.t
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load38 = load <8 x i16>, ptr %i.w, align 2, !alias.scope !694, !noalias !695
  %wide.load39 = load <8 x i16>, ptr %i.x, align 2, !alias.scope !694, !noalias !695
  %i.y = add <8 x i16> %i.u, %wide.load38
  %i.z = add <8 x i16> %i.v, %wide.load39
  store <8 x i16> %i.y, ptr %i.w, align 2, !alias.scope !694, !noalias !695
  store <8 x i16> %i.z, ptr %i.x, align 2, !alias.scope !694, !noalias !695
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ab = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index41.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index41 = phi i64 [ %index.next45, %vec.epilog.vector.body ], [ %index41.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index41
  %wide.load42 = load <4 x i16>, ptr %i.ac, align 2, !alias.scope !692 ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index41
  %wide.load43 = load <4 x i16>, ptr %i.ad, align 2, !alias.scope !693 ; 3 uses
  %i.ae = icmp slt <4 x i16> %wide.load42, %wide.load43
  %i.af = sub <4 x i16> %wide.load43, %wide.load42
  %i.ag = sub <4 x i16> %wide.load42, %wide.load43
  %i.ah = select <4 x i1> %i.ae, <4 x i16> %i.af, <4 x i16> %i.ag
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index41 ; 2 uses
  %wide.load44 = load <4 x i16>, ptr %i.ai, align 2, !alias.scope !694, !noalias !695
  %i.aj = add <4 x i16> %i.ah, %wide.load44
  store <4 x i16> %i.aj, ptr %i.ai, align 2, !alias.scope !694, !noalias !695
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next45, %i.h
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !690

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.bi, %vec.epilog.scalar.ph ] ; 5 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.026
  %i.am = load i16, ptr %i.al, align 2            ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %i.ap = icmp slt i16 %i.am, %i.ao
  %i.aq = sub i16 %i.ao, %i.am
  %i.ar = sub i16 %i.am, %i.ao
  %i.as = select i1 %i.ap, i16 %i.aq, i16 %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2
  %i.av = add i16 %i.as, %i.au
  store i16 %i.av, ptr %i.at, align 2
  %i.aw = or disjoint i64 %.026, 1                ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2            ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ba = load i16, ptr %i.az, align 2            ; 3 uses
  %i.bb = icmp slt i16 %i.ay, %i.ba
  %i.bc = sub i16 %i.ba, %i.ay
  %i.bd = sub i16 %i.ay, %i.ba
  %i.be = select i1 %i.bb, i16 %i.bc, i16 %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = add i16 %i.be, %i.bg
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !691

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bj, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bk = add nuw nsw i32 %i.e, 8
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %0, i64 %i.g
  %i.bn = xor i64 %i.g, -1
  %i.bo = add nsw i64 %i.bn, %i.bl
  %i.bp = and i64 %i.bo, -8
  %i.bq = add nsw i64 %i.bp, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 range(i64 0, 8185) %i.bq, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_saba_s(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound032 = icmp ult ptr %0, %4
  %bound133 = icmp ult ptr %2, %i.i
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !alias.scope !702 ; 3 uses
  %wide.load35 = load <4 x i32>, ptr %i.l, align 4, !alias.scope !702 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load36 = load <4 x i32>, ptr %i.m, align 4, !alias.scope !703 ; 3 uses
  %wide.load37 = load <4 x i32>, ptr %i.n, align 4, !alias.scope !703 ; 3 uses
  %i.o = icmp slt <4 x i32> %wide.load, %wide.load36
  %i.p = icmp slt <4 x i32> %wide.load35, %wide.load37
  %i.q = sub <4 x i32> %wide.load36, %wide.load
  %i.r = sub <4 x i32> %wide.load37, %wide.load35
  %i.s = sub <4 x i32> %wide.load, %wide.load36
  %i.t = sub <4 x i32> %wide.load35, %wide.load37
  %i.u = select <4 x i1> %i.o, <4 x i32> %i.q, <4 x i32> %i.s
  %i.v = select <4 x i1> %i.p, <4 x i32> %i.r, <4 x i32> %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load38 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !704, !noalias !705
  %wide.load39 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !704, !noalias !705
  %i.y = add <4 x i32> %i.u, %wide.load38
  %i.z = add <4 x i32> %i.v, %wide.load39
  store <4 x i32> %i.y, ptr %i.w, align 4, !alias.scope !704, !noalias !705
  store <4 x i32> %i.z, ptr %i.x, align 4, !alias.scope !704, !noalias !705
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.ay, %scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = icmp slt i32 %i.ac, %i.ae
  %i.ag = sub i32 %i.ae, %i.ac
  %i.ah = sub i32 %i.ac, %i.ae
  %i.ai = select i1 %i.af, i32 %i.ag, i32 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ai, %i.ak
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = or disjoint i64 %.026, 1                ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  %i.as = sub i32 %i.aq, %i.ao
  %i.at = sub i32 %i.ao, %i.aq
  %i.au = select i1 %i.ar, i32 %i.as, i32 %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.au, %i.aw
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !701

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 range(i64 0, 8185) %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_saba_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound032 = icmp ult ptr %0, %4
  %bound133 = icmp ult ptr %2, %i.i
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435452                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !alias.scope !712 ; 3 uses
  %wide.load35 = load <2 x i64>, ptr %i.l, align 8, !alias.scope !712 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.m, align 8, !alias.scope !713 ; 3 uses
  %wide.load37 = load <2 x i64>, ptr %i.n, align 8, !alias.scope !713 ; 3 uses
  %i.o = icmp slt <2 x i64> %wide.load, %wide.load36
  %i.p = icmp slt <2 x i64> %wide.load35, %wide.load37
  %i.q = sub <2 x i64> %wide.load36, %wide.load
  %i.r = sub <2 x i64> %wide.load37, %wide.load35
  %i.s = sub <2 x i64> %wide.load, %wide.load36
  %i.t = sub <2 x i64> %wide.load35, %wide.load37
  %i.u = select <2 x i1> %i.o, <2 x i64> %i.q, <2 x i64> %i.s
  %i.v = select <2 x i1> %i.p, <2 x i64> %i.r, <2 x i64> %i.t
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load38 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !714, !noalias !715
  %wide.load39 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !714, !noalias !715
  %i.y = add <2 x i64> %i.u, %wide.load38
  %i.z = add <2 x i64> %i.v, %wide.load39
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !714, !noalias !715
  store <2 x i64> %i.z, ptr %i.x, align 8, !alias.scope !714, !noalias !715
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.026.ph, 1
  %i.ab = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026.ph
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026.ph
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp slt i64 %i.ad, %i.af
  %i.ah = sub i64 %i.af, %i.ad
  %i.ai = sub i64 %i.ad, %i.af
  %i.aj = select i1 %i.ag, i64 %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026.ph ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.aj, %i.al
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = or disjoint i64 %.026.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.026.unr = phi i64 [ %.026.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.h, %.neg
  br i1 %i.ao, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi i64 [ %i.bm, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp slt i64 %i.aq, %i.as
  %i.au = sub i64 %i.as, %i.aq
  %i.av = sub i64 %i.aq, %i.as
  %i.aw = select i1 %i.at, i64 %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ax, align 8
  %i.ba = add nuw nsw i64 %.026, 1                ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp slt i64 %i.bc, %i.be
  %i.bg = sub i64 %i.be, %i.bc
  %i.bh = sub i64 %i.bc, %i.be
  %i.bi = select i1 %i.bf, i64 %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ba ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !711

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bn = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bn, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bo = add nuw nsw i32 %i.e, 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %0, i64 %i.g
  %i.br = xor i64 %i.g, -1
  %i.bs = add nsw i64 %i.br, %i.bp
  %i.bt = and i64 %i.bs, -8
  %i.bu = add nsw i64 %i.bt, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 range(i64 0, 8185) %i.bu, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uaba_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 10 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.i
  %bound1 = icmp ult ptr %1, %i.h
  %found.conflict = and i1 %bound0.a, %bound1
  %bound034 = icmp ult ptr %0, %4
  %bound135 = icmp ult ptr %2, %i.h
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !alias.scope !723 ; 3 uses
  %wide.load37 = load <16 x i8>, ptr %i.l, align 1, !alias.scope !723 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load38 = load <16 x i8>, ptr %i.m, align 1, !alias.scope !724 ; 3 uses
  %wide.load39 = load <16 x i8>, ptr %i.n, align 1, !alias.scope !724 ; 3 uses
  %i.o = icmp ult <16 x i8> %wide.load, %wide.load38
  %i.p = icmp ult <16 x i8> %wide.load37, %wide.load39
  %i.q = sub nuw <16 x i8> %wide.load38, %wide.load
  %i.r = sub nuw <16 x i8> %wide.load39, %wide.load37
  %i.s = sub nuw <16 x i8> %wide.load, %wide.load38
  %i.t = sub nuw <16 x i8> %wide.load37, %wide.load39
  %i.u = select <16 x i1> %i.o, <16 x i8> %i.q, <16 x i8> %i.s
  %i.v = select <16 x i1> %i.p, <16 x i8> %i.r, <16 x i8> %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load40 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !725, !noalias !726
  %wide.load41 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !725, !noalias !726
  %i.y = add <16 x i8> %i.u, %wide.load40
  %i.z = add <16 x i8> %i.v, %wide.load41
  store <16 x i8> %i.y, ptr %i.w, align 1, !alias.scope !725, !noalias !726
  store <16 x i8> %i.z, ptr %i.x, align 1, !alias.scope !725, !noalias !726
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index43.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index43 = phi i64 [ %index.next47, %vec.epilog.vector.body ], [ %index43.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %index43
  %wide.load44 = load <8 x i8>, ptr %i.ab, align 1, !alias.scope !723 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %index43
  %wide.load45 = load <8 x i8>, ptr %i.ac, align 1, !alias.scope !724 ; 3 uses
  %i.ad = icmp ult <8 x i8> %wide.load44, %wide.load45
  %i.ae = sub nuw <8 x i8> %wide.load45, %wide.load44
  %i.af = sub nuw <8 x i8> %wide.load44, %wide.load45
  %i.ag = select <8 x i1> %i.ad, <8 x i8> %i.ae, <8 x i8> %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index43 ; 2 uses
  %wide.load46 = load <8 x i8>, ptr %i.ah, align 1, !alias.scope !725, !noalias !726
  %i.ai = add <8 x i8> %i.ag, %wide.load46
  store <8 x i8> %i.ai, ptr %i.ah, align 1, !alias.scope !725, !noalias !726
  %index.next47 = add nuw i64 %index43, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next47, %i.g
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !721

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bh, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.027
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp ult i8 %i.al, %i.an
  %i.ap = sub nuw i8 %i.an, %i.al
  %i.aq = sub nuw i8 %i.al, %i.an
  %i.ar = select i1 %i.ao, i8 %i.ap, i8 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.027 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1
  %i.au = add i8 %i.ar, %i.at
  store i8 %i.au, ptr %i.as, align 1
  %i.av = or disjoint i64 %.027, 1                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1             ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1             ; 3 uses
  %i.ba = icmp ult i8 %i.ax, %i.az
  %i.bb = sub nuw i8 %i.az, %i.ax
  %i.bc = sub nuw i8 %i.ax, %i.az
  %i.bd = select i1 %i.ba, i8 %i.bb, i8 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = add i8 %i.bd, %i.bf
  store i8 %i.bg, ptr %i.be, align 1
  %i.bh = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !722

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bi = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bi, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bj = add nuw nsw i32 %i.e, 8
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %0, i64 %i.g
  %i.bm = xor i64 %i.g, -1
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = and i64 %i.bn, -8
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 range(i64 0, 8185) %i.bp, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uaba_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound032 = icmp ult ptr %0, %4
  %bound133 = icmp ult ptr %2, %i.i
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !alias.scope !734 ; 3 uses
  %wide.load35 = load <8 x i16>, ptr %i.l, align 2, !alias.scope !734 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load36 = load <8 x i16>, ptr %i.m, align 2, !alias.scope !735 ; 3 uses
  %wide.load37 = load <8 x i16>, ptr %i.n, align 2, !alias.scope !735 ; 3 uses
  %i.o = icmp ult <8 x i16> %wide.load, %wide.load36
  %i.p = icmp ult <8 x i16> %wide.load35, %wide.load37
  %i.q = sub nuw <8 x i16> %wide.load36, %wide.load
  %i.r = sub nuw <8 x i16> %wide.load37, %wide.load35
  %i.s = sub nuw <8 x i16> %wide.load, %wide.load36
  %i.t = sub nuw <8 x i16> %wide.load35, %wide.load37
  %i.u = select <8 x i1> %i.o, <8 x i16> %i.q, <8 x i16> %i.s
  %i.v = select <8 x i1> %i.p, <8 x i16> %i.r, <8 x i16> %i.t
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load38 = load <8 x i16>, ptr %i.w, align 2, !alias.scope !736, !noalias !737
  %wide.load39 = load <8 x i16>, ptr %i.x, align 2, !alias.scope !736, !noalias !737
  %i.y = add <8 x i16> %i.u, %wide.load38
  %i.z = add <8 x i16> %i.v, %wide.load39
  store <8 x i16> %i.y, ptr %i.w, align 2, !alias.scope !736, !noalias !737
  store <8 x i16> %i.z, ptr %i.x, align 2, !alias.scope !736, !noalias !737
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ab = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index41.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index41 = phi i64 [ %index.next45, %vec.epilog.vector.body ], [ %index41.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index41
  %wide.load42 = load <4 x i16>, ptr %i.ac, align 2, !alias.scope !734 ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index41
  %wide.load43 = load <4 x i16>, ptr %i.ad, align 2, !alias.scope !735 ; 3 uses
  %i.ae = icmp ult <4 x i16> %wide.load42, %wide.load43
  %i.af = sub nuw <4 x i16> %wide.load43, %wide.load42
  %i.ag = sub nuw <4 x i16> %wide.load42, %wide.load43
  %i.ah = select <4 x i1> %i.ae, <4 x i16> %i.af, <4 x i16> %i.ag
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index41 ; 2 uses
  %wide.load44 = load <4 x i16>, ptr %i.ai, align 2, !alias.scope !736, !noalias !737
  %i.aj = add <4 x i16> %i.ah, %wide.load44
  store <4 x i16> %i.aj, ptr %i.ai, align 2, !alias.scope !736, !noalias !737
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next45, %i.h
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !732

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.bi, %vec.epilog.scalar.ph ] ; 5 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.026
  %i.am = load i16, ptr %i.al, align 2            ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %i.ap = icmp ult i16 %i.am, %i.ao
  %i.aq = sub nuw i16 %i.ao, %i.am
  %i.ar = sub nuw i16 %i.am, %i.ao
  %i.as = select i1 %i.ap, i16 %i.aq, i16 %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2
  %i.av = add i16 %i.as, %i.au
  store i16 %i.av, ptr %i.at, align 2
  %i.aw = or disjoint i64 %.026, 1                ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2            ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ba = load i16, ptr %i.az, align 2            ; 3 uses
  %i.bb = icmp ult i16 %i.ay, %i.ba
  %i.bc = sub nuw i16 %i.ba, %i.ay
  %i.bd = sub nuw i16 %i.ay, %i.ba
  %i.be = select i1 %i.bb, i16 %i.bc, i16 %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = add i16 %i.be, %i.bg
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !733

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bj, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bk = add nuw nsw i32 %i.e, 8
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %0, i64 %i.g
  %i.bn = xor i64 %i.g, -1
  %i.bo = add nsw i64 %i.bn, %i.bl
  %i.bp = and i64 %i.bo, -8
  %i.bq = add nsw i64 %i.bp, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 range(i64 0, 8185) %i.bq, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uaba_s(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound032 = icmp ult ptr %0, %4
  %bound133 = icmp ult ptr %2, %i.i
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !alias.scope !744 ; 3 uses
  %wide.load35 = load <4 x i32>, ptr %i.l, align 4, !alias.scope !744 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load36 = load <4 x i32>, ptr %i.m, align 4, !alias.scope !745 ; 3 uses
  %wide.load37 = load <4 x i32>, ptr %i.n, align 4, !alias.scope !745 ; 3 uses
  %i.o = icmp ult <4 x i32> %wide.load, %wide.load36
  %i.p = icmp ult <4 x i32> %wide.load35, %wide.load37
  %i.q = sub nuw <4 x i32> %wide.load36, %wide.load
  %i.r = sub nuw <4 x i32> %wide.load37, %wide.load35
  %i.s = sub nuw <4 x i32> %wide.load, %wide.load36
  %i.t = sub nuw <4 x i32> %wide.load35, %wide.load37
  %i.u = select <4 x i1> %i.o, <4 x i32> %i.q, <4 x i32> %i.s
  %i.v = select <4 x i1> %i.p, <4 x i32> %i.r, <4 x i32> %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load38 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !746, !noalias !747
  %wide.load39 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !746, !noalias !747
  %i.y = add <4 x i32> %i.u, %wide.load38
  %i.z = add <4 x i32> %i.v, %wide.load39
  store <4 x i32> %i.y, ptr %i.w, align 4, !alias.scope !746, !noalias !747
  store <4 x i32> %i.z, ptr %i.x, align 4, !alias.scope !746, !noalias !747
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !742

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.ay, %scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = icmp ult i32 %i.ac, %i.ae
  %i.ag = sub nuw i32 %i.ae, %i.ac
  %i.ah = sub nuw i32 %i.ac, %i.ae
  %i.ai = select i1 %i.af, i32 %i.ag, i32 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ai, %i.ak
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = or disjoint i64 %.026, 1                ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = sub nuw i32 %i.aq, %i.ao
  %i.at = sub nuw i32 %i.ao, %i.aq
  %i.au = select i1 %i.ar, i32 %i.as, i32 %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.au, %i.aw
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !743

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 range(i64 0, 8185) %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uaba_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.g
  %4 = getelementptr i8, ptr %2, i64 %i.g
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound032 = icmp ult ptr %0, %4
  %bound133 = icmp ult ptr %2, %i.i
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435452                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !alias.scope !754 ; 3 uses
  %wide.load35 = load <2 x i64>, ptr %i.l, align 8, !alias.scope !754 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.m, align 8, !alias.scope !755 ; 3 uses
  %wide.load37 = load <2 x i64>, ptr %i.n, align 8, !alias.scope !755 ; 3 uses
  %i.o = icmp ult <2 x i64> %wide.load, %wide.load36
  %i.p = icmp ult <2 x i64> %wide.load35, %wide.load37
  %i.q = sub nuw <2 x i64> %wide.load36, %wide.load
  %i.r = sub nuw <2 x i64> %wide.load37, %wide.load35
  %i.s = sub nuw <2 x i64> %wide.load, %wide.load36
  %i.t = sub nuw <2 x i64> %wide.load35, %wide.load37
  %i.u = select <2 x i1> %i.o, <2 x i64> %i.q, <2 x i64> %i.s
  %i.v = select <2 x i1> %i.p, <2 x i64> %i.r, <2 x i64> %i.t
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load38 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !756, !noalias !757
  %wide.load39 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !756, !noalias !757
  %i.y = add <2 x i64> %i.u, %wide.load38
  %i.z = add <2 x i64> %i.v, %wide.load39
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !756, !noalias !757
  store <2 x i64> %i.z, ptr %i.x, align 8, !alias.scope !756, !noalias !757
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.026.ph, 1
  %i.ab = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026.ph
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026.ph
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  %i.ah = sub nuw i64 %i.af, %i.ad
  %i.ai = sub nuw i64 %i.ad, %i.af
  %i.aj = select i1 %i.ag, i64 %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026.ph ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.aj, %i.al
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = or disjoint i64 %.026.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.026.unr = phi i64 [ %.026.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.h, %.neg
  br i1 %i.ao, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi i64 [ %i.bm, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  %i.au = sub nuw i64 %i.as, %i.aq
  %i.av = sub nuw i64 %i.aq, %i.as
  %i.aw = select i1 %i.at, i64 %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ax, align 8
  %i.ba = add nuw nsw i64 %.026, 1                ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp ult i64 %i.bc, %i.be
  %i.bg = sub nuw i64 %i.be, %i.bc
  %i.bh = sub nuw i64 %i.bc, %i.be
  %i.bi = select i1 %i.bf, i64 %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ba ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !753

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bn = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bn, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bo = add nuw nsw i32 %i.e, 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %0, i64 %i.g
  %i.br = xor i64 %i.g, -1
  %i.bs = add nsw i64 %i.br, %i.bp
  %i.bt = and i64 %i.bs, -8
  %i.bu = add nsw i64 %i.bt, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 range(i64 0, 8185) %i.bu, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_faddp_h(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !22
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !763
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.d
  %.03237 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = getelementptr i8, ptr %i.k, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = call zeroext i16 @float16_add(i16 noundef zeroext %i.l, i16 noundef zeroext %i.n, ptr noundef %3) #18
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03237
  store i16 %i.o, ptr %i.p, align 2
  %i.q = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !761

bb.e:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.r, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.e, 8
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 %i.g
  %i.v = xor i64 %i.g, -1
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = and i64 %i.w, -8
  %i.y = add nsw i64 %i.x, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 range(i64 0, 8185) %i.y, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.f:                                             ; preds = %.preheader, %bb.f
  %.038 = phi i64 [ 0, %.preheader ], [ %i.ae, %bb.f ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 2
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr i8, ptr %i.z, i64 2
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = call zeroext i16 @float16_add(i16 noundef zeroext %i.aa, i16 noundef zeroext %i.ac, ptr noundef %3) #18
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.038
  store i16 %i.ad, ptr %gep, align 2
  %i.ae = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond39.not, label %bb.e, label %bb.f, !llvm.loop !762
}
end_hunk_3
