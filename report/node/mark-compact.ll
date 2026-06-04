inline.NumInlined: 24171
inline.NumDeleted: 6162
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateE:bb.a
  %.pre.i.i.i.i.i.i.i.i48 = load i64, ptr %i.du, align 262144
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i": ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ed = phi i64 [ %i.dv, %bb.ab ], [ %i.dv, %bb.ac ], [ %.pre.i.i.i.i.i.i.i.i48, %bb.ad ]
  %.fr.i.i.i.i.i = freeze i64 %i.ed               ; 2 uses
  %i.ee = trunc i64 %.fr.i.i.i.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.ee, i32 0, i32 %i.dl
  %i.ef = and i64 %.fr.i.i.i.i.i, 1
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i": ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i", %.preheader.i.i.i.i.i29
  %.0.i.i.i18.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i29 ], [ %i.ef, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ]
  %i.eg = phi i32 [ %i.dl, %.preheader.i.i.i.i.i29 ], [ %spec.select.i.i.i.i.i, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.i.i.i.i.i" ]
  %.142.i.i.i.i.i33 = or i32 %i.eg, %.0412.i.i.i.i.i31 ; 4 uses
  %.2.i.i.i.i.i34 = add i64 %.0.i.i.i18.i.i.i.i.i, %.1403.i.i.i.i.i30 ; 4 uses
  %i.eh = xor i32 %i.dl, %.0441.i.i.i.i.i32
  %.not49.i.i.i.i.i35 = icmp eq i32 %i.dl, %.0441.i.i.i.i.i32
  br i1 %.not49.i.i.i.i.i35, label %bb.ae, label %.preheader.i.i.i.i.i29, !llvm.loop !620

bb.ae:                                            ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit.thread.i.i.i.i.i"
  %i.ei = and i32 %.142.i.i.i.i.i33, %i.dj
  %.not50.i.i.i.i.i36 = icmp eq i32 %i.ei, 0
  br i1 %.not50.i.i.i.i.i36, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = load atomic volatile i32, ptr %i.di monotonic, align 4
  %i.ek = xor i32 %.142.i.i.i.i.i33, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.013.i.i.i.i.i.i.i37 = phi i32 [ %i.ej, %bb.af ], [ %i.eo, %bb.ah ] ; 3 uses
  %i.el = and i32 %.013.i.i.i.i.i.i.i37, %.142.i.i.i.i.i33
  %.not16.not.not.i.not.i.i.i.i.i.i38 = icmp eq i32 %i.el, 0
  br i1 %.not16.not.not.i.not.i.i.i.i.i.i38, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = and i32 %.013.i.i.i.i.i.i.i37, %i.ek
  %i.en = cmpxchg volatile ptr %i.di, i32 %.013.i.i.i.i.i.i.i37, i32 %i.em release monotonic, align 4 ; 2 uses
  %i.eo = extractvalue { i32, i1 } %i.en, 0
  %.not.i.i.i.i.i.i.i39 = extractvalue { i32, i1 } %i.en, 1
  br i1 %.not.i.i.i.i.i.i.i39, label %_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40, label %bb.ag, !llvm.loop !227

_ZN4heap4base12BasicSlotSetILm8EE6Bucket13ClearCellBitsILNS2_10AccessModeE0EEEvij.exit.i.i.i.i.i40: ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.aa
  %.3.i.i.i.i.i41 = phi i64 [ %.0396.i.i.i.i.i26, %bb.aa ], [ %.2.i.i.i.i.i34, %bb.ae ], [ %.2.i.i.i.i.i34, %bb.ag ], [ %.2.i.i.i.i.i34, %bb.ah ] ; 3 uses
  %indvars.iv.next.i.i.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i.i.i25, 1 ; 2 uses
  %i.ep = add nuw nsw i64 %.0435.i.i.i.i.i27, 32
  %exitcond.not.i.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i.i42, 32
  br i1 %exitcond.not.i.i.i.i.i43, label %bb.z, label %bb.aa, !llvm.loop !621

bb.ai:                                            ; preds = %bb.z
  %i.eq = load atomic volatile i64, ptr %i.dd acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.dd release, align 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = inttoptr i64 %i.eq to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 128) #33
  br label %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i"

