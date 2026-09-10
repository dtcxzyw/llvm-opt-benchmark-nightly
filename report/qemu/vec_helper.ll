Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@do_sqrdmlah_h:bb.a
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrdmlah_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %sext = shl i32 %1, 16
  %i.b = ashr exact i32 %sext, 16
  %sext13 = shl i32 %2, 16
  %i.c = ashr exact i32 %sext13, 16
  %i.d = mul nsw i32 %i.c, %i.b
  %sext14 = shl i32 %3, 16
  %i.e = ashr exact i32 %sext14, 1
  %i.f = or disjoint i32 %i.e, 16384
  %i.g = add i32 %i.f, %i.d
  %i.h = ashr i32 %i.g, 15                        ; 3 uses
  %i.i = add nsw i32 %i.h, 32768
  %.not.i = icmp ult i32 %i.i, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  %i.j = icmp slt i32 %i.h, 0
  %i.k = select i1 %i.j, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.k, %bb.b ], [ %i.h, %bb.a ]
  %i.l = ashr i32 %1, 16
  %i.m = ashr i32 %2, 16
  %i.n = mul nsw i32 %i.m, %i.l
  %i.o = ashr i32 %3, 1
  %i.p = and i32 %i.o, -32768
  %i.q = add nsw i32 %i.n, 16384
  %i.r = add i32 %i.q, %i.p
  %i.s = ashr i32 %i.r, 15                        ; 3 uses
  %i.t = add nsw i32 %i.s, 32768
  %.not.i10 = icmp ult i32 %i.t, 65536
  br i1 %.not.i10, label %do_sqrdmlah_h.exit12, label %bb.c

bb.c:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %i.a, align 4
  %i.u = icmp slt i32 %i.s, 0
  %i.v = select i1 %i.u, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit12

do_sqrdmlah_h.exit12:                             ; preds = %do_sqrdmlah_h.exit, %bb.c
  %.1.i11 = phi i32 [ %i.v, %bb.c ], [ %i.s, %do_sqrdmlah_h.exit ]
  %i.w = and i32 %.1.i, 65535
  %i.x = shl nsw i32 %.1.i11, 16
  %i.y = or disjoint i32 %i.x, %i.w
  ret i32 %i.y
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
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 3 uses
  %scevgep20 = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %scevgep21 = getelementptr i8, ptr %1, i64 %i.g ; 2 uses
  %scevgep22 = getelementptr i8, ptr %2, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %3, %scevgep20
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult ptr %3, %scevgep21
  %bound124 = icmp ult ptr %1, %scevgep
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  %bound026 = icmp ult ptr %3, %scevgep22
  %bound127 = icmp ult ptr %2, %scevgep
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %conflict.rdx, %found.conflict28
  %bound030 = icmp ult ptr %0, %scevgep21
  %bound131 = icmp ult ptr %1, %scevgep20
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx29, %found.conflict32
  %bound034 = icmp ult ptr %0, %scevgep22
  %bound135 = icmp ult ptr %2, %scevgep20
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.i, align 2, !alias.scope !44
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load38 = load <4 x i16>, ptr %i.j, align 2, !alias.scope !45
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load39 = load <4 x i16>, ptr %i.k, align 2, !alias.scope !46, !noalias !47
  %i.l = sext <4 x i16> %wide.load to <4 x i32>
  %i.m = sext <4 x i16> %wide.load38 to <4 x i32>
  %i.n = mul nsw <4 x i32> %i.m, %i.l
  %i.o = sext <4 x i16> %wide.load39 to <4 x i32>
  %i.p = shl nsw <4 x i32> %i.o, splat (i32 15)
  %i.q = add nsw <4 x i32> %i.n, splat (i32 16384)
  %i.r = add nsw <4 x i32> %i.q, %i.p
  %i.s = ashr <4 x i32> %i.r, splat (i32 15)      ; 3 uses
  %i.t = add nsw <4 x i32> %i.s, splat (i32 -32768)
  %i.u = icmp ult <4 x i32> %i.t, splat (i32 -65536) ; 2 uses
  %i.v = bitcast <4 x i1> %i.u to i4
  %.not = icmp eq i4 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %3, align 4, !alias.scope !48, !noalias !49
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.w = icmp slt <4 x i32> %i.s, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i32> splat (i32 32768), <4 x i32> splat (i32 32767)
  %predphi = select <4 x i1> %i.u, <4 x i32> %i.x, <4 x i32> %i.s
  %i.y = trunc <4 x i32> %predphi to <4 x i16>
  store <4 x i16> %i.y, ptr %i.k, align 2, !alias.scope !46, !noalias !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %i.h
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !42

