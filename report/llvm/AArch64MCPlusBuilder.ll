Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64MCPlusBuilder?download=true
inline.NumInlined: 4523
inline.NumDeleted: 1840
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_120AArch64MCPlusBuilder39createInstrumentedIndCallHandlerEntryBBEPKN4llvm8MCSymbolES4_PNS1_9MCContextE:bb.a
  %i.hb = load ptr, ptr %i.ac, align 8, !tbaa !275
  %.not.i67 = icmp eq ptr %i.ha, %i.hb
  br i1 %.not.i67, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit66
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ha, i8 0, i64 128, i1 false)
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 28
  store i32 6, ptr %i.he, align 4, !tbaa !84
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 128 ; 2 uses
  store ptr %i.hf, ptr %i.aa, align 8, !tbaa !274
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69

bb.aq:                                            ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit66
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ha)
  %.pre80 = load ptr, ptr %i.aa, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69

_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69: ; preds = %bb.ap, %bb.aq
  %i.hg = phi ptr [ %i.hf, %bb.ap ], [ %.pre80, %bb.aq ]
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -128
  %i.hi = load ptr, ptr %1, align 8, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 176
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.hh, ptr noundef %3, ptr noundef %4) #25
  %i.hl = load ptr, ptr %7, align 8, !tbaa !278   ; 3 uses
  %i.hm = load ptr, ptr %i.dc, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hr, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i ], [ %i.hl, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69 ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !39 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.ho) #25
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i:     ; preds = %bb.ar, %.lr.ph.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hr, %i.hm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i:      ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69
  %i.hs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i ], [ %i.hl, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit69 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !275
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hx) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.hy = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.at
  br i1 %i.hz, label %_ZN4llvm6MCInstD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit
  call void @free(ptr noundef %i.hy) #25
  br label %_ZN4llvm6MCInstD2Ev.exit

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ia = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.b
  br i1 %i.ib, label %_ZN4llvm6MCInstD2Ev.exit70, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm6MCInstD2Ev.exit
  call void @free(ptr noundef %i.ia) #25
  br label %_ZN4llvm6MCInstD2Ev.exit70

