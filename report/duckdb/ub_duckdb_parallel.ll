inline.NumInlined: 6986
inline.NumDeleted: 3568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb8PipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt12__shared_ptrIN6duckdb8PipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb8PipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb18PipelineBuildState15SetPipelineSinkERNS_8PipelineENS_12optional_ptrINS_16PhysicalOperatorELb1EEEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((64, 72), (128, 136)) %1, ptr %2, i64 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %2, ptr %i.a, align 8, !tbaa !195
  %i.b = mul i64 %3, 10000000000000
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.b, ptr %i.c, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12MetaPipeline19AddDependenciesFromERNS_8PipelineERKS1_b(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(224) %2, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(224) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::reference_wrapper.252", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.sroa.027.0 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.0)
  %i.d = icmp eq ptr %i.c, %3
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 16
  br i1 %i.d, label %bb.c, label %bb.b, !llvm.loop !282

bb.c:                                             ; preds = %bb.b
  %spec.select.idx = select i1 %4, i64 0, i64 16
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 %spec.select.idx ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !259
  %.not35 = icmp eq ptr %spec.select, %i.g
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit
  %.sroa.027.236 = phi ptr [ %spec.select, %.lr.ph ], [ %i.y, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.236)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit, label %bb.g

bb.f:                                             ; preds = %bb.l, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !232  ; 5 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.027.236, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = load <2 x ptr>, ptr %.sroa.027.236, align 8, !tbaa !58
  store <2 x ptr> %i.q, ptr %i.m, align 8, !tbaa !58
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EEC2ERKS2_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EEC2ERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !232
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_8PipelineELb1EEC2ERKS2_.exit.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.w = phi ptr [ %i.m, %bb.h ], [ %i.m, %bb.j ], [ %.pre.i, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.h, align 8, !tbaa !232
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit

bb.l:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.236)
          to label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.f

_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_8PipelineELb1EEC2ERKS2_.exit.i, %bb.l, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.027.236, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !259
  %.not = icmp eq ptr %i.y, %i.z
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !283

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE9push_backERKS3_.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %2, ptr %5, align 8, !tbaa !284
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS4_NS2_6vectorIS4_Lb1ESaIS4_EEEESaISA_ENS_10_Select1stENS2_17ReferenceEqualityIS3_EENS2_21ReferenceHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEEixEOS3_.exit unwind label %bb.m ; 4 uses

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEEixEOS3_.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ac = load ptr, ptr %0, align 8, !tbaa !259   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !259 ; 2 uses
  %.not3437 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not3437, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEEixEOS3_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br label %bb.n

._crit_edge40:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEEixEOS3_.exit
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.n:                                             ; preds = %.lr.ph39, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit
  %.sroa.023.038 = phi ptr [ %i.ac, %.lr.ph39 ], [ %i.bs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.023.038)
          to label %bb.o unwind label %.loopexit  ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !286 ; 5 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !287
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = ptrtoint ptr %i.ai to i64
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !286
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.af, align 8, !tbaa !286
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 7 uses
  %i.ap = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.r, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #37
          to label %.noexc20 unwind label %.loopexit ; 8 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = ptrtoint ptr %i.ai to i64
  store i64 %i.bb, ptr %i.ba, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc20
  %i.bc = ptrtoaddr ptr %i.az to i64
  %6 = add i64 %i.ap, -8
  %7 = sub i64 %6, %i.aq                          ; 2 uses
  %i.bd = lshr i64 %7, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 24
  %i.bf = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bf, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ao, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bj ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.ao, i64 %i.bj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bk = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !alias.scope !291, !noalias !288
  %wide.load51 = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !291, !noalias !288
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !288, !noalias !291
  store <2 x i64> %wide.load51, ptr %i.bl, align 8, !alias.scope !288, !noalias !291
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.i.i.preheader53:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !291, !noalias !288
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !291
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !296

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc20 ], [ %i.bh, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !247
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !286
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.br, ptr %i.ag, align 8, !tbaa !287
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.023.038, i64 16 ; 2 uses
  %.not34 = icmp eq ptr %i.bs, %i.ae
  br i1 %.not34, label %._crit_edge40, label %bb.n

.loopexit:                                        ; preds = %bb.n, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.ah, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12MetaPipeline24AddRecursiveDependenciesERKNS_6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS4_EEERKS0_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(280) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.std::_Hashtable<std::reference_wrapper<duckdb::Pipeline>, std::pair<const std::reference_wrapper<duckdb::Pipeline>, duckdb::vector<std::reference_wrapper<duckdb::Pipeline>>>, std::allocator<std::pair<const std::reference_wrapper<duckdb::Pipeline>, duckdb::vector<std::reference_wrapper<duckdb::Pipeline>>>>, std::__detail::_Select1st, duckdb::ReferenceEquality<duckdb::Pipeline>, duckdb::ReferenceHashFunction<duckdb::Pipeline>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::vector.169", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.f = load i8, ptr %i.e, align 1, !tbaa !216, !range !268, !noundef !132
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb12MetaPipeline16GetMetaPipelinesERNS_6vectorINS_10shared_ptrIS0_Lb1EEELb1ESaIS3_EEEbb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %12, align 8, !tbaa !260
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0127.0 = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.f ] ; 3 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK6duckdb10shared_ptrINS_12MetaPipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0127.0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq ptr %2, %i.i
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0127.0, i64 16
  br label %bb.d, !llvm.loop !297

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224, !nonnull !132, !align !133
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = invoke noundef nonnull align 8 dereferenceable(1560) ptr @_ZN6duckdb16DatabaseInstance11GetDatabaseERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.p)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb16DatabaseInstance12GetSchedulerEv(ptr noundef nonnull align 8 dereferenceable(1560) %i.q)
          to label %_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE.exit unwind label %bb.k

_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load atomic i32, ptr %i.s seq_cst, align 8
  %i.u = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.t)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit.preheader unwind label %bb.k ; 2 uses

_ZN6duckdb11NumericCastImivEET_T0_.exit.preheader: ; preds = %_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sroa.0127.1166 = getelementptr inbounds nuw i8, ptr %.sroa.0127.0, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260  ; 2 uses
  %.not167 = icmp eq ptr %.sroa.0127.1166, %i.w
  br i1 %.not167, label %_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %_ZN6duckdb11NumericCastImivEET_T0_.exit.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit.loopexit: ; preds = %.loopexit
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !260
  br label %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit

_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit: ; preds = %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit.loopexit, %bb.j
  %i.ab = phi ptr [ %.pre, %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit.loopexit ], [ %i.ac, %bb.j ] ; 3 uses
  %.sroa.0127.1 = getelementptr inbounds nuw i8, ptr %.sroa.0127.1168, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0127.1, %i.ab
  br i1 %.not, label %_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge, label %bb.j, !llvm.loop !298

bb.j:                                             ; preds = %.lr.ph169, %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit
  %i.ac = phi ptr [ %i.w, %.lr.ph169 ], [ %i.ab, %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit ]
  %.sroa.0127.1168 = phi ptr [ %.sroa.0127.1166, %.lr.ph169 ], [ %.sroa.0127.1, %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0127.1168, align 8, !tbaa !261 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !259 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !259 ; 2 uses
  %.not141163 = icmp eq ptr %i.af, %i.ah
  br i1 %.not141163, label %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit, label %.lr.ph165

bb.k:                                             ; preds = %_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE.exit, %.noexc, %bb.i
  %i.ai = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6duckdb12MetaPipeline24AddRecursiveDependenciesERKNS_6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS4_EEERKS0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.df) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br i1 %.0.i.i49, label %bb.ak, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i51: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br i1 %.0.i.i49, label %bb.ak, label %.body

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i46
  %.pn9.i.i47 = phi { ptr, i32 } [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i46 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i51 ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50 ]
  call void @__cxa_free_exception(ptr %i.cx) #34
  br label %.body

bb.al:                                            ; preds = %bb.ai
  unreachable

_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit54: ; preds = %bb.ah
  %i.dh = getelementptr i8, ptr %i.cw, i64 32
  %.val = load ptr, ptr %i.dh, align 8, !tbaa !195 ; 2 uses
  %.not.i102 = icmp eq ptr %.val, null
  br i1 %.not.i102, label %bb.am, label %.noexc55

bb.am:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit54
  %i.di = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i103

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.ar unwind label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i103: ; preds = %bb.am
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i106 = phi i1 [ false, %bb.ao ], [ true, %bb.an ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.dl) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0.i106, label %bb.aq, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0.i106, label %bb.aq, label %.body

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i103
  %.pn9.i104 = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i103 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107 ]
  call void @__cxa_free_exception(ptr %i.di) #34
  br label %.body

bb.ar:                                            ; preds = %bb.ao
  unreachable

.noexc55:                                         ; preds = %_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit54
  %i.do = invoke noundef i64 @_ZNK6duckdb16PhysicalOperator20EstimatedThreadCountEv(ptr noundef nonnull align 8 dereferenceable(136) %.val)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc55
  %i.dp = icmp ugt i64 %i.do, %i.u
  br i1 %i.dp, label %bb.au, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

bb.at:                                            ; preds = %.noexc55
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.as
  %i.dr = load ptr, ptr %.sroa.0118.0162, align 8, !tbaa !186 ; 3 uses
  %.not.i58 = icmp eq ptr %i.dr, null
  br i1 %.not.i58, label %.noexc.i113, label %_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit67, !prof !53

.noexc.i113:                                      ; preds = %bb.au
  %i.ds = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dt, ptr %8, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 49, ptr %i.a, align 8, !tbaa !257
  %i.du = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc114 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i59 ; 3 uses

.noexc114:                                        ; preds = %.noexc.i113
  store ptr %i.du, ptr %8, align 8, !tbaa !7
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !257 ; 3 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.du, ptr noundef nonnull align 1 dereferenceable(49) @.str.54, i64 49, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !300
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  store i8 0, ptr %i.dx, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.noexc114
  invoke void @__cxa_throw(ptr nonnull %i.ds, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.ay unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i59: ; preds = %.noexc.i113
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %.noexc114
  %.0.i.i62 = phi i1 [ false, %bb.av ], [ true, %.noexc114 ] ; 2 uses
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ea = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dt
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.ea) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.0.i.i62, label %bb.ax, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i64: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.0.i.i62, label %bb.ax, label %.body

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i59
  %.pn9.i.i60 = phi { ptr, i32 } [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i59 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i64 ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63 ]
  call void @__cxa_free_exception(ptr %i.ds) #34
  br label %.body

bb.ay:                                            ; preds = %bb.av
  unreachable

_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit67: ; preds = %bb.au
  %i.ec = load ptr, ptr %i.ct, align 8, !tbaa !286 ; 5 uses
  %i.ed = load ptr, ptr %i.cu, align 8, !tbaa !287
  %.not.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit67
  %i.ee = ptrtoint ptr %i.dr to i64
  store i64 %i.ee, ptr %i.ec, align 8
  %i.ef = load ptr, ptr %i.ct, align 8, !tbaa !286
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eg, ptr %i.ct, align 8, !tbaa !286
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

bb.ba:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv.exit67
  %i.eh = load ptr, ptr %.1.i, align 8, !tbaa !247 ; 7 uses
  %i.ei = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64               ; 3 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 3 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.bb, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc68 unwind label %.loopexit.split-lp

.noexc68:                                         ; preds = %bb.bb
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.em = ashr exact i64 %i.ek, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 1152921504606846975)
  %i.eq = select i1 %i.eo, i64 1152921504606846975, i64 %i.ep ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #37
          to label %.noexc69 unwind label %.loopexit143 ; 8 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek
  %i.eu = ptrtoint ptr %i.dr to i64
  store i64 %i.eu, ptr %i.et, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.ec
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc69
  %i.ev = ptrtoaddr ptr %i.es to i64
  %13 = add i64 %i.ei, -8
  %14 = sub i64 %13, %i.ej                        ; 2 uses
  %i.ew = lshr i64 %14, 3
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 24
  %i.ey = sub i64 %i.ej, %i.ev
  %diff.check = icmp ugt i64 %i.ey, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ex, 4611686018427387900     ; 3 uses
  %i.ez = shl i64 %n.vec, 3                       ; 2 uses
  %i.fa = getelementptr i8, ptr %i.es, i64 %i.ez  ; 2 uses
  %i.fb = getelementptr i8, ptr %i.eh, i64 %i.ez
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.es, i64 %i.fc ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.eh, i64 %i.fc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.fd = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep217, align 8, !alias.scope !313, !noalias !310
  %wide.load218 = load <2 x i64>, ptr %i.fd, align 8, !alias.scope !313, !noalias !310
  %i.fe = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !310, !noalias !313
  store <2 x i64> %wide.load218, ptr %i.fe, align 8, !alias.scope !310, !noalias !313
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader220

