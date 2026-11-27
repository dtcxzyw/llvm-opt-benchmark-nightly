Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-decoder?download=true
inline.NumInlined: 6144
inline.NumDeleted: 2642
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN2v88internal4wasm17ModuleDecoderImpl17consume_heap_typeEv:bb.a
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = and i32 %.sroa.0.0.extract.trunc, 268435427
  %i.n = icmp ne i32 %i.m, 514
  %i.o = and i32 %.sroa.0.0.extract.trunc, 3
  %i.p = icmp eq i32 %i.o, 3
  %or.cond = and i1 %i.n, %i.p
  br i1 %or.cond, label %bb.b, label %_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit, !prof !1129

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.r = lshr i32 %.sroa.0.0.extract.trunc, 8
  %i.s = and i32 %i.r, 1048575                    ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %.not.i = icmp ugt i64 %i.ab, %i.t
  br i1 %.not.i, label %_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.l, ptr noundef nonnull @.str.174, i32 noundef %i.s)
  %.pre12.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit

_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.pre12 = phi ptr [ %i.l, %bb.a ], [ %i.l, %bb.b ], [ %.pre12.pre, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %.pre12, i32 noundef %.sroa.6.0.extract.trunc) #25
  %i.ah = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 %.sroa.0.0.extract.trunc) #25
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit
  %i.al = phi ptr [ %.pre, %bb.d ], [ %.pre12, %_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %.not.i9 = icmp ugt i32 %.sroa.6.0.extract.trunc, %i.ar
  br i1 %.not.i9, label %bb.g, label %bb.f, !prof !1118

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.6.0.extract.shift
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.al, ptr noundef nonnull @.str.1136, i32 noundef %.sroa.6.0.extract.trunc)
  %i.at = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit

_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit: ; preds = %bb.f, %bb.g
  %storemerge.i = phi ptr [ %i.at, %bb.g ], [ %i.as, %bb.f ]
  store ptr %storemerge.i, ptr %i.a, align 8
  ret i32 %.sroa.0.0.extract.trunc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm17ModuleDecoderImpl18consume_value_typeEPKNS1_10WasmModuleE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !guid !1469 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.f = load i8, ptr %i.e, align 8
  %i.g = icmp eq i8 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.08.0.copyload = load i32, ptr %i.h, align 8
  %.sroa.08.0 = select i1 %i.g, i32 %.sroa.08.0.copyload, i32 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull %0, ptr noundef %i.b, i32 %.sroa.08.0, ptr noundef %i.j) ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.k to i32 ; 4 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.k, 32    ; 2 uses
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 3 uses
  %i.l = and i64 %i.k, 1
  %or.cond16.not = icmp eq i64 %i.l, 0
  br i1 %or.cond16.not, label %_ZN2v88internal4wasm17value_type_reader17ValidateValueTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_9ValueTypeE.exit, label %bb.b, !prof !1470

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = tail call noundef zeroext i1 @_ZN2v88internal4wasm17value_type_reader16ValidateHeapTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_8HeapTypeE(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef %i.m, i32 %.sroa.0.0.extract.trunc) ; 0 uses
  br label %_ZN2v88internal4wasm17value_type_reader17ValidateValueTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_9ValueTypeE.exit

_ZN2v88internal4wasm17value_type_reader17ValidateValueTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_9ValueTypeE.exit: ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %.not.i = icmp eq i32 %i.q, -1
  %i.r = icmp ne ptr %1, null
  %or.cond = and i1 %i.r, %.not.i
  %i.s = and i32 %.sroa.0.0.extract.trunc, 3
  %i.t = icmp eq i32 %i.s, 3
  %or.cond18 = and i1 %i.t, %or.cond
  br i1 %or.cond18, label %bb.c, label %_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit

bb.c:                                             ; preds = %_ZN2v88internal4wasm17value_type_reader17ValidateValueTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_9ValueTypeE.exit
  %i.u = lshr i64 %i.k, 8
  %i.v = and i64 %i.u, 1048575                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = icmp ugt i64 %i.ad, %i.v
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  %i.ah = load i8, ptr %i.ag, align 2, !range !1121, !noundef !1122
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i32 %.sroa.0.0.extract.trunc, -241
  %i.al = shl nuw nsw i8 %i.ah, 4
  %i.am = zext nneg i8 %i.al to i32
  %i.an = zext i8 %i.aj to i32
  %i.ao = shl nuw nsw i32 %i.an, 5
  %i.ap = or disjoint i32 %i.ak, %i.am
  %i.aq = or i32 %i.ap, %i.ao
  br label %_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit: ; preds = %bb.c, %_ZN2v88internal4wasm17value_type_reader17ValidateValueTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_9ValueTypeE.exit
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZN2v88internal4wasm17value_type_reader17ValidateValueTypeINS1_7Decoder17FullValidationTagEEEbPS4_PKhPKNS1_10WasmModuleENS1_9ValueTypeE.exit ], [ %i.aq, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = load ptr, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.at, i32 noundef %.sroa.8.0.extract.trunc) #25
  %i.ax = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 %.sroa.0.0) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %.not.i14 = icmp ugt i32 %.sroa.8.0.extract.trunc, %i.bh
  br i1 %.not.i14, label %bb.g, label %bb.f, !prof !1118

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.8.0.extract.shift
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.bd, ptr noundef nonnull @.str.1136, i32 noundef %.sroa.8.0.extract.trunc)
  %i.bj = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit

_ZN2v88internal4wasm7Decoder13consume_bytesEjPKc.exit: ; preds = %bb.f, %bb.g
  %storemerge.i = phi ptr [ %i.bj, %bb.g ], [ %i.bi, %bb.f ]
  store ptr %storemerge.i, ptr %i.a, align 8
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm9ValueTypeELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !guid !1473 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !1118

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 6 uses
  %i.p = load ptr, ptr %0, align 8                ; 5 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = add i64 %i.s, -4
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.af = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.af, ptr %.08.i.i.i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ai = icmp eq ptr %i.ag, %i.q
  br i1 %i.ai, label %_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1472