_ZN4llvm6MCInstD2Ev.exit70:                       ; preds = %_ZN4llvm6MCInstD2Ev.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder23createNumCountersGetterEPN4llvm9MCContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.20") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder12createGetterEPN4llvm9MCContextEPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2, ptr noundef nonnull @.str.42)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder26createInstrLocationsGetterEPN4llvm9MCContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.20") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder12createGetterEPN4llvm9MCContextEPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2, ptr noundef nonnull @.str.43)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder23createInstrTablesGetterEPN4llvm9MCContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.20") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder12createGetterEPN4llvm9MCContextEPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2, ptr noundef nonnull @.str.44)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder25createInstrNumFuncsGetterEPN4llvm9MCContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.20") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder12createGetterEPN4llvm9MCContextEPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2, ptr noundef nonnull @.str.45)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120AArch64MCPlusBuilder22createSymbolTrampolineEPKN4llvm8MCSymbolEPNS1_9MCContextE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder27createReturnInstructionListEPNS_9MCContextE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
.lr.ph.i.i.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !278
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 6, ptr %i.f, align 4, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !274
  %i.h = load ptr, ptr %1, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1312
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120AArch64MCPlusBuilder21indirectCallPromotionERKN4llvm6MCInstEtRKSt6vectorISt4pairIPNS1_8MCSymbolEmESaIS9_EESD_RKS5_IPS2_SaISE_EEbPNS1_9MCContextE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.106") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i16 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i1 noundef zeroext %7, ptr noundef %8) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %9 = alloca %"class.std::vector.20", align 8    ; 8 uses
  %10 = alloca %"class.std::vector.20", align 8   ; 8 uses
  %11 = alloca %"class.std::vector.20", align 8   ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.std::vector.20", align 8   ; 8 uses
  %13 = alloca %"class.std::optional.871", align 8 ; 5 uses
  %14 = alloca %"class.std::vector.20", align 8   ; 10 uses
  %15 = alloca %"class.std::vector.20", align 8   ; 8 uses
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder10isTailCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) #25 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = tail call noundef i64 @_ZNK4llvm4bolt13MCPlusBuilder12getJumpTableERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  %.not77 = icmp ne i64 %i.e, 0
  %.not78 = icmp eq i16 %3, 0
  %or.cond = or i1 %.not78, %.not77
  br i1 %or.cond, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !283
  %i.f = load ptr, ptr %5, align 8, !tbaa !618
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = icmp eq ptr %i.f, %i.h                   ; 2 uses
  %or.cond.not = and i1 %7, %i.i
  br i1 %or.cond.not, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !220
  %i.n = trunc i32 %i.m to i16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !620
  %i.q = load ptr, ptr %4, align 8, !tbaa !621
  %.not214 = icmp eq ptr %i.p, %i.q
  br i1 %.not214, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ac = select i1 %i.d, i32 1950, i32 2137
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129
  %.pre219.a = load ptr, ptr %i.t, align 8, !tbaa !352 ; 5 uses
  %.pre221 = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.ag = icmp eq ptr %.pre219.a, %.pre221
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %i.ag, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.thread

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.thread: ; preds = %._crit_edge
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !283
  store ptr %i.aj, ptr %.pre219.a, align 8, !tbaa !623
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre219.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.pre219.a, i64 32
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !352
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit: ; preds = %._crit_edge, %._crit_edge.thread
  %i.am = phi ptr [ %i.s, %._crit_edge.thread ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.an = phi ptr [ %i.r, %._crit_edge.thread ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.ao = phi ptr [ null, %._crit_edge.thread ], [ %.pre219.a, %._crit_edge ]
  call void @_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE17_M_realloc_insertIJRS3_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %.pre222 = load ptr, ptr %14, align 8, !tbaa !278 ; 3 uses
  %.phi.trans.insert223 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre224 = load ptr, ptr %.phi.trans.insert223, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre222, %.pre224
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i ], [ %.pre222, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.aq) #25
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i:     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %.pre224
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i:      ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i ], [ %.pre222, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !275
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.thread, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i, %bb.e
  %i.ba = phi ptr [ %i.ai, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.thread ], [ %i.am, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i ], [ %i.am, %bb.e ]
  %i.bb = phi ptr [ %i.ah, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.thread ], [ %i.an, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i ], [ %i.an, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !624 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24 ; 3 uses
  %i.be = load ptr, ptr %6, align 8, !tbaa !626   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !626 ; 2 uses
  %.not207210 = icmp eq ptr %i.be, %i.bg
  br i1 %.not207210, label %._crit_edge213, label %.lr.ph212

.lr.ph212:                                        ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 -16 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -8
  br label %bb.aq

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129
  %i.bj = phi i64 [ 0, %.lr.ph ], [ %i.hv, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129 ] ; 3 uses
  %.073209 = phi i32 [ 0, %.lr.ph ], [ %i.hu, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !352 ; 5 uses
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !353
  %.not.i80 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i80, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit82, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90.thread

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90.thread: ; preds = %bb.f
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !283
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !623
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bo, ptr %i.t, align 8, !tbaa !352
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit92

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit82: ; preds = %bb.f
  call void @_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE17_M_realloc_insertIJRS3_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %9)
  %.pre = load ptr, ptr %9, align 8, !tbaa !278   ; 3 uses
  %.pre215 = load ptr, ptr %i.v, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i83 = icmp eq ptr %.pre, %.pre215
  br i1 %.not4.i.i.i83, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit82, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i86
  %.05.i.i.i85 = phi ptr [ %i.bt, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i86 ], [ %.pre, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit82 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 32
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i86, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i84
  call void @free(ptr noundef %i.bq) #25
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i86

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i86:   ; preds = %bb.g, %.lr.ph.i.i.i84
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 128 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.bt, %.pre215
  br i1 %.not.i.i.i87, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i88, label %.lr.ph.i.i.i84, !llvm.loop !4

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i88: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i86
  %.pr.i89 = load ptr, ptr %9, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90:    ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i88, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit82
  %i.bu = phi ptr [ %.pr.i89, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i88 ], [ %.pre, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJRS3_S6_EEERS7_DpOT_.exit82 ] ; 3 uses
  %.not.i.i1.i91 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i91, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit92, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90
  %i.bv = load ptr, ptr %i.w, align 8, !tbaa !275
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit92

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit92:   ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90.thread, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i90, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !624 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -24 ; 4 uses
  br i1 %i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit92
  %i.cb = load ptr, ptr %4, align 8, !tbaa !621
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit92
  %i.cc = load ptr, ptr %5, align 8, !tbaa !621   ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.bj
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !628
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.pn = phi ptr [ %i.cc, %bb.i ], [ %i.cb, %.thread ]
  %i.cg = phi i64 [ %i.cf, %bb.i ], [ 0, %.thread ]
  %.in = getelementptr inbounds nuw [16 x i8], ptr %.pn, i64 %i.bj
  %i.ch = load ptr, ptr %.in, align 8, !tbaa !629
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ci = load ptr, ptr %1, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1360
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %10, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %i.ch, ptr noundef %8, i16 noundef zeroext %3, i64 noundef %i.cg) #25
  %i.cl = getelementptr inbounds i8, ptr %i.bz, i64 -16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !279
  %i.cn = load ptr, ptr %10, align 8, !tbaa !279
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !279
  %i.cp = load ptr, ptr %i.ca, align 8, !tbaa !279 ; 2 uses
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr %i.ct, ptr %i.cn, ptr %i.co)
  %i.cu = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %8) #25 ; 2 uses
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cv = load ptr, ptr %1, align 8, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1512
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %11, ptr noundef nonnull align 8 dereferenceable(544) %1, i16 noundef zeroext %i.n, i16 noundef zeroext %3, ptr noundef %i.cu, ptr noundef nonnull %8) #25
  %i.cy = load ptr, ptr %i.cl, align 8, !tbaa !279
  %i.cz = load ptr, ptr %11, align 8, !tbaa !279
  %i.da = load ptr, ptr %i.y, align 8, !tbaa !279
  %i.db = load ptr, ptr %i.ca, align 8, !tbaa !279 ; 2 uses
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr %i.df, ptr %i.cz, ptr %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.dg = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %8) #25 ; 2 uses
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !352 ; 5 uses
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !353
  %.not.i93 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i93, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJS3_S6_EEERS7_DpOT_.exit, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102.thread

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102.thread: ; preds = %bb.j
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !623
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store ptr %i.dk, ptr %i.t, align 8, !tbaa !352
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit104

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJS3_S6_EEERS7_DpOT_.exit: ; preds = %bb.j
  call void @_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE17_M_realloc_insertIJS3_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %.pre216 = load ptr, ptr %12, align 8, !tbaa !278 ; 3 uses
  %.pre217 = load ptr, ptr %i.z, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i95 = icmp eq ptr %.pre216, %.pre217
  br i1 %.not4.i.i.i95, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102, label %.lr.ph.i.i.i96

