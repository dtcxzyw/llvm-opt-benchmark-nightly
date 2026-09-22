Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/grompp?download=true
inline.NumInlined: 3296
inline.NumDeleted: 1547
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN17InteractionOfTypeC2EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body25
  %i.cr = load i64, ptr %i.v, align 8, !tbaa !28
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016.idx42 = phi i64 [ %.016.add, %.lr.ph ], [ %.016.idx42.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.041 = phi ptr [ %i.cu, %.lr.ph ], [ %.sroa.0.041.ph, %.lr.ph.preheader ] ; 2 uses
  %.016.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.016.idx42
  %i.ct = load float, ptr %.sroa.0.041, align 4, !tbaa !44
  %.016.add = add nuw nsw i64 %.016.idx42, 4      ; 2 uses
  store float %i.ct, ptr %.016.ptr, align 4, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 4 ; 2 uses
  %.not36 = icmp eq ptr %i.cu, %4
  br i1 %.not36, label %.preheader, label %.lr.ph, !llvm.loop !384

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %.117.idx44 = phi i64 [ %.117.add, %.lr.ph45 ], [ %.117.idx44.ph, %.lr.ph45.preheader ] ; 2 uses
  %.117.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.117.idx44
  %.117.add = add nuw nsw i64 %.117.idx44, 4      ; 2 uses
  store float -4.092030e+05, ptr %.117.ptr, align 4, !tbaa !44
  %.not20 = icmp eq i64 %.117.add, 72
  br i1 %.not20, label %._crit_edge, label %.lr.ph45, !llvm.loop !385

._crit_edge:                                      ; preds = %.lr.ph45, %middle.block79, %vec.epilog.middle.block91, %.preheader
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.l ], [ %eh.lpad-body26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %eh.lpad-body26, %.body25 ] ; 2 uses
  %i.cv = load ptr, ptr %0, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i29, label %.body, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !32
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #31
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn, %bb.n ], [ %i.m, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2aiEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 166) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 4
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2ajEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 172) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2akEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 8
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2akEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 178) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2alEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 12
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2alEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 184) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2amEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 16
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2amEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 190) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c0Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(105) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c1Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(105) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c2Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(105) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17InteractionOfType19interactionTypeNameB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(105) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN17InteractionOfType15sortBondAtomIdsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 4
  br i1 %i.g, label %_ZNK17InteractionOfType2ajEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2ajEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 172) #29
  unreachable

_ZNK17InteractionOfType2ajEv.exit:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %1 = load i32, ptr %i.h, align 4, !tbaa !34     ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %2 = icmp slt i32 %1, %i.i
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK17InteractionOfType2ajEv.exit
  store i32 %1, ptr %i.c, align 4, !tbaa !34
  store i32 %i.i, ptr %i.h, align 4, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK17InteractionOfType2ajEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN17InteractionOfType16sortAngleAtomIdsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 8
  br i1 %i.g, label %_ZNK17InteractionOfType2akEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2akEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 178) #29
  unreachable

_ZNK17InteractionOfType2akEv.exit:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %1 = load i32, ptr %i.h, align 4, !tbaa !34     ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %2 = icmp slt i32 %1, %i.i
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK17InteractionOfType2akEv.exit
  store i32 %1, ptr %i.c, align 4, !tbaa !34
  store i32 %i.i, ptr %i.h, align 4, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK17InteractionOfType2akEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN17InteractionOfType19sortDihedralAtomIdsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 12
  br i1 %i.j, label %_ZNK17InteractionOfType2alEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK17InteractionOfType2alEvENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 184) #29
  unreachable

_ZNK17InteractionOfType2alEv.exit:                ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %1 = load i32, ptr %i.k, align 4, !tbaa !34     ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !34   ; 2 uses
  %2 = icmp slt i32 %1, %i.l
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK17InteractionOfType2alEv.exit
  store i32 %1, ptr %i.f, align 4, !tbaa !34
  store i32 %i.l, ptr %i.k, align 4, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !34
  %i.o = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.o, ptr %i.m, align 4, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK17InteractionOfType2alEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN17InteractionOfType11sortAtomIdsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  switch i64 %i.f, label %bb.f [
    i64 8, label %_ZNK17InteractionOfType2aiEv.exit.i
    i64 12, label %_ZNK17InteractionOfType2aiEv.exit.i9
    i64 16, label %bb.d
  ]

_ZNK17InteractionOfType2aiEv.exit.i:              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit

bb.b:                                             ; preds = %_ZNK17InteractionOfType2aiEv.exit.i
  store i32 %i.h, ptr %i.c, align 4, !tbaa !34
  store i32 %i.i, ptr %i.g, align 4, !tbaa !34
  br label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit

_ZNK17InteractionOfType2aiEv.exit.i9:             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34   ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit

bb.c:                                             ; preds = %_ZNK17InteractionOfType2aiEv.exit.i9
  store i32 %i.l, ptr %i.c, align 4, !tbaa !34
  store i32 %i.m, ptr %i.k, align 4, !tbaa !34
  br label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !42, !range !50, !noundef !51
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit, label %_ZNK17InteractionOfType2aiEv.exit.i10

_ZNK17InteractionOfType2aiEv.exit.i10:            ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit

bb.e:                                             ; preds = %_ZNK17InteractionOfType2aiEv.exit.i10
  store i32 %i.s, ptr %i.c, align 4, !tbaa !34
  store i32 %i.t, ptr %i.r, align 4, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.v, align 4, !tbaa !34
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !34
  br label %_ZN17InteractionOfType15sortBondAtomIdsEv.exit

bb.f:                                             ; preds = %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.22)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.h unwind label %.thread15

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %1, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %3, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN17InteractionOfType11sortAtomIdsEv, ptr %i.z, align 8, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.11, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !54
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 260, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !34
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.y, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr %i.y, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.m unwind label %bb.j

