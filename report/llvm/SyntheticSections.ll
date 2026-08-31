Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SyntheticSections?download=true
inline.NumInlined: 3034
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK3lld4wasm12StartSection8isNeededEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm12StartSection9writeBodyEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 992), align 8, !tbaa !438
  %i.c = tail call noundef i32 @_ZNK3lld4wasm14FunctionSymbol16getFunctionIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %i.b) #23
  %i.d = zext i32 %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !128
  store ptr @.str.50, ptr %1, align 8, !tbaa !116
  store i8 3, ptr %i.e, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(34) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

declare noundef i32 @_ZNK3lld4wasm14FunctionSymbol16getFunctionIndexEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK3lld4wasm14FunctionSymbol13hasTableIndexEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN3lld4wasm14FunctionSymbol13setTableIndexEj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm11ElemSection9writeBodyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"struct.llvm::wasm::WasmInitExpr", align 8 ; 10 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !128
  store ptr @.str.51, ptr %1, align 8, !tbaa !116
  store i8 3, ptr %i.b, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(34) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1024), align 8, !tbaa !404
  %i.e = call noundef i32 @_ZNK3lld4wasm11TableSymbol14getTableNumberEv(ptr noundef nonnull align 8 dereferenceable(100) %i.d) #23 ; 2 uses
  %.not = icmp eq i32 %i.e, 0                     ; 3 uses
  %spec.select = select i1 %.not, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !128
  store ptr @.str.52, ptr %2, align 8, !tbaa !116
  store i8 3, ptr %i.f, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(34) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !128
  store ptr @.str.53, ptr %3, align 8, !tbaa !116
  store i8 3, ptr %i.i, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(34) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 0, ptr %4, align 8, !tbaa !426
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1048), align 8, !tbaa !8, !range !102, !noundef !103
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN3lld4wasm8intConstEmb.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 35, ptr %i.n, align 8, !tbaa !429
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1008), align 8, !tbaa !414
  %i.p = call noundef i32 @_ZNK3lld4wasm12GlobalSymbol14getGlobalIndexEv(ptr noundef nonnull align 8 dereferenceable(100) %i.o) #23
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !116
  br label %bb.e

_ZN3lld4wasm8intConstEmb.exit:                    ; preds = %bb.c
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 116), align 4, !tbaa !285, !range !102, !noundef !103
  %i.s = trunc nuw i8 %i.r to i1
  %.val.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 115), align 1, !range !102
  %i.t = trunc nuw i8 %.val.i to i1
  %.0.i = select i1 %i.s, i1 %i.t, i1 false       ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 176), align 8, !tbaa !406 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %.sroa.526.sroa.5.0.extract.shift = and i64 %i.u, -4294967296
  %.sink.i = select i1 %.0.i, i8 66, i8 65
  store i8 0, ptr %4, align 8, !tbaa !116
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.sink.i, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !116
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.526.sroa.5.0.insert.ext = select i1 %.0.i, i64 %.sroa.526.sroa.5.0.extract.shift, i64 0
  %.sroa.526.sroa.0.0.insert.ext = and i64 %i.u, 4294967295
  %.sroa.526.sroa.0.0.insert.insert = or disjoint i64 %.sroa.526.sroa.5.0.insert.ext, %.sroa.526.sroa.0.0.insert.ext
  store i64 %.sroa.526.sroa.0.0.insert.insert, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %_ZN3lld4wasm8intConstEmb.exit, %bb.d
  call void @_ZN3lld4wasm13writeInitExprERN4llvm11raw_ostreamERKNS1_4wasm12WasmInitExprE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %4) #23
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !128
  store ptr @.str.54, ptr %5, align 8, !tbaa !116
  store i8 3, ptr %i.v, align 8, !tbaa !131
  call void @_ZN3lld4wasm7writeU8ERN4llvm11raw_ostreamEhRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(34) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !128
  store ptr @.str.55, ptr %6, align 8, !tbaa !116
  store i8 3, ptr %i.af, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !439 ; 2 uses
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !439 ; 2 uses
  %.not2728 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not2728, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 33
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.021.029 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ao, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.021.029, align 8, !tbaa !408
  %i.am = call noundef i32 @_ZNK3lld4wasm14FunctionSymbol16getFunctionIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %i.al) #23
  %i.an = zext i32 %i.am to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i8 1, ptr %i.ak, align 1, !tbaa !128
  store ptr @.str.50, ptr %7, align 8, !tbaa !116
  store i8 3, ptr %i.aj, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(34) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not27, label %._crit_edge, label %bb.h
}

