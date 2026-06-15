inline.NumInlined: 20842
inline.NumDeleted: 3929
begin_hunk_0_@_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh:bb.a

_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, %.lr.ph78
  %i.dv = phi i64 [ %i.du, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit ], [ 0, %.lr.ph78 ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.175, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.04276, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.dx, %i.df
  br i1 %.not49, label %.loopexit, label %.lr.ph78

.loopexit:                                        ; preds = %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit, %bb.o, %._crit_edge
  call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %.043.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %.0.copyload.i.i.i.i = load i8, ptr %1, align 1 ; 6 uses
  switch i8 %.0.copyload.i.i.i.i, label %bb.i [
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 115, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 112, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 116, label %bb.b
    i8 105, label %bb.b
    i8 123, label %bb.h
    i8 99, label %bb.g
    i8 100, label %bb.g
    i8 124, label %bb.f
    i8 104, label %bb.c
    i8 117, label %bb.c
    i8 127, label %bb.j
    i8 126, label %bb.d
    i8 125, label %bb.e
    i8 103, label %.fold.split
    i8 96, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24
    i8 97, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24
    i8 102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = and i8 %.0.copyload.i.i.i.i, 31
  %i.b = zext nneg i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, 4
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = load i64, ptr %3, align 8
  %i.g = or i64 %i.f, 65536
  store i64 %i.g, ptr %3, align 8
  %i.h = icmp eq i8 %.0.copyload.i.i.i.i, 105
  %.sroa.0.0.copyload.i.i = select i1 %i.h, i32 4101, i32 1285
  br label %bb.j

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24: ; preds = %bb.a, %bb.a, %bb.a
  %i.i = and i8 %.0.copyload.i.i.i.i, 31
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -5
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.n = icmp eq i8 %.0.copyload.i.i.i.i, 104
  %.sroa.0.0.copyload.i.i25 = select i1 %i.n, i32 4485, i32 1157
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = tail call i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i32 %2, ptr noundef %3) ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.p to i32 ; 2 uses
  %i.q = and i32 %.sroa.027.0.extract.trunc, 268435427
  %i.r = icmp eq i32 %i.q, 514
  %i.s = icmp eq i8 %.0.copyload.i.i.i.i, 99
  %i.t = and i32 %.sroa.027.0.extract.trunc, -5
  %i.u = select i1 %i.s, i32 4, i32 0
  %i.v = or disjoint i32 %i.t, %i.u
  %storemerge = select i1 %i.r, i32 514, i32 %i.v
  %i.w = and i64 %i.p, -4294967296
  %i.x = add i64 %i.w, 4294967296
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

.fold.split:                                      ; preds = %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.fold.split, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
  %.sroa.038.0 = phi i32 [ %i.e, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 6672, %bb.h ], [ %.sroa.0.0.copyload.i.i25, %bb.c ], [ 5648, %bb.a ], [ 5904, %bb.d ], [ 6160, %bb.e ], [ 6416, %bb.f ], [ %storemerge, %bb.g ], [ %i.m, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24 ], [ 4613, %.fold.split ]
  %.sroa.11.0 = phi i64 [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ 4294967296, %bb.b ], [ 4294967296, %bb.h ], [ 4294967296, %bb.c ], [ 4294967296, %bb.a ], [ 4294967296, %bb.d ], [ 4294967296, %bb.e ], [ 4294967296, %bb.f ], [ %i.x, %bb.g ], [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24 ], [ 4294967296, %.fold.split ]
  %.sroa.038.0.insert.ext = zext i32 %.sroa.038.0 to i64
  %.sroa.038.0.insert.insert = or i64 %.sroa.11.0, %.sroa.038.0.insert.ext
  ret i64 %.sroa.038.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i32                 ; 2 uses
  %.not.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 7
  %i.h = and i32 %i.g, 16256
  %i.i = or disjoint i32 %i.h, %i.c               ; 2 uses
  %.not.i2 = icmp sgt i8 %i.e, -1
  br i1 %.not.i2, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 14
  %i.n = and i32 %i.m, 2080768
  %i.o = or disjoint i32 %i.n, %i.i               ; 2 uses
  %.not.i3 = icmp sgt i8 %i.k, -1
  br i1 %.not.i3, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 21
  %i.t = and i32 %i.s, 266338304
  %i.u = or disjoint i32 %i.t, %i.o               ; 2 uses
  %.not.i4 = icmp sgt i8 %i.q, -1
  br i1 %.not.i4, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = shl i32 %i.x, 28
  %i.z = or disjoint i32 %i.y, %i.u
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 4294967296, %bb.a ], [ 8589934592, %bb.b ], [ 12884901888, %bb.c ], [ 21474836480, %bb.e ], [ 17179869184, %bb.d ]
  %.sroa.0.0 = phi i32 [ %i.c, %bb.a ], [ %i.i, %bb.b ], [ %i.o, %bb.c ], [ %i.z, %bb.e ], [ %i.u, %bb.d ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef nonnull @.str.28, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::EmbeddedVector", align 8 ; 7 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %5 = alloca %"class.v8::internal::wasm::WasmError", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8
  %i.e = call noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %2, ptr noundef nonnull %4) #24 ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = load ptr, ptr %3, align 8                ; 3 uses
  %i.h = zext nneg i32 %i.e to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.e, 15
  br i1 %i.k, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.f
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  store ptr %i.m, ptr %6, align 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.f
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1
  store i8 %i.n, ptr %i.i, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.o = phi ptr [ %i.m, %._crit_edge.i.i.thread ], [ %i.i, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %bb.g, %bb.h
  %i.p = phi ptr [ %i.i, %bb.g ], [ %i.o, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store i8 0, ptr %i.r, align 1
  store i32 %1, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = load ptr, ptr %6, align 8                ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.w = load i64, ptr %i.q, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.y, i1 false)
  br label %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  store ptr %i.u, ptr %i.s, align 8
  %i.z = load i64, ptr %i.i, align 8
  store i64 %i.z, ptr %i.t, align 8
  %.pr = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi ptr [ %i.t, %bb.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.ab = phi i64 [ %i.w, %bb.i ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8
  store ptr %i.i, ptr %6, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  store i32 %1, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = icmp eq ptr %i.aa, %i.t                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ah, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  switch i64 %i.ab, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.aa, align 1
  store i8 %i.aj, ptr %i.ae, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1
  %.pre.i.i = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aa, ptr %i.ad, align 8
  store i64 %i.ab, ptr %i.ao, align 8
  %i.ap = load i64, ptr %i.t, align 8
  store i64 %i.ap, ptr %i.af, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aq = load i64, ptr %i.af, align 8
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ab, ptr %i.ar, align 8
  %i.as = load i64, ptr %i.t, align 8
  store i64 %i.as, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ae, ptr %i.s, align 8
  store i64 %i.aq, ptr %i.t, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.t, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

_ZN2v88internal4wasm9WasmErroraSEOS2_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.m, %bb.n
  %7 = phi ptr [ %i.ae, %bb.m ], [ %i.t, %bb.n ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %7, align 1
  %i.at = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit
  %i.av = load i64, ptr %i.t, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #26
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit

_ZN2v88internal4wasm9WasmErrorD2Ev.exit:          ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = load ptr, ptr %6, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.i
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit
  %i.az = load i64, ptr %i.i, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(80) %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.m, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -8
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 56
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !161

_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #12 comdat align 2 {
_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %i.a to i64
  %i.c = shl nuw i64 %i.b, 57
  %i.d = ashr exact i64 %i.c, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.e, 1 ; 3 uses
  %i.f = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ne i32 %.fca.1.extract.i.i, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = extractvalue { i64, i32 } %i.e, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.b, %bb.c
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.b ], [ %.fca.1.extract.i.i, %bb.c ] ; 4 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
end_hunk_0
