Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestOpDefs?download=true
inline.NumInlined: 5875
inline.NumDeleted: 2910
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4test22StringAttrPrettyNameOp5printERN4mlir12OpAsmPrinterE:bb.a
._crit_edge:                                      ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread26, %bb.a
  %.0.lcssa = phi i1 [ %i.h, %bb.a ], [ %.1, %_ZN4llvmneENS_9StringRefES0_.exit.thread26 ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  br i1 %.0.lcssa, label %bb.g, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvmneENS_9StringRefES0_.exit.thread26
  %.01929 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %_ZN4llvmneENS_9StringRefES0_.exit.thread26 ] ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 2, ptr %i.m, align 8, !tbaa !224
  store i8 0, ptr %i.n, align 8, !tbaa !225
  store i32 1, ptr %i.o, align 4, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %6, align 8, !tbaa !38
  store ptr %5, ptr %i.q, align 8, !tbaa !227
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #26
  %i.s = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.t = icmp samesign ult i64 %.01929, 6
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = xor i64 %.01929, -1
  %i.v = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.u
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -96
  %i.x = add nuw nsw i64 %.01929, 4294967291
  %i.y = and i64 %i.x, 4294967295
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = load ptr, ptr %1, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ae = call ptr @_ZN4test22StringAttrPrettyNameOp8getNamesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  store ptr %i.ae, ptr %8, align 8
  %i.af = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.01929
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.ak = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  %spec.select.i.i = select i1 %i.ak, ptr %.sroa.0.0.copyload.i, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.al = icmp eq ptr %spec.select.i.i, null
  br i1 %i.al, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !229, !nonnull !27, !align !232 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !220
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !222 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0
  %.sroa.speculated4.i.i = zext i1 %i.aq to i64   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.speculated4.i.i
  %i.as = sub i64 %i.ap, %.sroa.speculated4.i.i   ; 2 uses
  %i.at = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  %.not.i.i = icmp eq i64 %i.as, %i.av
  br i1 %.not.i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp ult i64 %i.ap, 2
  br i1 %i.aw, label %_ZN4llvmneENS_9StringRefES0_.exit.thread26, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.f
  %bcmp.i.i = call i32 @bcmp(ptr %i.ar, ptr %i.au, i64 %i.as)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread26, label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit, %_ZN4llvmneENS_9StringRefES0_.exit
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread26

_ZN4llvmneENS_9StringRefES0_.exit.thread26:       ; preds = %bb.f, %.critedge, %_ZN4llvmneENS_9StringRefES0_.exit
  %.1 = phi i1 [ true, %.critedge ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit ], [ false, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ax = add nuw nsw i64 %.01929, 1              ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.c
  %.not20 = or i1 %i.ay, %.1
  br i1 %.not20, label %._crit_edge, label %bb.b, !llvm.loop !233

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.az = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r) #26
  store ptr %i.az, ptr %3, align 8
  %i.ba = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1
  %i.bd = load ptr, ptr %1, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.bb, i64 %i.bc, ptr null, i64 0) #26
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bg = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r) #26
  store ptr %i.bg, ptr %2, align 8
  %i.bh = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr @.str.23, ptr %9, align 8, !tbaa !217
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 5, ptr %i.bk, align 8, !tbaa !215
  %i.bl = load ptr, ptr %1, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.bi, i64 %i.bj, ptr nonnull %9, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = load ptr, ptr %5, align 8, !tbaa !220   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.i
  br i1 %i.bp, label %_ZN4llvm11SmallVectorIcLj32EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bo) #26
  br label %_ZN4llvm11SmallVectorIcLj32EED2Ev.exit

_ZN4llvm11SmallVectorIcLj32EED2Ev.exit:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

declare ptr @_ZN4test22StringAttrPrettyNameOp8getNamesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test22StringAttrPrettyNameOp17getAsmResultNamesEN4llvm12function_refIFvN4mlir5ValueENS1_9StringRefEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = tail call ptr @_ZN4test22StringAttrPrettyNameOp8getNamesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  store ptr %i.a, ptr %3, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.010 = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.d = trunc i64 %.010 to i32
  %i.e = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = and i64 %.010, 4294967295
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !137 ; 2 uses
  %i.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.k, ptr %.sroa.0.0.copyload.i, ptr null
  store ptr %spec.select.i.i, ptr %4, align 8
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.l = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.m = extractvalue { ptr, i64 } %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.p = icmp ult i32 %i.d, 6
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw nsw i64 %.010, 1
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.s
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -96
  %5 = add i64 %.010, 4294967291
  %6 = and i64 %5, 4294967295
  %i.v = sub nsw i64 0, %6
  %i.w = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.v
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.w, %bb.e ]
  %i.x = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  call void %1(i64 noundef %2, ptr nonnull %.0.i.i.i, ptr %i.y, i64 %i.z) #26, !inline_history !234
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test22StringAttrPrettyNameOpENS0_15VariadicResultsEE9getResultEj.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aa = add nuw i64 %.010, 1                    ; 2 uses
  %.not = icmp eq i64 %i.aa, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !235
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test19CustomResultsNameOp17getAsmResultNamesEN4llvm12function_refIFvN4mlir5ValueENS1_9StringRefEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = tail call ptr @_ZN4test19CustomResultsNameOp8getNamesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  store ptr %i.a, ptr %3, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.not8 = icmp eq i64 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.09 = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.a ]   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.d = trunc i64 %.09 to i32
  %i.e = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = and i64 %.09, 4294967295
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !137 ; 2 uses
  %i.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.k, ptr %.sroa.0.0.copyload.i, ptr null
  store ptr %spec.select.i.i, ptr %4, align 8
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.l = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.m = extractvalue { ptr, i64 } %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.p = icmp ult i32 %i.d, 6
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw nsw i64 %.09, 1
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.s
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test19CustomResultsNameOpENS0_15VariadicResultsEE9getResultEj.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -96
  %5 = add i64 %.09, 4294967291
  %6 = and i64 %5, 4294967295
  %i.v = sub nsw i64 0, %6
  %i.w = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.v
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test19CustomResultsNameOpENS0_15VariadicResultsEE9getResultEj.exit

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test19CustomResultsNameOpENS0_15VariadicResultsEE9getResultEj.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.w, %bb.e ]
  %i.x = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  call void %1(i64 noundef %2, ptr nonnull %.0.i.i.i, ptr %i.y, i64 %i.z) #26, !inline_history !234
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseIN4test19CustomResultsNameOpENS0_15VariadicResultsEE9getResultEj.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aa = add nuw i64 %.09, 1                     ; 2 uses
  %.not = icmp eq i64 %i.aa, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !236
}