.thread:                                          ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread15:                                        ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  br label %.sink.split

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #30
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.k, label %bb.l

.sink.split:                                      ; preds = %.thread, %.thread15
  %.pn.pn14.ph = phi { ptr, i32 } [ %i.ab, %.thread15 ], [ %i.aa, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.pn.pn14 = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn.pn14.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.y) #30
  br label %bb.l

_ZN17InteractionOfType15sortBondAtomIdsEv.exit:   ; preds = %bb.e, %_ZNK17InteractionOfType2aiEv.exit.i10, %bb.d, %bb.c, %_ZNK17InteractionOfType2aiEv.exit.i9, %bb.b, %_ZNK17InteractionOfType2aiEv.exit.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn.pn13 = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn.pn14, %bb.k ]
  resume { ptr, i32 } %.pn.pn13

bb.m:                                             ; preds = %bb.i
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InternalError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !55
  store ptr %i.a, ptr %3, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !60
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.d = load ptr, ptr %3, align 8, !tbaa !57     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #30, !inline_history !0
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.i = load ptr, ptr %3, align 8, !tbaa !57     ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #30, !inline_history !0
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !61
  store ptr null, ptr %i.o, align 8, !tbaa !64
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !61
  store ptr null, ptr %i.n, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %0, align 8, !tbaa !53
  ret void
}
end_hunk_0
begin_hunk_1_@_Z10gmx_gromppiPPc:bb.a
  %i.dtd = add i64 %i.dtc, 1
  call void @_ZdlPvm(ptr noundef %i.dsz, i64 noundef %i.dtd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i840: ; preds = %bb.xl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i839
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %.body633

bb.xm:                                            ; preds = %.noexc848
  invoke void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %93, i64 %i.dsx, ptr %i.dsv)
          to label %bb.xn unwind label %bb.xl

bb.xn:                                            ; preds = %bb.xm, %bb.xk
  %i.dte = load ptr, ptr %33, align 8, !tbaa !27  ; 2 uses
  %i.dtf = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.dtg = icmp eq ptr %i.dte, %i.dtf
  br i1 %i.dtg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.i: ; preds = %bb.xn
  %i.dth = load i64, ptr %i.dtf, align 8, !tbaa !28
  %i.dti = add i64 %i.dth, 1
  call void @_ZdlPvm(ptr noundef %i.dte, i64 noundef %i.dti) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i: ; preds = %bb.xn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split

_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split: ; preds = %bb.wj, %bb.wk, %._crit_edge208.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i
  %.pr = load i32, ptr %i.lw, align 4, !tbaa !561
  br label %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit

_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit: ; preds = %bb.wj, %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split
  %i.dtj = phi i32 [ %.pr, %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split ], [ %i.dmw, %bb.wj ]
  switch i32 %i.dtj, label %_ZL26checkDecoupledModeAccuracyPK10gmx_mtop_tPK10t_inputrecP14WarningHandler.exit [
    i32 0, label %bb.xo
    i32 10, label %bb.xo
    i32 11, label %bb.xo
    i32 12, label %bb.xo
  ]

bb.xo:                                            ; preds = %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit, %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit, %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit, %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit
  %i.dtk = load double, ptr %i.akd, align 8, !tbaa !605
  %i.dtl = fmul double %i.dtk, 5.000000e-03
  %i.dtm = fptrunc double %i.dtl to float         ; 2 uses
  %i.dtn = load i32, ptr %i.bqz, align 4, !tbaa !609
  switch i32 %i.dtn, label %.thread.i851 [
    i32 0, label %bb.xp
    i32 1, label %bb.xr
  ]

bb.xp:                                            ; preds = %bb.xo
  %i.dto = getelementptr inbounds nuw i8, ptr %88, i64 536
  %i.dtp = load i32, ptr %i.dto, align 8, !tbaa !610
  %i.dtq = icmp sgt i32 %i.dtp, 1
  br i1 %i.dtq, label %bb.xq, label %.thread.i851

bb.xq:                                            ; preds = %bb.xp
  %i.dtr = getelementptr inbounds nuw i8, ptr %88, i64 528
  %i.dts = load i32, ptr %i.dtr, align 8, !tbaa !611
  %i.dtt = icmp sgt i32 %i.dts, 3
  br label %.thread.i851

bb.xr:                                            ; preds = %bb.xo
  %i.dtu = getelementptr inbounds nuw i8, ptr %88, i64 416
  %i.dtv = load float, ptr %i.dtu, align 8, !tbaa !612
  %i.dtw = fpext float %i.dtv to double
  %i.dtx = fpext float %i.dtm to double
  %i.dty = fmul double %i.dtx, 1.100000e+00
  %i.dtz = fcmp oge double %i.dty, %i.dtw
  br label %.thread.i851

.thread.i851:                                     ; preds = %bb.xr, %bb.xq, %bb.xp, %bb.xo
  %or.cond.i852 = phi i1 [ false, %bb.xo ], [ %i.dtz, %bb.xr ], [ %i.dtt, %bb.xq ], [ false, %bb.xp ]
  %i.dua = getelementptr inbounds nuw i8, ptr %88, i64 36 ; 2 uses
  %i.dub = load i32, ptr %i.dua, align 4, !tbaa !613
  %i.duc = icmp eq i32 %i.dub, 0
  br i1 %i.duc, label %bb.xs, label %bb.xt

