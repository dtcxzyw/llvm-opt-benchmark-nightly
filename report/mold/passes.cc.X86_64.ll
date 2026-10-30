Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread: ; preds = %bb.f, %bb.e, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit, %bb.g, %bb.c
  %i.bi = add nuw nsw i64 %.077, 1                ; 2 uses
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !2259 ; 2 uses
  %i.bk = load ptr, ptr %12, align 8, !tbaa !761  ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 6
  %i.bp = icmp ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !2258

bb.i:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4192
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %10, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %11, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %12, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.bq, ptr %4, align 8, !tbaa !765
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.br, align 8, !tbaa !672
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 64, ptr %1, align 8, !tbaa !674
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !675
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.bt, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %4, ptr %2, align 8, !tbaa !672
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !767
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.bv, align 8, !tbaa !768
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold10ShardedMapINS6_6SymbolINS6_6X86_64EEEE17parallel_for_eachIZNS6_20apply_version_scriptIS9_EEvRNS6_7ContextIT_EEEUlRSA_E_EEvSF_EUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre91 = load ptr, ptr %12, align 8, !tbaa !2260
  %.pre92 = load ptr, ptr %i.ae, align 8, !tbaa !2260
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bw = phi ptr [ %i.ao, %._crit_edge ], [ %.pre92, %bb.i ] ; 2 uses
  %i.bx = phi ptr [ %i.ap, %._crit_edge ], [ %.pre91, %bb.i ] ; 3 uses
  %i.by = icmp eq ptr %i.bx, %i.bw
  br i1 %i.by, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2703
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 408 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.cd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 -24
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cn = getelementptr i8, ptr %i.cl, i64 -24
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 136
  br label %bb.l

._crit_edge83.loopexit:                           ; preds = %bb.u
  %.pre100 = load ptr, ptr %12, align 8, !tbaa !761
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %bb.j
  %i.cq = phi ptr [ %.pre100, %._crit_edge83.loopexit ], [ %i.bx, %bb.j ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge83
  %i.cr = load ptr, ptr %i.ag, align 8, !tbaa !2261
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #34
  br label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit: ; preds = %._crit_edge83, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @_ZN4mold4GlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1280) dereferenceable(1280) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @_ZN4mold4GlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1280) dereferenceable(1280) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.cv = load ptr, ptr %8, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.cv) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.l:                                             ; preds = %.lr.ph82, %bb.u
  %.sroa.055.078 = phi ptr [ %i.bx, %.lr.ph82 ], [ %i.et, %bb.u ] ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !2262, !range !613, !noundef !599
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.05.0.copyload = load i64, ptr %.sroa.055.078, align 8, !tbaa !594 ; 3 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 8
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !614 ; 2 uses
  %.not.i41 = icmp eq i64 %.sroa.05.0.copyload, 0
  br i1 %.not.i41, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42: ; preds = %bb.m, %bb.n
  %.01116.i.i.i43 = phi i64 [ %i.db, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.26.0.copyload, i64 %.01116.i.i.i43
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !177
  switch i8 %i.da, label %bb.n [
    i8 42, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
    i8 63, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
    i8 91, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
  ]

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42
  %i.db = add nuw i64 %.01116.i.i.i43, 1          ; 2 uses
  %exitcond.not.i.i.i47 = icmp eq i64 %i.db, %.sroa.05.0.copyload
  br i1 %exitcond.not.i.i.i47, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42, !llvm.loop !0

_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42
  %.not69 = icmp eq i64 %.01116.i.i.i43, -1
  br i1 %.not69, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread, label %bb.u

_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread: ; preds = %bb.n, %bb.m, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
  %i.dc = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %.sroa.05.0.copyload, ptr %.sroa.26.0.copyload) #16 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !715 ; 4 uses
  %.not.i49 = icmp eq i32 %i.de, 0
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sext i32 %i.de to i64
  %i.dh = shl nsw i64 %i.dg, 2                    ; 3 uses
  %i.di = sub i64 0, %i.df
  %.not70 = icmp eq i64 %i.dh, %i.di
  %.not = select i1 %.not.i49, i1 true, i1 %.not70
  br i1 %.not, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread
  %i.dj = load i8, ptr %i.bz, align 1, !tbaa !2263, !range !613, !noundef !599
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %15, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.dl = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613, !noundef !599
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit: ; preds = %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dn, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !614
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) #16 ; 0 uses
  %.pre93 = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613
  %i.dp = trunc nuw i8 %.pre93 to i1
  br i1 %i.dp, label %_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 1 dereferenceable(26) @.str.89, i64 noundef 25) #16 ; 0 uses
  %.pre94 = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613
  %i.dr = trunc nuw i8 %.pre94 to i1
  br i1 %i.dr, label %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 32
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %i.ds, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 40
  %.sroa.2.0.copyload.i.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i51, align 8, !tbaa !614
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %.sroa.2.0.copyload.i.i52, i64 noundef %.sroa.0.0.copyload.i.i50) #16 ; 0 uses
  %.pre95 = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613
  %i.du = trunc nuw i8 %.pre95 to i1
  br i1 %i.du, label %_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 1 dereferenceable(14) @.str.90, i64 noundef 13) #16 ; 0 uses
  %.pre96 = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613
  %i.dw = trunc nuw i8 %.pre96 to i1
  br i1 %i.dw, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(36) %i.dc) #16 ; 0 uses
  %.pre97 = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613
  %i.dy = trunc nuw i8 %.pre97 to i1
  br i1 %i.dy, label %_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 1 dereferenceable(20) @.str.91, i64 noundef 19) #16 ; 0 uses
  %.pre98 = load i8, ptr %i.ca, align 8, !tbaa !770, !range !613
  %i.ea = trunc nuw i8 %.pre98 to i1
  store i8 0, ptr %i.ca, align 8, !tbaa !770
  br i1 %i.ea, label %bb.q, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.q:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %15)
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !170
  %i.eb = load i64, ptr %i.cf, align 8
  %i.ec = getelementptr inbounds i8, ptr %i.cc, i64 %i.eb
  store ptr %i.ce, ptr %i.ec, align 8, !tbaa !170
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ch, align 8, !tbaa !170
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !598 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cj
  br i1 %i.ee, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.ef = load i64, ptr %i.cj, align 8, !tbaa !177
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #34
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ch, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #16
  store ptr %i.cl, ptr %i.cc, align 8, !tbaa !170
  %i.eh = load i64, ptr %i.cn, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.cc, i64 %i.eh
  store ptr %i.cm, ptr %i.ei, align 8, !tbaa !170
  store i64 0, ptr %i.co, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cp) #16
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %bb.p, %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53, %_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %.pre99 = load i32, ptr %i.dd, align 4, !tbaa !715 ; 2 uses
  %.pre101 = sext i32 %.pre99 to i64
  %.pre102 = shl nsw i64 %.pre101, 2
  br label %bb.r

bb.r:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EED2Ev.exit, %bb.o, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread
  %.pre-phi103 = phi i64 [ %.pre102, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit ], [ %i.dh, %bb.o ], [ %i.dh, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread ]
  %i.ej = phi i32 [ %.pre99, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit ], [ %i.de, %bb.o ], [ %i.de, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread ]
  %.not.i54 = icmp eq i32 %i.ej, 0
  %i.ek = add nsw i64 %.pre-phi103, %i.df         ; 2 uses
  %.not4071 = icmp eq i64 %i.ek, 0
  %.not40 = select i1 %.not.i54, i1 true, i1 %.not4071
  br i1 %.not40, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120
  %i.en = load i8, ptr %i.em, align 8, !tbaa !773, !range !613, !noundef !599
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 48
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !774
  %i.er = trunc i64 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  store i16 %i.er, ptr %i.es, align 4, !tbaa !569
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48, %bb.l
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 64 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bw
  br i1 %i.eu, label %._crit_edge83.loopexit, label %bb.l
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold20parse_symbol_versionINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::unordered_map.680", align 8 ; 12 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %class.anon.694, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2695
  %i.b = load i8, ptr %i.a, align 1, !tbaa !662, !range !613, !noundef !599
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !173
  %i.e = call noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #36 ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !598
  store i64 20, ptr %i.d, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.e, ptr noundef nonnull align 1 dereferenceable(20) @.str.92, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 20, ptr %i.f, align 8, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i8 0, ptr %i.g, align 1, !tbaa !177
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  %i.h = load ptr, ptr %2, align 8, !tbaa !598    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.j = load i64, ptr %i.d, align 8, !tbaa !177
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !776
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.m, align 8, !tbaa !777
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !642
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3872 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3880 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !778
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !779  ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13088
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %0, ptr %5, align 8, !tbaa !579
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.w, align 8, !tbaa !2266
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !577
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13096
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !577
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_20parse_symbol_versionIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_(ptr %i.x, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !781 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_tESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.ab = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !782 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #34
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_tESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2264

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_tESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %i.ac = load ptr, ptr %3, align 8, !tbaa !776
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !777
  %i.ae = shl i64 %i.ad, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ae, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %3, align 8, !tbaa !776   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEtSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_tEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_tESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !777
  %i.ai = shl i64 %i.ah, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #34
  br label %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEtSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_tEEED2Ev.exit

_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEtSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_tEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_tESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.aj = load ptr, ptr %1, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.aj) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ak = phi ptr [ %i.t, %.lr.ph ], [ %i.au, %bb.c ]
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.c ] ; 3 uses
  %i.al = add nuw nsw i64 %.09, 1                 ; 2 uses
  %i.am = trunc i64 %.09 to i16
  %i.an = add i16 %i.am, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %.09 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !598
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !176
  store i64 %i.ar, ptr %4, align 8
  store ptr %i.ap, ptr %i.u, align 8
  %i.as = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt8__detail9_Map_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_tESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  store i16 %i.an, ptr %i.as, align 2, !tbaa !783
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !778
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !779 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5
  %i.az = icmp ult i64 %i.al, %i.ay
  br i1 %i.az, label %bb.c, label %._crit_edge, !llvm.loop !2265

bb.d:                                             ; preds = %bb.a, %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEtSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_tEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold21compute_import_exportINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
end_hunk_0
begin_hunk_1_@_ZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE:bb.a
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.cn, i64 noundef %i.fm), !noalias !2352
  store ptr %i.fi, ptr %i.fq, align 8, !tbaa !614, !noalias !2352
  %i.fr = load i64, ptr %i.cq, align 8, !tbaa !176
  %i.fs = call noundef ptr @_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEjE_clES9_j(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.fr, ptr nonnull %i.fi, i32 noundef 0) ; 0 uses
  %i.ft = load i8, ptr %i.co, align 1, !tbaa !2349, !range !613, !noundef !599
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.r, label %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit83

bb.r:                                             ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i81
  %i.fv = load i64, ptr %i.cq, align 8, !tbaa !176
  %i.fw = add i64 %i.fv, 1
  %i.fx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fw) #36 ; 4 uses
  %i.fy = load ptr, ptr %8, align 8, !tbaa !598
  %i.fz = load i64, ptr %i.cq, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr align 1 %i.fy, i64 %i.fz, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fz
  store i8 0, ptr %i.ga, align 1, !tbaa !177
  %i.gb = atomicrmw add ptr %i.cl, i64 1 seq_cst, align 8, !noalias !2353
  %i.gc = load atomic i64, ptr %i.cm monotonic, align 8, !noalias !2353
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.s, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i82

bb.s:                                             ; preds = %bb.r
  %i.ge = cmpxchg ptr %i.cm, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2353 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i82

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i82: ; preds = %bb.s, %bb.r
  %i.gf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.cn, i64 noundef %i.gb), !noalias !2353
  store ptr %i.fx, ptr %i.gf, align 8, !tbaa !614, !noalias !2353
  %i.gg = load i64, ptr %i.cq, align 8, !tbaa !176
  %i.gh = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.gg, ptr nonnull %i.fx) #16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 33 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 1
  %i.gk = or i16 %i.gj, 8
  store i16 %i.gk, ptr %i.gi, align 1
  br label %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit83

