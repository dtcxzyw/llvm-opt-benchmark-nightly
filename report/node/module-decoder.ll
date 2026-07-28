inline.NumInlined: 6144
inline.NumDeleted: 2639
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN2v88internal4wasm17ModuleDecoderImpl18consume_value_typeEPKNS1_10WasmModuleE:bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.bd, ptr noundef nonnull @.str.1136, i32 noundef %.sroa.8.0.extract.trunc)
  %i.bj = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit

_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit: ; preds = %bb.f, %bb.g
  %storemerge.i = phi ptr [ %i.bj, %bb.g ], [ %i.bi, %bb.f ]
  store ptr %storemerge.i, ptr %i.a, align 8
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm9ValueTypeELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 4, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !257

_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm9ValueTypeELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm9ValueTypeELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 {
_ZSt9destroy_nIPN2v88internal4wasm9ValueTypeElET_S5_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal4wasm9ValueTypeElET_S5_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #28
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal4wasm9ValueTypeElET_S5_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.138)
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i = load i8, ptr %1, align 1
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i8 [ 0, %bb.b ], [ %.0.copyload.i.i.i.i, %bb.c ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %bb.w, !prof !12

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  switch i8 %.0.i.i, label %bb.v [
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
    i8 116, label %bb.e
    i8 105, label %bb.e
    i8 103, label %bb.h
    i8 102, label %bb.h
    i8 96, label %bb.h
    i8 97, label %bb.h
    i8 104, label %bb.j
    i8 117, label %bb.j
    i8 127, label %bb.w
    i8 126, label %bb.l
    i8 125, label %bb.m
    i8 124, label %bb.n
    i8 100, label %bb.o
    i8 99, label %bb.o
    i8 123, label %bb.r
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %10 = zext nneg i8 %.0.i.i to i64
  %11 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -384
  %i.i = load i32, ptr %12, align 4
  %i.j = or i32 %i.i, 4
  br label %bb.w

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = and i32 %2, 65536
  %.not91 = icmp eq i32 %i.k, 0
  br i1 %.not91, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34, label %bb.f, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %13 = zext nneg i8 %.0.i.i to i64
  %14 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -384
  %i.l = load i32, ptr %15, align 4
  %i.m = or i32 %i.l, 4
  store i32 %i.m, ptr %5, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.n = load ptr, ptr %4, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.139, ptr noundef %i.n)
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %3, align 8                ; 2 uses
  %i.u = and i64 %i.t, 8192
  %i.v = icmp eq i64 %i.u, 0
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 961), align 1, !range !38
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %i.v, i1 true, i1 %i.x, !prof !258
  br i1 %or.cond, label %.critedge, label %bb.g, !prof !258

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.140)
  br label %bb.w

.critedge:                                        ; preds = %bb.f
  %i.y = or i64 %i.t, 65536
  store i64 %i.y, ptr %3, align 8
  %i.z = icmp eq i8 %.0.i.i, 105
  %.sroa.0.0.copyload.i.i = select i1 %i.z, i32 4101, i32 1285
  br label %bb.w

bb.h:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.aa = and i32 %2, 1024
  %.not90 = icmp eq i32 %i.aa, 0
  br i1 %.not90, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37, label %bb.i, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %16 = zext nneg i8 %.0.i.i to i64
  %17 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -384
  %i.ab = load i32, ptr %18, align 4
  %i.ac = or i32 %i.ab, 4
  store i32 %i.ac, ptr %7, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.ad = load ptr, ptr %6, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.141, ptr noundef %i.ad)
  %i.ae = load ptr, ptr %6, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i8 %.0.i.i, 103
  br i1 %i.aj, label %bb.w, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43: ; preds = %bb.i
  %19 = zext nneg i8 %.0.i.i to i64
  %20 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %19
  %21 = getelementptr i8, ptr %20, i64 -384
  %i.ak = load i32, ptr %21, align 4
  %i.al = and i32 %i.ak, -5
  br label %bb.w

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.am = and i32 %2, 128
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46, label %bb.k, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %22 = zext nneg i8 %.0.i.i to i64
  %23 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -384
  %i.an = load i32, ptr %24, align 4
  %i.ao = or i32 %i.an, 4
  store i32 %i.ao, ptr %9, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.ap = load ptr, ptr %8, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef %i.ap)
  %i.aq = load ptr, ptr %8, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.av = icmp eq i8 %.0.i.i, 104
  %.sroa.0.0.copyload.i.i50 = select i1 %i.av, i32 4485, i32 1157
  br label %bb.w