declare noundef i32 @_ZNK3lld4wasm11TableSymbol14getTableNumberEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm16DataCountSectionC2EN4llvm8ArrayRefIPNS0_13OutputSegmentEEE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #1 align 2 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !115
  store i8 0, ptr %i.a, align 8, !tbaa !116
  call void @_ZN3lld4wasm16SyntheticSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 12, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
  %i.c = load ptr, ptr %3, align 8, !tbaa !156    ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.e = load i64, ptr %i.a, align 8, !tbaa !116
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN3lld4wasm16DataCountSectionE, i64 16), ptr %0, align 8, !tbaa !120
  %.not6.i.i.i = icmp eq i64 %2, 0
  br i1 %.not6.i.i.i, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1050), align 2, !range !102 ; 5 uses
  %i.h = add i64 %2, 2305843009213693951
  %i.i = and i64 %i.h, 2305843009213693951        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp samesign ult i64 %i.i, 3
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.j, 4611686018427387900
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i.i.i.new
  %.08.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.3, %bb.a ]
  %.057.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.new ], [ %i.w, %bb.a ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.a ]
  %.05.val.i.i.i = load ptr, ptr %.057.i.i.i, align 8, !tbaa !440
  %i.l = getelementptr i8, ptr %.05.val.i.i.i, i64 16
  %.05.val.val.i.i.i = load i8, ptr %i.l, align 8, !tbaa !441, !range !102, !noundef !103
  %i.m = trunc nuw i8 %.05.val.val.i.i.i to i1
  %narrow.i.i.i = select i1 %i.m, i8 %i.g, i8 1
  %4 = zext nneg i8 %narrow.i.i.i to i32
  %spec.select.i.i.i = add i32 %.08.i.i.i, %4
  %i.n = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8
  %.05.val.i.i.i.1 = load ptr, ptr %i.n, align 8, !tbaa !440
  %i.o = getelementptr i8, ptr %.05.val.i.i.i.1, i64 16
  %.05.val.val.i.i.i.1 = load i8, ptr %i.o, align 8, !tbaa !441, !range !102, !noundef !103
  %i.p = trunc nuw i8 %.05.val.val.i.i.i.1 to i1
  %narrow.i.i.i.1 = select i1 %i.p, i8 %i.g, i8 1
  %5 = zext nneg i8 %narrow.i.i.i.1 to i32
  %spec.select.i.i.i.1 = add i32 %spec.select.i.i.i, %5
  %i.q = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 16
  %.05.val.i.i.i.2 = load ptr, ptr %i.q, align 8, !tbaa !440
  %i.r = getelementptr i8, ptr %.05.val.i.i.i.2, i64 16
  %.05.val.val.i.i.i.2 = load i8, ptr %i.r, align 8, !tbaa !441, !range !102, !noundef !103
  %i.s = trunc nuw i8 %.05.val.val.i.i.i.2 to i1
  %narrow.i.i.i.2 = select i1 %i.s, i8 %i.g, i8 1
  %6 = zext nneg i8 %narrow.i.i.i.2 to i32
  %spec.select.i.i.i.2 = add i32 %spec.select.i.i.i.1, %6
  %i.t = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 24
  %.05.val.i.i.i.3 = load ptr, ptr %i.t, align 8, !tbaa !440
  %i.u = getelementptr i8, ptr %.05.val.i.i.i.3, i64 16
  %.05.val.val.i.i.i.3 = load i8, ptr %i.u, align 8, !tbaa !441, !range !102, !noundef !103
  %i.v = trunc nuw i8 %.05.val.val.i.i.i.3 to i1
  %narrow.i.i.i.3 = select i1 %i.v, i8 %i.g, i8 1
  %7 = zext nneg i8 %narrow.i.i.i.3 to i32
  %spec.select.i.i.i.3 = add i32 %spec.select.i.i.i.2, %7 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa", label %bb.a, !llvm.loop !448

