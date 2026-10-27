Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/basicoptions?download=true
inline.NumInlined: 6252
inline.NumDeleted: 2968
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx22OptionValueStoreVectorIbE6valuesEv:bb.a
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %spec.select.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx22OptionValueStoreVectorIbE5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN3gmx22OptionValueStoreVectorIbE4BoolES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx22OptionValueStoreVectorIbE4BoolES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !416
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE5clearEv.exit

_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN3gmx22OptionValueStoreVectorIbE4BoolES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !364
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx22OptionValueStoreVectorIbE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !416
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !413
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 4 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !414
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 4 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !413  ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !416
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !414
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.x) #29
  br label %_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.o, ptr %i.a, align 8, !tbaa !413
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store ptr %i.y, ptr %i.b, align 8, !tbaa !416
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.z, ptr %i.j, align 8, !tbaa !414
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !408 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !364
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !375
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !364
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = zext i32 %i.af to i64
  %i.am = add i64 %1, %i.al
  %i.an = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 9223372036854775744
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE7reserveEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE7reserveEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ai
  %i.at = shl nsw i64 %i.as, 3
  %i.au = icmp ult i64 %i.at, %i.an
  br i1 %i.au, label %bb.h, label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 noundef %i.an)
  br label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

_ZNSt6vectorIbSaIbEE7reserveEm.exit:              ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx22OptionValueStoreVectorIbE6appendERKb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !42, !range !43, !noundef !44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.b, ptr %i.d, align 1, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.g, ptr %i.c, align 8, !tbaa !416
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !413  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

_ZNKSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i, %i.k  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  store i8 %i.b, ptr %i.r, align 1, !tbaa !42
  %i.s = icmp sgt i64 %i.k, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.w) #29
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !413
  store ptr %i.t, ptr %i.c, align 8, !tbaa !416
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.x, ptr %i.e, align 8, !tbaa !414
  br label %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !408  ; 4 uses
  %i.aa = load i8, ptr %1, align 1, !tbaa !42, !range !43, !noundef !44
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !364 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !365
  %.not.i = icmp eq ptr %i.ad, %i.af
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE9push_backEOS3_.exit
  %i.ag = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ag, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !375
  %i.ah = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ah, label %bb.h, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !375
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !364
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.h, %bb.g
  %i.aj = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ak = shl nuw i64 1, %i.aj                    ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !173
  %i.am = or i64 %i.al, %i.ak
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.j:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.an = xor i64 %i.ak, -1
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !173
  %i.ap = and i64 %i.ao, %i.an
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.k:                                             ; preds = %_ZNSt6vectorIN3gmx22OptionValueStoreVectorIbE4BoolESaIS3_EE9push_backEOS3_.exit
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr %i.ad, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.ab)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.j, %bb.i
  %.sink.i = phi i64 [ %i.am, %bb.i ], [ %i.ap, %bb.j ]
  store i64 %.sink.i, ptr %i.ad, align 8, !tbaa !173
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.k, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 63                           ; 2 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = and i64 %i.b, 2305843009213693944
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !364    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = icmp sgt i64 %i.i, 8
  br i1 %i.j, label %bb.b, label %bb.c, !prof !417

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 8 %i.e, i64 %i.i, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 8
  br i1 %i.k, label %bb.d, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.e, align 8, !tbaa !173
  store i64 %i.l, ptr %i.d, align 8, !tbaa !173
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.i ; 3 uses
  %.not.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.n = zext i32 %.sroa.2.0.copyload.i to i64    ; 2 uses
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %.sroa.2.0.copyload.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.i.new

.lr.ph.i.i.i.i.i.preheader.i.new:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %unroll_iter = and i64 %i.n, 4294967294
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.preheader.i.new
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %spec.select15.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %spec.select.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %niter.next.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ]
  %i.p = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !173
  %i.s = and i64 %i.r, %i.q
  %.not.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !173
  %i.w = or i64 %i.v, %i.u
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = xor i64 %i.u, -1
  %i.y = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !173
  %i.z = and i64 %i.y, %i.x
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.f, %bb.e
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ %i.w, %bb.e ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !173
  %i.aa = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.ab = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.ab, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i ; 2 uses
  %spec.select15.i.i.i.i.i.i = select i1 %i.ab, i32 0, i32 %i.aa ; 3 uses
  %i.ac = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.ad = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.ad, i32 0, i32 %i.ac ; 3 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.ad, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 4 uses
  %i.ae = zext nneg i32 %spec.select15.i.i.i.i.i.i to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !173
  %i.ah = and i64 %i.ag, %i.af
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ah, 0
  %i.ai = zext nneg i32 %.sroa.55.1.i.i.i.i.i.i to i64
  %i.aj = shl nuw i64 1, %i.ai                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.ak = load i64, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !173
  %i.al = or i64 %i.ak, %i.aj
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1