bb.l:                                             ; preds = %bb.d
  br label %bb.w

bb.m:                                             ; preds = %bb.d
  br label %bb.w

bb.n:                                             ; preds = %bb.d
  br label %bb.w

bb.o:                                             ; preds = %bb.d, %bb.d
  %i.aw = icmp eq i8 %.0.i.i, 99                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = tail call i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i32 %2, ptr noundef %3) ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i64 %i.ay to i32 ; 2 uses
  %i.az = and i32 %.sroa.055.0.extract.trunc, 268435427 ; 2 uses
  switch i32 %i.az, label %.thread [
    i32 5121, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
    i32 4865, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
    i32 5377, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
    i32 514, label %bb.q
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit: ; preds = %bb.o, %bb.o, %bb.o
  br i1 %i.aw, label %bb.p, label %.thread, !prof !259

bb.p:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.143)
  br label %bb.w

.thread:                                          ; preds = %bb.o, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
  %i.ba = and i32 %.sroa.055.0.extract.trunc, -5
  %i.bb = select i1 %i.aw, i32 4, i32 0
  %i.bc = or disjoint i32 %i.ba, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.thread
  %storemerge = phi i32 [ %i.bc, %.thread ], [ %i.az, %bb.o ]
  %i.bd = and i64 %i.ay, -4294967296
  %i.be = add i64 %i.bd, 4294967296
  br label %bb.w

bb.r:                                             ; preds = %bb.d
  %i.bf = tail call noundef zeroext i1 @_ZN2v88internal4wasm25CheckHardwareSupportsSimdEv() #25
  br i1 %i.bf, label %bb.w, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !38, !noundef !39
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.144) #27
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.145)
  br label %bb.w

