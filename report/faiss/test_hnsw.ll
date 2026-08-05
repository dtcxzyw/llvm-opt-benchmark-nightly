inline.NumInlined: 2523
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z17reference_pop_minRN5faiss12MinimaxHeapTINS_4CMaxIfiEEEEPf:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11test_popminii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.faiss::MinimaxHeapT", align 8 ; 24 uses
  %4 = alloca %"class.std::linear_congruential_engine", align 8 ; 7 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 4 ; 7 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"struct.faiss::MinimaxHeapT", align 8 ; 27 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca float, align 4                    ; 9 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 %0, ptr %3, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 0, ptr %i.f, align 4, !tbaa !210
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.g, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.i = sext i32 %0 to i64                       ; 4 uses
  %i.j = icmp slt i32 %0, 0
  br i1 %i.j, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #35
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %.noexc7.i

.noexc7.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #34 ; 5 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !212
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !213
  store i32 0, ptr %i.l, align 4, !tbaa !45
  %i.o = getelementptr i8, ptr %i.l, i64 4        ; 3 uses
  %i.p = add nsw i64 %i.i, -1                     ; 3 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc7.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.b

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc7.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.r, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.o, %.noexc7.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.s, align 8, !tbaa !214
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #34
          to label %.noexc12.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.i ; 4 uses

.noexc12.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.v, ptr %i.w, align 8, !tbaa !110
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !21
  %i.x = getelementptr i8, ptr %i.t, i64 4        ; 3 uses
  br i1 %i.q, label %bb.c, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc12.i
  %.idx.i.i.i.i.i.i.i9.i = shl nuw nsw i64 %i.p, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i9.i, i1 false), !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i9.i
  br label %bb.c

common.resume:                                    ; preds = %bb.hv, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ], [ %.pn144, %bb.hv ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #33
  br label %common.resume

bb.c:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc12.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %.0.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %i.x, %.noexc12.i ], [ %i.y, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  store ptr %.0.i.i.i.i.i10.i, ptr %i.aa, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ab = mul nsw i32 %1, %0
  %i.ac = add nsw i32 %i.ab, 123
  %i.ad = sext i32 %i.ac to i64
  %i.ae = urem i64 %i.ad, 2147483647
  %storemerge.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  store i64 %storemerge.i.i, ptr %4, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 0, ptr %5, align 4, !tbaa !343
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 65536, ptr %i.af, align 4, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !346
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !353
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge447

.lr.ph:                                           ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.an = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit unwind label %bb.e

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit: ; preds = %.lr.ph
  store i32 %i.an, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %6, ptr %2, align 8, !tbaa !355
  %i.ao = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !357
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp sgt i32 %1, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !358

bb.e:                                             ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit, %.lr.ph
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.hv

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !359 ; 2 uses
  %i.at = icmp eq ptr %.pre, null
  br i1 %i.at, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %._crit_edge
  %i.au = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.av = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.aw = fdiv x86_fp80 %i.au, %i.av
  %i.ax = fptoui x86_fp80 %i.aw to i64            ; 2 uses
  %i.ay = add i64 %i.ax, 23
  %i.az = udiv i64 %i.ay, %i.ax
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  br label %bb.p

._crit_edge447:                                   ; preds = %bb.t, %bb.c, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !214 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !212 ; 4 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i171 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i171, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge447
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = getelementptr inbounds i8, ptr null, i64 %i.bg ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !213
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %._crit_edge447
  %i.bk = icmp ugt i64 %i.bg, 9223372036854775804
  br i1 %i.bk, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !58

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #34
          to label %.noexc175 unwind label %bb.y  ; 5 uses

.noexc175:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !212
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !214
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bg ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !213
  %i.bp = icmp samesign ugt i64 %i.bg, 4
  br i1 %i.bp, label %bb.g, label %bb.h, !prof !360

bb.g:                                             ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.h:                                             ; preds = %.noexc175
  %i.bq = icmp eq i64 %i.bg, 4
  br i1 %i.bq, label %bb.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.br = load i32, ptr %i.bd, align 4, !tbaa !45
  store i32 %i.br, ptr %i.bl, align 4, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %.thread, %bb.i, %bb.h, %bb.g
  %i.bs = phi ptr [ %i.bo, %bb.i ], [ %i.bo, %bb.h ], [ %i.bo, %bb.g ], [ %i.bj, %.thread ] ; 2 uses
  %i.bt = phi ptr [ %i.bn, %bb.i ], [ %i.bn, %bb.h ], [ %i.bn, %bb.g ], [ %i.bi, %.thread ]
  %i.bu = phi ptr [ %i.bm, %bb.i ], [ %i.bm, %bb.h ], [ %i.bm, %bb.g ], [ %i.bh, %.thread ]
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !214
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !215 ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !108 ; 4 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i.i.i5.i, label %.thread438, label %bb.j

.thread438:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cd = getelementptr inbounds i8, ptr null, i64 %i.cb ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !110
  br label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEEC2ERKS3_.exit

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.cf = icmp ugt i64 %i.cb, 9223372036854775804
  br i1 %i.cf, label %.noexc.i.i6.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, !prof !58

.noexc.i.i6.i:                                    ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc.i174 unwind label %bb.n

.noexc.i174:                                      ; preds = %.noexc.i.i6.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #34
          to label %.noexc7.i173 unwind label %bb.n ; 5 uses

.noexc7.i173:                                     ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.cg, ptr %i.bv, align 8, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !215
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cb ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !110
  %i.ck = icmp samesign ugt i64 %i.cb, 4
  br i1 %i.ck, label %bb.k, label %bb.l, !prof !360

bb.k:                                             ; preds = %.noexc7.i173
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 4 %i.by, i64 %i.cb, i1 false)
  br label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEEC2ERKS3_.exit