bb.h:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.am = xor i64 %i.aj, -1
  %i.an = load i64, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !173
  %i.ao = and i64 %i.an, %i.am
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1:     ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i.i.i.1 = phi i64 [ %i.ao, %bb.h ], [ %i.al, %bb.g ]
  store i64 %storemerge.i.i.i.i.i.i.1, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !173
  %i.ap = add i32 %spec.select15.i.i.i.i.i.i, 1
  %i.aq = icmp eq i32 %spec.select15.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i.1 = select i1 %i.aq, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i.1 ; 2 uses
  %spec.select15.i.i.i.i.i.i.1 = select i1 %i.aq, i32 0, i32 %i.ap ; 2 uses
  %i.ar = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.as = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.1 = select i1 %i.as, i32 0, i32 %i.ar ; 3 uses
  %.sroa.03.1.idx.i.i.i.i.i.i.1 = select i1 %i.as, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i.1 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !24

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.03.019.i.i.i.i.i.i.epil.init = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %spec.select15.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ]
  %.sroa.09.016.i.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %spec.select.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i32 %.sroa.2.0.copyload.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.at = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i.epil.init to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = load i64, ptr %.sroa.09.016.i.i.i.i.i.i.epil.init, align 8, !tbaa !173
  %i.aw = and i64 %i.av, %i.au
  %.not.i.i.i.i.i.i.epil = icmp eq i64 %i.aw, 0
  %i.ax = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i.epil.init to i64
  %i.ay = shl nuw i64 1, %i.ax                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.epil, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.az = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !173
  %i.ba = or i64 %i.az, %i.ay
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.bb = xor i64 %i.ay, -1
  %i.bc = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !173
  %i.bd = and i64 %i.bc, %i.bb
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil:  ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i.i.i.epil = phi i64 [ %i.bd, %bb.j ], [ %i.ba, %bb.i ]
  store i64 %storemerge.i.i.i.i.i.i.epil, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !173
  %i.be = add i32 %.sroa.55.018.i.i.i.i.i.i.epil.init, 1
  %i.bf = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i.epil.init, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.epil = select i1 %i.bf, i32 0, i32 %i.be
  %.sroa.03.1.idx.i.i.i.i.i.i.epil = select i1 %i.bf, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, i64 %.sroa.03.1.idx.i.i.i.i.i.i.epil
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ], [ %.sroa.55.1.i.i.i.i.i.i.epil, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil ]
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ], [ %.sroa.03.1.i.i.i.i.i.i.epil, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil ]
  %.not.i15 = icmp eq ptr %i.e, null
  br i1 %.not.i15, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !365 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.h                     ; 2 uses
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bl
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bj) #29
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.k
  store ptr %i.d, ptr %0, align 8
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx24, align 8
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.f, align 8
  store i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = lshr i64 %i.a, 6
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bn
end_hunk_0
begin_hunk_1_@_ZNK3gmx26OptionValueConverterSimpleIbE7convertERKNS_3AnyE:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) %i.bf) #27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZNK3gmx3Any4castIbEERKT_v.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK3gmx3Any6isTypeIbEEbv.exit.i.i, %bb.l, %_ZNK3gmx3Any6isTypeIbEEbv.exit.thread24
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK3gmx3Any4castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_vENKUlvE_clEv, ptr noundef nonnull @.str.45, i32 noundef 190) #30
  unreachable

_ZNK3gmx3Any4castIbEERKT_v.exit:                  ; preds = %bb.k, %_ZNK3gmx3Any6isTypeIbEEbv.exit.i.i
  %i.bi = load ptr, ptr %1, align 8, !tbaa !360
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !42, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br label %bb.v