_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit83: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i81, %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i82
  %i.gl = load ptr, ptr %8, align 8, !tbaa !598   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.cr
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit83
  %i.gn = load i64, ptr %i.cr, align 8, !tbaa !177
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.gp = load i8, ptr %i.cs, align 8, !tbaa !860, !range !613, !noundef !599
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.gr = load ptr, ptr %6, align 8, !tbaa !598, !noalias !2354
  %i.gs = load i64, ptr %i.cj, align 8, !tbaa !176, !noalias !2354
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !2354
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.41, i64 noundef 13, ptr noundef %i.gr, i64 noundef %i.gs, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !2354
  %i.gt = load i64, ptr %i.ct, align 8, !tbaa !176
  %i.gu = add i64 %i.gt, 1
  %i.gv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #36 ; 4 uses
  %i.gw = load ptr, ptr %9, align 8, !tbaa !598
  %i.gx = load i64, ptr %i.ct, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr align 1 %i.gw, i64 %i.gx, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gx
  store i8 0, ptr %i.gy, align 1, !tbaa !177
  %i.gz = atomicrmw add ptr %i.cl, i64 1 seq_cst, align 8, !noalias !2355
  %i.ha = load atomic i64, ptr %i.cm monotonic, align 8, !noalias !2355
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.u, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i87

bb.u:                                             ; preds = %bb.t
  %i.hc = cmpxchg ptr %i.cm, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2355 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i87

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i87: ; preds = %bb.u, %bb.t
  %i.hd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.cn, i64 noundef %i.gz), !noalias !2355
  store ptr %i.gv, ptr %i.hd, align 8, !tbaa !614, !noalias !2355
  %i.he = load i64, ptr %i.ct, align 8, !tbaa !176
  %i.hf = call noundef ptr @_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEjE_clES9_j(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.he, ptr nonnull %i.gv, i32 noundef 0) ; 0 uses
  %i.hg = load i8, ptr %i.co, align 1, !tbaa !2349, !range !613, !noundef !599
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.v, label %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit89

bb.v:                                             ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i87
  %i.hi = load i64, ptr %i.ct, align 8, !tbaa !176
  %i.hj = add i64 %i.hi, 1
  %i.hk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hj) #36 ; 4 uses
  %i.hl = load ptr, ptr %9, align 8, !tbaa !598
  %i.hm = load i64, ptr %i.ct, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr align 1 %i.hl, i64 %i.hm, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hm
  store i8 0, ptr %i.hn, align 1, !tbaa !177
  %i.ho = atomicrmw add ptr %i.cl, i64 1 seq_cst, align 8, !noalias !2356
  %i.hp = load atomic i64, ptr %i.cm monotonic, align 8, !noalias !2356
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.w, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i88

bb.w:                                             ; preds = %bb.v
  %i.hr = cmpxchg ptr %i.cm, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2356 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i88

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i88: ; preds = %bb.w, %bb.v
  %i.hs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.cn, i64 noundef %i.ho), !noalias !2356
  store ptr %i.hk, ptr %i.hs, align 8, !tbaa !614, !noalias !2356
  %i.ht = load i64, ptr %i.ct, align 8, !tbaa !176
  %i.hu = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.ht, ptr nonnull %i.hk) #16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 33 ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 1
  %i.hx = or i16 %i.hw, 8
  store i16 %i.hx, ptr %i.hv, align 1
  br label %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit89

_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit89: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i87, %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i88
  %i.hy = load ptr, ptr %9, align 8, !tbaa !598   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.cu
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit89
  %i.ia = load i64, ptr %i.cu, align 8, !tbaa !177
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.ic = load ptr, ptr %6, align 8, !tbaa !598, !noalias !2357
  %i.id = load i64, ptr %i.cj, align 8, !tbaa !176, !noalias !2357
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16, !noalias !2357
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.42, i64 noundef 12, ptr noundef %i.ic, i64 noundef %i.id, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16, !noalias !2357
  %i.ie = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.if = add i64 %i.ie, 1
  %i.ig = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.if) #36 ; 4 uses
  %i.ih = load ptr, ptr %10, align 8, !tbaa !598
  %i.ii = load i64, ptr %i.cv, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr align 1 %i.ih, i64 %i.ii, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ii
  store i8 0, ptr %i.ij, align 1, !tbaa !177
  %i.ik = atomicrmw add ptr %i.cl, i64 1 seq_cst, align 8, !noalias !2358
  %i.il = load atomic i64, ptr %i.cm monotonic, align 8, !noalias !2358
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.x, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i93

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.in = cmpxchg ptr %i.cm, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2358 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i93

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i93: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.io = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.cn, i64 noundef %i.ik), !noalias !2358
  store ptr %i.ig, ptr %i.io, align 8, !tbaa !614, !noalias !2358
  %i.ip = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.iq = call noundef ptr @_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEjE_clES9_j(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.ip, ptr nonnull %i.ig, i32 noundef 0) ; 0 uses
  %i.ir = load i8, ptr %i.co, align 1, !tbaa !2349, !range !613, !noundef !599
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.y, label %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit95

bb.y:                                             ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i93
  %i.it = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.iu = add i64 %i.it, 1
  %i.iv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.iu) #36 ; 4 uses
  %i.iw = load ptr, ptr %10, align 8, !tbaa !598
  %i.ix = load i64, ptr %i.cv, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iv, ptr align 1 %i.iw, i64 %i.ix, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ix
  store i8 0, ptr %i.iy, align 1, !tbaa !177
  %i.iz = atomicrmw add ptr %i.cl, i64 1 seq_cst, align 8, !noalias !2359
  %i.ja = load atomic i64, ptr %i.cm monotonic, align 8, !noalias !2359
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.z, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i94

bb.z:                                             ; preds = %bb.y
  %i.jc = cmpxchg ptr %i.cm, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2359 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i94

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i94: ; preds = %bb.z, %bb.y
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.cn, i64 noundef %i.iz), !noalias !2359
  store ptr %i.iv, ptr %i.jd, align 8, !tbaa !614, !noalias !2359
  %i.je = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.jf = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.je, ptr nonnull %i.iv) #16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 33 ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 1
  %i.ji = or i16 %i.jh, 8
  store i16 %i.ji, ptr %i.jg, align 1
  br label %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit95

_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit95: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit.i93, %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit5.i94
  %i.jj = load ptr, ptr %10, align 8, !tbaa !598  ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.cw
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit95
  %i.jl = load i64, ptr %i.cw, align 8, !tbaa !177
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZZN4mold21add_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESB_.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.l
  %i.jn = load i8, ptr %i.ci, align 8, !tbaa !859, !range !613, !noundef !599
  %i.jo = trunc nuw i8 %i.jn to i1
  store i8 0, ptr %i.ci, align 8, !tbaa !859
  br i1 %i.jo, label %bb.aa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.jp = load ptr, ptr %6, align 8, !tbaa !598   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.cx
  br i1 %i.jq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.jr = load i64, ptr %i.cx, align 8, !tbaa !177
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0111.0187, i64 8 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.cf
  br i1 %i.ju, label %._crit_edge, label %bb.l

.preheader:                                       ; preds = %bb.ad, %._crit_edge
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 3800 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 3808 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !580
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !581 ; 2 uses
  %.not194 = icmp eq ptr %i.jx, %i.jy
  br i1 %.not194, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %.preheader
  %i.jz = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.kb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.kc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.kd = getelementptr i8, ptr %i.kb, i64 -24
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.kh = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.kl = getelementptr i8, ptr %i.kj, i64 -24
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 136
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph190, %bb.ad
  %.sroa.0106.0188 = phi ptr [ %i.dl, %.lr.ph190 ], [ %i.lk, %bb.ad ] ; 3 uses
  %i.ko = load i32, ptr %.sroa.0106.0188, align 4, !tbaa !574 ; 2 uses
  %.not.i99 = icmp eq i32 %i.ko, 0
  %i.kp = ptrtoint ptr %.sroa.0106.0188 to i64
  %i.kq = sext i32 %i.ko to i64
  %i.kr = shl nsw i64 %i.kq, 2
  %i.ks = add nsw i64 %i.kr, %i.kp
  %i.kt = inttoptr i64 %i.ks to ptr               ; 2 uses
  %i.ku = select i1 %.not.i99, ptr null, ptr %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !715 ; 2 uses
  %.not.i100 = icmp eq i32 %i.kw, 0
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sext i32 %i.kw to i64
  %i.kz = shl nsw i64 %i.ky, 2
  %i.la = add nsw i64 %i.kz, %i.kx
  %i.lb = inttoptr i64 %i.la to ptr
  %i.lc = select i1 %.not.i100, ptr null, ptr %i.lb
  %i.ld = icmp eq ptr %i.lc, %i.b
  br i1 %i.ld, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.le = load ptr, ptr %i.dp, align 8, !tbaa !635 ; 2 uses
  %i.lf = ptrtoint ptr %i.le to i64
  %.not.i.i = icmp eq ptr %i.le, null
  %i.lg = or i64 %i.lf, 1
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 %i.lg
  store i64 %spec.select.i.i, ptr %i.kt, align 8, !tbaa !861
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ku, i64 33 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 1
  %i.lj = and i16 %i.li, -5
  store i16 %i.lj, ptr %i.lh, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0106.0188, i64 4 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.dn
  br i1 %i.ll, label %.preheader, label %bb.ab

._crit_edge193:                                   ; preds = %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.thread, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.ae:                                            ; preds = %.lr.ph192, %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.thread
  %i.lm = phi ptr [ %i.jy, %.lr.ph192 ], [ %i.ny, %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.thread ]
  %.071191 = phi i64 [ 0, %.lr.ph192 ], [ %i.nw, %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.thread ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %.071191 ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !591 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.lp, align 8 ; 8 uses
  %.sroa.4.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx195, align 8
  %.not185 = icmp eq i8 %.sroa.4.0.copyload, 0
  br i1 %.not185, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !715 ; 2 uses
  %.not.i103 = icmp eq i32 %i.lr, 0
  %i.ls = ptrtoint ptr %i.lq to i64               ; 2 uses
  %i.lt = sext i32 %i.lr to i64
  %i.lu = shl nsw i64 %i.lt, 2
  %i.lv = add nsw i64 %i.lu, %i.ls                ; 2 uses
  %i.lw = inttoptr i64 %i.lv to ptr
  %.not77.not186 = icmp eq i64 %i.lv, 0
  %.not77.not = select i1 %.not.i103, i1 true, i1 %.not77.not186
  br i1 %.not77.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %11, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.lx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull align 1 dereferenceable(29) @.str.43, i64 noundef 28) #16 ; 0 uses
  %i.ly = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.0.copyload) #16 ; 0 uses
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(408) %11)
  store ptr %i.kb, ptr %i.ka, align 8, !tbaa !170
  %i.lz = load i64, ptr %i.kd, align 8
  %i.ma = getelementptr inbounds i8, ptr %i.ka, i64 %i.lz
  store ptr %i.kc, ptr %i.ma, align 8, !tbaa !170
  store ptr %i.ke, ptr %i.jz, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kf, align 8, !tbaa !170
  %i.mb = load ptr, ptr %i.kg, align 8, !tbaa !598 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.kh
  br i1 %i.mc, label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  %i.md = load i64, ptr %i.kh, align 8, !tbaa !177
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #34
  br label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit

_ZN4mold5ErrorINS_6X86_64EED2Ev.exit:             ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kf, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ki) #16
  store ptr %i.kj, ptr %i.ka, align 8, !tbaa !170
  %i.mf = load i64, ptr %i.kl, align 8
  %i.mg = getelementptr inbounds i8, ptr %i.ka, i64 %i.mf
  store ptr %i.kk, ptr %i.mg, align 8, !tbaa !170
  store i64 0, ptr %i.km, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kn) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.mh = load ptr, ptr %i.dg, align 8, !tbaa !862
  %i.mi = getelementptr inbounds nuw [24 x i8], ptr %i.mh, i64 %.071191
  %i.mj = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !570
  %i.mk = icmp eq ptr %.sroa.0.0.copyload, %i.mj
  br i1 %i.mk, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !568
  %i.mo = sext i32 %i.mn to i64
  %i.mp = load ptr, ptr %i.ml, align 8, !tbaa !862
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %i.mp, i64 %i.mo
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit:        ; preds = %bb.ah, %bb.ai
  %.0.i = phi ptr [ %i.mq, %bb.ai ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.ah ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = and i8 %i.ms, 15
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mi, i64 28 ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1
  %i.mw = and i8 %i.mv, -16
  %i.mx = or disjoint i8 %i.mw, %i.mt
  store i8 %i.mx, ptr %i.mu, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 33
  %i.mz = load i16, ptr %i.my, align 1
  %i.na = and i16 %i.mz, 4
  %.not.i.i104 = icmp eq i16 %i.na, 0
  br i1 %.not.i.i104, label %bb.aj, label %_ZNK4mold6SymbolINS_6X86_64EE11is_absoluteEv.exit.thread

bb.aj:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit
  %i.nb = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !570
  %i.nc = icmp eq ptr %.sroa.0.0.copyload, %i.nb
  br i1 %i.nc, label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nd = load i32, ptr %i.lq, align 4, !tbaa !715
  %i.ne = sext i32 %i.nd to i64
  %i.nf = shl nsw i64 %i.ne, 2
  %i.ng = add nsw i64 %i.nf, %i.ls
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !568
  %i.nl = sext i32 %i.nk to i64
  %i.nm = load ptr, ptr %i.ni, align 8, !tbaa !862
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.nm, i64 %i.nl
  br label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i = phi ptr [ %i.nn, %bb.ak ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.aj ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.no, align 1
end_hunk_1
begin_hunk_2_@_ZN4moldL19get_start_stop_nameINS_6X86_64EEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERNS_7ContextIT_EERNS_5ChunkISB_EE:bb.a
  %.pre18.pre = load ptr, ptr %3, align 8, !tbaa !598 ; 2 uses
  %.not13 = icmp eq i64 %.pre, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread
  %.ph = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread ]
  %.ph57 = phi ptr [ %.pre18.pre21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit ], [ %.pre18.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread
  %i.cj = phi ptr [ %.pre18.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread ], [ %.pre18.pre21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16 ], [ %i.db, %bb.ad ] ; 2 uses
  %.lcssa = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16 ], [ %i.da, %bb.ad ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !173
  %i.cl = icmp eq ptr %i.cj, %i.as
  br i1 %i.cl, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.ab:                                            ; preds = %._crit_edge
  %i.cm = icmp ult i64 %.lcssa, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %.lcssa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.cn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %._crit_edge
  store ptr %i.cj, ptr %0, align 8, !tbaa !598
  %i.co = load i64, ptr %i.as, align 8, !tbaa !177
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa, ptr %i.cp, align 8, !tbaa !176
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.cq, align 8, !tbaa !859
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %i.cr = phi i64 [ %i.da, %bb.ad ], [ %.ph, %.lr.ph.preheader ]
  %i.cs = phi ptr [ %i.db, %bb.ad ], [ %.ph57, %.lr.ph.preheader ] ; 2 uses
  %.012 = phi i64 [ %i.dc, %bb.ad ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.012 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !177 ; 2 uses
  %i.cv = and i8 %i.cu, -33
  %i.cw = add i8 %i.cv, -65
  %or.cond11.i = icmp ult i8 %i.cw, 26
  %i.cx = add i8 %i.cu, -48
  %i.cy = icmp ult i8 %i.cx, 10
  %i.cz = or i1 %i.cy, %or.cond11.i
  br i1 %i.cz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  store i8 95, ptr %i.ct, align 1, !tbaa !177
  %.pre15 = load ptr, ptr %3, align 8, !tbaa !598
  %.pre17 = load i64, ptr %i.ba, align 8, !tbaa !176
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %i.da = phi i64 [ %i.cr, %.lr.ph ], [ %.pre17, %bb.ac ] ; 3 uses
  %i.db = phi ptr [ %i.cs, %.lr.ph ], [ %.pre15, %bb.ac ] ; 2 uses
  %i.dc = add nuw nsw i64 %.012, 1                ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.da
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !2366

bb.ae:                                            ; preds = %_ZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.b, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.de, align 8, !tbaa !859
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #4

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.mold::Warn", align 8        ; 13 uses
  %2 = alloca %"class.mold::Error", align 8       ; 12 uses
  %3 = alloca %"class.mold::Warn", align 8        ; 13 uses
  %4 = alloca %"class.mold::Error", align 8       ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2369
  %i.c = icmp eq i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13088
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !577  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13096
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !577  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13136
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.l = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 5 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 4 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -24      ; 4 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.v = getelementptr i8, ptr %i.t, i64 -24      ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 136
  br label %bb.b

._crit_edge:                                      ; preds = %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25
  %.sroa.035.042 = phi ptr [ %i.e, %.lr.ph ], [ %i.dv, %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25 ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.035.042, align 8, !tbaa !299 ; 7 uses
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !552
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 784 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 768 ; 4 uses
  %.not7.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not7.i.i.i, label %.loopexit41, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.bk, %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i ], [ %i.bc, %bb.c ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !2371
  %i.bg = icmp eq i32 %i.bf, -1073741822
  br i1 %i.bg, label %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i, label %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i

_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !2372
  %i.bj = and i32 %i.bi, 1
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i, label %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i, label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit

_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i: ; preds = %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i, %.lr.ph.i.i.i
  %i.bk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.05.i.i.i) #38 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.bk, %i.bd
  br i1 %.not8.i.i.i, label %.loopexit41, label %.lr.ph.i.i.i, !llvm.loop !2368

.loopexit41:                                      ; preds = %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i, %bb.c
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.loopexit41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %1, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.bl = load i8, ptr %i.y, align 8, !tbaa !770, !range !613, !noundef !599
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit: ; preds = %bb.d
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(992) %i.ay) #16 ; 0 uses
  %.pre = load i8, ptr %i.y, align 8, !tbaa !770, !range !613
  %i.bo = trunc nuw i8 %.pre to i1
  br i1 %i.bo, label %_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 1 dereferenceable(24) @.str.44, i64 noundef 23) #16 ; 0 uses
  %.pre43 = load i8, ptr %i.y, align 8, !tbaa !770, !range !613
  %i.bq = trunc nuw i8 %.pre43 to i1
  br i1 %i.bq, label %_ZN4mold4WarnINS_6X86_64EElsIRA39_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA39_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 1 dereferenceable(39) @.str.45, i64 noundef 38) #16 ; 0 uses
  %.pre44 = load i8, ptr %i.y, align 8, !tbaa !770, !range !613
  %i.bs = trunc nuw i8 %.pre44 to i1
  store i8 0, ptr %i.y, align 8, !tbaa !770
  br i1 %i.bs, label %bb.e, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.e:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA39_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %1)
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !170
  %i.bt = load i64, ptr %i.n, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.aa, i64 %i.bt
  store ptr %i.m, ptr %i.bu, align 8, !tbaa !170
  store ptr %i.o, ptr %i.z, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !170
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !598 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ad
  br i1 %i.bw, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !177
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #34
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #16
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !170
  %i.bz = load i64, ptr %i.v, align 8
  %i.ca = getelementptr inbounds i8, ptr %i.aa, i64 %i.bz
  store ptr %i.u, ptr %i.ca, align 8, !tbaa !170
  store i64 0, ptr %i.af, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ag) #16
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %bb.d, %_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA39_KcEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit

bb.f:                                             ; preds = %.loopexit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(992) %i.ay) #16 ; 0 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(22) @.str.46, i64 noundef 21) #16 ; 0 uses
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(39) @.str.45, i64 noundef 38) #16 ; 0 uses
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(408) %2)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !170
  %i.ce = load i64, ptr %i.n, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.k, i64 %i.ce
  store ptr %i.m, ptr %i.cf, align 8, !tbaa !170
  store ptr %i.o, ptr %i.j, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !170
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !598 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.r
  br i1 %i.ch, label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !177
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #34
  br label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit

_ZN4mold5ErrorINS_6X86_64EED2Ev.exit:             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #16
  store ptr %i.t, ptr %i.k, align 8, !tbaa !170
  %i.ck = load i64, ptr %i.v, align 8
  %i.cl = getelementptr inbounds i8, ptr %i.k, i64 %i.ck
  store ptr %i.u, ptr %i.cl, align 8, !tbaa !170
  store i64 0, ptr %i.w, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.x) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit

_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit: ; preds = %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit, %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !196 ; 2 uses
  %.not7.i.i.i17 = icmp eq ptr %i.cm, %i.bd
  br i1 %.not7.i.i.i17, label %.loopexit, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit, %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i20
  %.sroa.02.05.i.i.i19 = phi ptr [ %i.ct, %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i20 ], [ %i.cm, %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i19, i64 32
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !2371
  %i.cp = icmp eq i32 %i.co, -1073741822
  br i1 %i.cp, label %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i23, label %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i20

_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i23: ; preds = %.lr.ph.i.i.i18
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i19, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !2372
  %i.cs = and i32 %i.cr, 2
  %.not.i.i.i24 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i24, label %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i20, label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25

_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i20: ; preds = %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i23, %.lr.ph.i.i.i18
  %i.ct = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.05.i.i.i19) #38 ; 2 uses
  %.not8.i.i.i21 = icmp eq ptr %i.ct, %i.bd
  br i1 %.not8.i.i.i21, label %.loopexit, label %.lr.ph.i.i.i18, !llvm.loop !2368

.loopexit:                                        ; preds = %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.thread.i.i.i20, %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit
  br i1 %i.c, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.cu = load i8, ptr %i.ap, align 8, !tbaa !770, !range !613, !noundef !599
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit26, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit31

_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit26: ; preds = %bb.g
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(992) %i.ay) #16 ; 0 uses
  %.pre45 = load i8, ptr %i.ap, align 8, !tbaa !770, !range !613
  %i.cx = trunc nuw i8 %.pre45 to i1
  br i1 %i.cx, label %_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit27, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit31

_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit27: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit26
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 1 dereferenceable(24) @.str.44, i64 noundef 23) #16 ; 0 uses
  %.pre46 = load i8, ptr %i.ap, align 8, !tbaa !770, !range !613
  %i.cz = trunc nuw i8 %.pre46 to i1
  br i1 %i.cz, label %_ZN4mold4WarnINS_6X86_64EElsIRA41_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit31

_ZN4mold4WarnINS_6X86_64EElsIRA41_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit27
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 1 dereferenceable(41) @.str.47, i64 noundef 40) #16 ; 0 uses
  %.pre47 = load i8, ptr %i.ap, align 8, !tbaa !770, !range !613
  %i.db = trunc nuw i8 %.pre47 to i1
  store i8 0, ptr %i.ap, align 8, !tbaa !770
  br i1 %i.db, label %bb.h, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit31

bb.h:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA41_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %3)
  store ptr %i.l, ptr %i.ar, align 8, !tbaa !170
  %i.dc = load i64, ptr %i.n, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.ar, i64 %i.dc
  store ptr %i.m, ptr %i.dd, align 8, !tbaa !170
  store ptr %i.o, ptr %i.aq, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !170
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !598 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.au
  br i1 %i.df, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %bb.h
  %i.dg = load i64, ptr %i.au, align 8, !tbaa !177
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #34
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i29

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #16
  store ptr %i.t, ptr %i.ar, align 8, !tbaa !170
  %i.di = load i64, ptr %i.v, align 8
  %i.dj = getelementptr inbounds i8, ptr %i.ar, i64 %i.di
  store ptr %i.u, ptr %i.dj, align 8, !tbaa !170
  store i64 0, ptr %i.aw, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #16
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit31

_ZN4mold4WarnINS_6X86_64EED2Ev.exit31:            ; preds = %bb.g, %_ZN4mold4WarnINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_.exit26, %_ZN4mold4WarnINS_6X86_64EElsIRA24_KcEERS2_OT_.exit27, %_ZN4mold4WarnINS_6X86_64EElsIRA41_KcEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25