bb.xs:                                            ; preds = %.thread.i851
  %i.dud = getelementptr inbounds nuw i8, ptr %88, i64 348
  %i.due = load float, ptr %i.dud, align 4, !tbaa !614
  %i.duf = fpext float %i.due to double
  %i.dug = fcmp ole double %i.duf, f0x3F1CD5F990000001
  %or.cond37.i = select i1 %i.dug, i1 %or.cond.i852, i1 false
  br i1 %or.cond37.i, label %_ZL26checkDecoupledModeAccuracyPK10gmx_mtop_tPK10t_inputrecP14WarningHandler.exit, label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %.thread.i851
  %i.duh = load ptr, ptr %i.aiw, align 8, !tbaa !600 ; 2 uses
  %i.dui = load ptr, ptr %i.aja, align 8, !tbaa !600 ; 2 uses
  %.not64.i = icmp eq ptr %i.duh, %i.dui
  br i1 %.not64.i, label %_ZL26checkDecoupledModeAccuracyPK10gmx_mtop_tPK10t_inputrecP14WarningHandler.exit, label %.lr.ph.i853

.lr.ph.i853:                                      ; preds = %bb.xt
  %i.duj = getelementptr inbounds nuw i8, ptr %102, i64 40
  %i.duk = getelementptr inbounds nuw i8, ptr %102, i64 48
  %i.dul = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.dum = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.dun = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %bb.xu

._crit_edge.i860:                                 ; preds = %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i
  br i1 %i.eae, label %bb.yg, label %_ZL26checkDecoupledModeAccuracyPK10gmx_mtop_tPK10t_inputrecP14WarningHandler.exit

bb.xu:                                            ; preds = %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i, %.lr.ph.i853
  %.02966.i = phi i1 [ false, %.lr.ph.i853 ], [ %i.eae, %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i ] ; 2 uses
  %.sroa.059.065.i = phi ptr [ %i.duh, %.lr.ph.i853 ], [ %i.eaf, %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i ] ; 8 uses
  %i.duo = load ptr, ptr %i.duj, align 8, !tbaa !606 ; 3 uses
  %i.dup = load ptr, ptr %i.duk, align 8, !tbaa !615
  %i.duq = ptrtoint ptr %i.dup to i64
  %i.dur = ptrtoint ptr %i.duo to i64
  %i.dus = sub i64 %i.duq, %i.dur
  %i.dut = getelementptr inbounds nuw i8, ptr %i.duo, i64 %i.dus
  %i.duu = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 80
  %i.duv = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 1568
  %i.duw = load ptr, ptr %i.duv, align 8, !tbaa !49
  %i.dux = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 1576
  %i.duy = load ptr, ptr %i.dux, align 8, !tbaa !49
  %i.duz = icmp eq ptr %i.duw, %i.duy
  br i1 %i.duz, label %bb.xv, label %bb.xw

bb.xv:                                            ; preds = %bb.xu
  %i.dva = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 1592
  %i.dvb = load ptr, ptr %i.dva, align 8, !tbaa !49
  %i.dvc = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 1600
  %i.dvd = load ptr, ptr %i.dvc, align 8, !tbaa !49
  %i.dve = icmp eq ptr %i.dvb, %i.dvd
  br i1 %i.dve, label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i, label %bb.xw

bb.xw:                                            ; preds = %bb.xv, %bb.xu
  %i.dvf = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 16
  %i.dvg = load ptr, ptr %i.dvf, align 8, !tbaa !607 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  invoke void @_ZN3gmx11make_at2conERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEENS_27FlexibleConstraintTreatmentE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ListOfLists") align 8 %29, ptr noundef nonnull align 8 dereferenceable(2408) %.sroa.059.065.i, ptr %i.duo, ptr %i.dut, i32 noundef 1)
          to label %.noexc872 unwind label %.loopexit.split-lp1349.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc872:                                        ; preds = %bb.xw
  %i.dvh = load ptr, ptr %i.dul, align 8          ; 7 uses
  %i.dvi = load ptr, ptr %29, align 8             ; 4 uses
  br label %bb.ya

bb.xx:                                            ; preds = %.loopexit.i.i855
  %.not.i.i.i.i.i.i856 = icmp eq ptr %i.dvh, null
  br i1 %.not.i.i.i.i.i.i856, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.dvj = load ptr, ptr %i.dum, align 8, !tbaa !32
  %i.dvk = ptrtoint ptr %i.dvj to i64
  %i.dvl = ptrtoint ptr %i.dvh to i64
  %i.dvm = sub i64 %i.dvk, %i.dvl
  call void @_ZdlPvm(ptr noundef nonnull %i.dvh, i64 noundef %i.dvm) #31
  %.pre.i.i857 = load ptr, ptr %29, align 8, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.xy, %bb.xx
  %i.dvn = phi ptr [ %.pre.i.i857, %bb.xy ], [ %i.dvi, %bb.xx ] ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.dvn, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i, label %bb.xz

bb.xz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.dvo = load ptr, ptr %i.dun, align 8, !tbaa !32
  %i.dvp = ptrtoint ptr %i.dvo to i64
  %i.dvq = ptrtoint ptr %i.dvn to i64
  %i.dvr = sub i64 %i.dvp, %i.dvq
  call void @_ZdlPvm(ptr noundef nonnull %i.dvn, i64 noundef %i.dvr) #31
  br label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i

bb.ya:                                            ; preds = %.loopexit.i.i855, %.noexc872
  %indvars.iv125.i.i = phi i64 [ 0, %.noexc872 ], [ %indvars.iv.next126.i.i, %.loopexit.i.i855 ] ; 3 uses
  %.064124.i.i = phi i1 [ false, %.noexc872 ], [ %.468.i.i, %.loopexit.i.i855 ] ; 3 uses
  %i.dvs = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv125.i.i ; 2 uses
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvs, i64 28
  %i.dvu = load i32, ptr %i.dvt, align 4, !tbaa !585
  %i.dvv = and i32 %i.dvu, 32
  %.not.i.i854 = icmp eq i32 %i.dvv, 0
  br i1 %.not.i.i854, label %.loopexit.i.i855, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.dvw = getelementptr inbounds nuw [24 x i8], ptr %i.duu, i64 %indvars.iv125.i.i ; 2 uses
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvw, i64 8
  %i.dvy = load ptr, ptr %i.dvx, align 8, !tbaa !35
  %i.dvz = load ptr, ptr %i.dvw, align 8, !tbaa !33 ; 2 uses
  %i.dwa = ptrtoint ptr %i.dvy to i64
  %i.dwb = ptrtoint ptr %i.dvz to i64
  %i.dwc = sub i64 %i.dwa, %i.dwb
  %i.dwd = lshr exact i64 %i.dwc, 2               ; 2 uses
  %i.dwe = trunc i64 %i.dwd to i32
  %i.dwf = icmp sgt i32 %i.dwe, 0
  br i1 %i.dwf, label %.lr.ph121.i.i, label %.loopexit.i.i855

