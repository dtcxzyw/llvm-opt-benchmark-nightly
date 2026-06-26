inline.NumInlined: 1272
inline.NumDeleted: 541
begin_hunk_0_@_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_default_appendEm:bb.a
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1970, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  store i8 1, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 1970, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i25.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bq, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 15 uses
  %.057.i.i.i27 = phi i64 [ %i.bp, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i26, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16
  store i64 1970, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  store i8 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 25
  store i8 1, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  store i64 1970, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  store i8 1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 41
  store i8 1, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  store i64 1970, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72
  store i8 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 73
  store i8 1, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  store i64 1970, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 88
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 89
  store i8 1, ptr %i.bo, align 1
  %i.bp = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %.not.i.i.i28.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !133

_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i31 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !alias.scope !134
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i32 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !32

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [4 x ptr], align 8                ; 6 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [24 x i8], align 16               ; 16 uses
  %i.d = alloca [52 x i8], align 16               ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !150 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 5)
  %i.h = load ptr, ptr %2, align 8, !noalias !150
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull @.str.17, i64 %spec.select.i.i.i.i.i.i), !noalias !150
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.f, 5
  %i.i = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !150
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  store ptr %i.j, ptr %11, align 8, !noalias !150
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !noalias !150
  store i8 0, ptr %i.j, align 8, !noalias !150
  %i.l = icmp eq i64 %.0.i.i.i.i.i, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !noalias !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !noalias !150
  %.not.i.i.i.i = icmp eq i8 %i.o, 47
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.19) #24, !noalias !150 ; 3 uses
  %.not12.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not12.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 1, !noalias !150
  %.not13.i.i.i.i = icmp eq i8 %i.q, 0
  %spec.select.i.i.i.i = select i1 %.not13.i.i.i.i, ptr @.str.18, ptr %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.18, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #24, !noalias !150 ; 10 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.r, 15
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  switch i64 %i.r, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %.0.i.i.i.i, align 1, !noalias !150
  store i8 %i.t, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.u = icmp samesign ult i64 %i.r, 30
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i64 %i.r, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, !prof !151

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !150
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.x = phi i64 [ %i.v, %bb.k ], [ 31, %bb.j ]
  %.0.i525.i.i.i = phi i64 [ %i.r, %bb.k ], [ 30, %bb.j ]
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26, !noalias !150 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  store ptr %i.y, ptr %11, align 8, !noalias !150
  store i64 %.0.i525.i.i.i, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.z = phi ptr [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i ]
  store i64 %i.r, ptr %i.k, align 8, !noalias !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !noalias !150
  %i.ab = load i64, ptr %i.k, align 8, !noalias !150 ; 4 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j                 ; 2 uses
  br i1 %i.ae, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ag = load i64, ptr %i.j, align 8, !noalias !150
  %i.ah = select i1 %i.ae, i64 15, i64 %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef 1), !noalias !150
  %.pre.i.i.i.i.i.i = load ptr, ptr %11, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 47, ptr %i.ak, align 1, !noalias !150
  store i64 %i.ac, ptr %i.k, align 8, !noalias !150
  %i.al = load ptr, ptr %11, align 8, !noalias !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i8 0, ptr %i.am, align 1, !noalias !150
  %.pre26.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !150
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.an = phi i64 [ %.pre26.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.ao = icmp ugt i64 %.0.i.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.an) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ap = load ptr, ptr %2, align 8, !noalias !150
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.0.i.i.i.i.i ; 3 uses
  %i.ar = sub nuw i64 %i.an, %.0.i.i.i.i.i        ; 5 uses
  %i.as = load i64, ptr %i.k, align 8, !noalias !150 ; 5 uses
  %i.at = sub i64 9223372036854775807, %i.as
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.av = add i64 %i.as, %i.ar                    ; 3 uses
  %i.aw = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.j                 ; 2 uses
  br i1 %i.ax, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.ay = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.az = load i64, ptr %i.j, align 8, !noalias !150
  %i.ba = select i1 %i.ax, i64 15, i64 %i.az
  %.not.i.i.i17.i.i.i.i = icmp ugt i64 %i.av, %i.ba
  br i1 %.not.i.i.i17.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i
  %.not8.i.i.i18.i.i.i.i = icmp eq i64 %i.an, %.0.i.i.i.i.i
  br i1 %.not8.i.i.i18.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as ; 2 uses
  %cond.i.i.i19.i.i.i.i = icmp eq i64 %i.ar, 1
  br i1 %cond.i.i.i19.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = load i8, ptr %i.aq, align 1, !noalias !150
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_":bb.a
  %i.eb = add i64 %.038126.i.i.i.i, 1             ; 2 uses
  %.not47.i.i.i.i = icmp eq i64 %i.eb, %i.dz
  br i1 %.not47.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !163

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %.038126.i.i.i.i = phi i64 [ %i.eb, %bb.ae ], [ 0, %bb.ad ]
  %i.ec = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.cm), !noalias !159
  %.not48.i.i.i.i = icmp eq i64 %i.ec, 52
  br i1 %.not48.i.i.i.i, label %bb.af, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %.07.val.i57.i.i.i.i = load i8, ptr %i.cd, align 8, !noalias !159 ; 2 uses
  %i.ed = zext i8 %.07.val.i57.i.i.i.i to i64
  %.07.val.1.i58.i.i.i.i = load i8, ptr %i.ce, align 1, !noalias !159
  %i.ee = zext i8 %.07.val.1.i58.i.i.i.i to i64
  %.07.val.2.i59.i.i.i.i = load i8, ptr %i.cf, align 2, !noalias !159
  %i.ef = zext i8 %.07.val.2.i59.i.i.i.i to i64
  %i.eg = shl nuw nsw i64 %i.ed, 24
  %i.eh = shl nuw nsw i64 %i.ee, 16
  %i.ei = shl nuw nsw i64 %i.ef, 8
  %.07.val.3.i60.i.i.i.i = load i8, ptr %i.cg, align 1, !noalias !159
  %i.ej = zext i8 %.07.val.3.i60.i.i.i.i to i64
  %i.ek = or disjoint i64 %i.eh, %i.eg
  %i.el = or disjoint i64 %i.ek, %i.ei
  %i.em = or disjoint i64 %i.el, %i.ej            ; 2 uses
  %i.en = or disjoint i64 %i.em, -4294967296
  %i.eo = icmp slt i8 %.07.val.i57.i.i.i.i, 0
  %.0.i61.i.i.i.i = select i1 %i.eo, i64 %i.en, i64 %i.em
  %i.ep = add nsw i64 %.0.i61.i.i.i.i, %.0.i56.i.i.i.i ; 2 uses
  %.07.val.i62.i.i.i.i = load i8, ptr %i.ch, align 4, !noalias !159 ; 2 uses
  %i.eq = zext i8 %.07.val.i62.i.i.i.i to i64
  %.07.val.1.i63.i.i.i.i = load i8, ptr %i.ci, align 1, !noalias !159
  %i.er = zext i8 %.07.val.1.i63.i.i.i.i to i64
  %.07.val.2.i64.i.i.i.i = load i8, ptr %i.cj, align 2, !noalias !159
  %i.es = zext i8 %.07.val.2.i64.i.i.i.i to i64
  %i.et = shl nuw nsw i64 %i.eq, 24
  %i.eu = shl nuw nsw i64 %i.er, 16
  %i.ev = shl nuw nsw i64 %i.es, 8
  %.07.val.3.i65.i.i.i.i = load i8, ptr %i.ck, align 1, !noalias !159
  %i.ew = zext i8 %.07.val.3.i65.i.i.i.i to i64
  %i.ex = or disjoint i64 %i.eu, %i.et
  %i.ey = or disjoint i64 %i.ex, %i.ev
  %i.ez = or disjoint i64 %i.ey, %i.ew            ; 2 uses
  %i.fa = or disjoint i64 %i.ez, -4294967296
  %i.fb = icmp slt i8 %.07.val.i62.i.i.i.i, 0
  %.0.i66.i.i.i.i = select i1 %i.fb, i64 %i.fa, i64 %i.ez ; 2 uses
  %i.fc = or i64 %.0.i66.i.i.i.i, %i.ep
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.fc, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.ag, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.cd, align 8, !noalias !159
  %i.fd = load ptr, ptr %2, align 8, !noalias !159
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.0.i.i18.i.i.i
  %i.ff = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fe, ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !159
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.fh = call i32 @fseek(ptr noundef nonnull %i.cm, i64 noundef %i.ep, i32 noundef 0), !noalias !159
  %.not49.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not49.i.i.i.i, label %bb.ai, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fi = icmp eq i8 %i.cx, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.fk = select i1 %i.fi, ptr %i.fj, ptr @.str.28 ; 3 uses
  %i.fl = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !159 ; 8 uses
  %i.fm = ptrtoint ptr %i.cm to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fn, ptr %10, align 8, !noalias !159
  %i.fo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #24, !noalias !159 ; 8 uses
  %i.fp = icmp ugt i64 %i.fo, 15
  br i1 %i.fp, label %bb.aj, label %._crit_edge.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fq = icmp slt i64 %i.fo, 0
  br i1 %i.fq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !159
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fr = add nuw i64 %i.fo, 1                    ; 2 uses
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !33

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !159
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #26, !noalias !159 ; 2 uses
  store ptr %i.ft, ptr %10, align 8, !noalias !159
  store i64 %i.fo, ptr %i.fn, align 8, !noalias !159
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.ai
  %i.fu = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.fn, %bb.ai ] ; 3 uses
  switch i64 %i.fo, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fv = load i8, ptr %i.fk, align 1, !noalias !159
  store i8 %i.fv, ptr %i.fu, align 1, !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fu, ptr nonnull align 1 %i.fk, i64 %i.fo, i1 false), !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.fo, ptr %i.fw, align 8, !noalias !159
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fo
  store i8 0, ptr %i.fx, align 1, !noalias !159
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.fy, align 8, !noalias !159
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 %i.fm, ptr %i.fz, align 8, !noalias !159
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 %.0.i66.i.i.i.i, ptr %i.ga, align 8, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.fl, align 8, !noalias !159
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 3 uses
  store ptr %i.gc, ptr %i.gb, align 8, !noalias !159
  %i.gd = load ptr, ptr %10, align 8, !noalias !159 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fn
  br i1 %i.ge, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  %i.gf = load i64, ptr %i.fw, align 8, !noalias !159 ; 3 uses
  %i.gg = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gg)
  %i.gh = add nuw nsw i64 %i.gf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, ptr noundef nonnull align 8 dereferenceable(1) %i.fn, i64 %i.gh, i1 false), !noalias !159
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  store ptr %i.gd, ptr %i.gb, align 8, !noalias !159
  %i.gi = load i64, ptr %i.fn, align 8, !noalias !159
  store i64 %i.gi, ptr %i.gc, align 8, !noalias !159
  %.pre.i22.i.i.i = load i64, ptr %i.fw, align 8, !noalias !159
  br label %bb.aq

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i.i, %bb.ae, %bb.ah, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  %i.gj = call noundef i32 @fclose(ptr noundef nonnull %i.cm) #24, !noalias !159, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i, %bb.y
  %.0.add.i.i.i.i = add nuw nsw i64 %.0.idx132.i.i.i.i, 8 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, 24
  br i1 %.not.i19.i.i.i, label %bb.ar, label %bb.y

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.ap
  %i.gk = phi i64 [ %.pre.i22.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ], [ %i.gf, %bb.ap ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 %i.gk, ptr %i.gl, align 8, !noalias !159
  store ptr %i.fl, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.ar:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !158
  %i.gm = load i64, ptr %i.e, align 8, !noalias !168 ; 4 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i: ; preds = %bb.ar
  %spec.select.i.i.i29.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gm, i64 5)
  %i.go = load ptr, ptr %2, align 8, !noalias !168
  %bcmp.i30.i.i.i = call i32 @bcmp(ptr %i.go, ptr nonnull @.str.17, i64 %spec.select.i.i.i29.i.i.i), !noalias !168
  %.not.i.i31.i.i.i = icmp eq i32 %bcmp.i30.i.i.i, 0
  br i1 %.not.i.i31.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i, %bb.ar
  %.inv.i48.i.i.i = icmp ult i64 %i.gm, 5
  %i.gp = select i1 %.inv.i48.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i
  %.0.i.i33.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i ], [ %i.gp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit.34, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !168
  store ptr @.str.28, ptr %i.b, align 8, !noalias !168
  %.not.i34.i.i.i = icmp eq i64 %.0.i.i33.i.i.i, %i.gm
  br i1 %.not.i34.i.i.i, label %.lr.ph.i35.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %i.gq = load ptr, ptr %2, align 8, !noalias !168
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.0.i.i33.i.i.i
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !168
  %i.gt = icmp eq i8 %i.gs, 47                    ; 2 uses
  %i.gu = select i1 %i.gt, ptr %i.b, ptr %i.a
  %.sroa.5.0.copyload.pre.i.sroa.speculated.i.i.i = select i1 %i.gt, i64 8, i64 32
  br label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %.sroa.5.0.copyload.i.i.i.i = phi i64 [ 32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i ], [ %.sroa.5.0.copyload.pre.i.sroa.speculated.i.i.i, %bb.as ]
  %.sroa.060.0.copyload136.i.i.i.i = phi ptr [ %i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i ], [ %i.gu, %bb.as ] ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.060.0.copyload136.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i, %.lr.ph.i35.i.i.i
  %.01690.i.i.i.i = phi ptr [ %.sroa.060.0.copyload136.i.i.i.i, %.lr.ph.i35.i.i.i ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !168
  %i.gz = load ptr, ptr %.01690.i.i.i.i, align 8, !noalias !168 ; 4 uses
  store ptr %i.gv, ptr %4, align 8, !noalias !168
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #25, !noalias !168
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #24, !noalias !168 ; 8 uses
  %i.hc = icmp ugt i64 %i.hb, 15
  br i1 %i.hc, label %bb.aw, label %._crit_edge.i.i.i36.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hd = icmp slt i64 %i.hb, 0
  br i1 %i.hd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.he = add nuw i64 %i.hb, 1                    ; 2 uses
  %i.hf = icmp slt i64 %i.he, 0
  br i1 %i.hf, label %bb.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, !prof !33

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i: ; preds = %bb.ay
  %i.hg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #26, !noalias !168 ; 2 uses
  store ptr %i.hg, ptr %4, align 8, !noalias !168
  store i64 %i.hb, ptr %i.gv, align 8, !noalias !168
  br label %._crit_edge.i.i.i36.i.i.i

._crit_edge.i.i.i36.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, %bb.av
  %i.hh = phi ptr [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i ], [ %i.gv, %bb.av ] ; 3 uses
  switch i64 %i.hb, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  %i.hi = load i8, ptr %i.gz, align 1, !noalias !168
  store i8 %i.hi, ptr %i.hh, align 1, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull align 1 %i.gz, i64 %i.hb, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i: ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i36.i.i.i
  store i64 %i.hb, ptr %i.gw, align 8, !noalias !168
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hb
  store i8 0, ptr %i.hj, align 1, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !168
  store ptr %i.gx, ptr %5, align 8, !noalias !168
  %i.hk = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.hl = load i64, ptr %i.gw, align 8, !noalias !168 ; 8 uses
  %i.hm = icmp ugt i64 %i.hl, 15
  br i1 %i.hm, label %bb.bc, label %._crit_edge.i.i21.i.i.i.i

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.hn = icmp slt i64 %i.hl, 0
  br i1 %i.hn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ho = add nuw i64 %i.hl, 1                    ; 2 uses
  %i.hp = icmp slt i64 %i.ho, 0
  br i1 %i.hp, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, !prof !33

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i: ; preds = %bb.be
  %i.hq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #26, !noalias !168 ; 2 uses
  store ptr %i.hq, ptr %5, align 8, !noalias !168
  store i64 %i.hl, ptr %i.gx, align 8, !noalias !168
  br label %._crit_edge.i.i21.i.i.i.i

._crit_edge.i.i21.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.hr = phi ptr [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i ] ; 4 uses
  switch i64 %i.hl, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  %i.hs = load i8, ptr %i.hk, align 1, !noalias !168
  store i8 %i.hs, ptr %i.hr, align 1, !noalias !168
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr align 1 %i.hk, i64 %i.hl, i1 false), !noalias !168
  br label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %._crit_edge.i.i21.i.i.i.i
  store i64 0, ptr %i.gy, align 8, !noalias !168
  store i8 0, ptr %i.hr, align 1, !noalias !168
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i64 %i.hl, ptr %i.gy, align 8, !noalias !168
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hl
  store i8 0, ptr %i.ht, align 1, !noalias !168
  %i.hu = load i64, ptr %i.gy, align 8, !noalias !168 ; 5 uses
  %i.hv = icmp sgt i64 %i.hu, 9223372036854775792
  br i1 %i.hv, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bi
  %i.hw = add nsw i64 %i.hu, 15                   ; 3 uses
  %i.hx = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.gx                ; 2 uses
  br i1 %i.hy, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.hz = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.ia = load i64, ptr %i.gx, align 8, !noalias !168
  %i.ib = select i1 %i.hy, i64 15, i64 %i.ia
  %.not.i.i.i.i44.i.i.i = icmp ugt i64 %i.hw, %i.ib
  br i1 %.not.i.i.i.i44.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ic, ptr noundef nonnull align 1 dereferenceable(15) @.str.35, i64 15, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.hu, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 15), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i: ; preds = %bb.bm, %bb.bl
  store i64 %i.hw, ptr %i.gy, align 8, !noalias !168
  %i.id = load ptr, ptr %5, align 8, !noalias !168
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hw
  store i8 0, ptr %i.ie, align 1, !noalias !168
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.if = load i64, ptr %i.e, align 8, !noalias !168 ; 4 uses
  %i.ig = icmp ugt i64 %.0.i.i33.i.i.i, %i.if
  br i1 %i.ig, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i64 noundef %.0.i.i33.i.i.i, i64 noundef %i.if) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i: ; preds = %bb.bn
  %i.ih = load ptr, ptr %2, align 8, !noalias !168
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.0.i.i33.i.i.i ; 3 uses
  %i.ij = sub nuw i64 %i.if, %.0.i.i33.i.i.i      ; 5 uses
  %i.ik = load i64, ptr %i.gy, align 8, !noalias !168 ; 5 uses
  %i.il = sub i64 9223372036854775807, %i.ik
  %i.im = icmp ult i64 %i.il, %i.ij
  br i1 %i.im, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i
  %i.in = add i64 %i.ik, %i.ij                    ; 3 uses
  %i.io = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gx                ; 2 uses
  br i1 %i.ip, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i
  %i.iq = icmp ult i64 %i.ik, 16
  call void @llvm.assume(i1 %i.iq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i
  %i.ir = load i64, ptr %i.gx, align 8, !noalias !168
  %i.is = select i1 %i.ip, i64 15, i64 %i.ir
  %.not.i.i.i26.i.i.i.i = icmp ugt i64 %i.in, %i.is
  br i1 %.not.i.i.i26.i.i.i.i, label %bb.bv, label %bb.br
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_":bb.a
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i: ; preds = %bb.bx
  %i.jk = load i64, ptr %i.ji, align 8, !noalias !168
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !168
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.jn = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.jm) #29, !noalias !168
  br i1 %i.jn, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.jo = load ptr, ptr %7, align 8, !noalias !168
  %i.jp = getelementptr i8, ptr %i.jo, i64 -24
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !168
  %i.jr = getelementptr inbounds i8, ptr %7, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 240
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !168 ; 6 uses
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i30.i.i.i.i, label %bb.bz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt16__throw_bad_castv() #25, !noalias !168
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load i8, ptr %i.ju, align 8, !noalias !168
  %.not.i1.i.i.i.i.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 67
  %i.jx = load i8, ptr %i.jw, align 1, !noalias !168
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jt) #24, !noalias !168
  %i.jy = load ptr, ptr %i.jt, align 8, !noalias !168
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !168
  %i.kb = call noundef signext i8 %i.ka(ptr noundef nonnull align 8 dereferenceable(570) %i.jt, i8 noundef signext 10) #24, !noalias !168, !inline_history !175
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.jx, %bb.ca ], [ %i.kb, %bb.cb ]
  %i.kc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext %.0.i.i.i.i.i.i.i) #24, !noalias !168 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.kd = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8, !noalias !168 ; 2 uses
  store ptr %i.kd, ptr %7, align 8, !noalias !168
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8, !noalias !168
  %i.kf = getelementptr i8, ptr %i.kd, i64 -24
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !168
  %i.kh = getelementptr inbounds i8, ptr %7, i64 %i.kg
  store ptr %i.ke, ptr %i.kh, align 8, !noalias !168
  %i.ki = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ki, align 8, !noalias !168
  %i.kj = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ki) #24, !noalias !168 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.jm) #24, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ki, align 8, !noalias !168
  %i.kk = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kk) #24, !noalias !168
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8, !noalias !168 ; 2 uses
  store ptr %i.kl, ptr %7, align 8, !noalias !168
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8, !noalias !168
  %i.kn = getelementptr i8, ptr %i.kl, i64 -24
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !168
  %i.kp = getelementptr inbounds i8, ptr %7, i64 %i.ko
  store ptr %i.km, ptr %i.kp, align 8, !noalias !168
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.kq, align 8, !noalias !168
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kr) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !168
  %.pre.i41.i.i.i = load ptr, ptr %6, align 8, !noalias !168 ; 3 uses
  %i.ks = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !168 ; 2 uses
  %i.kt = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ku, ptr %9, align 8, !noalias !168
  %i.kv = icmp eq ptr %.pre.i41.i.i.i, %i.iz
  %.pre.i.i.i = load i64, ptr %i.ja, align 8, !noalias !168 ; 2 uses
  br i1 %i.kv, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc, %.thread137.i.i.i.i
  %i.kw = phi i64 [ 0, %.thread137.i.i.i.i ], [ %.pre.i.i.i, %bb.cc ] ; 3 uses
  %i.kx = phi ptr [ %i.jf, %.thread137.i.i.i.i ], [ %i.ku, %bb.cc ] ; 3 uses
  %i.ky = phi i64 [ %i.je, %.thread137.i.i.i.i ], [ %i.kt, %bb.cc ]
  %i.kz = phi ptr [ %i.jd, %.thread137.i.i.i.i ], [ %i.ks, %bb.cc ]
  %i.la = icmp ult i64 %i.kw, 16
  call void @llvm.assume(i1 %i.la)
  %i.lb = add nuw nsw i64 %i.kw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kx, ptr noundef nonnull align 8 dereferenceable(1) %i.iz, i64 %i.lb, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cc
  store ptr %.pre.i41.i.i.i, ptr %9, align 8, !noalias !168
  %i.lc = load i64, ptr %i.iz, align 8, !noalias !168
  store i64 %i.lc, ptr %i.ku, align 8, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.cd
  %i.ld = phi ptr [ %i.kx, %bb.cd ], [ %i.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 5 uses
  %i.le = phi i64 [ %i.ky, %bb.cd ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %.pr.i.i.i = phi ptr [ %i.kz, %bb.cd ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 8 uses
  %i.lf = phi ptr [ %i.kx, %bb.cd ], [ %.pre.i41.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.lg = phi i64 [ %i.kw, %bb.cd ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.lg, ptr %i.lh, align 8, !noalias !168
  store ptr %i.iz, ptr %6, align 8, !noalias !168
  store i64 0, ptr %i.ja, align 8, !noalias !168
  store i8 0, ptr %i.iz, align 8, !noalias !168
  %i.li = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.li, align 8, !noalias !168
  %i.lj = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 16
  store i64 %i.le, ptr %i.lj, align 8, !noalias !168
  %i.lk = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 24
  store i64 -1, ptr %i.lk, align 8, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %.pr.i.i.i, align 8, !noalias !168
  %i.ll = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 48 ; 3 uses
  store ptr %i.lm, ptr %i.ll, align 8, !noalias !168
  %i.ln = icmp eq ptr %i.lf, %i.ld
  br i1 %i.ln, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.lo = icmp ult i64 %i.lg, 16
  call void @llvm.assume(i1 %i.lo)
  %i.lp = add nuw nsw i64 %i.lg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lm, ptr noundef nonnull align 8 dereferenceable(1) %i.ld, i64 %i.lp, i1 false), !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.lf, ptr %i.ll, align 8, !noalias !168
  %i.lq = load i64, ptr %i.ld, align 8, !noalias !168
  store i64 %i.lq, ptr %i.lm, align 8, !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i, %bb.ce
  %i.lr = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 40
  store i64 %i.lg, ptr %i.lr, align 8, !noalias !168
  store ptr %i.ld, ptr %9, align 8, !noalias !168
  store i64 0, ptr %i.lh, align 8, !noalias !168
  store i8 0, ptr %i.ld, align 1, !noalias !168
  store ptr %.pr.i.i.i, ptr %0, align 8, !alias.scope !168
  %.pre103.i.i.i.i = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !168
  %i.ls = icmp eq ptr %.pre103.i.i.i.i, %i.gx
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i
  %i.lt = load i64, ptr %i.gx, align 8, !noalias !168
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %.pre103.i.i.i.i, i64 noundef %i.lu) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.lv = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.gv
  br i1 %i.lw, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i
  %i.lx = load i64, ptr %i.gv, align 8, !noalias !168
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #27, !noalias !168
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i39.i.i.i
  %i.lz = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.gx
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i
  %i.mb = load i64, ptr %i.gx, align 8, !noalias !168
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.md = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.gv
  br i1 %i.me, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i
  %i.mf = load i64, ptr %i.gv, align 8, !noalias !168
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #27, !noalias !168
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  %i.mh = getelementptr inbounds nuw i8, ptr %.01690.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %i.mh, %12
  br i1 %.not18.i.i.i.i, label %bb.cf, label %bb.at

_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  store ptr null, ptr %0, align 8, !alias.scope !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit": ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.aq, %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.cf
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %.sroa.speculated, ptr noundef %i.d) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %.sroa.speculated, i32 noundef 1) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8
  %i.h = sub i64 %i.g, %.sroa.speculated
  store i64 %i.h, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_2
