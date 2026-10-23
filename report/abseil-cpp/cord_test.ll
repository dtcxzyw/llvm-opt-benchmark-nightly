Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_test?download=true
inline.NumInlined: 17618
inline.NumDeleted: 3825
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN12_GLOBAL__N_121CordTest_Compare_Test8TestBodyEv:bb.a
bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn.i83 = phi { ptr, i32 } [ %i.bc, %bb.ap ], [ %i.bb, %bb.ao ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.ar) #38
  br label %.preheader.preheader

_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA12_cEERKT_RKT0_b.exit: ; preds = %bb.an, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i84
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 608 ; 7 uses
  %i.be = load i8, ptr %15, align 8, !tbaa !78
  %i.bf = trunc i8 %i.be to i1
  %i.bg = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not6.i.i.i89 = icmp ne ptr %i.bg, null
  %.not.not.i.i.i90 = select i1 %i.bf, i1 %.not6.i.i.i89, i1 false
  br i1 %.not.not.i.i.i90, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA12_cEERKT_RKT0_b.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i32 2 monotonic, align 4 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 616
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !78
  store i64 1, ptr %i.bd, align 8, !tbaa !78
  %i.bk = load i64, ptr %15, align 8, !tbaa !78
  %.not.i.i.i.i94 = icmp ult i64 %i.bk, 2
  br i1 %.not.i.i.i.i94, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i91, label %bb.as, !prof !127

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i91 unwind label %.body.thread237

bb.at:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA12_cEERKT_RKT0_b.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i91

_ZN4absl12lts_202605264CordC2ERKS1_.exit.i91:     ; preds = %bb.as, %bb.at, %bb.ar
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 624 ; 2 uses
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 9, ptr nonnull @.str.679, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i93 unwind label %bb.av

_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i93: ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i91
  br i1 %i.n, label %bb.au, label %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA10_cEERKT_RKT0_b.exit

bb.au:                                            ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i93
  invoke void @_ZN4absl12lts_202605264Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i32 noundef 1)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA10_cEERKT_RKT0_b.exit unwind label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i91
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bl) #38
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn.i92 = phi { ptr, i32 } [ %i.bn, %bb.aw ], [ %i.bm, %bb.av ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.bd) #38
  br label %.preheader.preheader

_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA10_cEERKT_RKT0_b.exit: ; preds = %bb.au, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i93
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 640 ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordES4_EERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %18, i1 noundef zeroext %i.n)
          to label %bb.ay unwind label %.body.thread237

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA10_cEERKT_RKT0_b.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 672 ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA65_cEERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 1 dereferenceable(65) @.str.680, i1 noundef zeroext %i.n)
          to label %bb.az unwind label %.body.thread237

bb.az:                                            ; preds = %bb.ay
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 704 ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA65_cEERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 1 dereferenceable(65) @.str.681, i1 noundef zeroext %i.n)
          to label %bb.ba unwind label %.body.thread237

bb.ba:                                            ; preds = %bb.az
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 736 ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA65_cEERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 1 dereferenceable(65) @.str.682, i1 noundef zeroext %i.n)
          to label %bb.bb unwind label %.body.thread237

bb.bb:                                            ; preds = %bb.ba
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 768 ; 7 uses
  %i.bt = load i8, ptr %18, align 8, !tbaa !78
  %i.bu = trunc i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not6.i.i.i99 = icmp ne ptr %i.bw, null
  %.not.not.i.i.i100 = select i1 %i.bu, i1 %.not6.i.i.i99, i1 false
  br i1 %.not.not.i.i.i100, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = atomicrmw add ptr %i.bx, i32 2 monotonic, align 4 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 776
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !78
  store i64 1, ptr %i.bs, align 8, !tbaa !78
  %i.ca = load i64, ptr %18, align 8, !tbaa !78
  %.not.i.i.i.i104 = icmp ult i64 %i.ca, 2
  br i1 %.not.i.i.i.i104, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i101, label %bb.bd, !prof !127

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i101 unwind label %.body.thread237

bb.be:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i101

_ZN4absl12lts_202605264CordC2ERKS1_.exit.i101:    ; preds = %bb.bd, %bb.be, %bb.bc
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 784 ; 2 uses
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 63, ptr nonnull @.str.683, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i103 unwind label %bb.bg

_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i103: ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i101
  br i1 %i.n, label %bb.bf, label %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA64_cEERKT_RKT0_b.exit

bb.bf:                                            ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i103
  invoke void @_ZN4absl12lts_202605264Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i32 noundef 1)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA64_cEERKT_RKT0_b.exit unwind label %bb.bh

bb.bg:                                            ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i101
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cb) #38
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn.i102 = phi { ptr, i32 } [ %i.cd, %bb.bh ], [ %i.cc, %bb.bg ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.bs) #38
  br label %.preheader.preheader

_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA64_cEERKT_RKT0_b.exit: ; preds = %bb.bf, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i103
  %i.ce = getelementptr inbounds nuw i8, ptr %21, i64 800 ; 7 uses
  %i.cf = load i8, ptr %18, align 8, !tbaa !78
  %i.cg = trunc i8 %i.cf to i1
  %i.ch = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not6.i.i.i109 = icmp ne ptr %i.ch, null
  %.not.not.i.i.i110 = select i1 %i.cg, i1 %.not6.i.i.i109, i1 false
  br i1 %.not.not.i.i.i110, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA64_cEERKT_RKT0_b.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = atomicrmw add ptr %i.ci, i32 2 monotonic, align 4 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 808
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !78
  store i64 1, ptr %i.ce, align 8, !tbaa !78
  %i.cl = load i64, ptr %18, align 8, !tbaa !78
  %.not.i.i.i.i114 = icmp ult i64 %i.cl, 2
  br i1 %.not.i.i.i.i114, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i111, label %bb.bk, !prof !127

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i111 unwind label %.body.thread237

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA64_cEERKT_RKT0_b.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i111

