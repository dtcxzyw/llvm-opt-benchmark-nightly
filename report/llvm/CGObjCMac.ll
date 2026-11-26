Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGObjCMac?download=true
inline.NumInlined: 9386
inline.NumDeleted: 3979
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_122CGObjCNonFragileABIMac16EmitProtocolListEN4llvm5TwineEPKPN5clang16ObjCProtocolDeclES7_:bb.a
  %i.dg = phi i64 [ %i.de, %._crit_edge35.loopexit ], [ 0, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addPlaceholderEv.exit ]
  %i.dh = call noundef ptr @_ZN4llvm19ConstantPointerNull3getEPNS_11PointerTypeE(ptr noundef %i.df) #28 ; 2 uses
  %i.di = load i32, ptr %i.ck, align 8, !tbaa !297 ; 2 uses
  %i.dj = load i32, ptr %i.cl, align 4, !tbaa !280
  %.not.i.i.i = icmp ult i32 %i.di, %i.dj
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !prof !1134

bb.l:                                             ; preds = %._crit_edge35
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef %i.dh)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addNullPointerEPN4llvm11PointerTypeE.exit

bb.m:                                             ; preds = %._crit_edge35
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  store ptr %i.dh, ptr %i.dm, align 1
  %i.dn = load i32, ptr %i.ck, align 8, !tbaa !297
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.ck, align 8, !tbaa !297
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addNullPointerEPN4llvm11PointerTypeE.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addNullPointerEPN4llvm11PointerTypeE.exit: ; preds = %bb.l, %bb.m
  %i.dp = call noundef ptr @_ZN5clang7CodeGen28ConstantAggregateBuilderBase11finishArrayEPN4llvm4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %i.cs) #28 ; 2 uses
  %i.dq = load ptr, ptr %8, align 8, !tbaa !1227, !nonnull !315, !align !316 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !297 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !280
  %.not.i.i.i23 = icmp ult i32 %i.dt, %i.dv
  br i1 %.not.i.i.i23, label %bb.o, label %bb.n, !prof !1134

bb.n:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addNullPointerEPN4llvm11PointerTypeE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef %i.dp)
  br label %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit

bb.o:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addNullPointerEPN4llvm11PointerTypeE.exit
  %i.dw = zext i32 %i.dt to i64
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !279
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.dp, ptr %i.dy, align 1
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !297
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.ds, align 8, !tbaa !297
  br label %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit

_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit: ; preds = %bb.n, %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !691
  %i.ed = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ec, i64 noundef %i.dg, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.ee = load ptr, ptr %8, align 8, !tbaa !1227, !nonnull !315, !align !316
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !279
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !1294
  %i.eh = load ptr, ptr %i.ca, align 8, !tbaa !1167, !nonnull !315, !align !316
  %i.ei = call fastcc noundef ptr @_ZL21finishAndCreateGlobalRN5clang7CodeGen21ConstantStructBuilderERKN4llvm5TwineERNS0_13CodeGenModuleE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(4008) %i.eh) ; 2 uses
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !1167, !nonnull !315, !align !316
  call void @_ZN5clang7CodeGen13CodeGenModule21addCompilerUsedGlobalEPN4llvm11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(4008) %i.ej, ptr noundef %i.ei) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ek = load ptr, ptr %i.cm, align 8, !tbaa !1237 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1238 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ek, %i.em
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit, %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.er, %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i ], [ %i.ek, %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !279 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  call void @free(ptr noundef %i.eo) #28
  br label %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.er, %i.em
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.cm, align 8, !tbaa !1237
  br label %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i, %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit
  %i.es = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exitthread-pre-split.i.i ], [ %i.ek, %_ZN5clang7CodeGen36ConstantAggregateBuilderTemplateBaseINS0_20ConstantArrayBuilderENS0_25ConstantInitBuilderTraitsEE14finishAndAddToERNS0_28ConstantAggregateBuilderBaseE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1239
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #30
  br label %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i: ; preds = %bb.q, %_ZSt8_DestroyIPN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceEEvT_S5_.exit.i.i
  %i.ey = load ptr, ptr %i.ci, align 8, !tbaa !279 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.cj
  br i1 %i.ez, label %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i
  call void @free(ptr noundef %i.ey) #28
  br label %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit

_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit: ; preds = %_ZNSt6vectorIN5clang7CodeGen23ConstantInitBuilderBase13SelfReferenceESaIS3_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.u

.lr.ph34:                                         ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addPlaceholderEv.exit, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit
  %.02033 = phi ptr [ %i.fi, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit ], [ %i.cz, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase14addPlaceholderEv.exit ] ; 2 uses
  %i.fa = load ptr, ptr %.02033, align 8, !tbaa !1294 ; 2 uses
  %i.fb = load i32, ptr %i.ck, align 8, !tbaa !297 ; 2 uses
  %i.fc = load i32, ptr %i.cl, align 4, !tbaa !280
  %.not.i.i24 = icmp ult i32 %i.fb, %i.fc
  br i1 %.not.i.i24, label %bb.t, label %bb.s, !prof !1134

bb.s:                                             ; preds = %.lr.ph34
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef %i.fa)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.t:                                             ; preds = %.lr.ph34
  %i.fd = zext i32 %i.fb to i64
  %i.fe = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fd
  store ptr %i.fa, ptr %i.ff, align 1
  %i.fg = load i32, ptr %i.ck, align 8, !tbaa !297
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ck, align 8, !tbaa !297
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit: ; preds = %bb.s, %bb.t
  %i.fi = getelementptr inbounds nuw i8, ptr %.02033, i64 8 ; 2 uses
  %.not22 = icmp eq ptr %i.fi, %i.dc
  br i1 %.not22, label %._crit_edge35.loopexit, label %.lr.ph34