scalar.ph:                                        ; preds = %scalar.ph.preheader, %do_sqrdmlah_h.exit
  %.018 = phi i64 [ %i.as, %do_sqrdmlah_h.exit ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.018
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.018
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.ab to i32
  %i.ah = sext i16 %i.ad to i32
  %i.ai = mul nsw i32 %i.ah, %i.ag
  %i.aj = sext i16 %i.af to i32
  %i.ak = shl nsw i32 %i.aj, 15
  %i.al = add nsw i32 %i.ai, 16384
  %i.am = add nsw i32 %i.al, %i.ak
  %i.an = ashr i32 %i.am, 15                      ; 3 uses
  %i.ao = add nsw i32 %i.an, 32768
  %.not.i = icmp ult i32 %i.ao, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  store i32 1, ptr %3, align 4
  %i.ap = icmp slt i32 %i.an, 0
  %i.aq = select i1 %i.ap, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %scalar.ph, %bb.d
  %.1.i = phi i32 [ %i.aq, %bb.d ], [ %i.an, %scalar.ph ]
  %i.ar = trunc nsw i32 %.1.i to i16
  store i16 %i.ar, ptr %i.ae, align 2
  %i.as = add nuw nsw i64 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.h
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !43

middle.block:                                     ; preds = %bb.c, %do_sqrdmlah_h.exit
  %i.at = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.at, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %middle.block
  %i.au = add nuw nsw i32 %i.e, 8
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %0, i64 %i.g
  %i.ax = xor i64 %i.g, -1
  %i.ay = add nsw i64 %i.ax, %i.av
  %i.az = and i64 %i.ay, -8
  %i.ba = add nsw i64 %i.az, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ba, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrdmlsh_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %sext = shl i32 %1, 16
  %i.b = ashr exact i32 %sext, 16
  %sext13 = shl i32 %2, 16
  %i.c = ashr exact i32 %sext13, 16
  %i.d = mul nsw i32 %i.c, %i.b
  %sext14 = shl i32 %3, 16
  %i.e = ashr exact i32 %sext14, 1
  %i.f = or disjoint i32 %i.e, 16384
  %i.g = sub nsw i32 %i.f, %i.d
  %i.h = ashr i32 %i.g, 15                        ; 3 uses
  %i.i = add nsw i32 %i.h, 32768
  %.not.i = icmp ult i32 %i.i, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  %i.j = icmp slt i32 %i.h, 0
  %i.k = select i1 %i.j, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.k, %bb.b ], [ %i.h, %bb.a ]
  %i.l = ashr i32 %1, 16
  %i.m = ashr i32 %2, 16
  %i.n = mul nsw i32 %i.m, %i.l
  %i.o = ashr i32 %3, 1
  %i.p = and i32 %i.o, -32768
  %reass.sub = sub i32 %i.p, %i.n
  %i.q = add i32 %reass.sub, 16384
  %i.r = ashr i32 %i.q, 15                        ; 3 uses
  %i.s = add nsw i32 %i.r, 32768
  %.not.i10 = icmp ult i32 %i.s, 65536
  br i1 %.not.i10, label %do_sqrdmlah_h.exit12, label %bb.c

bb.c:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %i.a, align 4
  %i.t = icmp slt i32 %i.r, 0
  %i.u = select i1 %i.t, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit12

