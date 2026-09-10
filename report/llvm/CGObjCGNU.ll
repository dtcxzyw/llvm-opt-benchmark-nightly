Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGObjCGNU?download=true
inline.NumInlined: 6710
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_19CGObjCGNU20GeneratePropertyListEPKN5clang4DeclEPKNS1_17ObjCContainerDeclEbb:bb.a
  %i.ib = load ptr, ptr %i.gr, align 8, !tbaa !588 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !589 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ib, %i.id
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i155

.lr.ph.i.i.i.i155:                                ; preds = %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit, %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ii, %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i ], [ %i.ib, %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !451 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i155
  call void @free(ptr noundef %i.if) #24
  br label %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i155
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i156 = icmp eq ptr %i.ii, %i.id
  br i1 %.not.i.i.i.i156, label %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i155, !llvm.loop !1

_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.gr, align 8, !tbaa !588
  br label %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i, %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit
  %i.ij = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i ], [ %i.ib, %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !590
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.io) #25
  br label %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i: ; preds = %bb.ae, %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i
  %i.ip = load ptr, ptr %i.gn, align 8, !tbaa !451 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.go
  br i1 %i.iq, label %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i
  call void @free(ptr noundef %i.ip) #24
  br label %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit

_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit: ; preds = %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aj

.lr.ph221:                                        ; preds = %bb.aa, %bb.ai
  %.057219 = phi ptr [ %i.jd, %bb.ai ], [ %i.gz, %bb.aa ] ; 2 uses
  %i.ir = load ptr, ptr %.057219, align 8, !tbaa !2135 ; 2 uses
  %i.is = load i8, ptr %i.e, align 1, !tbaa !1245, !range !472, !noundef !414
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph221
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !1280
  %i.iv = call noundef ptr @_ZNK5clang10ASTContext38getObjCPropertyImplDeclForPropertyDeclEPKNS_16ObjCPropertyDeclEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.v, ptr noundef %i.ir, ptr noundef %i.iu) #24 ; 2 uses
  %.not71 = icmp eq ptr %i.iv, null
  br i1 %.not71, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !669
  %.not.i157 = icmp eq ptr %i.ix, null            ; 2 uses
  %i.iy = xor i1 %.not.i157, true
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.lr.ph221
  %.156 = phi i1 [ false, %.lr.ph221 ], [ %i.iy, %bb.ah ], [ false, %bb.ag ]
  %.1 = phi i1 [ false, %.lr.ph221 ], [ %.not.i157, %bb.ah ], [ false, %bb.ag ]
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !1280
  %i.ja = load ptr, ptr %0, align 8, !tbaa !419
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 416
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(1184) %0, ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %i.ir, ptr noundef %i.iz, i1 noundef zeroext %.156, i1 noundef zeroext %.1) #24
  %i.jd = getelementptr inbounds nuw i8, ptr %.057219, i64 8 ; 2 uses
  %.not70 = icmp eq ptr %i.jd, %i.hc
  br i1 %.not70, label %._crit_edge222, label %.lr.ph221

bb.aj:                                            ; preds = %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit, %bb.z
  %.058 = phi ptr [ %i.gl, %bb.z ], [ %i.ia, %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit ]
  %i.je = load ptr, ptr %i.w, align 8, !tbaa !1383 ; 2 uses
  %.not.i159 = icmp eq ptr %i.je, null
  br i1 %.not.i159, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jf = call noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #24, !inline_history !2127 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.jg = load i8, ptr %i.m, align 8, !tbaa !1370, !range !472, !noundef !414
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ji = load ptr, ptr %7, align 8, !tbaa !1367
  call void @free(ptr noundef %i.ji) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.jj = load ptr, ptr %6, align 8, !tbaa !451   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.g
  br i1 %i.jk, label %_ZN4llvm11SmallVectorIPKN5clang16ObjCPropertyDeclELj16EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  call void @free(ptr noundef %i.jj) #24
  br label %_ZN4llvm11SmallVectorIPKN5clang16ObjCPropertyDeclELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang16ObjCPropertyDeclELj16EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %.058
}