.lr.ph.i.i.i.i.i.i.i.preheader220:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader220, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader220 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader220 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.fg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !313, !noalias !310
  store i64 %i.fg, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !310, !noalias !313
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fh, %i.ec
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !316

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.es, %.noexc69 ], [ %i.fa, %middle.block ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.eh) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.es, ptr %.1.i, align 8, !tbaa !247
  store ptr %i.fj, ptr %i.ct, align 8, !tbaa !286
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eq
  store ptr %i.fk, ptr %i.cu, align 8, !tbaa !287
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.az, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0118.0162, i64 16 ; 2 uses
  %.not142 = icmp eq ptr %i.fl, %i.cs
  br i1 %.not142, label %.loopexit, label %bb.ah

.loopexit143:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit, %.loopexit144, %bb.v
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0123.0164, i64 16 ; 2 uses
  %.not141 = icmp eq ptr %i.fm, %i.ah
  br i1 %.not141, label %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit.loopexit, label %.lr.ph165

_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge: ; preds = %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit, %_ZN6duckdb11NumericCastImivEET_T0_.exit.preheader
  %.lcssa147 = phi ptr [ %.sroa.0127.1166, %_ZN6duckdb11NumericCastImivEET_T0_.exit.preheader ], [ %i.ab, %_ZN6duckdb11NumericCastImivEET_T0_.exit.loopexit ] ; 2 uses
  %i.fn = load ptr, ptr %12, align 8, !tbaa !242  ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.fn, %.lcssa147
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gf, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i ], [ %i.fn, %_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i70 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i70, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fq, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !42
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #34, !inline_history !317
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #34, !inline_history !317
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ft, %bb.bg ], [ %i.gd, %bb.bh ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ge, label %bb.bi, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i, !prof !53

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #34
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.be, %.lr.ph.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, %.lcssa147
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !245

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !242
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge
  %i.gg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fn, %_ZN6duckdb11NumericCastImivEET_T0_.exit._crit_edge ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEESaIS3_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.gg) #36
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.bk

bb.bk:                                            ; preds = %bb.a, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEESaIS3_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit143, %.loopexit.split-lp, %bb.h, %bb.k, %bb.at, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i51, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i64, %bb.ax, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39, %bb.af, %bb.ag, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.t, %bb.w, %bb.g
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.ai, %bb.k ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cq, %bb.af ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.n ], [ %i.bd, %bb.w ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.t ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i40 ], [ %.pn9.i.i36, %bb.aa ], [ %i.cv, %bb.ag ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107 ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i51 ], [ %.pn9.i.i47, %bb.ak ], [ %i.dq, %bb.at ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108 ], [ %.pn9.i104, %bb.aq ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i63 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i64 ], [ %.pn9.i.i60, %bb.ax ], [ %lpad.loopexit, %.loopexit143 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gh = load ptr, ptr %12, align 8, !tbaa !242  ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !243 ; 2 uses
  %.not4.i.i.i71 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not4.i.i.i71, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i82, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.body, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i78
  %.05.i.i.i73 = phi ptr [ %i.hb, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i78 ], [ %i.gh, %.body ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i73, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i74 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i.i.i74, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEEEvPT_.exit.i.i.i78, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i72
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.gm, align 8, !tbaa !40
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !42
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb12MetaPipeline14AddFinishEventERNS_8PipelineE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.09.117 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.09.1, %bb.c ] ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.117)
  %i.l = call { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_RS2_ESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS6_S6_EEES4_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(224) %i.k, ptr noundef nonnull align 8 dereferenceable(224) %1) ; 0 uses
  %.sroa.09.1 = getelementptr inbounds nuw i8, ptr %.sroa.09.117, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !259
  %.not = icmp eq ptr %.sroa.09.1, %i.m
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb12MetaPipeline14HasFinishEventERNS_8PipelineE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !322
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !238 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !284
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %bb.c, !llvm.loop !323

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load i64, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !220
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !238  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !302
  %i.s = icmp eq i64 %i.r, %i.h
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = icmp eq ptr %1, %i.t
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.x = icmp eq i64 %i.ad, %i.h
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = icmp eq ptr %1, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !324

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.o, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !238 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i, label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !302 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.ae, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !324

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, !llvm.loop !324

_ZNKSt13unordered_setISt17reference_wrapperIN6duckdb8PipelineEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ %i.o, %bb.f ], [ null, %bb.e ], [ %.sroa.06.0.i.i, %bb.d ], [ %i.ab, %bb.g ], [ null, %.lr.ph.i.i.i.i ]
  %i.af = icmp ne ptr %.sroa.06.1.i.i, null
  ret i1 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_ZNK6duckdb12MetaPipeline14GetFinishGroupERNS_8PipelineE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i64, ptr %i.a, align 8, !tbaa !325
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !238 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !284
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit, label %bb.c, !llvm.loop !326

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load i64, ptr %i.i, align 8, !tbaa !223  ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !222
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !238  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !302
  %i.s = icmp eq i64 %i.r, %i.h
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = icmp eq ptr %1, %i.t
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.x = icmp eq i64 %i.ad, %i.h
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = icmp eq ptr %1, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !327

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.o, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !238 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i, label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !302 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.ae, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !327

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit.thread, !llvm.loop !327

_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.ab, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !328, !nonnull !132, !align !133
  br label %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit.thread

_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit
  %i.ah = phi ptr [ %i.ag, %_ZNKSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEERS2_NS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S4_EEE4findERSA_.exit ], [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.lr.ph.i.i.i.i ]
  ret ptr %i.ah
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb12MetaPipeline19CreateUnionPipelineERNS_8PipelineEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::reference_wrapper.252", align 8 ; 4 uses
  %4 = alloca %"class.std::reference_wrapper.252", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb12MetaPipeline14CreatePipelineEv(ptr noundef nonnull align 8 dereferenceable(280) %0) ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330, !noalias !331 ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !334, !noalias !331 ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i.i.i, label %bb.c, !prof !53

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35, !noalias !331
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #37, !noalias !331 ; 6 uses
  %5 = add i64 %i.f, -8
  %6 = sub i64 %5, %i.g                           ; 2 uses
  %i.k = lshr i64 %6, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 72
  %i.m = ptrtoaddr ptr %i.j to i64
  %i.n = sub i64 %i.g, %i.m
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.l, 4611686018427387900      ; 3 uses
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o     ; 2 uses
  %i.q = getelementptr i8, ptr %i.e, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.e, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !noalias !331
  %wide.load63 = load <2 x i64>, ptr %i.s, align 8, !noalias !331
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !noalias !331
  store <2 x i64> %wide.load63, ptr %i.t, align 8, !noalias !331
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %bb.c ], [ %i.p, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %bb.c ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.v = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !noalias !331
  store i64 %i.v, ptr %.09.i.i.i.i.i.i.i, align 8, !noalias !331
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !336

_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.p, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !334 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sink, ptr %i.z, align 8, !tbaa !334
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !330
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !337
  %.not.i.i.i.i.i.i.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i11, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit: ; preds = %bb.d, %_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !195
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !195
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.af, align 8, !tbaa !236
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ai = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb8weak_ptrINS0_8PipelineELb1EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !338
  %.not.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %i.am, %bb.e ], [ %.sroa.06.0.i.i, %bb.g ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !238 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !284
  %i.ap = icmp eq ptr %1, %i.ao
  br i1 %i.ap, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit, label %bb.f, !llvm.loop !339

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit
  %i.aq = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !218 ; 2 uses
  %i.at = urem i64 %i.aq, %i.as                   ; 2 uses
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !217
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !301 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !238 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !302
  %i.bb = icmp eq i64 %i.ba, %i.aq
  %i.bc = load ptr, ptr %i.ay, align 8
  %i.bd = icmp eq ptr %1, %i.bc
  %i.be = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %i.be, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bg = icmp eq i64 %i.bm, %i.aq
  %i.bh = load ptr, ptr %i.bf, align 8
  %i.bi = icmp eq ptr %1, %i.bh
  %i.bj = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %i.bj, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !304

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %i.ax, %bb.i ]
  %i.bk = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !238 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !302 ; 2 uses
  %i.bn = urem i64 %i.bm, %i.as
  %.not19.i.i.i.i = icmp eq i64 %i.bn, %i.at
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !304

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread, !llvm.loop !304

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit: ; preds = %bb.j, %bb.g, %bb.i
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.g ], [ %i.ax, %bb.i ], [ %i.bk, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.a, ptr %3, align 8, !tbaa !284
  %i.bp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS4_NS2_6vectorIS4_Lb1ESaIS4_EEEESaISA_ENS_10_Select1stENS2_17ReferenceEqualityIS3_EENS2_21ReferenceHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.f, %bb.h, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit
  br i1 %2, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.a, ptr %4, align 8, !tbaa !284
  %i.br = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS4_NS2_6vectorIS4_Lb1ESaIS4_EEEESaISA_ENS_10_Select1stENS2_17ReferenceEqualityIS3_EENS2_21ReferenceHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !286 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !287
  %.not.i.i12 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = ptrtoint ptr %1 to i64
  store i64 %i.bw, ptr %i.bt, align 8
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !286
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.by, ptr %i.bs, align 8, !tbaa !286
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !247 ; 7 uses
  %i.ca = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #37 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = ptrtoint ptr %1 to i64
  store i64 %i.cm, ptr %i.cl, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.preheader

.lr.ph.i.i.i.i.i.i.i14.preheader:                 ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %7 = add i64 %i.ca, -8
  %8 = sub i64 %7, %i.cb                          ; 2 uses
  %i.co = lshr i64 %8, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %8, 72
  %i.cq = sub i64 %i.cb, %i.cn
  %diff.check66 = icmp ugt i64 %i.cq, -32
  %or.cond84 = or i1 %min.iters.check68, %diff.check66
  br i1 %or.cond84, label %.lr.ph.i.i.i.i.i.i.i14.preheader85, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader
  %n.vec71 = and i64 %i.cp, 4611686018427387900   ; 3 uses
  %i.cr = shl i64 %n.vec71, 3                     ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bz, i64 %i.cr
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.cu = shl i64 %index73, 3                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.ck, i64 %i.cu ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.bz, i64 %i.cu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.cv = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <2 x i64>, ptr %next.gep75, align 8, !alias.scope !343, !noalias !340
  %wide.load77 = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !343, !noalias !340
  %i.cw = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load76, ptr %next.gep74, align 8, !alias.scope !340, !noalias !343
  store <2 x i64> %wide.load77, ptr %i.cw, align 8, !alias.scope !340, !noalias !343
  %index.next78 = add nuw i64 %index73, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.cx, label %middle.block79, label %vector.body72, !llvm.loop !345

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.cp, %n.vec71
  br i1 %cmp.n80, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.preheader85

.lr.ph.i.i.i.i.i.i.i14.preheader85:               ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader, %middle.block79
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i14.preheader ], [ %i.cs, %middle.block79 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i14.preheader ], [ %i.ct, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i.i14:                           ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader85, %.lr.ph.i.i.i.i.i.i.i14
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i14 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i14.preheader85 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i14 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i14.preheader85 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.cy = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !343, !noalias !340
  store i64 %i.cy, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !340, !noalias !343
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.cz, %i.bt
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14, !llvm.loop !346

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i14, %middle.block79, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i16 = phi ptr [ %i.ck, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cs, %middle.block79 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i14 ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i16, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !247
  store ptr %i.db, ptr %i.bs, align 8, !tbaa !286
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dc, ptr %i.bu, align 8, !tbaa !287
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.m, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb8PipelineEENS1_6vectorIS3_Lb1ESaIS3_EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S6_EEE4findERSC_.exit.thread
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb18PipelineBuildState20SetPipelineOperatorsERNS_8PipelineENS_6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS6_EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((48, 64)) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !270
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !337
  store ptr %i.f, ptr %i.c, align 8, !tbaa !337
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #36
  br label %_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEaSEOS5_.exit

_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18PipelineBuildState20GetPipelineOperatorsERNS_8PipelineE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.21") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !334  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !337
  br label %_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEC2ERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %bb.c, !prof !53

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #37 ; 6 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !334
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !337
  %3 = add i64 %i.e, -8
  %4 = sub i64 %3, %i.f                           ; 2 uses
  %i.n = lshr i64 %4, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.p = ptrtoaddr ptr %i.k to i64
  %i.q = sub i64 %i.f, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.u ; 2 uses
  %next.gep3 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep3, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep3, align 8
  %wide.load4 = load <2 x i64>, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load4, ptr %i.w, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.k, %bb.c ], [ %i.s, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.c ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.y = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.y, ptr %.09.i.i.i.i.i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !348

_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.s, %middle.block ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12MetaPipeline19CreateChildPipelineERNS_8PipelineERNS_16PhysicalOperatorES2_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(224) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::shared_ptr.107", align 16 ; 10 uses
  %5 = alloca %"class.std::reference_wrapper.252", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::vector.15", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224, !nonnull !132, !align !133
  call void @_ZN6duckdb8Executor19CreateChildPipelineERNS_8PipelineERNS_16PhysicalOperatorE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.107") align 8 %4, ptr noundef nonnull align 8 dereferenceable(424) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load <2 x ptr>, ptr %4, align 16, !tbaa !58
  store ptr null, ptr %i.i, align 8, !tbaa !50
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !58
  store ptr null, ptr %4, align 16, !tbaa !186
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.d, align 8, !tbaa !232
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit unwind label %bb.u

_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !42
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !234
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !234
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.i, label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit, !prof !53

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.ad = call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !236
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !236
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %i.ad, ptr %5, align 8, !tbaa !284
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS4_NS2_6vectorIS4_Lb1ESaIS4_EEEESaISA_ENS_10_Select1stENS2_17ReferenceEqualityIS3_EENS2_21ReferenceHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !286 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !287
  %.not.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit
  %i.an = ptrtoint ptr %1 to i64
  store i64 %i.an, ptr %i.ak, align 8
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !286
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !286
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !247 ; 7 uses
  %i.ar = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.l, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i10 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #37 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = ptrtoint ptr %1 to i64
  store i64 %i.bd, ptr %i.bc, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ak
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = ptrtoaddr ptr %i.bb to i64
  %7 = add i64 %i.ar, -8
  %8 = sub i64 %7, %i.as                          ; 2 uses
  %i.bf = lshr i64 %8, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 72
  %i.bh = sub i64 %i.as, %i.be
  %diff.check = icmp ugt i64 %i.bh, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aq, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bl ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.aq, i64 %i.bl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.bm = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep25, align 8, !alias.scope !352, !noalias !349
  %wide.load26 = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !352, !noalias !349
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !349, !noalias !352
  store <2 x i64> %wide.load26, ptr %i.bn, align 8, !alias.scope !349, !noalias !352
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader28

.lr.ph.i.i.i.i.i.i.i.preheader28:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader28, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader28 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader28 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !352, !noalias !349
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !349, !noalias !352
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !355

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bj, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !247
  store ptr %i.bs, ptr %i.aj, align 8, !tbaa !286
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bt, ptr %i.al, align 8, !tbaa !287
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.j, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb12MetaPipeline19AddDependenciesFromERNS_8PipelineERKS1_b(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.15") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.ad, ptr noundef nonnull align 8 dereferenceable(224) %3, i1 noundef zeroext false)
  %i.bu = load ptr, ptr %6, align 8, !tbaa !251   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !232 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.co, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i ], [ %i.bu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i11 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i11, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bz, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !42
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #34, !inline_history !356
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #34, !inline_history !356
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.q ], [ %i.cm, %bb.r ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.s, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i, !prof !53

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #34
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.o, %.lr.ph.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.co, %i.bw
  br i1 %.not.i.i.i12, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !251
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit
  %i.cp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #36
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.t
  ret void

bb.u:                                             ; preds = %bb.c
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.cq
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18PipelineBuildState19CreateChildPipelineERNS_8ExecutorERNS_8PipelineERNS_16PhysicalOperatorE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.107") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(424) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(136) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb8Executor19CreateChildPipelineERNS_8PipelineERNS_16PhysicalOperatorE(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr.107") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %2, ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(136) %4)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6duckdb12ExecutorTaskC2ERNS_8ExecutorENS_10shared_ptrINS_5EventELb1EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr nofree noundef captures(none) %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !357
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb12ExecutorTaskE, i64 16), ptr %0, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !58
  store ptr null, ptr %i.f, align 8, !tbaa !50
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !58
  store ptr null, ptr %2, align 8, !tbaa !359
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %1, align 8, !tbaa !61, !nonnull !132, !align !133
  store ptr %i.j, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.l = atomicrmw add ptr %i.k, i64 1 seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
