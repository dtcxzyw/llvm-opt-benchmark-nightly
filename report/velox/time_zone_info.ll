inline.NumInlined: 1348
inline.NumDeleted: 560
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm:bb.a
  store i64 1970, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1, !tbaa !32
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i64 1970, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i8 1, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 25
  store i8 1, ptr %i.be, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i64 1970, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i8 1, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 41
  store i8 1, ptr %i.bh, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1970, ptr %i.bj, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i8 1, ptr %i.bk, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 73
  store i8 1, ptr %i.bl, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i64 1970, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store i8 1, ptr %i.bn, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 89
  store i8 1, ptr %i.bo, align 1, !tbaa !32
  %i.bp = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %.not.i.i.i33.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !246

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !247
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #29
  br label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !110

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  store i8 %i.v, ptr %i.t, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !33
  store i8 %i.w, ptr %i.m, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !7
  %i.x = load ptr, ptr %0, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !33
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2024011613time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [4 x ptr], align 8                ; 7 uses
  %i.b = alloca [1 x ptr], align 8                ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = alloca [24 x i8], align 16               ; 18 uses
  %i.d = alloca [52 x i8], align 16               ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !263 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 5)
  %i.h = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull @.str.13, i64 %spec.select.i.i.i.i.i.i), !noalias !263
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.f, 5
  %i.i = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !263
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 18 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !47, !noalias !263
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !7, !noalias !263
  store i8 0, ptr %i.j, align 8, !tbaa !33, !noalias !263
  %i.l = icmp eq i64 %.0.i.i.i.i.i, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !33, !noalias !263
  %.not.i.i.i.i = icmp eq i8 %i.o, 47
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.15) #26, !noalias !263 ; 3 uses
  %.not17.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not17.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33, !noalias !263
  %.not18.i.i.i.i = icmp eq i8 %i.q, 0
  %spec.select.i.i.i.i = select i1 %.not18.i.i.i.i, ptr @.str.14, ptr %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.14, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #26, !noalias !263 ; 10 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.invoke.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.r, 15
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i74.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  switch i64 %i.r, label %bb.h [
    i64 0, label %bb.j
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !33, !noalias !263
  store i8 %i.t, ptr %i.j, align 8, !tbaa !33, !noalias !263
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !263
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i74.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.u = icmp samesign ult i64 %i.r, 30
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i76.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i74.i.i.i.i
  %i.v = add nuw i64 %i.r, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.invoke106.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i76.i.i.i.i, !prof !264

.invoke106.i.i.i.i:                               ; preds = %bb.n, %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.cont107.i.i.i.i unwind label %bb.q, !noalias !263

.cont107.i.i.i.i:                                 ; preds = %.invoke106.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i76.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i74.i.i.i.i
  %i.x = phi i64 [ %i.v, %bb.i ], [ 31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i74.i.i.i.i ]
  %.0.i7585.i.i.i.i = phi i64 [ %i.r, %bb.i ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i74.i.i.i.i ]
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28
          to label %._crit_edge.i.i.i.i unwind label %bb.q, !noalias !263 ; 3 uses

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i76.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !263
  store ptr %i.y, ptr %11, align 8, !tbaa !17, !noalias !263
  store i64 %.0.i7585.i.i.i.i, ptr %i.j, align 8, !tbaa !33, !noalias !263
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.g, %bb.f
  %i.z = phi ptr [ %i.y, %._crit_edge.i.i.i.i ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.g ]
  store i64 %i.r, ptr %i.k, align 8, !tbaa !7, !noalias !263
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !33, !noalias !263
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !7, !noalias !263 ; 6 uses
  %i.ac = add i64 %i.ab, 1                        ; 9 uses
  %i.ad = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.j                 ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.af = icmp samesign ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ugt i64 %i.ac, 15
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i: ; preds = %bb.j
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !263 ; 2 uses
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aj = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i ] ; 2 uses
  %i.ak = icmp slt i64 %i.ac, 0
  br i1 %i.ak, label %.invoke.i.i.i.i, label %bb.k