"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa": ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa", %.lr.ph.i.i.i
  %.08.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.3, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ]
  %.057.i.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.w, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.08.i.i.i.epil = phi i32 [ %.08.i.i.i.epil.init, %.epil.preheader ], [ %spec.select.i.i.i.epil, %bb.b ]
  %.057.i.i.i.epil = phi ptr [ %.057.i.i.i.epil.init, %.epil.preheader ], [ %i.z, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %.05.val.i.i.i.epil = load ptr, ptr %.057.i.i.i.epil, align 8, !tbaa !440
  %i.x = getelementptr i8, ptr %.05.val.i.i.i.epil, i64 16
  %.05.val.val.i.i.i.epil = load i8, ptr %i.x, align 8, !tbaa !441, !range !102, !noundef !103
  %i.y = trunc nuw i8 %.05.val.val.i.i.i.epil to i1
  %narrow.i.i.i.epil = select i1 %i.y, i8 %i.g, i8 1
  %8 = zext nneg i8 %narrow.i.i.i.epil to i32
  %spec.select.i.i.i.epil = add i32 %.08.i.i.i.epil, %8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.057.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit", label %bb.b, !llvm.loop !449

"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit": ; preds = %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa", %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa.i.i.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %spec.select.i.i.i.3, %"_ZN4llvm8count_ifIRNS_8ArrayRefIPN3lld4wasm13OutputSegmentEEEZNS3_16DataCountSectionC1ES6_E3$_0EEDaOT_T0_.exit.loopexit.unr-lcssa" ], [ %spec.select.i.i.i.epil, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.0.lcssa.i.i.i, ptr %i.aa, align 8, !tbaa !451
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld4wasm16SyntheticSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !114
  %i.d = load ptr, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !161
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !156
  %i.i = load i64, ptr %i.b, align 8, !tbaa !161
  store i64 %i.i, ptr %i.c, align 8, !tbaa !116
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !116
  store i8 %i.k, ptr %i.j, align 1, !tbaa !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !115
  %i.n = load ptr, ptr %3, align 8, !tbaa !156
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3lld4wasm13OutputSectionE, i64 16), ptr %0, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !115
  store i8 0, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.s, align 8, !tbaa !453
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.t, align 4, !tbaa !454
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !114
  %i.w = load ptr, ptr %3, align 8, !tbaa !156    ; 2 uses
  %i.x = load i64, ptr %i.m, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.x, ptr %i.a, align 8, !tbaa !161
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.z, ptr %i.u, align 8, !tbaa !156
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !161
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !116
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN3lld4wasm13OutputSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !116
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !116
  br label %_ZN3lld4wasm13OutputSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.w, i64 %i.x, i1 false)
  br label %_ZN3lld4wasm13OutputSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3lld4wasm13OutputSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !161 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !115
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %3, align 8, !tbaa !156   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3lld4wasm13OutputSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !116
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3lld4wasm13OutputSectionC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN3lld4wasm16SyntheticSectionE, i64 16), ptr %0, align 8, !tbaa !120
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ao, align 8, !tbaa !115
  store i8 0, ptr %i.an, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.aq, align 8, !tbaa !117
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.ar, align 8, !tbaa !118
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 1, ptr %i.as, align 4, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %i.ap, align 8, !tbaa !120
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.am, ptr %i.au, align 8, !tbaa !122
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef null, i64 noundef 0, i32 noundef 0) #23
  %i.av = load i64, ptr %i.e, align 8, !tbaa !115 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load ptr, ptr %2, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.az, align 1, !tbaa !128
  store ptr @.str.104, ptr %4, align 8, !tbaa !116
  store i8 3, ptr %i.ay, align 8, !tbaa !131
  call void @_ZN3lld4wasm8writeStrERN4llvm11raw_ostreamENS1_9StringRefERKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr %i.ax, i64 %i.av, ptr noundef nonnull align 8 dereferenceable(34) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm16DataCountSection9writeBodyEv(ptr noundef nonnull align 8 dereferenceable(188) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i32, ptr %i.b, align 8, !tbaa !451
  %i.d = zext i32 %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !128
  store ptr @.str.56, ptr %1, align 8, !tbaa !116
  store i8 3, ptr %i.e, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(34) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3lld4wasm16DataCountSection8isNeededEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !451
  %.not = icmp ne i32 %i.b, 0
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 112), align 8, !range !102
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 40), align 8, !range !102
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  %i.h = select i1 %.not, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZNSt3mapIN4llvm9StringRefESt6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS6_EESt4lessIS1_ESaISt4pairIKS1_S8_EEEixERSC_:bb.a

bb.k:                                             ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i16, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS3_.exit.thread.i
  %i.ce = phi i1 [ %i.cd, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i16 ], [ true, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS3_.exit.thread.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ce, ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.12.2.i8.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !315
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !315
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i, %.thread.i.i.i27.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS3_.exit.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i, %.thread.i.i.i62.i.i
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.021.2.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS3_.exit.i ], [ %.08.lcssa.i.i.i26, %.thread.i.i.i62.i.i ], [ %.08.lcssa.i.i.i26, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i ], [ %.sroa.01.0.i, %.thread.i.i.i27.i ], [ %.sroa.01.0.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 72) #24
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit: ; preds = %.thread.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, %bb.k, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit
  %.sroa.024.0 = phi ptr [ %.sroa.01.0.ph.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_St6vectorIZN3lld4wasm14LinkingSection9writeBodyEvE11ComdatEntrySaIS8_EEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ], [ %i.q, %bb.k ], [ %.19.i.i.i, %.thread.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 48
  ret ptr %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm14LinkingSection11addToSymtabEPNS0_6SymbolE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !228
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  tail call void @_ZN3lld4wasm6Symbol20setOutputSymbolIndexEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %i.i) #23
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !226  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !242
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.j, align 8, !tbaa !168
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.b, align 8, !tbaa !226
  br label %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12emplace_backIJRPS2_EEERS4_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !228  ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #25
  unreachable

_ZNKSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !168
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !242
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !228
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !242
  br label %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12emplace_backIJRPS2_EEERS4_DpOT_.exit

_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE12emplace_backIJRPS2_EEERS4_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKN3lld4wasm6SymbolESaIS4_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  ret void
}

declare void @_ZN3lld4wasm6Symbol20setOutputSymbolIndexEj(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK3lld4wasm11NameSection17numNamedFunctionsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3outE, i64 24), align 8, !tbaa !349
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !248  ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3outE, i64 16), align 8, !tbaa !486 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !328  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !328  ; 2 uses
  %.not8 = icmp eq ptr %i.f, %i.h
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ %i.c, %bb.a ], [ %.1, %bb.d ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.010 = phi i32 [ %.1, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.05.09 = phi ptr [ %i.q, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.05.09, align 8, !tbaa !329 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !502
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !502
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = add i32 %.010, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %.010, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK3lld4wasm11NameSection15numNamedGlobalsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3outE, i64 24), align 8, !tbaa !349
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.c = load i32, ptr %i.b, align 4, !tbaa !231  ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3outE, i64 48), align 8, !tbaa !503 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !386  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !386  ; 2 uses
  %.not9 = icmp eq ptr %i.f, %i.h
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.c, %bb.a ], [ %spec.select, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !167
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !164
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %.0.lcssa, %i.q
  ret i32 %i.r

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %spec.select, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.06.010 = phi ptr [ %i.v, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.06.010, align 8, !tbaa !388
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !161
  %i.t = icmp ne i64 %.sroa.2.0.copyload.i, 0
  %i.u = zext i1 %i.t to i32
  %spec.select = add i32 %.011, %i.u              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8, !tbaa !506  ; 2 uses
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1050), align 2, !range !102 ; 3 uses
  %i.f = add i64 %i.d, 2305843009213693951        ; 2 uses
  %i.g = and i64 %i.f, 2305843009213693951        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, 4611686018427387902
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %i.j = and i64 %i.f, 1
  %lcmp.mod.not.not = icmp eq i64 %i.j, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.013.epil.init = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.01012.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.k = load ptr, ptr %.013.epil.init, align 8, !tbaa !440 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !502
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !441, !range !102, !noundef !103
  %i.q = trunc nuw i8 %i.p to i1
  %narrow.epil = select i1 %i.q, i8 %i.e, i8 1
  %1 = zext nneg i8 %narrow.epil to i32
  %spec.select.epil = add i32 %.01012.epil.init, %1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.01012.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.b ]
  ret i32 %.010.lcssa

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %.013 = phi ptr [ %i.b, %.lr.ph.new ], [ %i.ag, %bb.g ] ; 3 uses
  %.01012 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.r = load ptr, ptr %.013, align 8, !tbaa !440 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !502
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !441, !range !102, !noundef !103
  %i.x = trunc nuw i8 %i.w to i1
  %narrow = select i1 %i.x, i8 %i.e, i8 1
  %2 = zext nneg i8 %narrow to i32
  %spec.select = add i32 %.01012, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.01012, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !440  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !502
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !441, !range !102, !noundef !103
  %i.af = trunc nuw i8 %i.ae to i1
  %narrow.1 = select i1 %i.af, i8 %i.e, i8 1
  %3 = zext nneg i8 %narrow.1 to i32
  %spec.select.1 = add i32 %.1, %3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %.1, %bb.e ], [ %spec.select.1, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm11NameSection9writeBodyEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.lld::wasm::(anonymous namespace)::SubSection", align 8 ; 13 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.lld::wasm::(anonymous namespace)::SubSection", align 8 ; 13 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.lld::wasm::(anonymous namespace)::SubSection", align 8 ; 13 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %38 = alloca %"class.lld::wasm::(anonymous namespace)::SubSection", align 8 ; 13 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 0, ptr %9, align 8, !tbaa !105
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !115
  store i8 0, ptr %i.b, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i8 0, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 84
  store i32 1, ptr %i.g, align 4, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %i.d, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.a, ptr %i.i, align 8, !tbaa !122
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef null, i64 noundef 0, i32 noundef 0) #23
  %.sroa.056.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 296), align 8, !tbaa !160
  %.sroa.5.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 304), align 8, !tbaa !161 ; 2 uses
  %i.j = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.053.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 280), align 8, !tbaa !160
  %.sroa.254.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 288), align 8, !tbaa !161
  %i.k = call { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr %.sroa.053.0.copyload, i64 %.sroa.254.0.copyload, i32 noundef 0) #23 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.056.0 = phi ptr [ %i.l, %bb.b ], [ %.sroa.056.0.copyload, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !128
  store ptr @.str.20, ptr %10, align 8, !tbaa !116
  store i8 3, ptr %i.n, align 8, !tbaa !131
  call void @_ZN3lld4wasm8writeStrERN4llvm11raw_ostreamENS1_9StringRefERKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr %.sroa.056.0, i64 %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(34) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 12 uses
  %i.q = load i32, ptr %9, align 8, !tbaa !105
  %i.r = zext i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !128
  store ptr @.str.97, ptr %7, align 8, !tbaa !116
  store i8 3, ptr %i.s, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(34) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.u = load i64, ptr %i.c, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !128
  store ptr @.str.98, ptr %8, align 8, !tbaa !116
  store i8 3, ptr %i.v, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(34) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.y = load i64, ptr %i.c, align 8, !tbaa !115
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.x, i64 noundef %i.y) #23 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #23
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !116
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit

_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit:  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3outE, i64 24), align 8, !tbaa !349 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !248 ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3outE, i64 16), align 8, !tbaa !486 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !328 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !328 ; 2 uses
  %.not8.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not8.i, label %_ZNK3lld4wasm11NameSection17numNamedFunctionsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit, %bb.f
  %.010.i = phi i32 [ %.1.i, %bb.f ], [ %i.ag, %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %i.au, %bb.f ], [ %i.aj, %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !329 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !502
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !502
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.at = add i32 %.010.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %.010.i, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.al
  br i1 %.not.i, label %_ZNK3lld4wasm11NameSection17numNamedFunctionsEv.exit, label %.lr.ph.i

_ZNK3lld4wasm11NameSection17numNamedFunctionsEv.exit: ; preds = %bb.f, %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit
  %.0.lcssa.i = phi i32 [ %i.ag, %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit ], [ %.1.i, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZNK3lld4wasm11NameSection17numNamedFunctionsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 1, ptr %11, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !114
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !115
  store i8 0, ptr %i.aw, align 8, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 0, ptr %i.az, align 8, !tbaa !117
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i8 0, ptr %i.ba, align 8, !tbaa !118
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 84
  store i32 1, ptr %i.bb, align 4, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %i.ay, align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 88
  store ptr %i.av, ptr %i.bd, align 8, !tbaa !122
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef null, i64 noundef 0, i32 noundef 0) #23
  %i.be = zext i32 %.0.lcssa.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
end_hunk_1
begin_hunk_2_@_ZN3lld4wasm11NameSection9writeBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.it, align 1, !tbaa !128
  store ptr @.str.98, ptr %4, align 8, !tbaa !116
  store i8 3, ptr %i.is, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(34) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.iu = load ptr, ptr %i.et, align 8, !tbaa !156
  %i.iv = load i64, ptr %i.ev, align 8, !tbaa !115
  %i.iw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.iu, i64 noundef %i.iv) #23 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ew) #23
  %i.ix = load ptr, ptr %i.et, align 8, !tbaa !156 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.eu
  br i1 %i.iy, label %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %._crit_edge196
  %i.iz = load i64, ptr %i.eu, align 8, !tbaa !116
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #24
  br label %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit94

_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit94: ; preds = %._crit_edge196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph195, %bb.y
  %.sroa.0124.0193 = phi ptr [ %i.hl, %.lr.ph195 ], [ %i.kx, %bb.y ] ; 2 uses
  %i.jb = load ptr, ptr %.sroa.0124.0193, align 8, !tbaa !168 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 28
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !230
  %i.je = zext i32 %i.jd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  store i8 1, ptr %i.hp, align 1, !tbaa !128
  store ptr @.str.79, ptr %31, align 8, !tbaa !116
  store i8 3, ptr %i.ho, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, i64 noundef %i.je, ptr noundef nonnull align 8 dereferenceable(34) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !170
  switch i8 %i.jg, label %_ZN4llvm3isaIJN3lld4wasm14FunctionSymbolEEPNS2_6SymbolEEEbRKT0_.exit [
    i8 0, label %bb.v
    i8 13, label %bb.v
    i8 7, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @_ZN3lld8toStringB5cxx11ERKNS_4wasm6SymbolE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(88) %i.jb) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.jh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.80, i64 noundef 18) #23, !noalias !507 ; 6 uses
  store ptr %i.hq, ptr %32, align 8, !tbaa !114, !alias.scope !507
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !156 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 5 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