.lr.ph.i.i.i96:                                   ; preds = %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJS3_S6_EEERS7_DpOT_.exit, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i98
  %.05.i.i.i97 = phi ptr [ %i.dp, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i98 ], [ %.pre216, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJS3_S6_EEERS7_DpOT_.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i97, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !39 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i97, i64 32
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i98, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i96
  call void @free(ptr noundef %i.dm) #25
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i98

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i98:   ; preds = %bb.k, %.lr.ph.i.i.i96
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i97, i64 128 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.dp, %.pre217
  br i1 %.not.i.i.i99, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i100, label %.lr.ph.i.i.i96, !llvm.loop !4

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i100: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i98
  %.pr.i101 = load ptr, ptr %12, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102:   ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i100, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJS3_S6_EEERS7_DpOT_.exit
  %i.dq = phi ptr [ %.pr.i101, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i100 ], [ %.pre216, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolES_INS1_6MCInstESaIS4_EEESaIS7_EE12emplace_backIJS3_S6_EEERS7_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i103 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i1.i103, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit104, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102
  %i.dr = load ptr, ptr %i.aa, align 8, !tbaa !275
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit104

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit104:  ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102.thread, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i102, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !624 ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -24 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -16 ; 8 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !274 ; 8 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !275
  %.not.i105 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not.i105, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dy, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 16, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 3 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !39
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  store i32 0, ptr %i.ed, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  store i32 6, ptr %i.ee, align 4, !tbaa !84
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !83 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ef, 0
  %i.eg = icmp eq ptr %i.dy, %2
  %or.cond.i.i.i = or i1 %i.eg, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = icmp ugt i32 %i.ef, 6
  br i1 %i.eh, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i: ; preds = %bb.n
  %i.ei = zext i32 %i.ef to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.eb, ptr noundef nonnull %i.ec, i64 noundef %i.ei, i64 noundef 16) #25
  %.pre.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.eb, align 8, !tbaa !39
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i, %bb.n
  %i.ej = phi ptr [ %.pre.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ec, %bb.n ]
  %i.ek = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ef, %bb.n ]
  %i.el = zext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !39
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.el, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 8 %i.em, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !83
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i