_ZNK3gmx3Any6isTypeIbEEbv.exit.thread:            ; preds = %bb.j, %_ZNKSt3mapISt10type_indexSt8functionIFbRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread, %_ZNK3gmx3Any6isTypeIbEEbv.exit
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.50)
          to label %bb.n unwind label %.thread

bb.n:                                             ; preds = %_ZNK3gmx3Any6isTypeIbEEbv.exit.thread
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.o unwind label %.thread29

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZNK3gmx26OptionValueConverterSimpleIbE7convertERKNS_3AnyE, ptr %i.bn, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.51, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 89, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bm, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr %i.bm, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.w unwind label %bb.q

.thread:                                          ; preds = %_ZNK3gmx3Any6isTypeIbEEbv.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread29:                                        ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  br label %.sink.split

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.r, label %bb.s

.sink.split:                                      ; preds = %.thread, %.thread29
  %.pn.pn28.ph = phi { ptr, i32 } [ %i.bp, %.thread29 ], [ %i.bo, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %.pn.pn28 = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %.pn.pn28.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bm) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn27 = phi { ptr, i32 } [ %.pn.pn28, %bb.r ], [ %i.bq, %bb.q ]
  resume { ptr, i32 } %.pn.pn27

bb.t:                                             ; preds = %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i, %._crit_edge.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %.not.i.i18 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i18, label %bb.u, label %_ZNKSt8functionIFbRKN3gmx3AnyEEEclES3_.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFbRKN3gmx3AnyEEEclES3_.exit:      ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1220
  %i.bw = tail call noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1218
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt8functionIFbRKN3gmx3AnyEEEclES3_.exit, %_ZNK3gmx3Any4castIbEERKT_v.exit
  %.012 = phi i1 [ %i.bl, %_ZNK3gmx3Any4castIbEERKT_v.exit ], [ %i.bw, %_ZNKSt8functionIFbRKN3gmx3AnyEEEclES3_.exit ]
  ret i1 %.012

bb.w:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIbE8addValueERKb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !115  ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !364
  %.sroa.2.0..sroa_idx.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.2.0.copyload.i11.i.pre = load i32, ptr %.sroa.2.0..sroa_idx.i.i.phi.trans.insert, align 8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !364  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !375  ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !364
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.h to i64
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = zext nneg i32 %i.b to i64
  %.not = icmp ult i64 %i.o, %i.p
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.52)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.e unwind label %.thread14

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIbE8addValueERKb, ptr %i.r, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 537, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.q, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.q, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.p unwind label %bb.g

.thread:                                          ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread14:                                        ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.h, label %bb.o

.sink.split:                                      ; preds = %.thread, %.thread14
  %.pn.pn13.ph = phi { ptr, i32 } [ %i.t, %.thread14 ], [ %i.s, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.pn.pn13 = phi { ptr, i32 } [ %i.u, %bb.g ], [ %.pn.pn13.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.q) #27
  br label %bb.o

bb.i:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.2.0.copyload.i11.i = phi i32 [ %.sroa.2.0.copyload.i11.i.pre, %._crit_edge ], [ %i.h, %bb.b ] ; 4 uses
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 6 uses
  %i.w = load i8, ptr %1, align 1, !tbaa !42, !range !43, !noundef !44
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !365
  %.not.i = icmp eq ptr %i.v, %i.aa
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ab, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !375
  %i.ac = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ac, label %bb.k, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !375
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !364
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.k, %bb.j
  %i.ae = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.af = shl nuw i64 1, %i.ae                    ; 2 uses
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !173
  %i.ah = or i64 %i.ag, %i.af
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.m:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ai = xor i64 %i.af, -1
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !173
  %i.ak = and i64 %i.aj, %i.ai
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.n:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr %i.v, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.x)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.m, %bb.l
  %.sink.i = phi i64 [ %i.ah, %bb.l ], [ %i.ak, %bb.m ]
  store i64 %.sink.i, ptr %i.v, align 8, !tbaa !173
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.n, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  ret void

bb.o:                                             ; preds = %bb.g, %bb.h
  %.pn.pn12 = phi { ptr, i32 } [ %i.u, %bb.g ], [ %.pn.pn13, %bb.h ]
  resume { ptr, i32 } %.pn.pn12