.invoke.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi ptr [ @.str.6, %bb.e ], [ @.str.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.al) #27
          to label %.cont.i.i.i.i unwind label %bb.q, !noalias !263

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.am = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = shl nuw i64 %i.aj, 1                    ; 2 uses
  %i.ao = icmp ult i64 %i.ac, %i.an
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i44.i.i.i.i = phi i64 [ %spec.store.select.i.i.i.i.i.i, %bb.m ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ap = add nuw i64 %.0.i44.i.i.i.i, 1          ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %.invoke106.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28
          to label %.noexc48.i.i.i.i unwind label %bb.q, !noalias !263 ; 4 uses

.noexc48.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  switch i64 %i.ab, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %.noexc48.i.i.i.i
  %i.as = load i8, ptr %i.ad, align 1, !tbaa !33, !noalias !263
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !33, !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i

bb.p:                                             ; preds = %.noexc48.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.ad, i64 %i.ab, i1 false), !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.noexc48.i.i.i.i
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i
  %i.at = icmp samesign ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.at)
  br label %.noexc22.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i
  %i.au = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !263
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.av) #29, !noalias !263
  br label %.noexc22.i.i.i.i

.noexc22.i.i.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i.i.i
  store ptr %i.ar, ptr %11, align 8, !tbaa !17, !noalias !263
  store i64 %.0.i44.i.i.i.i, ptr %i.j, align 8, !tbaa !33, !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %.noexc22.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aw = phi ptr [ %i.ar, %.noexc22.i.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ab
  store i8 47, ptr %i.ax, align 1, !tbaa !33, !noalias !263
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !7, !noalias !263
  %i.ay = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ac
  store i8 0, ptr %i.az, align 1, !tbaa !33, !noalias !263
  %.pre53.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !263
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.invoke.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i76.i.i.i.i, %.invoke106.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit37.i.i.i.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.bb = phi i64 [ %.pre53.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.bc = icmp ugt i64 %.0.i.i.i.i.i, %i.bb
  br i1 %i.bc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.bb) #27
          to label %.noexc31.i.i.i.i unwind label %bb.aa, !noalias !263

.noexc31.i.i.i.i:                                 ; preds = %bb.s
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bd = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.i.i.i.i.i ; 3 uses
  %i.bf = sub nuw i64 %i.bb, %.0.i.i.i.i.i        ; 5 uses
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !7, !noalias !263 ; 5 uses
  %i.bh = sub i64 9223372036854775807, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc32.i.i.i.i unwind label %bb.aa, !noalias !263

.noexc32.i.i.i.i:                                 ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.bj = add i64 %i.bg, %i.bf                    ; 3 uses
  %i.bk = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.j
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i
  %i.bm = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !263
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30.i.i.i.i
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30.i.i.i.i ]
  %.not.i.i.i27.i.i.i.i = icmp ugt i64 %i.bj, %i.bo
  br i1 %.not.i.i.i27.i.i.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26.i.i.i.i
  %.not8.i.i.i28.i.i.i.i = icmp eq i64 %i.bb, %.0.i.i.i.i.i
  br i1 %.not8.i.i.i28.i.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bg ; 2 uses
  %cond.i.i.i29.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %cond.i.i.i29.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = load i8, ptr %i.be, align 1, !tbaa !33, !noalias !263
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !33, !noalias !263
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.be, i64 %i.bf, i1 false), !noalias !263
  br label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bg, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bf)
          to label %bb.z unwind label %bb.aa, !noalias !263

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !7, !noalias !263
  %i.br = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i8 0, ptr %i.bs, align 1, !tbaa !33, !noalias !263
  %i.bt = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263
  %i.bu = call noalias ptr @fopen(ptr noundef readonly %i.bt, ptr noundef nonnull @.str.16), !noalias !265 ; 3 uses
  %.not.i34.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i34.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit39.i.i.i.i, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.t, %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit37.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i unwind label %bb.ac, !noalias !263 ; 5 uses

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.ab
  %i.bx = ptrtoint ptr %i.bu to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.bw, align 8, !tbaa !112, !noalias !263
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.by, align 8, !tbaa !144, !noalias !263
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !268, !noalias !263
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 -1, ptr %i.ca, align 8, !tbaa !270, !noalias !263
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit39.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = call noundef i32 @fclose(ptr noundef nonnull %i.bu), !noalias !263 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit37.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit39.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %bb.z
  %storemerge.i.i.i.i = phi ptr [ %i.bw, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %bb.z ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !tbaa !149, !alias.scope !263
  %i.cd = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.j
  br i1 %i.ce, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit39.i.i.i.i
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !263
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #29, !noalias !263
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit37.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.q
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.bv, %bb.aa ], [ %i.cb, %bb.ac ]
  %i.ch = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.j
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit37.i.i.i.i
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !263
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #29, !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i.i.i, %bb.aw, %.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i ], [ %.pn33.pn.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i.i.i ], [ %i.fz, %.thread.i.i.i.i ], [ %i.gc, %bb.aw ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit37.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !263
  br label %common.resume.i.i.i

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit39.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !263
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ad, label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.ad:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !284
  %i.cl = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !285 ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i: ; preds = %bb.ad
  %spec.select.i.i.i15.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 5)
  %i.cn = load ptr, ptr %2, align 8, !tbaa !17, !noalias !285
  %bcmp147.i.i.i.i = call i32 @bcmp(ptr %i.cn, ptr nonnull @.str.13, i64 %spec.select.i.i.i15.i.i.i), !noalias !285
  %.not.i.i16.i.i.i = icmp eq i32 %bcmp147.i.i.i.i, 0
  br i1 %.not.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i, %bb.ad
  %.inv.i23.i.i.i = icmp ult i64 %i.cl, 5
  %i.co = select i1 %.inv.i23.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i
  %.0.i.i18.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i ], [ %i.co, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %14 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %15 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %17 = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %18 = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 45
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 47
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  %.0.idx157.i.i.i.i = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i ], [ %.0.add.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i ] ; 2 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr @constinit.22, i64 %.0.idx157.i.i.i.i
  %i.cz = load ptr, ptr %.0.ptr.i.i.i.i, align 8, !tbaa !286, !noalias !285
  %i.da = call noalias ptr @fopen(ptr noundef readonly %i.cz, ptr noundef nonnull @.str.16), !noalias !287 ; 9 uses
  %.not.i65.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i65.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !285
  %i.db = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.da), !noalias !285
  %.not54.i.i.i.i = icmp eq i64 %i.db, 24
  br i1 %.not54.i.i.i.i, label %bb.ag, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dc = load i32, ptr %i.c, align 16
  %i.dd = xor i32 %i.dc, 1633974900
  %i.de = getelementptr i8, ptr %i.c, i64 4
  %i.df = load i16, ptr %i.de, align 4
  %i.dg = zext i16 %i.df to i32
  %i.dh = xor i32 %i.dg, 24948
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not55.i.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not55.i.i.i.i, label %bb.ah, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dl = load i8, ptr %i.cp, align 1, !tbaa !33, !noalias !285
  %.07.val.i.i.i.i.i = load i8, ptr %i.cq, align 4, !tbaa !33, !noalias !285 ; 2 uses
  %19 = zext i8 %.07.val.i.i.i.i.i to i64
  %.07.val.1.i.i.i.i.i = load i8, ptr %12, align 1, !tbaa !33, !noalias !285
  %20 = zext i8 %.07.val.1.i.i.i.i.i to i64
  %.07.val.2.i.i.i.i.i = load i8, ptr %13, align 2, !tbaa !33, !noalias !285
  %21 = zext i8 %.07.val.2.i.i.i.i.i to i64
  %22 = shl nuw nsw i64 %19, 24
  %23 = shl nuw nsw i64 %20, 16
  %24 = shl nuw nsw i64 %21, 8
  %.07.val.3.i.i.i.i.i = load i8, ptr %14, align 1, !tbaa !33, !noalias !285
  %25 = zext i8 %.07.val.3.i.i.i.i.i to i64
  %26 = or disjoint i64 %23, %22
  %27 = or disjoint i64 %26, %24
  %28 = or disjoint i64 %27, %25                  ; 4 uses
  %29 = or disjoint i64 %28, -4294967296
  %30 = icmp slt i8 %.07.val.i.i.i.i.i, 0         ; 2 uses
  %.0.i66.i.i.i.i = select i1 %30, i64 %29, i64 %28
  %.07.val.i67.i.i.i.i = load i8, ptr %15, align 16, !tbaa !33, !noalias !285 ; 2 uses
  %31 = zext i8 %.07.val.i67.i.i.i.i to i64
  %.07.val.1.i68.i.i.i.i = load i8, ptr %16, align 1, !tbaa !33, !noalias !285
  %32 = zext i8 %.07.val.1.i68.i.i.i.i to i64
  %.07.val.2.i69.i.i.i.i = load i8, ptr %17, align 2, !tbaa !33, !noalias !285
  %33 = zext i8 %.07.val.2.i69.i.i.i.i to i64
  %34 = shl nuw nsw i64 %31, 24
  %35 = shl nuw nsw i64 %32, 16
  %36 = shl nuw nsw i64 %33, 8
  %.07.val.3.i70.i.i.i.i = load i8, ptr %18, align 1, !tbaa !33, !noalias !285
  %37 = zext i8 %.07.val.3.i70.i.i.i.i to i64
  %38 = or disjoint i64 %35, %34
  %39 = or disjoint i64 %38, %36
  %40 = or disjoint i64 %39, %37                  ; 2 uses
  %41 = or disjoint i64 %40, -4294967296
  %i.dm = icmp slt i8 %.07.val.i67.i.i.i.i, 0
  %.0.i71.i.i.i.i = select i1 %i.dm, i64 %41, i64 %40 ; 3 uses
  %42 = icmp slt i64 %.0.i71.i.i.i.i, %.0.i66.i.i.i.i
  %or.cond.i.i.i.i = or i1 %30, %42
  br i1 %or.cond.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = call i32 @fseek(ptr noundef nonnull %i.da, i64 noundef %28, i32 noundef 0), !noalias !285
  %.not56.i.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not56.i.i.i.i, label %bb.aj, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !285
  %i.do = sub nsw i64 %.0.i71.i.i.i.i, %28        ; 3 uses
  %i.dp = udiv i64 %i.do, 52                      ; 2 uses
  %i.dq = mul nuw i64 %i.dp, 52
  %.not57.i.i.i.i = icmp ne i64 %i.dq, %i.do
  %.not58150.i.i.i.i = icmp ult i64 %i.do, 52
  %or.cond175.i.i.i.i = or i1 %.not58150.i.i.i.i, %.not57.i.i.i.i
  br i1 %or.cond175.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ak:                                            ; preds = %bb.am
  %i.dr = add i64 %.041151.i.i.i.i, 1             ; 2 uses
  %.not58.i.i.i.i = icmp eq i64 %i.dr, %i.dp
  br i1 %.not58.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !290

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %bb.ak
  %.041151.i.i.i.i = phi i64 [ %i.dr, %bb.ak ], [ 0, %bb.aj ]
  %i.ds = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.da), !noalias !285
  %.not59.i.i.i.i = icmp eq i64 %i.ds, 52
  br i1 %.not59.i.i.i.i, label %bb.al, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %.07.val.i72.i.i.i.i = load i8, ptr %i.cr, align 8, !tbaa !33, !noalias !285 ; 2 uses
  %i.dt = zext i8 %.07.val.i72.i.i.i.i to i64
  %.07.val.1.i73.i.i.i.i = load i8, ptr %i.cs, align 1, !tbaa !33, !noalias !285
  %i.du = zext i8 %.07.val.1.i73.i.i.i.i to i64
  %.07.val.2.i74.i.i.i.i = load i8, ptr %i.ct, align 2, !tbaa !33, !noalias !285
  %i.dv = zext i8 %.07.val.2.i74.i.i.i.i to i64
  %i.dw = shl nuw nsw i64 %i.dt, 24
  %i.dx = shl nuw nsw i64 %i.du, 16
  %i.dy = shl nuw nsw i64 %i.dv, 8
  %.07.val.3.i75.i.i.i.i = load i8, ptr %i.cu, align 1, !tbaa !33, !noalias !285
  %i.dz = zext i8 %.07.val.3.i75.i.i.i.i to i64
  %i.ea = or disjoint i64 %i.dx, %i.dw
  %i.eb = or disjoint i64 %i.ea, %i.dy
  %i.ec = or disjoint i64 %i.eb, %i.dz            ; 2 uses
  %i.ed = or disjoint i64 %i.ec, -4294967296
  %i.ee = icmp slt i8 %.07.val.i72.i.i.i.i, 0
  %.0.i76.i.i.i.i = select i1 %i.ee, i64 %i.ed, i64 %i.ec
  %i.ef = add nsw i64 %.0.i76.i.i.i.i, %.0.i71.i.i.i.i ; 2 uses
  %.07.val.i77.i.i.i.i = load i8, ptr %i.cv, align 4, !tbaa !33, !noalias !285 ; 2 uses
  %i.eg = zext i8 %.07.val.i77.i.i.i.i to i64
  %.07.val.1.i78.i.i.i.i = load i8, ptr %i.cw, align 1, !tbaa !33, !noalias !285
  %i.eh = zext i8 %.07.val.1.i78.i.i.i.i to i64
  %.07.val.2.i79.i.i.i.i = load i8, ptr %i.cx, align 2, !tbaa !33, !noalias !285
  %i.ei = zext i8 %.07.val.2.i79.i.i.i.i to i64
  %i.ej = shl nuw nsw i64 %i.eg, 24
  %i.ek = shl nuw nsw i64 %i.eh, 16
  %i.el = shl nuw nsw i64 %i.ei, 8
  %.07.val.3.i80.i.i.i.i = load i8, ptr %i.cy, align 1, !tbaa !33, !noalias !285
  %i.em = zext i8 %.07.val.3.i80.i.i.i.i to i64
  %i.en = or disjoint i64 %i.ek, %i.ej
  %i.eo = or disjoint i64 %i.en, %i.el
  %i.ep = or disjoint i64 %i.eo, %i.em            ; 2 uses
  %i.eq = or disjoint i64 %i.ep, -4294967296
  %i.er = icmp slt i8 %.07.val.i77.i.i.i.i, 0
  %.0.i81.i.i.i.i = select i1 %i.er, i64 %i.eq, i64 %i.ep ; 2 uses
  %i.es = or i64 %.0.i81.i.i.i.i, %i.ef
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.es, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.am, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.cr, align 8, !tbaa !33, !noalias !285
  %i.et = load ptr, ptr %2, align 8, !tbaa !17, !noalias !285
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.0.i.i18.i.i.i
  %i.ev = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(1) %i.d) #32, !noalias !285
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.an, label %bb.ak