bb.i:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(992) %i.ay) #16 ; 0 uses
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 1 dereferenceable(22) @.str.46, i64 noundef 21) #16 ; 0 uses
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 1 dereferenceable(41) @.str.47, i64 noundef 40) #16 ; 0 uses
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(408) %4)
  store ptr %i.l, ptr %i.ai, align 8, !tbaa !170
  %i.dn = load i64, ptr %i.n, align 8
  %i.do = getelementptr inbounds i8, ptr %i.ai, i64 %i.dn
  store ptr %i.m, ptr %i.do, align 8, !tbaa !170
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !170
  %i.dp = load ptr, ptr %i.ak, align 8, !tbaa !598 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.al
  br i1 %i.dq, label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %bb.i
  %i.dr = load i64, ptr %i.al, align 8, !tbaa !177
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit34

_ZN4mold5ErrorINS_6X86_64EED2Ev.exit34:           ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #16
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !170
  %i.dt = load i64, ptr %i.v, align 8
  %i.du = getelementptr inbounds i8, ptr %i.ai, i64 %i.dt
  store ptr %i.u, ptr %i.du, align 8, !tbaa !170
  store i64 0, ptr %i.an, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25

_ZZN4mold16check_cet_errorsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_10ObjectFileIS1_EEjE_clES8_j.exit25: ; preds = %_ZSt8__invokeIRZZN4mold16check_cet_errorsINS0_6X86_64EEEvRNS0_7ContextIT_EEENKUlPNS0_10ObjectFileIS2_EEjE_clES9_jEUlSt4pairIjjEE_JRSB_IKjjEEENSt15__invoke_resultIS4_JDpT0_EE4typeEOS4_DpOSJ_.exit.i.i.i23, %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit34, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit31, %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.035.042, i64 8 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.g
  br i1 %i.dw, label %._crit_edge, label %bb.b
}

declare void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #4

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold19apply_section_alignINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.c = load i64, ptr %i.b, align 8, !tbaa !863
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !831  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !831  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.014.017 = phi ptr [ %i.u, %bb.e ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.014.017, align 8, !tbaa !618 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(184) %i.j) #16 ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = tail call ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !865
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %i.s, ptr %i.t, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.017, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold18print_dependenciesINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %2 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %3 = alloca %"class.mold::ExactArray", align 8  ; 7 uses
  %4 = alloca %"class.mold::Out", align 8         ; 20 uses
  %5 = alloca %class.anon.509, align 8            ; 5 uses
  %6 = alloca %"class.std::unordered_set.510", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr @_ZSt4cout, ptr %4, align 8, !tbaa !867
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 352
  store ptr null, ptr %i.c, align 8, !tbaa !881
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 360
  store i8 0, ptr %i.d, align 8, !tbaa !882
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 361
  store i8 0, ptr %i.e, align 1, !tbaa !883
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !170
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !772
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef null) #16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !170
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !170
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.q, i64 %i.y
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef null) #16
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !170
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %i.a, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.b, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.q, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !170
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !170
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 24, ptr %i.ai, align 8, !tbaa !887
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 4 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !173
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 0, ptr %i.al, align 8, !tbaa !176
  store i8 0, ptr %i.ak, align 8, !tbaa !177
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !170
end_hunk_2
begin_hunk_3_@_ZN4mold16scan_relocationsINS_6X86_64EEEvRNS_7ContextIT_EE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i1.i, i64 4
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = and i8 %i.fs, 15
  %i.fu = icmp eq i8 %i.ft, 2
  br i1 %i.fu, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread, label %bb.t

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread: ; preds = %bb.q, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit
  %i.fv = load i16, ptr %i.dr, align 1
  %i.fw = or i16 %i.fv, 24
  store i16 %i.fw, ptr %i.dr, align 1
  %i.fx = load ptr, ptr %i.cv, align 8, !tbaa !633
  call void @_ZN4mold10PltSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208) %i.fx, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %bb.x

bb.t:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit, %bb.n
  %i.fy = load atomic i8, ptr %i.dv monotonic, align 2
  %i.fz = and i8 %i.fy, 2
  %.not72 = icmp eq i8 %i.fz, 0
  br i1 %.not72, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = load atomic i8, ptr %i.dv monotonic, align 2
  %i.gb = and i8 %i.ga, 1
  %.not73 = icmp eq i8 %i.gb, 0
  br i1 %.not73, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = load ptr, ptr %i.cw, align 8, !tbaa !634
  call void @_ZN4mold13PltGotSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208) %i.gc, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gd = load ptr, ptr %i.cv, align 8, !tbaa !633
  call void @_ZN4mold10PltSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208) %i.gd, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.v, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread
  %i.ge = load atomic i8, ptr %i.dv monotonic, align 2
  %i.gf = and i8 %i.ge, 8
  %.not74 = icmp eq i8 %i.gf, 0
  br i1 %.not74, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gg = load ptr, ptr %i.cu, align 8, !tbaa !628
  call void @_ZN4mold10GotSectionINS_6X86_64EE16add_gottp_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288) %i.gg, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gh = load atomic i8, ptr %i.dv monotonic, align 2
  %i.gi = and i8 %i.gh, 16
  %.not75 = icmp eq i8 %i.gi, 0
  br i1 %.not75, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = load ptr, ptr %i.cu, align 8, !tbaa !628
  call void @_ZN4mold10GotSectionINS_6X86_64EE16add_tlsgd_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288) %i.gj, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gk = load atomic i8, ptr %i.dv monotonic, align 2
  %i.gl = and i8 %i.gk, 32
  %.not76 = icmp eq i8 %i.gl, 0
  br i1 %.not76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load ptr, ptr %i.cu, align 8, !tbaa !628
  call void @_ZN4mold10GotSectionINS_6X86_64EE18add_tlsdesc_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288) %i.gm, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gn = load atomic i8, ptr %i.dv monotonic, align 2
  %i.go = and i8 %i.gn, 4
  %.not77 = icmp eq i8 %i.go, 0
  br i1 %.not77, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !570
  %i.gq = icmp eq ptr %i.dd, %i.gp                ; 2 uses
  br i1 %i.gq, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i81, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !715
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sext i32 %i.gs to i64
  %i.gv = shl nsw i64 %i.gu, 2
  %i.gw = add nsw i64 %i.gv, %i.gt
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !568
  %i.hb = sext i32 %i.ha to i64
  %i.hc = load ptr, ptr %i.gy, align 8, !tbaa !862
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.hb
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i81

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i81:    ; preds = %bb.af, %bb.ae
  %.0.i.i82 = phi ptr [ %i.hd, %bb.af ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.ae ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i82, i64 4
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = and i8 %i.hf, 15
  %i.hh = icmp eq i8 %i.hg, 10
  br i1 %i.hh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i81
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !715
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sext i32 %i.hj to i64
  %i.hm = shl nsw i64 %i.hl, 2
  %i.hn = add nsw i64 %i.hm, %i.hk
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 120
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !773, !range !613, !noundef !599
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i81
  br i1 %i.gq, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !715
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sext i32 %i.ht to i64
  %i.hw = shl nsw i64 %i.hv, 2
  %i.hx = add nsw i64 %i.hw, %i.hu
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !568
  %i.ic = sext i32 %i.ib to i64
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !862
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.ic
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86:  ; preds = %bb.ah, %bb.ai
  %.0.i1.i84 = phi ptr [ %i.ie, %bb.ai ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.ah ]
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i1.i84, i64 4
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = and i8 %i.ig, 15
  %.not78 = icmp eq i8 %i.ih, 2
  br i1 %.not78, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86
  %i.ii = load i8, ptr %i.cx, align 2, !tbaa !651, !range !613, !noundef !599
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !715
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sext i32 %i.il to i64
  %i.io = shl nsw i64 %i.in, 2
  %i.ip = add nsw i64 %i.io, %i.im
  %i.iq = inttoptr i64 %i.ip to ptr               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 120
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !773, !range !613, !noundef !599
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.iu = call noundef zeroext i1 @_ZN4mold10SharedFileINS_6X86_64EE11is_readonlyEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(480) %i.iq, ptr noundef nonnull %i.dd) #16
  br i1 %i.iu, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread.sink.split

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread.sink.split: ; preds = %bb.al, %bb.am
  %.sink.in = phi ptr [ %i.cy, %bb.am ], [ %i.cz, %bb.al ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !2491
  call void @_ZN4mold14CopyrelSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208) %.sink, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %i.dd) #16
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86.thread.sink.split, %bb.ag, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit86, %bb.ad
  store atomic i8 0, ptr %i.dv monotonic, align 2
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.090.099, i64 8 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.cq
  br i1 %i.iw, label %._crit_edge, label %bb.i

bb.an:                                            ; preds = %._crit_edge
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 2707
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !2492, !range !613, !noundef !599
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %12, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 408 ; 3 uses
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !770, !range !613, !noundef !599
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN4mold4WarnINS_6X86_64EElsIRA40_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA40_KcEERS2_OT_.exit: ; preds = %bb.ao
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.je = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull align 1 dereferenceable(40) @.str.76, i64 noundef 39) #16 ; 0 uses
  %.pre103 = load i8, ptr %i.ja, align 8, !tbaa !770, !range !613
  %i.jf = trunc nuw i8 %.pre103 to i1
  store i8 0, ptr %i.ja, align 8, !tbaa !770
  br i1 %i.jf, label %bb.ap, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.ap:                                            ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA40_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %12)
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.jh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !170
  %i.ji = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.jj = getelementptr i8, ptr %i.jh, i64 -24
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds i8, ptr %i.jg, i64 %i.jk
  store ptr %i.ji, ptr %i.jl, align 8, !tbaa !170
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !170
  %i.jo = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jo, align 8, !tbaa !170
  %i.jp = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !598 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !177
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #34
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jo, align 8, !tbaa !170
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 88
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jv) #16
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.jw, ptr %i.jg, align 8, !tbaa !170
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.jy = getelementptr i8, ptr %i.jw, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds i8, ptr %i.jg, i64 %i.jz
  store ptr %i.jx, ptr %i.ka, align 8, !tbaa !170
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.kb, align 8, !tbaa !772
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 136
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kc) #16
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %bb.ao, %_ZN4mold4WarnINS_6X86_64EElsIRA40_KcEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4mold4WarnINS_6X86_64EED2Ev.exit, %bb.an, %._crit_edge
  %i.kd = load ptr, ptr %11, align 8, !tbaa !666  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ke = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !976
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ki) #34
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.kj = load ptr, ptr %9, align 8, !tbaa !970   ; 3 uses
  %i.kk = load ptr, ptr %i.ar, align 8, !tbaa !2486 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kj, %i.kk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i ], [ %i.kj, %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.kl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !666 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !976
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kq) #34
  br label %_ZSt8_DestroyISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i: ; preds = %bb.as, %.lr.ph.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.kr, %i.kk
  br i1 %.not.i.i.i88, label %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2484

_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !970
  br label %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i

_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i, %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit
  %i.ks = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i ], [ %i.kj, %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN4mold6SymbolINS0_6X86_64EEESaIS4_EESaIS6_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i
  %i.kt = load ptr, ptr %i.as, align 8, !tbaa !2485
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kw) #34
  br label %_ZNSt6vectorIS_IPN4mold6SymbolINS0_6X86_64EEESaIS4_EESaIS6_EED2Ev.exit

_ZNSt6vectorIS_IPN4mold6SymbolINS0_6X86_64EEESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.kx = load ptr, ptr %8, align 8, !tbaa !712   ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIS_IPN4mold6SymbolINS0_6X86_64EEESaIS4_EESaIS6_EED2Ev.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !713
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.kx to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lc) #34
  br label %_ZNSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPN4mold6SymbolINS0_6X86_64EEESaIS4_EESaIS6_EED2Ev.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ld = load ptr, ptr %4, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.ld) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

declare void @_ZN4mold10GotSectionINS_6X86_64EE9add_tlsldERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(14448)) local_unnamed_addr #4