declare void @_ZN5clang7CodeGen13CGObjCRuntime22GetRuntimeProtocolListEPKPNS_16ObjCProtocolDeclES5_(ptr dead_on_unwind writable sret(%"class.std::vector.1160") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19CGObjCGNU22GenerateClassStructureEPN4llvm8ConstantES3_jPKcS3_S3_S3_S3_S3_S3_S3_S3_S3_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1184) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 17, 19) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i1 noundef zeroext %13) unnamed_addr #0 align 2 {
bb.a:
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [18 x ptr], align 8               ; 21 uses
  %15 = alloca %"class.clang::CodeGen::ConstantInitBuilder", align 8 ; 13 uses
  %16 = alloca %"class.clang::CodeGen::ConstantStructBuilder", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !645  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !561
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !561
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !463  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !561
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !561
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1344 ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !468, !nonnull !414, !align !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.d, ptr %i.b, align 8, !tbaa !460
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.t, align 8, !tbaa !460
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.u, align 8, !tbaa !460
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %i.v, align 8, !tbaa !460
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.w, align 8, !tbaa !460
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.f, ptr %i.x, align 8, !tbaa !460
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.h, ptr %i.y, align 8, !tbaa !460
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.j, ptr %i.z, align 8, !tbaa !460
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !460
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.l, ptr %i.ad, align 8, !tbaa !460
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.l, ptr %i.ae, align 8, !tbaa !460
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.f, ptr %i.af, align 8, !tbaa !460
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !460
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !460
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.r, ptr %i.ai, align 8, !tbaa !460
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.r, ptr %i.aj, align 8, !tbaa !460
  %i.ak = call noundef ptr @_ZN4llvm10StructType3getERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr nonnull %i.b, i64 18, i1 noundef zeroext false) #24 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !447 ; 2 uses
  store ptr %i.am, ptr %15, align 8, !tbaa !523
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 36 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !451
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 52 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 18 uses
  store i32 16, ptr %i.aq, align 4, !tbaa !452
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ar, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  store ptr %15, ptr %16, align 8, !tbaa !525, !alias.scope !2140
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !527, !alias.scope !2140
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.as, i8 0, i64 27, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !539, !noalias !2140
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.av, align 8, !tbaa !544, !alias.scope !2140
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !noalias !2140
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 34
  %i.az = lshr i32 %i.ax, 9
  %i.ba = trunc i32 %i.az to i8
  %i.bb = and i8 %i.ba, 1
  store i8 %i.bb, ptr %i.ay, align 2, !tbaa !1320, !alias.scope !2140
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit29

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit29: ; preds = %bb.a, %bb.b
  store ptr %1, ptr %i.ao, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %2, ptr %i.bc, align 8
  store i32 2, ptr %i.ap, align 8, !tbaa !454
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit29
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit29, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.bd, %bb.c ], [ 0, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit29 ]
  %i.be = call fastcc noundef ptr @_ZN12_GLOBAL__N_19CGObjCGNU18MakeConstantStringEN4llvm9StringRefES2_(ptr %i.am, ptr %4, i64 %.sroa.0.0.i, ptr nonnull @.str.72, i64 11) ; 2 uses
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !454 ; 2 uses
  %i.bg = load i32, ptr %i.aq, align 4, !tbaa !452
  %.not.i.i31 = icmp ult i32 %i.bf, %i.bg
  br i1 %.not.i.i31, label %bb.e, label %bb.d, !prof !546

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.be)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit32

bb.e:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bh = zext i32 %i.bf to i64
  %i.bi = load ptr, ptr %i.an, align 8, !tbaa !451
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store ptr %i.be, ptr %i.bj, align 1
  %i.bk = load i32, ptr %i.ap, align 8, !tbaa !454
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit32

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit32: ; preds = %bb.d, %bb.e
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !645
  %i.bn = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.bm, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.bo = load i32, ptr %i.ap, align 8, !tbaa !454 ; 2 uses
  %i.bp = load i32, ptr %i.aq, align 4, !tbaa !452
  %.not.i.i.i33 = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i.i.i33, label %bb.g, label %bb.f, !prof !546