end_hunk_2
begin_hunk_3_@_ZN6duckdb8Executor29VerifyScheduledEventsInternalEmRKNS_6vectorISt17reference_wrapperINS_5EventEELb1ESaIS4_EEERNS1_IbLb1ESaIbEEESB_:bb.a
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEixEm.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEixEm.exit30, %bb.r
  %.sroa.038.086 = phi ptr [ %i.bx, %bb.r ], [ %.us-phi84, %_ZN6duckdb6vectorIbLb1ESaIbEEixEm.exit30 ] ; 2 uses
  %i.bw = load i64, ptr %.sroa.038.086, align 8, !tbaa !257
  invoke void @_ZN6duckdb8Executor29VerifyScheduledEventsInternalEmRKNS_6vectorISt17reference_wrapperINS_5EventEELb1ESaIS4_EEERNS1_IbLb1ESaIbEEESB_(i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.038.086, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.bx, %.us-phi83
  br i1 %.not60, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6duckdb6vectorIbLb1ESaIbEEixEm.exit32:         ; preds = %._crit_edge
  %i.bz = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bt, 1
  %i.cb = xor i64 %i.ca, -1
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !257
  %i.cd = and i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !257
  %.not.i.i.i33 = icmp eq ptr %.us-phi84, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEixEm.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %.us-phi84) #36
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.t, %_ZN6duckdb6vectorIbLb1ESaIbEEixEm.exit32, %bb.b, %bb.a
  ret void

bb.u:                                             ; preds = %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split.us, %.loopexit.split-lp, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.u, %bb.s, %bb.q, %bb.p
  %.sroa.052.066 = phi ptr [ %.us-phi84, %bb.p ], [ %.us-phi84, %bb.s ], [ %.us-phi84, %bb.u ], [ %.us-phi84, %bb.q ], [ %.sroa.052.075.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.sroa.052.075.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.sroa.052.075.us, %bb.n ], [ %.sroa.052.075.us, %.loopexit.split.us ], [ %.sroa.052.075.us, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.by, %bb.s ], [ %i.ce, %bb.u ], [ %i.bv, %bb.q ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.n ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i34 = icmp eq ptr %.sroa.052.066, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorImSaImEED2Ev.exit35, label %bb.v

bb.v:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %.sroa.052.066) #36
  br label %_ZNSt6vectorImSaImEED2Ev.exit35

_ZNSt6vectorImSaImEED2Ev.exit35:                  ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_5EventEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !666
  %i.e = load ptr, ptr %0, align 8, !tbaa !667    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !257
  store i64 %i.i, ptr %i.b, align 8, !tbaa !257
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorISt17reference_wrapperINS_5EventEELb1ESaIS3_EE3getILb1EEERKS3_m.exit, label %bb.b, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorISt17reference_wrapperINS_5EventEELb1ESaIS3_EE3getILb1EEERKS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb5Event22GetParentsVerificationEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(113) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor15AddRecursiveCTEERNS_16PhysicalOperatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !330
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !334  ; 7 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #37 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = ptrtoaddr ptr %i.t to i64
  %2 = add i64 %i.j, -8
  %3 = sub i64 %2, %i.k                           ; 2 uses
  %i.x = lshr i64 %3, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.z = sub i64 %i.k, %i.w
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !alias.scope !672, !noalias !669
  %wide.load6 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !672, !noalias !669
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !669, !noalias !672
  store <2 x i64> %wide.load6, ptr %i.af, align 8, !alias.scope !669, !noalias !672
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.preheader8:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !672, !noalias !669
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !669, !noalias !672
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !675

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !334
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !330
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.al, ptr %i.d, align 8, !tbaa !337
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor19ReschedulePipelinesERKNS_6vectorINS_10shared_ptrINS_12MetaPipelineELb1EEELb1ESaIS4_EEERNS1_INS2_INS_5EventELb1EEELb1ESaISA_EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::ScheduleEventData", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %1, ptr %3, align 8, !tbaa !658
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !659
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !660
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !462
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 1, ptr %i.e, align 8, !tbaa !461
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb8Executor22ScheduleEventsInternalERNS_17ScheduleEventDataE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !661  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_NS1_18PipelineEventStackEESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !238 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #36
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_NS1_18PipelineEventStackEESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !662

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_NS1_18PipelineEventStackEESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !462
  %i.l = load i64, ptr %i.e, align 8, !tbaa !461
  %i.m = shl i64 %i.l, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.m, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !462  ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.d
  br i1 %i.o, label %_ZN6duckdb17ScheduleEventDataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_NS1_18PipelineEventStackEESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.n) #36
  br label %_ZN6duckdb17ScheduleEventDataD2Ev.exit

_ZN6duckdb17ScheduleEventDataD2Ev.exit:           ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_NS1_18PipelineEventStackEESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17ScheduleEventDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Executor12NextExecutorEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !676  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %.not = icmp ult i64 %i.b, %i.j                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.b)
  %i.l = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  tail call void @_ZN6duckdb8Pipeline5ResetEv(ptr noundef nonnull align 8 dereferenceable(224) %i.l)
  %i.m = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !132, !align !133
  %i.n = load i64, ptr %i.a, align 8, !tbaa !676
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.q = tail call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #37, !noalias !677 ; 3 uses
  invoke void @_ZN6duckdb16PipelineExecutorC1ERNS_13ClientContextERNS_8PipelineE(ptr noundef nonnull align 8 dereferenceable(513) %i.q, ptr noundef nonnull align 8 dereferenceable(512) %i.m, ptr noundef nonnull align 8 dereferenceable(224) %i.p)
          to label %_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !677

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #36, !noalias !677
  resume { ptr, i32 } %i.r

_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !426  ; 3 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !426
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZN6duckdb16PipelineExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(513) %i.t) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #36
  br label %_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.u = load i64, ptr %i.a, align 8, !tbaa !676
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.a, align 8, !tbaa !676
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Pipeline5ResetEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.242", align 8 ; 7 uses
  tail call void @_ZN6duckdb8Pipeline9ResetSinkEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@_ZN6duckdb8Executor14VerifyPipelineERNS_8PipelineE:bb.a
  %i.o = load ptr, ptr %i.w, align 8, !tbaa !680  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.01447.us
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !680
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %i.q)
          to label %bb.d unwind label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i64 %.01447.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.ac
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !685

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.01548.us = phi i64 [ %i.ad, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01548.us
  br label %bb.c

.preheader46.us:                                  ; preds = %bb.b
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !330  ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !334    ; 6 uses
  %.not55 = icmp eq ptr %i.x, %i.y
  br i1 %.not55, label %._crit_edge49.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader46.us
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  br label %.preheader.us

._crit_edge.us:                                   ; preds = %bb.d
  %i.ad = add nuw i64 %.01548.us, 1               ; 2 uses
  %exitcond58.not = icmp eq i64 %i.ad, %umax57
  br i1 %exitcond58.not, label %._crit_edge49.split.us.thread, label %.preheader.us, !llvm.loop !686

._crit_edge49.split.us:                           ; preds = %.preheader46.us
  %.not.i.i.i20.us = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i20.us, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us, label %._crit_edge49.split.us.thread

.split.us:                                        ; preds = %bb.b, %.lr.ph.split.us
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34

._crit_edge53:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us, %bb.a
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge53
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit: ; preds = %._crit_edge53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21
  %.sroa.041.051 = phi ptr [ %i.ah, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21 ], [ %i.b, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.af = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.051)
          to label %bb.f unwind label %.split

bb.f:                                             ; preds = %.lr.ph.split
  invoke void @_ZN6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %i.af)
          to label %.preheader46 unwind label %.split

.preheader46:                                     ; preds = %bb.f
  %i.ag = load ptr, ptr %3, align 8, !tbaa !334   ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21, label %bb.g

bb.g:                                             ; preds = %.preheader46
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21: ; preds = %.preheader46, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.041.051, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.d
  br i1 %.not, label %._crit_edge53, label %.lr.ph.split

