Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvar?download=true
inline.NumInlined: 7189
inline.NumDeleted: 2028
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6colvar14parse_analysisERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.bq:                                            ; preds = %.thread, %bb.bp
  %.241 = phi i32 [ %i.jt, %.thread ], [ undef, %bb.bp ]
  %cond = phi i1 [ false, %.thread ], [ true, %bb.bp ]
  %i.pm = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.dz
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.bq
  %i.po = load i64, ptr %i.dz, align 8, !tbaa !44
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %cond, label %bb.bt, label %bb.bu

bb.br:                                            ; preds = %bb.bo
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ao, %.body173, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %bb.bl, %bb.bk, %bb.bj, %.body231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.pn69 = phi { ptr, i32 } [ %i.kg, %bb.an ], [ %i.pq, %bb.br ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %i.pb, %bb.bl ], [ %i.pa, %bb.bk ], [ %i.oz, %bb.bj ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %.pn58.pn, %.body231 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn61.pn, %.body173 ], [ %i.kh, %bb.ao ]
  %i.pr = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.dz
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.bs
  %i.pt = load i64, ptr %i.dz, align 8, !tbaa !44
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bv

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %bb.g
  %i.pv = load i32, ptr @_ZN12colvarmodule9errorCodeE, align 4, !tbaa !221
  %.not73 = icmp ne i32 %i.pv, 0
  %i.pw = zext i1 %.not73 to i32
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %bb.bt
  %.342 = phi i32 [ %i.pw, %bb.bt ], [ %.241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret i32 %.342

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.bv ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !213    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !214
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !245
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !245
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !226
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !245
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !245
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !214
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !213
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !226
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !214
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph60

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_.exit"
  %i.i = icmp eq i64 %i.bu, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph60, !llvm.loop !591

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.fo, %bb.b ] ; 2 uses
  %storemerge30.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.024.1.lcssa56.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.j = add nsw i64 %.lcssa, -2
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ae, %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i ] ; 4 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.n, ptr %4, align 16, !tbaa !268
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_T0_SO_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa, ptr noundef align 8 %4)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !217  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !219
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !220
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !inline_history !592
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !inline_history !592
  br label %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !221
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i, !prof !222

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28
  br label %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i

_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.ae = add nsw i64 %.010.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_RT0_.exit.i.i", label %bb.c, !llvm.loop !593

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_RT0_.exit.i.i": ; preds = %_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.af, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit" ], [ %storemerge30.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_RT0_.exit.i.i" ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ai = load <2 x ptr>, ptr %0, align 8, !tbaa !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !217 ; 8 uses
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !268
  %.not.i.i.i.i.i17 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i17, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i9.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !219
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !220
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !594
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !594
  br label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i18 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !221
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i19

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i19: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i20 = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i20, 1
  br i1 %i.ay, label %bb.o, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i, !prof !222

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i19
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i:   ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i19, %bb.k, %.lr.ph.i9.i
  %i.az = ptrtoint ptr %i.af to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 2 uses
  %i.bb = ashr exact i64 %i.ba, 4
  store <2 x ptr> %i.ah, ptr %3, align 16, !tbaa !268
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_T0_SO_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bb, ptr noundef align 8 %3)
  %i.bc = load ptr, ptr %5, align 8, !tbaa !217   ; 8 uses
  %.not.i.i.i21 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i21, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit", label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bd, align 8, !tbaa !219
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !220
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #28, !inline_history !595
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #28, !inline_history !595
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit"