bb.an:                                            ; preds = %bb.am
  %i.ex = call i32 @fseek(ptr noundef nonnull %i.da, i64 noundef %i.ef, i32 noundef 0), !noalias !285
  %.not60.i.i.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not60.i.i.i.i, label %bb.ao, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ey = icmp eq i8 %i.dl, 0
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.fa = select i1 %i.ey, ptr %i.ez, ptr @.str.24 ; 3 uses
  %i.fb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %bb.ap unwind label %bb.aw, !noalias !285 ; 9 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fc = ptrtoint ptr %i.da to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fd, ptr %10, align 8, !tbaa !47, !noalias !285
  %i.fe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fa) #26, !noalias !285 ; 8 uses
  %i.ff = icmp ugt i64 %i.fe, 15
  br i1 %i.ff, label %bb.aq, label %._crit_edge.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fg = icmp slt i64 %i.fe, 0
  br i1 %i.fg, label %.noexc.i.i.i.i.i, label %bb.ar

.noexc.i.i.i.i.i:                                 ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
          to label %.noexc.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !285

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fh = add nuw i64 %i.fe, 1                    ; 2 uses
  %i.fi = icmp slt i64 %i.fh, 0
  br i1 %i.fi, label %.noexc11.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !111

.noexc11.i.i.i.i.i:                               ; preds = %bb.ar
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc82.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !285