_ZN4absl12lts_202605264CordC2ERKS1_.exit.i111:    ; preds = %bb.bk, %bb.bl, %bb.bj
  %i.cm = getelementptr inbounds nuw i8, ptr %21, i64 816 ; 2 uses
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 65, ptr nonnull @.str.684, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i113 unwind label %bb.bn

_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i113: ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i111
  br i1 %i.n, label %bb.bm, label %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA66_cEERKT_RKT0_b.exit

bb.bm:                                            ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i113
  invoke void @_ZN4absl12lts_202605264Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i32 noundef 1)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA66_cEERKT_RKT0_b.exit unwind label %bb.bo

bb.bn:                                            ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i111
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cm) #38
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i112 = phi { ptr, i32 } [ %i.co, %bb.bo ], [ %i.cn, %bb.bn ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.ce) #38
  br label %.preheader.preheader

_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA66_cEERKT_RKT0_b.exit: ; preds = %bb.bm, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i113
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 832 ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordES4_EERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i1 noundef zeroext %i.n)
          to label %bb.bq unwind label %.body.thread237

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA66_cEERKT_RKT0_b.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.cq, align 8
  %i.cr = invoke noalias noundef nonnull dereferenceable(864) ptr @_Znwm(i64 noundef 864) #39
          to label %.noexc7.i unwind label %.body.i.thread ; 8 uses

.noexc7.i:                                        ; preds = %bb.bq
  store ptr %i.cr, ptr %20, align 8, !tbaa !332
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 864
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !333
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.noexc7.i
  %.018.i.i.i.i.i.i = phi ptr [ %i.dn, %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.cr, %.noexc7.i ] ; 11 uses
  %.01217.i.i.i.i.i.idx.i = phi i64 [ %.01217.i.i.i.i.i.add.i, %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ 0, %.noexc7.i ] ; 2 uses
  %.01217.i.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %21, i64 %.01217.i.i.i.i.i.idx.i ; 7 uses
  %i.cu = load i8, ptr %.01217.i.i.i.i.i.ptr.i, align 8, !tbaa !78
  %i.cv = trunc i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %.01217.i.i.i.i.i.ptr.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.cx, null
  %.not.not.i.i.i.i.i.i.i.i.i.i = select i1 %i.cv, i1 %.not6.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = atomicrmw add ptr %i.cy, i32 2 monotonic, align 4 ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !78
  store i64 1, ptr %.018.i.i.i.i.i.i, align 8, !tbaa !78
  %i.db = load i64, ptr %.01217.i.i.i.i.i.ptr.i, align 8, !tbaa !78
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.db, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i.i.i.i.i.i.i, label %bb.bs, !prof !127

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(32) %.018.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01217.i.i.i.i.i.ptr.i, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i.i.i.i.i.i.i unwind label %bb.by

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.018.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01217.i.i.i.i.i.ptr.i, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01217.i.i.i.i.i.ptr.i, i64 16 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !78
  %i.df = trunc i8 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %.01217.i.i.i.i.i.ptr.i, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %.not6.i.i4.i.i.i.i.i.i.i.i = icmp ne ptr %i.dh, null
  %.not.not.i.i5.i.i.i.i.i.i.i.i = select i1 %i.df, i1 %.not6.i.i4.i.i.i.i.i.i.i.i, i1 false
  br i1 %.not.not.i.i5.i.i.i.i.i.i.i.i, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = atomicrmw add ptr %i.di, i32 2 monotonic, align 4 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 24
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !78
  store i64 1, ptr %i.dc, align 8, !tbaa !78
  %i.dl = load i64, ptr %i.dd, align 8, !tbaa !78
  %.not.i.i.i6.i.i.i.i.i.i.i.i = icmp ult i64 %i.dl, 2
  br i1 %.not.i.i.i6.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.bv, !prof !127

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i32 noundef 8)
          to label %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i unwind label %bb.bx

bb.bw:                                            ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !132
  br label %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %.018.i.i.i.i.i.i) #38
  br label %.body.i.i.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bv, %bb.bu
  %.01217.i.i.i.i.i.add.i = add nuw nsw i64 %.01217.i.i.i.i.i.idx.i, 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.01217.i.i.i.i.i.add.i, 864
  br i1 %.not.i.i.i.i.i.i, label %bb.cd, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2484

bb.by:                                            ; preds = %bb.bs
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.by, %bb.bx
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.do, %bb.by ], [ %i.dm, %bb.bx ]
  %i.dp = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.dq = call ptr @__cxa_begin_catch(ptr %i.dp) #38 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_119CordCompareTestCaseEEvT_S3_(ptr noundef nonnull %i.cr, ptr noundef nonnull %.018.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #37
          to label %bb.cb unwind label %bb.bz

bb.bz:                                            ; preds = %.body.i.i.i.i.i.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cc unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #42
  unreachable

bb.cb:                                            ; preds = %.body.i.i.i.i.i.i
  unreachable

.body.i.thread:                                   ; preds = %bb.bq
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.cc:                                            ; preds = %bb.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 864) #40
  br label %.body119

bb.cd:                                            ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_119CordCompareTestCaseEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.dn, ptr %i.dv, align 8, !tbaa !334
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 832 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 848 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !78
  %i.dz = trunc i8 %i.dy to i1
  br i1 %i.dz, label %bb.ce, label %_ZN4absl12lts_202605264CordD2Ev.exit.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i unwind label %bb.cf

bb.cf:                                            ; preds = %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.ce
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit.i:           ; preds = %bb.ce, %bb.cd
  %i.ec = load i8, ptr %i.dw, align 8, !tbaa !78
  %i.ed = trunc i8 %i.ec to i1
  br i1 %i.ed, label %bb.cg, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit

bb.cg:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.cg
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #42
  unreachable

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit:  ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i, %bb.cg
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 800 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 816 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !78
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.ci, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.1