declare void @_ZN4mold13DynsymSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold10GotSectionINS_6X86_64EE14add_got_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold10PltSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold13PltGotSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold10GotSectionINS_6X86_64EE16add_gottp_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold10GotSectionINS_6X86_64EE16add_tlsgd_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold10GotSectionINS_6X86_64EE18add_tlsdesc_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4mold10SharedFileINS_6X86_64EE11is_readonlyEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(480), ptr noundef) local_unnamed_addr #4

declare void @_ZN4mold14CopyrelSectionINS_6X86_64EE10add_symbolERNS_7ContextIS1_EEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold19report_undef_errorsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 31 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.mold::Error", align 8       ; 12 uses
  %4 = alloca %"class.mold::Warn", align 8        ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !978
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %_ZN4mold7ContextINS_6X86_64EE10checkpointEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13248 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13256
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8, !noalias !2500 ; 2 uses
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 63 to ptr)
  br i1 %i.g, label %.lr.ph32, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13280
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.f
  %i.j = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %i.d, %.preheader.i.i.preheader ]
  %.010.in.i.i.i = phi i64 [ %.010.i.i.i, %bb.f ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.010.i.i.i = add i64 %.010.in.i.i.i, 1         ; 6 uses
  %i.k = load atomic i64, ptr %i.h monotonic, align 8, !noalias !2500
  %.not.i.i.i = icmp ugt i64 %.010.i.i.i, %i.k
  br i1 %.not.i.i.i, label %._crit_edge33, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.l = add i64 %.010.in.i.i.i, -1
  %i.m = and i64 %.010.i.i.i, %i.l
  %.not11.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not11.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = or i64 %.010.i.i.i, 1
  %i.p = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true) ; 2 uses
  %i.q = xor i64 %i.p, 63
  %i.r = lshr exact i64 -9223372036854775808, %i.p
  %i.s = and i64 %i.r, -2
  %i.t = sub i64 %.010.i.i.i, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q
  %i.v = load atomic ptr, ptr %i.u acquire, align 8, !noalias !2500
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
end_hunk_3
begin_hunk_4_@_ZN4mold19report_undef_errorsINS_6X86_64EEEvRNS_7ContextIT_EE:bb.a
  call void @_exit(i32 noundef 1) #37
  unreachable

_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit.outer: ; preds = %bb.u, %.lr.ph32
  %.sroa.6.031.ph = phi i64 [ %.sroa.6.1, %.lr.ph32 ], [ %.010.i.i, %bb.u ]
  %.sroa.16.030.ph = phi ptr [ %.sroa.16.2, %.lr.ph32 ], [ %i.gl, %bb.u ]
  %.sroa.10.029.ph = phi ptr [ %.sroa.10.2, %.lr.ph32 ], [ %storemerge.i.i, %bb.u ]
  br label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit

_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit: ; preds = %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit.outer, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.sroa.16.030 = phi ptr [ %i.fw, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.sroa.16.030.ph, %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit.outer ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.16.030, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2502 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.16.030, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !779 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.16.030, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !778 ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 5                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aa) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !170
  store ptr null, ptr %i.ab, align 8, !tbaa !881
  store i8 0, ptr %i.ac, align 8, !tbaa !882
  store i8 0, ptr %i.ad, align 1, !tbaa !883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  store ptr %i.af, ptr %1, align 8, !tbaa !170
  %i.cn = load i64, ptr %i.ah, align 8
  %i.co = getelementptr inbounds i8, ptr %1, i64 %i.cn
  store ptr %i.ag, ptr %i.co, align 8, !tbaa !170
  store i64 0, ptr %i.ai, align 8, !tbaa !772
  %i.cp = load ptr, ptr %1, align 8, !tbaa !170
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cs, ptr noundef null) #16
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !170
  %i.ct = load i64, ptr %i.am, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.aj, i64 %i.ct
  store ptr %i.al, ptr %i.cu, align 8, !tbaa !170
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !170
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %i.aj, i64 %i.cx
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cy, ptr noundef null) #16
  %i.cz = load i64, ptr %i.ap, align 8
  %i.da = getelementptr inbounds i8, ptr %1, i64 %i.cz
  store ptr %i.ao, ptr %i.da, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.aa, align 8, !tbaa !170
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.aj, align 8, !tbaa !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aq, align 8, !tbaa !170
  store i32 24, ptr %i.at, align 8, !tbaa !887
  store ptr %i.av, ptr %i.au, align 8, !tbaa !173
  store i64 0, ptr %i.aw, align 8, !tbaa !176
  store i8 0, ptr %i.av, align 8, !tbaa !177
  %i.db = load ptr, ptr %1, align 8, !tbaa !170
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.dd
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.de, ptr noundef nonnull %i.aq) #16
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.77, i64 noundef 18) #16 ; 0 uses
  %i.dg = load i8, ptr %i.ax, align 2, !tbaa !979, !range !613, !noundef !599
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit
  %i.di = call { i64, ptr } @_ZN4mold8demangleINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.ce) #16
  br label %bb.j

bb.i:                                             ; preds = %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit
  %i.dj = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %i.ce)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { i64, ptr } [ %i.di, %bb.h ], [ %i.dj, %bb.i ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, ptr } %.pn, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn, 1
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %.sroa.3.0, i64 noundef %.sroa.0.0) #16
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.56, i64 noundef 1) #16 ; 0 uses
  %.not = icmp eq ptr %i.ci, %i.cg
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.cm, i64 3)
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.dm = icmp ugt i64 %i.cm, 3
  br i1 %i.dm, label %bb.k, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.027 = phi i64 [ %i.ds, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %.027 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !598
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !176
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.do, i64 noundef %i.dq) #16 ; 0 uses
  %i.ds = add nuw nsw i64 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2495

bb.k:                                             ; preds = %._crit_edge
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.78, i64 noundef 15) #16 ; 0 uses
  %i.du = add nsw i64 %i.cm, -3
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %i.du) #16
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.79, i64 noundef 12) #16 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j, %bb.k, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  store ptr %i.ay, ptr %2, align 8, !tbaa !173, !alias.scope !2505
  store i64 0, ptr %i.az, align 8, !tbaa !176, !alias.scope !2505
  store i8 0, ptr %i.ay, align 8, !tbaa !177, !alias.scope !2505
  %i.dx = load ptr, ptr %i.ba, align 8, !tbaa !925, !noalias !2505 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dx, null
  %i.dy = load ptr, ptr %i.bb, align 8, !noalias !2505 ; 2 uses
  %i.dz = icmp ugt ptr %i.dx, %i.dy
  %.08.i.i.i = select i1 %i.dz, ptr %i.dx, ptr %i.dy ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  %i.ea = load ptr, ptr %i.bc, align 8, !tbaa !926, !noalias !2505 ; 2 uses
  %i.eb = ptrtoint ptr %.08.i.i.i to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.ea, i64 noundef %i.ed) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.m:                                             ; preds = %._crit_edge.thread
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.m
  %i.ef = load i64, ptr %i.az, align 8, !tbaa !176
  %i.eg = add i64 %i.ef, -1                       ; 2 uses
  store i64 %i.eg, ptr %i.az, align 8, !tbaa !176
  %i.eh = load ptr, ptr %2, align 8, !tbaa !598
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !177
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !978
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4mold5ErrorINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.el = load ptr, ptr %2, align 8, !tbaa !598
  %i.em = load i64, ptr %i.az, align 8, !tbaa !176
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.el, i64 noundef %i.em) #16 ; 0 uses
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(408) %3)
  store ptr %i.bg, ptr %i.br, align 8, !tbaa !170
  %i.eo = load i64, ptr %i.bi, align 8
  %i.ep = getelementptr inbounds i8, ptr %i.br, i64 %i.eo
  store ptr %i.bh, ptr %i.ep, align 8, !tbaa !170
  store ptr %i.bj, ptr %i.bq, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bs, align 8, !tbaa !170
  %i.eq = load ptr, ptr %i.bt, align 8, !tbaa !598 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bu
  br i1 %i.er, label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.es = load i64, ptr %i.bu, align 8, !tbaa !177
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit

_ZN4mold5ErrorINS_6X86_64EED2Ev.exit:             ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bs, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #16
  store ptr %i.af, ptr %i.br, align 8, !tbaa !170
  %i.eu = load i64, ptr %i.ah, align 8
  %i.ev = getelementptr inbounds i8, ptr %i.br, i64 %i.eu
  store ptr %i.ag, ptr %i.ev, align 8, !tbaa !170
  store i64 0, ptr %i.bw, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bx) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.q

bb.o:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.ew = load i8, ptr %i.bd, align 8, !tbaa !770, !range !613, !noundef !599
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit: ; preds = %bb.o
  %i.ey = load ptr, ptr %2, align 8, !tbaa !598
  %i.ez = load i64, ptr %i.az, align 8, !tbaa !176
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.ey, i64 noundef %i.ez) #16 ; 0 uses
  %.pre = load i8, ptr %i.bd, align 8, !tbaa !770, !range !613
  %i.fb = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.bd, align 8, !tbaa !770
  br i1 %i.fb, label %bb.p, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.p:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %4)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !170
  %i.fc = load i64, ptr %i.bi, align 8
  %i.fd = getelementptr inbounds i8, ptr %i.bf, i64 %i.fc
  store ptr %i.bh, ptr %i.fd, align 8, !tbaa !170
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !170
  %i.fe = load ptr, ptr %i.bl, align 8, !tbaa !598 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.bm
  br i1 %i.ff, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.fg = load i64, ptr %i.bm, align 8, !tbaa !177
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #34
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #16
  store ptr %i.af, ptr %i.bf, align 8, !tbaa !170
  %i.fi = load i64, ptr %i.ah, align 8
  %i.fj = getelementptr inbounds i8, ptr %i.bf, i64 %i.fi
  store ptr %i.ag, ptr %i.fj, align 8, !tbaa !170
  store i64 0, ptr %i.bo, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bp) #16
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %bb.o, %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.q

bb.q:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EED2Ev.exit, %_ZN4mold5ErrorINS_6X86_64EED2Ev.exit
  %i.fk = load ptr, ptr %2, align 8, !tbaa !598   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ay
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.fm = load i64, ptr %i.ay, align 8, !tbaa !177
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store ptr %i.bg, ptr %1, align 8, !tbaa !170
  %i.fo = load i64, ptr %i.bi, align 8
  %i.fp = getelementptr inbounds i8, ptr %1, i64 %i.fo
  store ptr %i.bh, ptr %i.fp, align 8, !tbaa !170
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aq, align 8, !tbaa !170
  %i.fq = load ptr, ptr %i.au, align 8, !tbaa !598 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.av
  br i1 %i.fr, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fs = load i64, ptr %i.av, align 8, !tbaa !177
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #34
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aq, align 8, !tbaa !170
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #16
  store ptr %i.af, ptr %1, align 8, !tbaa !170
  %i.fu = load i64, ptr %i.ah, align 8
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %i.fu
  store ptr %i.ag, ptr %i.fv, align 8, !tbaa !170
  store i64 0, ptr %i.ai, align 8, !tbaa !772
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.fw = load ptr, ptr %.sroa.16.030, align 8, !tbaa !2511 ; 2 uses
  %.not.i17 = icmp eq ptr %i.fw, null
  br i1 %.not.i17, label %.preheader, label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit

.preheader:                                       ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.u
  %.sroa.10.3 = phi ptr [ %storemerge.i.i, %bb.u ], [ %.sroa.10.029.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.010.in.i.i = phi i64 [ %.010.i.i, %bb.u ], [ %.sroa.6.031.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.010.i.i = add i64 %.010.in.i.i, 1             ; 6 uses
  %i.fx = load atomic i64, ptr %i.by monotonic, align 8
  %.not.i.i18 = icmp ugt i64 %.010.i.i, %i.fx
  br i1 %.not.i.i18, label %._crit_edge33, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.fy = add i64 %.010.in.i.i, -1
  %i.fz = and i64 %.010.i.i, %i.fy
  %.not11.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not11.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.10.3, i64 16
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gb = or i64 %.010.i.i, 1
  %i.gc = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gb, i1 true) ; 2 uses
  %i.gd = xor i64 %i.gc, 63
  %i.ge = lshr exact i64 -9223372036854775808, %i.gc
  %i.gf = and i64 %i.ge, -2
  %i.gg = sub i64 %.010.i.i, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.gd
  %i.gi = load atomic ptr, ptr %i.gh acquire, align 8
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gg
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi ptr [ %i.ga, %bb.s ], [ %i.gj, %bb.t ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.gl = load atomic ptr, ptr %i.gk monotonic, align 8 ; 2 uses
  %i.gm = icmp ugt ptr %i.gl, inttoptr (i64 63 to ptr)
  br i1 %i.gm, label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold6SymbolINS4_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EENS0_2d116tbb_hash_compareIS8_EENSI_13tbb_allocatorISt4pairIKS8_SH_EEEEESO_EppEv.exit.outer, label %.preheader

_ZN4mold7ContextINS_6X86_64EE10checkpointEv.exit: ; preds = %._crit_edge33, %bb.a
  ret void
}

declare { i64, ptr } @_ZN4mold8demangleINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold21create_reloc_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %1 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 6 uses
  %2 = alloca %"class.tbb::detail::d1::parallel_for_body_wrapper.1881", align 8 ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 4 uses
  %4 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %class.anon.627, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !173
  %i.b = call noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #36 ; 3 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !598
  store i64 21, ptr %i.a, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.80, i64 21, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 21, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 0, ptr %i.d, align 1, !tbaa !177
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null)
  %i.e = load ptr, ptr %5, align 8, !tbaa !598    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.g = load i64, ptr %i.a, align 8, !tbaa !177
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13192 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 13200 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !615
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !619
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZN3tbb6detail2d112parallel_forIlZN4mold21create_reloc_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit, label %_ZN3tbb6detail2d112parallel_forIlZN4mold21create_reloc_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.thread

_ZN3tbb6detail2d112parallel_forIlZN4mold21create_reloc_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %._crit_edge

_ZN3tbb6detail2d112parallel_forIlZN4mold21create_reloc_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 %i.p, ptr %1, align 8, !tbaa !674
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !675
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.s, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %6, ptr %2, align 8, !tbaa !672
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !981
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.u, align 8, !tbaa !982
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold21create_reloc_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !615
  %.pre18 = load ptr, ptr %i.i, align 8, !tbaa !619
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = ashr exact i64 %.pre22, 3             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.v = icmp sgt i64 %.pre24, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d112parallel_forIlZN4mold21create_reloc_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit
end_hunk_4
begin_hunk_5_@_ZN4mold21fix_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE:bb.a
  %i.ow = load ptr, ptr %8, align 8, !tbaa !598, !noalias !2606
  %i.ox = load i64, ptr %i.nd, align 8, !tbaa !176, !noalias !2606
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !2606
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.40, i64 noundef 7, ptr noundef %i.ow, i64 noundef %i.ox, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !2606
  %i.oy = load i64, ptr %i.nj, align 8, !tbaa !176
  %i.oz = add i64 %i.oy, 1
  %i.pa = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.oz) #36 ; 4 uses
  %i.pb = load ptr, ptr %10, align 8, !tbaa !598
  %i.pc = load i64, ptr %i.nj, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pa, ptr align 1 %i.pb, i64 %i.pc, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pc
  store i8 0, ptr %i.pd, align 1, !tbaa !177
  %i.pe = atomicrmw add ptr %i.nf, i64 1 seq_cst, align 8, !noalias !2607
  %i.pf = load atomic i64, ptr %i.ng monotonic, align 8, !noalias !2607
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %bb.bg, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit276

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  %i.ph = cmpxchg ptr %i.ng, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2607 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit276

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %bb.bg
  %i.pi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.nh, i64 noundef %i.pe), !noalias !2607
  store ptr %i.pa, ptr %i.pi, align 8, !tbaa !614, !noalias !2607
  %i.pj = load i64, ptr %i.nj, align 8, !tbaa !176
  %i.pk = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.pj, ptr nonnull %i.pa) #16 ; 3 uses
  %.not.i277 = icmp eq ptr %i.pk, null
  br i1 %.not.i277, label %_ZZN4mold21fix_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_6SymbolIS1_EERS3_lE0_clIPNS_5ChunkIS1_EEEEDaS8_S9_l.exit281, label %bb.bh

bb.bh:                                            ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit276
  %i.pl = ptrtoint ptr %i.nw to i64
  %i.pm = or i64 %i.pl, 1
  store i64 %i.pm, ptr %i.pk, align 8, !tbaa !861
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  %.0.copyload.i.i279 = load i64, ptr %i.pn, align 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %.0.copyload.i9.i280 = load i64, ptr %i.po, align 1
  %i.pp = add i64 %.0.copyload.i9.i280, %.0.copyload.i.i279
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i64 %i.pp, ptr %i.pq, align 8, !tbaa !601
  br label %_ZZN4mold21fix_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_6SymbolIS1_EERS3_lE0_clIPNS_5ChunkIS1_EEEEDaS8_S9_l.exit281

_ZZN4mold21fix_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_6SymbolIS1_EERS3_lE0_clIPNS_5ChunkIS1_EEEEDaS8_S9_l.exit281: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit276, %bb.bh
  %i.pr = load ptr, ptr %10, align 8, !tbaa !598  ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.nk
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZZN4mold21fix_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_6SymbolIS1_EERS3_lE0_clIPNS_5ChunkIS1_EEEEDaS8_S9_l.exit281
  %i.pt = load i64, ptr %i.nk, align 8, !tbaa !177
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZZN4mold21fix_synthetic_symbolsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_6SymbolIS1_EERS3_lE0_clIPNS_5ChunkIS1_EEEEDaS8_S9_l.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.pv = load i8, ptr %i.nl, align 8, !tbaa !860, !range !613, !noundef !599
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.bi, label %bb.bp

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.px = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  %.0.copyload.i285 = load i64, ptr %i.px, align 1 ; 3 uses
  %.val128 = load ptr, ptr %i.nm, align 8, !tbaa !621 ; 2 uses
  %i.py = getelementptr i8, ptr %.val128, i64 184
  %.val128.val = load ptr, ptr %i.py, align 8, !tbaa !2608 ; 2 uses
  %i.pz = getelementptr i8, ptr %.val128, i64 192
  %.val128.val129 = load ptr, ptr %i.pz, align 8, !tbaa !2608 ; 2 uses
  %i.qa = icmp eq ptr %.val128.val, %.val128.val129
  br i1 %i.qa, label %_ZN4moldL8to_paddrINS_6X86_64EEEmRNS_7ContextIT_EEm.exit, label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %bb.bi, %bb.bl
  %.sroa.01.011.i = phi ptr [ %i.qg, %bb.bl ], [ %.val128.val, %bb.bi ] ; 5 uses
  %.0.copyload.i.i287 = load i32, ptr %.sroa.01.011.i, align 1
  %i.qb = icmp eq i32 %.0.copyload.i.i287, 1
  br i1 %i.qb, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.lr.ph.i286
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 16
  %.0.copyload.i17.i = load i64, ptr %i.qc, align 1 ; 3 uses
  %.not.i288 = icmp ugt i64 %.0.copyload.i17.i, %.0.copyload.i285
  br i1 %.not.i288, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 40
  %.0.copyload.i19.i = load i64, ptr %i.qd, align 1
  %i.qe = add i64 %.0.copyload.i19.i, %.0.copyload.i17.i
  %i.qf = icmp ult i64 %.0.copyload.i285, %i.qe
  br i1 %i.qf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.lr.ph.i286
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 56 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %.val128.val129
  br i1 %i.qh, label %_ZN4moldL8to_paddrINS_6X86_64EEEmRNS_7ContextIT_EEm.exit, label %.lr.ph.i286

bb.bm:                                            ; preds = %bb.bk
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 24
  %.0.copyload.i20.i = load i64, ptr %i.qi, align 1
  %i.qj = sub i64 %.0.copyload.i285, %.0.copyload.i17.i
  %i.qk = add i64 %i.qj, %.0.copyload.i20.i
  br label %_ZN4moldL8to_paddrINS_6X86_64EEEmRNS_7ContextIT_EEm.exit

_ZN4moldL8to_paddrINS_6X86_64EEEmRNS_7ContextIT_EEm.exit: ; preds = %bb.bl, %bb.bi, %bb.bm
  %i.ql = phi i64 [ %i.qk, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.qm = load ptr, ptr %8, align 8, !tbaa !598, !noalias !2609
  %i.qn = load i64, ptr %i.nd, align 8, !tbaa !176, !noalias !2609
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !2609
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.41, i64 noundef 13, ptr noundef %i.qm, i64 noundef %i.qn, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !2609
  %i.qo = load i64, ptr %i.nn, align 8, !tbaa !176
  %i.qp = add i64 %i.qo, 1
  %i.qq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.qp) #36 ; 4 uses
  %i.qr = load ptr, ptr %11, align 8, !tbaa !598
  %i.qs = load i64, ptr %i.nn, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qq, ptr align 1 %i.qr, i64 %i.qs, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qs
  store i8 0, ptr %i.qt, align 1, !tbaa !177
  %i.qu = atomicrmw add ptr %i.nf, i64 1 seq_cst, align 8, !noalias !2610
  %i.qv = load atomic i64, ptr %i.ng monotonic, align 8, !noalias !2610
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %bb.bn, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit291

bb.bn:                                            ; preds = %_ZN4moldL8to_paddrINS_6X86_64EEEmRNS_7ContextIT_EEm.exit
  %i.qx = cmpxchg ptr %i.ng, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2610 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit291

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit291: ; preds = %_ZN4moldL8to_paddrINS_6X86_64EEEmRNS_7ContextIT_EEm.exit, %bb.bn
  %i.qy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.nh, i64 noundef %i.qu), !noalias !2610
  store ptr %i.qq, ptr %i.qy, align 8, !tbaa !614, !noalias !2610
  %i.qz = load i64, ptr %i.nn, align 8, !tbaa !176
  %i.ra = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.qz, ptr nonnull %i.qq) #16 ; 2 uses
  %i.rb = load ptr, ptr %11, align 8, !tbaa !598  ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.no
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit291
  %i.rd = load i64, ptr %i.no, align 8, !tbaa !177
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.rf = ptrtoint ptr %i.nw to i64
  %i.rg = or i64 %i.rf, 1                         ; 2 uses
  store i64 %i.rg, ptr %i.ra, align 8, !tbaa !861
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store i64 %i.ql, ptr %i.rh, align 8, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.ri = load ptr, ptr %8, align 8, !tbaa !598, !noalias !2611
  %i.rj = load i64, ptr %i.nd, align 8, !tbaa !176, !noalias !2611
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16, !noalias !2611
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.42, i64 noundef 12, ptr noundef %i.ri, i64 noundef %i.rj, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16, !noalias !2611
  %i.rk = load i64, ptr %i.np, align 8, !tbaa !176
  %i.rl = add i64 %i.rk, 1
  %i.rm = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.rl) #36 ; 4 uses
  %i.rn = load ptr, ptr %12, align 8, !tbaa !598
  %i.ro = load i64, ptr %i.np, align 8, !tbaa !176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rm, ptr align 1 %i.rn, i64 %i.ro, i1 false)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.ro
  store i8 0, ptr %i.rp, align 1, !tbaa !177
  %i.rq = atomicrmw add ptr %i.nf, i64 1 seq_cst, align 8, !noalias !2612
  %i.rr = load atomic i64, ptr %i.ng monotonic, align 8, !noalias !2612
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %bb.bo, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit299

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.rt = cmpxchg ptr %i.ng, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !2612 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit299

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.bo
  %i.ru = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.nh, i64 noundef %i.rq), !noalias !2612
  store ptr %i.rm, ptr %i.ru, align 8, !tbaa !614, !noalias !2612
  %i.rv = load i64, ptr %i.np, align 8, !tbaa !176
  %i.rw = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.rv, ptr nonnull %i.rm) #16 ; 2 uses
  %i.rx = load ptr, ptr %12, align 8, !tbaa !598  ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.nq
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit299
  %i.rz = load i64, ptr %i.nq, align 8, !tbaa !177
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  store i64 %i.rg, ptr %i.rw, align 8, !tbaa !861
  %i.sb = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %.0.copyload.i305 = load i64, ptr %i.sb, align 1
  %i.sc = add i64 %.0.copyload.i305, %i.ql
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store i64 %i.sc, ptr %i.sd, align 8, !tbaa !601
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.bc
  %i.se = load i8, ptr %i.nc, align 8, !tbaa !859, !range !613, !noundef !599
  %i.sf = trunc nuw i8 %i.se to i1
  store i8 0, ptr %i.nc, align 8, !tbaa !859
  br i1 %i.sf, label %bb.bq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bq:                                            ; preds = %bb.bp
  %i.sg = load ptr, ptr %8, align 8, !tbaa !598   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.nr
  br i1 %i.sh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bq
  %i.si = load i64, ptr %i.nr, align 8, !tbaa !177
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bq, %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0323.0423, i64 8 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %.sroa.19.0.lcssa518529
  br i1 %i.sl, label %.preheader, label %bb.bc