.split:                                           ; preds = %bb.f, %.lr.ph.split
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread: ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.h

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34: ; preds = %.split, %.split.us
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %.split ], [ %i.ae, %.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not.i.i.i35 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit36, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34
  %.pn.pn69 = phi { ptr, i32 } [ %i.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread ], [ %.pn.pn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34 ]
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34, %bb.h
  %.pn.pn70 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34 ], [ %.pn.pn69, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn.pn70
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.21") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 5 uses
  %i.f = ptrtoint ptr %i.b to i64
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !334
  store ptr %i.g, ptr %i.c, align 8, !tbaa !330
  store ptr %i.g, ptr %i.d, align 8, !tbaa !337
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 2 uses
  %.not66 = icmp eq ptr %i.i, %i.k
  br i1 %.not66, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.l = phi ptr [ %i.e, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ax, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ] ; 8 uses
  %i.m = phi ptr [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ay, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ] ; 5 uses
  %i.n = phi ptr [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.az, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ] ; 4 uses
  store ptr %i.n, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !485
  %.not52 = icmp eq ptr %i.p, null
  br i1 %.not52, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit42, label %bb.d

.lr.ph:                                           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24
  %.sroa.047.067 = phi ptr [ %i.ba, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.az, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 8 uses
  %i.r = phi ptr [ %i.ay, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.s = phi ptr [ %i.ax, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.e, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 11 uses
  %i.t = load ptr, ptr %.sroa.047.067, align 8, !tbaa !680 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i9, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.q, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24

bb.b:                                             ; preds = %.lr.ph
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.c, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10

bb.c:                                             ; preds = %bb.b
  store ptr %i.q, ptr %i.c, align 8
  store ptr %i.r, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10: ; preds = %bb.b
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i11, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #37
          to label %.noexc23 unwind label %.loopexit ; 8 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %i.t to i64
  store i64 %i.ah, ptr %i.ag, align 8
  %.not10.i.i.i.i.i.i.i13 = icmp eq ptr %i.s, %i.q
  br i1 %.not10.i.i.i.i.i.i.i13, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14.preheader

.lr.ph.i.i.i.i.i.i.i14.preheader:                 ; preds = %.noexc23
  %i.ai = ptrtoaddr ptr %i.af to i64
  %2 = add i64 %i.v, -8
  %3 = sub i64 %2, %i.w                           ; 2 uses
  %i.aj = lshr i64 %3, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.al = sub i64 %i.w, %i.ai
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i14.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.af, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.s, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.aq = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep129, align 8, !alias.scope !690, !noalias !687
  %wide.load130 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !690, !noalias !687
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !687, !noalias !690
  store <2 x i64> %wide.load130, ptr %i.ar, align 8, !alias.scope !687, !noalias !690
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14.preheader152

.lr.ph.i.i.i.i.i.i.i14.preheader152:              ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader, %middle.block
  %.012.i.i.i.i.i.i.i15.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i14.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i16.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i14.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i.i14:                           ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader152, %.lr.ph.i.i.i.i.i.i.i14
  %.012.i.i.i.i.i.i.i15 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i14 ], [ %.012.i.i.i.i.i.i.i15.ph, %.lr.ph.i.i.i.i.i.i.i14.preheader152 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i16 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i14 ], [ %.0911.i.i.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i.i.i14.preheader152 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i16, align 8, !alias.scope !690, !noalias !687
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i15, align 8, !alias.scope !687, !noalias !690
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i16, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i15, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.au, %i.q
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14, !llvm.loop !693

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i14, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i.i19 = phi ptr [ %i.af, %.noexc23 ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i14 ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #36
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, %bb.a
  %i.ax = phi ptr [ %i.af, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21 ], [ %i.s, %bb.a ] ; 2 uses
  %i.ay = phi ptr [ %i.aw, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21 ], [ %i.r, %bb.a ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i19.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i19, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21 ], [ %i.q, %bb.a ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i19.pn, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.047.067, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.c, align 8
  store ptr %i.r, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !485 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = ptrtoint ptr %i.bb to i64
  store i64 %i.bc, ptr %i.n, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !330
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit42

bb.g:                                             ; preds = %bb.e
  %i.be = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.bf = ptrtoint ptr %i.l to i64                ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.h, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc40 unwind label %bb.i

.noexc40:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.g
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #37
          to label %.noexc41 unwind label %bb.i   ; 8 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  %i.bq = ptrtoint ptr %i.bb to i64
  store i64 %i.bq, ptr %i.bp, align 8
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.l, %i.m
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i39, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.br = ptrtoaddr ptr %i.bo to i64
  %4 = add i64 %i.be, -8
  %5 = sub i64 %4, %i.bf                          ; 2 uses
  %i.bs = lshr i64 %5, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %5, 72
  %i.bu = sub i64 %i.bf, %i.br
  %diff.check133 = icmp ugt i64 %i.bu, -32
  %or.cond150 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond150, label %.lr.ph.i.i.i.i.i.i.i32.preheader151, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %n.vec138 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.l, i64 %i.bv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.by = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.l, i64 %i.by ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.bz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8, !alias.scope !697, !noalias !694
  %wide.load144 = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !697, !noalias !694
  %i.ca = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8, !alias.scope !694, !noalias !697
  store <2 x i64> %wide.load144, ptr %i.ca, align 8, !alias.scope !694, !noalias !697
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.cb, label %middle.block146, label %vector.body139, !llvm.loop !699

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.bt, %n.vec138
  br i1 %cmp.n147, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i39, label %.lr.ph.i.i.i.i.i.i.i32.preheader151

.lr.ph.i.i.i.i.i.i.i32.preheader151:              ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block146
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.bw, %middle.block146 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.bx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader151, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader151 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader151 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !alias.scope !697, !noalias !694
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i33, align 8, !alias.scope !694, !noalias !697
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.cd, %i.m
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i39, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !700

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block146, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.bo, %.noexc41 ], [ %i.bw, %middle.block146 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #36
  store ptr %i.bo, ptr %0, align 8, !tbaa !334
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !330
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.cg, ptr %i.d, align 8, !tbaa !337
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit42

bb.i:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.h, %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit42: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i39, %._crit_edge
  ret void

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %i.ci = phi ptr [ %i.s, %.loopexit.split-lp ], [ %i.l, %bb.i ], [ %i.s, %.loopexit ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ch, %bb.i ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.ci) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330
  %i.e = load ptr, ptr %0, align 8, !tbaa !334    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !257
  store i64 %i.i, ptr %i.b, align 8, !tbaa !257
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb8Executor15VerifyPipelinesEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(424) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor10InitializeERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb8Executor5ResetEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  tail call void @_ZN6duckdb8Executor18InitializeInternalERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor5ResetEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.d, align 8, !tbaa !390
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !426  ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb8Executor14ThrowExceptionEv:bb.a
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d
  %.pn.pn.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.g, %bb.d ]
  %i.k = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %.pn.pn.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor19CreateChildPipelineERNS_8PipelineERNS_16PhysicalOperatorE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.107") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #37, !noalias !749 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !40, !noalias !749
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !42, !noalias !749
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb8PipelineESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !28, !noalias !749
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN6duckdb8PipelineC1ERNS_8ExecutorE(ptr noundef nonnull align 8 dereferenceable(224) %i.d, ptr noundef nonnull align 8 dereferenceable(424) %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb8PipelineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !749

common.resume:                                    ; preds = %bb.u, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb8PipelineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb8PipelineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb8PipelineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #36, !noalias !749
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !186, !alias.scope !746
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !50, !alias.scope !746
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51, !noalias !746
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 8, !tbaa !3, !noalias !746
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.b, align 8, !tbaa !3, !noalias !746
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !746 ; 0 uses
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !186, !alias.scope !746
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %.pre.i.i, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  tail call void @_ZN6duckdb10shared_ptrINS_8PipelineELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.k, ptr noundef %i.k) #34
  %i.l = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 8, !tbaa !40
  store i32 0, ptr %i.c, align 4, !tbaa !42
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #34, !inline_history !231
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #34, !inline_history !231
  br label %_ZN6duckdb15make_shared_ptrINS_8PipelineEJRNS_8ExecutorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51, !noalias !746
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.n, -1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.w, %bb.i ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.j, label %_ZN6duckdb15make_shared_ptrINS_8PipelineEJRNS_8ExecutorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !53

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #34
  br label %_ZN6duckdb15make_shared_ptrINS_8PipelineEJRNS_8ExecutorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_8PipelineEJRNS_8ExecutorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.y = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_8PipelineEJRNS_8ExecutorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !195
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !195
  %i.ac = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = ptrtoint ptr %3 to i64
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !195
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !270 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.not2122 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not2122, label %.critedge, label %.lr.ph

bb.m:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_8PipelineEJRNS_8ExecutorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph:                                           ; preds = %bb.l, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backERKS3_.exit
  %.sroa.017.023 = phi ptr [ %i.by, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backERKS3_.exit ], [ %i.ag, %bb.l ] ; 2 uses
  %i.al = load i64, ptr %.sroa.017.023, align 8   ; 3 uses
  %i.am = inttoptr i64 %i.al to ptr
  %.not = icmp eq ptr %3, %i.am
  br i1 %.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.an = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.p unwind label %.loopexit  ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !330 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !337
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.al, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !330
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !330
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backERKS3_.exit

bb.r:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !334 ; 7 uses
  %i.aw = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.s, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #37
          to label %.noexc14 unwind label %.loopexit ; 8 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i64 %i.al, ptr %i.bh, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc14
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %4 = add i64 %i.aw, -8
  %5 = sub i64 %4, %i.ax                          ; 2 uses
  %i.bj = lshr i64 %5, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.bl = sub i64 %i.ax, %i.bi
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bp ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.av, i64 %i.bp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.bq = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !alias.scope !755, !noalias !752
  %wide.load31 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !755, !noalias !752
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !752, !noalias !755
  store <2 x i64> %wide.load31, ptr %i.br, align 8, !alias.scope !752, !noalias !755
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.preheader33:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader33 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !755, !noalias !752
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !752, !noalias !755
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.bu, %i.aq
  br i1 %.not.i.i.i.i.i.i13, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !758

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bg, %.noexc14 ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.bg, ptr %i.ao, align 8, !tbaa !334
  store ptr %i.bw, ptr %i.ap, align 8, !tbaa !330
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bx, ptr %i.ar, align 8, !tbaa !337
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.q, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.by, %i.ai
  br i1 %.not21, label %.critedge, label %.lr.ph

.loopexit:                                        ; preds = %bb.o, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.critedge:                                        ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backERKS3_.exit, %.lr.ph, %bb.l
  ret void

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor8GetTypesEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.227") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor8GetErrorEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ErrorData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #34, !noalias !759 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35, !noalias !759
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_9ErrorDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %bb.c unwind label %bb.d, !noalias !759

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZN6duckdb9ErrorDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_ZN6duckdb16TaskErrorManager8GetErrorEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.e

_ZN6duckdb16TaskErrorManager8GetErrorEv.exit:     ; preds = %bb.c
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #34 ; 0 uses
  ret void
}

declare void @_ZN6duckdb13QueryProfiler5FlushERNS_16OperatorProfilerE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN6duckdb13QueryProfiler14SetBlockedTimeERKd(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb8Executor20GetPipelinesProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::ProgressData", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259  ; 2 uses
  %.not16 = icmp eq ptr %i.d, %i.f
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.0.lcssa = phi i64 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.1, %bb.i ]
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret i64 %.0.lcssa

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.018 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.i ]  ; 2 uses
  %.sroa.010.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.v, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %2, i8 0, i64 17, i1 false)
  %i.j = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.017)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_ZN6duckdb8Pipeline11GetProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 8 dereferenceable(17) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.018, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_ZNK6duckdb8Pipeline17PrintDependenciesEv:bb.a
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #34, !inline_history !234
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #34, !inline_history !234
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.o ], [ %i.aj, %bb.p ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.q, label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit, !prof !53

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #34
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %bb.k
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i9 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit
  %i.am = load i32, ptr %i.i, align 4, !tbaa !3   ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10

bb.s:                                             ; preds = %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit
  %i.ao = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i11 = phi i32 [ %i.am, %bb.r ], [ %i.ao, %bb.s ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i11, 1
  br i1 %i.ap, label %bb.t, label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !inline_history !190
  br label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit

_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit:  ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.020.030, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.i, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit16, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.pn44 = phi { ptr, i32 } [ %i.au, %.thread ], [ %i.av, %bb.u ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i13 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i13, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

bb.x:                                             ; preds = %bb.v
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i15 = phi i32 [ %i.ay, %bb.w ], [ %i.ba, %bb.x ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i15, 1
  br i1 %i.bb, label %bb.y, label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit16

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !inline_history !190
  br label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit16

_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit16: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14, %bb.y
  %.pn45 = phi { ptr, i32 } [ %i.av, %bb.u ], [ %.pn44, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14 ], [ %.pn44, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.860") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 5 uses
  %i.f = ptrtoint ptr %i.b to i64
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !943
  store ptr %i.g, ptr %i.c, align 8, !tbaa !946
  store ptr %i.g, ptr %i.d, align 8, !tbaa !947
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 2 uses
  %.not66 = icmp eq ptr %i.i, %i.k
  br i1 %.not66, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.l = phi ptr [ %i.e, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ax, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ] ; 8 uses
  %i.m = phi ptr [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ay, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ] ; 5 uses
  %i.n = phi ptr [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.az, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ] ; 4 uses
  store ptr %i.n, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !485
  %.not52 = icmp eq ptr %i.p, null
  br i1 %.not52, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit42, label %bb.d

.lr.ph:                                           ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24
  %.sroa.047.067 = phi ptr [ %i.ba, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ], [ %i.i, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.az, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ], [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 8 uses
  %i.r = phi ptr [ %i.ay, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ], [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.s = phi ptr [ %i.ax, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24 ], [ %i.e, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 11 uses
  %i.t = load ptr, ptr %.sroa.047.067, align 8, !tbaa !680 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i9, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.q, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24

bb.b:                                             ; preds = %.lr.ph
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.c, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i10

bb.c:                                             ; preds = %bb.b
  store ptr %i.q, ptr %i.c, align 8
  store ptr %i.r, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i10: ; preds = %bb.b
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i11, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #37
          to label %.noexc23 unwind label %.loopexit ; 8 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %i.t to i64
  store i64 %i.ah, ptr %i.ag, align 8
  %.not10.i.i.i.i.i.i.i13 = icmp eq ptr %i.s, %i.q
  br i1 %.not10.i.i.i.i.i.i.i13, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14.preheader

.lr.ph.i.i.i.i.i.i.i14.preheader:                 ; preds = %.noexc23
  %i.ai = ptrtoaddr ptr %i.af to i64
  %2 = add i64 %i.v, -8
  %3 = sub i64 %2, %i.w                           ; 2 uses
  %i.aj = lshr i64 %3, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.al = sub i64 %i.w, %i.ai
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i14.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.af, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.s, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.aq = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep129, align 8, !alias.scope !951, !noalias !948
  %wide.load130 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !951, !noalias !948
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !948, !noalias !951
  store <2 x i64> %wide.load130, ptr %i.ar, align 8, !alias.scope !948, !noalias !951
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !953

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14.preheader152

.lr.ph.i.i.i.i.i.i.i14.preheader152:              ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader, %middle.block
  %.012.i.i.i.i.i.i.i15.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i14.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i16.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i14.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i.i14:                           ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader152, %.lr.ph.i.i.i.i.i.i.i14
  %.012.i.i.i.i.i.i.i15 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i14 ], [ %.012.i.i.i.i.i.i.i15.ph, %.lr.ph.i.i.i.i.i.i.i14.preheader152 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i16 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i14 ], [ %.0911.i.i.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i.i.i14.preheader152 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i16, align 8, !alias.scope !951, !noalias !948
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i15, align 8, !alias.scope !948, !noalias !951
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i16, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i15, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.au, %i.q
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14, !llvm.loop !954

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i14, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i.i19 = phi ptr [ %i.af, %.noexc23 ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i14 ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #36
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit24: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21, %bb.a
  %i.ax = phi ptr [ %i.af, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21 ], [ %i.s, %bb.a ] ; 2 uses
  %i.ay = phi ptr [ %i.aw, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21 ], [ %i.r, %bb.a ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i19.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i19, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i21 ], [ %i.q, %bb.a ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i19.pn, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.047.067, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i10
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.c, align 8
  store ptr %i.r, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !485 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = ptrtoint ptr %i.bb to i64
  store i64 %i.bc, ptr %i.n, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !946
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit42

bb.g:                                             ; preds = %bb.e
  %i.be = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.bf = ptrtoint ptr %i.l to i64                ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.h, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc40 unwind label %bb.i

.noexc40:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.g
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #37
          to label %.noexc41 unwind label %bb.i   ; 8 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  %i.bq = ptrtoint ptr %i.bb to i64
  store i64 %i.bq, ptr %i.bp, align 8
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.l, %i.m
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i39, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.br = ptrtoaddr ptr %i.bo to i64
  %4 = add i64 %i.be, -8
  %5 = sub i64 %4, %i.bf                          ; 2 uses
  %i.bs = lshr i64 %5, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %5, 72
  %i.bu = sub i64 %i.bf, %i.br
  %diff.check133 = icmp ugt i64 %i.bu, -32
  %or.cond150 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond150, label %.lr.ph.i.i.i.i.i.i.i32.preheader151, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %n.vec138 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.l, i64 %i.bv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.by = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.l, i64 %i.by ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.bz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8, !alias.scope !958, !noalias !955
  %wide.load144 = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !958, !noalias !955
  %i.ca = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8, !alias.scope !955, !noalias !958
  store <2 x i64> %wide.load144, ptr %i.ca, align 8, !alias.scope !955, !noalias !958
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.cb, label %middle.block146, label %vector.body139, !llvm.loop !960

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.bt, %n.vec138
  br i1 %cmp.n147, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i39, label %.lr.ph.i.i.i.i.i.i.i32.preheader151

.lr.ph.i.i.i.i.i.i.i32.preheader151:              ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block146
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.bw, %middle.block146 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.bx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader151, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader151 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader151 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !alias.scope !958, !noalias !955
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i33, align 8, !alias.scope !955, !noalias !958
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.cd, %i.m
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i39, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !961

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block146, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.bo, %.noexc41 ], [ %i.bw, %middle.block146 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #36
  store ptr %i.bo, ptr %0, align 8, !tbaa !943
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !946
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.cg, ptr %i.d, align 8, !tbaa !947
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit42

bb.i:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.h, %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit42: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i39, %._crit_edge
  ret void

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %i.ci = phi ptr [ %i.s, %.loopexit.split-lp ], [ %i.l, %bb.i ], [ %i.s, %.loopexit ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ch, %bb.i ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.ci) #36
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb8Pipeline24GetIntermediateOperatorsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb8Pipeline11ClearSourceEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !628
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #34, !inline_history !962
  br label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !899
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt8multisetImSt4lessImESaImEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #38
  unreachable

_ZNSt8multisetImSt4lessImESaImEE5clearEv.exit:    ; preds = %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !899
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.k, ptr %i.l, align 8, !tbaa !900
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.k, ptr %i.m, align 8, !tbaa !901
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.n, align 8, !tbaa !902
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb8Pipeline21RegisterNewBatchIndexEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !902
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !900
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.in = phi ptr [ %i.f, %bb.c ], [ %i.i, %bb.d ]
  %i.j = load i64, ptr %.in, align 8, !tbaa !257  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %.078.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !963 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_insert_equalIRKmEESt17_Rb_tree_iteratorImEOT_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i ], [ %.078.i.i.i, %bb.e ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !257
  %i.o = icmp ult i64 %i.j, %i.n                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !963 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE23_M_get_insert_equal_posERKm.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !964

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE23_M_get_insert_equal_posERKm.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = icmp eq ptr %.0710.i.i.i, %i.l
  %spec.select.i.i = or i1 %i.p, %i.o
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_insert_equalIRKmEESt17_Rb_tree_iteratorImEOT_.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_insert_equalIRKmEESt17_Rb_tree_iteratorImEOT_.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE23_M_get_insert_equal_posERKm.exit.i.i, %bb.e
  %.0.lcssa.i11.i.i = phi ptr [ %i.l, %bb.e ], [ %.0710.i.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE23_M_get_insert_equal_posERKm.exit.i.i ]
  %i.q = phi i1 [ true, %bb.e ], [ %spec.select.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE23_M_get_insert_equal_posERKm.exit.i.i ]
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_insert_equalIRKmEESt17_Rb_tree_iteratorImEOT_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %i.j, ptr %i.s, align 8, !tbaa !257
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %.0.lcssa.i11.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #34
  %i.t = load i64, ptr %i.c, align 8, !tbaa !902
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.c, align 8, !tbaa !902
end_hunk_6
begin_hunk_7_@_ZN6duckdb17InternalExceptionC2IJRmRKmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !966
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !966
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1423", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !974
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !969, !noalias !974 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !972, !noalias !974 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #36
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !973

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !969, !noalias !974
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !974
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !974
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb18PipelineBuildState17SetPipelineSourceERNS_8PipelineERNS_16PhysicalOperatorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((32, 40)) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = ptrtoint ptr %2 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18PipelineBuildState19AddPipelineOperatorERNS_8PipelineERNS_16PhysicalOperatorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %2 to i64
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !330
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !330
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !334  ; 7 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #37 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %2 to i64
  store i64 %i.v, ptr %i.u, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = ptrtoaddr ptr %i.t to i64
  %3 = add i64 %i.j, -8
  %4 = sub i64 %3, %i.k                           ; 2 uses
  %i.x = lshr i64 %4, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.z = sub i64 %i.k, %i.w
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !alias.scope !980, !noalias !977
  %wide.load6 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !980, !noalias !977
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !977, !noalias !980
  store <2 x i64> %wide.load6, ptr %i.af, align 8, !alias.scope !977, !noalias !980
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !982

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.preheader8:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !980, !noalias !977
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !977, !noalias !980
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !983

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !334
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !330
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.al, ptr %i.d, align 8, !tbaa !337
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @_ZN6duckdb18PipelineBuildState17GetPipelineSourceERNS_8PipelineE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !195
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @_ZN6duckdb18PipelineBuildState15GetPipelineSinkERNS_8PipelineE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !195
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb21PipelineCompleteEventC2ERNS_8ExecutorEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(114) initializes((0, 114)) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, i1 noundef zeroext %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.d, i8 0, i64 81, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb21PipelineCompleteEventE, i64 16), ptr %0, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.a, ptr %i.e, align 1, !tbaa !984
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb21PipelineCompleteEvent8ScheduleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6duckdb21PipelineCompleteEvent14FinalizeFinishEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(114) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.b = load i8, ptr %i.a, align 1, !tbaa !984, !range !268, !noundef !132
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !775, !nonnull !132, !align !133
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.g = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13PipelineEventC2ENS_10shared_ptrINS_8PipelineELb1EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::shared_ptr.107", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !58
  store ptr null, ptr %i.a, align 8, !tbaa !50
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !186
  %i.c = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit unwind label %bb.b

_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156, !nonnull !132, !align !133
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.h, i8 0, i64 81, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load <2 x ptr>, ptr %2, align 16, !tbaa !58
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13PipelineEventE, i64 16), ptr %0, align 8, !tbaa !28
  ret void

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13PipelineEvent8ScheduleEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::shared_ptr.371", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::ErrorData", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %5 = alloca %"class.duckdb::ErrorData", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6duckdb23enable_shared_from_thisINS_5EventEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.371") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156, !nonnull !132, !align !133 ; 2 uses
  %i.f = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb8Pipeline5ResetEv(ptr noundef nonnull align 8 dereferenceable(224) %i.f)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb8Pipeline16ScheduleParallelERNS_10shared_ptrINS_5EventELb1EEE(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc20 unwind label %bb.f

.noexc20:                                         ; preds = %.noexc
  br i1 %i.g, label %_ZN6duckdb8Pipeline8ScheduleERNS_10shared_ptrINS_5EventELb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc20
  invoke void @_ZN6duckdb8Pipeline22ScheduleSequentialTaskERNS_10shared_ptrINS_5EventELb1EEE(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN6duckdb8Pipeline8ScheduleERNS_10shared_ptrINS_5EventELb1EEE.exit unwind label %bb.f
end_hunk_7
begin_hunk_8_@_ZN6duckdb16PipelineExecutorC2ERNS_13ClientContextERNS_8PipelineE:bb.a
  %i.ez = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.ez, label %middle.block244, label %vector.body237, !llvm.loop !1027

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %i.en, %n.vec236
  br i1 %cmp.n245, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47.preheader310

.lr.ph.i.i.i.i.i47.preheader310:                  ; preds = %vector.memcheck226, %.lr.ph.i.i.i.i.i47.preheader, %middle.block244
  %.012.i.i.i.i.i48.ph = phi ptr [ %i.ej, %vector.memcheck226 ], [ %i.ej, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.et, %middle.block244 ]
  %.0911.i.i.i.i.i49.ph = phi ptr [ %i.ea, %vector.memcheck226 ], [ %i.ea, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.eu, %middle.block244 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader310, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i48 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i47.preheader310 ] ; 2 uses
  %.0911.i.i.i.i.i49 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i47 ], [ %.0911.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i47.preheader310 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.fa = load i64, ptr %.0911.i.i.i.i.i49, align 8, !tbaa !1020, !alias.scope !1018, !noalias !1015
  store i64 %i.fa, ptr %.012.i.i.i.i.i48, align 8, !tbaa !1020, !alias.scope !1015, !noalias !1018
  store ptr null, ptr %.0911.i.i.i.i.i49, align 8, !tbaa !1020, !alias.scope !1018, !noalias !1015
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 8
  %.not.i.i.i.i.i50 = icmp eq ptr %i.fb, %i.eg
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1028

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block244, %.noexc53
  %.not.i8.i51 = icmp eq ptr %i.ea, null
  br i1 %.not.i8.i51, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #36
  %.pre153.pre = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.pre153 = phi ptr [ %.pre153.pre, %bb.ab ], [ %i.dv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ] ; 3 uses
  store ptr %i.ej, ptr %i.f, align 8, !tbaa !1013
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store ptr %i.fd, ptr %i.ef, align 8, !tbaa !1014
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.pre-phi164193
  store ptr %i.fe, ptr %i.dy, align 8, !tbaa !1012
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %.pre153, i64 48
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !tbaa !330
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %.pre153, i64 40
  %.pre157 = load ptr, ptr %.phi.trans.insert156, align 8, !tbaa !334
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.ff = phi ptr [ %i.dx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre157, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.fg = phi ptr [ %i.dw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre155, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.fh = phi ptr [ %i.dv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre153, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 3 uses
  %.not138 = icmp eq ptr %i.fg, %i.ff
  br i1 %.not138, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.fl = icmp eq ptr %i.ki, %i.kh
  br i1 %i.fl, label %._crit_edge.thread, label %bb.ac

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %._crit_edge
  %.lcssa119197 = phi ptr [ %i.ke, %._crit_edge ], [ %i.fh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.lcssa119197, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %.noexc54 unwind label %bb.q

bb.ac:                                            ; preds = %._crit_edge
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %.noexc54 unwind label %bb.q

.noexc54:                                         ; preds = %bb.ac, %._crit_edge.thread
  %.in.i = phi ptr [ %i.fm, %._crit_edge.thread ], [ %i.fn, %bb.ac ]
  %i.fo = load ptr, ptr %.in.i, align 8, !tbaa !195
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fp)
          to label %.noexc56 unwind label %bb.q

.noexc56:                                         ; preds = %.noexc54
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 noundef 2048)
          to label %_ZN6duckdb16PipelineExecutor15InitializeChunkERNS_9DataChunkE.exit unwind label %bb.q

bb.ad:                                            ; preds = %bb.v, %bb.x, %bb.w
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.bh

bb.ae:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.ft = phi ptr [ %i.fi, %.lr.ph ], [ %i.kf, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %i.fu = phi ptr [ %i.fh, %.lr.ph ], [ %i.ke, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %.028135 = phi i64 [ 0, %.lr.ph ], [ %i.kd, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.fv = icmp eq i64 %.028135, 0
  br i1 %i.fv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ae
  %i.fx = add i64 %.028135, -1
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 noundef %i.fx)
          to label %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit unwind label %bb.ba

_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit: ; preds = %bb.ag, %bb.af
  %.in = phi ptr [ %i.fw, %bb.af ], [ %i.fy, %bb.ag ]
  %i.fz = load ptr, ptr %.in, align 8, !tbaa !195
  %i.ga = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %.028135)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !680 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.ge = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %.noexc59 unwind label %bb.bc  ; 3 uses

.noexc59:                                         ; preds = %bb.ah
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ge)
          to label %bb.aj unwind label %bb.ai, !noalias !1029

bb.ai:                                            ; preds = %.noexc59
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ge) #36, !noalias !1029
  br label %.body

bb.aj:                                            ; preds = %.noexc59
  store ptr %i.ge, ptr %7, align 8, !tbaa !1003, !alias.scope !1029
  %i.gg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gh)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 noundef 2048)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gk = load ptr, ptr %i.fj, align 8, !tbaa !997 ; 6 uses
  %i.gl = load ptr, ptr %i.cn, align 8, !tbaa !995
  %.not.i.i = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gm = load i64, ptr %7, align 8, !tbaa !1003
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !1003
  store ptr null, ptr %7, align 8, !tbaa !1003
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.gn, ptr %i.fj, align 8, !tbaa !997
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ao:                                            ; preds = %bb.am
  %i.go = load ptr, ptr %i.e, align 8, !tbaa !996 ; 10 uses
  %i.gp = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gq = ptrtoint ptr %i.go to i64               ; 3 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.ap, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.gt = ashr exact i64 %i.gr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 1152921504606846975)
  %i.gx = select i1 %i.gv, i64 1152921504606846975, i64 %i.gw ; 3 uses
  %.not.i.i.i.i60 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i60)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #37
          to label %.noexc63 unwind label %.loopexit ; 10 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr
  %i.hb = load i64, ptr %7, align 8, !tbaa !1003
  store i64 %i.hb, ptr %i.ha, align 8, !tbaa !1003
  store ptr null, ptr %7, align 8, !tbaa !1003
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.go, %i.gk
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc63
  %9 = add i64 %i.gp, -8
  %10 = sub i64 %9, %i.gq                         ; 2 uses
  %i.hc = lshr i64 %10, 3
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check281 = icmp ult i64 %10, 56
  br i1 %min.iters.check281, label %.lr.ph.i.i.i.i.i.i.i.preheader297, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep273 = getelementptr i8, ptr %i.gz, i64 8
  %i.he = add i64 %i.gp, -8
  %i.hf = sub i64 %i.he, %i.gq
  %i.hg = and i64 %i.hf, -8                       ; 2 uses
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.hg
  %scevgep275 = getelementptr i8, ptr %i.go, i64 8
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.hg
  %bound0277 = icmp ult ptr %i.gz, %scevgep276
  %bound1278 = icmp ult ptr %i.go, %scevgep274
  %found.conflict279 = and i1 %bound0277, %bound1278
  br i1 %found.conflict279, label %.lr.ph.i.i.i.i.i.i.i.preheader297, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck272
  %n.vec284 = and i64 %i.hd, 4611686018427387900  ; 3 uses
  %i.hh = shl i64 %n.vec284, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gz, i64 %i.hh  ; 2 uses
  %i.hj = getelementptr i8, ptr %i.go, i64 %i.hh
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph282
  %index286 = phi i64 [ 0, %vector.ph282 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %i.hk = shl i64 %index286, 3                    ; 2 uses
  %next.gep287 = getelementptr i8, ptr %i.gz, i64 %i.hk ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.go, i64 %i.hk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hl = getelementptr i8, ptr %next.gep288, i64 16
  %wide.load289 = load <2 x i64>, ptr %next.gep288, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  %wide.load290 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  %i.hm = getelementptr i8, ptr %next.gep287, i64 16
  store <2 x i64> %wide.load289, ptr %next.gep287, align 8, !tbaa !1003, !alias.scope !1040, !noalias !1037
  store <2 x i64> %wide.load290, ptr %i.hm, align 8, !tbaa !1003, !alias.scope !1040, !noalias !1037
  %i.hn = getelementptr i8, ptr %next.gep288, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep288, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  store <2 x ptr> splat (ptr null), ptr %i.hn, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  %index.next291 = add nuw i64 %index286, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.ho, label %middle.block292, label %vector.body285, !llvm.loop !1042

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %i.hd, %n.vec284
  br i1 %cmp.n293, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader297

.lr.ph.i.i.i.i.i.i.i.preheader297:                ; preds = %vector.memcheck272, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block292
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gz, %vector.memcheck272 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hi, %middle.block292 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.go, %vector.memcheck272 ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hj, %middle.block292 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader297, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader297 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader297 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1035, !noalias !1032
  store i64 %i.hp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1032, !noalias !1035
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1035, !noalias !1032
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i61 = icmp eq ptr %i.hq, %i.gk
  br i1 %.not.i.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1043

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block292, %.noexc63
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gz, %.noexc63 ], [ %i.hi, %middle.block292 ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.go) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.gz, ptr %i.e, align 8, !tbaa !996
  store ptr %i.hs, ptr %i.fj, align 8, !tbaa !997
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.ht, ptr %i.cn, align 8, !tbaa !995
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.hu = load ptr, ptr %i.gd, align 8, !tbaa !28
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.891") align 8 %8, ptr noundef nonnull align 8 dereferenceable(136) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ar unwind label %bb.bd

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.hx = load ptr, ptr %i.fk, align 8, !tbaa !1014 ; 6 uses
  %i.hy = load ptr, ptr %i.dy, align 8, !tbaa !1012
  %.not.i.i64 = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i.i64, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hz = load i64, ptr %8, align 8, !tbaa !1020
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !1020
  store ptr null, ptr %8, align 8, !tbaa !1020
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.ia, ptr %i.fk, align 8, !tbaa !1014
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.at:                                            ; preds = %bb.ar
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !1013 ; 10 uses
  %i.ic = ptrtoint ptr %i.hx to i64               ; 3 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 3 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 3 uses
  %i.if = icmp eq i64 %i.ie, 9223372036854775800
  br i1 %i.if, label %bb.au, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc74 unwind label %.loopexit.split-lp94

.noexc74:                                         ; preds = %bb.au
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.ig = ashr exact i64 %i.ie, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i65 = call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  %i.ih = add nsw i64 %.sroa.speculated.i.i.i.i65, %i.ig ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.ig
  %i.ij = call i64 @llvm.umin.i64(i64 %i.ih, i64 1152921504606846975)
  %i.ik = select i1 %i.ii, i64 1152921504606846975, i64 %i.ij ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.ik, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.il = shl nuw nsw i64 %i.ik, 3
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #37
          to label %.noexc75 unwind label %.loopexit93 ; 10 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  %i.io = load i64, ptr %8, align 8, !tbaa !1020
  store i64 %i.io, ptr %i.in, align 8, !tbaa !1020
  store ptr null, ptr %8, align 8, !tbaa !1020
  %.not10.i.i.i.i.i.i.i67 = icmp eq ptr %i.ib, %i.hx
  br i1 %.not10.i.i.i.i.i.i.i67, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i68.preheader

.lr.ph.i.i.i.i.i.i.i68.preheader:                 ; preds = %.noexc75
  %11 = add i64 %i.ic, -8
  %12 = sub i64 %11, %i.id                        ; 2 uses
  %i.ip = lshr i64 %12, 3
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %12, 56
  br i1 %min.iters.check257, label %.lr.ph.i.i.i.i.i.i.i68.preheader296, label %vector.memcheck248

vector.memcheck248:                               ; preds = %.lr.ph.i.i.i.i.i.i.i68.preheader
  %scevgep249 = getelementptr i8, ptr %i.im, i64 8
  %i.ir = add i64 %i.ic, -8
  %i.is = sub i64 %i.ir, %i.id
  %i.it = and i64 %i.is, -8                       ; 2 uses
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.it
  %scevgep251 = getelementptr i8, ptr %i.ib, i64 8
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.it
  %bound0253 = icmp ult ptr %i.im, %scevgep252
  %bound1254 = icmp ult ptr %i.ib, %scevgep250
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i.i.i.i.i.i68.preheader296, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck248
  %n.vec260 = and i64 %i.iq, 4611686018427387900  ; 3 uses
  %i.iu = shl i64 %n.vec260, 3                    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.im, i64 %i.iu  ; 2 uses
  %i.iw = getelementptr i8, ptr %i.ib, i64 %i.iu
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph258
  %index262 = phi i64 [ 0, %vector.ph258 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %i.ix = shl i64 %index262, 3                    ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.im, i64 %i.ix ; 2 uses
  %next.gep264 = getelementptr i8, ptr %i.ib, i64 %i.ix ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.iy = getelementptr i8, ptr %next.gep264, i64 16
  %wide.load265 = load <2 x i64>, ptr %next.gep264, align 8, !tbaa !1020, !alias.scope !1049, !noalias !1044
  %wide.load266 = load <2 x i64>, ptr %i.iy, align 8, !tbaa !1020, !alias.scope !1049, !noalias !1044
  %i.iz = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load265, ptr %next.gep263, align 8, !tbaa !1020, !alias.scope !1052, !noalias !1049
  store <2 x i64> %wide.load266, ptr %i.iz, align 8, !tbaa !1020, !alias.scope !1052, !noalias !1049
  %i.ja = getelementptr i8, ptr %next.gep264, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep264, align 8, !tbaa !1020, !alias.scope !1049, !noalias !1044
  store <2 x ptr> splat (ptr null), ptr %i.ja, align 8, !tbaa !1020, !alias.scope !1049, !noalias !1044
  %index.next267 = add nuw i64 %index262, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.jb, label %middle.block268, label %vector.body261, !llvm.loop !1054

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.iq, %n.vec260
  br i1 %cmp.n269, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i68.preheader296

.lr.ph.i.i.i.i.i.i.i68.preheader296:              ; preds = %vector.memcheck248, %.lr.ph.i.i.i.i.i.i.i68.preheader, %middle.block268
  %.012.i.i.i.i.i.i.i69.ph = phi ptr [ %i.im, %vector.memcheck248 ], [ %i.im, %.lr.ph.i.i.i.i.i.i.i68.preheader ], [ %i.iv, %middle.block268 ]
  %.0911.i.i.i.i.i.i.i70.ph = phi ptr [ %i.ib, %vector.memcheck248 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i68.preheader ], [ %i.iw, %middle.block268 ]
  br label %.lr.ph.i.i.i.i.i.i.i68

.lr.ph.i.i.i.i.i.i.i68:                           ; preds = %.lr.ph.i.i.i.i.i.i.i68.preheader296, %.lr.ph.i.i.i.i.i.i.i68
  %.012.i.i.i.i.i.i.i69 = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i.i68 ], [ %.012.i.i.i.i.i.i.i69.ph, %.lr.ph.i.i.i.i.i.i.i68.preheader296 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i70 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.i68 ], [ %.0911.i.i.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i.i.i68.preheader296 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.jc = load i64, ptr %.0911.i.i.i.i.i.i.i70, align 8, !tbaa !1020, !alias.scope !1047, !noalias !1044
  store i64 %i.jc, ptr %.012.i.i.i.i.i.i.i69, align 8, !tbaa !1020, !alias.scope !1044, !noalias !1047
  store ptr null, ptr %.0911.i.i.i.i.i.i.i70, align 8, !tbaa !1020, !alias.scope !1047, !noalias !1044
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i70, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i69, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i71 = icmp eq ptr %i.jd, %i.hx
  br i1 %.not.i.i.i.i.i.i.i71, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i68, !llvm.loop !1055

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i68, %middle.block268, %.noexc75
  %.0.lcssa.i.i.i.i.i.i.i72 = phi ptr [ %i.im, %.noexc75 ], [ %i.iv, %middle.block268 ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i68 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i72, i64 8
  %.not.i23.i.i.i73 = icmp eq ptr %i.ib, null
  br i1 %.not.i23.i.i.i73, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ib) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.im, ptr %i.f, align 8, !tbaa !1013
  store ptr %i.jf, ptr %i.fk, align 8, !tbaa !1014
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ik
  store ptr %i.jg, ptr %i.dy, align 8, !tbaa !1012
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.as
  %i.jh = load ptr, ptr %i.gd, align 8, !tbaa !28
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 280
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = invoke noundef zeroext i1 %i.jj(ptr noundef nonnull align 8 dereferenceable(136) %i.gd)
          to label %bb.aw unwind label %.loopexit93

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  br i1 %i.jk, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.jm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %bb.ay unwind label %.loopexit93

bb.ay:                                            ; preds = %bb.ax
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 80
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !1056
  %i.jp = icmp eq i8 %i.jo, 1
  br i1 %i.jp, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6duckdb16PipelineExecutor16FinishProcessingEi(ptr noundef nonnull align 8 dereferenceable(513) %0, i32 noundef -1)
          to label %bb.bf unwind label %.loopexit93

bb.ba:                                            ; preds = %bb.af, %bb.ag
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bb:                                            ; preds = %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ah
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.aj, %bb.ak, %bb.al, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit

.loopexit93:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.ax, %bb.az, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp94:                             ; preds = %bb.au
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp94, %.loopexit93
  %lpad.phi97 = phi { ptr, i32 } [ %lpad.loopexit95, %.loopexit93 ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp94 ] ; 2 uses
  %i.ju = load ptr, ptr %8, align 8, !tbaa !1020  ; 3 uses
  %.not.i76 = icmp eq ptr %i.ju, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13OperatorStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13OperatorStateEEclEPS1_.exit.i: ; preds = %bb.be
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !28
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ju) #34, !inline_history !1066
  br label %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit

bb.bf:                                            ; preds = %bb.az, %bb.ay, %bb.aw
  %i.jy = load ptr, ptr %8, align 8, !tbaa !1020  ; 3 uses
  %.not.i77 = icmp eq ptr %i.jy, null
  br i1 %.not.i77, label %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit79, label %_ZNKSt14default_deleteIN6duckdb13OperatorStateEEclEPS1_.exit.i78

_ZNKSt14default_deleteIN6duckdb13OperatorStateEEclEPS1_.exit.i78: ; preds = %bb.bf
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jy) #34, !inline_history !1066
  br label %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit79

_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit79: ; preds = %bb.bf, %_ZNKSt14default_deleteIN6duckdb13OperatorStateEEclEPS1_.exit.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.kc = load ptr, ptr %7, align 8, !tbaa !1003  ; 3 uses
  %.not.i80 = icmp eq ptr %i.kc, null
  br i1 %.not.i80, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit79
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.kc) #34
  call void @_ZdlPv(ptr noundef nonnull %i.kc) #36
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13OperatorStateESt14default_deleteIS1_EED2Ev.exit79, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.kd = add nuw i64 %.028135, 1                 ; 2 uses
  %i.ke = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !330 ; 2 uses
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !334 ; 2 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = ashr exact i64 %i.kl, 3
  %i.kn = icmp ult i64 %i.kd, %i.km
  br i1 %i.kn, label %bb.ae, label %._crit_edge, !llvm.loop !1067

end_hunk_8
begin_hunk_9_@_ZN6duckdb13TaskScheduler23RelaunchThreadsInternalEib:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr @_ZN6duckdbL18ThreadExecuteTasksEPNS_13TaskSchedulerEPSt6atomicIbE, ptr %i.cj, align 8, !tbaa !1505, !noalias !1496
  store ptr %i.cg, ptr %4, align 8, !tbaa !1507, !noalias !1496
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull %4, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.q unwind label %bb.r, !noalias !1496

bb.q:                                             ; preds = %.noexc.i
  %i.ck = load ptr, ptr %4, align 8, !tbaa !1507, !noalias !1496 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i45, label %bb.t, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.q
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !28, !noalias !1496
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1496
  call void %i.cn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #34, !noalias !1496, !inline_history !1509
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cp = load ptr, ptr %4, align 8, !tbaa !1507, !noalias !1496 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i7.i.i, label %.body.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i.i: ; preds = %bb.r
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28, !noalias !1496
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1496
  call void %i.cs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cp) #34, !noalias !1496, !inline_history !1509
  br label %.body.i

bb.s:                                             ; preds = %.noexc
  %i.ct = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ct, %bb.s ], [ %i.co, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i8.i.i ], [ %i.co, %bb.r ]
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #36, !noalias !1496
  br label %.body

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1496
  %i.cu = load ptr, ptr %5, align 8, !tbaa !1471  ; 3 uses
  store ptr %i.cf, ptr %5, align 8, !tbaa !1471
  %.not.i.i.i.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i46, label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !257
  %.not.i.i.i.i.i.i.i47 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZSt9terminatev() #38
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.cu) #36
  br label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i, %bb.t
  br i1 %i.bz, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrISt6threadSt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !1468
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !1465
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = invoke noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %i.db)
          to label %_ZN6duckdb11NumericCastIimvEET_T0_.exit unwind label %bb.ac ; 2 uses

_ZN6duckdb11NumericCastIimvEET_T0_.exit:          ; preds = %bb.x
  %.val = load i64, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.dd = icmp ult i32 %i.dc, 1024
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN6duckdb11NumericCastIimvEET_T0_.exit
  %i.de = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.df = and i64 %i.de, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = lshr i64 %i.de, 6
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !257
  %i.dk = or i64 %i.dj, %i.dg
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !257
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN6duckdb11NumericCastIimvEET_T0_.exit
  %i.dl = call i32 @pthread_setaffinity_np(i64 noundef %.val, i64 noundef 128, ptr noundef nonnull %3) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.af

bb.aa:                                            ; preds = %bb.p
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.ab:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.ac:                                            ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.aa, %.body.i, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.do, %bb.ac ], [ %i.dn, %bb.ab ], [ %i.dm, %bb.aa ], [ %eh.lpad-body.i, %.body.i ] ; 3 uses
  %.026 = extractvalue { ptr, i32 } %.pn, 1
  %i.dp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.dq = icmp eq i32 %.026, %i.dp
  br i1 %i.dq, label %bb.ad, label %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit79