bb.ci:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.1 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.1:         ; preds = %bb.ci, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit
  %i.ek = load i8, ptr %i.eg, align 8, !tbaa !78
  %i.el = trunc i8 %i.ek to i1
  br i1 %i.el, label %bb.cj, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.1

bb.cj:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.1
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.eg)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.1 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.1: ; preds = %bb.cj, %_ZN4absl12lts_202605264CordD2Ev.exit.i.1
  %i.em = getelementptr inbounds nuw i8, ptr %21, i64 768 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 784 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !78
  %i.ep = trunc i8 %i.eo to i1
  br i1 %i.ep, label %bb.ck, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.2

bb.ck:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.1
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.2 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.2:         ; preds = %bb.ck, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.1
  %i.eq = load i8, ptr %i.em, align 8, !tbaa !78
  %i.er = trunc i8 %i.eq to i1
  br i1 %i.er, label %bb.cl, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.2

bb.cl:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.2
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.2 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.2: ; preds = %bb.cl, %_ZN4absl12lts_202605264CordD2Ev.exit.i.2
  %i.es = getelementptr inbounds nuw i8, ptr %21, i64 736 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 752 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !78
  %i.ev = trunc i8 %i.eu to i1
  br i1 %i.ev, label %bb.cm, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.3

bb.cm:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.2
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.3 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.3:         ; preds = %bb.cm, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.2
  %i.ew = load i8, ptr %i.es, align 8, !tbaa !78
  %i.ex = trunc i8 %i.ew to i1
  br i1 %i.ex, label %bb.cn, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.3

bb.cn:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.3
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.3 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.3: ; preds = %bb.cn, %_ZN4absl12lts_202605264CordD2Ev.exit.i.3
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 704 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 720 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !78
  %i.fb = trunc i8 %i.fa to i1
  br i1 %i.fb, label %bb.co, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.4

bb.co:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.3
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.4 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.4:         ; preds = %bb.co, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.3
  %i.fc = load i8, ptr %i.ey, align 8, !tbaa !78
  %i.fd = trunc i8 %i.fc to i1
  br i1 %i.fd, label %bb.cp, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.4

bb.cp:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.4
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ey)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.4 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.4: ; preds = %bb.cp, %_ZN4absl12lts_202605264CordD2Ev.exit.i.4
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 672 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 688 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !78
  %i.fh = trunc i8 %i.fg to i1
  br i1 %i.fh, label %bb.cq, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.5

bb.cq:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.4
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.5 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.5:         ; preds = %bb.cq, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.4
  %i.fi = load i8, ptr %i.fe, align 8, !tbaa !78
  %i.fj = trunc i8 %i.fi to i1
  br i1 %i.fj, label %bb.cr, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.5

bb.cr:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.5
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fe)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.5 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.5: ; preds = %bb.cr, %_ZN4absl12lts_202605264CordD2Ev.exit.i.5
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 640 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %21, i64 656 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !78
  %i.fn = trunc i8 %i.fm to i1
  br i1 %i.fn, label %bb.cs, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.6

bb.cs:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.5
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.6 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.6:         ; preds = %bb.cs, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.5
  %i.fo = load i8, ptr %i.fk, align 8, !tbaa !78
  %i.fp = trunc i8 %i.fo to i1
  br i1 %i.fp, label %bb.ct, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.6

bb.ct:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.6
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.6 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.6: ; preds = %bb.ct, %_ZN4absl12lts_202605264CordD2Ev.exit.i.6
  %i.fq = getelementptr inbounds nuw i8, ptr %21, i64 608 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 624 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !78
  %i.ft = trunc i8 %i.fs to i1
  br i1 %i.ft, label %bb.cu, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.7

bb.cu:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.6
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.7 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.7:         ; preds = %bb.cu, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.6
  %i.fu = load i8, ptr %i.fq, align 8, !tbaa !78
  %i.fv = trunc i8 %i.fu to i1
  br i1 %i.fv, label %bb.cv, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.7

bb.cv:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.7
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.7 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.7: ; preds = %bb.cv, %_ZN4absl12lts_202605264CordD2Ev.exit.i.7
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 576 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %21, i64 592 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !78
  %i.fz = trunc i8 %i.fy to i1
  br i1 %i.fz, label %bb.cw, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.8

bb.cw:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.7
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fx)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.8 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.8:         ; preds = %bb.cw, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.7
  %i.ga = load i8, ptr %i.fw, align 8, !tbaa !78
  %i.gb = trunc i8 %i.ga to i1
  br i1 %i.gb, label %bb.cx, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.8

bb.cx:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.8
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.8 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.8: ; preds = %bb.cx, %_ZN4absl12lts_202605264CordD2Ev.exit.i.8
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 544 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %21, i64 560 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !78
  %i.gf = trunc i8 %i.ge to i1
  br i1 %i.gf, label %bb.cy, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.9
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_121CordTest_Compare_Test8TestBodyEv:bb.a
_ZN4absl12lts_202605264CordD2Ev.exit.i.17:        ; preds = %bb.do, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.16
  %i.ic = load i8, ptr %i.hy, align 8, !tbaa !78
  %i.id = trunc i8 %i.ic to i1
  br i1 %i.id, label %bb.dp, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.17

bb.dp:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.17
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hy)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.17 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.17: ; preds = %bb.dp, %_ZN4absl12lts_202605264CordD2Ev.exit.i.17
  %i.ie = getelementptr inbounds nuw i8, ptr %21, i64 256 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %21, i64 272 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !78
  %i.ih = trunc i8 %i.ig to i1
  br i1 %i.ih, label %bb.dq, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.18

bb.dq:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.17
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.18 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.18:        ; preds = %bb.dq, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.17
  %i.ii = load i8, ptr %i.ie, align 8, !tbaa !78
  %i.ij = trunc i8 %i.ii to i1
  br i1 %i.ij, label %bb.dr, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.18