_ZN4llvm6MCInstC2ERKS0_.exit.i:                   ; preds = %.sink.split.i.i.i.i, %bb.m
  %i.en = load ptr, ptr %i.dx, align 8, !tbaa !274
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 128 ; 2 uses
  store ptr %i.eo, ptr %i.dx, align 8, !tbaa !274
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit104
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %.pre218 = load ptr, ptr %i.dx, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit.i, %bb.o
  %i.ep = phi ptr [ %i.eo, %_ZN4llvm6MCInstC2ERKS0_.exit.i ], [ %.pre218, %bb.o ] ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -128 ; 7 uses
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -104 ; 4 uses
  store i32 0, ptr %i.er, align 8, !tbaa !83
  store i32 %i.ac, ptr %i.eq, align 8, !tbaa !235
  %i.es = load ptr, ptr %4, align 8, !tbaa !621
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.bj
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !629
  %i.ev = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.eu, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %8, ptr null) #25
  %i.ew = load ptr, ptr %1, align 8, !tbaa !29
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 912
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.eq, ptr noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(2208) %8, i32 noundef 0) #25
  %.fca.1.load.cast.i = ptrtoint ptr %i.ez to i64 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ep, i64 -112 ; 2 uses
  %i.fb = load i32, ptr %i.er, align 8, !tbaa !83 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.ep, i64 -100
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !84
  %.not.i.i = icmp ult i32 %i.fb, %i.fd
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !241

bb.p:                                             ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 5, i64 %.fca.1.load.cast.i)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit
  %i.fe = zext i32 %i.fb to i64
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !39
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fe ; 2 uses
  store i8 5, ptr %i.fg, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %.fca.1.load.cast.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.fh = load i32, ptr %i.er, align 8, !tbaa !83
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.er, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.p, %bb.q
  br i1 %i.d, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  call void @_ZNK4llvm4bolt13MCPlusBuilder11setTailCallERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #25
  br label %bb.u