bb.v:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_13ValueTypeCodeEEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.146, i8 noundef zeroext %.0.i.i)
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.k, %bb.l, %bb.m, %bb.n, %bb.u, %bb.v, %bb.i, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43, %bb.d, %bb.q, %bb.p, %bb.r, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %.sroa.087.2 = phi i32 [ 514, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ 514, %bb.v ], [ %i.j, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %.sroa.0.0.copyload.i.i, %.critedge ], [ 514, %bb.g ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 514, %bb.u ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.sroa.0.0.copyload.i.i50, %bb.k ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ 4613, %bb.i ], [ 5904, %bb.l ], [ 6160, %bb.m ], [ 6416, %bb.n ], [ 5648, %bb.d ], [ %storemerge, %bb.q ], [ %i.al, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43 ], [ 514, %bb.p ], [ 6672, %bb.r ]
  %.sroa.19.2 = phi i64 [ 0, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ 0, %bb.v ], [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ 4294967296, %.critedge ], [ 0, %bb.g ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.u ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ 4294967296, %bb.k ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ 4294967296, %bb.i ], [ 4294967296, %bb.l ], [ 4294967296, %bb.m ], [ 4294967296, %bb.n ], [ 4294967296, %bb.d ], [ %i.be, %bb.q ], [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43 ], [ 0, %bb.p ], [ 4294967296, %bb.r ]
  %.sroa.087.0.insert.ext = zext i32 %.sroa.087.2 to i64
  %.sroa.087.0.insert.insert = or i64 %.sroa.19.2, %.sroa.087.0.insert.ext
  ret i64 %.sroa.087.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load i32, ptr %1, align 4                ; 4 uses
  %i.b = and i32 %i.a, 3
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.e = lshr i32 %i.a, 8
  %i.f = and i32 %i.e, 1048575                    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.g = icmp samesign ult i32 %i.f, 10
  br i1 %i.g, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.h, ptr %2, align 8, !alias.scope !260
  br label %bb.l

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.i
  %.02230.i.i = phi i32 [ %i.o, %bb.i ], [ %i.f, %bb.c ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.p, %bb.i ], [ 1, %bb.c ] ; 4 uses
  %i.i = icmp samesign ult i32 %.02230.i.i, 100
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.j = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.k = icmp samesign ult i32 %.02230.i.i, 1000
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i32 %.02230.i.i, 10000
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.o = udiv i32 %.02230.i.i, 10000
  %i.p = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.q = icmp samesign ult i32 %.02230.i.i, 100000
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !263

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.n, %bb.h ], [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %bb.i ] ; 3 uses
  %i.r = zext i32 %.0.i.i to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.s, ptr %2, align 8, !alias.scope !260
  %i.t = icmp ugt i32 %.0.i.i, 15
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.u = add nuw nsw i64 %i.r, 1
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #26 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !alias.scope !260
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !260
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.m [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.w = phi ptr [ %i.h, %.thread.i ], [ %i.s, %bb.k ] ; 2 uses
  store i8 0, ptr %i.w, align 1, !alias.scope !260
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.x = phi ptr [ %i.v, %bb.j ], [ %i.s, %bb.k ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.y = phi i64 [ 0, %bb.k ], [ 1, %bb.l ], [ %i.r, %bb.m ] ; 2 uses
  %i.z = phi ptr [ %i.s, %bb.k ], [ %i.w, %bb.l ], [ %i.x, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !260
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  %i.ac = load ptr, ptr %2, align 8, !alias.scope !260 ; 4 uses
  %i.ad = icmp samesign ugt i32 %i.f, 99
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ae = load i64, ptr %i.aa, align 8, !alias.scope !260
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev:bb.a
bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cr = phi ptr [ %i.cp, %bb.x ], [ %i.cm, %bb.y ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cr, i8 0, i64 %i.cl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8: ; preds = %bb.aa, %bb.z, %bb.y
  %i.cs = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ %i.cl, %bb.aa ] ; 2 uses
  %i.ct = phi ptr [ %i.cm, %bb.y ], [ %i.cq, %bb.z ], [ %i.cr, %bb.aa ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.cu, align 8, !alias.scope !268
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 0, ptr %i.cv, align 1
  %i.cw = load ptr, ptr %0, align 8, !alias.scope !268 ; 4 uses
  %i.cx = icmp samesign ugt i32 %i.bz, 99
  br i1 %i.cx, label %.lr.ph.preheader.i.i12, label %._crit_edge.i.i9

.lr.ph.preheader.i.i12:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8
  %i.cy = load i64, ptr %i.cu, align 8, !alias.scope !268
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add i32 %i.cz, -1
  br label %.lr.ph.i2.i13

.lr.ph.i2.i13:                                    ; preds = %.lr.ph.i2.i13, %.lr.ph.preheader.i.i12
  %.020.i.i14 = phi i32 [ %i.dd, %.lr.ph.i2.i13 ], [ %i.bz, %.lr.ph.preheader.i.i12 ] ; 3 uses
  %.01819.i.i15 = phi i32 [ %i.do, %.lr.ph.i2.i13 ], [ %i.da, %.lr.ph.preheader.i.i12 ] ; 3 uses
  %i.db = urem i32 %.020.i.i14, 100
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = udiv i32 %.020.i.i14, 100               ; 2 uses
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !268
  %i.di = zext i32 %.01819.i.i15 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1
  %i.dk = load i8, ptr %i.df, align 2, !noalias !268
  %i.dl = add i32 %.01819.i.i15, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dm
  store i8 %i.dk, ptr %i.dn, align 1
  %i.do = add i32 %.01819.i.i15, -2
  %i.dp = icmp samesign ugt i32 %.020.i.i14, 9999
  br i1 %i.dp, label %.lr.ph.i2.i13, label %._crit_edge.i.i9, !llvm.loop !264

._crit_edge.i.i9:                                 ; preds = %.lr.ph.i2.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8
  %.0.lcssa.i.i10 = phi i32 [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8 ], [ %i.dd, %.lr.ph.i2.i13 ] ; 3 uses
  %i.dq = icmp samesign ugt i32 %.0.lcssa.i.i10, 9
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i9
  %i.dr = shl nuw nsw i32 %.0.lcssa.i.i10, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !noalias !268
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.dv, ptr %i.dw, align 1
  %i.dx = load i8, ptr %i.dt, align 2, !noalias !268
  br label %_ZNSt7__cxx119to_stringEj.exit17

bb.ac:                                            ; preds = %._crit_edge.i.i9
  %i.dy = trunc nuw nsw i32 %.0.lcssa.i.i10 to i8
  %i.dz = or disjoint i8 %i.dy, 48
  br label %_ZNSt7__cxx119to_stringEj.exit17

_ZNSt7__cxx119to_stringEj.exit17:                 ; preds = %bb.ab, %bb.ac
  %storemerge.i.i11 = phi i8 [ %i.dz, %bb.ac ], [ %i.dx, %bb.ab ]
  store i8 %storemerge.i.i11, ptr %i.cw, align 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt7__cxx119to_stringEj.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %.critedge.i.i, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw i64 %i.e, 57
  %i.g = ashr exact i64 %i.f, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.h = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.160) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.h, 1 ; 2 uses
  %i.i = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.i)
  %i.j = extractvalue { i64, i32 } %i.h, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i.i
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.c ], [ %.fca.1.extract.i.i, %.critedge.i.i ] ; 6 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.g, %bb.c ], [ %i.j, %.critedge.i.i ] ; 6 uses
  %i.k = icmp slt i64 %.fca.1.insert.i.merged.i, 0 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.x

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.l = icmp samesign ugt i64 %.fca.1.insert.i.merged.i, -65
  br i1 %i.l, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.161, i64 noundef %.fca.1.insert.i.merged.i)
  br label %.critedge90

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nsw i64 %.fca.1.insert.i.merged.i to i8
  %i.n = and i8 %i.m, 127                         ; 2 uses
  %i.o = icmp eq i8 %i.n, 101                     ; 9 uses
  br i1 %i.o, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %2, 16
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJhEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.162, i8 noundef zeroext 101)
  br label %.critedge90