bb.dr:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.18
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ie)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.18 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.18: ; preds = %bb.dr, %_ZN4absl12lts_202605264CordD2Ev.exit.i.18
  %i.ik = getelementptr inbounds nuw i8, ptr %21, i64 224 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %21, i64 240 ; 2 uses
  %i.im = load i8, ptr %i.il, align 8, !tbaa !78
  %i.in = trunc i8 %i.im to i1
  br i1 %i.in, label %bb.ds, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.19

bb.ds:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.18
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.il)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.19 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.19:        ; preds = %bb.ds, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.18
  %i.io = load i8, ptr %i.ik, align 8, !tbaa !78
  %i.ip = trunc i8 %i.io to i1
  br i1 %i.ip, label %bb.dt, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.19

bb.dt:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.19
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ik)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.19 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.19: ; preds = %bb.dt, %_ZN4absl12lts_202605264CordD2Ev.exit.i.19
  %i.iq = getelementptr inbounds nuw i8, ptr %21, i64 192 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %21, i64 208 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !78
  %i.it = trunc i8 %i.is to i1
  br i1 %i.it, label %bb.du, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.20

bb.du:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.19
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.20 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.20:        ; preds = %bb.du, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.19
  %i.iu = load i8, ptr %i.iq, align 8, !tbaa !78
  %i.iv = trunc i8 %i.iu to i1
  br i1 %i.iv, label %bb.dv, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.20

bb.dv:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.20
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.iq)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.20 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.20: ; preds = %bb.dv, %_ZN4absl12lts_202605264CordD2Ev.exit.i.20
  %i.iw = getelementptr inbounds nuw i8, ptr %21, i64 160 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 176 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !78
  %i.iz = trunc i8 %i.iy to i1
  br i1 %i.iz, label %bb.dw, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.21

bb.dw:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.20
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.21 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.21:        ; preds = %bb.dw, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.20
  %i.ja = load i8, ptr %i.iw, align 8, !tbaa !78
  %i.jb = trunc i8 %i.ja to i1
  br i1 %i.jb, label %bb.dx, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.21

bb.dx:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.21
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.iw)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.21 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.21: ; preds = %bb.dx, %_ZN4absl12lts_202605264CordD2Ev.exit.i.21
  %i.jc = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %21, i64 144 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 8, !tbaa !78
  %i.jf = trunc i8 %i.je to i1
  br i1 %i.jf, label %bb.dy, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.22

bb.dy:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.21
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jd)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.22 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.22:        ; preds = %bb.dy, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.21
  %i.jg = load i8, ptr %i.jc, align 8, !tbaa !78
  %i.jh = trunc i8 %i.jg to i1
  br i1 %i.jh, label %bb.dz, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.22

bb.dz:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.22
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jc)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.22 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.22: ; preds = %bb.dz, %_ZN4absl12lts_202605264CordD2Ev.exit.i.22
  %i.ji = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 8, !tbaa !78
  %i.jl = trunc i8 %i.jk to i1
  br i1 %i.jl, label %bb.ea, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.23

bb.ea:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.22
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.23 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.23:        ; preds = %bb.ea, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.22
  %i.jm = load i8, ptr %i.ji, align 8, !tbaa !78
  %i.jn = trunc i8 %i.jm to i1
  br i1 %i.jn, label %bb.eb, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.23

bb.eb:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.23
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ji)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.23 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.23: ; preds = %bb.eb, %_ZN4absl12lts_202605264CordD2Ev.exit.i.23
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !78
  %i.jr = trunc i8 %i.jq to i1
  br i1 %i.jr, label %bb.ec, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.24

bb.ec:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.23
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.24 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.24:        ; preds = %bb.ec, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.23
  %i.js = load i8, ptr %i.jo, align 8, !tbaa !78
  %i.jt = trunc i8 %i.js to i1
  br i1 %i.jt, label %bb.ed, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.24

bb.ed:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.24
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jo)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.24 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.24: ; preds = %bb.ed, %_ZN4absl12lts_202605264CordD2Ev.exit.i.24
  %i.ju = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !78
  %i.jx = trunc i8 %i.jw to i1
  br i1 %i.jx, label %bb.ee, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.25

bb.ee:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.24
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.25 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.25:        ; preds = %bb.ee, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.24
  %i.jy = load i8, ptr %i.ju, align 8, !tbaa !78
  %i.jz = trunc i8 %i.jy to i1
  br i1 %i.jz, label %bb.ef, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.25

bb.ef:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.25
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ju)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.25 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.25: ; preds = %bb.ef, %_ZN4absl12lts_202605264CordD2Ev.exit.i.25
  %i.ka = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !78
  %i.kc = trunc i8 %i.kb to i1
  br i1 %i.kc, label %bb.eg, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.26

bb.eg:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.25
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.26 unwind label %bb.cf

_ZN4absl12lts_202605264CordD2Ev.exit.i.26:        ; preds = %bb.eg, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.25
  %i.kd = load i8, ptr %21, align 8, !tbaa !78
  %i.ke = trunc i8 %i.kd to i1
  br i1 %i.ke, label %bb.eh, label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.26

bb.eh:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.26
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.26 unwind label %bb.ch

_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.26: ; preds = %bb.eh, %_ZN4absl12lts_202605264CordD2Ev.exit.i.26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.fb

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i, %_ZSt8_DestroyIN12_GLOBAL__N_119CordCompareTestCaseEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kw, %_ZSt8_DestroyIN12_GLOBAL__N_119CordCompareTestCaseEEvPT_.exit.i.i.i ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !78
  %i.kp = trunc i8 %i.ko to i1
  br i1 %i.kp, label %bb.ei, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i.i

bb.ei:                                            ; preds = %.lr.ph.i.i.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kn)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i.i unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i.i:   ; preds = %bb.ei, %.lr.ph.i.i.i
  %i.ks = load i8, ptr %.05.i.i.i, align 1, !tbaa !78
  %i.kt = trunc i8 %i.ks to i1
  br i1 %i.kt, label %bb.ek, label %_ZSt8_DestroyIN12_GLOBAL__N_119CordCompareTestCaseEEvPT_.exit.i.i.i