"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i": ; preds = %bb.aj, %bb.ai, %bb.z
  %i.et = add i64 %.3.i.i.i.i.i41, %.09.i.i.i.i.i22
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i21
  %.1.i.i.i.i.i44 = phi i64 [ %i.et, %"_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i.i.i.i" ], [ %.09.i.i.i.i.i22, %.lr.ph.i.i.i.i.i21 ] ; 2 uses
  %i.eu = add nuw nsw i64 %.0387.i.i.i.i.i23, 1   ; 2 uses
  %exitcond12.not.i.i.i.i.i45 = icmp eq i64 %i.eu, %i.dc
  br i1 %exitcond12.not.i.i.i.i.i45, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit", label %.lr.ph.i.i.i.i.i21, !llvm.loop !622

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit": ; preds = %bb.ak
  %i.ev = and i64 %.1.i.i.i.i.i44, 4294967295
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", label %bb.al

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread": ; preds = %bb.x, %bb.w, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit"
  call void @_ZN2v88internal19MutablePageMetadata14ReleaseSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.t, i32 noundef 6) #31
  br label %bb.al

bb.al:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit.thread", %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE6EE7IterateILNS0_10AccessModeE0EZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_1EEiPNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit"
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = and i32 %i.ey, 16
  %.not64.a = icmp eq i32 %i.ez, 0
  br i1 %.not64.a, label %bb.cd, label %bb.am, !llvm.loop !623

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.fa = load i64, ptr %i.w, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = sub i64 %i.fc, %i.fa
  call void @_ZN2v88internal15ThreadIsolation21LookupWritableJitPageEmm(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::WritableJitPage") align 8 %5, i64 noundef %i.fa, i64 noundef %i.fd) #31
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.ff = load atomic volatile i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = inttoptr i64 %i.ff to ptr               ; 2 uses
  %.not.i49 = icmp eq i64 %i.ff, 0
  br i1 %.not.i49, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.045.i.i.i = load ptr, ptr %i.fh, align 8      ; 2 uses
  %.not46.i.i.i = icmp eq ptr %.045.i.i.i, null
  br i1 %.not46.i.i.i, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", label %.lr.ph49.i.i.i

.lr.ph49.i.i.i:                                   ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  br label %bb.ao

.loopexit.i.i.i:                                  ; preds = %bb.bx, %bb.ao
  %.126.lcssa.i.i.i = phi i32 [ %.02547.i.i.i, %bb.ao ], [ %.3.i.i.i, %bb.bx ] ; 2 uses
  %.0.i.i.i51 = load ptr, ptr %.048.i.i.i, align 8 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.0.i.i.i51, null
  br i1 %.not.i.i.i52, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit", label %bb.ao, !llvm.loop !624

bb.ao:                                            ; preds = %.loopexit.i.i.i, %.lr.ph49.i.i.i
  %.048.i.i.i = phi ptr [ %.045.i.i.i, %.lr.ph49.i.i.i ], [ %.0.i.i.i51, %.loopexit.i.i.i ] ; 3 uses
  %.02547.i.i.i = phi i32 [ 0, %.lr.ph49.i.i.i ], [ %.126.lcssa.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp eq ptr %i.fk, %i.fm
  br i1 %i.fn, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %bb.bx
  %.12644.i.i.i = phi i32 [ %.3.i.i.i, %bb.bx ], [ %.02547.i.i.i, %bb.ao ] ; 3 uses
  %.sroa.033.043.i.i.i = phi ptr [ %i.ky, %bb.bx ], [ %i.fk, %bb.ao ] ; 3 uses
  %i.fo = load i32, ptr %.sroa.033.043.i.i.i, align 4 ; 2 uses
  %i.fp = lshr i32 %i.fo, 29                      ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.fp, 6
  br i1 %.not31.i.i.i, label %bb.bx, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.fq = trunc nuw nsw i32 %i.fp to i8
  %i.fr = and i32 %i.fo, 536870911
  %i.fs = load i64, ptr %i.fi, align 8
  %i.ft = zext nneg i32 %i.fr to i64
  %i.fu = add i64 %i.fs, %i.ft                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.fv = call { i64, ptr } @_ZN2v88internal15ThreadIsolation16JitPageReference20AllocationContainingEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fu) #31, !noalias !625 ; 2 uses
  %i.fw = extractvalue { i64, ptr } %i.fv, 0
  %i.fx = extractvalue { i64, ptr } %i.fv, 1      ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !625
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !noalias !625
  store i64 %i.fw, ptr %3, align 8
  store i8 0, ptr %i.d, align 1
  store i8 0, ptr %i.f, align 8
  store i64 %i.fy, ptr %i.g, align 8
  store i32 %i.ga, ptr %i.h, align 8
  store i8 0, ptr %i.i, align 8
  switch i8 %i.fq, label %bb.bp [
    i8 2, label %bb.aq
    i8 5, label %bb.aw
    i8 1, label %bb.bb
    i8 0, label %bb.bf
    i8 4, label %bb.bj
    i8 3, label %bb.bk
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store i64 %i.fu, ptr %2, align 8
  store i8 1, ptr %i.j, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %3, ptr %i.l, align 8
  %i.gb = inttoptr i64 %i.fu to ptr
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.gb, align 1
  %i.gc = sext i32 %.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.gd = add i64 %i.fu, 4
  %i.ge = add i64 %i.gd, %i.gc                    ; 3 uses
  %i.gf = call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #31
  %i.gg = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gh = call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #31
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add i64 %i.gi, %i.gg
  %i.gk = icmp uge i64 %i.ge, %i.gg
  %i.gl = icmp ult i64 %i.ge, %i.gj
  %.not9.i.i.i.i.i.i.i = and i1 %i.gk, %i.gl
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.ar, label %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i.i.i.i.i, !prof !38

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.232) #34
  unreachable

_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %i.gm = add i64 %i.ge, -31                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store i64 %i.gm, ptr %.sroa.0.i.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i = load atomic volatile i64, ptr %.sroa.0.i.i.i.i.i.i monotonic, align 8 ; 7 uses
  %i.gn = trunc i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i to i1
  %i.go = and i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i, 4294967295
  %i.gp = icmp ne i64 %i.go, 3
  %i.gq = and i1 %i.gp, %i.gn
  br i1 %i.gq, label %bb.as, label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i.i"

bb.as:                                            ; preds = %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i.i.i.i.i
  %i.gr = and i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i, -262144
  %i.gs = inttoptr i64 %i.gr to ptr               ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 262144       ; 3 uses
  %i.gu = and i64 %i.gt, 64
  %.not.i.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i54, label %bb.at, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gv = and i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i, -3
  %i.gw = add nsw i64 %i.gv, -1
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = load atomic volatile i64, ptr %i.gx monotonic, align 8 ; 2 uses
  %i.gz = and i64 %i.gy, 3
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.au, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.hb = or disjoint i64 %i.gy, 1                ; 2 uses
  store atomic volatile i64 %i.hb, ptr %.sroa.0.i.i.i.i.i.i monotonic, align 8
  %.pre.i.i.i.i.i.i.i.i55 = load i64, ptr %i.gs, align 262144
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.0.0..sroa.0.0.68.i.i.i.i.i.i = phi i64 [ %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i, %bb.as ], [ %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i, %bb.at ], [ %i.hb, %bb.au ]
  %i.hc = phi i64 [ %i.gt, %bb.as ], [ %i.gt, %bb.at ], [ %.pre.i.i.i.i.i.i.i.i55, %bb.au ]
  %i.hd = trunc i64 %i.hc to i32
  %i.he = and i32 %i.hd, 1
  %i.hf = xor i32 %i.he, 1
  br label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i.i"

"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i.i": ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i, %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i.i.i.i.i
  %.sroa.0.0..sroa.0.0.6.i.i.i.i.i.i = phi i64 [ %.sroa.0.0..sroa.0.0.68.i.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i.i, %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hf, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i.i ], [ 1, %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0..sroa.0.0.6.i.i.i.i.i.i, %i.gm
  br i1 %.not.i.i.i.i.i.i, label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.i.i.i.i", label %bb.av

bb.av:                                            ; preds = %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i.i"
  %i.hg = add i64 %.sroa.0.0..sroa.0.0.6.i.i.i.i.i.i, 31
  call void @_ZN2v88internal17WritableRelocInfo18set_target_addressEmNS0_15ICacheFlushModeE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.hg, i32 noundef 0) #31
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.i.i.i.i"

bb.aw:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i27.i.i.i.i.i)
  %i.hh = inttoptr i64 %i.fu to ptr               ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = add i64 %i.hi, -31                      ; 2 uses
  store i64 %i.hj, ptr %.sroa.0.i27.i.i.i.i.i, align 8
  %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i = load atomic volatile i64, ptr %.sroa.0.i27.i.i.i.i.i monotonic, align 8 ; 7 uses
  %i.hk = trunc i64 %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i to i1
  %i.hl = and i64 %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i, 4294967295
  %i.hm = icmp ne i64 %i.hl, 3
  %i.hn = and i1 %i.hm, %i.hk
  br i1 %i.hn, label %bb.ax, label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i29.i.i.i.i.i"