bb.i:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %.fca.1.extract.pre-phi to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp slt i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !22

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.r, ptr noundef nonnull @.str.160)
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.k:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i8, ptr %i.r, align 1
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi i8 [ 0, %bb.j ], [ %.0.copyload.i.i.i.i, %bb.k ]
  %i.x = add nuw nsw i32 %.fca.1.extract.pre-phi, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.f
  %.sroa.6.0 = phi i32 [ %i.x, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.extract.pre-phi, %bb.f ] ; 6 uses
  %.085 = phi i8 [ %.0.i.i, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %i.n, %bb.f ] ; 10 uses
  switch i8 %.085, label %bb.w [
    i8 115, label %bb.m
    i8 112, label %bb.m
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 116, label %bb.n
    i8 105, label %bb.n
    i8 103, label %bb.q
    i8 102, label %bb.q
    i8 96, label %bb.q
    i8 97, label %bb.q
    i8 117, label %bb.r
    i8 104, label %bb.r
    i8 98, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %16 = zext nneg i8 %.085 to i64
  %17 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -384
  %i.y = load i32, ptr %18, align 4
  %i.z = or i32 %i.y, 20
  store i32 %i.z, ptr %5, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.aa = load ptr, ptr %4, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.163, ptr noundef %i.aa)
  %i.ab = load ptr, ptr %4, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.m
  %19 = zext nneg i8 %.085 to i64
  %20 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %19
  %21 = getelementptr i8, ptr %20, i64 -384
  %i.ag = load i32, ptr %21, align 4
  %i.ah = select i1 %i.o, i32 20, i32 4
  %i.ai = or i32 %i.ag, %i.ah
  br label %.critedge90

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.aj = and i32 %2, 65536
  %.not178 = icmp eq i32 %i.aj, 0
  br i1 %.not178, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96, label %bb.o, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %22 = zext nneg i8 %.085 to i64
  %23 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -384
  %i.ak = load i32, ptr %24, align 4
  %i.al = select i1 %i.o, i32 20, i32 4
  %i.am = or i32 %i.ak, %i.al
  store i32 %i.am, ptr %7, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.an = load ptr, ptr %6, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.164, ptr noundef %i.an)
  %i.ao = load ptr, ptr %6, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.critedge90

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr %3, align 8               ; 2 uses
  %i.au = and i64 %i.at, 8192
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 961), align 1, !range !38
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax, !prof !258
  br i1 %or.cond, label %.critedge, label %bb.p, !prof !258

bb.p:                                             ; preds = %bb.o
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.140)
  br label %.critedge90