do_sqrdmlah_h.exit12:                             ; preds = %do_sqrdmlah_h.exit, %bb.c
  %.1.i11 = phi i32 [ %i.u, %bb.c ], [ %i.r, %do_sqrdmlah_h.exit ]
  %i.v = and i32 %.1.i, 65535
  %i.w = shl nsw i32 %.1.i11, 16
  %i.x = or disjoint i32 %i.w, %i.v
  ret i32 %i.x
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
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 3 uses
  %scevgep20 = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %scevgep21 = getelementptr i8, ptr %1, i64 %i.g ; 2 uses
  %scevgep22 = getelementptr i8, ptr %2, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %3, %scevgep20
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult ptr %3, %scevgep21
  %bound124 = icmp ult ptr %1, %scevgep
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  %bound026 = icmp ult ptr %3, %scevgep22
  %bound127 = icmp ult ptr %2, %scevgep
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %conflict.rdx, %found.conflict28
  %bound030 = icmp ult ptr %0, %scevgep21
  %bound131 = icmp ult ptr %1, %scevgep20
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx29, %found.conflict32
  %bound034 = icmp ult ptr %0, %scevgep22
  %bound135 = icmp ult ptr %2, %scevgep20
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.i, align 2, !alias.scope !57
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load38 = load <4 x i16>, ptr %i.j, align 2, !alias.scope !58
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load39 = load <4 x i16>, ptr %i.k, align 2, !alias.scope !59, !noalias !60
  %i.l = sext <4 x i16> %wide.load to <4 x i32>
  %i.m = sext <4 x i16> %wide.load38 to <4 x i32>
  %i.n = mul nsw <4 x i32> %i.m, %i.l
  %i.o = sext <4 x i16> %wide.load39 to <4 x i32>
  %i.p = shl nsw <4 x i32> %i.o, splat (i32 15)
  %i.q = sub nsw <4 x i32> %i.p, %i.n
  %i.r = add nsw <4 x i32> %i.q, splat (i32 16384)
  %i.s = ashr <4 x i32> %i.r, splat (i32 15)      ; 3 uses
  %i.t = add nsw <4 x i32> %i.s, splat (i32 -32768)
  %i.u = icmp ult <4 x i32> %i.t, splat (i32 -65536) ; 2 uses
  %i.v = bitcast <4 x i1> %i.u to i4
  %.not = icmp eq i4 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %3, align 4, !alias.scope !61, !noalias !62
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.w = icmp slt <4 x i32> %i.s, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i32> splat (i32 32768), <4 x i32> splat (i32 32767)
  %predphi = select <4 x i1> %i.u, <4 x i32> %i.x, <4 x i32> %i.s
  %i.y = trunc <4 x i32> %predphi to <4 x i16>
  store <4 x i16> %i.y, ptr %i.k, align 2, !alias.scope !59, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %i.h
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !55

scalar.ph:                                        ; preds = %scalar.ph.preheader, %do_sqrdmlah_h.exit
  %.018 = phi i64 [ %i.ar, %do_sqrdmlah_h.exit ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.018
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.018
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.ab to i32
  %i.ah = sext i16 %i.ad to i32
  %i.ai = mul nsw i32 %i.ah, %i.ag
  %i.aj = sext i16 %i.af to i32
  %i.ak = shl nsw i32 %i.aj, 15
  %reass.sub = sub nsw i32 %i.ak, %i.ai
  %i.al = add nsw i32 %reass.sub, 16384
  %i.am = ashr i32 %i.al, 15                      ; 3 uses
  %i.an = add nsw i32 %i.am, 32768
  %.not.i = icmp ult i32 %i.an, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  store i32 1, ptr %3, align 4
  %i.ao = icmp slt i32 %i.am, 0
  %i.ap = select i1 %i.ao, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %scalar.ph, %bb.d
  %.1.i = phi i32 [ %i.ap, %bb.d ], [ %i.am, %scalar.ph ]
  %i.aq = trunc nsw i32 %.1.i to i16
  store i16 %i.aq, ptr %i.ae, align 2
  %i.ar = add nuw nsw i64 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.h
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !56

middle.block:                                     ; preds = %bb.c, %do_sqrdmlah_h.exit
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %middle.block
  %i.at = add nuw nsw i32 %i.e, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.g
  %i.aw = xor i64 %i.g, -1
  %i.ax = add nsw i64 %i.aw, %i.au
  %i.ay = and i64 %i.ax, -8
  %i.az = add nsw i64 %i.ay, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.az, i1 false)
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
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 3 uses
  %scevgep19 = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.g ; 2 uses
  %scevgep21 = getelementptr i8, ptr %2, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %3, %scevgep19
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