bb.ax:                                            ; preds = %bb.aw
  %i.ho = and i64 %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i, -262144
  %i.hp = inttoptr i64 %i.ho to ptr               ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 262144       ; 3 uses
  %i.hr = and i64 %i.hq, 64
  %.not.i.i.i.i32.i.i.i.i.i = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i32.i.i.i.i.i, label %bb.ay, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.hs = and i64 %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i, -3
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load atomic volatile i64, ptr %i.hu monotonic, align 8 ; 2 uses
  %i.hw = and i64 %i.hv, 3
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.az, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.hy = or disjoint i64 %i.hv, 1                ; 2 uses
  store atomic volatile i64 %i.hy, ptr %.sroa.0.i27.i.i.i.i.i monotonic, align 8
  %.pre.i.i.i34.i.i.i.i.i = load i64, ptr %i.hp, align 262144
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.0.0..sroa.0.0.79.i.i.i.i.i.i = phi i64 [ %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i, %bb.ax ], [ %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i, %bb.ay ], [ %i.hy, %bb.az ]
  %i.hz = phi i64 [ %i.hq, %bb.ax ], [ %i.hq, %bb.ay ], [ %.pre.i.i.i34.i.i.i.i.i, %bb.az ]
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 1
  %i.ic = xor i32 %i.ib, 1
  br label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i29.i.i.i.i.i"