_ZSt18uninitialized_moveIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.aj = shl nuw i64 1, %i.j
  %i.ak = ptrtoint ptr %i.m to i64
  %i.al = sub i64 %i.ak, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm9ValueTypeELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  store ptr %i.an, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm9ValueTypeELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 !guid !1474 {
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
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #1 comdat !guid !1475 {
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
  br i1 %i.f, label %bb.b, label %bb.c, !prof !1118

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
  br i1 %.not.i, label %bb.d, label %bb.w, !prof !1117

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
  %i.i = zext nneg i8 %.0.i.i to i64
  %i.j = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -384
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 4
  br label %bb.w

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = and i32 %2, 65536
  %.not91 = icmp eq i32 %i.n, 0
  br i1 %.not91, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34, label %bb.f, !prof !1118

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.o = zext nneg i8 %.0.i.i to i64
  %i.p = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -384
  %i.r = load i32, ptr %i.q, align 4
  %i.s = or i32 %i.r, 4
  store i32 %i.s, ptr %5, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.t = load ptr, ptr %4, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.139, ptr noundef %i.t)
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34
  %i.x = load i64, ptr %i.v, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE:bb.a
  %i.m = icmp sgt i8 %i.h, -1
  br i1 %i.m, label %.critedge.i5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i6 = icmp ult ptr %i.n, %i.b
  br i1 %.not.i6, label %bb.f, label %.critedge14.i7, !prof !1117

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = or disjoint i32 %i.r, %i.l               ; 2 uses
  %i.t = icmp sgt i8 %i.o, -1
  br i1 %i.t, label %.critedge.i8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %.not.i9 = icmp ult ptr %i.u, %i.b
  br i1 %.not.i9, label %bb.h, label %.critedge14.i10, !prof !1117

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = or disjoint i32 %i.y, %i.s               ; 2 uses
  %i.aa = icmp sgt i8 %i.v, -1
  br i1 %i.aa, label %.critedge.i11, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not = icmp ult ptr %i.ab, %i.b
  br i1 %.not, label %bb.j, label %.thread, !prof !1117

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.k, !prof !1124

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ae = phi ptr [ @.str.71, %bb.i ], [ @.str.72, %bb.j ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.ae, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ag = shl i32 %i.af, 28
  %i.ah = or disjoint i32 %i.ag, %i.z
  %i.ai = and i32 %i.af, 120
  %.off.i = add nsw i32 %i.ai, -1
  %switch.i = icmp ult i32 %.off.i, 119
  br i1 %switch.i, label %.thread56, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, !prof !1131

.thread56:                                        ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.73)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i10:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i11:                                    ; preds = %bb.h
  %i.aj = shl nuw i32 %i.z, 4
  %i.ak = ashr exact i32 %i.aj, 4
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i7:                                   ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i8:                                     ; preds = %bb.f
  %i.al = shl nuw i32 %i.s, 11
  %i.am = ashr exact i32 %i.al, 11
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i4:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i5:                                     ; preds = %bb.d
  %i.an = shl nuw i32 %i.l, 18
  %i.ao = ashr exact i32 %i.an, 18
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i:                                    ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i:                                      ; preds = %bb.b
  %i.ap = shl nuw i32 %i.e, 25
  %i.aq = ashr exact i32 %i.ap, 25
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %.critedge.i5, %.critedge14.i4, %.critedge14.i7, %.critedge.i8, %.thread, %.thread56, %bb.k, %.critedge14.i10, %.critedge.i11, %.critedge14.i, %.critedge.i
  %.sroa.6.0 = phi i64 [ 4294967296, %.critedge.i ], [ 0, %.critedge14.i ], [ 8589934592, %.critedge.i5 ], [ 0, %.critedge14.i4 ], [ 12884901888, %.critedge.i8 ], [ 0, %.critedge14.i7 ], [ 17179869184, %.critedge.i11 ], [ 0, %.critedge14.i10 ], [ 0, %.thread ], [ 0, %.thread56 ], [ 21474836480, %bb.k ]
  %.sroa.0.0 = phi i32 [ %i.aq, %.critedge.i ], [ 0, %.critedge14.i ], [ %i.ao, %.critedge.i5 ], [ 0, %.critedge14.i4 ], [ %i.am, %.critedge.i8 ], [ 0, %.critedge14.i7 ], [ %i.ak, %.critedge.i11 ], [ 0, %.critedge14.i10 ], [ 0, %.thread ], [ 0, %.thread56 ], [ %i.ah, %bb.k ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #1 comdat align 2 !guid !1559 {
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #28, !inline_history !1133
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED2Ev.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED2Ev.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12onFirstErrorEv(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #1 comdat align 2 !guid !1560 {
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
define linkonce_odr hidden void @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 comdat align 2 !guid !1561 {
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
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !1120
  br label %_ZN2v88internal4wasm7DecoderD2Ev.exit

_ZN2v88internal4wasm7DecoderD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !guid !1563 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.n, label %bb.c, label %bb.b, !prof !1117

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.264) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = mul nuw nsw i64 %.sroa.speculated, 48    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm27ConstantExpressionInterface5ValueEA_S5_EEPT_m.exit, !prof !1118

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.o) #25
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
  br i1 %.not18, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1562

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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !guid !1565 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 184
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.n, label %bb.c, label %bb.b, !prof !1117

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.264) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = mul nuw nsw i64 %.sroa.speculated, 184   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11ControlBaseINS3_27ConstantExpressionInterface5ValueENS3_7Decoder17FullValidationTagEEEA_S9_EEPT_m.exit, !prof !1118

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.o) #25
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
  br i1 %.not18, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !1564

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
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeI32ConstEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #1 comdat align 2 !guid !1566 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !1117

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !1117

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 25
  %i.j = ashr exact i32 %i.i, 25
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

.critedge.i.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.993) ; 3 uses
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
  %i.v = load i8, ptr %i.u, align 8, !range !1121, !noundef !1122
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !1117