bb.w:                                             ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !115 ; 3 uses
  %i.jn = icmp ult i64 %i.jm, 16
  call void @llvm.assume(i1 %i.jn)
  %i.jo = add nuw nsw i64 %i.jm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hq, ptr noundef nonnull align 8 dereferenceable(1) %i.jj, i64 %i.jo, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.v
  store ptr %i.ji, ptr %32, align 8, !tbaa !156, !alias.scope !507
  %i.jp = load i64, ptr %i.jj, align 8, !tbaa !116
  store i64 %i.jp, ptr %i.hq, align 8, !tbaa !116, !alias.scope !507
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !115
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  %i.jq = phi i64 [ %i.jm, %bb.w ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i64 %i.jq, ptr %i.hr, align 8, !tbaa !115, !alias.scope !507
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !156
  store i64 0, ptr %i.jr, align 8, !tbaa !115
  store i8 0, ptr %i.jj, align 8, !tbaa !116
  %i.js = load ptr, ptr %32, align 8, !tbaa !156
  %i.jt = load i64, ptr %i.hr, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  store i8 1, ptr %i.ht, align 1, !tbaa !128
  store ptr @.str.78, ptr %34, align 8, !tbaa !116
  store i8 3, ptr %i.hs, align 8, !tbaa !131
  call void @_ZN3lld4wasm8writeStrERN4llvm11raw_ostreamENS1_9StringRefERKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr %i.js, i64 %i.jt, ptr noundef nonnull align 8 dereferenceable(34) %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  %i.ju = load ptr, ptr %32, align 8, !tbaa !156  ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.hq
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.jw = load i64, ptr %i.hq, align 8, !tbaa !116
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  %i.jy = load ptr, ptr %33, align 8, !tbaa !156  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hu
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ka = load i64, ptr %i.hu, align 8, !tbaa !116
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.y

_ZN4llvm3isaIJN3lld4wasm14FunctionSymbolEEPNS2_6SymbolEEEbRKT0_.exit: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @_ZN3lld8toStringB5cxx11ERKNS_4wasm6SymbolE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(88) %i.jb) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.kc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.81, i64 noundef 18) #23, !noalias !510 ; 6 uses
  store ptr %i.hv, ptr %35, align 8, !tbaa !114, !alias.scope !510
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !156 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 5 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

bb.x:                                             ; preds = %_ZN4llvm3isaIJN3lld4wasm14FunctionSymbolEEPNS2_6SymbolEEEbRKT0_.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !115 ; 3 uses
  %i.ki = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.ki)
  %i.kj = add nuw nsw i64 %i.kh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hv, ptr noundef nonnull align 8 dereferenceable(1) %i.ke, i64 %i.kj, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN4llvm3isaIJN3lld4wasm14FunctionSymbolEEPNS2_6SymbolEEEbRKT0_.exit
  store ptr %i.kd, ptr %35, align 8, !tbaa !156, !alias.scope !510
  %i.kk = load i64, ptr %i.ke, align 8, !tbaa !116
  store i64 %i.kk, ptr %i.hv, align 8, !tbaa !116, !alias.scope !510
  %.phi.trans.insert.i103 = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.pre.i104 = load i64, ptr %.phi.trans.insert.i103, align 8, !tbaa !115
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit105

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit105: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.kl = phi i64 [ %i.kh, %bb.x ], [ %.pre.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i64 %i.kl, ptr %i.hw, align 8, !tbaa !115, !alias.scope !510
  store ptr %i.ke, ptr %i.kc, align 8, !tbaa !156
  store i64 0, ptr %i.km, align 8, !tbaa !115
  store i8 0, ptr %i.ke, align 8, !tbaa !116
  %i.kn = load ptr, ptr %35, align 8, !tbaa !156
  %i.ko = load i64, ptr %i.hw, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  store i8 1, ptr %i.hy, align 1, !tbaa !128
  store ptr @.str.78, ptr %37, align 8, !tbaa !116
  store i8 3, ptr %i.hx, align 8, !tbaa !131
  call void @_ZN3lld4wasm8writeStrERN4llvm11raw_ostreamENS1_9StringRefERKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr %i.kn, i64 %i.ko, ptr noundef nonnull align 8 dereferenceable(34) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  %i.kp = load ptr, ptr %35, align 8, !tbaa !156  ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.hv
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit105
  %i.kr = load i64, ptr %i.hv, align 8, !tbaa !116
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  %i.kt = load ptr, ptr %36, align 8, !tbaa !156  ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.hz
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.kv = load i64, ptr %i.hz, align 8, !tbaa !116
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0124.0193, i64 8 ; 2 uses
  %.not169 = icmp eq ptr %i.kx, %i.hn
  br i1 %.not169, label %._crit_edge196, label %bb.u

bb.z:                                             ; preds = %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit94, %_ZNK3lld4wasm11NameSection15numNamedGlobalsEv.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !504 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !506 ; 2 uses
  %.not11.i = icmp eq i64 %i.lb, 0
  br i1 %.not11.i, label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.thread, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.z
  %i.lc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1050), align 2, !range !102 ; 3 uses
  %i.ld = add i64 %i.lb, 2305843009213693951      ; 2 uses
  %i.le = and i64 %i.ld, 2305843009213693951      ; 2 uses
  %i.lf = add nuw nsw i64 %i.le, 1                ; 2 uses
  %i.lg = icmp eq i64 %i.le, 0
  br i1 %i.lg, label %.epil.preheader, label %.lr.ph.i112.new