.noexc82.i.i.i.i:                                 ; preds = %.noexc11.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.ar
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #28
          to label %.noexc83.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !285 ; 2 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.fj, ptr %10, align 8, !tbaa !17, !noalias !285
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !33, !noalias !285
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc83.i.i.i.i, %bb.ap
  %i.fk = phi ptr [ %i.fj, %.noexc83.i.i.i.i ], [ %i.fd, %bb.ap ] ; 3 uses
  switch i64 %i.fe, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fl = load i8, ptr %i.fa, align 1, !tbaa !33, !noalias !285
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !33, !noalias !285
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 1 %i.fa, i64 %i.fe, i1 false), !noalias !285
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.fe, ptr %i.fm, align 8, !tbaa !7, !noalias !285
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fe
  store i8 0, ptr %i.fn, align 1, !tbaa !33, !noalias !285
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.fo, align 8, !tbaa !144, !noalias !285
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %i.fc, ptr %i.fp, align 8, !tbaa !268, !noalias !285
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i64 %.0.i81.i.i.i.i, ptr %i.fq, align 8, !tbaa !270, !noalias !285
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.fb, align 8, !tbaa !112, !noalias !285
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 32 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 48 ; 3 uses
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !47, !noalias !285
  %i.ft = load ptr, ptr %10, align 8, !tbaa !17, !noalias !285 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fd
  br i1 %i.fu, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.fv = load i64, ptr %i.fm, align 8, !tbaa !7, !noalias !285 ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add nuw nsw i64 %i.fv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, ptr noundef nonnull align 8 dereferenceable(1) %i.fd, i64 %i.fx, i1 false), !noalias !285
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %bb.au
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !17, !noalias !285
  %i.fy = load i64, ptr %i.fd, align 8, !tbaa !33, !noalias !285
  store i64 %i.fy, ptr %i.fs, align 8, !tbaa !33, !noalias !285
  %.pre.i.i.i.i = load i64, ptr %i.fm, align 8, !tbaa !7, !noalias !285
  br label %bb.ax

