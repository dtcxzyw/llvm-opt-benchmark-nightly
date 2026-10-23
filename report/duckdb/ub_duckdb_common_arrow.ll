Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_arrow?download=true
inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN6duckdb17BasePipelineEventC2ERNS_8PipelineE
declare void @_ZN6duckdb17BasePipelineEventC2ERNS_8PipelineE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb16ArrowQueryResult9BatchSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ArrowMergeEvent8ScheduleEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.duckdb::vector.724", align 16 ; 15 uses
  %3 = alloca %"class.duckdb::vector.498", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::BatchCollectionChunkScanState", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.593", align 16 ; 12 uses
  %6 = alloca %"class.duckdb::unique_ptr.737", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::shared_ptr.504", align 8 ; 7 uses
  %8 = alloca %"class.duckdb::vector.654", align 16 ; 13 uses
  %9 = alloca %"class.duckdb::vector.724", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1334, !nonnull !91, !align !443 ; 3 uses
  %i.f = invoke noundef i64 @_ZNK6duckdb21BatchedDataCollection10BatchCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.e)
          to label %.preheader209 unwind label %bb.b ; 2 uses

.preheader209:                                    ; preds = %bb.a, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit
  %.sroa.6180.0255 = phi i64 [ %.sroa.6180.1.lcssa, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.a ] ; 5 uses
  %.sroa.14.0254 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.9.0253 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.0176.0252 = phi ptr [ %.sroa.0176.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 8 uses
  %.not.i245 = icmp ult i64 %.sroa.6180.0255, %i.f
  br i1 %.not.i245, label %.lr.ph, label %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189

.lr.ph:                                           ; preds = %.preheader209, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit
  %.037248 = phi i64 [ %i.g, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ], [ %.sroa.6180.0255, %.preheader209 ] ; 2 uses
  %.039247 = phi i64 [ %i.k, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ], [ 0, %.preheader209 ]
  %i.g = add nuw i64 %.037248, 1                  ; 3 uses
  %i.h = invoke noundef i64 @_ZNK6duckdb21BatchedDataCollection17IndexToBatchIndexEm(ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 noundef %.037248)
          to label %.noexc unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph
  %i.i = invoke noundef i64 @_ZNK6duckdb21BatchedDataCollection9BatchSizeEm(ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 noundef %i.h)
          to label %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EED2Ev.exit155

_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit: ; preds = %.noexc
  %i.k = add i64 %i.i, %.039247                   ; 3 uses
  %i.l = icmp ult i64 %i.k, 122880                ; 2 uses
  %.not.i = icmp ult i64 %i.g, %i.f
  %or.cond = select i1 %i.l, i1 %.not.i, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189

_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189: ; preds = %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit, %.preheader209
  %.sroa.6180.1.lcssa = phi i64 [ %.sroa.6180.0255, %.preheader209 ], [ %i.g, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ] ; 3 uses
  %.039.lcssa = phi i64 [ 0, %.preheader209 ], [ %i.k, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ] ; 2 uses
  %.lcssa230 = phi i1 [ true, %.preheader209 ], [ %i.l, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ]
  %i.m = icmp eq i64 %.sroa.6180.0255, %.sroa.6180.1.lcssa
  br i1 %i.m, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !1334, !nonnull !91, !align !443
  %i.o = invoke { ptr, ptr } @_ZN6duckdb21BatchedDataCollection10BatchRangeEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.n, i64 noundef %.sroa.6180.0255, i64 noundef %.sroa.6180.1.lcssa)
          to label %bb.d unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  %.not.i91 = icmp eq ptr %.sroa.9.0253, %.sroa.14.0254
  br i1 %.not.i91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.039.lcssa, ptr %.sroa.9.0253, align 8, !tbaa !68
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0253, i64 8
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !445
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0253, i64 16
  store ptr %i.q, ptr %.sroa.8173.0..sroa_idx, align 8, !tbaa !445
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = ptrtoint ptr %.sroa.14.0254 to i64
  %i.s = ptrtoint ptr %.sroa.0176.0252 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc92 unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = sdiv exact i64 %i.t, 24                  ; 3 uses
  %i.w = icmp eq ptr %.sroa.14.0254, %.sroa.0176.0252 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.w, i64 1, i64 %i.v
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.v
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 384307168202282325)
  %i.aa = select i1 %i.y, i64 384307168202282325, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = mul nuw nsw i64 %i.aa, 24
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #35
          to label %.noexc93 unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.t ; 3 uses
  store i64 %.039.lcssa, ptr %i.ad, align 8, !tbaa !68
  %.sroa.6.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx171, align 8, !tbaa !445
  %.sroa.8173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.q, ptr %.sroa.8173.0..sroa_idx174, align 8, !tbaa !445
  br i1 %i.w, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc93, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc93 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0176.0252, %.noexc93 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1335, !alias.scope !1336
  %i.ae = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %.sroa.14.0254
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1322

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc93
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc93 ], [ %i.af, %.lr.ph.i.i.i.i.i.i ]
  %.not.i27.i.i = icmp eq ptr %.sroa.0176.0252, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0176.0252) #37
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.0176.1 = phi ptr [ %.sroa.0176.0252, %bb.e ], [ %i.ac, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.9.0.pn = phi ptr [ %.sroa.9.0253, %bb.e ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0254, %bb.e ], [ %i.ag, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.sroa.9.0.pn, i64 24 ; 2 uses
  br i1 %.lcssa230, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread, label %.preheader209

.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %.noexc, %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.c, %bb.g
  %lpad.loopexit.split-lp404 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp211

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit
  %.sroa.0176.0.lcssa = phi ptr [ %.sroa.0176.0252, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189 ], [ %.sroa.0176.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.sroa.9.0.lcssa = phi ptr [ %.sroa.9.0253, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189 ], [ %.sroa.9.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.not260 = icmp eq ptr %.sroa.0176.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not260, label %._crit_edge264, label %.lr.ph263

.lr.ph263:                                        ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.i

._crit_edge264:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread
  %.034.lcssa = phi i64 [ 0, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread ], [ %.1.lcssa, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.034.lcssa)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %._crit_edge264
  %.not270 = icmp eq i64 %.034.lcssa, 0
  br i1 %.not270, label %._crit_edge268, label %.lr.ph267

bb.i:                                             ; preds = %.lr.ph263, %_ZNSt6vectorImSaImEED2Ev.exit
  %.034262 = phi i64 [ 0, %.lr.ph263 ], [ %.1.lcssa, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 4 uses
  %.sroa.0168.0261 = phi ptr [ %.sroa.0176.0.lcssa, %.lr.ph263 ], [ %i.ff, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.0168.0261, align 8, !tbaa !1338 ; 2 uses
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !573 ; 2 uses
  %i.at = udiv i64 %i.ar, %i.as
  %i.au = urem i64 %i.ar, %i.as
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i64
  %i.ax = add i64 %i.at, %i.aw
  %.fr = freeze i64 %i.ax                         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ay = icmp ugt i64 %.fr, 1152921504606846975
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #36
          to label %.noexc94 unwind label %.loopexit.split-lp200.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.az = shl nuw nsw i64 %.fr, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #35
          to label %.noexc95 unwind label %.loopexit.split-lp200.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc95:                                         ; preds = %bb.k
  store ptr %i.ba, ptr %3, align 8, !tbaa !574
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.fr
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !378
  store i64 0, ptr %i.ba, align 8, !tbaa !68
  %i.bc = getelementptr i8, ptr %i.ba, i64 8      ; 3 uses
  %i.bd = add nsw i64 %.fr, -1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph258, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc95
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bd, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc95
  %.0.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %.noexc95 ], [ %i.bf, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  store ptr %.0.i.i.i.i.i.i.ph, ptr %i.aj, align 8, !tbaa !1339
  %i.bg = ptrtoint ptr %.0.i.i.i.i.i.i.ph to i64
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 4 uses
  %10 = add nsw i64 %.fr, -1
  %11 = call i64 @llvm.umin.i64(i64 %10, i64 %i.bj) ; 2 uses
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph258
  %.033257.ph = phi i64 [ 0, %.lr.ph258 ], [ %n.vec, %vector.body ]
  %.1256.ph = phi i64 [ %.034262, %.lr.ph258 ], [ %i.bn, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph258
  %12 = add nuw i64 %11, 1                        ; 2 uses
  %i.bk = and i64 %12, 3                          ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = select i1 %i.bl, i64 4, i64 %i.bk
  %n.vec = sub i64 %12, %i.bm                     ; 3 uses
  %i.bn = add i64 %.034262, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.034262, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2)
  %i.bo = or disjoint i64 %index, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !68
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x i64> %vec.ind, ptr %i.bp, align 8, !tbaa !68
  store <2 x i64> %step.add, ptr %i.bq, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1323

._crit_edge:                                      ; preds = %bb.p, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.1.lcssa = phi i64 [ %.034262, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cf, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !1334, !nonnull !91, !align !443
  %i.bt = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.q unwind label %bb.an

.loopexit.split-lp200.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.j
  %lpad.loopexit.split-lp387 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit110

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.p
  %.033257 = phi i64 [ %i.cg, %bb.p ], [ %.033257.ph, %scalar.ph.preheader ] ; 4 uses
  %.1256 = phi i64 [ %i.cf, %bb.p ], [ %.1256.ph, %scalar.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.033257, ptr %i.b, align 8, !tbaa !68
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !68
  %exitcond.not = icmp eq i64 %.033257, %i.bj
  br i1 %exitcond.not, label %.noexc.i, label %bb.p, !prof !122

.noexc.i:                                         ; preds = %scalar.ph
  %i.bu = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.bv, ptr %1, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 55, ptr %i.a, align 8, !tbaa !68
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc156 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc156:                                        ; preds = %.noexc.i
  store ptr %i.bw, ptr %1, align 8, !tbaa !66
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bw, ptr noundef nonnull align 1 dereferenceable(55) @.str.76, i64 55, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc156
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.noexc156
  %.0.i.i.i = phi i1 [ false, %bb.l ], [ true, %.noexc156 ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bv
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.cc) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i.i.i, label %bb.n, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i.i.i, label %bb.n, label %.body

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bu) #34
  br label %.body

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.033257
  %i.cf = add i64 %.1256, 1                       ; 2 uses
  store i64 %.1256, ptr %i.ce, align 8, !tbaa !68
  %i.cg = add nuw i64 %.033257, 1                 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %.fr
  br i1 %i.ch, label %scalar.ph, label %._crit_edge, !llvm.loop !1324

bb.q:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0168.0261, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1364, !nonnull !91, !align !443
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !515, !nonnull !91, !align !443
  invoke void @_ZN6duckdb29BatchCollectionChunkScanStateC1ERNS_21BatchedDataCollectionERNS_25BatchedChunkIteratorRangeERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(192) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(512) %i.cl)
          to label %bb.r unwind label %bb.an

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.cm = load ptr, ptr %i.al, align 8, !tbaa !1365, !nonnull !91, !align !443
  %i.cn = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1364, !nonnull !91, !align !443
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN6duckdb23enable_shared_from_thisINS_5EventEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.504") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %i.al, align 8, !tbaa !1365, !nonnull !91, !align !443
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 176
  invoke void @_ZN6duckdb9make_uniqINS_14ArrowBatchTaskEJRNS_16ArrowQueryResultENS_6vectorImLb1ESaImEEERNS_8ExecutorENS_10shared_ptrINS_5EventELb1EEENS_29BatchCollectionChunkScanStateERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISI_EEERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.737") align 8 %6, ptr noundef nonnull align 8 dereferenceable(424) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(424) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.u unwind label %bb.aq

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %5, align 16, !tbaa !578  ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %spec.select.i = select i1 %i.ct, ptr null, ptr %i.cu
  call void @_ZN6duckdb10shared_ptrINS_4TaskELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %spec.select.i, ptr noundef %i.cs) #34
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !581 ; 7 uses
  %i.cw = load ptr, ptr %i.ao, align 16, !tbaa !1366
  %.not.i.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !116
  %i.cy = load <2 x ptr>, ptr %5, align 16, !tbaa !133
  store ptr null, ptr %i.ap, align 8, !tbaa !116
  store <2 x ptr> %i.cy, ptr %i.cv, align 8, !tbaa !133
  store ptr null, ptr %5, align 16, !tbaa !578
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.cz, ptr %i.an, align 8, !tbaa !581
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE9push_backEOS3_.exit

bb.x:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %2, align 16, !tbaa !582  ; 5 uses
  %i.db = ptrtoint ptr %i.cv to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775792
  br i1 %i.de, label %bb.y, label %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc159 unwind label %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.df = ashr exact i64 %i.dd, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 576460752303423487)
  %i.dj = select i1 %i.dh, i64 576460752303423487, i64 %i.di ; 3 uses
  %.not.i.i157 = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i157)
  %i.dk = shl nuw nsw i64 %i.dj, 4
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #35
end_hunk_0
