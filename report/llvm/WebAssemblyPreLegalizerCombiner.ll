Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyPreLegalizerCombiner?download=true
inline.NumInlined: 1154
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_131WebAssemblyPreLegalizerCombinerC2Ev:bb.a

bb.l:                                             ; preds = %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.3.i.i.i.i, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !79 ; 2 uses
  %.not.i.i = icmp eq i32 %i.be, %i.ah
  br i1 %.not.i.i, label %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.l
  %i.bf = icmp ult i32 %i.be, %i.ah
  br i1 %i.bf, label %bb.m, label %.sink.split.i.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.bg = load ptr, ptr %.sroa.08.3.i.i.i.i, align 8, !tbaa !66
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %.critedge.i.i, %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i.i, %.lr.ph.i13.i
  %.sroa.010.0.sink.i.i = phi ptr [ %i.e, %.lr.ph.i13.i ], [ %i.bg, %bb.m ], [ %.sroa.08.3.i.i.i.i, %.critedge.i.i ], [ %.sroa.08.3.i.i.i.i, %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i.i ]
  %i.bh = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 %i.ah, ptr %i.bi, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef %.sroa.010.0.sink.i.i) #24
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !84
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.g, align 8, !tbaa !84
  br label %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit.i

_ZN4llvm15SparseBitVectorILj128EE3setEj.exit.i:   ; preds = %.sink.split.i.i, %bb.l
  %.sroa.010.1.i.i = phi ptr [ %.sroa.08.3.i.i.i.i, %bb.l ], [ %i.bh, %.sink.split.i.i ] ; 2 uses
  %i.bm = ptrtoint ptr %.sroa.010.1.i.i to i64
  store i64 %i.bm, ptr %i.h, align 8, !tbaa !83
  %i.bn = and i64 %.07.i14.i, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.bq = lshr i64 %.07.i14.i, 6
  %i.br = and i64 %i.bq, 1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !50
  %i.bu = or i64 %i.bt, %i.bo
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !50
  %i.bv = add i64 %.07.i14.i, 1                   ; 2 uses
  %exitcond.not.i15.i = icmp eq i64 %i.bv, %i.ae
  br i1 %exitcond.not.i15.i, label %_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig15setRuleDisabledEN4llvm9StringRefE.exit.i, label %.lr.ph.i13.i, !llvm.loop !87

_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig15setRuleDisabledEN4llvm9StringRefE.exit.i: ; preds = %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.critedge12.i

.critedge12.i:                                    ; preds = %_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig15setRuleDisabledEN4llvm9StringRefE.exit.i, %_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig15setRuleDisabledEN4llvm9StringRefE.exit.thread.i, %.loopexit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.020.033.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, %i.j
  br i1 %.not.i, label %.loopexit, label %bb.b

_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig22parseCommandLineOptionEv.exit: ; preds = %_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig15setRuleDisabledEN4llvm9StringRefE.exit.thread27.i, %_ZN12_GLOBAL__N_145WebAssemblyPreLegalizerCombinerImplRuleConfig14setRuleEnabledEN4llvm9StringRefE.exit.i
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.10, i1 noundef zeroext true) #25
  unreachable

.loopexit:                                        ; preds = %.critedge12.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !70
  store i8 0, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !89, !range !41, !noundef !42
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %.not.i.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.j, align 8, !tbaa !97
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i.i, label %_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE5clearEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.l, %_ZNSt6vectorIjSaIjEE5clearEv.exit.i ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !18
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !12
  br label %_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE5clearEv.exit

_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i
  store i8 0, ptr %i.e, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE5clearEv.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = call noundef zeroext i1 @_ZN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.v, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12   ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !88
  %i.ab = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !70  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !50
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !13
  %i.af = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %i.ae, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  switch i64 %i.ac, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !18
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ab, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !70
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.an, ptr %i.w, align 8, !tbaa !12
  br label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit

bb.j:                                             ; preds = %bb.e
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(49) %i.d, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit

_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.j
  %i.ao = trunc i32 %1 to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.ao, ptr %i.ap, align 4, !tbaa !98
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !97 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit
  store i32 %1, ptr %i.as, align 4, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !97
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.l:                                             ; preds = %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 4 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.m, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i8)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #26 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %1, ptr %i.bi, align 4, !tbaa !108
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %7 = load ptr, ptr %i.at, align 8, !tbaa !30
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %8, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %9) #23
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.bh, ptr %i.aq, align 8, !tbaa !27
  store ptr %i.bk, ptr %i.ar, align 8, !tbaa !97
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.at, align 8, !tbaa !30
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24
  %.not.i.i9.not = icmp eq ptr %i.bn, null
  br i1 %.not.i.i9.not, label %bb.p, label %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit

_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !109
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %6) #24, !inline_history !111
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit, %bb.d
  %i.br = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.b
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i1 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN4llvm2cl6Option6anchorEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call noundef i64 @_ZNK4llvm2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %0) #24
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNK4llvm2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !97
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.g, %_ZNSt6vectorIjSaIjEE5clearEv.exit ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !18
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !12
  br label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE5clearEv.exit

_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE5clearEv.exit: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %.not8 = icmp eq ptr %i.q, %i.s
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE5clearEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit, %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE5clearEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit
  %.sroa.05.09 = phi ptr [ %i.q, %.lr.ph ], [ %i.am, %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !12   ; 8 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i.i4 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i4, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !88
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !70  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !50
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !13
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.ae = phi ptr [ %i.ac, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !18
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !70
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.h, align 8, !tbaa !12
  br label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit

bb.h:                                             ; preds = %bb.c
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit

_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_b.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.s
  br i1 %.not, label %._crit_edge, label %bb.c
}
end_hunk_0
