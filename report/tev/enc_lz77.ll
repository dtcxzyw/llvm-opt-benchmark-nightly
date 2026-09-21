Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_lz77?download=true
inline.NumInlined: 1422
inline.NumDeleted: 784
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3jxl9ApplyLZ77ERKNS_15HistogramParamsEmRKNSt3__16vectorINS4_INS_5TokenENS3_9allocatorIS5_EEEENS6_IS8_EEEERKNS_10LZ77ParamsE:bb.a

.lr.ph.i.i.i.i.i.i.i.i.i198.i:                    ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i196.i, %.lr.ph.i.i.i.i.i.i.i.i.i198.i
  %i.amk = phi ptr [ %i.amm, %.lr.ph.i.i.i.i.i.i.i.i.i198.i ], [ %i.amc, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i196.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i199.i = phi ptr [ %i.aml, %.lr.ph.i.i.i.i.i.i.i.i.i198.i ], [ %i.ami, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i196.i ]
  %i.aml = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i199.i, i64 -8 ; 3 uses
  %i.amm = getelementptr inbounds i8, ptr %i.amk, i64 -8 ; 3 uses
  %i.amn = load i64, ptr %i.aml, align 4, !noalias !240
  store i64 %i.amn, ptr %i.amm, align 4, !noalias !240
  %.not.i.i.i.i.i.i.i.i.i200.i = icmp eq ptr %i.aml, %i.amj
  br i1 %.not.i.i.i.i.i.i.i.i.i200.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i201.i, label %.lr.ph.i.i.i.i.i.i.i.i.i198.i, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i201.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i198.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i196.i
  %storemerge.i.i202.i = phi ptr [ %i.amc, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i196.i ], [ %i.amm, %.lr.ph.i.i.i.i.i.i.i.i.i198.i ]
  store ptr %storemerge.i.i202.i, ptr %i.qj, align 8, !tbaa !52, !noalias !230
  store ptr %i.amh, ptr %i.vf, align 8, !tbaa !52, !noalias !230
  %i.amo = load ptr, ptr %i.rf, align 8, !tbaa !52, !noalias !230
  store ptr %i.amd, ptr %i.rf, align 8, !tbaa !52, !noalias !230
  %.not.i5.i.i203.i = icmp eq ptr %i.amj, null
  br i1 %.not.i5.i.i203.i, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i201.i
  %i.amp = ptrtoint ptr %i.amo to i64
  %i.amq = ptrtoint ptr %i.amj to i64
  %i.amr = sub i64 %i.amp, %i.amq
  call void @_ZdlPvm(ptr noundef nonnull %i.amj, i64 noundef %i.amr) #20, !noalias !230
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i

_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i: ; preds = %bb.ed, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i201.i, %bb.dz
  %.0.i204.i = phi ptr [ %i.aln, %bb.dz ], [ %i.amh, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i201.i ], [ %i.amh, %bb.ed ] ; 2 uses
  store ptr %.0.i204.i, ptr %i.vf, align 8, !tbaa !42, !noalias !230
  %i.ams = zext i1 %i.ajm to i32
  %i.amt = getelementptr inbounds i8, ptr %.0.i204.i, i64 -8 ; 2 uses
  %i.amu = load i32, ptr %i.amt, align 4, !noalias !230
  %i.amv = and i32 %i.amu, -2
  %i.amw = or disjoint i32 %i.amv, %i.ams
  store i32 %i.amw, ptr %i.amt, align 4, !noalias !230
  %i.amx = load i32, ptr %i.ajj, align 4, !tbaa !235, !noalias !230
  %i.amy = zext i32 %i.amx to i64
  %i.amz = sub i64 %.0131314.i, %i.amy            ; 2 uses
  %.not.i28 = icmp eq i64 %i.amz, 0
  br i1 %.not.i28, label %._crit_edge316.i, label %bb.dr, !llvm.loop !220

._crit_edge316.i:                                 ; preds = %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i, %.preheader246.i, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i
  %.sroa.13.2466.i = phi ptr [ %.sroa.13.1.i, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i ], [ %.sroa.13.8.i, %.preheader246.i ], [ %.sroa.13.8.i, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i ] ; 2 uses
  %.sroa.0.2465.i = phi ptr [ %.sroa.0.1.i, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i ], [ %.sroa.0.4.i, %.preheader246.i ], [ %.sroa.0.4.i, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i ] ; 4 uses
  %i.ana = load ptr, ptr %i.qj, align 8, !tbaa !43, !noalias !230 ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !42, !noalias !230 ; 2 uses
  %i.and = icmp ne ptr %i.ana, %i.anc
  %i.ane = getelementptr inbounds i8, ptr %i.anc, i64 -8 ; 2 uses
  %i.anf = icmp ult ptr %i.ana, %i.ane
  %or.cond240.i = select i1 %i.and, i1 %i.anf, i1 false
  br i1 %or.cond240.i, label %.lr.ph.i.i.i206.i, label %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i

.lr.ph.i.i.i206.i:                                ; preds = %._crit_edge316.i, %.lr.ph.i.i.i206.i
  %i.ang = phi ptr [ %i.ank, %.lr.ph.i.i.i206.i ], [ %i.ane, %._crit_edge316.i ] ; 3 uses
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.anj, %.lr.ph.i.i.i206.i ], [ %i.ana, %._crit_edge316.i ] ; 3 uses
  %i.anh = load i64, ptr %.sroa.03.06.i.i.i.i, align 4, !noalias !230
  %i.ani = load i64, ptr %i.ang, align 4, !noalias !230
  store i64 %i.ani, ptr %.sroa.03.06.i.i.i.i, align 4, !noalias !230
  store i64 %i.anh, ptr %i.ang, align 4, !noalias !230
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 8 ; 2 uses
  %i.ank = getelementptr inbounds i8, ptr %i.ang, i64 -8 ; 2 uses
  %i.anl = icmp ult ptr %i.anj, %i.ank
  br i1 %i.anl, label %.lr.ph.i.i.i206.i, label %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i, !llvm.loop !221