bb.r:                                             ; preds = %bb.p
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !221
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.s ], [ %i.bq, %bb.t ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.br, label %bb.u, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit", !prof !222

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #28
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit": ; preds = %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bs = icmp sgt i64 %i.ba, 16
  br i1 %i.bs, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !596

.lr.ph60:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3059 = phi ptr [ %.sroa.024.1.lcssa56.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03158 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.fo, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bu = add nsw i64 %.03158, -1                 ; 3 uses
  %i.bv = lshr i64 %i.bt, 1
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge3059, i64 -16 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !123 ; 8 uses
  %.val1.i.i.i = load ptr, ptr %i.bw, align 8     ; 8 uses
  %i.by = icmp ne ptr %.val.i.i.i, null           ; 2 uses
  %i.bz = icmp ne ptr %.val1.i.i.i, null          ; 2 uses
  %or.cond.i.i.i.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.v, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i"

bb.v:                                             ; preds = %.lr.ph60
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !43 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 448
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !43 ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cb) ; 2 uses
  %i.ce = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 440
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 440
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !53
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !53
  %i.cj = tail call i32 @memcmp(ptr noundef %i.ci, ptr noundef %i.ch, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i16 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.v
  %i.ck = sub i64 %i.cb, %i.cd
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ck, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cl = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.cl, label %bb.w, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i"

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i"
  %.val1.i27.i.i = load ptr, ptr %i.bx, align 8   ; 5 uses
  %.not.i.i = icmp eq ptr %.val1.i27.i.i, null
  br i1 %.not.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.thread.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i27.i.i, i64 448
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43 ; 4 uses
  %.sroa.speculated.i.i.i.i30.i.i = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cd) ; 2 uses
  %i.co = icmp eq i64 %.sroa.speculated.i.i.i.i30.i.i, 0
  br i1 %i.co, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i35.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i31.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i31.i.i: ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1.i27.i.i, i64 440
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 440
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !53
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !53
  %i.ct = tail call i32 @memcmp(ptr noundef %i.cs, ptr noundef %i.cr, i64 noundef %.sroa.speculated.i.i.i.i30.i.i) #28 ; 2 uses
  %.not.i.i.i.i32.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i32.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i35.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i35.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i31.i.i, %bb.x
  %i.cu = sub i64 %i.cd, %i.cn
  %spec.select7.i.i.i.i.i36.i.i = tail call i64 @llvm.smax.i64(i64 %i.cu, i64 -2147483648)
  %.08.i.i.i.i.i37.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i36.i.i, i64 2147483647)
  %.0.i6.i.i.i.i38.i.i = trunc nsw i64 %.08.i.i.i.i.i37.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i35.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i31.i.i
  %.0.i.i.i.i34.i.i = phi i32 [ %i.ct, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i31.i.i ], [ %.0.i6.i.i.i.i38.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i35.i.i ]
  %i.cv = icmp slt i32 %.0.i.i.i.i34.i.i, 0
  br i1 %i.cv, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i"
  %.sroa.speculated.i.i.i.i44.i.i = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cb) ; 2 uses
  %i.cw = icmp eq i64 %.sroa.speculated.i.i.i.i44.i.i, 0
  br i1 %i.cw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i49.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.thread.i.i"
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i27.i.i, i64 440
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 440
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !53
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.db = tail call i32 @memcmp(ptr noundef %i.da, ptr noundef %i.cz, i64 noundef %.sroa.speculated.i.i.i.i44.i.i) #28 ; 2 uses
  %.not.i.i.i.i46.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i.i46.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i49.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i49.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.thread.i.i"
  %i.dc = sub i64 %i.cb, %i.cn
  %spec.select7.i.i.i.i.i50.i.i = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 -2147483648)
  %.08.i.i.i.i.i51.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i50.i.i, i64 2147483647)
  %.0.i6.i.i.i.i52.i.i = trunc nsw i64 %.08.i.i.i.i.i51.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i49.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45.i.i
  %.0.i.i.i.i48.i.i = phi i32 [ %i.db, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45.i.i ], [ %.0.i6.i.i.i.i52.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i49.i.i ]
  %i.dd = icmp slt i32 %.0.i.i.i.i48.i.i, 0
  br i1 %i.dd, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i", %bb.w
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i.i", %.lr.ph60
  %.val1.i55.i.i = load ptr, ptr %i.bx, align 8   ; 6 uses
  %i.de = icmp ne ptr %.val1.i55.i.i, null        ; 2 uses
  %or.cond.i.i56.i.i = select i1 %i.by, i1 %i.de, i1 false
  br i1 %or.cond.i.i56.i.i, label %bb.y, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.thread.i.i"

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i"
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !43 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1.i55.i.i, i64 448
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !43 ; 2 uses
  %.sroa.speculated.i.i.i.i58.i.i = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dg) ; 2 uses
  %i.dj = icmp eq i64 %.sroa.speculated.i.i.i.i58.i.i, 0
  br i1 %i.dj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i63.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i59.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i59.i.i: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1.i55.i.i, i64 440
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 440
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !53
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !53
  %i.do = tail call i32 @memcmp(ptr noundef %i.dn, ptr noundef %i.dm, i64 noundef %.sroa.speculated.i.i.i.i58.i.i) #28 ; 2 uses
  %.not.i.i.i.i60.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i60.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i63.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i63.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i59.i.i, %bb.y
  %i.dp = sub i64 %i.dg, %i.di
  %spec.select7.i.i.i.i.i64.i.i = tail call i64 @llvm.smax.i64(i64 %i.dp, i64 -2147483648)
  %.08.i.i.i.i.i65.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i64.i.i, i64 2147483647)
  %.0.i6.i.i.i.i66.i.i = trunc nsw i64 %.08.i.i.i.i.i65.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i63.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i59.i.i
  %.0.i.i.i.i62.i.i = phi i32 [ %i.do, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i59.i.i ], [ %.0.i6.i.i.i.i66.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i63.i.i ]
  %i.dq = icmp slt i32 %.0.i.i.i.i62.i.i, 0
  br i1 %i.dq, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i.i"
  %or.cond.i.i70.i.i = select i1 %i.bz, i1 %i.de, i1 false
  br i1 %or.cond.i.i70.i.i, label %bb.z, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.thread.i.i"

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.thread.i.i"
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 448
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1.i55.i.i, i64 448
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !43 ; 2 uses
  %.sroa.speculated.i.i.i.i72.i.i = tail call i64 @llvm.umin.i64(i64 %i.du, i64 %i.ds) ; 2 uses
  %i.dv = icmp eq i64 %.sroa.speculated.i.i.i.i72.i.i, 0
  br i1 %i.dv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i77.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i73.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i73.i.i: ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %.val1.i55.i.i, i64 440
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 440
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !53
  %i.ea = tail call i32 @memcmp(ptr noundef %i.dz, ptr noundef %i.dy, i64 noundef %.sroa.speculated.i.i.i.i72.i.i) #28 ; 2 uses
  %.not.i.i.i.i74.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i74.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i77.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i77.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i73.i.i, %bb.z
  %i.eb = sub i64 %i.ds, %i.du
  %spec.select7.i.i.i.i.i78.i.i = tail call i64 @llvm.smax.i64(i64 %i.eb, i64 -2147483648)
  %.08.i.i.i.i.i79.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i78.i.i, i64 2147483647)
  %.0.i6.i.i.i.i80.i.i = trunc nsw i64 %.08.i.i.i.i.i79.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i77.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i73.i.i
  %.0.i.i.i.i76.i.i = phi i32 [ %i.ea, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i73.i.i ], [ %.0.i6.i.i.i.i80.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i77.i.i ]
  %i.ec = icmp slt i32 %.0.i.i.i.i76.i.i, 0
  br i1 %i.ec, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.thread.i.i"
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.thread.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.thread.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i"
  %.val.i.sink.i.i = phi ptr [ %.val1.i27.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i" ], [ %.val1.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.thread.i.i" ], [ %.val.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i" ], [ %.val1.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i" ], [ %.val.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.thread.i.i" ], [ %.val1.i55.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i" ]
  %.sink97.i.i = phi ptr [ %i.bx, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.i.i" ], [ %i.bw, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.thread.i.i" ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit67.i.i" ], [ %i.bw, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit39.i.i" ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit53.thread.i.i" ], [ %i.bx, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit81.i.i" ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sink97.i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !217
  %i.ef = load <2 x ptr>, ptr %0, align 8, !tbaa !268
  store ptr %.val.i.sink.i.i, ptr %0, align 8, !tbaa !269
  store <2 x ptr> %i.ef, ptr %.sink97.i.i, align 8, !tbaa !268
  store ptr %i.ee, ptr %i.g, align 8, !tbaa !217
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"
  %.sroa.024.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i" ], [ %i.fl, %bb.ad ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %storemerge3059, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_SN_T0_.exit.i" ], [ %.us-phi48.i.i, %bb.ad ] ; 3 uses
  %.val1.i.i13.i = load ptr, ptr %0, align 8
  %.val1.i.fr.i.i = freeze ptr %.val1.i.i13.i     ; 4 uses
  %i.eg = icmp ne ptr %.val1.i.fr.i.i, null       ; 2 uses
  %.val.i29.i.i = load ptr, ptr %.sroa.024.0.i.i, align 8, !tbaa !123 ; 4 uses
  %i.eh = icmp ne ptr %.val.i29.i.i, null
  %or.cond.i.i30.i.i = and i1 %i.eh, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i.fr.i.i, i64 448 ; 2 uses
  br i1 %or.cond.i.i30.i.i, label %.lr.ph.split.preheader.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i14.i"

