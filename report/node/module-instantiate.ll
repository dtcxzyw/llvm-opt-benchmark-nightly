Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-instantiate?download=true
inline.NumInlined: 6065
inline.NumDeleted: 2755
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE:bb.a
  br i1 %switch.i, label %.thread92, label %bb.l, !prof !997

.thread92:                                        ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.188)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = shl nuw i64 %i.ad, 57
  %i.aj = shl nuw nsw i64 %i.z, 29
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 29
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i28:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i37:                                    ; preds = %bb.h
  %i.am = shl nuw i64 %i.z, 36
  %i.an = ashr exact i64 %i.am, 36
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i17:                                  ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i26:                                    ; preds = %bb.f
  %i.ao = shl nuw i64 %i.s, 43
  %i.ap = ashr exact i64 %i.ao, 43
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i6:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i15:                                    ; preds = %bb.d
  %i.aq = shl nuw i64 %i.l, 50
  %i.ar = ashr exact i64 %i.aq, 50
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i:                                    ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i:                                      ; preds = %bb.b
  %i.as = shl nuw i64 %i.e, 57
  %i.at = ashr exact i64 %i.as, 57
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %.critedge.i15, %.critedge14.i6, %.critedge.i37, %.critedge14.i28, %.thread92, %.thread, %bb.l, %.critedge14.i17, %.critedge.i26, %.critedge14.i, %.critedge.i
  %.sroa.6.0 = phi i32 [ 1, %.critedge.i ], [ 0, %.critedge14.i ], [ 2, %.critedge.i15 ], [ 0, %.critedge14.i6 ], [ 3, %.critedge.i26 ], [ 0, %.critedge14.i17 ], [ 4, %.critedge.i37 ], [ 0, %.critedge14.i28 ], [ 0, %.thread ], [ 0, %.thread92 ], [ 5, %bb.l ]
  %.sroa.0.0 = phi i64 [ %i.at, %.critedge.i ], [ 0, %.critedge14.i ], [ %i.ar, %.critedge.i15 ], [ 0, %.critedge14.i6 ], [ %i.ap, %.critedge.i26 ], [ 0, %.critedge14.i17 ], [ %i.an, %.critedge.i37 ], [ 0, %.critedge14.i28 ], [ 0, %.thread ], [ 0, %.thread92 ], [ %i.al, %bb.l ]
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.6.0, 1
  ret { i64, i32 } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #13 comdat align 2 !guid !1261 {
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
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #13 comdat align 2 !guid !1262 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3)
  ret void
}

declare void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #13 comdat align 2 !guid !1263 {
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
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #13 comdat align 2 !guid !1264 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 comdat align 2 !guid !1265 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit.i: ; preds = %bb.c, %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit.i: ; preds = %bb.d, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm7DecoderE, i64 16), ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25, !inline_history !993
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED2Ev.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED2Ev.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12onFirstErrorEv(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 comdat align 2 !guid !1266 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #2 comdat align 2 !guid !1267 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm7DecoderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN2v88internal4wasm7DecoderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25, !inline_history !983
  br label %_ZN2v88internal4wasm7DecoderD2Ev.exit

_ZN2v88internal4wasm7DecoderD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 !guid !1269 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp ult i32 %i.i, -2147483647
  br i1 %i.n, label %bb.c, label %bb.b, !prof !980

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.281) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = mul nuw nsw i64 %.sroa.speculated, 48    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit, !prof !979

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.o) #22
  %.pre.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %.pre.i.i, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.y, null
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit
  %.not1822 = icmp eq ptr %i.y, %.pre
  br i1 %.not1822, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi ptr [ %i.aa, %.lr.ph ], [ %i.w, %.preheader ] ; 2 uses
  %.01623 = phi ptr [ %i.z, %.lr.ph ], [ %i.y, %.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.024, ptr noundef nonnull align 8 dereferenceable(48) %.01623, i64 48, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.01623, i64 48 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 48
  %i.ab = load ptr, ptr %i.a, align 8
  %.not18 = icmp eq ptr %i.z, %i.ab
  br i1 %.not18, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1268

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre25 = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre25, %.loopexit.loopexit ], [ %i.y, %.preheader ], [ null, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit ]
  %i.ad = phi ptr [ %i.z, %.loopexit.loopexit ], [ %i.y, %.preheader ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit ]
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %i.ag
  store ptr %i.ah, ptr %i.a, align 8
  store ptr %i.w, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.sroa.speculated
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.aj, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 !guid !1271 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 184
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp ult i32 %i.i, -2147483647
  br i1 %i.n, label %bb.c, label %bb.b, !prof !980

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.281) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = mul nuw nsw i64 %.sroa.speculated, 184   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit, !prof !979

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.o) #22
  %.pre.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %.pre.i.i, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.y, null
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit
  %.not1822 = icmp eq ptr %i.y, %.pre
  br i1 %.not1822, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi ptr [ %i.aa, %.lr.ph ], [ %i.w, %.preheader ] ; 2 uses
  %.01623 = phi ptr [ %i.z, %.lr.ph ], [ %i.y, %.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.024, ptr noundef nonnull align 8 dereferenceable(184) %.01623, i64 184, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.01623, i64 184 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 184
  %i.ab = load ptr, ptr %i.a, align 8
  %.not18 = icmp eq ptr %i.z, %i.ab
  br i1 %.not18, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1270

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre25 = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre25, %.loopexit.loopexit ], [ %i.y, %.preheader ], [ null, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit ]
  %i.ad = phi ptr [ %i.z, %.loopexit.loopexit ], [ %i.y, %.preheader ], [ %.pre, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit ]
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %i.ag
  store ptr %i.ah, ptr %i.a, align 8
  store ptr %i.w, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw [184 x i8], ptr %i.w, i64 %.sroa.speculated
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.aj, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeI32ConstEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 !guid !1272 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !980

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !980

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 25
  %i.j = ashr exact i32 %i.i, 25
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