bb.l:                                             ; preds = %.noexc7.i173
  %i.cl = icmp eq i64 %i.cb, 4
  br i1 %i.cl, label %bb.m, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEEC2ERKS3_.exit

bb.m:                                             ; preds = %bb.l
  %i.cm = load float, ptr %i.by, align 4, !tbaa !21
  store float %i.cm, ptr %i.cg, align 4, !tbaa !21
  br label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEEC2ERKS3_.exit

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i6.i
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %i.ba, align 8, !tbaa !212 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %i.bs, align 8, !tbaa !213
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #33
  br label %.body

_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEEC2ERKS3_.exit: ; preds = %.thread438, %bb.k, %bb.l, %bb.m
  %i.ct = phi ptr [ %i.cj, %bb.k ], [ %i.cj, %bb.l ], [ %i.cj, %bb.m ], [ %i.ce, %.thread438 ]
  %i.cu = phi ptr [ %i.ci, %bb.k ], [ %i.ci, %bb.l ], [ %i.ci, %bb.m ], [ %i.cd, %.thread438 ]
  %i.cv = phi ptr [ %i.ch, %bb.k ], [ %i.ch, %bb.l ], [ %i.ch, %bb.m ], [ %i.cc, %.thread438 ]
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !215
  %i.cw = load i32, ptr %i.g, align 8, !tbaa !211
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph448, label %._crit_edge449

.lr.ph448:                                        ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEEC2ERKS3_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  br label %bb.v