bb.ad:                                            ; preds = %.body
  %.027 = extractvalue { ptr, i32 } %.pn, 0
  %i.dr = call ptr @__cxa_begin_catch(ptr %.027) #34 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit76 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit79

bb.af:                                            ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.dt = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.ag unwind label %bb.ap     ; 3 uses

bb.ag:                                            ; preds = %bb.af
  %i.du = load i64, ptr %5, align 8, !tbaa !1471, !noalias !1510
  store ptr null, ptr %5, align 8, !tbaa !1471, !noalias !1510
  store i64 %i.du, ptr %i.dt, align 8, !tbaa !1471, !noalias !1510
  store ptr %i.dt, ptr %6, align 8, !tbaa !1469, !alias.scope !1510
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !1468 ; 6 uses
  %i.dw = load ptr, ptr %i.ca, align 8, !tbaa !1513
  %.not.i.i = icmp eq ptr %i.dv, %i.dw
  %i.dx = ptrtoint ptr %i.dt to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !1469
  store ptr null, ptr %6, align 8, !tbaa !1469
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dy, ptr %i.h, align 8, !tbaa !1468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !1465 ; 10 uses
  %i.ea = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.al, %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ee = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 1152921504606846975)
  %i.ei = select i1 %i.eg, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #37
          to label %.noexc53 unwind label %.loopexit88 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  store i64 %i.dx, ptr %i.el, align 8, !tbaa !1469
  store ptr null, ptr %6, align 8, !tbaa !1469
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.dv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc53
  %7 = add i64 %i.ea, -8
  %8 = sub i64 %7, %i.eb                          ; 2 uses
  %i.em = lshr i64 %8, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %8, 56
  br i1 %min.iters.check257, label %.lr.ph.i.i.i.i.i.i.i.preheader273, label %vector.memcheck248