.critedge.i.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1014) ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.k to i32
  %i.l = icmp ult i64 %i.k, 25769803776
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i64 %i.k, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.c, %.critedge.i.i.i
  %i.p = phi ptr [ %i.b, %bb.c ], [ %.pre, %.critedge.i.i.i ]
  %.sroa.05.0.i.i = phi i32 [ %i.j, %bb.c ], [ %.sroa.0.0.extract.trunc.i.i, %.critedge.i.i.i ]
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.c ], [ %i.o, %.critedge.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  store ptr %i.p, ptr %i.r, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 5648, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 2, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.722.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr null, ptr %.sroa.924.0..sroa_idx, align 8
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.v = load i8, ptr %i.u, align 8, !range !981, !noundef !982
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !980

bb.d:                                             ; preds = %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8I32ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEi(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.s, i32 noundef %.sroa.05.0.i.i) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %bb.d
  ret i32 %.sroa.5.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1273 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9 = icmp ult ptr %1, %i.b
  br i1 %.not9, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %i.d = add i8 %i.c, 6
  %switch.i = icmp ult i8 %i.d, 5
  br i1 %switch.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i8 %i.c to i32
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.g = icmp ult ptr %i.f, %i.b
  br i1 %i.g, label %bb.f, label %.critedge.i.i.i, !prof !980

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %i.f, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !980

bb.g:                                             ; preds = %bb.f
  %i.i = zext nneg i8 %i.h to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %i.j = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.k = icmp ult i64 %i.j, 25769803776
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i.i, %bb.g
  %.sroa.05.0.i.i = phi i64 [ %i.i, %bb.g ], [ %i.j, %.critedge.i.i.i ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.l = icmp ugt i32 %.sroa.0.0.extract.trunc.i, 4095
  br i1 %i.l, label %bb.h, label %bb.i, !prof !979

bb.h:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.m = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i, 255
  %i.n = load i8, ptr %1, align 1
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw nsw i64 %i.o, 12
  %i.q = or disjoint i64 %i.p, %.sroa.05.0.i.i
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.k:                                             ; preds = %bb.i
  %i.r = shl nuw nsw i64 %i.o, 8
  %i.s = or disjoint i64 %i.r, %.sroa.05.0.i.i
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.018.0.i = phi i64 [ 0, %bb.h ], [ %i.q, %bb.j ], [ %i.s, %bb.k ]
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.018.0.i to i32
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13PopDescriptorENS1_15ModuleTypeIndexE:bb.a
  store i32 2, ptr %i.q, align 8
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.r, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.j, %i.s
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i32 %i.o, 1048576
  br i1 %i.u, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.d, !prof !980

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i8, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 22
  %i.z = load i8, ptr %i.y, align 2, !range !981, !noundef !982
  %i.aa = shl nuw nsw i8 %i.z, 4
  %i.ab = or disjoint i8 %i.aa, 3
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = zext i8 %i.x to i32
  %i.ae = shl nuw nsw i32 %i.ad, 5
  %i.af = or disjoint i32 %i.ae, %i.ac
  %i.ag = shl nuw nsw i32 %i.o, 8
  %i.ah = or i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, 12               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1394
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -152
  %i.am = load i32, ptr %i.al, align 8, !noalias !1394
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1394 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !noalias !1394
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 48
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.am, 1
  %.not.i.i = icmp ugt i32 %i.aw, %i.av
  br i1 %.not.i.i, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit, !prof !979

bb.e:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit
  %i.ax = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 1), !noalias !1394 ; 0 uses
  %.pre = load ptr, ptr %i.ao, align 8, !noalias !1394
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, %bb.e
  %i.ay = phi ptr [ %i.ap, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit ], [ %.pre, %bb.e ] ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.ay, i64 -48 ; 2 uses
  store ptr %scevgep.i, ptr %i.ao, align 8, !noalias !1394
  %.sroa.06.0.copyload.i = load ptr, ptr %scevgep.i, align 8, !noalias !1395
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ay, i64 -40
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1395 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ay, i64 -36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx.i, i64 36, i1 false), !noalias !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1395
  %i.az = icmp eq i32 %.sroa.2.0.copyload.i, %i.ai
  br i1 %i.az, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, !prof !980

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit
  %i.ba = load ptr, ptr %i.a, align 8, !noalias !1395 ; 2 uses
  %i.bb = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i, i32 %i.ai, ptr noundef %i.ba, ptr noundef %i.ba) #22, !noalias !1395
  %i.bc = icmp eq i32 %.sroa.2.0.copyload.i, 514
  %or.cond.i = or i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, label %bb.f, !prof !995