"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i29.i.i.i.i.i": ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i, %bb.aw
  %.sroa.0.0..sroa.0.0.7.i.i.i.i.i.i = phi i64 [ %.sroa.0.0..sroa.0.0.79.i.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i ], [ %.sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.i.0..sroa.0.i27.i.0..sroa.0.i27.i.0..sroa.0.i27.0..sroa.0.i27.0..sroa.0.0..sroa.0.0..i28.i.i.i.i.i, %bb.aw ] ; 2 uses
  %.0.i.i.i30.i.i.i.i.i = phi i32 [ %i.ic, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i33.i.i.i.i.i ], [ 1, %bb.aw ]
  %.not.i31.i.i.i.i.i = icmp eq i64 %.sroa.0.0..sroa.0.0.7.i.i.i.i.i.i, %i.hj
  br i1 %.not.i31.i.i.i.i.i, label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateCodeEntryIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEmT_.exit.i.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i29.i.i.i.i.i"
  %i.id = add i64 %.sroa.0.0..sroa.0.0.7.i.i.i.i.i.i, 31
  store i64 %i.id, ptr %i.hh, align 8
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateCodeEntryIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEmT_.exit.i.i.i.i.i"

"_ZN2v88internal21UpdateTypedSlotHelper15UpdateCodeEntryIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEmT_.exit.i.i.i.i.i": ; preds = %bb.ba, %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i29.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i27.i.i.i.i.i)
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i"