.lr.ph121.i.i:                                    ; preds = %bb.yb
  %i.dwg = getelementptr inbounds nuw i8, ptr %i.dvs, i64 16
  %i.dwh = load i32, ptr %i.dwg, align 8, !tbaa !602
  %i.dwi = add i32 %i.dwh, 1
  %i.dwj = sext i32 %i.dwi to i64
  %i.dwk = and i64 %i.dwd, 2147483647
  br label %bb.yc

bb.yc:                                            ; preds = %.critedge.i.i, %.lr.ph121.i.i
  %indvars.iv.i.i866 = phi i64 [ 0, %.lr.ph121.i.i ], [ %indvars.iv.next.i.i867, %.critedge.i.i ] ; 2 uses
  %.165118.i.i = phi i1 [ %.064124.i.i, %.lr.ph121.i.i ], [ %i.eac, %.critedge.i.i ] ; 5 uses
  %i.dwl = getelementptr [4 x i8], ptr %i.dvz, i64 %indvars.iv.i.i866 ; 3 uses
  %i.dwm = getelementptr i8, ptr %i.dwl, i64 4
  %i.dwn = load i32, ptr %i.dwm, align 4, !tbaa !34
  %i.dwo = getelementptr i8, ptr %i.dwl, i64 8
  %i.dwp = load i32, ptr %i.dwo, align 4, !tbaa !34
  %i.dwq = getelementptr i8, ptr %i.dwl, i64 12
  %i.dwr = load i32, ptr %i.dwq, align 4, !tbaa !34
  %i.dws = sext i32 %i.dwn to i64                 ; 2 uses
  %i.dwt = getelementptr inbounds [36 x i8], ptr %i.dvg, i64 %i.dws
  %i.dwu = load float, ptr %i.dwt, align 4, !tbaa !348 ; 2 uses
  %i.dwv = sext i32 %i.dwr to i64                 ; 2 uses
  %i.dww = getelementptr inbounds [36 x i8], ptr %i.dvg, i64 %i.dwv
  %i.dwx = load float, ptr %i.dww, align 4, !tbaa !348 ; 2 uses
  %i.dwy = fmul float %i.dwx, 1.300000e+01
  %i.dwz = fcmp ogt float %i.dwu, %i.dwy
  %i.dxa = fmul float %i.dwu, 1.300000e+01
  %i.dxb = fcmp ogt float %i.dwx, %i.dxa
  %or.cond107.i.i = or i1 %i.dxb, %i.dwz
  br i1 %or.cond107.i.i, label %bb.yd, label %.critedge.i.i

bb.yd:                                            ; preds = %bb.yc
  %i.dxc = getelementptr [4 x i8], ptr %i.dvi, i64 %i.dws ; 2 uses
  %i.dxd = load i32, ptr %i.dxc, align 4, !tbaa !34
  %i.dxe = sext i32 %i.dxd to i64                 ; 2 uses
  %.idx109.i.i = shl nsw i64 %i.dxe, 2
  %i.dxf = getelementptr inbounds i8, ptr %i.dvh, i64 %.idx109.i.i
  %i.dxg = getelementptr i8, ptr %i.dxc, i64 4
  %i.dxh = load i32, ptr %i.dxg, align 4, !tbaa !34
  %i.dxi = sext i32 %i.dxh to i64
  %i.dxj = sub nsw i64 %i.dxi, %i.dxe
  %i.dxk = icmp eq i64 %i.dxj, 1
  br i1 %i.dxk, label %bb.ye, label %.critedge.i.i

bb.ye:                                            ; preds = %bb.yd
  %i.dxl = getelementptr [4 x i8], ptr %i.dvi, i64 %i.dwv ; 2 uses
  %i.dxm = load i32, ptr %i.dxl, align 4, !tbaa !34
  %i.dxn = sext i32 %i.dxm to i64                 ; 2 uses
  %.idx110.i.i = shl nsw i64 %i.dxn, 2
  %i.dxo = getelementptr inbounds i8, ptr %i.dvh, i64 %.idx110.i.i
  %i.dxp = getelementptr i8, ptr %i.dxl, i64 4
  %i.dxq = load i32, ptr %i.dxp, align 4, !tbaa !34
  %i.dxr = sext i32 %i.dxq to i64
  %i.dxs = sub nsw i64 %i.dxr, %i.dxn
  %i.dxt = icmp eq i64 %i.dxs, 1
  br i1 %i.dxt, label %bb.yf, label %.critedge.i.i

bb.yf:                                            ; preds = %bb.ye
  %i.dxu = sext i32 %i.dwp to i64
  %i.dxv = getelementptr [4 x i8], ptr %i.dvi, i64 %i.dxu ; 2 uses
  %i.dxw = load i32, ptr %i.dxv, align 4, !tbaa !34
  %i.dxx = sext i32 %i.dxw to i64
  %.idx111.i.i = shl nsw i64 %i.dxx, 2            ; 3 uses
  %i.dxy = getelementptr i8, ptr %i.dxv, i64 4
  %i.dxz = load i32, ptr %i.dxy, align 4, !tbaa !34
  %i.dya = sext i32 %i.dxz to i64
  %.idx.i.i = shl nsw i64 %i.dya, 2               ; 3 uses
  %i.dyb = getelementptr inbounds i8, ptr %i.dvh, i64 %.idx.i.i
  %gepdiff.i.i = sub nsw i64 %.idx.i.i, %.idx111.i.i
  %i.dyc = icmp sgt i64 %gepdiff.i.i, 8
  br i1 %i.dyc, label %iter.check2990, label %.critedge.i.i