declare ptr @_ZN4test19CustomResultsNameOp8getNamesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test20ResultNameFromTypeOp17getAsmResultNamesEN4llvm12function_refIFvN4mlir5ValueENS1_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvm::function_ref.672", align 8 ; 3 uses
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %class.anon.711, align 8            ; 5 uses
  %6 = alloca %"class.mlir::OpAsmTypeInterface", align 8 ; 5 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.c, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %3, ptr %5, align 8, !tbaa !237
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.d, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir18OpAsmTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 24) #26
  store ptr %i.m, ptr @_ZZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !36 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.t = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = xor i64 %i.r, -1
  %i.w = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.r ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !241

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir18OpAsmTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !242
  %i.aa = icmp eq ptr %i.z, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %_ZN4llvm4castIN4mlir18OpAsmTypeInterfaceENS1_4TypeEEEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !244
  br label %_ZN4llvm4castIN4mlir18OpAsmTypeInterfaceENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir18OpAsmTypeInterfaceENS1_4TypeEEEDcRKT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ad = phi ptr [ null, %bb.a ], [ %i.ac, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.g, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %5 to i64
  call void @_ZNK4mlir18OpAsmTypeInterface10getAsmNameEN4llvm12function_refIFvNS1_9StringRefEEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull @"_ZN4llvm12function_refIFvNS_9StringRefEEE11callback_fnIZN4test20ResultNameFromTypeOp17getAsmResultNamesENS0_IFvN4mlir5ValueES1_EEEE3$_0EEvlS1_", i64 %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare void @_ZNK4mlir18OpAsmTypeInterface10getAsmNameEN4llvm12function_refIFvNS1_9StringRefEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4test27BlockArgumentNameFromTypeOp24getAsmBlockArgumentNamesERN4mlir6RegionEN4llvm12function_refIFvNS1_5ValueENS4_9StringRefEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(28) %1, ptr %2, i64 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::function_ref.672", align 8 ; 3 uses
  %5 = alloca %"class.mlir::BlockArgument", align 8 ; 4 uses
  %6 = alloca %"class.mlir::OpAsmTypeInterface", align 8 ; 5 uses
  %7 = alloca %class.anon.733, align 8            ; 5 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  %.sroa.014.0.in21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.014.022 = load ptr, ptr %.sroa.014.0.in21, align 8, !tbaa !209 ; 2 uses
  %.not1723 = icmp eq ptr %.sroa.014.022, %1
  br i1 %.not1723, label %._crit_edge, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = ptrtoint ptr %7 to i64
  br label %bb.b

.loopexit:                                        ; preds = %bb.l, %bb.b
  %.sroa.014.0.in = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 8
  %.sroa.014.0 = load ptr, ptr %.sroa.014.0.in, align 8, !tbaa !209 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.014.0, %1
  br i1 %.not17, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph25, %.loopexit
  %.sroa.014.024 = phi ptr [ %.sroa.014.022, %.lr.ph25 ], [ %.sroa.014.0, %.loopexit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !246  ; 2 uses
  %.not19 = icmp eq ptr %i.f, %i.h
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.l
  %.020 = phi ptr [ %i.bh, %bb.l ], [ %i.f, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = load i64, ptr %.020, align 8             ; 2 uses
  store i64 %i.i, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.cast = inttoptr i64 %i.i to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !8

bb.c:                                             ; preds = %.lr.ph
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 24) #26
  store ptr %i.r, ptr @_ZZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_18OpAsmTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !36 ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !28   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_18OpAsmTypeInterfaceENS_4TypeENS0_33OpAsmTypeInterfaceInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.v = zext i32 %i.u to i64                     ; 2 uses
end_hunk_0
