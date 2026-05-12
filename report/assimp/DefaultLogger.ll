inline.NumInlined: 173
inline.NumDeleted: 95
begin_hunk_0_@_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.b, i32 15, i32 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.d, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj:bb.a
  store i32 %spec.store.select, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.o, align 8
  %3 = load ptr, ptr %i.e, align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %3, %i.q
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store ptr %i.n, ptr %3, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %._crit_edge
  %4 = load ptr, ptr %i.c, align 8                ; 4 uses
  %i.t = ptrtoint ptr %3 to i64
  %i.u = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj:bb.a
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %4, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.not.i17.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %5 = load ptr, ptr %i.p, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %7) #21
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
end_hunk_2