_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i: ; preds = %.lr.ph.i.i.i206.i, %._crit_edge316.i
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.ub) #20, !noalias !230
  call fastcc void @_ZN3jxl12_GLOBAL__N_19HashChainD2Ev(ptr noundef nonnull align 8 dead_on_return(284) dereferenceable(284) %8) #21, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !230
  %i.anm = add nuw i64 %.0317.i, 1                ; 2 uses
  %i.ann = load ptr, ptr %i.nf, align 8, !tbaa !29, !noalias !230
  %i.ano = load ptr, ptr %3, align 8, !tbaa !30, !noalias !230 ; 2 uses
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = sdiv exact i64 %i.anr, 24
  %i.ant = icmp ult i64 %i.anm, %i.ans
  br i1 %i.ant, label %bb.bg, label %._crit_edge319.i, !llvm.loop !222

bb.ee:                                            ; preds = %_ZN3jxl12_GLOBAL__N_119SymbolCostEstimatorD2Ev.exit.i34, %bb.ay
  %i.anu = phi ptr [ %.pre368.i, %_ZN3jxl12_GLOBAL__N_119SymbolCostEstimatorD2Ev.exit.i34 ], [ %i.mx, %bb.ay ] ; 5 uses
  %.not.i.i208.i = icmp eq ptr %i.anu, null
  br i1 %.not.i.i208.i, label %_ZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.anv = load ptr, ptr %i.my, align 8, !tbaa !29, !noalias !230 ; 2 uses
  %.not6.i.i.i.i.i35 = icmp eq ptr %i.anu, %i.anv
  br i1 %.not6.i.i.i.i.i35, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i.i39, label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %bb.ef, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i.i38
  %.07.i.i.i.i.i37 = phi ptr [ %i.anw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i.i38 ], [ %i.anv, %bb.ef ] ; 3 uses
  %i.anw = getelementptr inbounds i8, ptr %.07.i.i.i.i.i37, i64 -24 ; 3 uses
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !43, !noalias !230 ; 4 uses
  %.not.i.i.i.i.i.i.i.i209.i = icmp eq ptr %i.anx, null
  br i1 %.not.i.i.i.i.i.i.i.i209.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i.i38, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i.i.i.i36
  %i.any = getelementptr inbounds i8, ptr %.07.i.i.i.i.i37, i64 -16
  store ptr %i.anx, ptr %i.any, align 8, !tbaa !42, !noalias !230
  %i.anz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i37, i64 -8
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !52, !noalias !230
  %i.aob = ptrtoint ptr %i.aoa to i64
  %i.aoc = ptrtoint ptr %i.anx to i64
  %i.aod = sub i64 %i.aob, %i.aoc
  call void @_ZdlPvm(ptr noundef nonnull %i.anx, i64 noundef %i.aod) #20, !noalias !230
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i.i38

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i.i38: ; preds = %bb.eg, %.lr.ph.i.i.i.i.i36
  %.not.i.i.i.i210.i = icmp eq ptr %i.anu, %i.anw
  br i1 %.not.i.i.i.i210.i, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i.i39, label %.lr.ph.i.i.i.i.i36, !llvm.loop !1

_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i.i39: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i.i38, %bb.ef
  %i.aoe = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !31, !noalias !230
  %i.aog = ptrtoint ptr %i.aof to i64
  %i.aoh = ptrtoint ptr %i.anu to i64
  %i.aoi = sub i64 %i.aog, %i.aoh
  call void @_ZdlPvm(ptr noundef %i.anu, i64 noundef %i.aoi) #20, !noalias !230
  br label %_ZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE.exit

_ZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE.exit: ; preds = %bb.ee, %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !230
  br label %bb.ei

bb.eh:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE.exit, %bb.aw, %_ZN3jxl12_GLOBAL__N_113ApplyLZ77_RLEERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_114ApplyLZ77_LZ77ERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(53) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::__1::vector", align 8  ; 8 uses
  %6 = alloca %"class.jxl::(anonymous namespace)::SymbolCostEstimator", align 8 ; 12 uses
  %7 = alloca %"class.std::__1::vector.8", align 8 ; 11 uses
  %8 = alloca %"struct.jxl::(anonymous namespace)::HashChain", align 8 ; 22 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sdiv exact i64 %i.j, 24
  %i.n = icmp ugt i64 %i.m, 768614336404564650
  br i1 %i.n, label %bb.c, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  unreachable