.critedge:                                        ; preds = %bb.o
  %25 = zext nneg i8 %.085 to i64
  %26 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -384       ; 2 uses
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ay = load i32, ptr %27, align 4
  %i.az = or i32 %i.ay, 20
  store i32 %i.az, ptr %9, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.ba = load ptr, ptr %8, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.165, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %8, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108: ; preds = %.critedge
  %i.bg = or i64 %i.at, 65536
  store i64 %i.bg, ptr %3, align 8
  %i.bh = load i32, ptr %27, align 4
  %i.bi = or i32 %i.bh, 4
  br label %.critedge90

bb.q:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bj = and i32 %2, 1024
  %.not177 = icmp eq i32 %i.bj, 0
  br i1 %.not177, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %28 = zext nneg i8 %.085 to i64
  %29 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -384
  %i.bk = load i32, ptr %30, align 4
  %i.bl = select i1 %i.o, i32 20, i32 4
  %i.bm = or i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %11, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  %i.bn = load ptr, ptr %10, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.166, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %10, align 8              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117: ; preds = %bb.q
  %31 = zext nneg i8 %.085 to i64
  %32 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -384
  %i.bt = load i32, ptr %33, align 4
  %i.bu = select i1 %i.o, i32 20, i32 4
  %i.bv = or i32 %i.bt, %i.bu
  br label %.critedge90

bb.r:                                             ; preds = %bb.l, %bb.l
  %i.bw = and i32 %2, 128
  %.not176 = icmp eq i32 %i.bw, 0
  br i1 %.not176, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120, label %bb.s, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %34 = zext nneg i8 %.085 to i64
  %35 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %34
  %36 = getelementptr i8, ptr %35, i64 -384
  %i.bx = load i32, ptr %36, align 4
  %i.by = select i1 %i.o, i32 20, i32 4
  %i.bz = or i32 %i.bx, %i.by
  store i32 %i.bz, ptr %13, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
  %i.ca = load ptr, ptr %12, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.167, ptr noundef %i.ca)
  %i.cb = load ptr, ptr %12, align 8              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.critedge90

bb.s:                                             ; preds = %bb.r
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132, !prof !22

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %37 = zext nneg i8 %.085 to i64
  %38 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -384
  %i.cg = load i32, ptr %39, align 4
  %i.ch = or i32 %i.cg, 20
  store i32 %i.ch, ptr %15, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %15)
  %i.ci = load ptr, ptr %14, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.168, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %14, align 8              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126
  %i.cm = load i64, ptr %i.ck, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132: ; preds = %bb.s
  %40 = zext nneg i8 %.085 to i64
  %41 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -384
  %i.co = load i32, ptr %42, align 4
  %i.cp = or i32 %i.co, 4
  br label %.critedge90

bb.t:                                             ; preds = %bb.l
  %i.cq = and i32 %2, 8
  %.not175 = icmp eq i32 %i.cq, 0
  br i1 %.not175, label %bb.u, label %bb.v, !prof !22

bb.u:                                             ; preds = %bb.t
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.169)
  br label %.critedge90

bb.v:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cs = tail call i64 @_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.42) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.cs, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ct = add i32 %.sroa.6.0, %.sroa.4.0.extract.trunc
  br label %bb.x

bb.w:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.161, i64 noundef %.fca.1.insert.i.merged.i)
  br label %.critedge90

bb.x:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.v
  %.0.in = phi i64 [ %i.cs, %bb.v ], [ %.fca.1.insert.i.merged.i, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.sroa.6.1 = phi i32 [ %i.ct, %bb.v ], [ %.fca.1.extract.pre-phi, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ] ; 2 uses
  %.0 = trunc i64 %.0.in to i32                   ; 3 uses
  %i.cu = icmp ult i32 %.0, 1000000
  br i1 %i.cu, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.y, !prof !12

bb.y:                                             ; preds = %bb.x
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.170, i32 noundef %.0, i64 noundef 1000000)
  br label %.critedge90

_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit: ; preds = %bb.x
  %i.cv = select i1 %i.k, i32 15, i32 7
  %i.cw = shl nuw nsw i32 %.0, 8
  %i.cx = or disjoint i32 %i.cw, %i.cv
  br label %.critedge90