._crit_edge427:                                   ; preds = %bb.bt, %.preheader
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !582 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !582 ; 2 uses
  %i.sq = icmp eq ptr %i.sn, %i.sp
  br i1 %i.sq, label %._crit_edge431, label %.lr.ph430

.lr.ph426:                                        ; preds = %.preheader, %bb.bt
  %i.sr = phi ptr [ %i.tf, %bb.bt ], [ %i.nv, %.preheader ] ; 2 uses
  %i.ss = phi ptr [ %i.tg, %bb.bt ], [ %i.nu, %.preheader ]
  %.0425 = phi i64 [ %i.th, %bb.bt ], [ 0, %.preheader ] ; 2 uses
  %i.st = getelementptr inbounds nuw [24 x i8], ptr %i.sr, i64 %.0425 ; 3 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !591 ; 5 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.sv, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  switch i8 %.sroa.5.0.copyload, label %bb.bs [
    i8 1, label %bb.br
    i8 0, label %_ZSt3getIPN4mold6SymbolINS0_6X86_64EEEJS4_mEERT_RSt7variantIJDpT0_EE.exit
  ]

bb.br:                                            ; preds = %.lr.ph426
  store i64 0, ptr %i.su, align 8, !tbaa !861
  %i.sw = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store i64 %i.sw, ptr %i.sx, align 8, !tbaa !601
  br label %bb.bt

bb.bs:                                            ; preds = %.lr.ph426
  call void @abort() #37
  unreachable

_ZSt3getIPN4mold6SymbolINS0_6X86_64EEEJS4_mEERT_RSt7variantIJDpT0_EE.exit: ; preds = %.lr.ph426
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !601
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store i64 %i.sz, ptr %i.ta, align 8, !tbaa !601
  %i.tb = load i64, ptr %.sroa.0.0.copyload, align 8, !tbaa !594
  store i64 %i.tb, ptr %i.su, align 8, !tbaa !594
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.td = load atomic i8, ptr %i.tc monotonic, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  store atomic i8 %i.td, ptr %i.te monotonic, align 8
  %.pre = load ptr, ptr %i.nt, align 8, !tbaa !580
  %.pre445 = load ptr, ptr %i.ns, align 8, !tbaa !581
  br label %bb.bt

bb.bt:                                            ; preds = %_ZSt3getIPN4mold6SymbolINS0_6X86_64EEEJS4_mEERT_RSt7variantIJDpT0_EE.exit, %bb.br
  %i.tf = phi ptr [ %.pre445, %_ZSt3getIPN4mold6SymbolINS0_6X86_64EEEJS4_mEERT_RSt7variantIJDpT0_EE.exit ], [ %i.sr, %bb.br ] ; 2 uses
  %i.tg = phi ptr [ %.pre, %_ZSt3getIPN4mold6SymbolINS0_6X86_64EEEJS4_mEERT_RSt7variantIJDpT0_EE.exit ], [ %i.ss, %bb.br ] ; 2 uses
  %i.th = add nuw nsw i64 %.0425, 1               ; 2 uses
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = ptrtoint ptr %i.tf to i64
  %i.tk = sub i64 %i.ti, %i.tj
  %i.tl = sdiv exact i64 %i.tk, 24
  %i.tm = icmp ult i64 %i.th, %i.tl
  br i1 %i.tm, label %.lr.ph426, label %._crit_edge427, !llvm.loop !2594

._crit_edge431:                                   ; preds = %bb.bw, %._crit_edge427
  %.not.i.i.i309 = icmp eq ptr %.sroa.0.0.lcssa517530, null
  br i1 %.not.i.i.i309, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge431
  %i.tn = ptrtoint ptr %.sroa.0.0.lcssa517530 to i64
  %i.to = sub i64 %.sroa.28.0.lcssa523528, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa517530, i64 noundef %i.to) #34
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit: ; preds = %._crit_edge431, %bb.bu
  ret void

.lr.ph430:                                        ; preds = %._crit_edge427, %bb.bw
  %.sroa.0314.0428 = phi ptr [ %i.tz, %bb.bw ], [ %i.sn, %._crit_edge427 ] ; 4 uses
  %i.tp = load i32, ptr %.sroa.0314.0428, align 8, !tbaa !597
  %i.tq = icmp eq i32 %i.tp, 5
  br i1 %i.tq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph430
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0314.0428, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !598
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0314.0428, i64 16
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !176
  %i.tv = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %i.tu, ptr %i.ts) #16
  %i.tw = load ptr, ptr %.sroa.0.0.lcssa517530, align 8, !tbaa !618 ; 2 uses
  %i.tx = ptrtoint ptr %i.tw to i64
  %.not.i.i312 = icmp eq ptr %i.tw, null
  %i.ty = or i64 %i.tx, 1
  %spec.select.i.i313 = select i1 %.not.i.i312, i64 0, i64 %i.ty
  store i64 %spec.select.i.i313, ptr %i.tv, align 8, !tbaa !861
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph430
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0314.0428, i64 64 ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.sp
  br i1 %i.ua, label %._crit_edge431, label %.lr.ph430
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold23compress_debug_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %1 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 6 uses
  %2 = alloca %"class.tbb::detail::d1::parallel_for_body_wrapper.2115", align 8 ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %4 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %class.anon.715, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !173
  %i.b = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 3 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !598
  store i64 23, ptr %i.a, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.101, i64 23, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 23, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 0, ptr %i.d, align 1, !tbaa !177
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null)
  %i.e = load ptr, ptr %5, align 8, !tbaa !598    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.g = load i64, ptr %i.a, align 8, !tbaa !177
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2613, !range !613, !noundef !599
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE5resetEv.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = call noundef i64 @_ZN3tbb6detail2r127global_control_active_valueEi(i32 noundef 0) #16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !2614, !range !613, !noundef !599
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.m, align 8, !tbaa !2614
  br i1 %i.o, label %bb.b, label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE5resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3992
  call void @_ZN3tbb6detail2r17destroyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #16
  br label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE5resetEv.exit

_ZNSt8optionalIN3tbb6detail2d114global_controlEE5resetEv.exit: ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 13192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 13200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !615
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !619
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %_ZN3tbb6detail2d112parallel_forIlZN4mold23compress_debug_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit

bb.c:                                             ; preds = %_ZNSt8optionalIN3tbb6detail2d114global_controlEE5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 %i.x, ptr %1, align 8, !tbaa !674
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !675
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.aa, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %6, ptr %2, align 8, !tbaa !672
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !1030
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.ac, align 8, !tbaa !1031
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold23compress_debug_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %_ZN3tbb6detail2d112parallel_forIlZN4mold23compress_debug_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit

_ZN3tbb6detail2d112parallel_forIlZN4mold23compress_debug_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit: ; preds = %_ZNSt8optionalIN3tbb6detail2d114global_controlEE5resetEv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ad = icmp sgt i64 %.0, 0
  br i1 %i.ad, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN3tbb6detail2d112parallel_forIlZN4mold23compress_debug_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3992 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2614, !range !613, !noundef !599
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.af, align 8, !tbaa !2614
  br i1 %i.ah, label %bb.e, label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterERlEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS9_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN3tbb6detail2r17destroyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #16
  br label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterERlEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS9_.exit

_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterERlEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS9_.exit: ; preds = %bb.d, %bb.e
  store i64 %.0, ptr %i.ae, align 8, !tbaa !2617
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4000
  store i64 0, ptr %i.ai, align 8, !tbaa !2618
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4008
  store i32 0, ptr %i.aj, align 8, !tbaa !2619
  call void @_ZN3tbb6detail2r16createERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #16
  store i8 1, ptr %i.af, align 8, !tbaa !2614
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterERlEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS9_.exit, %_ZN3tbb6detail2d112parallel_forIlZN4mold23compress_debug_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit
  %i.ak = load ptr, ptr %4, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.ak) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold11sort_reldynINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
._crit_edge.i.i:
  %1 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %class.anon.716, align 1            ; 3 uses
  %4 = alloca %class.anon.718, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.102, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.c, align 1, !tbaa !177
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  %i.d = load ptr, ptr %2, align 8, !tbaa !598    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.f = load i64, ptr %i.a, align 8, !tbaa !177
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2682
  %i.i = load i8, ptr %i.h, align 2, !tbaa !629, !range !613, !noundef !599
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !987
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13880
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !630  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.0.copyload.i = load i64, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0.copyload.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.0.copyload.i8 = load i64, ptr %i.q, align 1
  %i.r = udiv i64 %.0.copyload.i8, 24
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %3, ptr %4, align 8, !tbaa !672
  call void @_ZN3tbb6detail2d113parallel_sortIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_EEvSA_SA_RKT0_(ptr noundef %i.p, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113parallel_sortIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_EEvSA_SA_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ugt ptr %1, %0
  br i1 %i.a, label %bb.b, label %_ZSt4sortIPN4mold6ElfRelINS0_6X86_64EEEZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SB_E_EvS7_S7_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = icmp slt i64 %i.d, 12000
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !672 ; 3 uses
  %i.f = sdiv exact i64 %i.d, 24
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIPN4mold6ElfRelINS0_6X86_64EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_SA_T0_T1_(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.i, ptr %.sroa.0.0.copyload)
  %i.j = icmp sgt i64 %i.d, 384
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  tail call void @_ZSt16__insertion_sortIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_SA_T0_(ptr noundef %0, ptr noundef nonnull %i.k, ptr %.sroa.0.0.copyload)
  %.not7.i.i.i.i = icmp eq ptr %i.k, %1
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIPN4mold6ElfRelINS0_6X86_64EEEZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SB_E_EvS7_S7_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt25__unguarded_linear_insertIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_T0_.exit.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_T0_.exit.i.i.i.i ], [ %i.k, %bb.d ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.08.i.i.i.i, align 1, !tbaa !177 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !tbaa !177 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 1, !tbaa !177 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 1, !tbaa !177
  %switch.selectcmp.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i, 37
  %switch.select.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i, i32 2, i32 1
  %switch.selectcmp4.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i, 8
  %switch.select5.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp4.i.i.i.i.i.i.i.i, i32 0, i32 %switch.select.i.i.i.i.i.i.i.i ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.f ] ; 8 uses
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i, i64 -24 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.09.i.i.i.i.i, i64 -16
  %.0.copyload.i8.i.i.i.i.i.i.i = load i32, ptr %i.l, align 1 ; 2 uses
  %switch.selectcmp.i9.i.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i8.i.i.i.i.i.i.i, 37
  %switch.select.i10.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i9.i.i.i.i.i.i.i, i32 2, i32 1
  %switch.selectcmp4.i11.i.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i8.i.i.i.i.i.i.i, 8
  %switch.select5.i12.i.i.i.i.i.i.i = select i1 %switch.selectcmp4.i11.i.i.i.i.i.i.i, i32 0, i32 %switch.select.i10.i.i.i.i.i.i.i ; 2 uses
  %i.m = icmp eq i32 %switch.select5.i.i.i.i.i.i.i.i, %switch.select5.i12.i.i.i.i.i.i.i
  br i1 %i.m, label %.split.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4mold11sort_reldynINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlRKNS2_6ElfRelIS4_EESC_E_EclISA_PSA_EEbRS6_T0_.exit.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.e
  %i.n = load i64, ptr %.0.i.i.i.i.i, align 1, !tbaa !177
  %i.o = getelementptr inbounds i8, ptr %.09.i.i.i.i.i, i64 -12
  %i.p = load i32, ptr %i.o, align 1, !tbaa !177  ; 2 uses
  %i.q = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i.i, %i.p
  %i.r = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i.i, %i.p
  %i.s = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.n
  %spec.select.i.i.i.i.i.i.i = select i1 %i.q, i1 %i.s, i1 %i.r
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.f, label %_ZSt25__unguarded_linear_insertIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4mold11sort_reldynINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlRKNS2_6ElfRelIS4_EESC_E_EclISA_PSA_EEbRS6_T0_.exit.i.i.i.i.i: ; preds = %bb.e
  %i.t = icmp samesign ult i32 %switch.select5.i.i.i.i.i.i.i.i, %switch.select5.i12.i.i.i.i.i.i.i
  br i1 %i.t, label %bb.f, label %_ZSt25__unguarded_linear_insertIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_T0_.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4mold11sort_reldynINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlRKNS2_6ElfRelIS4_EESC_E_EclISA_PSA_EEbRS6_T0_.exit.i.i.i.i.i, %.split.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1032
  br label %bb.e, !llvm.loop !17