bb.ek:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i)
          to label %_ZSt8_DestroyIN12_GLOBAL__N_119CordCompareTestCaseEEvPT_.exit.i.i.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #42
  unreachable

_ZSt8_DestroyIN12_GLOBAL__N_119CordCompareTestCaseEEvPT_.exit.i.i.i: ; preds = %bb.ek, %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %.05.i.i.i, %.018.i.i.i.i.i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_119CordCompareTestCaseES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPN12_GLOBAL__N_119CordCompareTestCaseES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_119CordCompareTestCaseEEvPT_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 864) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  %i.kx = load i8, ptr %19, align 8, !tbaa !78
  %i.ky = trunc i8 %i.kx to i1
  br i1 %i.ky, label %bb.em, label %_ZN4absl12lts_202605264CordD2Ev.exit122

bb.em:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_119CordCompareTestCaseES1_EvT_S3_RSaIT0_E.exit.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit122 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  %i.la = extractvalue { ptr, i32 } %i.kz, 0
  call void @__clang_call_terminate(ptr %i.la) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit122:          ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_119CordCompareTestCaseES1_EvT_S3_RSaIT0_E.exit.i, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  %i.lb = load i8, ptr %18, align 8, !tbaa !78
  %i.lc = trunc i8 %i.lb to i1
  br i1 %i.lc, label %bb.eo, label %_ZN4absl12lts_202605264CordD2Ev.exit123

bb.eo:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit122
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit123 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit123:          ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit122, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  %i.lf = load i8, ptr %17, align 8, !tbaa !78
  %i.lg = trunc i8 %i.lf to i1
  br i1 %i.lg, label %bb.eq, label %_ZN4absl12lts_202605264CordD2Ev.exit124

bb.eq:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit123
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit124 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit124:          ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit123, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.lj = load i8, ptr %15, align 8, !tbaa !78
  %i.lk = trunc i8 %i.lj to i1
  br i1 %i.lk, label %bb.es, label %_ZN4absl12lts_202605264CordD2Ev.exit125

bb.es:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit124
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit125 unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit125:          ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit124, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  ret void

bb.eu:                                            ; preds = %bb.a
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.it

bb.ev:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.ew:                                            ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

bb.ex:                                            ; preds = %_ZN4absl12lts_202605264Cord6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ey:                                            ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit59, %_ZN4absl12lts_202605264Cord6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit60
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ez:                                            ; preds = %bb.e
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.fa:                                            ; preds = %_ZN4absl12lts_202605264Cord6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64, %_ZN4absl12lts_202605264Cord6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit63, %_ZN4absl12lts_202605264Cord6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit62, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit61
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

.body.thread237:                                  ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA66_cEERKT_RKT0_b.exit, %bb.bk, %bb.bd, %bb.ba, %bb.az, %bb.ay, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA10_cEERKT_RKT0_b.exit, %bb.as, %bb.al, %bb.ai, %bb.ah, %bb.ag, %bb.af, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA21_cA22_cEERKT_RKT0_b.exit, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA22_cA21_cEERKT_RKT0_b.exit, %bb.w, %bb.v, %bb.u, %bb.t, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA7_cA8_cEERKT_RKT0_b.exit, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA8_cA7_cEERKT_RKT0_b.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.ph = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.q, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ], [ %i.w, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA8_cA7_cEERKT_RKT0_b.exit ], [ %i.aa, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA7_cA8_cEERKT_RKT0_b.exit ], [ %i.ab, %bb.t ], [ %i.ac, %bb.u ], [ %i.ad, %bb.v ], [ %i.ae, %bb.w ], [ %i.ai, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA22_cA21_cEERKT_RKT0_b.exit ], [ %i.am, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA21_cA22_cEERKT_RKT0_b.exit ], [ %i.an, %bb.af ], [ %i.ao, %bb.ag ], [ %i.ap, %bb.ah ], [ %i.aq, %bb.ai ], [ %i.ar, %bb.al ], [ %i.bd, %bb.as ], [ %i.bo, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA10_cEERKT_RKT0_b.exit ], [ %i.bp, %bb.ay ], [ %i.bq, %bb.az ], [ %i.br, %bb.ba ], [ %i.bs, %bb.bd ], [ %i.ce, %bb.bk ], [ %i.cp, %_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordEA66_cEERKT_RKT0_b.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader

.body:                                            ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.bp, %bb.bi, %bb.ax, %bb.aq, %bb.ae, %bb.aa, %bb.s, %bb.o, %.body.thread237
  %eh.lpad-body235 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread237 ], [ %.pn.i, %bb.o ], [ %.pn.i112, %bb.bp ], [ %.pn.i102, %bb.bi ], [ %.pn.i92, %bb.ax ], [ %.pn.i83, %bb.aq ], [ %.pn.i77, %bb.ae ], [ %.pn.i71, %bb.aa ], [ %.pn.i65, %bb.s ]
  %.0.lpad-body234 = phi ptr [ %.0.ph, %.body.thread237 ], [ %i.s, %bb.o ], [ %i.ce, %bb.bp ], [ %i.bs, %bb.bi ], [ %i.bd, %bb.ax ], [ %i.ar, %bb.aq ], [ %i.ai, %bb.ae ], [ %i.ae, %bb.aa ], [ %i.w, %bb.s ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.lu = phi ptr [ %i.lv, %.preheader ], [ %.0.lpad-body234, %.preheader.preheader ]
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -32 ; 3 uses
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.lv) #38
  %i.lw = icmp eq ptr %i.lv, %21
  br i1 %i.lw, label %.loopexit, label %.preheader