bb.s:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %i.fj = call i64 @_ZNK4llvm4bolt13MCPlusBuilder9getOffsetERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) #25 ; 2 uses
  %i.fk = and i64 %i.fj, 4294967296
  %.not208 = icmp eq i64 %i.fk, 0
  br i1 %.not208, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0186.0.extract.trunc = trunc i64 %i.fj to i32
  %i.fl = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder9setOffsetERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.eq, i32 noundef %.sroa.0186.0.extract.trunc) #25 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.fm = load ptr, ptr %1, align 8, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 840
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  br i1 %i.fp, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.fq = load ptr, ptr %1, align 8, !tbaa !29
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 840
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #25
  br i1 %i.ft, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZNK4llvm4bolt13MCPlusBuilder9getEHInfoERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.871") align 8 %13, ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  %i.fu = load i8, ptr %i.ad, align 8, !tbaa !300, !range !36, !noundef !37
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZNK4llvm4bolt13MCPlusBuilder9addEHInfoERNS_6MCInstERKSt4pairIPKNS_8MCSymbolEmE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %13) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fw = call noundef i64 @_ZNK4llvm4bolt13MCPlusBuilder14getGnuArgsSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) #25 ; 2 uses
  %i.fx = icmp sgt i64 %i.fw, -1
  br i1 %i.fx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @_ZNK4llvm4bolt13MCPlusBuilder14addGnuArgsSizeERNS_6MCInstEl(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.eq, i64 noundef %i.fw) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v, %bb.u
  br i1 %i.d, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fy = icmp eq i32 %.073209, 0
  br i1 %i.fy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fz = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %8) #25
  store ptr %i.fz, ptr %i.b, align 8, !tbaa !283
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.ga = load ptr, ptr %i.dx, align 8, !tbaa !274 ; 8 uses
  %i.gb = load ptr, ptr %i.dz, align 8, !tbaa !275
  %.not.i.i106 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not.i.i106, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ga, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 16, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 3 uses
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !39
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !83
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  store i32 6, ptr %i.gf, align 4, !tbaa !84
  %i.gg = load i32, ptr %i.ab, align 8, !tbaa !83 ; 5 uses
  %.not.i.i.i.i.i107 = icmp eq i32 %i.gg, 0
  %i.gh = icmp eq ptr %i.ga, %2
  %or.cond.i.i.i.i = or i1 %i.gh, %.not.i.i.i.i.i107
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = icmp ugt i32 %i.gg, 6
  br i1 %i.gi, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i: ; preds = %bb.ag
  %i.gj = zext i32 %i.gg to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.gc, ptr noundef nonnull %i.gd, i64 noundef %i.gj, i64 noundef 16) #25
  %.pre.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i
  %.pre.i.i.i108 = load ptr, ptr %i.gc, align 8, !tbaa !39
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i, %bb.ag
  %i.gk = phi ptr [ %.pre.i.i.i108, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.gd, %bb.ag ]
  %i.gl = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.gg, %bb.ag ]
  %i.gm = zext i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.j, align 8, !tbaa !39
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.gm, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gk, ptr align 8 %i.gn, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !83
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i

_ZN4llvm6MCInstC2ERKS0_.exit.i.i:                 ; preds = %.sink.split.i.i.i.i.i, %bb.af
  %i.go = load ptr, ptr %i.dx, align 8, !tbaa !274
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 128 ; 2 uses
  store ptr %i.gp, ptr %i.dx, align 8, !tbaa !274
  br label %_ZZN12_GLOBAL__N_120AArch64MCPlusBuilder21indirectCallPromotionERKN4llvm6MCInstEtRKSt6vectorISt4pairIPNS1_8MCSymbolEmESaIS9_EESD_RKS5_IPS2_SaISE_EEbPNS1_9MCContextEENKUlRS5_IS2_SaIS2_EEE_clESN_.exit

bb.ah:                                            ; preds = %bb.ae
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr %i.ga, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %.pre.i109 = load ptr, ptr %i.dx, align 8, !tbaa !279
  br label %_ZZN12_GLOBAL__N_120AArch64MCPlusBuilder21indirectCallPromotionERKN4llvm6MCInstEtRKSt6vectorISt4pairIPNS1_8MCSymbolEmESaIS9_EESD_RKS5_IPS2_SaISE_EEbPNS1_9MCContextEENKUlRS5_IS2_SaIS2_EEE_clESN_.exit