_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit.i: ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18 ; 5 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  store ptr %i.p, ptr %i.l, align 8, !tbaa !31
  %i.q = add i64 %i.j, -24                        ; 2 uses
  %i.r = urem i64 %i.q, 24
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = add nuw i64 %i.s, 24                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, i8 0, i64 %i.t, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.o, i64 %i.t
  store ptr %scevgep.i.i, ptr %i.k, align 8, !tbaa !29
  br label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEC2Em.exit

_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEC2Em.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit.i
  %i.u = phi ptr [ null, %bb.a ], [ %i.o, %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32, !range !33, !noundef !34
  %i.x = trunc nuw i8 %i.w to i1
  call fastcc void @_ZN3jxl12_GLOBAL__N_119SymbolCostEstimatorC2EmbRKNSt3__16vectorINS3_INS_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS_10LZ77ParamsE(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %2, i1 noundef zeroext %i.x, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.z = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %.not297 = icmp eq ptr %i.y, %i.z
  br i1 %.not297, label %._crit_edge295.thread, label %.lr.ph294

.lr.ph294:                                        ; preds = %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEC2Em.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 20 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.d

._crit_edge295:                                   ; preds = %._crit_edge289
  %i.at = fpext float %.198.lcssa to double
  %i.au = uitofp i64 %i.br to double
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double 2.000000e-01, double 1.600000e+01)
  %i.aw = fcmp olt double %i.av, %i.at
  br i1 %i.aw, label %bb.cm, label %._crit_edge295.thread

bb.d:                                             ; preds = %.lr.ph294, %._crit_edge289
  %i.ax = phi ptr [ %i.z, %.lr.ph294 ], [ %i.ez, %._crit_edge289 ]
  %.095293 = phi i64 [ 0, %.lr.ph294 ], [ %i.ex, %._crit_edge289 ] ; 5 uses
  %.096292 = phi i64 [ 0, %.lr.ph294 ], [ %i.br, %._crit_edge289 ]
  %.097291 = phi float [ 0.000000e+00, %.lr.ph294 ], [ %.198.lcssa, %._crit_edge289 ] ; 2 uses
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = icmp ugt i64 %i.bd, %.095293
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.095293
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bh = phi i64 [ %i.bg, %bb.e ], [ 0, %bb.d ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.095293 ; 9 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.095293 ; 23 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 7 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 3 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = ashr exact i64 %i.bp, 3                 ; 4 uses
  %i.br = add i64 %i.bq, %.096292                 ; 2 uses
  %i.bs = add nsw i64 %i.bq, 1                    ; 4 uses
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.bu = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2                 ; 3 uses
  %i.bz = icmp ult i64 %i.by, %i.bs
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = sub nuw nsw i64 %i.bs, %i.by
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ca) #19
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %.pre344 = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %.pre346 = ptrtoint ptr %.pre to i64
  %.pre347.a = ptrtoint ptr %.pre344 to i64
  %.pre349 = sub i64 %.pre346, %.pre347.a         ; 2 uses
  %.pre351 = ashr exact i64 %.pre349, 3
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = icmp ugt i64 %i.by, %i.bs
  br i1 %i.cb, label %bb.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cc, ptr %i.ac, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.pre-phi352.a = phi i64 [ %.pre351, %bb.g ], [ %i.bq, %bb.h ], [ %i.bq, %bb.i ] ; 2 uses
  %.pre-phi350 = phi i64 [ %.pre349, %bb.g ], [ %i.bp, %bb.h ], [ %i.bp, %bb.i ] ; 3 uses
  %i.cd = phi ptr [ %.pre344, %bb.g ], [ %i.bm, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  %i.ce = phi ptr [ %.pre, %bb.g ], [ %i.bl, %bb.h ], [ %i.bl, %bb.i ]
  %.not298 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not298, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit
  %.val = load i64, ptr %6, align 8, !tbaa !51
  %.val107 = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.cf = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi352.a, i64 1)
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 15 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = icmp ugt i64 %.pre-phi350, %i.cl
  br i1 %i.cm, label %bb.j, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit

bb.j:                                             ; preds = %._crit_edge
  %i.cn = icmp ugt i64 %.pre-phi352.a, 2305843009213693951
  br i1 %i.cn, label %bb.k, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #17
  unreachable

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i: ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !42
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.ck
  %i.cs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi350) #18 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.pre-phi350
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !42 ; 2 uses
  %i.cw = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cx = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ct, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cv, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i ]
  %i.cy = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -8 ; 3 uses
  %i.da = load i64, ptr %i.cy, align 4, !noalias !287
  store i64 %i.da, ptr %i.cz, align 4, !noalias !287
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.cw
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i
  %storemerge.i109 = phi ptr [ %i.ct, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i109, ptr %i.bj, align 8, !tbaa !52
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !52
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !52
  store ptr %i.cu, ptr %i.cg, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cw to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.de) #20
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit

_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit: ; preds = %._crit_edge, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i, %bb.l
  %i.df = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.dg = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 2 uses
  %i.dl = load i32, ptr %i.ae, align 8, !tbaa !61 ; 2 uses
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.dk, i64 1048576)
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit
  %.094280 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.094280 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !55 ; 4 uses
  %i.dp = icmp ult i32 %i.do, 16
  br i1 %i.dp, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.do, i1 true) ; 3 uses
  %.neg.i = ashr exact i32 -2147483648, %i.dq
  %i.dr = add i32 %.neg.i, %i.do
  %i.ds = sub nuw nsw i32 29, %i.dq               ; 2 uses
  %i.dt = lshr i32 %i.dr, %i.ds
  %i.du = shl nuw nsw i32 %i.dq, 2
  %reass.sub300 = sub nsw i32 %i.dt, %i.du
  %i.dv = add nsw i32 %reass.sub300, 124
  %i.dw = uitofp nneg i32 %i.ds to float
  br label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit: ; preds = %bb.m, %bb.n
  %.0235 = phi i32 [ %i.dv, %bb.n ], [ %i.do, %bb.m ]
  %.0234 = phi float [ %i.dw, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.dx = load i32, ptr %i.dm, align 4
  %i.dy = lshr i32 %i.dx, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = zext nneg i32 %.0235 to i64
  %i.eb = mul i64 %.val, %i.dz
  %i.ec = getelementptr [4 x i8], ptr %.val107, i64 %i.eb
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.ea
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !57
  %i.ef = fadd float %.0234, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.094280
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !57
end_hunk_0
begin_hunk_1_@_ZN3jxl12_GLOBAL__N_114ApplyLZ77_LZ77ERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsE:bb.a

bb.u:                                             ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #17
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  %i.fy = shl nuw i64 %.0.i.i.i, 3
  %i.fz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #18 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fp ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.0.i.i.i
  %i.gc = load i64, ptr %i.fh, align 4
  store i64 %i.gc, ptr %i.ga, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.ge = load ptr, ptr %i.ew, align 8, !tbaa !42 ; 2 uses
  %i.gf = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.gf
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gg = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ga, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ge, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %i.gh = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gg, i64 -8 ; 3 uses
  %i.gj = load i64, ptr %i.gh, align 4, !noalias !288
  store i64 %i.gj, ptr %i.gi, align 4, !noalias !288
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.gf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i
  %storemerge.i.i = phi ptr [ %i.ga, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i, ptr %i.bj, align 8, !tbaa !52
  store ptr %i.gd, ptr %i.ew, align 8, !tbaa !52
  %i.gk = load ptr, ptr %i.cg, align 8, !tbaa !52
  store ptr %i.gb, ptr %i.cg, align 8, !tbaa !52
  %.not.i4.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i4.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gf to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gn) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, %bb.r
  %.0.i = phi ptr [ %i.fl, %bb.r ], [ %i.gd, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.gd, %bb.v ] ; 9 uses
  store ptr %.0.i, ptr %i.ew, align 8, !tbaa !42
  %i.go = add i64 %.088286, 2                     ; 2 uses
  %i.gp = load i64, ptr %8, align 8, !tbaa !91    ; 4 uses
  %i.gq = icmp ult i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.x, label %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i

bb.x:                                             ; preds = %bb.w
  %i.gr = load ptr, ptr %i.af, align 8, !tbaa !92 ; 2 uses
  %i.gs = getelementptr [4 x i8], ptr %i.gr, i64 %.088286 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !93
  %i.gu = getelementptr i8, ptr %i.gs, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !93
  %i.gw = load i32, ptr %i.ag, align 8, !tbaa !94 ; 2 uses
  %i.gx = shl i32 %i.gv, %i.gw
  %i.gy = xor i32 %i.gx, %i.gt
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.go
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !93
  %i.hb = shl i32 %i.gw, 1
  %i.hc = shl i32 %i.ha, %i.hb
  %i.hd = xor i32 %i.gy, %i.hc
  %i.he = load i32, ptr %i.ah, align 4, !tbaa !95
  %i.hf = and i32 %i.hd, %i.he
  br label %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i

_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i: ; preds = %bb.x, %bb.w
  %.0.i.i = phi i32 [ %i.hf, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.hg = load i64, ptr %i.ai, align 8, !tbaa !96 ; 2 uses
  %i.hh = and i64 %i.hg, %.088286                 ; 2 uses
  %i.hi = trunc i64 %i.hh to i32                  ; 2 uses
  %i.hj = and i64 %i.hh, 4294967295               ; 4 uses
  %i.hk = load ptr, ptr %i.aj, align 8, !tbaa !97
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hj
  store i32 %.0.i.i, ptr %i.hl, align 4, !tbaa !93
  %i.hm = zext i32 %.0.i.i to i64
  %i.hn = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !93 ; 2 uses
  %.not.i110 = icmp eq i32 %i.hp, -1
  br i1 %.not.i110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i
  %i.hq = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hj
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !93
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i
  store i32 %i.hi, ptr %i.ho, align 4, !tbaa !93
  %.not16.i = icmp eq i64 %.088286, 0
  br i1 %.not16.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hs = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %.088286 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !93
  %i.hv = getelementptr i8, ptr %i.ht, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !93
  %.not17.i = icmp eq i32 %i.hu, %i.hw
  br i1 %.not17.i, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.aa
  store i32 0, ptr %i.am, align 8, !tbaa !99
  %i.hx = load i64, ptr %i.an, align 8, !tbaa !98
  %i.hy = add i64 %i.hx, %.088286
  %spec.select.i.i444 = call i64 @llvm.umin.i64(i64 %i.hy, i64 %i.gp)
  br label %.preheader.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pr = load i32, ptr %i.am, align 8, !tbaa !99  ; 4 uses
  %i.hz = load i64, ptr %i.an, align 8, !tbaa !98
  %i.ia = add i64 %i.hz, %.088286                 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ia, i64 %i.gp) ; 2 uses
  %.not.i.i111 = icmp eq i32 %.pr, 0
  br i1 %.not.i.i111, label %.preheader.i.i, label %bb.ac

.preheader.i.i:                                   ; preds = %.thread, %bb.ab
  %spec.select.i.i446 = phi i64 [ %spec.select.i.i444, %.thread ], [ %spec.select.i.i, %bb.ab ] ; 2 uses
  %i.ib = icmp ult i64 %.088286, %spec.select.i.i446
  br i1 %i.ib, label %.lr.ph.i.i, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ic = load ptr, ptr %i.af, align 8, !tbaa !92
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.id = zext i32 %.pr to i64
  %.not23.i.i = icmp ugt i64 %i.hg, %i.id
  br i1 %.not23.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ie = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %spec.select.i.i
  %i.ig = getelementptr i8, ptr %i.if, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !93
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = icmp ule i64 %i.ia, %i.gp
  %or.cond.i.i = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %or.cond.i.i, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = add i32 %.pr, -1
  br label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %i.il = phi i64 [ %.088286, %.lr.ph.i.i ], [ %i.ir, %bb.ag ]
  %.024.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ip, %bb.ag ] ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !93
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.ag, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ip = add i32 %.024.i.i, 1                    ; 3 uses
  %i.iq = zext i32 %i.ip to i64
  %i.ir = add i64 %.088286, %i.iq                 ; 2 uses
  %i.is = icmp ult i64 %i.ir, %spec.select.i.i446
  br i1 %i.is, label %bb.af, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i, !llvm.loop !2