bb.f:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i
  store ptr %.sroa.06.0.copyload.i, ptr %3, align 8, !noalias !1395
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1395
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, i64 36, i1 false), !noalias !1395
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %3, i32 %i.ai), !noalias !1395
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1395
  %i.bd = load ptr, ptr %i.ao, align 8, !noalias !1395
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, %bb.b
  ret void
}

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface9StructNewEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_20StructIndexImmediateERKNS2_5ValueEPSD_PSC_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface16StructNewDefaultEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_20StructIndexImmediateERKNS2_5ValueEPSC_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface8ArrayNewEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS2_5ValueESE_PSC_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface15ArrayNewDefaultEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS2_5ValueEPSC_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 !guid !1398 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.232) #23
  unreachable

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.thread, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.thread: ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE18_M_fill_initializeEmRKS3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.c = shl nuw nsw i64 %1, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 6 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8
  %.pre.i.i.i.i.i = load i32, ptr %2, align 4     ; 2 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %i.h = shl nuw nsw i64 %n.vec, 2
  %i.i = getelementptr i8, ptr %i.d, i64 %i.h     ; 2 uses
  %i.j = and i64 %1, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE18_M_fill_initializeEmRKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.preheader.i.i.i.i.i ], [ %i.i, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i, ptr %.09.i.i.i.i.i, align 4
  %i.n = add nsw i64 %.068.i.i.i.i.i, -1          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE18_M_fill_initializeEmRKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1397

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE18_M_fill_initializeEmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.e, %middle.block ], [ %i.e, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.i, %middle.block ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8
  ret void
}

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface13ArrayNewFixedEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateEPKNS2_5ValueEPSF_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface6RefI31EPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS2_5ValueEPS9_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface4UnOpEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEENS1_10WasmOpcodeERKNS2_5ValueEPSA_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 noundef %1) local_unnamed_addr #13 comdat align 2 !guid !1400 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = shl nsw i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.speculated, 144115188075855872
  br i1 %i.l, label %bb.b, label %bb.e, !prof !979

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %.sroa.speculated, 288230376151711744
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = shl nuw i64 48, %i.k
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt18uninitialized_moveIPN2v88internal4wasm27ConstantExpressionInterface5ValueES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.07.i.i.i.i, i64 48, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  %i.v = icmp eq ptr %i.t, %i.r
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal4wasm27ConstantExpressionInterface5ValueES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1399

_ZSt18uninitialized_moveIPN2v88internal4wasm27ConstantExpressionInterface5ValueES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = shl nuw i64 1, %i.k
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.x, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  store ptr %i.p, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.w
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #13 comdat align 2 !guid !1401 {
_ZSt9destroy_nIPN2v88internal4wasm27ConstantExpressionInterface5ValueElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal4wasm27ConstantExpressionInterface5ValueElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal4wasm27ConstantExpressionInterface5ValueElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #13 comdat align 2 !guid !1402 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjjS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjjS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #13 comdat align 2 !guid !1403 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr dead_on_unwind noalias writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 %2) local_unnamed_addr #2 comdat align 2 !guid !1404 {
bb.a:
  %3 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 6 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [48 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.h = icmp eq i32 %.sroa.2.0.copyload, %2
  br i1 %i.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !980

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload, i32 %2, ptr noundef %i.j, ptr noundef %i.j) #22
  %i.l = icmp eq i32 %.sroa.2.0.copyload, 514
  %or.cond = or i1 %i.l, %i.k
  %i.m = icmp eq i32 %2, 514
  %or.cond10 = or i1 %i.m, %or.cond
  br i1 %or.cond10, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %bb.b, !prof !995

bb.b:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  store ptr %.sroa.06.0.copyload, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6, i64 36, i1 false)
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %i.a, i32 noundef %i.c, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %3, i32 %2)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit: ; preds = %bb.a, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = load i32, ptr %i.b, align 8              ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.b, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #13 comdat align 2 !guid !1405 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #13 comdat align 2 !guid !1406 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr dead_on_unwind noalias writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 %2) local_unnamed_addr #2 comdat align 2 !guid !1407 {
bb.a:
  %3 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 6 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [48 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.h = icmp eq i32 %.sroa.2.0.copyload, %2
  br i1 %i.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !980

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload, i32 %2, ptr noundef %i.j, ptr noundef %i.j) #22
  %i.l = icmp eq i32 %.sroa.2.0.copyload, 514
  %or.cond = or i1 %i.l, %i.k
  %i.m = icmp eq i32 %2, 514
  %or.cond10 = or i1 %i.m, %or.cond
  br i1 %or.cond10, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %bb.b, !prof !995

bb.b:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  store ptr %.sroa.06.0.copyload, ptr %3, align 8
end_hunk_1