bb.d:                                             ; preds = %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8I32ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEi(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.s, i32 noundef %.sroa.05.0.i.i) #25
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %bb.d
  ret i32 %.sroa.5.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !guid !1567 {
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
  br i1 %i.g, label %bb.f, label %.critedge.i.i.i, !prof !1117

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %i.f, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !1117

bb.g:                                             ; preds = %bb.f
  %i.i = zext nneg i8 %i.h to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %i.j = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.991) ; 2 uses
  %i.k = icmp ult i64 %i.j, 25769803776
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i.i, %bb.g
  %.sroa.05.0.i.i = phi i64 [ %i.i, %bb.g ], [ %i.j, %.critedge.i.i.i ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.l = icmp ugt i32 %.sroa.0.0.extract.trunc.i, 4095
  br i1 %i.l, label %bb.h, label %bb.i, !prof !1118

bb.h:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.992, i32 noundef %.sroa.0.0.extract.trunc.i)
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
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13PopDescriptorENS1_15ModuleTypeIndexE:bb.a
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
  br i1 %i.u, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.d, !prof !1117

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.172) #27
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i8, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 22
  %i.z = load i8, ptr %i.y, align 2, !range !1121, !noundef !1122
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
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1685
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -152
  %i.am = load i32, ptr %i.al, align 8, !noalias !1685
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1685 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !noalias !1685
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 48
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.am, 1
  %.not.i.i = icmp ugt i32 %i.aw, %i.av
  br i1 %.not.i.i, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit, !prof !1118

bb.e:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit
  %i.ax = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 1), !noalias !1685 ; 0 uses
  %.pre = load ptr, ptr %i.ao, align 8, !noalias !1685
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, %bb.e
  %i.ay = phi ptr [ %i.ap, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit ], [ %.pre, %bb.e ] ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.ay, i64 -48 ; 2 uses
  store ptr %scevgep.i, ptr %i.ao, align 8, !noalias !1685
  %.sroa.06.0.copyload.i = load ptr, ptr %scevgep.i, align 8, !noalias !1686
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ay, i64 -40
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1686 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ay, i64 -36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx.i, i64 36, i1 false), !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1686
  %i.az = icmp eq i32 %.sroa.2.0.copyload.i, %i.ai
  br i1 %i.az, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, !prof !1117

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit
  %i.ba = load ptr, ptr %i.a, align 8, !noalias !1686 ; 2 uses
  %i.bb = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i, i32 %i.ai, ptr noundef %i.ba, ptr noundef %i.ba) #25, !noalias !1686
  %i.bc = icmp eq i32 %.sroa.2.0.copyload.i, 514
  %or.cond.i = or i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, label %bb.f, !prof !1130

bb.f:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i
  store ptr %.sroa.06.0.copyload.i, ptr %3, align 8, !noalias !1686
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1686
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, i64 36, i1 false), !noalias !1686
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef 0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %3, i32 %i.ai), !noalias !1686
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1686
  %i.bd = load ptr, ptr %i.ao, align 8, !noalias !1686
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
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 !guid !1689 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1032) #27
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
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26 ; 6 uses
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
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1687

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
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EE18_M_fill_initializeEmRKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1688

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !guid !1691 {
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
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 144115188075855871
  br i1 %i.l, label %bb.b, label %bb.e, !prof !1118

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 288230376151711743
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = shl nuw i64 48, %i.k
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 4 uses
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
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal4wasm27ConstantExpressionInterface5ValueES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1690

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #7 comdat align 2 !guid !1692 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #28
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal4wasm27ConstantExpressionInterface5ValueElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #7 comdat align 2 !guid !1693 {
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjjS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #7 comdat align 2 !guid !1694 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr dead_on_unwind noalias writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 %2) local_unnamed_addr #4 comdat align 2 !guid !1695 {
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
  br i1 %i.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !1117

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload, i32 %2, ptr noundef %i.j, ptr noundef %i.j) #25
  %i.l = icmp eq i32 %.sroa.2.0.copyload, 514
  %or.cond = or i1 %i.l, %i.k
  %i.m = icmp eq i32 %2, 514
  %or.cond10 = or i1 %i.m, %or.cond
  br i1 %or.cond10, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %bb.b, !prof !1130

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #7 comdat align 2 !guid !1696 {
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #7 comdat align 2 !guid !1697 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr dead_on_unwind noalias writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 %2) local_unnamed_addr #4 comdat align 2 !guid !1698 {
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
  br i1 %i.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !1117

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload, i32 %2, ptr noundef %i.j, ptr noundef %i.j) #25
  %i.l = icmp eq i32 %.sroa.2.0.copyload, 514
  %or.cond = or i1 %i.l, %i.k
  %i.m = icmp eq i32 %2, 514
  %or.cond10 = or i1 %i.m, %or.cond
  br i1 %or.cond10, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit, label %bb.b, !prof !1130

bb.b:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  store ptr %.sroa.06.0.copyload, ptr %3, align 8
end_hunk_2
