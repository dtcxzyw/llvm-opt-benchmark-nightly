Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrDialect?download=true
inline.NumInlined: 14421
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesE:bb.a
  store ptr %i.ay, ptr %i.be, align 1
  %.sroa.3.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.az, ptr %.sroa.3.0..sroa_idx.i60, align 1
  %i.bf = load i32, ptr %i.b, align 8, !tbaa !59
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.b, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit61

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit61: ; preds = %bb.o, %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 26
  %.val46.val = load i8, ptr %i.bh, align 2, !tbaa !126, !range !88, !noundef !89
  %i.bi = trunc nuw i8 %.val46.val to i1
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit61
  %i.bj = call ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef %0) #25
  br label %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_3clEv.exit"

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit61
  %i.bk = call ptr @_ZN4mlir8BoolAttr3getEPNS_11MLIRContextEb(ptr noundef %0, i1 noundef zeroext false) #25
  br label %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_3clEv.exit"

"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_3clEv.exit": ; preds = %bb.q, %bb.r
  %.sroa.02.0.i62 = phi ptr [ %i.bj, %bb.q ], [ %i.bk, %bb.r ]
  %i.bl = call { ptr, ptr } @_ZN4mlir7Builder12getNamedAttrEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.93, i64 9, ptr %.sroa.02.0.i62) #25 ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, ptr } %i.bl, 1      ; 2 uses
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !85
  %.not.i63 = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i63, label %bb.t, label %bb.s, !prof !86

bb.s:                                             ; preds = %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_3clEv.exit"
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.bm, ptr %i.bn)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit65

bb.t:                                             ; preds = %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_3clEv.exit"
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %3, align 8, !tbaa !58
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  store ptr %i.bm, ptr %i.bs, align 1
  %.sroa.3.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bn, ptr %.sroa.3.0..sroa_idx.i64, align 1
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !59
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.b, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit65

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit65: ; preds = %bb.s, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 27
  %.val48.val = load i8, ptr %i.bv, align 1, !tbaa !126, !range !88, !noundef !89
  %i.bw = trunc nuw i8 %.val48.val to i1
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit65
  %i.bx = call ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef %0) #25
  br label %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_4clEv.exit"

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit65
  %i.by = call ptr @_ZN4mlir8BoolAttr3getEPNS_11MLIRContextEb(ptr noundef %0, i1 noundef zeroext false) #25
  br label %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_4clEv.exit"

"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_4clEv.exit": ; preds = %bb.u, %bb.v
  %.sroa.02.0.i66 = phi ptr [ %i.bx, %bb.u ], [ %i.by, %bb.v ]
  %i.bz = call { ptr, ptr } @_ZN4mlir7Builder12getNamedAttrEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.94, i64 14, ptr %.sroa.02.0.i66) #25 ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1      ; 2 uses
  %i.cc = load i32, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !85
  %.not.i67 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not.i67, label %bb.x, label %bb.w, !prof !86

bb.w:                                             ; preds = %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_4clEv.exit"
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.ca, ptr %i.cb)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit69

bb.x:                                             ; preds = %"_ZZN4mlir3ptr6LoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEENK3$_4clEv.exit"
  %i.ce = zext i32 %i.cc to i64
  %i.cf = load ptr, ptr %3, align 8, !tbaa !58
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  store ptr %i.ca, ptr %i.cg, align 1
  %.sroa.3.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cb, ptr %.sroa.3.0..sroa_idx.i68, align 1
  %i.ch = load i32, ptr %i.b, align 8, !tbaa !59
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.b, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit69

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit69: ; preds = %bb.w, %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ck = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %0, i32 noundef 32, i32 noundef 0) #25
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !128
  %i.cm = zext i32 %i.cl to i64
  %i.cn = call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.ck, i64 noundef %i.cm) #25
  %i.co = call { ptr, ptr } @_ZN4mlir7Builder12getNamedAttrEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.95, i64 8, ptr %i.cn) #25 ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, ptr } %i.co, 1      ; 2 uses
  %i.cr = load i32, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !85
  %.not.i70 = icmp ult i32 %i.cr, %i.cs
  br i1 %.not.i70, label %bb.z, label %bb.y, !prof !86

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit69
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.cp, ptr %i.cq)
  %.pr = load i32, ptr %i.b, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit72

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit69
  %i.ct = zext i32 %i.cr to i64
  %i.cu = load ptr, ptr %3, align 8, !tbaa !58
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  store ptr %i.cp, ptr %i.cv, align 1
  %.sroa.3.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cq, ptr %.sroa.3.0..sroa_idx.i71, align 1
  %i.cw = load i32, ptr %i.b, align 8, !tbaa !59
  %i.cx = add i32 %i.cw, 1                        ; 2 uses
  store i32 %i.cx, ptr %i.b, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit72

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit72: ; preds = %bb.y, %bb.z
  %i.cy = phi i32 [ %.pr, %bb.y ], [ %i.cx, %bb.z ] ; 2 uses
  %.not.i73 = icmp eq i32 %i.cy, 0
  br i1 %.not.i73, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit72
  %i.cz = load ptr, ptr %3, align 8, !tbaa !58
  %i.da = zext i32 %i.cy to i64
  %i.db = call ptr @_ZN4mlir7Builder17getDictionaryAttrEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.cz, i64 %i.da) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit72, %bb.aa
  %.sroa.099.0 = phi ptr [ %i.db, %bb.aa ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE9push_backES2_.exit72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dc = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.a
  br i1 %i.dd, label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.dc) #25
  br label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.sroa.099.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir3ptr6LoadOp21computePropertiesHashERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.1576", align 8  ; 7 uses
  %2 = alloca %"struct.std::array.1564", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !122, !range !88, !noundef !89
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4llvm10hash_valueIlEENS_9hash_codeERKSt8optionalIT_E.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i8 1, ptr %2, align 1
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i64 %i.f, ptr %i.g, align 1
  %i.h = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 9) #25
  %i.i = xor i64 %i.h, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN4llvm10hash_valueIlEENS_9hash_codeERKSt8optionalIT_E.exit

