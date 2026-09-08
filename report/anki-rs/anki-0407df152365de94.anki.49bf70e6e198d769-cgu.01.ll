Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hdc1927075ff31c6eE":bb.a
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9wrap_copy17h8653038222c50b72E"(i64 %.0.val, ptr nofree captures(none) %.8.val, i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #26 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %1, %0                           ; 2 uses
  %i.d = add i64 %i.c, %.0.val                    ; 2 uses
  %.not = icmp ult i64 %i.d, %.0.val
  %. = select i1 %.not, i64 %i.d, i64 %i.c
  %i.e = icmp ult i64 %., %2                      ; 2 uses
  %i.f = sub i64 %.0.val, %0                      ; 11 uses
  %i.g = sub i64 %.0.val, %1                      ; 11 uses
  %i.h = icmp ult i64 %i.f, %2
  %i.i = icmp ult i64 %i.g, %2                    ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %0
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %1
  %i.l = shl i64 %2, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.j, i64 %i.l, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.m = getelementptr [32 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %1
  %i.o = shl i64 %i.g, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.o, i1 false)
  %i.p = sub nuw i64 %2, %i.g
  %i.q = getelementptr [32 x i8], ptr %i.m, i64 %i.g
  %i.r = shl i64 %i.p, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.q, i64 %i.r, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.t = getelementptr [32 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.u = getelementptr [32 x i8], ptr %i.t, i64 %i.g
  %i.v = shl i64 %i.s, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.u, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %1
  %i.x = shl i64 %i.g, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.t, i64 %i.x, i1 false)
  br label %bb.g

bb.j:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.z = getelementptr [32 x i8], ptr %.8.val, i64 %1 ; 4 uses
  %i.aa = shl i64 %i.f, 5                         ; 2 uses
  br i1 %i.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.ab = sub nuw i64 %2, %i.f
  %i.ac = getelementptr [32 x i8], ptr %i.z, i64 %i.f
  %i.ad = shl i64 %i.ab, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr nonnull align 8 %.8.val, i64 %i.ad, i1 false)
  br label %bb.g

bb.m:                                             ; preds = %bb.j
  %i.ae = sub i64 %i.g, %i.f                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.af = getelementptr [32 x i8], ptr %i.z, i64 %i.f
  %i.ag = shl i64 %i.ae, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr nonnull align 8 %.8.val, i64 %i.ag, i1 false)
  %i.ah = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %i.ae
  %i.aj = shl i64 %i.ah, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false)
  br label %bb.g

bb.n:                                             ; preds = %bb.k
  %i.ak = sub nuw i64 %2, %i.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.al = getelementptr [32 x i8], ptr %.8.val, i64 %1 ; 2 uses
  %i.am = getelementptr [32 x i8], ptr %i.al, i64 %i.f
  %i.an = shl i64 %i.ak, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr nonnull align 8 %.8.val, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %0
  %i.ap = shl i64 %i.f, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false)
  br label %bb.g

bb.o:                                             ; preds = %bb.k
  %i.aq = sub i64 %i.f, %i.g                      ; 3 uses
  %i.ar = sub nuw i64 %2, %i.f
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %i.aq
  %i.at = shl i64 %i.ar, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %.8.val, i64 %i.at, i1 false)
  %i.au = sub i64 %.0.val, %i.aq
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %i.au
  %i.aw = shl i64 %i.aq, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.av, i64 %i.aw, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %0
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %1
  %i.az = shl i64 %i.g, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.ax, i64 %i.az, i1 false)
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$anki..revlog..RevlogId$u20$as$u20$core..fmt..Display$GT$3fmt17h7e6055157035b666E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN65_$LT$$RF$F$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17ha31acc3cbe3e1d23E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !14, !noundef !11
  tail call void @"_ZN86_$LT$tracing_core..event..Event$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17h902440200cdacb06E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN65_$LT$anki..card..CardId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h00b07304b7b07214E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !6394, !noalias !6395, !noundef !11 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6394, !noalias !6395
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  %.not92112.i = icmp eq i64 %i.g, 0              ; 2 uses
  br i1 %i.h, label %.preheader100.i, label %.preheader102.i.preheader

