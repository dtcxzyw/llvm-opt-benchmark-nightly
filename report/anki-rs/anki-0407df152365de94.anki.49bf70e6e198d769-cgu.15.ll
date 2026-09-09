Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6475642d147e9cf1E":bb.a

bb.f:                                             ; preds = %bb.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he71820a9e78aaaecE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h29872b8389ba5952E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN66_$LT$anki..notes..NoteId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h7b02dc8d8ab673f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #18 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !15665, !noalias !15666, !noundef !6 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !15665, !noalias !15666
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
  br i1 %i.h, label %.preheader100.i, label %.lr.ph

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
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
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
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
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
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
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !15665, !noalias !15666, !noundef !6
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

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN67_$LT$anki..search..parser..Node$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6da4cb8ad8844399E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !45, !noundef !6 ; 3 uses
  %i.b = add nsw i64 %i.a, 9223372036854775782
  %i.c = icmp ugt i64 %i.a, -9223372036854775783
  %i.d = select i1 %i.c, i64 %i.b, i64 4          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !45, !noundef !6 ; 3 uses
  %i.f = add nsw i64 %i.e, 9223372036854775782
  %2 = icmp ult i64 %i.e, -9223372036854775782    ; 2 uses
  %i.g = select i1 %2, i64 4, i64 %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %.lr.ph, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %3 = phi i1 [ %4, %tailrecurse ], [ %2, %bb.a ]
  %i.i = phi i64 [ %i.t, %tailrecurse ], [ %i.e, %bb.a ] ; 3 uses
  %i.j = phi i64 [ %i.s, %tailrecurse ], [ %i.d, %bb.a ]
  %i.k = phi i64 [ %i.p, %tailrecurse ], [ %i.a, %bb.a ] ; 3 uses
  %.tr216 = phi ptr [ %i.o, %tailrecurse ], [ %1, %bb.a ] ; 55 uses
  %.tr15 = phi ptr [ %i.m, %tailrecurse ], [ %0, %bb.a ] ; 55 uses
  switch i64 %i.j, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit" [
    i64 2, label %tailrecurse
    i64 3, label %bb.b
    i64 4, label %5
  ]

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit": ; preds = %tailrecurse, %.lr.ph, %.lr.ph19, %bb.a, %.preheader.split, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit119.i", %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit103.i", %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i", %bb.i, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i", %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %5
  %.sroa.0.0.shrunk = phi i1 [ %i.ch, %bb.p ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i" ], [ false, %bb.bb ], [ false, %bb.f ], [ true, %5 ], [ false, %bb.a ], [ %i.cr, %bb.s ], [ false, %bb.b ], [ %i.aw, %bb.g ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit119.i" ], [ false, %bb.c ], [ %i.bl, %bb.j ], [ true, %bb.d ], [ %i.bq, %bb.k ], [ %i.bv, %bb.l ], [ false, %bb.h ], [ %i.cm, %bb.q ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i" ], [ false, %bb.o ], [ false, %bb.r ], [ %i.db, %bb.v ], [ %i.dg, %bb.w ], [ %i.dl, %bb.x ], [ false, %bb.t ], [ %i.eg, %bb.ad ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.m ], [ %i.eq, %bb.af ], [ true, %bb.ac ], [ false, %bb.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit103.i" ], [ %i.ff, %bb.aj ], [ %i.fk, %bb.ak ], [ false, %bb.ah ], [ false, %bb.al ], [ %i.gc, %bb.aq ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.av ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.ap ], [ %i.hg, %bb.bc ], [ %i.hb, %bb.ba ], [ %i.gw, %bb.ay ], [ %i.gr, %bb.aw ], [ %i.gm, %bb.au ], [ %i.gh, %bb.as ], [ false, %bb.an ], [ %i.fu, %bb.ao ], [ %i.fp, %bb.am ], [ %i.fa, %bb.ai ], [ false, %bb.y ], [ %i.dq, %bb.z ], [ %i.cw, %bb.u ], [ true, %.preheader.split ], [ %i.ah, %.lr.ph19 ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

tailrecurse:                                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr216, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !range !45, !noundef !6 ; 3 uses
  %i.q = add nsw i64 %i.p, 9223372036854775782
  %i.r = icmp ugt i64 %i.p, -9223372036854775783
  %i.s = select i1 %i.r, i64 %i.q, i64 4          ; 2 uses
  %i.t = load i64, ptr %i.o, align 8, !range !45, !noundef !6 ; 3 uses
  %i.u = add nsw i64 %i.t, 9223372036854775782
  %4 = icmp ult i64 %i.t, -9223372036854775782    ; 2 uses
  %i.v = select i1 %4, i64 4, i64 %i.u
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %.lr.ph, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

5:                                                ; preds = %.lr.ph
  br i1 %3, label %bb.c, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15729)
  %i.x = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !15728, !noalias !15729, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !15728, !noalias !15729, !noundef !6 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !15729, !noalias !15728, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !15729, !noalias !15728, !noundef !6
  %.not.i = icmp eq i64 %i.aa, %i.ae
  br i1 %.not.i, label %.preheader.split, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