_ZZN12_GLOBAL__N_120AArch64MCPlusBuilder21indirectCallPromotionERKN4llvm6MCInstEtRKSt6vectorISt4pairIPNS1_8MCSymbolEmESaIS9_EESD_RKS5_IPS2_SaISE_EEbPNS1_9MCContextEENKUlRS5_IS2_SaIS2_EEE_clESN_.exit: ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit.i.i, %bb.ah
  %i.gq = phi ptr [ %i.gp, %_ZN4llvm6MCInstC2ERKS0_.exit.i.i ], [ %.pre.i109, %bb.ah ] ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -128
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -104
  store i32 0, ptr %i.gs, align 8, !tbaa !83
  %16 = load ptr, ptr %i.b, align 8, !tbaa !283
  %i.gt = load ptr, ptr %1, align 8, !tbaa !29
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1368
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.gr, ptr noundef %16, ptr noundef nonnull %8) #25, !inline_history !615
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %_ZZN12_GLOBAL__N_120AArch64MCPlusBuilder21indirectCallPromotionERKN4llvm6MCInstEtRKSt6vectorISt4pairIPNS1_8MCSymbolEmESaIS9_EESD_RKS5_IPS2_SaISE_EEbPNS1_9MCContextEENKUlRS5_IS2_SaIS2_EEE_clESN_.exit, %bb.ab
  %i.gw = load ptr, ptr %11, align 8, !tbaa !278  ; 3 uses
  %i.gx = load ptr, ptr %i.y, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i110 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not4.i.i.i110, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i117, label %.lr.ph.i.i.i111

.lr.ph.i.i.i111:                                  ; preds = %bb.ai, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i113
  %.05.i.i.i112 = phi ptr [ %i.hc, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i113 ], [ %i.gw, %bb.ai ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i112, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !39 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i112, i64 32
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i113, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i111
  call void @free(ptr noundef %i.gz) #25
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i113

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i113:  ; preds = %bb.aj, %.lr.ph.i.i.i111
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i112, i64 128 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.hc, %i.gx
  br i1 %.not.i.i.i114, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i115, label %.lr.ph.i.i.i111, !llvm.loop !4

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i115: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i113
  %.pr.i116 = load ptr, ptr %11, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i117

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i117:   ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i115, %bb.ai
  %i.hd = phi ptr [ %.pr.i116, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i115 ], [ %i.gw, %bb.ai ] ; 3 uses
  %.not.i.i1.i118 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i118, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i117
  %i.he = load ptr, ptr %i.ae, align 8, !tbaa !275
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119:  ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i117, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.hi = load ptr, ptr %10, align 8, !tbaa !278  ; 3 uses
  %i.hj = load ptr, ptr %i.x, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i120 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not4.i.i.i120, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i127, label %.lr.ph.i.i.i121

.lr.ph.i.i.i121:                                  ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i123
  %.05.i.i.i122 = phi ptr [ %i.ho, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i123 ], [ %i.hi, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i122, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !39 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i122, i64 32
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i123, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i121
  call void @free(ptr noundef %i.hl) #25
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i123

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i123:  ; preds = %bb.al, %.lr.ph.i.i.i121
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i122, i64 128 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.ho, %i.hj
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i125, label %.lr.ph.i.i.i121, !llvm.loop !4

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i125: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i123
  %.pr.i126 = load ptr, ptr %10, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i127

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i127:   ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i125, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119
  %i.hp = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i125 ], [ %i.hi, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit119 ] ; 3 uses
  %.not.i.i1.i128 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i1.i128, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i127
  %i.hq = load ptr, ptr %i.af, align 8, !tbaa !275
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit129:  ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i127, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.hu = add i32 %.073209, 1                     ; 2 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = load ptr, ptr %i.o, align 8, !tbaa !620
  %i.hx = load ptr, ptr %4, align 8, !tbaa !621
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 4
  %i.ic = icmp ugt i64 %i.ib, %i.hv
  br i1 %i.ic, label %bb.f, label %._crit_edge, !llvm.loop !616

._crit_edge213:                                   ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit155, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit
  %i.id = getelementptr inbounds i8, ptr %i.bc, i64 -16 ; 7 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !274 ; 8 uses
  %i.if = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !275
  %.not.i130 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not.i130, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %._crit_edge213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ie, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 16, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 3 uses
  store ptr %i.ii, ptr %i.ih, align 8, !tbaa !39
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  store i32 0, ptr %i.ij, align 8, !tbaa !83
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  store i32 6, ptr %i.ik, align 4, !tbaa !84
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !83 ; 5 uses
  %.not.i.i.i.i131 = icmp eq i32 %i.im, 0
  %i.in = icmp eq ptr %i.ie, %2
  %or.cond.i.i.i132 = or i1 %i.in, %.not.i.i.i.i131
  br i1 %or.cond.i.i.i132, label %_ZN4llvm6MCInstC2ERKS0_.exit.i136, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.io = icmp ugt i32 %i.im, 6
  br i1 %i.io, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i137, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i133

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i137: ; preds = %bb.ao
  %i.ip = zext i32 %i.im to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.ih, ptr noundef nonnull %i.ii, i64 noundef %i.ip, i64 noundef 16) #25
  %.pre.i.i.i138 = load i32, ptr %i.il, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i139 = icmp eq i32 %.pre.i.i.i138, 0
  br i1 %.not.i.i.i.i.i139, label %.sink.split.i.i.i.i135, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i140

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i140: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i137
  %.pre.i.i141 = load ptr, ptr %i.ih, align 8, !tbaa !39
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i133

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i133: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i140, %bb.ao
  %i.iq = phi ptr [ %.pre.i.i141, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i140 ], [ %i.ii, %bb.ao ]
  %i.ir = phi i32 [ %.pre.i.i.i138, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i140 ], [ %i.im, %bb.ao ]
  %i.is = zext i32 %i.ir to i64
  %i.it = load ptr, ptr %i.j, align 8, !tbaa !39
  %gepdiff.i.i.i.i134 = shl nuw nsw i64 %i.is, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iq, ptr align 8 %i.it, i64 %gepdiff.i.i.i.i134, i1 false)
  br label %.sink.split.i.i.i.i135