.lr.ph.split.preheader.i.i:                       ; preds = %bb.aa
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !43 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1.i.fr.i.i, i64 440
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ab, %.lr.ph.split.preheader.i.i
  %.val.i32.i.i = phi ptr [ %.val.i.i20.i, %bb.ab ], [ %.val.i29.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.sroa.024.131.i.i = phi ptr [ %i.eu, %bb.ab ], [ %.sroa.024.0.i.i, %.lr.ph.split.preheader.i.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i32.i.i, i64 448
  %i.em = load i64, ptr %i.el, align 8, !tbaa !43 ; 2 uses
  %.sroa.speculated.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.em) ; 2 uses
  %i.en = icmp eq i64 %.sroa.speculated.i.i.i.i.i15.i, 0
  br i1 %i.en, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i: ; preds = %.lr.ph.split.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i32.i.i, i64 440
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !53
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !53
  %i.er = tail call i32 @memcmp(ptr noundef %i.eq, ptr noundef %i.ep, i64 noundef %.sroa.speculated.i.i.i.i.i15.i) #28 ; 2 uses
  %.not.i.i.i.i.i17.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.i.i.i17.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i, %.lr.ph.split.i.i
  %i.es = sub i64 %i.em, %i.ej
  %spec.select7.i.i.i.i.i.i23.i = tail call i64 @llvm.smax.i64(i64 %i.es, i64 -2147483648)
  %.08.i.i.i.i.i.i24.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i23.i, i64 2147483647)
  %.0.i6.i.i.i.i.i25.i = trunc nsw i64 %.08.i.i.i.i.i.i24.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i
  %.0.i.i.i.i.i19.i = phi i32 [ %i.er, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i ], [ %.0.i6.i.i.i.i.i25.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i ]
  %i.et = icmp slt i32 %.0.i.i.i.i.i19.i, 0
  br i1 %i.et, label %bb.ab, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.preheader.i.i"