bb.bb:                                            ; preds = %bb.ap
  %i.ie = inttoptr i64 %i.fu to ptr               ; 3 uses
  %.0.copyload.i7.i.i.i.i.i.i = load i64, ptr %i.ie, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i35.i.i.i.i.i)
  store i64 %.0.copyload.i7.i.i.i.i.i.i, ptr %.sroa.0.i35.i.i.i.i.i, align 8
  %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i = load atomic volatile i64, ptr %.sroa.0.i35.i.i.i.i.i monotonic, align 8 ; 7 uses
  %i.if = trunc i64 %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i to i1
  %i.ig = and i64 %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i, 4294967295
  %i.ih = icmp ne i64 %i.ig, 3
  %i.ii = and i1 %i.ih, %i.if
  br i1 %i.ii, label %bb.bc, label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i37.i.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  %i.ij = and i64 %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i, -262144
  %i.ik = inttoptr i64 %i.ij to ptr               ; 2 uses
  %i.il = load i64, ptr %i.ik, align 262144       ; 3 uses
  %i.im = and i64 %i.il, 64
  %.not.i.i.i.i40.i.i.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not.i.i.i.i40.i.i.i.i.i, label %bb.bd, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.in = and i64 %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i, -3
  %i.io = add nsw i64 %i.in, -1
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load atomic volatile i64, ptr %i.ip monotonic, align 8 ; 2 uses
  %i.ir = and i64 %i.iq, 3
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %bb.be, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.it = or disjoint i64 %i.iq, 1                ; 2 uses
  store atomic volatile i64 %i.it, ptr %.sroa.0.i35.i.i.i.i.i monotonic, align 8
  %.pre.i.i.i42.i.i.i.i.i = load i64, ptr %i.ik, align 262144
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.0.0..sroa.0.0.1315.i.i.i.i.i.i = phi i64 [ %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i, %bb.bc ], [ %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i, %bb.bd ], [ %i.it, %bb.be ]
  %i.iu = phi i64 [ %i.il, %bb.bc ], [ %i.il, %bb.bd ], [ %.pre.i.i.i42.i.i.i.i.i, %bb.be ]
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = and i32 %i.iv, 1
  %i.ix = xor i32 %i.iw, 1
  br label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i37.i.i.i.i.i"

"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i37.i.i.i.i.i": ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i, %bb.bb
  %.sroa.0.0..sroa.0.0.13.i.i.i.i.i.i = phi i64 [ %.sroa.0.0..sroa.0.0.1315.i.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i ], [ %.sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.i.0..sroa.0.i35.i.0..sroa.0.i35.i.0..sroa.0.i35.0..sroa.0.i35.0..sroa.0.0..sroa.0.0..i36.i.i.i.i.i, %bb.bb ] ; 2 uses
  %.0.i.i.i38.i.i.i.i.i = phi i32 [ %i.ix, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i41.i.i.i.i.i ], [ 1, %bb.bb ]
  %.not.i39.i.i.i.i.i = icmp eq i64 %.sroa.0.0..sroa.0.0.13.i.i.i.i.i.i, %.0.copyload.i7.i.i.i.i.i.i
  br i1 %.not.i39.i.i.i.i.i, label %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit.i.i.i.i.i", label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i.i.i.i.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i37.i.i.i.i.i"
  store i64 %.sroa.0.0..sroa.0.0.13.i.i.i.i.i.i, ptr %i.ie, align 1
  call void @_ZN2v88internal21FlushInstructionCacheEPvm(ptr noundef nonnull %i.ie, i64 noundef 8) #31
  br label %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit.i.i.i.i.i"

"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit.i.i.i.i.i": ; preds = %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i.i.i.i.i, %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i37.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i35.i.i.i.i.i)
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i"

bb.bf:                                            ; preds = %bb.ap
  %i.iy = inttoptr i64 %i.fu to ptr               ; 3 uses
  %.0.copyload.i7.i44.i.i.i.i.i = load i64, ptr %i.iy, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i43.i.i.i.i.i)
  store i64 %.0.copyload.i7.i44.i.i.i.i.i, ptr %.sroa.0.i43.i.i.i.i.i, align 8
  %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i = load atomic volatile i64, ptr %.sroa.0.i43.i.i.i.i.i monotonic, align 8 ; 7 uses
  %i.iz = trunc i64 %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i to i1
  %i.ja = and i64 %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i, 4294967295
  %i.jb = icmp ne i64 %i.ja, 3
  %i.jc = and i1 %i.jb, %i.iz
  br i1 %i.jc, label %bb.bg, label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i46.i.i.i.i.i"

