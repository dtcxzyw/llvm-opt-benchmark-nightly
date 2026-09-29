Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/code_conversion?download=true
inline.NumInlined: 530
inline.NumDeleted: 226
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost3log11v2_mt_posix3aux17code_convert_implEPKDsmRNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEmRKSt6locale:bb.a
_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.j = invoke noundef i64 @_ZN5boost3log11v2_mt_posix3aux12code_convertIDscSt7codecvtIDsc11__mbstate_tEEEmPKT_S9_RNSt7__cxx1112basic_stringIT0_St11char_traitsISC_ESaISC_EEEmRKT1_(ptr noundef %0, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 4611686018427387903, ptr noundef nonnull align 8 dereferenceable(12) %i.h)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit
  %i.k = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.m = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7codecvtIDic11__mbstate_tE2idE) #11
  %i.n = load ptr, ptr %4, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.not.not.i12 = icmp eq ptr %i.r, null
  br i1 %.not.not.i12, label %bb.d, label %_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %bb.d
  unreachable

_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.t = invoke noundef i64 @_ZN5boost3log11v2_mt_posix3aux12code_convertIcDiSt7codecvtIDic11__mbstate_tEEEmPKT_S9_RNSt7__cxx1112basic_stringIT0_St11char_traitsISC_ESaISC_EEEmRKT1_(ptr noundef %i.l, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %i.r)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.a, align 8, !tbaa !41
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = icmp eq i64 %i.t, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %i.y

bb.f:                                             ; preds = %bb.b, %_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  %i.ab = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux17code_convert_implEPKDimRNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmRKSt6locale(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.a, align 8, !tbaa !41
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7codecvtIDic11__mbstate_tE2idE) #11
  %i.d = load ptr, ptr %4, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not.not.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.j = invoke noundef i64 @_ZN5boost3log11v2_mt_posix3aux12code_convertIDicSt7codecvtIDic11__mbstate_tEEEmPKT_S9_RNSt7__cxx1112basic_stringIT0_St11char_traitsISC_ESaISC_EEEmRKT1_(ptr noundef %0, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 4611686018427387903, ptr noundef nonnull align 8 dereferenceable(12) %i.h)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit
  %i.k = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.m = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7codecvtIDsc11__mbstate_tE2idE) #11
  %i.n = load ptr, ptr %4, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.not.not.i12 = icmp eq ptr %i.r, null
  br i1 %.not.not.i12, label %bb.d, label %_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %bb.d
  unreachable

_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.t = invoke noundef i64 @_ZN5boost3log11v2_mt_posix3aux12code_convertIcDsSt7codecvtIDsc11__mbstate_tEEEmPKT_S9_RNSt7__cxx1112basic_stringIT0_St11char_traitsISC_ESaISC_EEEmRKT1_(ptr noundef %i.l, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %i.r)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.a, align 8, !tbaa !41
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = icmp eq i64 %i.t, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %i.y