.preheader102.i.preheader:                        ; preds = %bb.e
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.preheader100.i:                                  ; preds = %bb.e
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader102.i.preheader, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %.preheader102.i.preheader ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %.preheader102.i.preheader ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %.preheader102.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !6394, !noalias !6395, !noundef !11
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !6394, !noalias !6395, !noundef !11
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !6394, !noalias !6395, !noundef !11
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !6394, !noalias !6395, !noundef !11
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader102.i.preheader, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ 0, %.preheader102.i.preheader ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3829dca273784030E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !13, !noundef !11
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8fc3cc5ee5b822cbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !11
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd89ba1ef5ff86273E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !13, !noundef !11
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @"_ZN67_$LT$anki..card..CardType$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17ha98936f89b1047dcE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 3 uses
  %i.b = load i8, ptr %0, align 1, !range !30, !noundef !11
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.09.124.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = or disjoint i8 %i.b, 48
  store i8 %i.c, ptr %.sroa.09.124.i.sroa.gep1.i.i, align 1, !alias.scope !6398
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.09.124.i.sroa.gep1.i.i, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$anki..timestamp..TimestampSecs$u20$as$u20$core..fmt..Debug$GT$3fmt17h49b821acd9a31376E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @204, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN67_$LT$matchit..tree..Node$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74e3e9750cd10bc0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load i32, ptr %i.g, align 8, !range !13, !noundef !11
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 124
  %.val = load i32, ptr %i.j, align 4, !noundef !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i32 [ %.val, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6402
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2ff4de40dc9149eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !6403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6402
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdd0ae400a82d2a7bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %"_ZN70_$LT$matchit..escape..UnescapedRoute$u20$as$u20$core..clone..Clone$GT$5clone17h47ccafc4aa208c27E.exit" unwind label %bb.d, !noalias !6403

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %common.resume unwind label %bb.e, !noalias !6403

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45, !noalias !6403
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %.pn.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN70_$LT$matchit..escape..UnescapedRoute$u20$as$u20$core..clone..Clone$GT$5clone17h47ccafc4aa208c27E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6404
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6402
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.p = load i8, ptr %i.o, align 4, !range !12, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.r = load i8, ptr %i.q, align 1, !range !30, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2ff4de40dc9149eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.t, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$matchit..escape..UnescapedRoute$GT$17h6094b72f9c7f61b9E"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #44
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %"_ZN70_$LT$matchit..escape..UnescapedRoute$u20$as$u20$core..clone..Clone$GT$5clone17h47ccafc4aa208c27E.exit"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %"_ZN70_$LT$matchit..escape..UnescapedRoute$u20$as$u20$core..clone..Clone$GT$5clone17h47ccafc4aa208c27E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h74f103fc0a944a11E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.v, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
          to label %bb.f unwind label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
end_hunk_0
begin_hunk_1_@"_ZN69_$LT$anki..card..CardQueue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h9323c733eae89e9cE":bb.a

bb.k:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -2, ptr %i.af, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -3, ptr %i.ag, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN69_$LT$anki..card..CardQueue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hbd7bc528780b06b5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 21 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_i817h06d08e0bf6e25cdbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.e = load i8, ptr %i.d, align 8, !range !12, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !14, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i8 1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  switch i8 %i.k, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 -1, label %bb.j
    i8 -2, label %bb.k
    i8 -3, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.k, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.44.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @205, ptr %i.l, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.48.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @206, ptr %i.m, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.412.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @207, ptr %i.n, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.416.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @208, ptr %i.o, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.420.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @213, ptr %i.p, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.424.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr @214, ptr %i.q, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.428.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @215, ptr %i.r, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.432.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr @216, ptr %i.s, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17h502035113c100c1bE", ptr %.sroa.436.0..sroa_idx, align 8
  store ptr @217, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 9, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 9, ptr %i.w, align 8
  %i.x = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hac6af6750b682b74E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.z, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aa, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ab, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ac, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.ad, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.ae, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -2, ptr %i.af, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -3, ptr %i.ag, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN69_$LT$anki..revlog..RevlogId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hc86441129f3eb1cdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !6437, !noalias !6438, !noundef !11 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6437, !noalias !6438
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  %.not92112.i = icmp eq i64 %i.g, 0              ; 2 uses
  br i1 %i.h, label %.preheader100.i, label %.preheader102.i.preheader

.preheader102.i.preheader:                        ; preds = %bb.e
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.preheader100.i:                                  ; preds = %bb.e
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader102.i.preheader, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %.preheader102.i.preheader ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %.preheader102.i.preheader ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %.preheader102.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !6437, !noalias !6438, !noundef !11
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !6437, !noalias !6438, !noundef !11
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !6437, !noalias !6438, !noundef !11
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !6437, !noalias !6438, !noundef !11
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader102.i.preheader, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ 0, %.preheader102.i.preheader ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @219, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @218)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN72_$LT$anki..revlog..RevlogEntry$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h57b65e78f6f5e537E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 8 uses
  %i.c = alloca [40 x i8], align 1                ; 8 uses
  %i.d = alloca [40 x i8], align 1                ; 7 uses
  %i.e = alloca [40 x i8], align 1                ; 9 uses
  %i.f = alloca [40 x i8], align 1                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6492
  call void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @142, i64 noundef 11, i64 noundef 9), !noalias !6493
  %i.q = load i8, ptr %i.g, align 8, !range !33, !noalias !6492, !noundef !11 ; 3 uses
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !6492, !nonnull !11, !align !14, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6492
  br label %"_ZN72_$LT$anki..revlog..RevlogEntry$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_146_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..revlog..RevlogEntry$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hd07b0f0ed439fd32E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.537.0..sroa_idx.i, i64 7, i1 false), !noalias !6492
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.638.0.copyload.i = load ptr, ptr %.sroa.638.0..sroa_idx.i, align 8, !noalias !6492 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6492
  store i8 %i.q, ptr %i.h, align 8, !noalias !6492
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.638.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6492
  call void @llvm.experimental.noalias.scope.decl(metadata !6494)
  call void @llvm.experimental.noalias.scope.decl(metadata !6495)
  %i.u = trunc nuw i8 %i.q to i1
  br i1 %i.u, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #46, !noalias !6496
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !range !33, !alias.scope !6497, !noalias !6492, !noundef !11
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %.sroa.638.0.copyload.i, align 8, !noalias !6496, !nonnull !11, !noundef !11
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 1), !noalias !6496
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i: ; preds = %bb.f, %bb.e
  store i8 2, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !6497, !noalias !6492
  %.val9.i.i.i = load ptr, ptr %.sroa.638.0.copyload.i, align 8, !noalias !6496 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %0, align 8, !noalias !6496, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6498
  call void @llvm.experimental.noalias.scope.decl(metadata !6499)
  %i.x = icmp sgt i64 %.val.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.val.i.i.i.i, i1 false) ; 3 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ 20, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.z = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.z, label %bb.g, label %bb.h

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 20, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i ] ; 2 uses
  %i.aa = urem i64 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i, 10000
  %i.ab = udiv i64 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %i.aa to i16 ; 2 uses
  %i.ac = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 100
  %i.ad = shl nuw nsw i16 %i.ac, 1
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 100
  %i.ag = shl nuw nsw i16 %i.af, 1
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr @174, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai
  %i.al = load i16, ptr %i.aj, align 1, !noalias !6500
  store i16 %i.al, ptr %i.ak, align 1, !alias.scope !6499, !noalias !6498
  %i.am = getelementptr inbounds nuw i8, ptr @174, i64 %i.ah
  %i.an = getelementptr i8, ptr %i.f, i64 %.sroa.09.028.i.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -2
  %i.ap = load i16, ptr %i.am, align 1, !noalias !6500
  store i16 %i.ap, ptr %i.ao, align 1, !alias.scope !6499, !noalias !6498
  %i.aq = icmp ugt i64 %.sroa.0.129.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.ar = urem i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i, 100
  %i.as = shl nuw nsw i16 %i.ar, 1
  %i.at = zext nneg i16 %i.as to i64
  %i.au = udiv i16 %.lhs.trunc24.i.i.i.i.i.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.au to i64
  %i.av = add i64 %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @174, i64 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.av
  %i.ay = load i16, ptr %i.aw, align 1, !noalias !6500
  store i16 %i.ay, ptr %i.ax, align 1, !alias.scope !6499, !noalias !6498
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.av, %bb.g ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.zext27.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.az = icmp samesign ult i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = shl nuw nsw i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i, 1
  %i.bb = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @174, i64 %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bb
  %i.be = load i16, ptr %i.bc, align 1, !noalias !6500
  store i16 %i.be, ptr %i.bd, align 1, !alias.scope !6499, !noalias !6498
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bg = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bf
  %i.bi = or disjoint i8 %i.bg, 48
  store i8 %i.bi, ptr %i.bh, align 1, !alias.scope !6499, !noalias !6498
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %bb.j ], [ %i.bb, %bb.i ] ; 2 uses
  br i1 %i.x, label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bj
  store i8 45, ptr %i.bk, align 1, !alias.scope !6499, !noalias !6498
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i: ; preds = %bb.l, %bb.k
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bl = sub i64 20, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp ult i64 %i.bl, 21
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bl), !noalias !6496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6498
  %.val.i.i50.i = load ptr, ptr %.sroa.638.0.copyload.i, align 8, !noalias !6501, !nonnull !11, !noundef !11
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i50.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 1), !noalias !6501
  %.val9.i.i52.i = load ptr, ptr %.sroa.638.0.copyload.i, align 8, !alias.scope !6502, !noalias !6503 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6504)
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !6504, !noalias !6505, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6506
  call void @llvm.experimental.noalias.scope.decl(metadata !6507)
  %i.bo = icmp sgt i64 %.val1.i.i.i.i.i, -1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i53.i = call i64 @llvm.abs.i64(i64 %.val1.i.i.i.i.i, i1 false) ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i53.i, 9999
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i.i63.i, label %._crit_edge.i.i.i.i.i.i.i.i.i54.i

._crit_edge.i.i.i.i.i.i.i.i.i54.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i63.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i
  %.sroa.09.0.lcssa.i.i.i.i.i.i.i.i.i55.i = phi i64 [ 20, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i63.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i56.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i53.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i63.i ] ; 3 uses
  %i.bq = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i56.i, 99
  br i1 %i.bq, label %bb.m, label %bb.n

.lr.ph.i.i.i.i.i.i.i.i.i63.i:                     ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i, %.lr.ph.i.i.i.i.i.i.i.i.i63.i
  %.sroa.0.129.i.i.i.i.i.i.i.i.i64.i = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i63.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i53.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i51.i ] ; 3 uses
end_hunk_1