iter.check2990:                                   ; preds = %bb.yf
  %144 = load i32, ptr %i.dxf, align 4, !tbaa !34 ; 3 uses
  %145 = load i32, ptr %i.dxo, align 4, !tbaa !34 ; 3 uses
  %i.dyd = getelementptr inbounds i8, ptr %i.dvh, i64 %.idx111.i.i ; 5 uses
  %i.dye = add nsw i64 %.idx.i.i, -4
  %i.dyf = sub nsw i64 %i.dye, %.idx111.i.i       ; 3 uses
  %i.dyg = lshr exact i64 %i.dyf, 2
  %i.dyh = add nuw nsw i64 %i.dyg, 1              ; 5 uses
  %min.iters.check2954 = icmp ult i64 %i.dyf, 12
  br i1 %min.iters.check2954, label %.lr.ph.i.i869.preheader, label %vector.main.loop.iter.check2955

vector.main.loop.iter.check2955:                  ; preds = %iter.check2990
  %min.iters.check2956 = icmp ult i64 %i.dyf, 124
  br i1 %min.iters.check2956, label %vec.epilog.ph2994, label %vector.ph2957

vector.ph2957:                                    ; preds = %vector.main.loop.iter.check2955
  %i.dyi = and i64 %i.dyh, 28
  %n.vec2958 = and i64 %i.dyh, 9223372036854775776 ; 4 uses
  %i.dyj = shl i64 %n.vec2958, 2
  %i.dyk = getelementptr i8, ptr %i.dyd, i64 %i.dyj
  %broadcast.splatinsert2959 = insertelement <8 x i32> poison, i32 %144, i64 0
  %broadcast.splat2960 = shufflevector <8 x i32> %broadcast.splatinsert2959, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2961 = insertelement <8 x i32> poison, i32 %145, i64 0
  %broadcast.splat2962 = shufflevector <8 x i32> %broadcast.splatinsert2961, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2963

vector.body2963:                                  ; preds = %vector.body2963, %vector.ph2957
  %index2964 = phi i64 [ 0, %vector.ph2957 ], [ %index.next2977, %vector.body2963 ] ; 2 uses
  %vec.phi2965 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dzb, %vector.body2963 ]
  %vec.phi2966 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dzc, %vector.body2963 ]
  %vec.phi2967 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dzd, %vector.body2963 ]
  %vec.phi2968 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dze, %vector.body2963 ]
  %vec.phi2969 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dyt, %vector.body2963 ]
  %vec.phi2970 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dyu, %vector.body2963 ]
  %vec.phi2971 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dyv, %vector.body2963 ]
  %vec.phi2972 = phi <8 x i1> [ zeroinitializer, %vector.ph2957 ], [ %i.dyw, %vector.body2963 ]
  %i.dyl = shl i64 %index2964, 2
  %next.gep2973 = getelementptr i8, ptr %i.dyd, i64 %i.dyl ; 4 uses
  %i.dym = getelementptr i8, ptr %next.gep2973, i64 32
  %i.dyn = getelementptr i8, ptr %next.gep2973, i64 64
  %i.dyo = getelementptr i8, ptr %next.gep2973, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep2973, align 4, !tbaa !34 ; 2 uses
  %wide.load2974 = load <8 x i32>, ptr %i.dym, align 4, !tbaa !34 ; 2 uses
  %wide.load2975 = load <8 x i32>, ptr %i.dyn, align 4, !tbaa !34 ; 2 uses
  %wide.load2976 = load <8 x i32>, ptr %i.dyo, align 4, !tbaa !34 ; 2 uses
  %i.dyp = icmp eq <8 x i32> %wide.load, %broadcast.splat2960
  %i.dyq = icmp eq <8 x i32> %wide.load2974, %broadcast.splat2960
  %i.dyr = icmp eq <8 x i32> %wide.load2975, %broadcast.splat2960
  %i.dys = icmp eq <8 x i32> %wide.load2976, %broadcast.splat2960
  %i.dyt = or <8 x i1> %vec.phi2969, %i.dyp       ; 2 uses
  %i.dyu = or <8 x i1> %vec.phi2970, %i.dyq       ; 2 uses
  %i.dyv = or <8 x i1> %vec.phi2971, %i.dyr       ; 2 uses
  %i.dyw = or <8 x i1> %vec.phi2972, %i.dys       ; 2 uses
  %i.dyx = icmp eq <8 x i32> %wide.load, %broadcast.splat2962
  %i.dyy = icmp eq <8 x i32> %wide.load2974, %broadcast.splat2962
  %i.dyz = icmp eq <8 x i32> %wide.load2975, %broadcast.splat2962
  %i.dza = icmp eq <8 x i32> %wide.load2976, %broadcast.splat2962
  %i.dzb = or <8 x i1> %vec.phi2965, %i.dyx       ; 2 uses
  %i.dzc = or <8 x i1> %vec.phi2966, %i.dyy       ; 2 uses
  %i.dzd = or <8 x i1> %vec.phi2967, %i.dyz       ; 2 uses
  %i.dze = or <8 x i1> %vec.phi2968, %i.dza       ; 2 uses
  %index.next2977 = add nuw i64 %index2964, 32    ; 2 uses
  %i.dzf = icmp eq i64 %index.next2977, %n.vec2958
  br i1 %i.dzf, label %middle.block2978, label %vector.body2963, !llvm.loop !469