bb.f:                                             ; preds = %bb.b, %_ZSt9use_facetISt7codecvtIDic11__mbstate_tEERKT_RKSt6locale.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZSt9use_facetISt7codecvtIDsc11__mbstate_tEERKT_RKSt6locale.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  %i.ab = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN5boost3log11v2_mt_posix16conversion_error6throw_EPKcmS4_(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIPKwEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !48
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !28
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi i64 [ %i.j, %.noexc.i ], [ %i.g, %bb.a ]
  %i.l = phi ptr [ %i.i, %.noexc.i ], [ %i.b, %bb.a ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.m = add i64 %i.d, -4
  %i.n = sub i64 %i.m, %i.e                       ; 2 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %6 = add i64 %i.d, -4
  %7 = sub i64 %6, %i.e                           ; 2 uses
  %i.q = lshr i64 %7, 2
  %i.r = getelementptr i8, ptr %i.l, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 1
  %i.s = and i64 %7, -4
  %i.t = getelementptr i8, ptr %3, i64 %i.s
  %scevgep19 = getelementptr i8, ptr %i.t, i64 4
  %bound0 = icmp ult ptr %i.l, %scevgep19
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 4 uses
  %i.u = getelementptr i8, ptr %i.l, i64 %n.vec
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %3, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.x = shl i64 %index, 2
  %next.gep20 = getelementptr i8, ptr %3, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !50, !alias.scope !71
  %wide.load21 = load <4 x i32>, ptr %i.y, align 4, !tbaa !50, !alias.scope !71
  %i.z = trunc <4 x i32> %wide.load to <4 x i8>
  %i.aa = trunc <4 x i32> %wide.load21 to <4 x i8>
  %i.ab = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.z, ptr %next.gep, align 1, !tbaa !41, !alias.scope !72, !noalias !71
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !41, !alias.scope !72, !noalias !71
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader23

.lr.ph.i.i.i.preheader23:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader23, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %i.ad = load i32, ptr %.068.i.i.i, align 4, !tbaa !50
  %i.ae = trunc i32 %i.ad to i8
  store i8 %i.ae, ptr %.09.i.i.i, align 1, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.af, %4
  br i1 %.not.i.i.i, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre12.i.i = load i64, ptr %i.a, align 8, !tbaa !48
  %.pre13.i.i = load ptr, ptr %5, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.ah = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.l, %._crit_edge.i.i ]
  %i.ai = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.k, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ak = ptrtoint ptr %2 to i64
  %i.al = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load ptr, ptr %0, align 8, !tbaa !28
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.al, %i.ao
  %i.aq = load ptr, ptr %5, align 8, !tbaa !28
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !29
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ap, i64 noundef %i.am, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.av = load i64, ptr %i.b, align 8, !tbaa !41
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret ptr %i.as

bb.d:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !41
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.ax
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE19_M_replace_dispatchIPKcEERS4_N9__gnu_cxx17__normal_iteratorIPKwS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string.1", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = ptrtoint ptr %4 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !48
  %i.g = icmp ugt i64 %i.f, 3
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !32
  %i.i = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi i64 [ %i.i, %.noexc.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = phi ptr [ %i.h, %.noexc.i ], [ %i.b, %bb.a ] ; 8 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %min.iters.check = icmp ult i64 %i.f, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.l = sub i64 %i.d, %i.e
  %i.m = shl i64 %i.l, 2
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.m
  %bound0 = icmp ult ptr %i.k, %4
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -8                       ; 4 uses
  %i.n = shl i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.q ; 2 uses
  %next.gep20 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep20, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !41, !alias.scope !80
  %wide.load21 = load <4 x i8>, ptr %i.r, align 1, !tbaa !41, !alias.scope !80
  %i.s = sext <4 x i8> %wide.load to <4 x i32>
  %i.t = sext <4 x i8> %wide.load21 to <4 x i32>
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.s, ptr %next.gep, align 4, !tbaa !50, !alias.scope !81, !noalias !80
  store <4 x i32> %i.t, ptr %i.u, align 4, !tbaa !50, !alias.scope !81, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.preheader23

.lr.ph.i.i.i.preheader23:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.068.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.preheader ], [ %i.p, %middle.block ] ; 3 uses
  %.068.i.i.i.ph24 = ptrtoaddr ptr %.068.i.i.i.ph to i64 ; 2 uses
  %i.w = sub i64 %i.d, %.068.i.i.i.ph24
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader23, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %.068.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.prol ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader23 ]
  %i.x = load i8, ptr %.068.i.i.i.prol, align 1, !tbaa !41
  %i.y = sext i8 %i.x to i32
  store i32 %i.y, ptr %.09.i.i.i.prol, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %.068.i.i.i.prol, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm:bb.a
_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !41
  %i.aj = shl i64 %i.ai, 1
  %i.ak = add i64 %i.aj, 2
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !38
  store i64 %.0, ptr %i.h, align 8, !tbaa !41
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE19_M_replace_dispatchIPKcEERS4_N9__gnu_cxx17__normal_iteratorIPKDsS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string.9", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !39
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 14 uses
  %i.f = icmp ugt i64 %i.e, 7
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #12
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.h = shl nuw nsw i64 %i.e, 1
  %i.i = add nuw nsw i64 %i.h, 2
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #15 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !38
  store i64 %i.e, ptr %i.a, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.e, 8
  %n.vec = and i64 %i.e, -16                      ; 5 uses
  %i.m = shl i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.p ; 2 uses
  %next.gep21 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep21, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep21, align 1, !tbaa !41
  %wide.load22 = load <8 x i8>, ptr %i.q, align 1, !tbaa !41
  %i.r = sext <8 x i8> %wide.load to <8 x i16>
  %i.s = sext <8 x i8> %wide.load22 to <8 x i16>
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.r, ptr %next.gep, align 2, !tbaa !55
  store <8 x i16> %i.s, ptr %i.t, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.e, -8                     ; 4 uses
  %i.v = shl i64 %n.vec24, 1
  %i.w = getelementptr i8, ptr %i.k, i64 %i.v
  %i.x = getelementptr i8, ptr %3, i64 %n.vec24
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.y = shl i64 %index25, 1
  %next.gep26 = getelementptr i8, ptr %i.k, i64 %i.y
  %next.gep27 = getelementptr i8, ptr %3, i64 %index25
  %wide.load28 = load <8 x i8>, ptr %next.gep27, align 1, !tbaa !41
  %i.z = sext <8 x i8> %wide.load28 to <8 x i16>
  store <8 x i16> %i.z, ptr %next.gep26, align 2, !tbaa !55
  %index.next29 = add nuw i64 %index25, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.e, %n.vec24
  br i1 %cmp.n30, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ab = load i8, ptr %.068.i.i.i, align 1, !tbaa !41
  %i.ac = sext i8 %i.ab to i16
  store i16 %i.ac, ptr %.09.i.i.i, align 2, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.ad, %4
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !93

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  store i64 %i.e, ptr %i.b, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.e
  store i16 0, ptr %i.af, align 2, !tbaa !55
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = load ptr, ptr %0, align 8, !tbaa !38
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.ah, %i.al
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.an, i64 noundef %i.aj, ptr noundef nonnull %i.k, i64 noundef %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !41
  %i.as = shl i64 %i.ar, 1
  %i.at = add i64 %i.as, 2
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret ptr %i.ao