bb.ab:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i"
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.024.131.i.i, i64 16 ; 3 uses
  %.val.i.i20.i = load ptr, ptr %i.eu, align 8, !tbaa !123 ; 2 uses
  %.not.i21.i = icmp eq ptr %.val.i.i20.i, null
  br i1 %.not.i21.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.preheader.i.i", label %.lr.ph.split.i.i, !llvm.loop !597

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i14.i": ; preds = %bb.aa
  br i1 %i.eg, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.preheader.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.preheader.i.i": ; preds = %bb.ab, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i14.i"
  %.val.i.lcssa59.i.i = phi ptr [ %.val.i29.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i14.i" ], [ null, %bb.ab ], [ %.val.i32.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i" ] ; 2 uses
  %.sroa.024.1.lcssa57.i.i = phi ptr [ %.sroa.024.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i14.i" ], [ %i.eu, %bb.ab ], [ %.sroa.024.131.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.i18.i" ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1.i.fr.i.i, i64 440
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.i14.i"
  %.sroa.0.1.us.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -16 ; 2 uses
  %.val1.i9.us.i.i = load ptr, ptr %.sroa.0.1.us.i.i, align 8
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.preheader.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i" ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.preheader.i.i" ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %.val1.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8 ; 4 uses
  %.not50.i.i = icmp eq ptr %.val1.i9.i.i, null
  br i1 %.not50.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.thread.i.i", label %bb.ac

bb.ac:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i"
  %i.ew = load i64, ptr %i.ei, align 8, !tbaa !43 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val1.i9.i.i, i64 448
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !43 ; 2 uses
  %.sroa.speculated.i.i.i.i12.i.i = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.ew) ; 2 uses
  %i.ez = icmp eq i64 %.sroa.speculated.i.i.i.i12.i.i, 0
  br i1 %i.ez, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i17.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i: ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1.i9.i.i, i64 440
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !53
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !53
  %i.fd = tail call i32 @memcmp(ptr noundef %i.fc, ptr noundef %i.fb, i64 noundef %.sroa.speculated.i.i.i.i12.i.i) #28 ; 2 uses
  %.not.i.i.i.i14.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i.i14.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i17.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i17.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i, %bb.ac
  %i.fe = sub i64 %i.ew, %i.ey
  %spec.select7.i.i.i.i.i18.i.i = tail call i64 @llvm.smax.i64(i64 %i.fe, i64 -2147483648)
  %.08.i.i.i.i.i19.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i18.i.i, i64 2147483647)
  %.0.i6.i.i.i.i20.i.i = trunc nsw i64 %.08.i.i.i.i.i19.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i17.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i
  %.0.i.i.i.i16.i.i = phi i32 [ %i.fd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i ], [ %.0.i6.i.i.i.i20.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i17.i.i ]
  %i.ff = icmp slt i32 %.0.i.i.i.i16.i.i, 0
  br i1 %i.ff, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.thread.i.i", !llvm.loop !598

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i"
  %.val.i.lcssa58.i.i = phi ptr [ %.val.i29.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i" ], [ %.val.i.lcssa59.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i" ], [ %.val.i.lcssa59.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i" ]
  %.sroa.024.1.lcssa56.i.i = phi ptr [ %.sroa.024.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i" ], [ %.sroa.024.1.lcssa57.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i" ], [ %.sroa.024.1.lcssa57.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i" ] ; 8 uses
  %.us-phi47.i.i = phi ptr [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i" ], [ %.sroa.0.0.pn.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i" ], [ %.sroa.0.0.pn.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i" ]
  %.us-phi48.i.i = phi ptr [ %.sroa.0.1.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i" ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i" ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i" ] ; 3 uses
  %.us-phi49.i.i = phi ptr [ %.val1.i9.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.us.i.i" ], [ %.val1.i9.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.i.i" ], [ null, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread.split.i.i" ]
  %i.fg = icmp ult ptr %.sroa.024.1.lcssa56.i.i, %.us-phi48.i.i
  br i1 %i.fg, label %bb.ad, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_.exit"

bb.ad:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.thread.i.i"
  store ptr %.us-phi49.i.i, ptr %.sroa.024.1.lcssa56.i.i, align 8, !tbaa !269
  store ptr %.val.i.lcssa58.i.i, ptr %.us-phi48.i.i, align 8, !tbaa !269
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.024.1.lcssa56.i.i, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.us-phi47.i.i, i64 -8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !217
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !217
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !217
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !217
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.024.1.lcssa56.i.i, i64 16
  br label %bb.aa, !llvm.loop !599

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit21.thread.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_T0_T1_"(ptr %.sroa.024.1.lcssa56.i.i, ptr %storemerge3059, i64 noundef %i.bu)
  %i.fm = ptrtoint ptr %.sroa.024.1.lcssa56.i.i to i64
  %i.fn = sub i64 %i.fm, %i.a
  %i.fo = ashr exact i64 %i.fn, 4                 ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, 16
  br i1 %i.fp, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !591

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_SN_SN_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN6colvar3cvcEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvT_T0_SO_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit
  %.046 = phi i64 [ %i.x, %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.046, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !123 ; 4 uses
  %.val1.i = load ptr, ptr %i.h, align 8          ; 3 uses
  %i.i = icmp ne ptr %.val.i, null
  %i.j = icmp ne ptr %.val1.i, null
  %or.cond.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread"

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 448
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 448
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.l) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 440
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 440
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.u = sub i64 %i.l, %i.n
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %.0.i.i.i.i.fr = freeze i32 %.0.i.i.i.i
  %i.v = icmp slt i32 %.0.i.i.i.i.fr, 0
  %spec.select = select i1 %i.v, i64 %i.g, i64 %i.e ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !123
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit", %.lr.ph
  %i.w = phi ptr [ %.val.i, %.lr.ph ], [ %.pre, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit" ]
  %i.x = phi i64 [ %i.e, %.lr.ph ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit" ] ; 4 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %.046 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %i.w, ptr %i.z, align 8, !tbaa !269
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !217 ; 8 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !217
  %.not.i.i.i.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread"
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ae, align 8, !tbaa !219
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !220
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #28, !inline_history !4
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #28, !inline_history !4
  br label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !221
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.h, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit, !prof !222

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #28
  br label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit

_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit:     ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6colvar4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPSt10shared_ptrINS2_3cvcEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread", %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.at = icmp slt i64 %i.x, %i.b
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !600

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit ] ; 5 uses
  %i.au = and i64 %2, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30

bb.i:                                             ; preds = %._crit_edge
  %i.aw = add nsw i64 %2, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30

bb.j:                                             ; preds = %bb.i
  %i.az = shl nsw i64 %.0.lcssa, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 5 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !217 ; 8 uses
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !268
  %.not.i.i.i.i26 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i26, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bg, align 8, !tbaa !219
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !220
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !4
  br label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30

bb.m:                                             ; preds = %bb.k
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i27 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !221
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

bb.o:                                             ; preds = %bb.m
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i29 = phi i32 [ %i.bj, %bb.n ], [ %i.bt, %bb.o ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i29, 1
  br i1 %i.bu, label %bb.p, label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30, !prof !222

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28
  br label %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30

_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30:   ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28, %bb.l, %bb.j, %bb.i, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.i ], [ %i.ba, %bb.j ], [ %i.ba, %bb.l ], [ %i.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28 ], [ %i.ba, %bb.p ] ; 3 uses
  %i.bv = load <2 x ptr>, ptr %3, align 8, !tbaa !268
  %i.bw = load ptr, ptr %3, align 8, !tbaa !123   ; 3 uses
  %i.bx = icmp sgt i64 %.1, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %i.bx, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt10shared_ptrIN6colvar3cvcEEaSEOS2_.exit30
end_hunk_0