.lr.ph.i112.new:                                  ; preds = %.lr.ph.i112
  %unroll_iter = and i64 %i.lf, 4611686018427387902
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i112.new
  %.013.i = phi ptr [ %i.kz, %.lr.ph.i112.new ], [ %i.lw, %bb.ae ] ; 3 uses
  %.01012.i = phi i32 [ 0, %.lr.ph.i112.new ], [ %.1.i114.1, %bb.ae ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i112.new ], [ %niter.next.1, %bb.ae ]
  %i.lh = load ptr, ptr %.013.i, align 8, !tbaa !440 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !502
  %i.lk = icmp eq i64 %i.lj, 0
  br i1 %i.lk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !441, !range !102, !noundef !103
  %i.ln = trunc nuw i8 %i.lm to i1
  %narrow.i = select i1 %i.ln, i8 %i.lc, i8 1
  %42 = zext nneg i8 %narrow.i to i32
  %spec.select.i113 = add i32 %.01012.i, %42
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i114 = phi i32 [ %.01012.i, %bb.aa ], [ %spec.select.i113, %bb.ab ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !440 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !502
  %i.ls = icmp eq i64 %i.lr, 0
  br i1 %i.ls, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !441, !range !102, !noundef !103
  %i.lv = trunc nuw i8 %i.lu to i1
  %narrow.i.1 = select i1 %i.lv, i8 %i.lc, i8 1
  %43 = zext nneg i8 %narrow.i.1 to i32
  %spec.select.i113.1 = add i32 %.1.i114, %43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i114.1 = phi i32 [ %.1.i114, %bb.ac ], [ %spec.select.i113.1, %bb.ad ] ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.013.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa, label %bb.aa

_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa: ; preds = %bb.ae
  %i.lx = and i64 %i.ld, 1
  %lcmp.mod.not.not = icmp eq i64 %i.lx, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit

.epil.preheader:                                  ; preds = %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa, %.lr.ph.i112
  %.013.i.epil.init = phi ptr [ %i.kz, %.lr.ph.i112 ], [ %i.lw, %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa ]
  %.01012.i.epil.init = phi i32 [ 0, %.lr.ph.i112 ], [ %.1.i114.1, %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod262 = trunc i64 %i.lf to i1
  call void @llvm.assume(i1 %lcmp.mod262)
  %i.ly = load ptr, ptr %.013.i.epil.init, align 8, !tbaa !440 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !502
  %i.mb = icmp eq i64 %i.ma, 0
  br i1 %i.mb, label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit, label %bb.af

bb.af:                                            ; preds = %.epil.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !441, !range !102, !noundef !103
  %i.me = trunc nuw i8 %i.md to i1
  %narrow.i.epil = select i1 %i.me, i8 %i.lc, i8 1
  %44 = zext nneg i8 %narrow.i.epil to i32
  %spec.select.i113.epil = add i32 %.01012.i.epil.init, %44
  br label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit

_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit: ; preds = %.epil.preheader, %bb.af, %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa
  %.1.i114.lcssa = phi i32 [ %.1.i114.1, %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.unr-lcssa ], [ %.01012.i.epil.init, %.epil.preheader ], [ %spec.select.i113.epil, %bb.af ] ; 2 uses
  %.not64 = icmp eq i32 %.1.i114.lcssa, 0
  br i1 %.not64, label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  store i32 9, ptr %38, align 8, !tbaa !105
  %i.mf = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 4 uses
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !114
  %i.mh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store i64 0, ptr %i.mh, align 8, !tbaa !115
  store i8 0, ptr %i.mg, align 8, !tbaa !116
  %i.mi = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %38, i64 48
  store i32 0, ptr %i.mj, align 8, !tbaa !117
  %i.mk = getelementptr inbounds nuw i8, ptr %38, i64 80
  store i8 0, ptr %i.mk, align 8, !tbaa !118
  %i.ml = getelementptr inbounds nuw i8, ptr %38, i64 84
  store i32 1, ptr %i.ml, align 4, !tbaa !119
  %i.mm = getelementptr inbounds nuw i8, ptr %38, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mm, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %i.mi, align 8, !tbaa !120
  %i.mn = getelementptr inbounds nuw i8, ptr %38, i64 88
  store ptr %i.mf, ptr %i.mn, align 8, !tbaa !122
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %i.mi, ptr noundef null, i64 noundef 0, i32 noundef 0) #23
  %i.mo = zext i32 %.1.i114.lcssa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.mp = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %39, i64 33
  store i8 1, ptr %i.mq, align 1, !tbaa !128
  store ptr @.str.76, ptr %39, align 8, !tbaa !116
  store i8 3, ptr %i.mp, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.mi, i64 noundef %i.mo, ptr noundef nonnull align 8 dereferenceable(34) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %i.mr = load ptr, ptr %i.ky, align 8, !tbaa !504 ; 2 uses
  %i.ms = load i64, ptr %i.la, align 8, !tbaa !506 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ms, 3
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.idx
  %.not65197 = icmp eq i64 %i.ms, 0
  br i1 %.not65197, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.ag
  %i.mu = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.mv = getelementptr inbounds nuw i8, ptr %40, i64 33
  %i.mw = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.mx = getelementptr inbounds nuw i8, ptr %41, i64 33
  br label %bb.ah

._crit_edge201:                                   ; preds = %bb.ak, %bb.ag
  %i.my = load i32, ptr %38, align 8, !tbaa !105
  %i.mz = zext i32 %i.my to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.nb, align 1, !tbaa !128
  store ptr @.str.97, ptr %1, align 8, !tbaa !116
  store i8 3, ptr %i.na, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(34) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.nc = load i64, ptr %i.mh, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ne, align 1, !tbaa !128
  store ptr @.str.98, ptr %2, align 8, !tbaa !116
  store i8 3, ptr %i.nd, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.nc, ptr noundef nonnull align 8 dereferenceable(34) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.nf = load ptr, ptr %i.mf, align 8, !tbaa !156
  %i.ng = load i64, ptr %i.mh, align 8, !tbaa !115
  %i.nh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.nf, i64 noundef %i.ng) #23 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.mi) #23
  %i.ni = load ptr, ptr %i.mf, align 8, !tbaa !156 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.mg
  br i1 %i.nj, label %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %._crit_edge201
  %i.nk = load i64, ptr %i.mg, align 8, !tbaa !116
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #24
  br label %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit118