bb.bg:                                            ; preds = %bb.bf
  %i.jd = and i64 %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i, -262144
  %i.je = inttoptr i64 %i.jd to ptr               ; 2 uses
  %i.jf = load i64, ptr %i.je, align 262144       ; 3 uses
  %i.jg = and i64 %i.jf, 64
  %.not.i.i.i.i51.i.i.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i.i.i51.i.i.i.i.i, label %bb.bh, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.jh = and i64 %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i, -3
  %i.ji = add nsw i64 %i.jh, -1
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load atomic volatile i64, ptr %i.jj monotonic, align 8 ; 2 uses
  %i.jl = and i64 %i.jk, 3
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.bi, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.jn = or disjoint i64 %i.jk, 1                ; 2 uses
  store atomic volatile i64 %i.jn, ptr %.sroa.0.i43.i.i.i.i.i monotonic, align 8
  %.pre.i.i.i54.i.i.i.i.i = load i64, ptr %i.je, align 262144
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0..sroa.0.0.1315.i53.i.i.i.i.i = phi i64 [ %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i, %bb.bg ], [ %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i, %bb.bh ], [ %i.jn, %bb.bi ]
  %i.jo = phi i64 [ %i.jf, %bb.bg ], [ %i.jf, %bb.bh ], [ %.pre.i.i.i54.i.i.i.i.i, %bb.bi ]
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = and i32 %i.jp, 1
  %i.jr = xor i32 %i.jq, 1
  br label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i46.i.i.i.i.i"

"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i46.i.i.i.i.i": ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i, %bb.bf
  %.sroa.0.0..sroa.0.0.13.i47.i.i.i.i.i = phi i64 [ %.sroa.0.0..sroa.0.0.1315.i53.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i ], [ %.sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.i.0..sroa.0.i43.i.0..sroa.0.i43.i.0..sroa.0.i43.0..sroa.0.i43.0..sroa.0.0..sroa.0.0..i45.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.0.i.i.i48.i.i.i.i.i = phi i32 [ %i.jr, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i52.i.i.i.i.i ], [ 1, %bb.bf ]
  %.not.i49.i.i.i.i.i = icmp eq i64 %.sroa.0.0..sroa.0.0.13.i47.i.i.i.i.i, %.0.copyload.i7.i44.i.i.i.i.i
  br i1 %.not.i49.i.i.i.i.i, label %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit55.i.i.i.i.i", label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i50.i.i.i.i.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i50.i.i.i.i.i: ; preds = %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i46.i.i.i.i.i"
  store i64 %.sroa.0.0..sroa.0.0.13.i47.i.i.i.i.i, ptr %i.iy, align 1
  call void @_ZN2v88internal21FlushInstructionCacheEPvm(ptr noundef nonnull %i.iy, i64 noundef 8) #31
  br label %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit55.i.i.i.i.i"

"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit55.i.i.i.i.i": ; preds = %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i50.i.i.i.i.i, %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i46.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i43.i.i.i.i.i)
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i"

bb.bj:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable

bb.bk:                                            ; preds = %bb.ap
  %i.js = inttoptr i64 %i.fu to ptr               ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store i64 %i.jt, ptr %.sroa.0.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i = load atomic volatile i64, ptr %.sroa.0.i.i.i.i.i monotonic, align 8 ; 7 uses
  %i.ju = trunc i64 %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i to i1
  %i.jv = and i64 %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i, 4294967295
  %i.jw = icmp ne i64 %i.jv, 3
  %i.jx = and i1 %i.jw, %i.ju
  br i1 %i.jx, label %bb.bl, label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i"

bb.bl:                                            ; preds = %bb.bk
  %i.jy = and i64 %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i, -262144
  %i.jz = inttoptr i64 %i.jy to ptr               ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 262144       ; 3 uses
  %i.kb = and i64 %i.ka, 64
  %.not.i.i.i.i.i.i.i.i53 = icmp eq i64 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i.i53, label %bb.bm, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.kc = and i64 %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i, -3
  %i.kd = add nsw i64 %i.kc, -1
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = load atomic volatile i64, ptr %i.ke monotonic, align 8 ; 2 uses
  %i.kg = and i64 %i.kf, 3
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.bn, label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.ki = or disjoint i64 %i.kf, 1                ; 2 uses
  store atomic volatile i64 %i.ki, ptr %.sroa.0.i.i.i.i.i monotonic, align 8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.jz, align 262144
  br label %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i