_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %.preheader.i.i
  %.018.i.i = phi i32 [ %.pr, %bb.ad ], [ %i.ik, %bb.ae ], [ 0, %.preheader.i.i ], [ %i.ip, %bb.ag ], [ %.024.i.i, %bb.af ] ; 2 uses
  store i32 %.018.i.i, ptr %i.am, align 8, !tbaa !99
  %i.it = load ptr, ptr %i.ao, align 8, !tbaa !92
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.hj
  store i32 %.018.i.i, ptr %i.iu, align 4, !tbaa !93
  %i.iv = load i32, ptr %i.am, align 8, !tbaa !99
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = load ptr, ptr %i.ap, align 8, !tbaa !97 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !93 ; 2 uses
  %.not18.i = icmp eq i32 %i.iz, -1
  br i1 %.not18.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i
  %i.ja = load ptr, ptr %i.aq, align 8, !tbaa !92
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.hj
  store i32 %i.iz, ptr %i.jb, align 4, !tbaa !93
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !99
  %.pre19.i = zext i32 %.pre.i to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i
  %.pre-phi.i = phi i64 [ %.pre19.i, %bb.ah ], [ %i.iw, %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.pre-phi.i
  store i32 %i.hi, ptr %i.jc, align 4, !tbaa !93
  call fastcc void @_ZNK3jxl12_GLOBAL__N_19HashChain9FindMatchEmiPmS2_(ptr noundef nonnull align 8 dereferenceable(284) %8, i64 noundef %.088286, ptr noundef %i.b, ptr noundef %i.a) #19
  %i.jd = load i64, ptr %i.a, align 8, !tbaa !37  ; 6 uses
  %.not = icmp ult i64 %i.jd, %i.en
  br i1 %.not, label %bb.cl, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.je = icmp ult i64 %i.jd, 256
  br i1 %i.je, label %bb.ak, label %bb.bd

bb.ak:                                            ; preds = %bb.aj
  %i.jf = add nuw i64 %.088286, 1                 ; 12 uses
  %i.jg = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.jh = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = ashr exact i64 %i.jk, 3
  %i.jm = icmp ult i64 %i.jf, %i.jl
  br i1 %i.jm, label %bb.al, label %bb.bd

bb.al:                                            ; preds = %bb.ak
  %i.jn = add i64 %.088286, 3                     ; 2 uses
  %i.jo = load i64, ptr %8, align 8, !tbaa !91    ; 4 uses
  %i.jp = icmp ult i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.am, label %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i112

bb.am:                                            ; preds = %bb.al
  %i.jq = load ptr, ptr %i.af, align 8, !tbaa !92 ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %i.jq, i64 %i.jf ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !93
  %i.jt = getelementptr i8, ptr %i.jr, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !93
  %i.jv = load i32, ptr %i.ag, align 8, !tbaa !94 ; 2 uses
  %i.jw = shl i32 %i.ju, %i.jv
  %i.jx = xor i32 %i.jw, %i.js
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jn
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !93
  %i.ka = shl i32 %i.jv, 1
  %i.kb = shl i32 %i.jz, %i.ka
  %i.kc = xor i32 %i.jx, %i.kb
  %i.kd = load i32, ptr %i.ah, align 4, !tbaa !95
  %i.ke = and i32 %i.kc, %i.kd
  br label %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i112

_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i112: ; preds = %bb.am, %bb.al
  %.0.i.i113 = phi i32 [ %i.ke, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %i.kf = load i64, ptr %i.ai, align 8, !tbaa !96 ; 2 uses
  %i.kg = and i64 %i.kf, %i.jf                    ; 2 uses
  %i.kh = trunc i64 %i.kg to i32                  ; 2 uses
  %i.ki = and i64 %i.kg, 4294967295               ; 4 uses
  %i.kj = load ptr, ptr %i.aj, align 8, !tbaa !97
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.ki
  store i32 %.0.i.i113, ptr %i.kk, align 4, !tbaa !93
  %i.kl = zext i32 %.0.i.i113 to i64
  %i.km = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kl ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !93 ; 2 uses
  %.not.i114 = icmp eq i32 %i.ko, -1
  br i1 %.not.i114, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i112
  %i.kp = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ki
  store i32 %i.ko, ptr %i.kq, align 4, !tbaa !93
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i112
  store i32 %i.kh, ptr %i.kn, align 4, !tbaa !93
  %i.kr = load ptr, ptr %i.af, align 8, !tbaa !92 ; 3 uses
  %i.ks = getelementptr [4 x i8], ptr %i.kr, i64 %i.jf ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !93
  %i.ku = getelementptr i8, ptr %i.ks, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !93
  %.not17.i116 = icmp eq i32 %i.kt, %i.kv
  br i1 %.not17.i116, label %bb.ap, label %.thread449

.thread449:                                       ; preds = %bb.ao
  store i32 0, ptr %i.am, align 8, !tbaa !99
  %i.kw = load i64, ptr %i.an, align 8, !tbaa !98
  %i.kx = add i64 %i.kw, %i.jf
  %spec.select.i.i117450 = call i64 @llvm.umin.i64(i64 %i.kx, i64 %i.jo)
  br label %.preheader.i.i127

bb.ap:                                            ; preds = %bb.ao
  %.pr448 = load i32, ptr %i.am, align 8, !tbaa !99 ; 4 uses
  %i.ky = load i64, ptr %i.an, align 8, !tbaa !98
  %i.kz = add i64 %i.ky, %i.jf                    ; 2 uses
  %spec.select.i.i117 = call i64 @llvm.umin.i64(i64 %i.kz, i64 %i.jo) ; 2 uses
  %.not.i.i118 = icmp eq i32 %.pr448, 0
  br i1 %.not.i.i118, label %.preheader.i.i127, label %bb.aq

.preheader.i.i127:                                ; preds = %.thread449, %bb.ap
  %spec.select.i.i117452 = phi i64 [ %spec.select.i.i117450, %.thread449 ], [ %spec.select.i.i117, %bb.ap ] ; 2 uses
  %i.la = icmp ult i64 %i.jf, %spec.select.i.i117452
  br i1 %i.la, label %bb.at, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121

bb.aq:                                            ; preds = %bb.ap
  %i.lb = zext i32 %.pr448 to i64
  %.not23.i.i119 = icmp ugt i64 %i.kf, %i.lb
  br i1 %.not23.i.i119, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lc = getelementptr [4 x i8], ptr %i.kr, i64 %spec.select.i.i117
  %i.ld = getelementptr i8, ptr %i.lc, i64 -4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !93
  %i.lf = icmp eq i32 %i.le, 0
  %i.lg = icmp ule i64 %i.kz, %i.jo
  %or.cond.i.i120 = select i1 %i.lf, i1 %i.lg, i1 false
  br i1 %or.cond.i.i120, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.lh = add i32 %.pr448, -1
  br label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121

bb.at:                                            ; preds = %.preheader.i.i127, %bb.au
  %i.li = phi i64 [ %i.lo, %bb.au ], [ %i.jf, %.preheader.i.i127 ]
  %.024.i.i129 = phi i32 [ %i.lm, %bb.au ], [ 0, %.preheader.i.i127 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !93
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.au, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121

bb.au:                                            ; preds = %bb.at
  %i.lm = add i32 %.024.i.i129, 1                 ; 3 uses
  %i.ln = zext i32 %i.lm to i64
  %i.lo = add i64 %i.jf, %i.ln                    ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %spec.select.i.i117452
  br i1 %i.lp, label %bb.at, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121, !llvm.loop !2

_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %.preheader.i.i127
  %.018.i.i122 = phi i32 [ %.pr448, %bb.ar ], [ %i.lh, %bb.as ], [ 0, %.preheader.i.i127 ], [ %i.lm, %bb.au ], [ %.024.i.i129, %bb.at ] ; 2 uses
  store i32 %.018.i.i122, ptr %i.am, align 8, !tbaa !99
  %i.lq = load ptr, ptr %i.ao, align 8, !tbaa !92
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.ki
  store i32 %.018.i.i122, ptr %i.lr, align 4, !tbaa !93
  %i.ls = load i32, ptr %i.am, align 8, !tbaa !99
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %i.lu = load ptr, ptr %i.ap, align 8, !tbaa !97 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.lt
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !93 ; 2 uses
  %.not18.i123 = icmp eq i32 %i.lw, -1
  br i1 %.not18.i123, label %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130, label %bb.av

bb.av:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121
  %i.lx = load ptr, ptr %i.aq, align 8, !tbaa !92
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ki
  store i32 %i.lw, ptr %i.ly, align 4, !tbaa !93
  %.pre.i124 = load i32, ptr %i.am, align 8, !tbaa !99
  %.pre19.i125 = zext i32 %.pre.i124 to i64
  br label %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130

_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130: ; preds = %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121, %bb.av
  %.pre-phi.i126 = phi i64 [ %.pre19.i125, %bb.av ], [ %i.lt, %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i121 ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.pre-phi.i126
  store i32 %i.kh, ptr %i.lz, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call fastcc void @_ZNK3jxl12_GLOBAL__N_19HashChain9FindMatchEmiPmS2_(ptr noundef nonnull align 8 dereferenceable(284) %8, i64 noundef %i.jf, ptr noundef %i.d, ptr noundef %i.c) #19
  %i.ma = load i64, ptr %i.c, align 8, !tbaa !37  ; 3 uses
  %i.mb = icmp ule i64 %i.ma, %i.jd               ; 2 uses
  br i1 %i.mb, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130
  store i64 %i.ma, ptr %i.a, align 8, !tbaa !37
  %i.mc = load i64, ptr %i.d, align 8, !tbaa !37
  store i64 %i.mc, ptr %i.b, align 8, !tbaa !37
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jf ; 2 uses
  %i.me = load ptr, ptr %i.cg, align 8, !tbaa !52 ; 2 uses
  %i.mf = icmp ult ptr %.0.i, %i.me
  br i1 %i.mf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mg = load i64, ptr %i.md, align 4
  store i64 %i.mg, ptr %.0.i, align 4
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144

bb.ay:                                            ; preds = %bb.aw
  %i.mi = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.mj = ptrtoint ptr %.0.i to i64
  %i.mk = ptrtoint ptr %i.mi to i64               ; 2 uses
  %i.ml = sub i64 %i.mj, %i.mk                    ; 2 uses
  %i.mm = ashr exact i64 %i.ml, 3
  %i.mn = add nsw i64 %i.mm, 1                    ; 2 uses
  %i.mo = icmp ugt i64 %i.mn, 2305843009213693951
  br i1 %i.mo, label %bb.az, label %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i131

bb.az:                                            ; preds = %bb.ay
  call void @_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #17
  unreachable

_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i131: ; preds = %bb.ay
  %i.mp = ptrtoint ptr %i.me to i64
  %i.mq = sub i64 %i.mp, %i.mk                    ; 2 uses
  %.not.i.i.i132 = icmp ult i64 %i.mq, 9223372036854775800
  %i.mr = ashr exact i64 %i.mq, 2
  %.sroa.speculated.i.i.i133 = call i64 @llvm.umax.i64(i64 %i.mr, i64 %i.mn)
  %.0.i.i.i134 = select i1 %.not.i.i.i132, i64 %.sroa.speculated.i.i.i133, i64 2305843009213693951 ; 4 uses
  %i.ms = icmp ne i64 %.0.i.i.i134, 0
  call void @llvm.assume(i1 %i.ms)
  %i.mt = icmp ugt i64 %.0.i.i.i134, 2305843009213693951
  br i1 %i.mt, label %bb.ba, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135

bb.ba:                                            ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i131
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #17
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135: ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i131
  %i.mu = shl nuw i64 %.0.i.i.i134, 3
  %i.mv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mu) #18 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.ml ; 4 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %.0.i.i.i134
  %i.my = load i64, ptr %i.md, align 4
  store i64 %i.my, ptr %i.mw, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 3 uses
  %i.na = load ptr, ptr %i.ew, align 8, !tbaa !42 ; 2 uses
  %i.nb = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i136 = icmp eq ptr %i.na, %i.nb
  br i1 %.not4.i.i.i.i.i.i.i.i.i136, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i140, label %.lr.ph.i.i.i.i.i.i.i.i.i137

.lr.ph.i.i.i.i.i.i.i.i.i137:                      ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135, %.lr.ph.i.i.i.i.i.i.i.i.i137
  %i.nc = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i.i.i137 ], [ %i.mw, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i138 = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i137 ], [ %i.na, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135 ]
  %i.nd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i138, i64 -8 ; 3 uses
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 -8 ; 3 uses
  %i.nf = load i64, ptr %i.nd, align 4, !noalias !289
  store i64 %i.nf, ptr %i.ne, align 4, !noalias !289
  %.not.i.i.i.i.i.i.i.i.i139 = icmp eq ptr %i.nd, %i.nb
  br i1 %.not.i.i.i.i.i.i.i.i.i139, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i140, label %.lr.ph.i.i.i.i.i.i.i.i.i137, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i140: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i137, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135
  %storemerge.i.i141 = phi ptr [ %i.mw, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i135 ], [ %i.ne, %.lr.ph.i.i.i.i.i.i.i.i.i137 ]
  store ptr %storemerge.i.i141, ptr %i.bj, align 8, !tbaa !52
  store ptr %i.mz, ptr %i.ew, align 8, !tbaa !52
  %i.ng = load ptr, ptr %i.cg, align 8, !tbaa !52
  store ptr %i.mx, ptr %i.cg, align 8, !tbaa !52
  %.not.i4.i.i142 = icmp eq ptr %i.nb, null
  br i1 %.not.i4.i.i142, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i140
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.nb to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nj) #20
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144

_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144: ; preds = %bb.ax, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i140, %bb.bb
  %.0.i143 = phi ptr [ %i.mh, %bb.ax ], [ %i.mz, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i140 ], [ %i.mz, %bb.bb ] ; 2 uses
  store ptr %.0.i143, ptr %i.ew, align 8, !tbaa !42
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144, %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130
  %i.nk = phi ptr [ %.0.i143, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144 ], [ %.0.i, %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130 ]
  %i.nl = phi i64 [ %i.ma, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144 ], [ %i.jd, %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130 ]
  %.1 = phi i64 [ %i.jf, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit144 ], [ %.088286, %_ZN3jxl12_GLOBAL__N_19HashChain6UpdateEm.exit130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ak, %bb.aj
  %i.nm = phi ptr [ %i.nk, %bb.bc ], [ %.0.i, %bb.ak ], [ %.0.i, %bb.aj ] ; 4 uses
  %i.nn = phi i64 [ %i.nl, %bb.bc ], [ %i.jd, %bb.ak ], [ %i.jd, %bb.aj ] ; 7 uses
  %.291 = phi i1 [ %i.mb, %bb.bc ], [ false, %bb.ak ], [ false, %bb.aj ]
  %.2 = phi i64 [ %.1, %bb.bc ], [ %.088286, %bb.ak ], [ %.088286, %bb.aj ] ; 5 uses
  %i.no = load ptr, ptr %7, align 8, !tbaa !49
  %i.np = getelementptr [4 x i8], ptr %i.no, i64 %.2 ; 2 uses
  %i.nq = getelementptr [4 x i8], ptr %i.np, i64 %i.nn
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !57
  %i.ns = load float, ptr %i.np, align 4, !tbaa !57
  %i.nt = fsub float %i.nr, %i.ns                 ; 2 uses
  %i.nu = load i32, ptr %i.ae, align 8, !tbaa !61
  %i.nv = trunc i64 %i.nn to i32                  ; 2 uses
  %i.nw = sub i32 %i.nv, %i.nu                    ; 4 uses
  %i.nx = icmp ult i32 %i.nw, 2
  br i1 %i.nx, label %_ZN3jxl12_GLOBAL__N_17LenCostEm.exit, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i: ; preds = %bb.bd
  %i.ny = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nw, i1 true) ; 3 uses
  %i.nz = xor i32 %i.ny, 31                       ; 2 uses
  %.neg.i.i = ashr exact i32 -2147483648, %i.ny
  %i.oa = add i32 %.neg.i.i, %i.nw
  %i.ob = lshr i32 %i.oa, %i.nz
  %reass.sub = sub nsw i32 %i.ob, %i.ny
  %i.oc = add i32 %reass.sub, 32
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.oc, i32 16)
  %i.od = uitofp nneg i32 %i.nz to float
  br label %_ZN3jxl12_GLOBAL__N_17LenCostEm.exit