.body119:                                         ; preds = %bb.cc, %.body.i.thread
  %eh.lpad-body.i231 = phi { ptr, i32 } [ %i.dr, %bb.cc ], [ %i.du, %.body.i.thread ]
  %i.lx = getelementptr inbounds nuw i8, ptr %21, i64 832
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.lx) #38
  %i.ly = getelementptr inbounds nuw i8, ptr %21, i64 800
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ly) #38
  %i.lz = getelementptr inbounds nuw i8, ptr %21, i64 768
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.lz) #38
  %i.ma = getelementptr inbounds nuw i8, ptr %21, i64 736
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ma) #38
  %i.mb = getelementptr inbounds nuw i8, ptr %21, i64 704
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mb) #38
  %i.mc = getelementptr inbounds nuw i8, ptr %21, i64 672
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mc) #38
  %i.md = getelementptr inbounds nuw i8, ptr %21, i64 640
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.md) #38
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 608
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.me) #38
  %i.mf = getelementptr inbounds nuw i8, ptr %21, i64 576
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mf) #38
  %i.mg = getelementptr inbounds nuw i8, ptr %21, i64 544
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mg) #38
  %i.mh = getelementptr inbounds nuw i8, ptr %21, i64 512
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mh) #38
  %i.mi = getelementptr inbounds nuw i8, ptr %21, i64 480
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mi) #38
  %i.mj = getelementptr inbounds nuw i8, ptr %21, i64 448
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mj) #38
  %i.mk = getelementptr inbounds nuw i8, ptr %21, i64 416
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mk) #38
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 384
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ml) #38
  %i.mm = getelementptr inbounds nuw i8, ptr %21, i64 352
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mm) #38
  %i.mn = getelementptr inbounds nuw i8, ptr %21, i64 320
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mn) #38
  %i.mo = getelementptr inbounds nuw i8, ptr %21, i64 288
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mo) #38
  %i.mp = getelementptr inbounds nuw i8, ptr %21, i64 256
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mp) #38
  %i.mq = getelementptr inbounds nuw i8, ptr %21, i64 224
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mq) #38
  %i.mr = getelementptr inbounds nuw i8, ptr %21, i64 192
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mr) #38
  %i.ms = getelementptr inbounds nuw i8, ptr %21, i64 160
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ms) #38
  %i.mt = getelementptr inbounds nuw i8, ptr %21, i64 128
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mt) #38
  %i.mu = getelementptr inbounds nuw i8, ptr %21, i64 96
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mu) #38
  %i.mv = getelementptr inbounds nuw i8, ptr %21, i64 64
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mv) #38
  %i.mw = getelementptr inbounds nuw i8, ptr %21, i64 32
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.mw) #38
  call fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #38
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.body, %.body119
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i231, %.body119 ], [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body235, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %bb.im

bb.fb:                                            ; preds = %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i
  %.sroa.0131.0174 = phi ptr [ %i.cr, %_ZN12_GLOBAL__N_119CordCompareTestCaseD2Ev.exit.26 ], [ %i.wl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  invoke void @_ZNK4absl12lts_202605264CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0131.0174)
          to label %.noexc128 unwind label %bb.il

.noexc128:                                        ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0131.0174, i64 16 ; 6 uses
  invoke void @_ZNK4absl12lts_202605264CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.mx)
          to label %bb.fc unwind label %bb.fm

bb.fc:                                            ; preds = %.noexc128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.my = load i64, ptr %i.kf, align 8, !tbaa !76 ; 2 uses
  %i.mz = load i64, ptr %i.kg, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.mz, i64 %i.my) ; 2 uses
  %i.na = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.na, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.fc
  %i.nb = load ptr, ptr %2, align 8, !tbaa !74
  %i.nc = load ptr, ptr %1, align 8, !tbaa !74
  %i.nd = call i32 @memcmp(ptr noundef %i.nc, ptr noundef %i.nb, i64 noundef %.sroa.speculated.i.i) #38 ; 2 uses
  %.not.i.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.fc
  %i.ne = sub i64 %i.my, %i.mz
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.ne, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.0.i.i = phi i32 [ %i.nd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.nf = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.0.i.i, i32 0) ; 4 uses
  store i32 %i.nf, ptr %i.a, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.ng = load i8, ptr %.sroa.0131.0174, align 1, !tbaa !78 ; 2 uses
  %i.nh = trunc i8 %i.ng to i1
  br i1 %i.nh, label %bb.fj, label %bb.fd

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i
  %i.ni = load i8, ptr %i.mx, align 1, !tbaa !78  ; 2 uses
  %i.nj = trunc i8 %i.ni to i1
  br i1 %i.nj, label %bb.fj, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0131.0174, i64 1
  %.0.copyload5.i.i.i.i = load i64, ptr %i.nk, align 1 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0131.0174, i64 17
  %.0.copyload.i.i.i.i = load i64, ptr %i.nl, align 1 ; 2 uses
  %i.nm = icmp eq i64 %.0.copyload5.i.i.i.i, %.0.copyload.i.i.i.i
  br i1 %i.nm, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0131.0174, i64 8
  %.0.copyload7.i.i.i.i = load i64, ptr %i.nn, align 1 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0131.0174, i64 24
  %.0.copyload1.i.i.i.i = load i64, ptr %i.no, align 1 ; 2 uses
  %i.np = icmp eq i64 %.0.copyload7.i.i.i.i, %.0.copyload1.i.i.i.i
  br i1 %i.np, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.nq = sext i8 %i.ng to i64
  %i.nr = lshr exact i64 %i.nq, 1                 ; 2 uses
  %i.ns = sext i8 %i.ni to i64
  %i.nt = lshr exact i64 %i.ns, 1                 ; 2 uses
  %i.nu = icmp eq i64 %i.nr, %i.nt
  br i1 %i.nu, label %_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.nv = icmp samesign ult i64 %i.nr, %i.nt
  %i.nw = select i1 %i.nv, i32 -1, i32 1
  br label %_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i

