inline.NumInlined: 1056
inline.NumDeleted: 741
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z4replRKN6hermes2vm13RuntimeConfigE:bb.a
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 200
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !44
  %i.ec = icmp ult ptr %i.dz, %i.eb
  br i1 %i.ec, label %bb.z, label %bb.aa, !prof !49

bb.z:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_10JSFunctionEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ed, ptr %i.dy, align 8, !tbaa !43
  store i64 -1688849860263936, ptr %i.dz, align 8, !tbaa !48
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_10JSFunctionEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit
  %i.ee = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dx, i64 -1688849860263936) #21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.z, %bb.aa
  %.0.i.i.i.i.i.i56 = phi ptr [ %i.dz, %bb.z ], [ %i.ee, %bb.aa ] ; 3 uses
  %i.ef = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #21 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !55
  %.not.i.i57 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i.i57, label %_ZN4llvh11raw_ostream13SetUnbufferedEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %i.ef) #21
  br label %_ZN4llvh11raw_ostream13SetUnbufferedEv.exit

_ZN4llvh11raw_ostream13SetUnbufferedEv.exit:      ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.ab
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36) %i.ef, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 340
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 10 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 1136
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 1152
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 1112
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 1128
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 456
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fk = zext i1 %.0.i to i64
  %i.fl = or disjoint i64 %i.fk, -1407374883553280
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.backedge, %_ZN4llvh11raw_ostream13SetUnbufferedEv.exit
  %i.fq = load i64, ptr %i.p, align 8, !tbaa !47
  %i.fr = icmp eq i64 %i.fq, 0
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL12PromptStringB5cxx11, i64 152), align 8
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13Prompt2StringB5cxx11, i64 152), align 8
  %i.fu = select i1 %i.fr, ptr %i.fs, ptr %i.ft
  %i.fv = call fastcc noundef i32 @_ZL13readInputLinePKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %10)
  switch i32 %i.fv, label %.critedge [
    i32 1, label %bb.ad
    i32 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.fw = load i64, ptr %i.p, align 8, !tbaa !47
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %bb.ac
  %i.fy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #21 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !54 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !51
  %.not.i = icmp ult ptr %i.ga, %i.gc
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.fy, i8 noundef zeroext 10) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !54
  store i8 10, ptr %i.ga, align 1, !tbaa !16
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread

bb.ag:                                            ; preds = %bb.ac
  store i64 0, ptr %i.p, align 8, !tbaa !47
  %i.gf = load ptr, ptr %10, align 8, !tbaa !10
  store i8 0, ptr %i.gf, align 1, !tbaa !16
  %i.gg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #21 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !54 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !51
  %.not.i59 = icmp ult ptr %i.gi, %i.gk
  br i1 %.not.i59, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.gg, i8 noundef zeroext 10) #21 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.backedge

bb.ai:                                            ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !54
  store i8 10, ptr %i.gi, align 1, !tbaa !16
  br label %_ZN4llvh11raw_ostreamlsEc.exit.backedge

_ZN4llvh11raw_ostreamlsEc.exit.backedge:          ; preds = %bb.ai, %bb.ah, %_ZN4llvh11SmallVectorItLj16EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  br label %_ZN4llvh11raw_ostreamlsEc.exit, !llvm.loop !56

.critedge:                                        ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.gn = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.go = load i64, ptr %i.p, align 8, !tbaa !47  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464) %3) #21
  %i.gp = load i64, ptr %i.ek, align 8
  store i32 0, ptr %i.ek, align 8, !tbaa !58
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.gq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 6 uses
  store i32 0, ptr %i.gq, align 8, !tbaa !62
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 0, ptr %i.gr, align 8, !tbaa !69
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !40
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false)
  store ptr %i.gq, ptr %i.el, align 8, !tbaa !70
  %i.gv = call noalias noundef nonnull dereferenceable(262144) ptr @_Znwm(i64 noundef 262144) #24, !noalias !77 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) %i.gv, i8 0, i64 262144, i1 false), !noalias !77
  %i.gw = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 3 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !80
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  store ptr %i.gw, ptr %4, align 8, !tbaa !82
  store ptr %i.gy, ptr %i.em, align 8, !tbaa !83
  store ptr %i.gy, ptr %i.en, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.281") align 8 %2, ptr %i.gn, i64 %i.go, ptr nonnull @.str.16, i64 10, i1 noundef zeroext true) #21
  call void @_ZN6hermes6parser7JSLexerC2ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb(ptr noundef nonnull align 8 dereferenceable(1160) %5, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(464) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #21
  %i.gz = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i, label %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i: ; preds = %.critedge
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gz) #21, !inline_history !87
  br label %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i