middle.block2978:                                 ; preds = %vector.body2963
  %bin.rdx2979 = or <8 x i1> %i.dzc, %i.dzb
  %bin.rdx2980 = or <8 x i1> %i.dzd, %bin.rdx2979
  %bin.rdx2981 = or <8 x i1> %i.dze, %bin.rdx2980
  %bin.rdx2981.fr = freeze <8 x i1> %bin.rdx2981
  %i.dzg = bitcast <8 x i1> %bin.rdx2981.fr to i8
  %i.dzh = icmp ne i8 %i.dzg, 0                   ; 3 uses
  %bin.rdx2982 = or <8 x i1> %i.dyu, %i.dyt
  %bin.rdx2983 = or <8 x i1> %i.dyv, %bin.rdx2982
  %bin.rdx2984 = or <8 x i1> %i.dyw, %bin.rdx2983
  %bin.rdx2984.fr = freeze <8 x i1> %bin.rdx2984
  %i.dzi = bitcast <8 x i1> %bin.rdx2984.fr to i8
  %i.dzj = icmp ne i8 %i.dzi, 0                   ; 3 uses
  %cmp.n2985 = icmp eq i64 %i.dyh, %n.vec2958
  br i1 %cmp.n2985, label %._crit_edge.loopexit.i.i871, label %vec.epilog.iter.check2992

vec.epilog.iter.check2992:                        ; preds = %middle.block2978
  %min.epilog.iters.check2993 = icmp eq i64 %i.dyi, 0
  br i1 %min.epilog.iters.check2993, label %.lr.ph.i.i869.preheader, label %vec.epilog.ph2994, !prof !356

vec.epilog.ph2994:                                ; preds = %vector.main.loop.iter.check2955, %vec.epilog.iter.check2992
  %vec.epilog.resume.val2986 = phi i64 [ %n.vec2958, %vec.epilog.iter.check2992 ], [ 0, %vector.main.loop.iter.check2955 ]
  %bc.merge.rdx2987 = phi i1 [ %i.dzh, %vec.epilog.iter.check2992 ], [ false, %vector.main.loop.iter.check2955 ]
  %bc.merge.rdx2988 = phi i1 [ %i.dzj, %vec.epilog.iter.check2992 ], [ false, %vector.main.loop.iter.check2955 ]
  %n.vec2995 = and i64 %i.dyh, 9223372036854775804 ; 3 uses
  %i.dzk = shl i64 %n.vec2995, 2
  %i.dzl = getelementptr i8, ptr %i.dyd, i64 %i.dzk
  %broadcast.splatinsert2996 = insertelement <4 x i32> poison, i32 %144, i64 0
  %broadcast.splat2997 = shufflevector <4 x i32> %broadcast.splatinsert2996, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2998 = insertelement <4 x i32> poison, i32 %145, i64 0
  %broadcast.splat2999 = shufflevector <4 x i32> %broadcast.splatinsert2998, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3000 = insertelement <4 x i1> poison, i1 %bc.merge.rdx2987, i64 0
  %broadcast.splat3001 = shufflevector <4 x i1> %broadcast.splatinsert3000, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3002 = insertelement <4 x i1> poison, i1 %bc.merge.rdx2988, i64 0
  %broadcast.splat3003 = shufflevector <4 x i1> %broadcast.splatinsert3002, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3004

vec.epilog.vector.body3004:                       ; preds = %vec.epilog.vector.body3004, %vec.epilog.ph2994
  %index3005 = phi i64 [ %vec.epilog.resume.val2986, %vec.epilog.ph2994 ], [ %index.next3010, %vec.epilog.vector.body3004 ] ; 2 uses
  %vec.phi3006 = phi <4 x i1> [ %broadcast.splat3001, %vec.epilog.ph2994 ], [ %i.dzq, %vec.epilog.vector.body3004 ]
  %vec.phi3007 = phi <4 x i1> [ %broadcast.splat3003, %vec.epilog.ph2994 ], [ %i.dzo, %vec.epilog.vector.body3004 ]
  %i.dzm = shl i64 %index3005, 2
  %next.gep3008 = getelementptr i8, ptr %i.dyd, i64 %i.dzm
  %wide.load3009 = load <4 x i32>, ptr %next.gep3008, align 4, !tbaa !34 ; 2 uses
  %i.dzn = icmp eq <4 x i32> %wide.load3009, %broadcast.splat2997
  %.fr3115 = freeze <4 x i1> %i.dzn
  %i.dzo = or <4 x i1> %vec.phi3007, %.fr3115     ; 2 uses
  %i.dzp = icmp eq <4 x i32> %wide.load3009, %broadcast.splat2999
  %.fr = freeze <4 x i1> %i.dzp
  %i.dzq = or <4 x i1> %vec.phi3006, %.fr         ; 2 uses
  %index.next3010 = add nuw i64 %index3005, 4     ; 2 uses
  %i.dzr = icmp eq i64 %index.next3010, %n.vec2995
  br i1 %i.dzr, label %vec.epilog.middle.block3011, label %vec.epilog.vector.body3004, !llvm.loop !470

vec.epilog.middle.block3011:                      ; preds = %vec.epilog.vector.body3004
  %i.dzs = bitcast <4 x i1> %i.dzq to i4
  %i.dzt = icmp ne i4 %i.dzs, 0                   ; 2 uses
  %i.dzu = bitcast <4 x i1> %i.dzo to i4
  %i.dzv = icmp ne i4 %i.dzu, 0                   ; 2 uses
  %cmp.n3012 = icmp eq i64 %i.dyh, %n.vec2995
  br i1 %cmp.n3012, label %._crit_edge.loopexit.i.i871, label %.lr.ph.i.i869.preheader