bb.fi:                                            ; preds = %bb.ff, %bb.fe
  %.019.i.i.i.i = phi i64 [ %.0.copyload7.i.i.i.i, %bb.ff ], [ %.0.copyload5.i.i.i.i, %bb.fe ]
  %.0.i.i.i.i = phi i64 [ %.0.copyload1.i.i.i.i, %bb.ff ], [ %.0.copyload.i.i.i.i, %bb.fe ]
  %i.nx = call noundef i64 @llvm.bswap.i64(i64 %.019.i.i.i.i)
  %i.ny = call noundef i64 @llvm.bswap.i64(i64 %.0.i.i.i.i)
  %i.nz = icmp ult i64 %i.nx, %i.ny
  %i.oa = select i1 %i.nz, i32 -1, i32 1
  br label %_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i

bb.fj:                                            ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i
  %i.ob = invoke noundef i32 @_ZNK4absl12lts_202605264Cord11CompareImplERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0131.0174, ptr noundef nonnull align 8 dereferenceable(16) %i.mx)
          to label %._ZNK4absl12lts_202605264Cord7CompareERKS1_.exit_crit_edge.i unwind label %bb.fn

._ZNK4absl12lts_202605264Cord7CompareERKS1_.exit_crit_edge.i: ; preds = %bb.fj
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !86, !noalias !2502
  br label %_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i

_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i: ; preds = %._ZNK4absl12lts_202605264Cord7CompareERKS1_.exit_crit_edge.i, %bb.fi, %bb.fh, %bb.fg
  %i.oc = phi i32 [ %i.nf, %bb.fg ], [ %i.nf, %bb.fi ], [ %i.nf, %bb.fh ], [ %.pre.i, %._ZNK4absl12lts_202605264Cord7CompareERKS1_.exit_crit_edge.i ]
  %.0.i50.i = phi i32 [ 0, %bb.fg ], [ %i.oa, %bb.fi ], [ %i.nw, %bb.fh ], [ %i.ob, %._ZNK4absl12lts_202605264Cord7CompareERKS1_.exit_crit_edge.i ] ; 2 uses
  store i32 %.0.i50.i, ptr %i.b, align 4, !tbaa !86
  %i.od = icmp eq i32 %i.oc, %.0.i50.i
  br i1 %i.od, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.fn

bb.fl:                                            ; preds = %_ZNK4absl12lts_202605264Cord7CompareERKS1_.exit.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.686, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.fn

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.oe = load i8, ptr %3, align 8, !tbaa !110, !range !111, !noundef !112
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.fz, label %bb.fo

bb.fm:                                            ; preds = %.noexc128
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i

bb.fn:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %bb.ge

bb.fo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.fp unwind label %bb.ft

bb.fp:                                            ; preds = %bb.fo
  %i.oi = load ptr, ptr %4, align 8, !tbaa !115
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef nonnull @.str.687, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i unwind label %bb.fu ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit.i:      ; preds = %bb.fp
  %i.ol = load ptr, ptr %4, align 8, !tbaa !115
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_121CordTest_Compare_Test8TestBodyEv:bb.a
bb.hw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.hx unwind label %bb.ib

bb.hx:                                            ; preds = %bb.hw
  %i.uk = load ptr, ptr %13, align 8, !tbaa !115
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ul, ptr noundef nonnull @.str.687, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit126.i unwind label %bb.ic ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit126.i:   ; preds = %bb.hx
  %i.un = load ptr, ptr %13, align 8, !tbaa !115
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load ptr, ptr %2, align 8, !tbaa !74
  %i.uq = load i64, ptr %i.kg, align 8, !tbaa !76
  %i.ur = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.uo, ptr noundef %i.up, i64 noundef %i.uq)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit128.i unwind label %bb.ic ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit128.i: ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit126.i
  %i.us = load ptr, ptr %13, align 8, !tbaa !115
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ut, ptr noundef nonnull @.str.688, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit130.i unwind label %bb.ic ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit130.i:   ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit128.i
  %i.uv = load ptr, ptr %13, align 8, !tbaa !115
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.ux = load ptr, ptr %1, align 8, !tbaa !74
  %i.uy = load i64, ptr %i.kf, align 8, !tbaa !76
  %i.uz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.uw, ptr noundef %i.ux, i64 noundef %i.uy)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit132.i unwind label %bb.ic ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit132.i: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit130.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.va = load ptr, ptr %i.kk, align 8, !tbaa !113 ; 2 uses
  %.not.i.i133.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i133.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit134.i, label %bb.hy

bb.hy:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit132.i
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit134.i

_ZNK7testing15AssertionResult15failure_messageEv.exit134.i: ; preds = %bb.hy, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit132.i
  %i.vc = phi ptr [ %i.vb, %bb.hy ], [ @.str.57, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit132.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1502, ptr noundef %i.vc)
          to label %bb.hz unwind label %bb.id

bb.hz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ia unwind label %bb.ie

bb.ia:                                            ; preds = %bb.hz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.vd = load ptr, ptr %13, align 8, !tbaa !115  ; 3 uses
  %.not.i.i135.i = icmp eq ptr %i.vd, null
  br i1 %.not.i.i135.i, label %_ZN7testing7MessageD2Ev.exit137.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136.i: ; preds = %bb.ia
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !73
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8
  call void %i.vg(ptr noundef nonnull align 8 dereferenceable(128) %i.vd) #38, !inline_history !2489
  br label %_ZN7testing7MessageD2Ev.exit137.i

_ZN7testing7MessageD2Ev.exit137.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136.i, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ih

bb.ib:                                            ; preds = %bb.hw
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit140.i

bb.ic:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit130.i, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit128.i, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit126.i, %bb.hx
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.id:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134.i
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ie:                                            ; preds = %bb.hz
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #38
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.pn43.i = phi { ptr, i32 } [ %i.vk, %bb.ie ], [ %i.vj, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ic
  %.pn43.pn.i = phi { ptr, i32 } [ %.pn43.i, %bb.if ], [ %i.vi, %bb.ic ] ; 2 uses
  %i.vl = load ptr, ptr %13, align 8, !tbaa !115  ; 3 uses
  %.not.i.i138.i = icmp eq ptr %i.vl, null
  br i1 %.not.i.i138.i, label %_ZN7testing7MessageD2Ev.exit140.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139.i: ; preds = %bb.ig
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !73
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(128) %i.vl) #38, !inline_history !2489
  br label %_ZN7testing7MessageD2Ev.exit140.i