_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.0.0..sroa.0.0.1214.i.i.i.i.i = phi i64 [ %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i, %bb.bl ], [ %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i, %bb.bm ], [ %i.ki, %bb.bn ]
  %i.kj = phi i64 [ %i.ka, %bb.bl ], [ %i.ka, %bb.bm ], [ %.pre.i.i.i.i.i.i.i, %bb.bn ]
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = and i32 %i.kk, 1
  %i.km = xor i32 %i.kl, 1
  br label %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i"

"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i": ; preds = %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i, %bb.bk
  %.sroa.0.0..sroa.0.0.12.i.i.i.i.i = phi i64 [ %.sroa.0.0..sroa.0.0.1214.i.i.i.i.i, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i ], [ %.sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.i.i.i.i, %bb.bk ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.km, %_ZN2v88internal12_GLOBAL__N_110UpdateSlotILNS0_23HeapObjectReferenceTypeE1ENS0_19FullMaybeObjectSlotEEEvNS0_16PtrComprCageBaseET0_NS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i ], [ 1, %bb.bk ]
  %.not.i.i.i.i.i50 = icmp eq i64 %.sroa.0.0..sroa.0.0.12.i.i.i.i.i, %i.jt
  br i1 %.not.i.i.i.i.i50, label %bb.bo, label %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i"
  store i64 %.sroa.0.0..sroa.0.0.12.i.i.i.i.i, ptr %i.js, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal19RwxMemoryWriteScopeELb0ELb0EED2Ev.exit.i.i.i.i.i, %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i"

bb.bp:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable

"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i": ; preds = %bb.bo, %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit55.i.i.i.i.i", %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit.i.i.i.i.i", %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateCodeEntryIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEmT_.exit.i.i.i.i.i"
  %.0.i.ph.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i, %bb.bo ], [ %.0.i.i.i48.i.i.i.i.i, %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit55.i.i.i.i.i" ], [ %.0.i.i.i38.i.i.i.i.i, %"_ZN2v88internal21UpdateTypedSlotHelper21UpdateEmbeddedPointerIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEPNS0_4HeapEPNS0_17WritableRelocInfoET_.exit.i.i.i.i.i" ], [ %.0.i.i.i30.i.i.i.i.i, %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateCodeEntryIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultEmT_.exit.i.i.i.i.i" ]
  store i8 0, ptr %i.f, align 8
  br label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i

"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.i.i.i.i": ; preds = %bb.av, %"_ZZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmENKUlNS0_19FullMaybeObjectSlotEE_clES6_.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.pre.i.i.i.i = load i8, ptr %i.f, align 8, !range !5
  %i.kn = trunc nuw i8 %.pre.i.i.i.i to i1
  store i8 0, ptr %i.f, align 8
  br i1 %i.kn, label %bb.bq, label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i

bb.bq:                                            ; preds = %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.i.i.i.i"
  %i.ko = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko) #31
  br label %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i

_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.br, %bb.bq, %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.i.i.i.i", %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i"
  %.0.i3.i.i.i.i = phi i32 [ %.0.i.ph.i.i.i.i, %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.thread.i.i.i.i" ], [ %.0.i.i.i.i.i.i.i.i, %"_ZN2v88internal21UpdateTypedSlotHelper15UpdateTypedSlotIZZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEmEUlNS0_19FullMaybeObjectSlotEE_EEN4heap4base18SlotCallbackResultERNS0_21WritableJitAllocationEPNS0_4HeapES7_mT_.exit.i.i.i.i" ], [ %.0.i.i.i.i.i.i.i.i, %bb.bq ], [ %.0.i.i.i.i.i.i.i.i, %bb.br ]
  %i.kp = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.kq = trunc nuw i8 %i.kp to i1
  store i8 0, ptr %i.d, align 1
  br i1 %i.kq, label %bb.bs, label %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"

bb.bs:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i
  %i.kr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.ks = trunc nuw i8 %i.kr to i1
  %.not.i.i.i.i3.i.i.i.i = xor i1 %i.ks, true
  %i.kt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.ku = trunc nuw i8 %i.kt to i1
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i3.i.i.i.i, i1 true, i1 %i.ku
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.bt, label %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"

bb.bt:                                            ; preds = %bb.bs
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i = icmp eq i32 %i.kv, -1
  br i1 %.not2.i.i.i.i.i.i.i.i, label %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.kv, i32 noundef 2) #31
  br label %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"