vector.memcheck248:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep249 = getelementptr i8, ptr %i.ek, i64 8
  %i.eo = add i64 %i.ea, -8
  %i.ep = sub i64 %i.eo, %i.eb
  %i.eq = and i64 %i.ep, -8                       ; 2 uses
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.eq
  %scevgep251 = getelementptr i8, ptr %i.dz, i64 8
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.eq
  %bound0253 = icmp ult ptr %i.ek, %scevgep252
  %bound1254 = icmp ult ptr %i.dz, %scevgep250
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i.i.i.i.i.i.preheader273, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck248
  %n.vec260 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.er = shl i64 %n.vec260, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.ek, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.dz, i64 %i.er
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph258
  %index262 = phi i64 [ 0, %vector.ph258 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %i.eu = shl i64 %index262, 3                    ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.ek, i64 %i.eu ; 2 uses
  %next.gep264 = getelementptr i8, ptr %i.dz, i64 %i.eu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  %i.ev = getelementptr i8, ptr %next.gep264, i64 16
  %wide.load265 = load <2 x i64>, ptr %next.gep264, align 8, !tbaa !1469, !alias.scope !1519, !noalias !1514
  %wide.load266 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !1469, !alias.scope !1519, !noalias !1514
  %i.ew = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load265, ptr %next.gep263, align 8, !tbaa !1469, !alias.scope !1522, !noalias !1519
  store <2 x i64> %wide.load266, ptr %i.ew, align 8, !tbaa !1469, !alias.scope !1522, !noalias !1519
  %i.ex = getelementptr i8, ptr %next.gep264, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep264, align 8, !tbaa !1469, !alias.scope !1519, !noalias !1514
  store <2 x ptr> splat (ptr null), ptr %i.ex, align 8, !tbaa !1469, !alias.scope !1519, !noalias !1514
  %index.next267 = add nuw i64 %index262, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.ey, label %middle.block268, label %vector.body261, !llvm.loop !1524

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.en, %n.vec260
  br i1 %cmp.n269, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader273

.lr.ph.i.i.i.i.i.i.i.preheader273:                ; preds = %vector.memcheck248, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block268
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ek, %vector.memcheck248 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.es, %middle.block268 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck248 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.et, %middle.block268 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader273, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader273 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader273 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  %i.ez = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1469, !alias.scope !1517, !noalias !1514
  store i64 %i.ez, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1469, !alias.scope !1514, !noalias !1517
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1469, !alias.scope !1517, !noalias !1514
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i51 = icmp eq ptr %i.fa, %i.dv
  br i1 %.not.i.i.i.i.i.i.i51, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1525

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block268, %.noexc53
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc53 ], [ %i.es, %middle.block268 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ek, ptr %i.g, align 8, !tbaa !1465
  store ptr %i.fc, ptr %i.h, align 8, !tbaa !1468
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.fd, ptr %i.ca, align 8, !tbaa !1513
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ah
  %i.fe = load ptr, ptr %i.cc, align 8, !tbaa !1461 ; 6 uses
  %i.ff = load ptr, ptr %i.cd, align 8, !tbaa !1526
  %.not.i.i54 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i.i54, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fg = ptrtoint ptr %i.ce to i64
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !1462
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fh, ptr %i.cc, align 8, !tbaa !1461
  br label %_ZNSt10unique_ptrIN6duckdb15SchedulerThreadESt14default_deleteIS1_EED2Ev.exit

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fi = load ptr, ptr %i.cb, align 8, !tbaa !1458 ; 10 uses
  %i.fj = ptrtoint ptr %i.fe to i64               ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64               ; 3 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.fn = ashr exact i64 %i.fl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i55 = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i.i55, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #37
          to label %.noexc65 unwind label %.loopexit88 ; 10 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl
  %i.fv = ptrtoint ptr %i.ce to i64
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !1462
  %.not10.i.i.i.i.i.i.i57 = icmp eq ptr %i.fi, %i.fe
  br i1 %.not10.i.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i.i.i58.preheader:                 ; preds = %.noexc65
  %9 = add i64 %i.fj, -8
  %10 = sub i64 %9, %i.fk                         ; 2 uses
  %i.fw = lshr i64 %10, 3
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i58.preheader272, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i58.preheader
  %scevgep = getelementptr i8, ptr %i.ft, i64 8
  %i.fy = add i64 %i.fj, -8
  %i.fz = sub i64 %i.fy, %i.fk
  %i.ga = and i64 %i.fz, -8                       ; 2 uses
  %scevgep242 = getelementptr i8, ptr %scevgep, i64 %i.ga
  %scevgep243 = getelementptr i8, ptr %i.fi, i64 8
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.ga
  %bound0 = icmp ult ptr %i.ft, %scevgep244
  %bound1 = icmp ult ptr %i.fi, %scevgep242
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i58.preheader272, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fx, 4611686018427387900     ; 3 uses
  %i.gb = shl i64 %n.vec, 3                       ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ft, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fi, i64 %i.gb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ft, i64 %i.ge ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.fi, i64 %i.ge ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.gf = getelementptr i8, ptr %next.gep245, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep245, align 8, !tbaa !1462, !alias.scope !1532, !noalias !1527
  %wide.load246 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !1462, !alias.scope !1532, !noalias !1527
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1462, !alias.scope !1535, !noalias !1532
  store <2 x i64> %wide.load246, ptr %i.gg, align 8, !tbaa !1462, !alias.scope !1535, !noalias !1532
  %i.gh = getelementptr i8, ptr %next.gep245, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep245, align 8, !tbaa !1462, !alias.scope !1532, !noalias !1527
  store <2 x ptr> splat (ptr null), ptr %i.gh, align 8, !tbaa !1462, !alias.scope !1532, !noalias !1527
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !1537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i58.preheader272

.lr.ph.i.i.i.i.i.i.i58.preheader272:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i58.preheader, %middle.block
  %.012.i.i.i.i.i.i.i59.ph = phi ptr [ %i.ft, %vector.memcheck ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i58.preheader ], [ %i.gc, %middle.block ]
  %.0911.i.i.i.i.i.i.i60.ph = phi ptr [ %i.fi, %vector.memcheck ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i58.preheader ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i.i58:                           ; preds = %.lr.ph.i.i.i.i.i.i.i58.preheader272, %.lr.ph.i.i.i.i.i.i.i58
  %.012.i.i.i.i.i.i.i59 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i58 ], [ %.012.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i58.preheader272 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i60 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i58 ], [ %.0911.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i58.preheader272 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.gj = load i64, ptr %.0911.i.i.i.i.i.i.i60, align 8, !tbaa !1462, !alias.scope !1530, !noalias !1527
  store i64 %i.gj, ptr %.012.i.i.i.i.i.i.i59, align 8, !tbaa !1462, !alias.scope !1527, !noalias !1530
  store ptr null, ptr %.0911.i.i.i.i.i.i.i60, align 8, !tbaa !1462, !alias.scope !1530, !noalias !1527
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i60, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i59, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i61 = icmp eq ptr %i.gk, %i.fe
  br i1 %.not.i.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i58, !llvm.loop !1538

_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i58, %middle.block, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i62 = phi ptr [ %i.ft, %.noexc65 ], [ %i.gc, %middle.block ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i58 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i62, i64 8
  %.not.i23.i.i.i63 = icmp eq ptr %i.fi, null
  br i1 %.not.i23.i.i.i63, label %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ft, ptr %i.cb, align 8, !tbaa !1458
  store ptr %i.gm, ptr %i.cc, align 8, !tbaa !1461
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.gn, ptr %i.cd, align 8, !tbaa !1526
  br label %_ZNSt10unique_ptrIN6duckdb15SchedulerThreadESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SchedulerThreadESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.ak
  %.pre156 = load ptr, ptr %5, align 8, !tbaa !1471 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.not.i68 = icmp eq ptr %.pre156, null
  br i1 %.not.i68, label %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15SchedulerThreadESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0.0.copyload.i.i.i.i69 = load i64, ptr %.pre156, align 8, !tbaa !257
  %.not.i.i.i70 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i69, 0
  br i1 %.not.i.i.i70, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i71, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt9terminatev() #38
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i71: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef nonnull %.pre156) #36
  br label %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i71, %_ZNSt10unique_ptrIN6duckdb15SchedulerThreadESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.go = add nuw i64 %.030122, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.go, %i.bw
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !1539

_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit76: ; preds = %bb.ad
  call void @_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #36
  br label %.loopexit

bb.ap:                                            ; preds = %bb.af
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit88:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15SchedulerThreadESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp, %.loopexit88
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit88 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb15SchedulerThreadESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn37 = phi { ptr, i32 } [ %lpad.phi, %bb.aq ], [ %i.gp, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit79

_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit79: ; preds = %bb.ar, %bb.ae, %.body
  %.merged = phi { ptr, i32 } [ %.pn37, %bb.ar ], [ %i.ds, %bb.ae ], [ %.pn, %.body ]
  call void @_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #36
  resume { ptr, i32 } %.merged

.loopexit:                                        ; preds = %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit, %bb.o, %_ZNSt10unique_ptrISt6atomicIbESt14default_deleteIS1_EED2Ev.exit76, %_ZN6duckdb6vectorINS_10unique_ptrISt6atomicIbESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE5clearEv.exit
  %i.gq = load ptr, ptr %i.h, align 8, !tbaa !1468
  %i.gr = load ptr, ptr %i.g, align 8, !tbaa !1465
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = ashr exact i64 %i.gu, 3
  %i.gw = add i64 %i.gv, %.0
  %i.gx = call noundef i32 @_ZN6duckdb15NumericCastImplIimLb0EE7ConvertEm(i64 noundef %i.gw)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i32 %i.gx, ptr %i.gy seq_cst, align 8
  %i.gz = load ptr, ptr %0, align 8, !tbaa !1474, !nonnull !132, !align !133
  %i.ha = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN6duckdb14BlockAllocator3GetERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %i.gz)
  call void @_ZNK6duckdb14BlockAllocator8FlushAllENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(120) %i.ha, i64 -1)
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb13TaskScheduler12GetSchedulerERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb16DatabaseInstance12GetSchedulerEv(ptr noundef nonnull align 8 dereferenceable(1560) %0)
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(1560) ptr @_ZN6duckdb16DatabaseInstance11GetDatabaseERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb16DatabaseInstance12GetSchedulerEv(ptr noundef nonnull align 8 dereferenceable(1560)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(664) ptr @_ZNK6duckdb10unique_ptrINS_15ConcurrentQueueESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1206   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15ConcurrentQueueESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6duckdb8weak_ptrINS0_8PipelineELb1EEESaIS3_EEaSERKS5_:bb.a
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i46

bb.ah:                                            ; preds = %bb.af
  %i.da = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i46: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i.i.i.i.i47 = phi i32 [ %i.cy, %bb.ag ], [ %i.da, %bb.ah ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i47, 1
  br i1 %i.db, label %bb.ai, label %_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i46
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #34, !inline_history !1593
  br label %_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48

_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i46, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i43
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !146
  br label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EEaSERKS2_.exit.i.i.i.i.i49

_ZN6duckdb8weak_ptrINS_8PipelineELb1EEaSERKS2_.exit.i.i.i.i.i49: ; preds = %_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i37
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 16
  %i.dh = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.di = icmp sgt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !1594

_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN6duckdb8weak_ptrINS_8PipelineELb1EEaSERKS2_.exit.i.i.i.i.i49
  %.pre54 = load ptr, ptr %1, align 8, !tbaa !937
  %.pre55 = load ptr, ptr %i.ar, align 8, !tbaa !279 ; 2 uses
  %.pre56 = load ptr, ptr %0, align 8, !tbaa !937
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !279
  %.pre59 = ptrtoint ptr %.pre55 to i64
  %.pre60 = ptrtoint ptr %.pre56 to i64
  %.pre62 = sub i64 %.pre59, %.pre60
  br label %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit, %bb.aa
  %.pre-phi63 = phi i64 [ %.pre62, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.au, %bb.aa ]
  %i.dj = phi ptr [ %.pre57, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.aa ] ; 2 uses
  %i.dk = phi ptr [ %.pre55, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.as, %bb.aa ]
  %i.dl = phi ptr [ %.pre54, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.aa ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.pre-phi63 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.dm, %i.dj
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.dw, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.dk, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.dv, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.dm, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !146 ; 2 uses
  %i.dp = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !58
  store <2 x ptr> %i.dp, ptr %.011.i.i.i.i, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i50 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i.i.i50, label %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 3 uses
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i.i51 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i51, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !3
  br label %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.du = atomicrmw volatile add ptr %i.dq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.dv, %i.dj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1595

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN6duckdb8weak_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i34, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseIN6duckdb8weak_ptrINS0_8PipelineELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.dx = load ptr, ptr %0, align 8, !tbaa !937
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.f
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !279
  br label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #26

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !247    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !287
  %i.i = load ptr, ptr %0, align 8, !tbaa !247    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !287
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !286
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !258

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8
  store i64 %i.aa, ptr %i.i, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !258

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8
  store i64 %i.ad, ptr %i.i, align 8
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !247   ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !286 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !247
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !286 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %2 = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, %2
  %i.ao = add i64 %i.an, -8
  %i.ap = add i64 %i.am, %i.ah
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8
  %wide.load33 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load33, ptr %i.az, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader35

.lr.ph.i.i.i.i.preheader35:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader35, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bb, ptr %.011.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1597

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !286
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !238 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #36
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !417

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !408
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !410
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb9ErrorDataEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit
  %.05 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i ], [ %i.c, %.lr.ph ] ; 6 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !238 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 56
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #36
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !417

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, %.lr.ph
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !408
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !410
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !408  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.q) #36
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.y) #36
  br label %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit

_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1598

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit, %bb.a
  ret void
}
end_hunk_10