_ZN7testing7MessageD2Ev.exit140.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139.i, %bb.ig, %bb.ib
  %.pn43.pn.pn.i = phi { ptr, i32 } [ %i.vh, %bb.ib ], [ %.pn43.pn.i, %bb.ig ], [ %.pn43.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #38
  br label %bb.ij

bb.ih:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137.i, %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit124.i
  %i.vp = load ptr, ptr %i.kk, align 8, !tbaa !113 ; 4 uses
  %.not.i.i141.i = icmp eq ptr %i.vp, null
  br i1 %.not.i.i141.i, label %_ZN7testing15AssertionResultD2Ev.exit145.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !74 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142.i: ; preds = %bb.ii
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !78
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143.i: ; preds = %bb.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit145.i

_ZN7testing15AssertionResultD2Ev.exit145.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143.i, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.vv = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.kl
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit145.i
  %i.vx = load i64, ptr %i.kl, align 8, !tbaa !78
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit145.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.vz = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.km
  br i1 %i.wa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.wb = load i64, ptr %i.km, align 8, !tbaa !78
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i

bb.ij:                                            ; preds = %_ZN7testing7MessageD2Ev.exit140.i, %bb.hv
  %.pn43.pn.pn.pn.i = phi { ptr, i32 } [ %.pn43.pn.pn.i, %_ZN7testing7MessageD2Ev.exit140.i ], [ %i.uj, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.hu, %bb.hc, %bb.ge
  %.pn43.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i, %bb.ij ], [ %.pn38.pn.pn.pn.i, %bb.hu ], [ %.pn33.pn.pn.pn.i, %bb.hc ], [ %.pn.pn.pn.pn.i, %bb.ge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.wd = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.kl
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i: ; preds = %bb.ik
  %i.wf = load i64, ptr %i.kl, align 8, !tbaa !78
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i: ; preds = %bb.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i, %bb.fm
  %.pn43.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.og, %bb.fm ], [ %.pn43.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i ], [ %.pn43.pn.pn.pn.pn.i, %bb.ik ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.wh = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.km
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i
  %i.wj = load i64, ptr %i.km, align 8, !tbaa !78
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %.body129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0131.0174, i64 32
  %.not = icmp eq ptr %.sroa.0131.0174, %.018.i.i.i.i.i.i
  br i1 %.not, label %.lr.ph.i.i.i, label %bb.fb

bb.il:                                            ; preds = %bb.fb
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.body129:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i, %bb.il
  %eh.lpad-body130 = phi { ptr, i32 } [ %i.wm, %bb.il ], [ %.pn43.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i ]
  call fastcc void @_ZNSt6vectorIN12_GLOBAL__N_119CordCompareTestCaseESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #38
  br label %bb.im

bb.im:                                            ; preds = %.body129, %.loopexit
  %.pn45 = phi { ptr, i32 } [ %eh.lpad-body130, %.body129 ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.in

bb.in:                                            ; preds = %bb.fa, %bb.im
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.lt, %bb.fa ], [ %.pn45, %bb.im ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #38
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.ez
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %bb.in ], [ %i.ls, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.ey
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn, %bb.io ], [ %i.lr, %bb.ey ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #38
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.ex
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %bb.ip ], [ %i.lq, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ew
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn, %bb.iq ], [ %i.lp, %bb.ew ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #38
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.ev
  %.pn45.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn, %bb.ir ], [ %i.lo, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.eu
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn.pn, %bb.is ], [ %i.ln, %bb.eu ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N12_GLOBAL__N_121CordTest_Compare_TestD1Ev(ptr noundef %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %i.a) #38
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N12_GLOBAL__N_121CordTest_Compare_TestD0Ev(ptr noundef %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %i.a) #38
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA7_cS2_EERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38
  tail call void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.a, ptr nonnull %1, i32 noundef 9)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 %i.c, ptr nonnull %2, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.c

_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  invoke void @_ZN4absl12lts_202605264Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #38
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  tail call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IA21_cS2_EERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 1 dereferenceable(21) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38
  tail call void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.a, ptr nonnull %1, i32 noundef 9)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 %i.c, ptr nonnull %2, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.c

_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  invoke void @_ZN4absl12lts_202605264Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #38
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  tail call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119CordCompareTestCaseC2IN4absl12lts_202605264CordES4_EERKT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !78
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not6.i.i = icmp ne ptr %i.d, null
  %.not.not.i.i = select i1 %i.b, i1 %.not6.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 2 monotonic, align 4 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !78
  store i64 1, ptr %0, align 8, !tbaa !78
  %i.h = load i64, ptr %1, align 8, !tbaa !78
  %.not.i.i.i = icmp ult i64 %i.h, 2
  br i1 %.not.i.i.i, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 8)
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit

_ZN4absl12lts_202605264CordC2ERKS1_.exit:         ; preds = %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load i8, ptr %2, align 8, !tbaa !78
  %i.k = trunc i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not6.i.i7 = icmp ne ptr %i.m, null
  %.not.not.i.i8 = select i1 %i.k, i1 %.not6.i.i7, i1 false
  br i1 %.not.not.i.i8, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw add ptr %i.n, i32 2 monotonic, align 4 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.p, align 8, !tbaa !78
  store i64 1, ptr %i.i, align 8, !tbaa !78
  %i.q = load i64, ptr %2, align 8, !tbaa !78
  %.not.i.i.i9 = icmp ult i64 %i.q, 2
  br i1 %.not.i.i.i9, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit10, label %bb.f, !prof !127

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit10 unwind label %bb.i

bb.g:                                             ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit10
end_hunk_2