bb.f:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit32
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.bn)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit

bb.g:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit32
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !451
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bn, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.ap, align 8, !tbaa !454
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit: ; preds = %bb.f, %bb.g
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !645
  %i.bw = zext nneg i32 %3 to i64
  %i.bx = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.bv, i64 noundef %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.by = load i32, ptr %i.ap, align 8, !tbaa !454 ; 2 uses
  %i.bz = load i32, ptr %i.aq, align 4, !tbaa !452
  %.not.i.i.i34 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i.i.i34, label %bb.i, label %bb.h, !prof !546

bb.h:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.bx)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit35

bb.i:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %i.an, align 8, !tbaa !451
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.ap, align 8, !tbaa !454
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit35

_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit35: ; preds = %bb.h, %bb.i
  br i1 %13, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit35
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !491, !nonnull !414, !align !415
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 296
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !645
  %i.cj = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ch, ptr noundef %i.ak) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.cj, 1
  %i.ck = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ck, label %bb.k, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.50) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.j
  %.fca.0.extract = extractvalue { i64, i8 } %i.cj, 0
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !447, !nonnull !414, !align !415
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !596, !nonnull !414, !align !415 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 18912
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.co, align 8, !tbaa !417
  %i.cp = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !600
  %i.cs = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cn, ptr noundef %i.cr) #24
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %i.cu = udiv i64 %.fca.0.extract, %i.ct
  %i.cv = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ci, i64 noundef %i.cu, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.cw = load i32, ptr %i.ap, align 8, !tbaa !454 ; 2 uses
  %i.cx = load i32, ptr %i.aq, align 4, !tbaa !452
  %.not.i.i.i36 = icmp ult i32 %i.cw, %i.cx
  br i1 %.not.i.i.i36, label %bb.m, label %bb.l, !prof !546

bb.l:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.cv)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cy = zext i32 %i.cw to i64
  %i.cz = load ptr, ptr %i.an, align 8, !tbaa !451
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  store ptr %i.cv, ptr %i.da, align 1
  %i.db = load i32, ptr %i.ap, align 8, !tbaa !454
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37

bb.n:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit35
  %i.dd = load i32, ptr %i.ap, align 8, !tbaa !454 ; 2 uses
  %i.de = load i32, ptr %i.aq, align 4, !tbaa !452
  %.not.i.i38 = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i.i38, label %bb.p, label %bb.o, !prof !546

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %5)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37

bb.p:                                             ; preds = %bb.n
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %i.an, align 8, !tbaa !451
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  store ptr %5, ptr %i.dh, align 1
  %i.di = load i32, ptr %i.ap, align 8, !tbaa !454
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37

_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37: ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %i.dk = phi ptr [ @.str.73, %bb.m ], [ @.str.73, %bb.l ], [ @.str.45, %bb.o ], [ @.str.45, %bb.p ] ; 2 uses
  %i.dl = load i32, ptr %i.ap, align 8, !tbaa !454 ; 2 uses
  %i.dm = load i32, ptr %i.aq, align 4, !tbaa !452
  %.not.i.i40 = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i.i40, label %bb.r, label %bb.q, !prof !546

bb.q:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull %6)
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit41

bb.r:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit37
  %i.dn = zext i32 %i.dl to i64
  %i.do = load ptr, ptr %i.an, align 8, !tbaa !451
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  store ptr %6, ptr %i.dp, align 1
  %i.dq = load i32, ptr %i.ap, align 8, !tbaa !454
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  store i32 %i.dr, ptr %i.ap, align 8, !tbaa !454
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit41

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit41: ; preds = %bb.q, %bb.r
end_hunk_0