.critedge90:                                      ; preds = %bb.e, %bb.w, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.u, %bb.h, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, %bb.y
  %.sroa.0172.0 = phi i32 [ 514, %bb.w ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.bi, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108 ], [ 514, %bb.p ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.bv, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.cp, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.cx, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ], [ 514, %bb.y ], [ 514, %bb.u ], [ 514, %bb.h ], [ 514, %bb.e ]
  %.sroa.18.0 = phi i32 [ %.sroa.6.0, %bb.w ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108 ], [ 0, %bb.p ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.sroa.6.1, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ], [ %.sroa.6.1, %bb.y ], [ 0, %bb.u ], [ %.fca.1.extract.pre-phi, %bb.h ], [ %.fca.1.extract.pre-phi, %bb.e ]
  %.sroa.18.0.insert.ext = zext i32 %.sroa.18.0 to i64
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.0.insert.ext, 32
  %.sroa.0172.0.insert.ext = zext i32 %.sroa.0172.0 to i64
  %.sroa.0172.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0172.0.insert.ext
  ret i64 %.sroa.0172.0.insert.insert
}

declare noundef zeroext i1 @_ZN2v88internal4wasm25CheckHardwareSupportsSimdEv() local_unnamed_addr #3

declare void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.d to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.f = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %.sroa.4.0.extract.shift = and i64 %i.f, 30064771072
  %i.g = icmp ult i64 %i.f, 25769803776
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.05.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %.critedge.i ]
  %.sroa.5.0 = phi i64 [ 4294967296, %bb.c ], [ %.sroa.4.0.extract.shift, %.critedge.i ]
  %.sroa.05.0.insert.ext = and i64 %.sroa.05.0, 4294967295
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.05.0.insert.ext
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not.i = icmp ult ptr %1, %i.b
  br i1 %.not.i, label %bb.b, label %.critedge14.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i64                 ; 2 uses
  %i.f = icmp sgt i8 %i.c, -1
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i5 = icmp ult ptr %i.g, %i.b
  br i1 %.not.i5, label %bb.d, label %.critedge14.i6, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 7
  %i.l = or disjoint i64 %i.k, %i.e               ; 2 uses
  %i.m = icmp sgt i8 %i.h, -1
  br i1 %i.m, label %.critedge.i15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i16 = icmp ult ptr %i.n, %i.b
  br i1 %.not.i16, label %bb.f, label %.critedge14.i17, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 14
  %i.s = or disjoint i64 %i.r, %i.l               ; 2 uses
  %i.t = icmp sgt i8 %i.o, -1
  br i1 %i.t, label %.critedge.i26, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %.not.i27 = icmp ult ptr %i.u, %i.b
  br i1 %.not.i27, label %bb.h, label %.critedge14.i28, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 21
  %i.z = or disjoint i64 %i.y, %i.s               ; 2 uses
  %i.aa = icmp sgt i8 %i.v, -1
  br i1 %i.aa, label %.critedge.i37, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not = icmp ult ptr %i.ab, %i.b
  br i1 %.not, label %bb.j, label %.thread, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.ab, align 1             ; 3 uses
  %i.ad = zext i8 %i.ac to i64
  %i.ae = icmp slt i8 %i.ac, 0
  br i1 %i.ae, label %.thread, label %bb.k, !prof !85

.thread:                                          ; preds = %bb.i, %bb.j
  %i.af = phi ptr [ @.str.71, %bb.i ], [ @.str.72, %bb.j ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.af, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = and i8 %i.ac, 112
  %i.ah = add nsw i8 %i.ag, -1
  %switch.i = icmp ult i8 %i.ah, 111
  br i1 %switch.i, label %.thread92, label %bb.l, !prof !271

.thread92:                                        ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.73)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = shl nuw i64 %i.ad, 57
  %i.aj = shl nuw nsw i64 %i.z, 29
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 29
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i28:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i37:                                    ; preds = %bb.h
  %i.am = shl nuw i64 %i.z, 36
  %i.an = ashr exact i64 %i.am, 36
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i17:                                  ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i26:                                    ; preds = %bb.f
  %i.ao = shl nuw i64 %i.s, 43
  %i.ap = ashr exact i64 %i.ao, 43
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i6:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

end_hunk_1