_ZN3jxl12_GLOBAL__N_17LenCostEm.exit:             ; preds = %bb.bd, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i
  %.0811.i = phi float [ 0.000000e+00, %bb.bd ], [ %i.od, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i ]
  %.0.i145 = phi i32 [ %i.nw, %bb.bd ], [ %spec.select.i, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i ]
  %i.oe = zext nneg i32 %.0.i145 to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr @_ZZN3jxl12_GLOBAL__N_17LenCostEmE10kCostTable, i64 %i.oe
  %i.og = load float, ptr %i.of, align 4, !tbaa !57
  %i.oh = fadd float %.0811.i, %i.og
  %i.oi = load i64, ptr %i.b, align 8, !tbaa !37
  %i.oj = trunc i64 %i.oi to i32                  ; 6 uses
  %i.ok = icmp ult i32 %i.oj, 128
  br i1 %i.ok, label %_ZN3jxl12_GLOBAL__N_18DistCostEm.exit, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i146

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i146: ; preds = %_ZN3jxl12_GLOBAL__N_17LenCostEm.exit
  %i.ol = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.oj, i1 true) ; 3 uses
  %i.om = xor i32 %i.ol, 31                       ; 2 uses
  %.neg.i.i147 = ashr exact i32 -2147483648, %i.ol
  %i.on = add i32 %.neg.i.i147, %i.oj
  %i.oo = lshr i32 %i.on, %i.om
  %reass.sub302 = sub nsw i32 %i.oo, %i.ol
  %i.op = add nsw i32 %reass.sub302, 152
  %spec.select.i149 = call i32 @llvm.umin.i32(i32 %i.op, i32 138)
  %i.oq = uitofp nneg i32 %i.om to float
  br label %_ZN3jxl12_GLOBAL__N_18DistCostEm.exit

_ZN3jxl12_GLOBAL__N_18DistCostEm.exit:            ; preds = %_ZN3jxl12_GLOBAL__N_17LenCostEm.exit, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i146
  %.0811.i150 = phi float [ 0.000000e+00, %_ZN3jxl12_GLOBAL__N_17LenCostEm.exit ], [ %i.oq, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i146 ]
  %.0.i151 = phi i32 [ %i.oj, %_ZN3jxl12_GLOBAL__N_17LenCostEm.exit ], [ %spec.select.i149, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i146 ]
  %i.or = zext nneg i32 %.0.i151 to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr @_ZZN3jxl12_GLOBAL__N_18DistCostEmE10kCostTable, i64 %i.or
  %i.ot = load float, ptr %i.os, align 4, !tbaa !57
end_hunk_1