_ZSt25__unguarded_linear_insertIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4mold11sort_reldynINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlRKNS2_6ElfRelIS4_EESC_E_EclISA_PSA_EEbRS6_T0_.exit.i.i.i.i.i, %.split.i.i.i.i.i
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.09.i.i.i.i.i, align 1, !tbaa !177
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i, align 1, !tbaa !177
  %.sroa.6.0..09.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  store i32 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..09.sroa_idx.i.i.i.i.i, align 1, !tbaa !177
  %.sroa.7.0..09.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..09.sroa_idx.i.i.i.i.i, align 1, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i.i, label %_ZSt4sortIPN4mold6ElfRelINS0_6X86_64EEEZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SB_E_EvS7_S7_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !18

bb.g:                                             ; preds = %bb.c
  tail call void @_ZSt16__insertion_sortIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_SA_T0_(ptr noundef %0, ptr noundef nonnull %1, ptr %.sroa.0.0.copyload)
  br label %_ZSt4sortIPN4mold6ElfRelINS0_6X86_64EEEZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SB_E_EvS7_S7_T0_.exit

bb.h:                                             ; preds = %bb.b
  tail call void @_ZN3tbb6detail2d119parallel_quick_sortIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_EEvSA_SA_RKT0_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZSt4sortIPN4mold6ElfRelINS0_6X86_64EEEZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SB_E_EvS7_S7_T0_.exit

_ZSt4sortIPN4mold6ElfRelINS0_6X86_64EEEZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SB_E_EvS7_S7_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPN4mold6ElfRelINS0_6X86_64EEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11sort_reldynIS2_EEvRNS0_7ContextIT_EEEUlRKS3_SE_E_EEEvSA_T0_.exit.i.i.i.i, %bb.g, %bb.d, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold14write_build_idINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
._crit_edge.i.i:
  %1 = alloca %struct.blake3_hasher, align 8      ; 5 uses
  %2 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::parallel_for_body_wrapper.2143", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::vector.719", align 8   ; 9 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %9 = alloca %class.anon.724, align 8            ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str.103, i64 14, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.d, align 8, !tbaa !176
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.e, align 2, !tbaa !177
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %6, ptr noundef null)
end_hunk_5
begin_hunk_6_@_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUlRNS_9InputFileIS1_EERNS_6SymbolIS1_EERKNS_6ElfSymIS1_EESF_E_clES8_SB_SF_SF_:bb.a
bb.g:                                             ; preds = %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit
  br label %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit20

bb.h:                                             ; preds = %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit
  %i.r = zext nneg i8 %i.q to i32
  br label %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit20

_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit20: ; preds = %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit, %bb.g, %bb.h
  %.0.i19 = phi i32 [ %i.r, %bb.h ], [ 1, %bb.g ], [ 2, %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit ]
  %.not17 = icmp eq i32 %.0.i, %.0.i19
  br i1 %.not17, label %bb.t, label %bb.i

bb.i:                                             ; preds = %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3530, !nonnull !599, !align !600
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %5, ptr noundef nonnull align 8 dereferenceable(14448) %i.t) #16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 408 ; 14 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !770, !range !613, !noundef !599
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4mold4WarnINS_6X86_64EElsIRA23_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

_ZN4mold4WarnINS_6X86_64EElsIRA23_KcEERS2_OT_.exit: ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 1 dereferenceable(23) @.str.228, i64 noundef 22) #16 ; 0 uses
  %.pre = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.z = trunc nuw i8 %.pre to i1
  br i1 %i.z, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA23_KcEERS2_OT_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(36) %2) #16 ; 0 uses
  %.pre32 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.ac = trunc nuw i8 %.pre32 to i1
  br i1 %i.ac, label %bb.j, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

bb.j:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !177
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !921
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.b, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit

bb.l:                                             ; preds = %bb.j
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext 10) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit

_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit:     ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre33 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.am = trunc nuw i8 %.pre33 to i1
  br i1 %i.am, label %_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 1 dereferenceable(16) @.str.229, i64 noundef 15) #16 ; 0 uses
  %.pre34 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.ap = trunc nuw i8 %.pre34 to i1
  br i1 %i.ap, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !715
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = add nsw i64 %i.as, %i.e
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(312) %i.au) #16 ; 0 uses
  %.pre35 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.ax = trunc nuw i8 %.pre35 to i1
  br i1 %i.ax, label %bb.m, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

bb.m:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str.230, i64 noundef 4) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit

_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit: ; preds = %bb.i, %_ZN4mold4WarnINS_6X86_64EElsIRA23_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ba = load i8, ptr %i.k, align 1
  %i.bb = and i8 %i.ba, 15
  %i.bc = zext nneg i8 %i.bb to i32
  call void @_ZN4mold13stt_to_stringINS_6X86_64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.bc)
  %i.bd = load i8, ptr %i.u, align 8, !tbaa !770, !range !613, !noundef !599
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26

_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = load ptr, ptr %6, align 8, !tbaa !598
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !176
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bg, i64 noundef %i.bi) #16 ; 0 uses
  %.pre36 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.bk = trunc nuw i8 %.pre36 to i1
  br i1 %i.bk, label %bb.n, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26

bb.n:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !177
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !170
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !921
  %.not.i.i.i21 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.a, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit23

bb.p:                                             ; preds = %bb.n
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i8 noundef signext 10) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit23

_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit23:   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre37 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.bu = trunc nuw i8 %.pre37 to i1
  br i1 %i.bu, label %_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit24, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26

_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit24: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit23
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 1 dereferenceable(16) @.str.229, i64 noundef 15) #16 ; 0 uses
  %.pre38 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.bx = trunc nuw i8 %.pre38 to i1
  br i1 %i.bx, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit25, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26

_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit25: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit24
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(312) %1) #16 ; 0 uses
  %.pre39 = load i8, ptr %i.u, align 8, !tbaa !770, !range !613
  %i.ca = trunc nuw i8 %.pre39 to i1
  br i1 %i.ca, label %bb.q, label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26

bb.q:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit25
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 1 dereferenceable(5) @.str.230, i64 noundef 4) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26

_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIcEERS2_OT_.exit23, %_ZN4mold4WarnINS_6X86_64EElsIRA16_KcEERS2_OT_.exit24, %_ZN4mold4WarnINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_.exit25, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.cd = load i8, ptr %i.o, align 1
  %i.ce = and i8 %i.cd, 15
  %i.cf = zext nneg i8 %i.ce to i32
  call void @_ZN4mold13stt_to_stringINS_6X86_64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %i.cf)
  %i.cg = load i8, ptr %i.u, align 8, !tbaa !770, !range !613, !noundef !599
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit27

bb.r:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cj = load ptr, ptr %7, align 8, !tbaa !598
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !176
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cj, i64 noundef %i.cl) #16 ; 0 uses
  br label %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit27

_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit27: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA5_KcEERS2_OT_.exit26, %bb.r
  %i.cn = load ptr, ptr %7, align 8, !tbaa !598   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit27
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !177
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.cs = load ptr, ptr %6, align 8, !tbaa !598   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !177
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.cx = load i8, ptr %i.u, align 8, !tbaa !770, !range !613, !noundef !599
  %i.cy = trunc nuw i8 %i.cx to i1
  store i8 0, ptr %i.u, align 8, !tbaa !770
  br i1 %i.cy, label %bb.s, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %5)
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.da = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !170
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dc = getelementptr i8, ptr %i.da, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %i.dd
  store ptr %i.db, ptr %i.de, align 8, !tbaa !170
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !170
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dh, align 8, !tbaa !170
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !598 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !177
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #34
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dh, align 8, !tbaa !170
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.do) #16
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dp, ptr %i.cz, align 8, !tbaa !170
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dr = getelementptr i8, ptr %i.dp, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.cz, i64 %i.ds
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !170
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.du, align 8, !tbaa !772
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dv) #16
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.t

bb.t:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EED2Ev.exit, %_ZZN4mold18check_symbol_typesINS_6X86_64EEEvRNS_7ContextIT_EEENKUljE_clEj.exit20, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold13stt_to_stringINS_6X86_64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  switch i32 %1, label %bb.b [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i2
    i32 2, label %._crit_edge.i.i5
    i32 3, label %._crit_edge.i.i8
    i32 4, label %._crit_edge.i.i11
    i32 5, label %._crit_edge.i.i14
    i32 6, label %._crit_edge.i.i17
    i32 10, label %._crit_edge.i.i20
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.231, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !177
  br label %bb.s

._crit_edge.i.i2:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.232, i64 10, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.e, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.f, align 2, !tbaa !177
  br label %bb.s

._crit_edge.i.i5:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !173
  store i64 4849907609460036691, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.h, align 8, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !177
  br label %bb.s

._crit_edge.i.i8:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.j, ptr noundef nonnull align 1 dereferenceable(11) @.str.234, i64 11, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.k, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.l, align 1, !tbaa !177
  br label %bb.s

._crit_edge.i.i11:                                ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !173
  store i64 4993446653442937939, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.n, align 8, !tbaa !176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.o, align 8, !tbaa !177
  br label %bb.s

._crit_edge.i.i14:                                ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.p, ptr noundef nonnull align 1 dereferenceable(10) @.str.236, i64 10, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.q, align 8, !tbaa !176
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.r, align 2, !tbaa !177
  br label %bb.s

._crit_edge.i.i17:                                ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.s, ptr noundef nonnull align 1 dereferenceable(7) @.str.237, i64 7, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.t, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.u, align 1, !tbaa !177
  br label %bb.s

._crit_edge.i.i20:                                ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.v, ptr noundef nonnull align 1 dereferenceable(13) @.str.238, i64 13, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.w, align 8, !tbaa !176
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.x, align 1, !tbaa !177
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3539)
  %i.y = icmp ult i32 %1, 10
  br i1 %i.y, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !173, !alias.scope !3539
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.030.i.i = phi i32 [ %i.ah, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ag, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %i.aa = icmp ult i32 %.02329.i.i, 100
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = udiv i32 %.02329.i.i, 10000
  %i.ah = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ai = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ai, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !3533

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.022.i.i = phi i32 [ %i.af, %bb.g ], [ %i.ab, %bb.c ], [ %i.ad, %bb.e ], [ %i.ah, %bb.h ] ; 3 uses
  %i.aj = zext i32 %.022.i.i to i64               ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !173, !alias.scope !3539
  %i.al = icmp ugt i32 %.022.i.i, 15
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
end_hunk_6