_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 8, ptr %i.eo, align 8, !tbaa !88
  %i.hd = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 2 uses
  store ptr %i.hd, ptr %6, align 8, !tbaa !91
  %.06.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 24 ; 3 uses
  %i.he = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24 ; 6 uses
  store ptr %i.he, ptr %.06.i.i.ptr.i.i.i.i, align 8, !tbaa !92
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.eq, align 8, !tbaa !93
  store ptr %i.he, ptr %i.er, align 8, !tbaa !94
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 512 ; 2 uses
  store ptr %i.hf, ptr %i.es, align 8, !tbaa !95
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.eu, align 8, !tbaa !93
  store ptr %i.he, ptr %i.ev, align 8, !tbaa !94
  store ptr %i.hf, ptr %i.ew, align 8, !tbaa !95
  store ptr %i.he, ptr %i.ep, align 8, !tbaa !96
  store ptr %i.he, ptr %i.et, align 8, !tbaa !97
  %i.hg = icmp eq i64 %i.go, 0
  br i1 %i.hg, label %.thread35.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i
  %i.hh = getelementptr i8, ptr %i.gn, i64 %i.go
  %i.hi = getelementptr i8, ptr %i.hh, i64 -1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !16
  %i.hk = icmp eq i8 %i.hj, 92
  br i1 %i.hk, label %.thread35.i, label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.peel.i"

"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.peel.i": ; preds = %bb.aj
  %i.hl = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %5, i32 noundef 0) #21 ; 4 uses
  %.not.peel.i = icmp eq ptr %i.hl, null
  br i1 %.not.peel.i, label %.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.peel.i"
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !98
  switch i32 %i.hm, label %.preheader.peel.next.i.preheader [
    i32 120, label %.loopexit.i
    i32 49, label %bb.ap
    i32 53, label %bb.ap
    i32 55, label %bb.ap
    i32 51, label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i"
    i32 54, label %bb.am
    i32 56, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i"

bb.am:                                            ; preds = %bb.ak
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i"

"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i": ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i13.peel.i = phi i32 [ 55, %bb.al ], [ 53, %bb.am ], [ 49, %bb.ak ] ; 2 uses
  %i.hn = load ptr, ptr %i.et, align 8, !tbaa !106 ; 3 uses
  %i.ho = load ptr, ptr %i.ep, align 8, !tbaa !106
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %.thread35.i, label %bb.an

bb.an:                                            ; preds = %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i"
  %i.hq = load ptr, ptr %i.ev, align 8, !tbaa !94, !noalias !107 ; 2 uses
  %i.hr = icmp eq ptr %i.hn, %i.hq
  br i1 %i.hr, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i: ; preds = %bb.an
  %i.hs = getelementptr inbounds i8, ptr %i.hn, i64 -4 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !110
  %i.hu = icmp eq i32 %i.ht, %.0.i13.peel.i
  br i1 %i.hu, label %.thread.peel.i, label %.thread35.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i: ; preds = %bb.an
  %i.hv = load ptr, ptr %i.eu, align 8, !tbaa !93, !noalias !107
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !92
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 508
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !110
  %i.ia = icmp eq i32 %i.hz, %.0.i13.peel.i
  br i1 %i.ia, label %bb.ao, label %.thread35.i

bb.ao:                                            ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef 512) #20
  %i.ib = load ptr, ptr %i.eu, align 8, !tbaa !111
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8 ; 2 uses
  store ptr %i.ic, ptr %i.eu, align 8, !tbaa !93
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !92 ; 3 uses
  store ptr %i.id, ptr %i.ev, align 8, !tbaa !94
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 512
  store ptr %i.ie, ptr %i.ew, align 8, !tbaa !95
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 508
  br label %.thread.peel.i

.thread.peel.i:                                   ; preds = %bb.ao, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i
  %storemerge.i.i.peel.i = phi ptr [ %i.if, %bb.ao ], [ %i.hs, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i ]
  store ptr %storemerge.i.i.peel.i, ptr %i.et, align 8, !tbaa !97
  br label %.preheader.peel.next.i.preheader