bb.u:                                             ; preds = %bb.k, %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit
  %.0 = phi ptr [ %i.ei, %_ZN5clang7CodeGen23ConstantInitBuilderBaseD2Ev.exit ], [ %i.cg, %bb.k ]
  %i.fj = load ptr, ptr %6, align 8, !tbaa !1245  ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.bx
  br i1 %i.fk, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.fj) #28
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, %bb.j
  %.1 = phi ptr [ %i.bw, %bb.j ], [ %.0, %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit ]
  %i.fl = load ptr, ptr %5, align 8, !tbaa !279   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.h
  br i1 %i.fm, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.fl) #28
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit, %bb.b
  %.2 = phi ptr [ %i.g, %bb.b ], [ %.1, %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit ]
  %i.fn = load ptr, ptr %4, align 8, !tbaa !1437  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIPKN5clang16ObjCProtocolDeclESaIS3_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1438
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #30
  br label %_ZNSt6vectorIPKN5clang16ObjCProtocolDeclESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5clang16ObjCProtocolDeclESaIS3_EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL21finishAndCreateGlobalRN5clang7CodeGen21ConstantStructBuilderERKN4llvm5TwineERNS0_13CodeGenModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !1186
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !1189
  store i8 0, ptr %i.a, align 8, !tbaa !307
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1177 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1185
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %.thread.a, label %bb.b

.thread.a:                                        ; preds = %bb.a
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.108, i64 noundef 20) #28 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !1188  ; 2 uses
  %.pre11 = load i64, ptr %i.b, align 8, !tbaa !1189 ; 2 uses
  %.val.pre = load ptr, ptr %i.c, align 8, !tbaa !1177
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 138
  %i.i = load i8, ptr %i.h, align 2, !tbaa !307   ; 4 uses
  %5 = getelementptr i8, ptr %.val.pre, i64 268
  %.val.val = load i32, ptr %5, align 4, !tbaa !1185
  %6 = icmp eq i32 %.val.val, 5
  br i1 %6, label %bb.c, label %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 138
  %8 = load i8, ptr %7, align 2, !tbaa !307
  %.phi.trans.insert = getelementptr i8, ptr %i.d, i64 268
  %.val.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1185
  %i.j = icmp eq i32 %.val.val.pre, 5
  %spec.select = select i1 %i.j, i32 7, i32 8
  br label %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit

bb.c:                                             ; preds = %.thread.a
  %i.k = icmp eq i64 %.pre11, 0
  br i1 %i.k, label %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp ult i64 %.pre11, 6
  br i1 %.not.i.i, label %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.d
  %i.l = load i32, ptr %.pre, align 1
  %i.m = xor i32 %i.l, 1094999903
  %i.n = getelementptr i8, ptr %.pre, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 16724
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  %spec.select.a = select i1 %i.u, i32 7, i32 8
  br label %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit

_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %bb.b, %.thread.a, %bb.d, %bb.c
  %.in = phi i8 [ %i.i, %.thread.a ], [ %i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.i, %bb.c ], [ %8, %bb.b ], [ %i.i, %bb.d ]
  %.0.i = phi i32 [ 8, %.thread.a ], [ %spec.select.a, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 7, %bb.c ], [ %spec.select, %bb.b ], [ 8, %bb.d ]
  %i.v = zext i8 %.in to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !1227, !nonnull !315, !align !316
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1225
  %i.z = call noundef ptr @_ZN5clang7CodeGen28ConstantAggregateBuilderBase12finishStructEPN4llvm10StructTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.y) #28
  %i.aa = call noundef ptr @_ZN5clang7CodeGen23ConstantInitBuilderBase12createGlobalEPN4llvm8ConstantERKNS2_5TwineENS_9CharUnitsEbNS2_11GlobalValue12LinkageTypesEj(ptr noundef nonnull align 8 dereferenceable(177) %i.w, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(34) %1, i64 %i.v, i1 noundef zeroext false, i32 noundef %.0.i, i32 noundef 0) #28 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !1188
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !1189
  call void @_ZN4llvm12GlobalObject10setSectionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %i.aa, ptr %i.ab, i64 %i.ac) #28
  %i.ad = load ptr, ptr %3, align 8, !tbaa !1188  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit
  %i.af = load i64, ptr %i.a, align 8, !tbaa !307
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZL29getLinkageTypeForObjCMetadataRN5clang7CodeGen13CodeGenModuleEN4llvm9StringRefE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_122CGObjCNonFragileABIMac23ImplementationIsNonLazyEPKN5clang12ObjCImplDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2696) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZNK12_GLOBAL__N_122CGObjCNonFragileABIMac18GetNullarySelectorEPKc(ptr noundef nonnull align 8 dereferenceable(2696) %0, ptr noundef nonnull @.str.274)
  %i.b = tail call noundef ptr @_ZNK5clang17ObjCContainerDecl9getMethodENS_8SelectorEbb(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %i.a, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit12

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1305 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 256
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.d) #28 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !297  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx.i.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1466
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.p = load i16, ptr %i.o, align 4
  %i.q = icmp eq i16 %i.p, 453
  br i1 %i.q, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13, label %.lr.ph.i.i.i.i.i, !llvm.loop !2813

_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not15 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.m
  br i1 %.not15, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit12

_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 256
  %.not.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i4, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #28 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !297  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i5 = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i5 ; 3 uses
  %.not.i.i6 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i6, label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit12, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %bb.e, %bb.f
  %.sroa.07.1.i.i.i.i8 = phi ptr [ %i.af, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.07.1.i.i.i.i8, align 8, !tbaa !1466
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = icmp eq i16 %i.ad, 453
  br i1 %i.ae, label %_ZN5clangneENS_22specific_attr_iteratorINS_20ObjCNonLazyClassAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i10, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i7
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i8, i64 8 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i.i.i.i9, label %_ZN5clangneENS_22specific_attr_iteratorINS_20ObjCNonLazyClassAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i10, label %.lr.ph.i.i.i.i.i7, !llvm.loop !2813

_ZN5clangneENS_22specific_attr_iteratorINS_20ObjCNonLazyClassAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i10: ; preds = %bb.f, %.lr.ph.i.i.i.i.i7
  %.sroa.07.0.i.i.ph.i.i11 = phi ptr [ %i.aa, %bb.f ], [ %.sroa.07.1.i.i.i.i8, %.lr.ph.i.i.i.i.i7 ]
  %i.ag = icmp ne ptr %.sroa.07.0.i.i.ph.i.i11, %i.aa
  br label %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit12

_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit12: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_20ObjCNonLazyClassAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i10, %bb.e, %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13, %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit, %bb.a
  %i.ah = phi i1 [ true, %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit ], [ true, %bb.a ], [ false, %_ZNK5clang4Decl7hasAttrINS_20ObjCNonLazyClassAttrEEEbv.exit.thread13 ], [ false, %bb.e ], [ %i.ag, %_ZN5clangneENS_22specific_attr_iteratorINS_20ObjCNonLazyClassAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i10 ]
  ret i1 %i.ah
}

declare noundef ptr @_ZN4llvm12ConstantExpr10getBitCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZNK12_GLOBAL__N_122CGObjCNonFragileABIMac18GetNullarySelectorEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2696) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1167, !nonnull !315, !align !316
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !754, !nonnull !315, !align !316
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17768
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1142, !nonnull !315, !align !316 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !1314
  %i.j = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr %1, i64 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.j, 0
  %i.k = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !1145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1151 ; 2 uses
  %.not.i2 = icmp eq ptr %i.m, null
  br i1 %.not.i2, label %bb.c, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1155 ; 3 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !680
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr %1, i64 %.sroa.0.0.i) #28, !inline_history !2 ; 3 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !1151
  %.not23.i = icmp eq ptr %i.s, null
  br i1 %.not23.i, label %bb.e, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1132 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 24                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1133
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %bb.g, !prof !1134

bb.f:                                             ; preds = %bb.e
  %i.aa = inttoptr i64 %i.w to ptr
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !1132
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.ab, %bb.g ] ; 6 uses
  %i.ac = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.ad = and i64 %i.ac, -17592186044416
  %i.ae = or disjoint i64 %i.ad, 33553413
  store i64 %i.ae, ptr %.0.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.af, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8, !tbaa !1151
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !1158
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.d, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.m, %_ZN4llvm9StringRefC2EPKc.exit ], [ %i.s, %bb.d ]
  store ptr %.0.i, ptr %i.b, align 8, !tbaa !1151
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !1167, !nonnull !315, !align !316
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !754, !nonnull !315, !align !316
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 17776
end_hunk_0