.sink.split.i.i.i.i135:                           ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i133, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i137
  store i32 %i.im, ptr %i.ij, align 8, !tbaa !83
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i136

_ZN4llvm6MCInstC2ERKS0_.exit.i136:                ; preds = %.sink.split.i.i.i.i135, %bb.an
  %i.iu = load ptr, ptr %i.id, align 8, !tbaa !274
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128
  store ptr %i.iv, ptr %i.id, align 8, !tbaa !274
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit142

bb.ap:                                            ; preds = %._crit_edge213
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr %i.ie, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit142

_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit142: ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit.i136, %bb.ap
  br i1 %i.d, label %bb.bb, label %bb.av

bb.aq:                                            ; preds = %.lr.ph212, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit155
  %.sroa.0183.0211 = phi ptr [ %i.be, %.lr.ph212 ], [ %i.jp, %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit155 ] ; 2 uses
  %i.iw = load ptr, ptr %.sroa.0183.0211, align 8, !tbaa !279 ; 6 uses
  %.not = icmp eq ptr %i.iw, %2
  br i1 %.not, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit155, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load ptr, ptr %i.bh, align 8, !tbaa !274 ; 8 uses
  %i.iy = load ptr, ptr %i.bi, align 8, !tbaa !275
  %.not.i143 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i143, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ix, ptr noundef nonnull align 8 dereferenceable(128) %i.iw, i64 16, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 32 ; 3 uses
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !39
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  store i32 0, ptr %i.jc, align 8, !tbaa !83
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 28
  store i32 6, ptr %i.jd, align 4, !tbaa !84
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !83 ; 5 uses
  %.not.i.i.i.i144 = icmp eq i32 %i.jf, 0
  %i.jg = icmp eq ptr %i.ix, %i.iw
  %or.cond.i.i.i145 = or i1 %i.jg, %.not.i.i.i.i144
  br i1 %or.cond.i.i.i145, label %_ZN4llvm6MCInstC2ERKS0_.exit.i149, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jh = icmp ugt i32 %i.jf, 6
  br i1 %i.jh, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i150, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i146

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i150: ; preds = %bb.at
  %i.ji = zext i32 %i.jf to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.iz, ptr noundef nonnull %i.jb, i64 noundef %i.ji, i64 noundef 16) #25
  %.pre.i.i.i151 = load i32, ptr %i.je, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i152 = icmp eq i32 %.pre.i.i.i151, 0
  br i1 %.not.i.i.i.i.i152, label %.sink.split.i.i.i.i148, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i153

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i153: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i150
  %.pre.i.i154 = load ptr, ptr %i.iz, align 8, !tbaa !39
end_hunk_0