_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit118: ; preds = %._crit_edge201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.thread

bb.ah:                                            ; preds = %.lr.ph200, %bb.ak
  %.0198 = phi ptr [ %i.mr, %.lr.ph200 ], [ %i.nz, %bb.ak ] ; 2 uses
  %i.nm = load ptr, ptr %.0198, align 8, !tbaa !440 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !502
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.nr = load i8, ptr %i.nq, align 8, !tbaa !441, !range !102, !noundef !103
  %i.ns = trunc nuw i8 %i.nr to i1
  %i.nt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3lld4wasm3ctxE, i64 1050), align 2, !range !102
  %i.nu = trunc nuw i8 %i.nt to i1
  %not..i = xor i1 %i.ns, true
  %i.nv = select i1 %not..i, i1 true, i1 %i.nu
  br i1 %i.nv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !513
  %i.ny = zext i32 %i.nx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  store i8 1, ptr %i.mv, align 1, !tbaa !128
  store ptr @.str.79, ptr %40, align 8, !tbaa !116
  store i8 3, ptr %i.mu, align 8, !tbaa !131
  call void @_ZN3lld4wasm12writeUleb128ERN4llvm11raw_ostreamEmRKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.mi, i64 noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(34) %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  %.sroa.0.0.copyload = load ptr, ptr %i.nm, align 8, !tbaa !160
  %.sroa.2.0.copyload = load i64, ptr %i.nn, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  store i8 1, ptr %i.mx, align 1, !tbaa !128
  store ptr @.str.65, ptr %41, align 8, !tbaa !116
  store i8 3, ptr %i.mw, align 8, !tbaa !131
  call void @_ZN3lld4wasm8writeStrERN4llvm11raw_ostreamENS1_9StringRefERKNS1_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.mi, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %41) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.nz = getelementptr inbounds nuw i8, ptr %.0198, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.nz, %i.mt
  br i1 %.not65, label %._crit_edge201, label %bb.ah

_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit.thread: ; preds = %bb.z, %_ZN3lld4wasm12_GLOBAL__N_110SubSectionD2Ev.exit118, %_ZNK3lld4wasm11NameSection20numNamedDataSegmentsEv.exit
  ret void
}

declare void @_ZN3lld8toStringB5cxx11ERKNS_4wasm6SymbolE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_ZN3lld19maybeDemangleSymbolB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4wasm16ProducersSection7addInfoERKN4llvm4wasm16WasmProducerInfoE(ptr noundef nonnull align 8 dereferenceable(1768) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %3 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %4 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %5 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %6 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %7 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %8 = alloca %"struct.std::pair.295", align 8    ; 13 uses
  %9 = alloca [3 x %"struct.std::pair.282"], align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %9, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %i.u, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store ptr %i.y, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40
end_hunk_2