bb.p:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any7ContentIiED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK3gmx3Any7ContentIiE8typeInfoEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr @_ZTIi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3gmx3Any7ContentIiE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.257") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN3gmx3Any7ContentIiEESt14default_deleteIS3_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !1224, !inline_history !1223 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIiEE, i64 16), ptr %i.b, align 8, !tbaa !64, !noalias !1224
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.a, align 8, !tbaa !111, !noalias !1224
  store i32 %i.d, ptr %i.c, align 8, !tbaa !381, !noalias !1224
  store ptr %i.b, ptr %0, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3gmx26OptionValueConverterSimpleIiE7convertERKNS_3AnyE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !360    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNK3gmx3Any4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !32
  br label %_ZNK3gmx3Any4typeEv.exit

_ZNK3gmx3Any4typeEv.exit:                         ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ @_ZTIv, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK3gmx3Any4typeEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !453  ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.f ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !453  ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 42
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %._crit_edge.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.k, align 1, !tbaa !52
  %.not5.i.i.i.i.i.i = icmp eq i8 %i.q, 42
  br i1 %.not5.i.i.i.i.i.i, label %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %bb.c
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.k) #27
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i.i: ; preds = %bb.d
  %i.t = icmp ult ptr %i.o, %i.k
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i.i, %._crit_edge.i.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %bb.e ], [ 16, %._crit_edge.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0811.i.i.i, %bb.e ], [ %.012.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.012.i.i.i, %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i15, label %_ZNKSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFiRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.c, !llvm.loop !1225

_ZNKSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFiRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.f
  %i.v = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.v, label %_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFiRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = load i8, ptr %i.k, align 1, !tbaa !52
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 42
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !453 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.h, label %._crit_edge.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %.not5.i.i.i.i.i = icmp eq i8 %i.ab, 42
  br i1 %.not5.i.i.i.i.i, label %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.aa) #27
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread, label %bb.t

_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i:  ; preds = %bb.h
  %i.ae = icmp ult ptr %i.k, %i.aa
  br i1 %i.ae, label %_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread, label %bb.t

_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNK3gmx3Any4typeEv.exit, %_ZNKSt4lessISt10type_indexEclERKS0_S3_.exit.i.i, %_ZNKSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFiRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, %._crit_edge.i.i.i.i.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !360   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i16, label %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !1226
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !453 ; 3 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIi, i64 8), align 8, !tbaa !453 ; 6 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.ao, 42
  br i1 %.not.i.i, label %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread, label %_ZNK3gmx3Any6isTypeIiEEbv.exit

_ZNK3gmx3Any6isTypeIiEEbv.exit:                   ; preds = %bb.j
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !52
  %i.aq = icmp eq i8 %i.ap, 42
  %.idx.i.i.i = zext i1 %i.aq to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.ar) #27
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread24, label %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread

_ZNK3gmx3Any6isTypeIiEEbv.exit.thread24:          ; preds = %bb.i, %_ZNK3gmx3Any6isTypeIiEEbv.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !360   ; 3 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i17, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au), !inline_history !1227
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !453 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  br i1 %i.bb, label %_ZNK3gmx3Any4castIiEERKT_v.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.bc, 42
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZNK3gmx3Any6isTypeIiEEbv.exit.i.i

_ZNK3gmx3Any6isTypeIiEEbv.exit.i.i:               ; preds = %bb.l
  %i.bd = load i8, ptr %i.am, align 1, !tbaa !52
  %i.be = icmp eq i8 %i.bd, 42
  %.idx.i.i.i.i.i = zext i1 %i.be to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) %i.bf) #27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZNK3gmx3Any4castIiEERKT_v.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK3gmx3Any6isTypeIiEEbv.exit.i.i, %bb.l, %_ZNK3gmx3Any6isTypeIiEEbv.exit.thread24
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK3gmx3Any4castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_vENKUlvE_clEv, ptr noundef nonnull @.str.45, i32 noundef 190) #30
  unreachable

_ZNK3gmx3Any4castIiEERKT_v.exit:                  ; preds = %bb.k, %_ZNK3gmx3Any6isTypeIiEEbv.exit.i.i
  %i.bi = load ptr, ptr %1, align 8, !tbaa !360
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !111
  br label %bb.v

_ZNK3gmx3Any6isTypeIiEEbv.exit.thread:            ; preds = %bb.j, %_ZNKSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEE4findERSB_.exit.thread, %_ZNK3gmx3Any6isTypeIiEEbv.exit
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
end_hunk_1