"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i": ; preds = %bb.bu, %bb.bt, %bb.bs, %_ZNSt14_Optional_baseIN2v88internal15ThreadIsolation16JitPageReferenceELb0ELb0EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.kw = icmp eq i32 %.0.i3.i.i.i.i, 0
  br i1 %i.kw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"
  %i.kx = add nsw i32 %.12644.i.i.i, 1
  br label %bb.bx

bb.bw:                                            ; preds = %"_ZZN2v88internal20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEENK3$_2clENS0_8SlotTypeEm.exit.i.i.i"
  store i32 -1073741824, ptr %.sroa.033.043.i.i.i, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %.lr.ph.i.i.i
  %.3.i.i.i = phi i32 [ %.12644.i.i.i, %.lr.ph.i.i.i ], [ %i.kx, %bb.bv ], [ %.12644.i.i.i, %bb.bw ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.033.043.i.i.i, i64 4 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.fm
  br i1 %i.kz, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit": ; preds = %.loopexit.i.i.i
  %i.la = icmp eq i32 %.126.lcssa.i.i.i, 0
  br i1 %i.la, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", label %bb.by

bb.by:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit"
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.z, align 262144
  %i.lb = and i64 %.sroa.0.0.copyload.i18, 24
  %.not65.a = icmp eq i64 %i.lb, 0
  br i1 %.not65.a, label %bb.bz, label %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread"

"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread": ; preds = %bb.an, %bb.am, %bb.by, %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit"
  call void @_ZN2v88internal19MutablePageMetadata19ReleaseTypedSlotSetENS0_17RememberedSetTypeE(ptr noundef nonnull align 8 dereferenceable(4448) %i.t, i32 noundef 3) #31
  br label %bb.bz

bb.bz:                                            ; preds = %"_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE3EE12IterateTypedIZNS0_20MarkCompactCollector26UpdatePointersInClientHeapEPNS0_7IsolateEE3$_2EEiPNS0_19MutablePageMetadataET_.exit.thread", %bb.by
  %i.lc = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i, label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lc) #31
  br label %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit

_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit: ; preds = %bb.bz, %bb.ca
  %i.ld = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !5, !noundef !6
  %i.le = trunc nuw i8 %i.ld to i1
  %.not = xor i1 %i.le, true
  %i.lf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !5
  %i.lg = trunc nuw i8 %i.lf to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.lg
  br i1 %or.cond, label %bb.cb, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.cb:                                            ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit
  %i.lh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not66 = icmp eq i32 %i.lh, -1
  br i1 %.not66, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.lh, i32 noundef 2) #31
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal15ThreadIsolation16JitPageReferenceD2Ev.exit, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cd

bb.cd:                                            ; preds = %bb.al, %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit
  %.pr = load ptr, ptr %i.b, align 8
  br label %bb.b

_ZN2v88internal19MemoryChunkIterator7HasNextEv.exit: ; preds = %.preheader
  call void @_ZN2v88internal13SpaceIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

declare void @_ZN2v88internal15ThreadIsolation21LookupWritableJitPageEmm(ptr dead_on_unwind writable sret(%"class.v8::internal::WritableJitPage") align 8, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal12PageMetadata15AbortEvacuationEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20MarkCompactCollector48ReportAbortedEvacuationCandidateDueToRunningCodeEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.2100", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !628 ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !643
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.e, align 8, !noalias !643
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = load ptr, ptr %i.h, align 8, !noalias !643
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE6insertIS6_Li0EEESt4pairINSD_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !643
  store ptr %i.b, ptr %2, align 8, !noalias !643
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.k, align 8, !noalias !643
  %i.l = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal12PageMetadataEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #31, !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !643
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !643
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.l
  %.pre = load ptr, ptr %i.a, align 8, !noalias !648
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSD_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 800
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !649 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !649
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.q = load i64, ptr %i.p, align 8, !noalias !649
  %sext.i = shl i64 %i.q, 48
  %i.r = ashr exact i64 %sext.i, 48
  %i.s = ptrtoint ptr %1 to i64
  %i.t = xor i64 %i.s, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 8779197792823184629 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  %i.z = xor i64 %i.r, %i.y                       ; 3 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
end_hunk_0