.lr.ph.i.i869.preheader:                          ; preds = %iter.check2990, %vec.epilog.iter.check2992, %vec.epilog.middle.block3011
  %.053116.i.i.ph = phi i1 [ false, %iter.check2990 ], [ %i.dzh, %vec.epilog.iter.check2992 ], [ %i.dzt, %vec.epilog.middle.block3011 ]
  %.054115.i.i.ph = phi i1 [ false, %iter.check2990 ], [ %i.dzj, %vec.epilog.iter.check2992 ], [ %i.dzv, %vec.epilog.middle.block3011 ]
  %.sroa.0.0114.i.i.ph = phi ptr [ %i.dyd, %iter.check2990 ], [ %i.dyk, %vec.epilog.iter.check2992 ], [ %i.dzl, %vec.epilog.middle.block3011 ]
  br label %.lr.ph.i.i869

._crit_edge.loopexit.i.i871:                      ; preds = %.lr.ph.i.i869, %vec.epilog.middle.block3011, %middle.block2978
  %spec.select75.i.i.lcssa = phi i1 [ %i.dzv, %vec.epilog.middle.block3011 ], [ %i.dzj, %middle.block2978 ], [ %spec.select75.i.i, %.lr.ph.i.i869 ]
  %.1.i.i870.lcssa = phi i1 [ %i.dzt, %vec.epilog.middle.block3011 ], [ %i.dzh, %middle.block2978 ], [ %.1.i.i870, %.lr.ph.i.i869 ]
  %i.dzw = select i1 %spec.select75.i.i.lcssa, i1 %.1.i.i870.lcssa, i1 false
  %i.dzx = select i1 %i.dzw, i1 true, i1 %.165118.i.i
  br label %.critedge.i.i

.lr.ph.i.i869:                                    ; preds = %.lr.ph.i.i869.preheader, %.lr.ph.i.i869
  %.053116.i.i = phi i1 [ %.1.i.i870, %.lr.ph.i.i869 ], [ %.053116.i.i.ph, %.lr.ph.i.i869.preheader ]
  %.054115.i.i = phi i1 [ %spec.select75.i.i, %.lr.ph.i.i869 ], [ %.054115.i.i.ph, %.lr.ph.i.i869.preheader ]
  %.sroa.0.0114.i.i = phi ptr [ %i.eab, %.lr.ph.i.i869 ], [ %.sroa.0.0114.i.i.ph, %.lr.ph.i.i869.preheader ] ; 2 uses
  %i.dzy = load i32, ptr %.sroa.0.0114.i.i, align 4, !tbaa !34 ; 2 uses
  %i.dzz = icmp eq i32 %i.dzy, %144
  %spec.select75.i.i = select i1 %i.dzz, i1 true, i1 %.054115.i.i ; 2 uses
  %i.eaa = icmp eq i32 %i.dzy, %145
  %.1.i.i870 = select i1 %i.eaa, i1 true, i1 %.053116.i.i ; 2 uses
  %i.eab = getelementptr inbounds nuw i8, ptr %.sroa.0.0114.i.i, i64 4 ; 2 uses
  %.not112.i.i = icmp eq ptr %i.eab, %i.dyb
  br i1 %.not112.i.i, label %._crit_edge.loopexit.i.i871, label %.lr.ph.i.i869, !llvm.loop !471

.critedge.i.i:                                    ; preds = %._crit_edge.loopexit.i.i871, %bb.yf, %bb.ye, %bb.yd, %bb.yc
  %.367.i.i = phi i1 [ %i.dzx, %._crit_edge.loopexit.i.i871 ], [ %.165118.i.i, %bb.yf ], [ %.165118.i.i, %bb.yc ], [ %.165118.i.i, %bb.yd ], [ %.165118.i.i, %bb.ye ]
  %i.eac = freeze i1 %.367.i.i                    ; 2 uses
  %indvars.iv.next.i.i867 = add nsw i64 %indvars.iv.i.i866, %i.dwj ; 2 uses
  %i.ead = icmp slt i64 %indvars.iv.next.i.i867, %i.dwk
  br i1 %i.ead, label %bb.yc, label %.loopexit.i.i855, !llvm.loop !472

.loopexit.i.i855:                                 ; preds = %.critedge.i.i, %bb.yb, %bb.ya
  %.468.i.i = phi i1 [ %.064124.i.i, %bb.ya ], [ %.064124.i.i, %bb.yb ], [ %i.eac, %.critedge.i.i ] ; 2 uses
  %indvars.iv.next126.i.i = add nuw nsw i64 %indvars.iv125.i.i, 1 ; 2 uses
  %.not108.i.i = icmp eq i64 %indvars.iv.next126.i.i, 95
  br i1 %.not108.i.i, label %bb.xx, label %bb.ya

_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i: ; preds = %bb.xz, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %spec.select.i858 = select i1 %.468.i.i, i1 true, i1 %.02966.i
  br label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i

_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i: ; preds = %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i, %bb.xv
  %i.eae = phi i1 [ %.02966.i, %bb.xv ], [ %spec.select.i858, %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i ] ; 2 uses
  %i.eaf = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 2408 ; 2 uses
  %.not.i859 = icmp eq ptr %i.eaf, %i.dui
  br i1 %.not.i859, label %._crit_edge.i860, label %bb.xu

bb.yg:                                            ; preds = %._crit_edge.i860
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull @.str.228, double noundef 1.300000e+01)
          to label %.noexc873 unwind label %.loopexit.split-lp1349.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc873:                                        ; preds = %bb.yg
  %i.eag = load i32, ptr %i.dua, align 4, !tbaa !613
  %i.eah = icmp eq i32 %i.eag, 0
  br i1 %i.eah, label %bb.yh, label %bb.yn

bb.yh:                                            ; preds = %.noexc873
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  %i.eai = invoke noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef 9)
          to label %bb.yi unwind label %bb.yl