.preheader.split:                                 ; preds = %bb.b
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit", label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader.split, %.lr.ph19
  %.sroa.01.0.i18 = phi i64 [ %i.ai, %.lr.ph19 ], [ 0, %.preheader.split ] ; 3 uses
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %.sroa.01.0.i18
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %.sroa.01.0.i18
  %i.ah = tail call fastcc noundef zeroext i1 @"_ZN67_$LT$anki..search..parser..Node$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6da4cb8ad8844399E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ag), !noalias !15730, !inline_history !15670 ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i18, 1          ; 2 uses
  %exitcond.not = icmp ne i64 %i.ai, %i.aa
  %or.cond.not = select i1 %i.ah, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph19, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.c:                                             ; preds = %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15732)
  %i.aj = icmp ne i64 %i.k, -9223372036854775790
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = xor i64 %i.k, -9223372036854775808
  %i.al = icmp slt i64 %i.k, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 18      ; 2 uses
  %i.an = icmp ne i64 %i.i, -9223372036854775790
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = xor i64 %i.i, -9223372036854775808
  %i.ap = icmp slt i64 %i.i, 0
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 18
  %i.ar = icmp eq i64 %i.am, %i.aq
  br i1 %i.ar, label %bb.d, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.d:                                             ; preds = %bb.c
  switch i64 %i.am, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.r
    i64 6, label %bb.t
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.x
    i64 10, label %bb.y
    i64 11, label %bb.aa
    i64 12, label %bb.ae
    i64 13, label %bb.ag
    i64 14, label %bb.aj
    i64 15, label %bb.ak
    i64 16, label %bb.al
    i64 17, label %bb.an
    i64 18, label %bb.ap
    i64 20, label %bb.ar
    i64 21, label %bb.at
    i64 22, label %bb.av
    i64 23, label %bb.ax
    i64 24, label %bb.az
    i64 25, label %bb.bb
    i64 19, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val73.i = load i64, ptr %i.as, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val75.i = load i64, ptr %i.at, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i.i = icmp eq i64 %.val73.i, %.val75.i
  br i1 %.not.i.i.i, label %bb.g, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val74.i = load ptr, ptr %i.au, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val72.i = load ptr, ptr %i.av, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val72.i, ptr nonnull readonly align 1 %.val74.i, i64 %.val73.i), !alias.scope !15733
  %i.aw = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.h:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val69.i = load i64, ptr %i.ax, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val71.i = load i64, ptr %i.ay, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i76.i = icmp eq i64 %.val69.i, %.val71.i
  br i1 %.not.i.i76.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i": ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val70.i = load ptr, ptr %i.az, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val68.i = load ptr, ptr %i.ba, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i78.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val68.i, ptr nonnull readonly align 1 %.val70.i, i64 %.val69.i), !alias.scope !15734
  %i.bb = icmp eq i32 %bcmp.i.i78.i, 0
  br i1 %i.bb, label %bb.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.i:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit79.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr15, i64 48
  %.val65.i = load i64, ptr %i.bc, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr216, i64 48
  %.val67.i = load i64, ptr %i.bd, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i80.i = icmp eq i64 %.val65.i, %.val67.i
  br i1 %.not.i.i80.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i": ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.tr216, i64 40
  %.val66.i = load ptr, ptr %i.be, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr15, i64 40
  %.val64.i = load ptr, ptr %i.bf, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i82.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val64.i, ptr nonnull readonly align 1 %.val66.i, i64 %.val65.i), !alias.scope !15735
  %i.bg = icmp eq i32 %bcmp.i.i82.i, 0
  br i1 %i.bg, label %bb.j, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.j:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit83.i"
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr15, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !range !26, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr216, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !range !26, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.k:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr216, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.l:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr216, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.m:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !7, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.by = icmp ne i64 %i.bx, -9223372036854775808 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr216, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !7, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.cb = icmp eq i64 %i.ca, -9223372036854775808 ; 3 uses
  %not..i = xor i1 %i.cb, true
  %i.cc = xor i1 %i.by, %i.cb
  br i1 %i.cc, label %bb.n, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.n:                                             ; preds = %bb.m
  br i1 %i.by, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %not..i)
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val61.i = load i64, ptr %i.cd, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val63.i = load i64, ptr %i.ce, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i84.i = icmp eq i64 %.val61.i, %.val63.i
  br i1 %.not.i.i84.i, label %bb.p, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val62.i = load ptr, ptr %i.cf, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val60.i = load ptr, ptr %i.cg, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i86.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val60.i, ptr nonnull readonly align 1 %.val62.i, i64 %.val61.i), !alias.scope !15736
  %i.ch = icmp eq i32 %bcmp.i.i86.i, 0
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.cb)
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %i.cj = load i16, ptr %i.ci, align 8, !alias.scope !15731, !noalias !15732, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %i.cl = load i16, ptr %i.ck, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %i.cm = icmp eq i16 %i.cj, %i.cl
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.r:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val57.i = load i64, ptr %i.cn, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val59.i = load i64, ptr %i.co, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i88.i = icmp eq i64 %.val57.i, %.val59.i
  br i1 %.not.i.i88.i, label %bb.s, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val58.i = load ptr, ptr %i.cp, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val56.i = load ptr, ptr %i.cq, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i90.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val56.i, ptr nonnull readonly align 1 %.val58.i, i64 %.val57.i), !alias.scope !15737
  %i.cr = icmp eq i32 %bcmp.i.i90.i, 0
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.t:                                             ; preds = %bb.d
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr15, i64 24
  %.val53.i = load i64, ptr %i.cs, align 8, !alias.scope !15731, !noalias !15732, !noundef !6 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr216, i64 24
  %.val55.i = load i64, ptr %i.ct, align 8, !alias.scope !15732, !noalias !15731, !noundef !6
  %.not.i.i92.i = icmp eq i64 %.val53.i, %.val55.i
  br i1 %.not.i.i92.i, label %bb.u, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr216, i64 16
  %.val54.i = load ptr, ptr %i.cu, align 8, !alias.scope !15732, !noalias !15731, !nonnull !6, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr15, i64 16
  %.val52.i = load ptr, ptr %i.cv, align 8, !alias.scope !15731, !noalias !15732, !nonnull !6, !noundef !6
  %bcmp.i.i94.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val52.i, ptr nonnull readonly align 1 %.val54.i, i64 %.val53.i), !alias.scope !15738
  %i.cw = icmp eq i32 %bcmp.i.i94.i, 0
  br label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h62e399a99e5f2ebfE.exit"

bb.v:                                             ; preds = %bb.d
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr15, i64 8
end_hunk_0