bb.ap:                                            ; preds = %bb.ak, %bb.ak, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %14 = load i32, ptr %i.hl, align 8, !tbaa !98   ; 2 uses
  store i32 %14, ptr %i.a, align 4, !tbaa !110
  %i.ig = load ptr, ptr %i.et, align 8, !tbaa !97 ; 3 uses
  %i.ih = load ptr, ptr %i.ew, align 8, !tbaa !112
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -4
  %.not.i.i.i.peel.i = icmp eq ptr %i.ig, %i.ii
  br i1 %.not.i.i.i.peel.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %14, ptr %i.ig, align 4, !tbaa !110
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store ptr %i.ij, ptr %i.et, align 8, !tbaa !97
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.peel.i

bb.ar:                                            ; preds = %bb.ap
  call void @_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.peel.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.peel.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.preheader.peel.next.i.preheader

.preheader.peel.next.i.preheader:                 ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.peel.i, %.thread.peel.i, %bb.ak
  br label %.preheader.peel.next.i

.preheader.peel.next.i:                           ; preds = %.preheader.peel.next.i.backedge, %.preheader.peel.next.i.preheader
  %.sroa.018.0.in.i = phi ptr [ %i.hl, %.preheader.peel.next.i.preheader ], [ %i.im, %.preheader.peel.next.i.backedge ]
  %.sroa.018.0.i = load i32, ptr %.sroa.018.0.in.i, align 8, !tbaa !98
  %switch.tableidx = add i32 %.sroa.018.0.i, -7   ; 2 uses
  %i.ik = icmp ult i32 %switch.tableidx, 87
  br i1 %i.ik, label %switch.lookup, label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i"

switch.lookup:                                    ; preds = %.preheader.peel.next.i
  %i.il = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Z4replRKN6hermes2vm13RuntimeConfigE, i64 %i.il
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i"

"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i": ; preds = %.preheader.peel.next.i, %switch.lookup
  %not..i = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %.preheader.peel.next.i ]
  %i.im = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %5, i32 noundef %not..i) #21 ; 4 uses
  %.not.i62 = icmp eq ptr %i.im, null
  br i1 %.not.i62, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i"
  %i.in = load i32, ptr %i.im, align 8, !tbaa !98
  switch i32 %i.in, label %.preheader.peel.next.i.backedge [
    i32 120, label %.loopexit.i
    i32 49, label %bb.at
    i32 53, label %bb.at
    i32 55, label %bb.at
    i32 51, label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"
    i32 54, label %bb.aw
    i32 56, label %bb.ax
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %15 = load i32, ptr %i.im, align 8, !tbaa !98   ; 2 uses
  store i32 %15, ptr %i.a, align 4, !tbaa !110
  %i.io = load ptr, ptr %i.et, align 8, !tbaa !97 ; 3 uses
  %i.ip = load ptr, ptr %i.ew, align 8, !tbaa !112
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %.not.i.i.i.i = icmp eq ptr %i.io, %i.iq
  br i1 %.not.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %15, ptr %i.io, align 4, !tbaa !110
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.ir, ptr %i.et, align 8, !tbaa !97
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i

bb.av:                                            ; preds = %bb.at
  call void @_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.preheader.peel.next.i.backedge

bb.aw:                                            ; preds = %bb.as
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"

bb.ax:                                            ; preds = %bb.as
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"

"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i": ; preds = %bb.ax, %bb.aw, %bb.as
  %.0.i13.i = phi i32 [ 55, %bb.ax ], [ 53, %bb.aw ], [ 49, %bb.as ] ; 2 uses
  %i.is = load ptr, ptr %i.et, align 8, !tbaa !106 ; 3 uses
  %i.it = load ptr, ptr %i.ep, align 8, !tbaa !106
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %.thread35.i, label %bb.ay

bb.ay:                                            ; preds = %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"
  %i.iv = load ptr, ptr %i.ev, align 8, !tbaa !94, !noalias !107 ; 2 uses
  %i.iw = icmp eq ptr %i.is, %i.iv
  br i1 %i.iw, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i: ; preds = %bb.ay
  %i.ix = load ptr, ptr %i.eu, align 8, !tbaa !93, !noalias !107
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 508
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !110
  %i.jc = icmp eq i32 %i.jb, %.0.i13.i
  br i1 %i.jc, label %bb.az, label %.thread35.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i: ; preds = %bb.ay
  %i.jd = getelementptr inbounds i8, ptr %i.is, i64 -4 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !110
  %i.jf = icmp eq i32 %i.je, %.0.i13.i
  br i1 %i.jf, label %.thread.i, label %.thread35.i

bb.az:                                            ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef 512) #20
  %i.jg = load ptr, ptr %i.eu, align 8, !tbaa !111
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8 ; 2 uses
  store ptr %i.jh, ptr %i.eu, align 8, !tbaa !93
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !92 ; 3 uses
  store ptr %i.ji, ptr %i.ev, align 8, !tbaa !94
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 512
  store ptr %i.jj, ptr %i.ew, align 8, !tbaa !95
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 508
  br label %.thread.i