_ZN4llvm10hash_valueIlEENS_9hash_codeERKSt8optionalIT_E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ -6123094709308576955, %bb.a ]
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = xor i64 %i.j, -49064778989728563         ; 2 uses
  %i.l = lshr i64 %i.k, 30
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 27
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -7723592293110705685       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !305
  %i.w = zext i32 %i.v to i64
  %i.x = xor i64 %i.w, -49064778989728563         ; 2 uses
  %i.y = lshr i64 %i.x, 30
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 27
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -7723592293110705685     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 %i.s, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.0.0.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load <4 x i8>, ptr %i.t, align 8, !tbaa !126
  %i.aj = trunc <4 x i8> %i.ai to <4 x i1>
  %i.ak = select <4 x i1> %i.aj, <4 x i64> splat (i64 -1012210448320248773), <4 x i64> splat (i64 3646684832232758914) ; 2 uses
  %i.al = lshr <4 x i64> %i.ak, splat (i64 27)
  %i.am = xor <4 x i64> %i.al, %i.ak
  %i.an = mul <4 x i64> %i.am, splat (i64 -7723592293110705685) ; 2 uses
  %i.ao = lshr <4 x i64> %i.an, splat (i64 31)
  %i.ap = xor <4 x i64> %i.ao, %i.an
  store <4 x i64> %i.ap, ptr %i.ah, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.af, ptr %i.aq, align 8
  %i.ar = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 56) #25
  %i.as = xor i64 %i.ar, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i64 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i8 } @_ZN4mlir3ptr6LoadOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq i64 %3, 9
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread5

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.a = load i64, ptr %2, align 1
  %i.b = xor i64 %i.a, 8101803601903384947
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = xor i64 %i.e, 101
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread5

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.k = load i64, ptr %1, align 8, !tbaa !160
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread5

_ZN4llvmeqENS_9StringRefES0_.exit.thread5:        ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.sroa.03.0 = phi ptr [ %i.l, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ undef, %bb.a ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4mlir3ptr6LoadOp15setInherentAttrERNS0_6detail24LoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr %3) local_unnamed_addr #11 align 2 {
bb.a:
  %.not.i = icmp eq i64 %2, 9
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = xor i64 %i.a, 8101803601903384947
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = xor i64 %i.e, 101
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.k = load ptr, ptr %3, align 8, !tbaa !165
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.m = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  %spec.select.i.i.i = select i1 %i.m, ptr %3, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRT0_.exit

_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRT0_.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %bb.b
  %.sroa.02.0.i.i = phi ptr [ %spec.select.i.i.i, %bb.b ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ]
  store ptr %.sroa.02.0.i.i, ptr %0, align 8
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6

_ZN4llvmeqENS_9StringRefES0_.exit.thread6:        ; preds = %bb.a, %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRT0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3ptr6LoadOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail24LoadOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !110    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir14NamedAttributeC1EN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.89, i64 9, ptr nonnull %i.a) #25
  %i.b = load ptr, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %i.b, ptr %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir3ptr6LoadOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !270
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8
  %i.b = tail call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %.sroa.0.0.copyload.i.i) #25 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i8 @_ZL40__mlir_ods_local_attr_constraint_PtrOps2N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.b, ptr nonnull @.str.89, i64 9, ptr %2, i64 %3)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.08.1 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i8 %.sroa.08.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL40__mlir_ods_local_attr_constraint_PtrOps2N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readonly captures(address_is_null) %0, ptr %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !165
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void %3(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %4) #25, !inline_history !2
  %i.d = load ptr, ptr %8, align 8, !tbaa !77
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 3, ptr %7, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.145, ptr %i.f, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !85
  %.not.i.i.i.i.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !86

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA12_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !59
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !59
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA12_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA12_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pr = load ptr, ptr %8, align 8, !tbaa !77
  %.not.i.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i.i1, label %_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA12_KcEEOS0_OT_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.q, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !68
  store ptr %1, ptr %6, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