bb.yi:                                            ; preds = %bb.yh
  %i.eaj = fpext float %i.dtm to double
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull @.str.229, ptr noundef %i.eai, double noundef f0x3F1A36E2E0000000, i32 noundef 2, i32 noundef 4, double noundef %i.eaj)
          to label %bb.yj unwind label %bb.yl

bb.yj:                                            ; preds = %bb.yi
  %i.eak = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.eal = load i64, ptr %i.eak, align 8, !tbaa !29 ; 2 uses
  %i.eam = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ean = load i64, ptr %i.eam, align 8, !tbaa !29
  %i.eao = sub i64 4611686018427387903, %i.ean
  %i.eap = icmp ult i64 %i.eao, %i.eal
  br i1 %i.eap, label %bb.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.yk:                                            ; preds = %bb.yj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.209) #29
          to label %.noexc.i865 unwind label %bb.ym

.noexc.i865:                                      ; preds = %bb.yk
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.yj
  %i.eaq = load ptr, ptr %31, align 8, !tbaa !27
  %i.ear = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.eaq, i64 noundef %i.eal)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %bb.ym ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.eas = load ptr, ptr %31, align 8, !tbaa !27  ; 2 uses
  %i.eat = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.eau = icmp eq ptr %i.eas, %i.eat
  br i1 %i.eau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i862

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i862: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.eav = load i64, ptr %i.eat, align 8, !tbaa !28
  %i.eaw = add i64 %i.eav, 1
  call void @_ZdlPvm(ptr noundef %i.eas, i64 noundef %i.eaw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i862
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.yt

bb.yl:                                            ; preds = %bb.yi, %bb.yh
  %i.eax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

bb.ym:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.yk
  %i.eay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eaz = load ptr, ptr %31, align 8, !tbaa !27  ; 2 uses
  %i.eba = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ebb = icmp eq ptr %i.eaz, %i.eba
  br i1 %i.ebb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.ym
  %i.ebc = load i64, ptr %i.eba, align 8, !tbaa !28
  %i.ebd = add i64 %i.ebc, 1
  call void @_ZdlPvm(ptr noundef %i.eaz, i64 noundef %i.ebd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.ym, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i, %bb.yl
  %.pn33.i = phi { ptr, i32 } [ %i.eax, %bb.yl ], [ %i.eay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i ], [ %i.eay, %bb.ym ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.yw

bb.yn:                                            ; preds = %.noexc873
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.ebe = invoke noundef ptr @_Z17enumValueToString12CutoffScheme(i32 noundef 0)
          to label %bb.yo unwind label %bb.yr

bb.yo:                                            ; preds = %bb.yn
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull @.str.230, ptr noundef %i.ebe)
          to label %bb.yp unwind label %bb.yr

bb.yp:                                            ; preds = %bb.yo
  %i.ebf = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ebg = load i64, ptr %i.ebf, align 8, !tbaa !29 ; 2 uses
  %i.ebh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ebi = load i64, ptr %i.ebh, align 8, !tbaa !29
  %i.ebj = sub i64 4611686018427387903, %i.ebi
  %i.ebk = icmp ult i64 %i.ebj, %i.ebg
  br i1 %i.ebk, label %bb.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i

bb.yq:                                            ; preds = %bb.yp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.209) #29
          to label %.noexc43.i unwind label %bb.ys

.noexc43.i:                                       ; preds = %bb.yq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i: ; preds = %bb.yp
  %i.ebl = load ptr, ptr %32, align 8, !tbaa !27
  %i.ebm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.ebl, i64 noundef %i.ebg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i unwind label %bb.ys ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i
  %i.ebn = load ptr, ptr %32, align 8, !tbaa !27  ; 2 uses
  %i.ebo = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ebp = icmp eq ptr %i.ebn, %i.ebo
  br i1 %i.ebp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i
  %i.ebq = load i64, ptr %i.ebo, align 8, !tbaa !28
  %i.ebr = add i64 %i.ebq, 1
  call void @_ZdlPvm(ptr noundef %i.ebn, i64 noundef %i.ebr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.yt

bb.yr:                                            ; preds = %bb.yo, %bb.yn
  %i.ebs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

bb.ys:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i, %bb.yq
  %i.ebt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ebu = load ptr, ptr %32, align 8, !tbaa !27  ; 2 uses
  %i.ebv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ebw = icmp eq ptr %i.ebu, %i.ebv
  br i1 %i.ebw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %bb.ys
  %i.ebx = load i64, ptr %i.ebv, align 8, !tbaa !28
  %i.eby = add i64 %i.ebx, 1
  call void @_ZdlPvm(ptr noundef %i.ebu, i64 noundef %i.eby) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.ys, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i, %bb.yr
  %.pn.i861 = phi { ptr, i32 } [ %i.ebs, %bb.yr ], [ %i.ebt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i ], [ %i.ebt, %bb.ys ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.yw

bb.yt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863
  %i.ebz = load ptr, ptr %30, align 8, !tbaa !27
  %i.eca = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ecb = load i64, ptr %i.eca, align 8, !tbaa !29
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %93, i64 %i.ecb, ptr %i.ebz)
          to label %bb.yu unwind label %bb.yv

bb.yu:                                            ; preds = %bb.yt
  %i.ecc = load ptr, ptr %30, align 8, !tbaa !27  ; 2 uses
  %i.ecd = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ece = icmp eq ptr %i.ecc, %i.ecd
  br i1 %i.ece, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.yu
  %i.ecf = load i64, ptr %i.ecd, align 8, !tbaa !28
  %i.ecg = add i64 %i.ecf, 1
  call void @_ZdlPvm(ptr noundef %i.ecc, i64 noundef %i.ecg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %bb.yu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %_ZL26checkDecoupledModeAccuracyPK10gmx_mtop_tPK10t_inputrecP14WarningHandler.exit

bb.yv:                                            ; preds = %bb.yt
  %i.ech = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw
end_hunk_1