.thread.i:                                        ; preds = %bb.az, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i
  %storemerge.i.i.i = phi ptr [ %i.jk, %bb.az ], [ %i.jd, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i ]
  store ptr %storemerge.i.i.i, ptr %i.et, align 8, !tbaa !97
  br label %.preheader.peel.next.i.backedge

.preheader.peel.next.i.backedge:                  ; preds = %.thread.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i, %bb.as
  br label %.preheader.peel.next.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %bb.as, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i", %bb.ak, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.peel.i"
  %i.jl = load ptr, ptr %i.et, align 8, !tbaa !106
  %i.jm = load ptr, ptr %i.ep, align 8, !tbaa !106
  %i.jn = icmp ne ptr %i.jl, %i.jm
  br label %.thread35.i

.thread35.i:                                      ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i", %.loopexit.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i", %bb.aj, %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i
  %.5.i = phi i1 [ true, %bb.aj ], [ false, %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i ], [ %i.jn, %.loopexit.i ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i ], [ false, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i" ], [ false, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i" ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i ]
  %i.jo = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %.not.i.i.i15.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i15.i, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.thread35.i
  %i.jp = load ptr, ptr %i.eq, align 8, !tbaa !115 ; 2 uses
  %i.jq = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = icmp ult ptr %i.jp, %i.jr
  br i1 %i.js, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ba, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i ], [ %i.jp, %bb.ba ] ; 3 uses
  %i.jt = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !92
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef 512) #20
  %i.ju = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.jv = icmp ult ptr %.06.i.i.i.i.i, %i.jq
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !116

_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !91
  br label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.ba
  %i.jw = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.jo, %bb.ba ]
  %i.jx = load i64, ptr %i.eo, align 8, !tbaa !88
  %i.jy = shl i64 %i.jx, 3
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jy) #20
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i: ; preds = %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i, %.thread35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.jz = load ptr, ptr %i.ex, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i
  %i.ka = load ptr, ptr %i.ey, align 8, !tbaa !120
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #20
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bb, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i
  %i.ke = load ptr, ptr %i.ez, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.kf = load ptr, ptr %i.fa, align 8, !tbaa !124
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.ki) #20
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.kj = load ptr, ptr %i.fb, align 8, !tbaa !40 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.fc
  br i1 %i.kk, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.kj) #21
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i:      ; preds = %bb.bd, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  %i.kl = load ptr, ptr %i.fd, align 8, !tbaa !40 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.fe
  br i1 %i.km, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, label %bb.be

bb.be:                                            ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  call void @free(ptr noundef %i.kl) #21
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i:     ; preds = %bb.be, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  %i.kn = load ptr, ptr %i.ff, align 8, !tbaa !125 ; 3 uses
  %.not.i.i16.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i16.i, label %_ZL16needsAnotherLineN4llvh9StringRefE.exit, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !127
  call void @_ZdlPv(ptr noundef %i.kp) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef 32) #20
  br label %_ZL16needsAnotherLineN4llvh9StringRefE.exit

_ZL16needsAnotherLineN4llvh9StringRefE.exit:      ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.sroa.423.8.extract.trunc.i = trunc i64 %i.gp to i40
  store i40 %.sroa.423.8.extract.trunc.i, ptr %i.ek, align 8
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.5.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZL16needsAnotherLineN4llvh9StringRefE.exit
  %i.kq = load i64, ptr %i.p, align 8, !tbaa !47  ; 4 uses
  %i.kr = add i64 %i.kq, 1                        ; 3 uses
  %i.ks = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.o
  br i1 %i.kt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.bf
  %i.ku = icmp ult i64 %i.kq, 16
  call void @llvm.assume(i1 %i.ku)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bf
  %i.kv = load i64, ptr %i.o, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.kw = phi i64 [ %i.kv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.kx = icmp ugt i64 %i.kr, %i.kw
  br i1 %i.kx, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.kq, i64 noundef 0, ptr noundef null, i64 noundef 1) #21
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.bg
  %i.ky = phi ptr [ %.pre.i.i, %bb.bg ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kq
  store i8 10, ptr %i.kz, align 1, !tbaa !16
end_hunk_0