bb.d:                                             ; preds = %.loopexit
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ay = shl i64 %i.ax, 1
  %i.az = add i64 %i.ay, 2
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIPKDiEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESD_T_SE_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !48
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !28
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi i64 [ %i.j, %.noexc.i ], [ %i.g, %bb.a ]
  %i.l = phi ptr [ %i.i, %.noexc.i ], [ %i.b, %bb.a ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %3, %4
  br i1 %.not7.i.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.m = add i64 %i.d, -4
  %i.n = sub i64 %i.m, %i.e                       ; 2 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %6 = add i64 %i.d, -4
  %7 = sub i64 %6, %i.e                           ; 2 uses
  %i.q = lshr i64 %7, 2
  %i.r = getelementptr i8, ptr %i.l, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 1
  %i.s = and i64 %7, -4
  %i.t = getelementptr i8, ptr %3, i64 %i.s
  %scevgep19 = getelementptr i8, ptr %i.t, i64 4
  %bound0 = icmp ult ptr %i.l, %scevgep19
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 4 uses
  %i.u = getelementptr i8, ptr %i.l, i64 %n.vec
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %3, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.x = shl i64 %index, 2
  %next.gep20 = getelementptr i8, ptr %3, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !59, !alias.scope !100
  %wide.load21 = load <4 x i32>, ptr %i.y, align 4, !tbaa !59, !alias.scope !100
  %i.z = trunc <4 x i32> %wide.load to <4 x i8>
  %i.aa = trunc <4 x i32> %wide.load21 to <4 x i8>
  %i.ab = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.z, ptr %next.gep, align 1, !tbaa !41, !alias.scope !101, !noalias !100
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !41, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKDiEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader23

.lr.ph.i.i.i.preheader23:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader23, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %i.ad = load i32, ptr %.068.i.i.i, align 4, !tbaa !59
  %i.ae = trunc i32 %i.ad to i8
  store i8 %i.ae, ptr %.09.i.i.i, align 1, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.af, %4
  br i1 %.not.i.i.i, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKDiEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !99

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKDiEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre12.i.i = load i64, ptr %i.a, align 8, !tbaa !48
  %.pre13.i.i = load ptr, ptr %5, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKDiEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.ah = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKDiEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.l, %._crit_edge.i.i ]
  %i.ai = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKDiEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.k, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ak = ptrtoint ptr %2 to i64
  %i.al = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load ptr, ptr %0, align 8, !tbaa !28
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.al, %i.ao
  %i.aq = load ptr, ptr %5, align 8, !tbaa !28
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !29
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ap, i64 noundef %i.am, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.av = load i64, ptr %i.b, align 8, !tbaa !41
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret ptr %i.as

bb.d:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !41
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_replaceEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 6 uses
  %.neg.i = add i64 %2, 1152921504606846975
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #12
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !41
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !57

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59
  store i32 %i.v, ptr %i.t, align 4, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit

bb.g:                                             ; preds = %bb.e
  %i.w = shl i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.t, ptr align 4 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit
  %i.x = load i32, ptr %3, align 4, !tbaa !59
  store i32 %i.x, ptr %i.m, align 4, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit
  %i.y = shl i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %3, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_replace_coldEPDimPKDimm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #14
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_moveEPDiPKDim.exit, %bb.i, %bb.h, %bb.j, %bb.k
end_hunk_1