.thread.i.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc11.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = call noundef i32 @fclose(ptr noundef nonnull %i.da), !noalias !285 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 64) #29, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i.i, %bb.ak, %bb.an, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  %i.gb = call noundef i32 @fclose(ptr noundef nonnull %i.da), !noalias !285 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i, %bb.ae
  %.0.add.i.i.i.i = add nuw nsw i64 %.0.idx157.i.i.i.i, 8 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, 24
  br i1 %.not.i19.i.i.i, label %bb.ay, label %bb.ae

bb.aw:                                            ; preds = %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  %i.gd = call noundef i32 @fclose(ptr noundef nonnull %i.da), !noalias !285 ; 0 uses
  br label %common.resume.i.i.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.av
  %i.ge = phi i64 [ %i.fv, %bb.av ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !7, !noalias !285
  store ptr %i.fb, ptr %0, align 8, !tbaa !149, !alias.scope !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !284
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.ay:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !291, !alias.scope !285
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !284
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !284
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !296 ; 4 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i: ; preds = %bb.ay
  %spec.select.i.i.i28.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gg, i64 5)
  %i.gi = load ptr, ptr %2, align 8, !tbaa !17, !noalias !296
  %bcmp.i29.i.i.i = call i32 @bcmp(ptr %i.gi, ptr nonnull @.str.13, i64 %spec.select.i.i.i28.i.i.i), !noalias !296
  %.not.i.i30.i.i.i = icmp eq i32 %bcmp.i29.i.i.i, 0
  br i1 %.not.i.i30.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i, %bb.ay
  %.inv.i50.i.i.i = icmp ult i64 %i.gg, 5
  %i.gj = select i1 %.inv.i50.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i
  %.0.i.i32.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i ], [ %i.gj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit.30, i64 32, i1 false), !tbaa.struct !297, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !296
  store ptr @.str.24, ptr %i.b, align 8, !tbaa !286, !noalias !296
  %.not.i33.i.i.i = icmp eq i64 %.0.i.i32.i.i.i, %i.gg
end_hunk_0
