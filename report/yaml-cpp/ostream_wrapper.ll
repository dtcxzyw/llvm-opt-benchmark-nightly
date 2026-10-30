Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/ostream_wrapper?download=true
inline.NumInlined: 133
inline.NumDeleted: 75
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.aq = icmp eq i64 %i.ac, 1
  br i1 %i.aq, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1
  %i.ar = phi i64 [ %i.bh, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr, %.prol.loopexit ]
  %i.as = phi i64 [ %i.bc, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr25, %.prol.loopexit ] ; 2 uses
  %.sroa.012.021 = phi ptr [ %i.bi, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.sroa.012.021.unr, %.prol.loopexit ] ; 3 uses
  %i.at = load i8, ptr %.sroa.012.021, align 1, !tbaa !25
  %i.au = add i64 %i.as, 1
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !22
  %i.av = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.av, ptr %i.af, align 8, !tbaa !26
  %i.aw = icmp eq i8 %i.at, 10
  br i1 %i.aw, label %bb.h, label %_ZN4YAML15ostream_wrapper10update_posEc.exit

bb.h:                                             ; preds = %.lr.ph.new
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.ag, align 8, !tbaa !27
  store i64 0, ptr %i.af, align 8, !tbaa !26
  store i8 0, ptr %i.ah, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit

_ZN4YAML15ostream_wrapper10update_posEc.exit:     ; preds = %.lr.ph.new, %bb.h
  %i.az = phi i64 [ %i.av, %.lr.ph.new ], [ 0, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %i.bc = add i64 %i.as, 2                        ; 2 uses
  store i64 %i.bc, ptr %i.ae, align 8, !tbaa !22
  %i.bd = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.af, align 8, !tbaa !26
  %i.be = icmp eq i8 %i.bb, 10
  br i1 %i.be, label %bb.i, label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

bb.i:                                             ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.bf = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ag, align 8, !tbaa !27
  store i64 0, ptr %i.af, align 8, !tbaa !26
  store i8 0, ptr %i.ah, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

_ZN4YAML15ostream_wrapper10update_posEc.exit.1:   ; preds = %bb.i, %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.bh = phi i64 [ %i.bd, %_ZN4YAML15ostream_wrapper10update_posEc.exit ], [ 0, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 2 ; 2 uses
  %.not19.1 = icmp eq ptr %i.bi, %i.ad
  br i1 %.not19.1, label %._crit_edge, label %.lr.ph.new
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #13 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !25
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !12
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.f
  br i1 %i.ad, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !13
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4YAML15ostream_wrapper10update_posEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, i8 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  %i.g = icmp eq i8 %1, 10
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !27
  store i64 0, ptr %i.d, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.k, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = add i64 %2, 1
  %i.m = add i64 %i.l, %i.k
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.m)
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.speculated)
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = load i64, ptr %i.j, align 8, !tbaa !22
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.b
  switch i64 %2, label %.lr.ph [
    i64 1, label %bb.e
    i64 0, label %._crit_edge
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.r, ptr %i.p, align 1, !tbaa !25
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.e, %bb.c, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a
  %.not18 = icmp eq i64 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.promoted = load i64, ptr %i.s, align 8, !tbaa !22
  %.promoted17 = load i64, ptr %i.t, align 8, !tbaa !26
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit, %bb.d, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.w = phi i64 [ %.promoted17, %.lr.ph ], [ %i.af, %_ZN4YAML15ostream_wrapper10update_posEc.exit ]
  %i.x = phi i64 [ %.promoted, %.lr.ph ], [ %i.aa, %_ZN4YAML15ostream_wrapper10update_posEc.exit ]
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %_ZN4YAML15ostream_wrapper10update_posEc.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !22
  %i.ab = add i64 %i.w, 1                         ; 2 uses
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !26
  %i.ac = icmp eq i8 %i.z, 10
  br i1 %i.ac, label %bb.g, label %_ZN4YAML15ostream_wrapper10update_posEc.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !27
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !27
  store i64 0, ptr %i.t, align 8, !tbaa !26
  store i8 0, ptr %i.v, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit

_ZN4YAML15ostream_wrapper10update_posEc.exit:     ; preds = %bb.f, %bb.g
  %i.af = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.g ]
  %i.ag = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !33
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !9, i64 16}
!13 = !{!10, !9, i64 8}
!14 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !10, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIcSaIcEE", !15, i64 0}
!17 = !{!"p1 _ZTSSo", !8, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"bool", !4, i64 0}
!20 = !{!"_ZTSN4YAML15ostream_wrapperE", !16, i64 0, !17, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56}
!21 = !{!20, !17, i64 24}
!22 = !{!20, !18, i64 32}
!23 = !{!9, !9, i64 0}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!4, !4, i64 0}
!26 = !{!20, !18, i64 48}
!27 = !{!20, !18, i64 40}
!28 = !{!20, !19, i64 56}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !18, i64 8, !4, i64 16}
!31 = !{!30, !9, i64 0}
!32 = !{!30, !18, i64 8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
end_hunk_0