bb.p:                                             ; preds = %.lr.ph446, %bb.t
  %.sroa.0434.0444 = phi ptr [ %.pre, %.lr.ph446 ], [ %i.ea, %bb.t ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0434.0444, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !45
  %.promoted.i.i.i.i = load i64, ptr %4, align 8, !tbaa !341
  br label %select.unfold.i.i.i.i

.unr-lcssa:                                       ; preds = %select.unfold.i.i.i.i
  store i64 %i.dp, ptr %4, align 8, !tbaa !341
  %i.dl = fdiv float %i.ds, %i.dv                 ; 2 uses
  %i.dm = fcmp ult float %i.dl, 1.000000e+00
  br i1 %i.dm, label %bb.r, label %bb.q, !prof !361

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.p
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.p ], [ %i.dw, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi float [ 1.000000e+00, %bb.p ], [ %i.dv, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi float [ 0.000000e+00, %bb.p ], [ %i.ds, %select.unfold.i.i.i.i ]
  %i.dn = phi i64 [ %.promoted.i.i.i.i, %bb.p ], [ %i.dp, %select.unfold.i.i.i.i ]
  %i.do = mul i64 %i.dn, 16807
  %i.dp = urem i64 %i.do, 2147483647              ; 3 uses
  %i.dq = add nsw i64 %i.dp, -1
  %i.dr = uitofp i64 %i.dq to float
  %i.ds = call float @llvm.fmuladd.f32(float %i.dr, float %.01422.i.i.i.i, float %.01521.i.i.i.i) ; 2 uses
  %i.dt = fpext float %.01422.i.i.i.i to x86_fp80
  %i.du = fmul x86_fp80 %i.dt, f0x401DFFFFFFFC00000000
  %i.dv = fptrunc x86_fp80 %i.du to float         ; 2 uses
  %i.dw = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i176.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i176.1, label %.unr-lcssa, label %select.unfold.i.i.i.i, !llvm.loop !362

bb.q:                                             ; preds = %.unr-lcssa
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.unr-lcssa
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.q ], [ %i.dl, %.unr-lcssa ] ; 2 uses
  %i.dx = fadd float %.016.i.i.i.i, 0.000000e+00
  %i.dy = fcmp ult float %.016.i.i.i.i, f0x3F333333
  %.036 = select i1 %i.dy, float %i.dx, float +inf
  invoke void @_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.dk, float noundef %.036)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.t:                                             ; preds = %bb.r
  %i.ea = load ptr, ptr %.sroa.0434.0444, align 8, !tbaa !363 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %._crit_edge447, label %bb.p

.critedge170:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit299
  %i.ec = load ptr, ptr %i.di, align 8, !tbaa !34 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.critedge170
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !35 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !44
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %.critedge170, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ei = load i32, ptr %i.g, align 8, !tbaa !211
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %bb.v, label %._crit_edge449

bb.v:                                             ; preds = %.lr.ph448, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ek = load i32, ptr %3, align 8, !tbaa !45, !noalias !364
  %i.el = load i32, ptr %7, align 8, !tbaa !45, !noalias !364
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.z

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.w, %bb.x
  %i.en = load i8, ptr %8, align 8, !tbaa !22, !range !32, !noundef !33
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.critedge, label %bb.aa

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.er = load ptr, ptr %i.cy, align 8, !tbaa !34 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.er, null
  br i1 %.not.i.i179, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ac, %bb.ab
  %i.et = phi ptr [ %i.es, %bb.ac ], [ @.str.20, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 92, ptr noundef %i.et)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.eu = load ptr, ptr %9, align 8, !tbaa !39    ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i180, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ae
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #24, !inline_history !43
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ey = load ptr, ptr %i.cy, align 8, !tbaa !34 ; 4 uses
  %.not.i.i181 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i181, label %_ZN7testing15AssertionResultD2Ev.exit185, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !35 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182: ; preds = %bb.af
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !44
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit185

_ZN7testing15AssertionResultD2Ev.exit185:         ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.hn

bb.ag:                                            ; preds = %bb.aa
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit188

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn113 = phi { ptr, i32 } [ %i.fg, %bb.ai ], [ %i.ff, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.fh = load ptr, ptr %9, align 8, !tbaa !39    ; 3 uses
  %.not.i.i186 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i186, label %_ZN7testing7MessageD2Ev.exit188, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(128) %i.fh) #24, !inline_history !43
  br label %_ZN7testing7MessageD2Ev.exit188

_ZN7testing7MessageD2Ev.exit188:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %bb.aj, %bb.ag
  %.pn113.pn = phi { ptr, i32 } [ %i.fe, %bb.ag ], [ %.pn113, %bb.aj ], [ %.pn113, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %bb.ao

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.fl = load ptr, ptr %i.cy, align 8, !tbaa !34 ; 4 uses
  %.not.i.i189 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i189, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !35 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190: ; preds = %bb.ak
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !44
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #33
end_hunk_0
