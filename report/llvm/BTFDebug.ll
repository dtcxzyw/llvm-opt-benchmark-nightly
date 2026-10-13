Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BTFDebug?download=true
inline.NumInlined: 6169
inline.NumDeleted: 3344
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm8BTFDebug15visitStructTypeEPKNS_15DICompositeTypeEbRj:bb.a
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ez, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.fb, 4611686018427387900     ; 3 uses
  %i.fc = shl i64 %n.vec, 3                       ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ev, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ek, i64 %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ev, i64 %i.ff ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.ek, i64 %i.ff ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.fg = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep140, align 8, !tbaa !322, !alias.scope !1042, !noalias !1041
  %wide.load141 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !322, !alias.scope !1042, !noalias !1041
  %i.fh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !322, !alias.scope !1041, !noalias !1042
  store <2 x i64> %wide.load141, ptr %i.fh, align 8, !tbaa !322, !alias.scope !1041, !noalias !1042
  %i.fi = getelementptr i8, ptr %next.gep140, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep140, align 8, !tbaa !322, !alias.scope !1042, !noalias !1041
  store <2 x ptr> splat (ptr null), ptr %i.fi, align 8, !tbaa !322, !alias.scope !1042, !noalias !1041
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !1037

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader143

.lr.ph.i.i.i.i.preheader143:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.preheader ], [ %i.fd, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.preheader ], [ %i.fe, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader143, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader143 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader143 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.fk = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !322, !alias.scope !1042, !noalias !1041
  store i64 %i.fk, ptr %.012.i.i.i.i, align 8, !tbaa !322, !alias.scope !1041, !noalias !1042
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !322, !alias.scope !1042, !noalias !1041
  %i.fl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.fl, %i.ef
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1038

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ev, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.fd, %middle.block ], [ %i.fm, %.lr.ph.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ek, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !325
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.fp, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.fq) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.ad
  store ptr %i.ev, ptr %i.dr, align 8, !tbaa !324
  store ptr %i.fn, ptr %i.ds, align 8, !tbaa !323
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fr, ptr %i.eg, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.ea, ptr %3, align 4, !tbaa !71
  %i.fs = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ft = and i64 %i.fs, 2
  %.not.i.i.i.i54 = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i.i.i54, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS1_EED2Ev.exit
  %i.fu = getelementptr inbounds i8, ptr %1, i64 -32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60
  br label %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS1_EED2Ev.exit
  %i.fw = lshr i64 %i.fs, 2
  %i.fx = and i64 %i.fw, 15
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fy
  br label %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit

_ZNK4llvm15DICompositeType14getAnnotationsEv.exit: ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i.i.i.i55 = phi ptr [ %i.fz, %bb.af ], [ %i.fv, %bb.ae ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i55, i64 120
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !63
  call void @_ZN4llvm8BTFDebug22processDeclAnnotationsENS_24MDTupleTypedArrayWrapperINS_6DINodeEEEji(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr %i.gb, i32 noundef %i.ea, i32 noundef -1)
  %i.gc = load ptr, ptr %4, align 8, !tbaa !60    ; 3 uses
  %i.gd = load i32, ptr %i.aj, align 8, !tbaa !94 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %.idx109 = shl nuw nsw i64 %i.ge, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx109
  %.not43105 = icmp eq i32 %i.gd, 0
  br i1 %.not43105, label %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit, %bb.am
  %.039107 = phi ptr [ %i.he, %bb.am ], [ %i.gc, %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit ] ; 2 uses
  %.040106 = phi i32 [ %i.hd, %bb.am ], [ 0, %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit ] ; 2 uses
  %i.gg = load ptr, ptr %.039107, align 8, !tbaa !242 ; 6 uses
  %i.gh = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #24
  %i.gi = icmp eq i16 %i.gh, 13
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 -16 ; 4 uses
  br i1 %i.gi, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.lr.ph108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %i.gg, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.gk = load i64, ptr %i.gj, align 8            ; 2 uses
  %i.gl = and i64 %i.gk, 2
  %.not.i.i.i.i57 = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i.i.i57, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 -32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.go = lshr i64 %i.gk, 2
  %i.gp = and i64 %i.go, 15
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gq
  br label %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit

_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit:  ; preds = %bb.ah, %bb.ai
  %.sroa.0.0.i.i.i.i58 = phi ptr [ %i.gr, %bb.ai ], [ %i.gn, %bb.ah ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i58, i64 56
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %i.gg, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.gt = load i64, ptr %i.gj, align 8            ; 2 uses
  %i.gu = and i64 %i.gt, 2
  %.not.i.i.i.i59 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i59, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gv = getelementptr inbounds i8, ptr %i.gg, i64 -32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !60
  br label %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit61

bb.al:                                            ; preds = %bb.aj
  %i.gx = lshr i64 %i.gt, 2
  %i.gy = and i64 %i.gx, 15
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gz
  br label %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit61

_ZNK4llvm15DICompositeType14getAnnotationsEv.exit61: ; preds = %bb.ak, %bb.al
  %.sroa.0.0.i.i.i.i60 = phi ptr [ %i.ha, %bb.al ], [ %i.gw, %bb.ak ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i60, i64 120
  br label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit61, %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit
  %.sink.in = phi ptr [ %i.hb, %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit61 ], [ %i.gs, %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !63
  %i.hc = load i32, ptr %3, align 4, !tbaa !71
  call void @_ZN4llvm8BTFDebug22processDeclAnnotationsENS_24MDTupleTypedArrayWrapperINS_6DINodeEEEji(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr %.sink, i32 noundef %i.hc, i32 noundef %.040106)
  %i.hd = add nuw nsw i32 %.040106, 1
  %i.he = getelementptr inbounds nuw i8, ptr %.039107, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.he, %i.gf
  br i1 %.not43, label %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit.loopexit, label %.lr.ph108

_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit.loopexit: ; preds = %bb.am
  %.pre115 = load ptr, ptr %4, align 8, !tbaa !60
  br label %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit.loopexit, %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit, %bb.r
  %i.hf = phi ptr [ %.pre115, %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit.loopexit ], [ %i.gc, %_ZNK4llvm15DICompositeType14getAnnotationsEv.exit ], [ %.pre116, %bb.r ] ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.ai
  br i1 %i.hg, label %_ZN4llvm11SmallVectorIPKNS_6DINodeELj8EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit
  call void @free(ptr noundef %i.hf) #24
  br label %_ZN4llvm11SmallVectorIPKNS_6DINodeELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_6DINodeELj8EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13BTFTypeStructESt14default_deleteIS1_EED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8BTFDebug14visitArrayTypeEPKNS_15DICompositeTypeERj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %_ZNK4llvm15DICompositeType11getBaseTypeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.e, 2
  %i.j = and i64 %i.i, 15
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.k
  br label %_ZNK4llvm15DICompositeType11getBaseTypeEv.exit

_ZNK4llvm15DICompositeType11getBaseTypeEv.exit:   ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  call void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.o = load i64, ptr %i.d, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i19 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm15DICompositeType11getBaseTypeEv.exit
  %i.q = getelementptr inbounds i8, ptr %1, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60
  br label %_ZNK4llvm15DICompositeType11getElementsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm15DICompositeType11getBaseTypeEv.exit
  %i.s = lshr i64 %i.o, 2
  %i.t = and i64 %i.s, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.u
  br label %_ZNK4llvm15DICompositeType11getElementsEv.exit

_ZNK4llvm15DICompositeType11getElementsEv.exit:   ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i20 = phi ptr [ %i.v, %bb.e ], [ %i.r, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i20, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63   ; 7 uses
  %.not.i = icmp eq ptr %i.x, null                ; 2 uses
  br i1 %.not.i, label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm15DICompositeType11getElementsEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc i64 %i.z to i32
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = and i32 %i.ac, 15
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !94
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit

_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %i.ag = phi i32 [ %i.ad, %bb.g ], [ %i.af, %bb.h ]
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit.thread, label %.thread

_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit.thread: ; preds = %_ZNK4llvm15DICompositeType11getElementsEv.exit, %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit
  %i.ai = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !1076 ; 4 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !71, !noalias !1076
  tail call void @_ZN4llvm12BTFTypeArrayC1Ejj(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i32 noundef %i.aj, i32 noundef 0) #24, !noalias !1076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !323
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !324
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.as, 1                        ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.at, ptr %i.au, align 4, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i32 %i.at, ptr %i.ax, align 4, !tbaa !71
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !323 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !325
  %.not.i.i.i21 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i.i.i21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit.thread
  %i.bb = ptrtoint ptr %i.ai to i64
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !322
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !323
  br label %bb.m

bb.j:                                             ; preds = %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit.thread
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !324 ; 10 uses
  %i.be = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #27 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  %i.bq = ptrtoint ptr %i.ai to i64
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !322
  %.not10.i.i.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.br = add i64 %i.be, -8
  %i.bs = sub i64 %i.br, %i.bf                    ; 3 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader254, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bv = and i64 %i.bs, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bo, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bd, i64 %i.bw
  %bound0 = icmp ult ptr %i.bo, %i.by
  %bound1 = icmp ult ptr %i.bd, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bo, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bd, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.cc ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.bd, i64 %i.cc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.cd = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !322, !alias.scope !1079, !noalias !1077
  %wide.load192 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !322, !alias.scope !1079, !noalias !1077
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !322, !alias.scope !1080, !noalias !1079
  store <2 x i64> %wide.load192, ptr %i.ce, align 8, !tbaa !322, !alias.scope !1080, !noalias !1079
  %i.cf = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !322, !alias.scope !1079, !noalias !1077
  store <2 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !322, !alias.scope !1079, !noalias !1077
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !1051

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader254

.lr.ph.i.i.i.i.preheader254:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader254, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader254 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader254 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.ch = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !322, !alias.scope !1078, !noalias !1077
  store i64 %i.ch, ptr %.012.i.i.i.i, align 8, !tbaa !322, !alias.scope !1077, !noalias !1078
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !322, !alias.scope !1078, !noalias !1077
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.ci, %i.ay
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1052

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bo, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ca, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !325
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.cn) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.l
  store ptr %i.bo, ptr %i.ak, align 8, !tbaa !324
  store ptr %i.ck, ptr %i.al, align 8, !tbaa !323
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.co, ptr %i.az, align 8, !tbaa !325
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.at, ptr %i.c, align 4, !tbaa !71
  br i1 %.not.i, label %._crit_edge, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit
  %i.cp = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.z, %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit ] ; 2 uses
  %i.cq = and i64 %i.cp, 2
  %.not.i.i.i25 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread
  %i.cr = trunc i64 %i.cp to i32
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = and i32 %i.cs, 15
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit26

bb.o:                                             ; preds = %.thread
  %i.cu = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !94
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit26

_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit26: ; preds = %bb.n, %bb.o
  %i.cw = phi i32 [ %i.ct, %bb.n ], [ %i.cv, %bb.o ]
  %.0140 = add i32 %i.cw, -1                      ; 2 uses
  %i.cx = icmp sgt i32 %.0140, -1
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit26
  %i.cy = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.de = zext nneg i32 %.0140 to i64
  %.promoted = load i32, ptr %i.c, align 4
  br label %bb.p

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41
  store i32 %i.id, ptr %i.c, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m, %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41.thread, %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE4sizeEv.exit26
  %3 = load i32, ptr %i.c, align 4, !tbaa !71
  store i32 %3, ptr %2, align 4, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !225
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.ag, label %bb.al

bb.p:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41
  %4 = phi i32 [ %.promoted, %.lr.ph ], [ %i.id, %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.de, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41 ] ; 4 uses
  %i.dh = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.di = and i64 %i.dh, 2
  %.not.i.i.i27 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !60
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEEixEj.exit

bb.r:                                             ; preds = %bb.p
  %i.dk = lshr i64 %i.dh, 2
  %i.dl = and i64 %i.dk, 15
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dm
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEEixEj.exit

_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEEixEj.exit: ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i.i = phi ptr [ %i.dn, %bb.r ], [ %i.dj, %bb.q ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %indvars.iv
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !63 ; 3 uses
  %.not18 = icmp eq ptr %i.dp, null
  br i1 %.not18, label %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEEixEj.exit
  %i.dq = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24
  %i.dr = icmp eq i16 %i.dq, 33
  br i1 %i.dr, label %bb.t, label %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41

bb.t:                                             ; preds = %bb.s
  %i.ds = call i64 @_ZNK4llvm10DISubrange8getCountEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24 ; 2 uses
  %i.dt = and i64 %i.ds, 6
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = and i64 %i.ds, -7
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %.0.i.i.i = select i1 %i.du, ptr %i.dw, ptr null
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !93 ; 3 uses
  %i.ea = icmp ult i32 %i.dz, 65
  br i1 %i.ea, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !41
  %i.ec = icmp eq i32 %i.dz, 0
  %i.ed = sub nuw nsw i32 64, %i.dz
  %i.ee = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.ef = shl i64 %i.eb, %i.ee
  %i.eg = ashr exact i64 %i.ef, %i.ee
  %.0.i.i.i28 = select i1 %i.ec, i64 0, i64 %i.eg
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit

bb.v:                                             ; preds = %bb.t
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !38
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit

_ZNK4llvm11ConstantInt12getSExtValueEv.exit:      ; preds = %bb.u, %bb.v
  %.0.i.i = phi i64 [ %.0.i.i.i28, %bb.u ], [ %i.ei, %bb.v ]
  %i.ej = call i64 @llvm.smax.i64(i64 %.0.i.i, i64 0)
  %i.ek = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !1081 ; 7 uses
  %i.el = trunc i64 %i.ej to i32
  call void @_ZN4llvm12BTFTypeArrayC1Ejj(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, i32 noundef %4, i32 noundef %i.el) #24, !noalias !1081
  %i.em = icmp eq i64 %indvars.iv, 0
  br i1 %i.em, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit
  store i32 %4, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  %i.en = load ptr, ptr %i.db, align 8, !tbaa !323
  %i.eo = load ptr, ptr %i.da, align 8, !tbaa !324
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 3
  %i.et = trunc i64 %i.es to i32
  %i.eu = add i32 %i.et, 1                        ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !43
  %i.ew = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i29 = extractvalue { ptr, i8 } %i.ew, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i29, i64 8
  store i32 %i.eu, ptr %i.ex, align 4, !tbaa !71
  %i.ey = load ptr, ptr %i.db, align 8, !tbaa !323 ; 6 uses
  %i.ez = load ptr, ptr %i.dc, align 8, !tbaa !325
  %.not.i.i.i30 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i.i30, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = ptrtoint ptr %i.ek to i64
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !322
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fb, ptr %i.db, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41.thread

bb.y:                                             ; preds = %bb.w
  %i.fc = load ptr, ptr %i.da, align 8, !tbaa !324 ; 7 uses
  %i.fd = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64               ; 3 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 3 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49: ; preds = %bb.y
  %i.fh = ashr exact i64 %i.ff, 3                 ; 3 uses
  %.sroa.speculated.i.i50 = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i50, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 1152921504606846975)
  %i.fl = select i1 %i.fj, i64 1152921504606846975, i64 %i.fk ; 3 uses
  %.not.i.i51 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i51)
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #27 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff
  %i.fp = ptrtoint ptr %i.ek to i64
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !322
  %.not10.i.i.i.i52 = icmp eq ptr %i.fc, %i.ey
  br i1 %.not10.i.i.i.i52, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i64, label %.lr.ph.i.i.i.i53.preheader

.lr.ph.i.i.i.i53.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49
  %i.fq = add i64 %i.fd, -8
  %i.fr = sub i64 %i.fq, %i.fe                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check217 = icmp ult i64 %i.fr, 24
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i53.preheader247, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i.i.i.i53.preheader
  %n.vec219 = and i64 %i.ft, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec219, 3                    ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fn, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fc, i64 %i.fu
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.fx = shl i64 %index221, 3                    ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.fn, i64 %i.fx ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.fc, i64 %i.fx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.fy = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load224 = load <2 x i64>, ptr %next.gep223, align 8, !tbaa !322, !alias.scope !1083, !noalias !1082
  %wide.load225 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !322, !alias.scope !1083, !noalias !1082
  %i.fz = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %wide.load224, ptr %next.gep222, align 8, !tbaa !322, !alias.scope !1082, !noalias !1083
  store <2 x i64> %wide.load225, ptr %i.fz, align 8, !tbaa !322, !alias.scope !1082, !noalias !1083
  %i.ga = getelementptr i8, ptr %next.gep223, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep223, align 8, !tbaa !322, !alias.scope !1083, !noalias !1082
  store <2 x ptr> splat (ptr null), ptr %i.ga, align 8, !tbaa !322, !alias.scope !1083, !noalias !1082
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.gb, label %middle.block227, label %vector.body220, !llvm.loop !1058

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.ft, %n.vec219
  br i1 %cmp.n228, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i64, label %.lr.ph.i.i.i.i53.preheader247

.lr.ph.i.i.i.i53.preheader247:                    ; preds = %.lr.ph.i.i.i.i53.preheader, %middle.block227
  %.012.i.i.i.i54.ph = phi ptr [ %i.fn, %.lr.ph.i.i.i.i53.preheader ], [ %i.fv, %middle.block227 ]
  %.0911.i.i.i.i55.ph = phi ptr [ %i.fc, %.lr.ph.i.i.i.i53.preheader ], [ %i.fw, %middle.block227 ]
  br label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph.i.i.i.i53.preheader247, %.lr.ph.i.i.i.i53
  %.012.i.i.i.i54 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i53 ], [ %.012.i.i.i.i54.ph, %.lr.ph.i.i.i.i53.preheader247 ] ; 2 uses
  %.0911.i.i.i.i55 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i53 ], [ %.0911.i.i.i.i55.ph, %.lr.ph.i.i.i.i53.preheader247 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.gc = load i64, ptr %.0911.i.i.i.i55, align 8, !tbaa !322, !alias.scope !1083, !noalias !1082
  store i64 %i.gc, ptr %.012.i.i.i.i54, align 8, !tbaa !322, !alias.scope !1082, !noalias !1083
  store ptr null, ptr %.0911.i.i.i.i55, align 8, !tbaa !322, !alias.scope !1083, !noalias !1082
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i55, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i54, i64 8 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gd, %i.ey
  br i1 %.not.i.i.i.i56, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i64, label %.lr.ph.i.i.i.i53, !llvm.loop !1059

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i64: ; preds = %.lr.ph.i.i.i.i53, %middle.block227, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49
  %.0.lcssa.i.i.i.i58 = phi ptr [ %i.fn, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49 ], [ %i.fv, %middle.block227 ], [ %i.ge, %.lr.ph.i.i.i.i53 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i58, i64 8
  %.not.i23.i66 = icmp eq ptr %i.fc, null
  br i1 %.not.i23.i66, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit67, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i64
  %i.gg = load ptr, ptr %i.dc, align 8, !tbaa !325
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.gi) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit67

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit67: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i64, %bb.aa
  store ptr %i.fn, ptr %i.da, align 8, !tbaa !324
  store ptr %i.gf, ptr %i.db, align 8, !tbaa !323
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.gj, ptr %i.dc, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41.thread

_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41.thread: ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.eu, ptr %i.c, align 4, !tbaa !71
  br label %._crit_edge

bb.ab:                                            ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit
  %i.gk = load ptr, ptr %i.db, align 8, !tbaa !323 ; 6 uses
  %i.gl = load ptr, ptr %i.da, align 8, !tbaa !324 ; 10 uses
  %i.gm = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gn = ptrtoint ptr %i.gl to i64               ; 4 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 4 uses
  %i.gp = lshr exact i64 %i.go, 3
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = add i32 %i.gq, 1                        ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !43
  %i.gt = load ptr, ptr %i.dc, align 8, !tbaa !325
  %.not.i.i.i35 = icmp eq ptr %i.gk, %i.gt
  br i1 %.not.i.i.i35, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gu = ptrtoint ptr %i.ek to i64
  store i64 %i.gu, ptr %i.gk, align 8, !tbaa !322
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.gv, ptr %i.db, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41

bb.ad:                                            ; preds = %bb.ab
  %i.gw = icmp eq i64 %i.go, 9223372036854775800
  br i1 %i.gw, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i68

bb.ae:                                            ; preds = %bb.ad
  store i32 %4, ptr %i.c, align 4
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i68: ; preds = %bb.ad
  %i.gx = ashr exact i64 %i.go, 3                 ; 3 uses
  %.sroa.speculated.i.i69 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i69, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 1152921504606846975)
  %i.hb = select i1 %i.gz, i64 1152921504606846975, i64 %i.ha ; 3 uses
  %.not.i.i70 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i70)
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #27 ; 10 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.go
  %i.hf = ptrtoint ptr %i.ek to i64
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !322
  %.not10.i.i.i.i71 = icmp eq ptr %i.gl, %i.gk
  br i1 %.not10.i.i.i.i71, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i83, label %.lr.ph.i.i.i.i72.preheader

.lr.ph.i.i.i.i72.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i68
  %i.hg = add i64 %i.gm, -8
  %i.hh = sub i64 %i.hg, %i.gn                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 3
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.hh, 56
  br i1 %min.iters.check202, label %.lr.ph.i.i.i.i72.preheader249, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i.i.i.i72.preheader
  %scevgep = getelementptr i8, ptr %i.hd, i64 8
  %i.hk = add i64 %i.gm, -8
  %i.hl = sub i64 %i.hk, %i.gn
  %i.hm = and i64 %i.hl, -8                       ; 2 uses
  %scevgep195 = getelementptr i8, ptr %scevgep, i64 %i.hm
  %scevgep196 = getelementptr i8, ptr %i.gl, i64 8
  %scevgep197 = getelementptr i8, ptr %scevgep196, i64 %i.hm
  %bound0198 = icmp ult ptr %i.hd, %scevgep197
  %bound1199 = icmp ult ptr %i.gl, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  br i1 %found.conflict200, label %.lr.ph.i.i.i.i72.preheader249, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck194
  %n.vec204 = and i64 %i.hj, 4611686018427387900  ; 3 uses
  %i.hn = shl i64 %n.vec204, 3                    ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hd, i64 %i.hn  ; 2 uses
  %i.hp = getelementptr i8, ptr %i.gl, i64 %i.hn
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %i.hq = shl i64 %index206, 3                    ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.hd, i64 %i.hq ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.gl, i64 %i.hq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.hr = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load209 = load <2 x i64>, ptr %next.gep208, align 8, !tbaa !322, !alias.scope !1086, !noalias !1084
  %wide.load210 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !322, !alias.scope !1086, !noalias !1084
  %i.hs = getelementptr i8, ptr %next.gep207, i64 16
  store <2 x i64> %wide.load209, ptr %next.gep207, align 8, !tbaa !322, !alias.scope !1087, !noalias !1086
  store <2 x i64> %wide.load210, ptr %i.hs, align 8, !tbaa !322, !alias.scope !1087, !noalias !1086
  %i.ht = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep208, align 8, !tbaa !322, !alias.scope !1086, !noalias !1084
  store <2 x ptr> splat (ptr null), ptr %i.ht, align 8, !tbaa !322, !alias.scope !1086, !noalias !1084
  %index.next211 = add nuw i64 %index206, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.hu, label %middle.block212, label %vector.body205, !llvm.loop !1066

middle.block212:                                  ; preds = %vector.body205
  %cmp.n213 = icmp eq i64 %i.hj, %n.vec204
  br i1 %cmp.n213, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i83, label %.lr.ph.i.i.i.i72.preheader249

.lr.ph.i.i.i.i72.preheader249:                    ; preds = %vector.memcheck194, %.lr.ph.i.i.i.i72.preheader, %middle.block212
  %.012.i.i.i.i73.ph = phi ptr [ %i.hd, %vector.memcheck194 ], [ %i.hd, %.lr.ph.i.i.i.i72.preheader ], [ %i.ho, %middle.block212 ]
  %.0911.i.i.i.i74.ph = phi ptr [ %i.gl, %vector.memcheck194 ], [ %i.gl, %.lr.ph.i.i.i.i72.preheader ], [ %i.hp, %middle.block212 ]
  br label %.lr.ph.i.i.i.i72

.lr.ph.i.i.i.i72:                                 ; preds = %.lr.ph.i.i.i.i72.preheader249, %.lr.ph.i.i.i.i72
  %.012.i.i.i.i73 = phi ptr [ %i.hx, %.lr.ph.i.i.i.i72 ], [ %.012.i.i.i.i73.ph, %.lr.ph.i.i.i.i72.preheader249 ] ; 2 uses
  %.0911.i.i.i.i74 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i72 ], [ %.0911.i.i.i.i74.ph, %.lr.ph.i.i.i.i72.preheader249 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.hv = load i64, ptr %.0911.i.i.i.i74, align 8, !tbaa !322, !alias.scope !1085, !noalias !1084
  store i64 %i.hv, ptr %.012.i.i.i.i73, align 8, !tbaa !322, !alias.scope !1084, !noalias !1085
  store ptr null, ptr %.0911.i.i.i.i74, align 8, !tbaa !322, !alias.scope !1085, !noalias !1084
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i74, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 8 ; 2 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.hw, %i.gk
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i83, label %.lr.ph.i.i.i.i72, !llvm.loop !1067

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i83: ; preds = %.lr.ph.i.i.i.i72, %middle.block212, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i68
  %.0.lcssa.i.i.i.i77 = phi ptr [ %i.hd, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i68 ], [ %i.ho, %middle.block212 ], [ %i.hx, %.lr.ph.i.i.i.i72 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i77, i64 8
  %.not.i23.i85 = icmp eq ptr %i.gl, null
  br i1 %.not.i23.i85, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit86, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i83
  %i.hz = load ptr, ptr %i.dc, align 8, !tbaa !325
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 %i.ia, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.ib) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit86

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit86: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i83, %bb.af
  store ptr %i.hd, ptr %i.da, align 8, !tbaa !324
  store ptr %i.hy, ptr %i.db, align 8, !tbaa !323
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.ic, ptr %i.dc, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN4llvm12BTFTypeArrayESt14default_deleteIS1_EED2Ev.exit41: ; preds = %bb.ac, %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit86, %bb.s, %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEEixEj.exit
  %i.id = phi i32 [ %4, %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEEixEj.exit ], [ %4, %bb.s ], [ %i.gr, %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit86 ], [ %i.gr, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ie = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ie, label %bb.p, label %._crit_edge.loopexit, !llvm.loop !1068

bb.ag:                                            ; preds = %._crit_edge
  %i.if = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1088 ; 4 uses
  call void @_ZN4llvm10BTFTypeIntC1EjjjNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(52) %i.if, i32 noundef 7, i32 noundef 32, i32 noundef 0, ptr nonnull @.str.6, i64 19) #24, !noalias !1088
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !323 ; 6 uses
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !324 ; 7 uses
  %i.ik = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64               ; 3 uses
  %i.im = sub i64 %i.ik, %i.il                    ; 4 uses
  %i.in = lshr exact i64 %i.im, 3
  %i.io = trunc i64 %i.in to i32
  %i.ip = add i32 %i.io, 1                        ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !43
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !325
  %.not.i.i.i42 = icmp eq ptr %i.ii, %i.is
  br i1 %.not.i.i.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.it = ptrtoint ptr %i.if to i64
  store i64 %i.it, ptr %i.ii, align 8, !tbaa !322
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.iu, ptr %i.ih, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN4llvm10BTFTypeIntESt14default_deleteIS1_EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.iv = icmp eq i64 %i.im, 9223372036854775800
  br i1 %i.iv, label %bb.aj, label %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i87

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i87: ; preds = %bb.ai
  %i.iw = ashr exact i64 %i.im, 3                 ; 3 uses
  %.sroa.speculated.i.i88 = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %i.ix = add nsw i64 %.sroa.speculated.i.i88, %i.iw ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 1152921504606846975)
  %i.ja = select i1 %i.iy, i64 1152921504606846975, i64 %i.iz ; 3 uses
  %.not.i.i89 = icmp ne i64 %i.ja, 0
  call void @llvm.assume(i1 %.not.i.i89)
  %i.jb = shl nuw nsw i64 %i.ja, 3
  %i.jc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #27 ; 7 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.im
  %i.je = ptrtoint ptr %i.if to i64
  store i64 %i.je, ptr %i.jd, align 8, !tbaa !322
  %.not10.i.i.i.i90 = icmp eq ptr %i.ij, %i.ii
  br i1 %.not10.i.i.i.i90, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i102, label %.lr.ph.i.i.i.i91.preheader

.lr.ph.i.i.i.i91.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i87
  %i.jf = add i64 %i.ik, -8
  %i.jg = sub i64 %i.jf, %i.il                    ; 2 uses
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %i.jg, 24
  br i1 %min.iters.check232, label %.lr.ph.i.i.i.i91.preheader246, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph.i.i.i.i91.preheader
  %n.vec234 = and i64 %i.ji, 4611686018427387900  ; 3 uses
  %i.jj = shl i64 %n.vec234, 3                    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jc, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr i8, ptr %i.ij, i64 %i.jj
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %i.jm = shl i64 %index236, 3                    ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.jc, i64 %i.jm ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.ij, i64 %i.jm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.jn = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <2 x i64>, ptr %next.gep238, align 8, !tbaa !322, !alias.scope !1090, !noalias !1089
  %wide.load240 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !322, !alias.scope !1090, !noalias !1089
  %i.jo = getelementptr i8, ptr %next.gep237, i64 16
  store <2 x i64> %wide.load239, ptr %next.gep237, align 8, !tbaa !322, !alias.scope !1089, !noalias !1090
  store <2 x i64> %wide.load240, ptr %i.jo, align 8, !tbaa !322, !alias.scope !1089, !noalias !1090
  %i.jp = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep238, align 8, !tbaa !322, !alias.scope !1090, !noalias !1089
  store <2 x ptr> splat (ptr null), ptr %i.jp, align 8, !tbaa !322, !alias.scope !1090, !noalias !1089
  %index.next241 = add nuw i64 %index236, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.jq, label %middle.block242, label %vector.body235, !llvm.loop !1074

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.ji, %n.vec234
  br i1 %cmp.n243, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i102, label %.lr.ph.i.i.i.i91.preheader246

.lr.ph.i.i.i.i91.preheader246:                    ; preds = %.lr.ph.i.i.i.i91.preheader, %middle.block242
  %.012.i.i.i.i92.ph = phi ptr [ %i.jc, %.lr.ph.i.i.i.i91.preheader ], [ %i.jk, %middle.block242 ]
  %.0911.i.i.i.i93.ph = phi ptr [ %i.ij, %.lr.ph.i.i.i.i91.preheader ], [ %i.jl, %middle.block242 ]
  br label %.lr.ph.i.i.i.i91

.lr.ph.i.i.i.i91:                                 ; preds = %.lr.ph.i.i.i.i91.preheader246, %.lr.ph.i.i.i.i91
  %.012.i.i.i.i92 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i91 ], [ %.012.i.i.i.i92.ph, %.lr.ph.i.i.i.i91.preheader246 ] ; 2 uses
  %.0911.i.i.i.i93 = phi ptr [ %i.js, %.lr.ph.i.i.i.i91 ], [ %.0911.i.i.i.i93.ph, %.lr.ph.i.i.i.i91.preheader246 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.jr = load i64, ptr %.0911.i.i.i.i93, align 8, !tbaa !322, !alias.scope !1090, !noalias !1089
  store i64 %i.jr, ptr %.012.i.i.i.i92, align 8, !tbaa !322, !alias.scope !1089, !noalias !1090
  store ptr null, ptr %.0911.i.i.i.i93, align 8, !tbaa !322, !alias.scope !1090, !noalias !1089
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i93, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i92, i64 8 ; 2 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.js, %i.ii
  br i1 %.not.i.i.i.i94, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i102, label %.lr.ph.i.i.i.i91, !llvm.loop !1075

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i102: ; preds = %.lr.ph.i.i.i.i91, %middle.block242, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i87
  %.0.lcssa.i.i.i.i96 = phi ptr [ %i.jc, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i87 ], [ %i.jk, %middle.block242 ], [ %i.jt, %.lr.ph.i.i.i.i91 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i96, i64 8
  %.not.i23.i104 = icmp eq ptr %i.ij, null
  br i1 %.not.i23.i104, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit105, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i102
  %i.jv = load ptr, ptr %i.ir, align 8, !tbaa !325
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = sub i64 %i.jw, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.jx) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit105

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit105: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i102, %bb.ak
  store ptr %i.jc, ptr %i.ig, align 8, !tbaa !324
  store ptr %i.ju, ptr %i.ih, align 8, !tbaa !323
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ja
  store ptr %i.jy, ptr %i.ir, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN4llvm10BTFTypeIntESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm10BTFTypeIntESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ah, %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit105
  store i32 %i.ip, ptr %i.df, align 8, !tbaa !225
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN4llvm10BTFTypeIntESt14default_deleteIS1_EED2Ev.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %5 = alloca %"class.llvm::SmallDenseMap", align 8 ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !336, !noalias !1107 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !337, !noalias !1107 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.h = load i32, ptr %i.g, align 4, !tbaa !338, !noalias !1107 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !71, !noalias !1108
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !283

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.ad, %bb.d ], [ %i.q, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70, !noalias !1108
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit, label %bb.d, !prof !285

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71, !noalias !1108
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !284

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre115 = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi116 = phi i64 [ %.pre115, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit ], [ %i.al, %.loopexit.i.i ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi116
  %.not88 = icmp eq ptr %.lcssa.sink.i.i, %i.am
  br i1 %.not88, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.ao = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !71
  store i32 %i.aq, ptr %2, align 4, !tbaa !71
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !70  ; 3 uses
  %.not48 = icmp eq ptr %i.ar, null
  %or.cond = and i1 %3, %4
  %or.cond51 = or i1 %or.cond, %.not48
  br i1 %or.cond51, label %_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE.exit.thread80, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !68
  %.not94 = icmp eq i8 %i.as, 13
  br i1 %.not94, label %.preheader, label %_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE.exit.thread80

.preheader:                                       ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE.exit
  %.037 = phi ptr [ %i.bf, %_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE.exit ], [ %i.ar, %.preheader ] ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %.037, i64 -16 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = and i64 %i.aw, 2
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds i8, ptr %.037, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ba = lshr i64 %i.aw, 2
  %i.bb = and i64 %i.ba, 15
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bc
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit

_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit:     ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bd, %bb.h ], [ %i.az, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63 ; 11 uses
  %.not50 = icmp eq ptr %i.bf, null
  br i1 %.not50, label %_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE.exit.thread80, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !336, !noalias !1109 ; 3 uses
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !337, !noalias !1109 ; 2 uses
  %i.bi = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !1109 ; 4 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit.i.i53, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add i32 %i.bi, -1                       ; 2 uses
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = mul i64 %i.bl, -4658895280553007687     ; 2 uses
  %i.bn = lshr i64 %i.bm, 31
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bk, %i.bp                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !71, !noalias !1110
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i.i56, label %.loopexit.i.i53, !prof !283

.lr.ph.i.i.i.i56:                                 ; preds = %bb.j, %bb.k
  %i.by = phi i64 [ %i.ce, %bb.k ], [ %i.br, %bb.j ]
  %.017.i.i.i.i57 = phi i32 [ %i.cd, %bb.k ], [ %i.bq, %bb.j ]
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !70, !noalias !1110
  %i.cb = icmp eq ptr %i.bf, %i.ca
  br i1 %i.cb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58.loopexit, label %bb.k, !prof !285

bb.k:                                             ; preds = %.lr.ph.i.i.i.i56
  %i.cc = add nuw i32 %.017.i.i.i.i57, 1
  %i.cd = and i32 %i.cc, %i.bk                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !71, !noalias !1110
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i.i56, label %.loopexit.i.i53, !prof !284

.loopexit.i.i53:                                  ; preds = %bb.k, %bb.j, %bb.i
  %i.cl = zext i32 %i.bi to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.cl
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58.loopexit: ; preds = %.lr.ph.i.i.i.i56
  %.pre = zext i32 %i.bi to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58.loopexit, %.loopexit.i.i53
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58.loopexit ], [ %i.cl, %.loopexit.i.i53 ]
  %.lcssa.sink.i.i54 = phi ptr [ %i.bz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58.loopexit ], [ %i.cm, %.loopexit.i.i53 ]
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.pre-phi
  %.not95 = icmp eq ptr %.lcssa.sink.i.i54, %i.cn
  br i1 %.not95, label %bb.l, label %_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE.exit

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit58
  br i1 %3, label %bb.m, label %.critedge3

bb.m:                                             ; preds = %bb.l
  %i.co = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %.037) #24
  %i.cp = icmp eq i16 %i.co, 15
  br i1 %i.cp, label %bb.n, label %.critedge3

bb.n:                                             ; preds = %bb.m
  %i.cq = load i64, ptr %i.av, align 8            ; 2 uses
  %i.cr = and i64 %i.cq, 2
  %.not.i.i.i.i60 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i.i60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds i8, ptr %.037, i64 -32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit

end_hunk_0
begin_hunk_1_@_ZN4llvm8BTFDebug16visitFwdDeclTypeEPKNS_15DICompositeTypeEbRj:bb.a
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #27 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  %i.aw = ptrtoint ptr %i.p to i64
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !322
  %.not10.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ax = add i64 %i.ak, -8
  %i.ay = sub i64 %i.ax, %i.al                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.au, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.aj, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.be ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.aj, i64 %i.be ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.bf = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !322, !alias.scope !1140, !noalias !1139
  %wide.load16 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !322, !alias.scope !1140, !noalias !1139
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !322, !alias.scope !1139, !noalias !1140
  store <2 x i64> %wide.load16, ptr %i.bg, align 8, !tbaa !322, !alias.scope !1139, !noalias !1140
  %i.bh = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !322, !alias.scope !1140, !noalias !1139
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !322, !alias.scope !1140, !noalias !1139
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader18

.lr.ph.i.i.i.i.preheader18:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader18, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.bj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !322, !alias.scope !1140, !noalias !1139
  store i64 %i.bj, ptr %.012.i.i.i.i, align 8, !tbaa !322, !alias.scope !1139, !noalias !1140
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !322, !alias.scope !1140, !noalias !1139
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.ae
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1137

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.au, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !325
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.au, ptr %i.q, align 8, !tbaa !324
  store ptr %i.bm, ptr %i.r, align 8, !tbaa !323
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN4llvm10BTFTypeFwdESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm10BTFTypeFwdESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.z, ptr %3, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8BTFDebug18visitCompositeTypeEPKNS_15DICompositeTypeERj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24 ; 3 uses
  switch i16 %i.a, label %bb.g [
    i16 19, label %bb.b
    i16 23, label %bb.b
    i16 51, label %bb.b
    i16 1, label %bb.e
    i16 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !258
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i16 %i.a, 23
  tail call void @_ZN4llvm8BTFDebug16visitFwdDeclTypeEPKNS_15DICompositeTypeEbRj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i1 noundef zeroext %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i16 %i.a, 19
  tail call void @_ZN4llvm8BTFDebug15visitStructTypeEPKNS_15DICompositeTypeEbRj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i1 noundef zeroext %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4llvm8BTFDebug14visitArrayTypeEPKNS_15DICompositeTypeERj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4llvm8BTFDebug13visitEnumTypeEPKNS_15DICompositeTypeERj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm8BTFDebug22IsForwardDeclCandidateEPKNS_6DITypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1040) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !68
  %.not = icmp eq i8 %i.a, 14
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  %i.c = and i16 %i.b, -5
  %or.cond = icmp eq i16 %i.c, 19
  br i1 %or.cond, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %1, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.i = lshr i64 %i.e, 2
  %i.j = and i64 %i.i, 15
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.k
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i

_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i, label %.critedge15, label %_ZNK4llvm6DIType7getNameEv.exit

_ZNK4llvm6DIType7getNameEv.exit:                  ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i
  %i.o = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #24
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.critedge15, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6DIType7getNameEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !258
  %i.t = and i32 %i.s, 4
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %bb.g, label %.critedge15

.critedge15:                                      ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i, %_ZNK4llvm6DIType7getNameEv.exit, %bb.b, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge15, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge15 ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8BTFDebug16visitDerivedTypeEPKNS_13DIDerivedTypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::tuple.1251", align 8   ; 4 uses
  %6 = alloca %"class.std::tuple.1216", align 1   ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.std::unique_ptr.302", align 8 ; 4 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24 ; 5 uses
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  %i.i = icmp eq i16 %i.g, 71
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit

_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit:     ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  tail call void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
  br label %bb.bb

bb.e:                                             ; preds = %bb.a
  %.not = xor i1 %3, true
  %or.cond = or i1 %4, %.not
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i16 %i.g, 15
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = and i64 %i.w, 2
  %.not.i.i.i.i34 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds i8, ptr %1, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = lshr i64 %i.w, 2
  %i.ab = and i64 %i.aa, 15
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ac
  br label %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit

_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit:  ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i35 = phi ptr [ %i.ad, %bb.i ], [ %i.z, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i35, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63
  %.not178 = icmp eq ptr %i.af, null
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit, %bb.e
  %.0 = phi i1 [ %4, %bb.e ], [ %.not178, %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit ] ; 2 uses
  %or.cond3 = and i1 %3, %.0
  br i1 %or.cond3, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = and i64 %i.ah, 2
  %.not.i.i.i.i36 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit38

bb.m:                                             ; preds = %bb.k
  %i.al = lshr i64 %i.ah, 2
  %i.am = and i64 %i.al, 15
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.an
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit38

_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit38:   ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i.i37 = phi ptr [ %i.ao, %bb.m ], [ %i.ak, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i37, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63 ; 9 uses
  %.not32 = icmp eq ptr %i.aq, null
  br i1 %.not32, label %.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit38
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !68
  %.not.i = icmp eq i8 %i.ar, 14
  br i1 %.not.i, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.as = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #24
  %i.at = and i16 %i.as, -5
  %or.cond.i = icmp eq i16 %i.at, 19
  br i1 %or.cond.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i64 %i.av, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds i8, ptr %i.aq, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.az = lshr i64 %i.av, 2
  %i.ba = and i64 %i.az, 15
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i

_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.r ], [ %i.ay, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !63 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.not.i.i.i, label %.thread, label %_ZNK4llvm6DIType7getNameEv.exit.i

_ZNK4llvm6DIType7getNameEv.exit.i:                ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i
  %i.bf = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm6DIType7getNameEv.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !258
  %i.bk = and i32 %i.bj, 4
  %.not21.i = icmp eq i32 %i.bk, 0
  br i1 %.not21.i, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.s
  %i.bl = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !1172 ; 6 uses
  tail call void @_ZN4llvm14BTFTypeDerivedC1EPKNS_13DIDerivedTypeEjb(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull %1, i32 noundef %i.h, i1 noundef zeroext true) #24, !noalias !1172
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !339
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !313 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bo, %.critedge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bp, %.critedge ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !339
  %i.bs = icmp ult ptr %i.br, %i.aq               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bs, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bs, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i39, label %_ZNSt3mapIPKN4llvm15DICompositeTypeESt6vectorISt4pairIPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISB_EESt4lessIS3_ESaIS5_IKS3_SD_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1143

_ZNSt3mapIPKN4llvm15DICompositeTypeESt6vectorISt4pairIPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISB_EESt4lessIS3_ESaIS5_IKS3_SD_EEE11lower_boundERSG_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bt = icmp eq ptr %.19.i.i.i.i, %i.bp
  br i1 %i.bt, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt3mapIPKN4llvm15DICompositeTypeESt6vectorISt4pairIPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISB_EESt4lessIS3_ESaIS5_IKS3_SD_EEE11lower_boundERSG_.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !346
  %i.bw = icmp ult ptr %i.aq, %i.bv
  br i1 %i.bw, label %.critedge.i, label %_ZNSt3mapIPKN4llvm15DICompositeTypeESt6vectorISt4pairIPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISB_EESt4lessIS3_ESaIS5_IKS3_SD_EEEixEOS3_.exit

.critedge.i:                                      ; preds = %bb.t, %_ZNSt3mapIPKN4llvm15DICompositeTypeESt6vectorISt4pairIPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISB_EESt4lessIS3_ESaIS5_IKS3_SD_EEE11lower_boundERSG_.exit.i, %.critedge
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.t ], [ %.19.i.i.i.i, %_ZNSt3mapIPKN4llvm15DICompositeTypeESt6vectorISt4pairIPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISB_EESt4lessIS3_ESaIS5_IKS3_SD_EEE11lower_boundERSG_.exit.i ], [ %i.bp, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.e, ptr %5, align 8, !tbaa !348, !alias.scope !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bx = call ptr @_ZNSt8_Rb_treeIPKN4llvm15DICompositeTypeESt4pairIKS3_St6vectorIS4_IPKNS0_13DIDerivedTypeEPNS0_14BTFTypeDerivedEESaISC_EEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESQ_IJEEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
end_hunk_1
begin_hunk_2_@_ZN4llvm8BTFDebug16visitDerivedTypeEPKNS_13DIDerivedTypeERjbb:bb.a
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = lshr exact i64 %i.jj, 3
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = add i32 %i.jl, 1                        ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !43
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.jp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.jo, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i65 = extractvalue { ptr, i8 } %i.jp, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i65, i64 8
  store i32 %i.jm, ptr %i.jq, align 4, !tbaa !71
  %i.jr = load ptr, ptr %i.je, align 8, !tbaa !323 ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !325
  %.not.i.i.i66 = icmp eq ptr %i.jr, %i.jt
  br i1 %.not.i.i.i66, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ju = ptrtoint ptr %i.jc to i64
  store i64 %i.ju, ptr %i.jr, align 8, !tbaa !322
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.jv, ptr %i.je, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN4llvm14BTFTypeDerivedESt14default_deleteIS1_EED2Ev.exit73

bb.ar:                                            ; preds = %bb.ap
  %i.jw = load ptr, ptr %i.jd, align 8, !tbaa !324 ; 7 uses
  %i.jx = ptrtoint ptr %i.jr to i64               ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64               ; 3 uses
  %i.jz = sub i64 %i.jx, %i.jy                    ; 3 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %bb.as, label %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i104

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i104: ; preds = %bb.ar
  %i.kb = ashr exact i64 %i.jz, 3                 ; 3 uses
  %.sroa.speculated.i.i105 = call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i105, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i106 = icmp ne i64 %i.kf, 0
  call void @llvm.assume(i1 %.not.i.i106)
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #27 ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jz
  %i.kj = ptrtoint ptr %i.jc to i64
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !322
  %.not10.i.i.i.i107 = icmp eq ptr %i.jw, %i.jr
  br i1 %.not10.i.i.i.i107, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i119, label %.lr.ph.i.i.i.i108.preheader

.lr.ph.i.i.i.i108.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i104
  %i.kk = add i64 %i.jx, -8
  %i.kl = sub i64 %i.kk, %i.jy                    ; 2 uses
  %i.km = lshr i64 %i.kl, 3
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.kl, 24
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.i108.preheader257, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph.i.i.i.i108.preheader
  %n.vec229 = and i64 %i.kn, 4611686018427387900  ; 3 uses
  %i.ko = shl i64 %n.vec229, 3                    ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kh, i64 %i.ko  ; 2 uses
  %i.kq = getelementptr i8, ptr %i.jw, i64 %i.ko
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body230 ] ; 2 uses
  %i.kr = shl i64 %index231, 3                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.kh, i64 %i.kr ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.jw, i64 %i.kr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.ks = getelementptr i8, ptr %next.gep233, i64 16
  %wide.load234 = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !322, !alias.scope !1186, !noalias !1185
  %wide.load235 = load <2 x i64>, ptr %i.ks, align 8, !tbaa !322, !alias.scope !1186, !noalias !1185
  %i.kt = getelementptr i8, ptr %next.gep232, i64 16
  store <2 x i64> %wide.load234, ptr %next.gep232, align 8, !tbaa !322, !alias.scope !1185, !noalias !1186
  store <2 x i64> %wide.load235, ptr %i.kt, align 8, !tbaa !322, !alias.scope !1185, !noalias !1186
  %i.ku = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !322, !alias.scope !1186, !noalias !1185
  store <2 x ptr> splat (ptr null), ptr %i.ku, align 8, !tbaa !322, !alias.scope !1186, !noalias !1185
  %index.next236 = add nuw i64 %index231, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.kv, label %middle.block237, label %vector.body230, !llvm.loop !1170

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %i.kn, %n.vec229
  br i1 %cmp.n238, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i119, label %.lr.ph.i.i.i.i108.preheader257

.lr.ph.i.i.i.i108.preheader257:                   ; preds = %.lr.ph.i.i.i.i108.preheader, %middle.block237
  %.012.i.i.i.i109.ph = phi ptr [ %i.kh, %.lr.ph.i.i.i.i108.preheader ], [ %i.kp, %middle.block237 ]
  %.0911.i.i.i.i110.ph = phi ptr [ %i.jw, %.lr.ph.i.i.i.i108.preheader ], [ %i.kq, %middle.block237 ]
  br label %.lr.ph.i.i.i.i108

.lr.ph.i.i.i.i108:                                ; preds = %.lr.ph.i.i.i.i108.preheader257, %.lr.ph.i.i.i.i108
  %.012.i.i.i.i109 = phi ptr [ %i.ky, %.lr.ph.i.i.i.i108 ], [ %.012.i.i.i.i109.ph, %.lr.ph.i.i.i.i108.preheader257 ] ; 2 uses
  %.0911.i.i.i.i110 = phi ptr [ %i.kx, %.lr.ph.i.i.i.i108 ], [ %.0911.i.i.i.i110.ph, %.lr.ph.i.i.i.i108.preheader257 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.kw = load i64, ptr %.0911.i.i.i.i110, align 8, !tbaa !322, !alias.scope !1186, !noalias !1185
  store i64 %i.kw, ptr %.012.i.i.i.i109, align 8, !tbaa !322, !alias.scope !1185, !noalias !1186
  store ptr null, ptr %.0911.i.i.i.i110, align 8, !tbaa !322, !alias.scope !1186, !noalias !1185
  %i.kx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i110, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i109, i64 8 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.kx, %i.jr
  br i1 %.not.i.i.i.i111, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i119, label %.lr.ph.i.i.i.i108, !llvm.loop !1171

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i119: ; preds = %.lr.ph.i.i.i.i108, %middle.block237, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i104
  %.0.lcssa.i.i.i.i113 = phi ptr [ %i.kh, %_ZNKSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i104 ], [ %i.kp, %middle.block237 ], [ %i.ky, %.lr.ph.i.i.i.i108 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i113, i64 8
  %.not.i23.i121 = icmp eq ptr %i.jw, null
  br i1 %.not.i23.i121, label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit122, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i119
  %i.la = load ptr, ptr %i.js, align 8, !tbaa !325
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = sub i64 %i.lb, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.lc) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit122

_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit122: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i119, %bb.at
  store ptr %i.kh, ptr %i.jd, align 8, !tbaa !324
  store ptr %i.kz, ptr %i.je, align 8, !tbaa !323
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kf
  store ptr %i.ld, ptr %i.js, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN4llvm14BTFTypeDerivedESt14default_deleteIS1_EED2Ev.exit73

_ZNSt10unique_ptrIN4llvm14BTFTypeDerivedESt14default_deleteIS1_EED2Ev.exit73: ; preds = %bb.aq, %_ZNSt6vectorISt10unique_ptrIN4llvm11BTFTypeBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.jm, ptr %2, align 4, !tbaa !71
  br label %bb.ax

bb.au:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !71
  %i.le = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8            ; 2 uses
  %i.lg = and i64 %i.lf, 2
  %.not.i.i.i.i74 = icmp eq i64 %i.lg, 0
  br i1 %.not.i.i.i.i74, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lh = getelementptr inbounds i8, ptr %1, i64 -32
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit76

bb.aw:                                            ; preds = %bb.au
  %i.lj = lshr i64 %i.lf, 2
  %i.lk = and i64 %i.lj, 15
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.ll
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit76

_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit76:   ; preds = %bb.av, %bb.aw
  %.sroa.0.0.i.i.i.i75 = phi ptr [ %i.lm, %bb.aw ], [ %i.li, %bb.av ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i75, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !63
  call void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.lo, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.ba

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN4llvm14BTFTypeDerivedESt14default_deleteIS1_EED2Ev.exit61, %_ZNK4llvm13DIDerivedType14getAnnotationsEv.exit64, %_ZNSt10unique_ptrIN4llvm14BTFTypeDerivedESt14default_deleteIS1_EED2Ev.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !71
  %i.lp = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8            ; 2 uses
  %i.lr = and i64 %i.lq, 2
  %.not.i.i.i.i77 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i.i.i77, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ls = getelementptr inbounds i8, ptr %1, i64 -32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !60
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit79

bb.az:                                            ; preds = %bb.ax
  %i.lu = lshr i64 %i.lq, 2
  %i.lv = and i64 %i.lu, 15
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lw
  br label %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit79

_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit79:   ; preds = %bb.ay, %bb.az
  %.sroa.0.0.i.i.i.i78 = phi ptr [ %i.lx, %bb.az ], [ %i.lt, %bb.ay ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i78, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !63
  call void @_ZN4llvm8BTFDebug14visitTypeEntryEPKNS_6DITypeERjbb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.lz, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext %3, i1 noundef zeroext %.0174)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit79, %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %_ZNSt10unique_ptrIN4llvm14BTFTypeDerivedESt14default_deleteIS1_EED2Ev.exit, %bb.ba, %_ZNK4llvm13DIDerivedType11getBaseTypeEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8BTFDebug15visitMapDefTypeEPKNS_6DITypeERj(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !70
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !336, !noalias !1195 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !337, !noalias !1195 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.i = load i32, ptr %i.h, align 4, !tbaa !338, !noalias !1195 ; 4 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.i, -1                         ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !71, !noalias !1196
  %i.v = and i32 %i.q, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !283

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %i.ae, %bb.d ], [ %i.r, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ad, %bb.d ], [ %i.q, %bb.c ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70, !noalias !1196
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit, label %bb.d, !prof !285

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = add nuw i32 %.017.i.i.i.i, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !71, !noalias !1196
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !284

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.al = zext i32 %i.i to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.al
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit ], [ %i.al, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.z, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit ], [ %i.am, %.loopexit.i.i ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.pre-phi
  %.not40 = icmp eq ptr %.lcssa.sink.i.i, %i.an
  br i1 %.not40, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ap = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71
  store i32 %i.ar, ptr %2, align 4, !tbaa !71
  br label %bb.w

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6DITypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.as = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  switch i16 %i.as, label %.loopexit [
    i16 22, label %bb.f
    i16 38, label %bb.f
    i16 53, label %bb.f
    i16 55, label %bb.f
    i16 15, label %bb.f
    i16 1, label %bb.i
    i16 19, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.at = load i8, ptr %1, align 4, !tbaa !68
  %i.au = icmp eq i8 %i.at, 13
  %spec.select.i.i = select i1 %i.au, ptr %1, ptr null
  %i.av = getelementptr inbounds i8, ptr %spec.select.i.i, i64 -16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = and i64 %i.aw, 2
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds i8, ptr %1, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ba = lshr i64 %i.aw, 2
  %i.bb = and i64 %i.ba, 15
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bc
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.e
  %i.be = load i8, ptr %1, align 4, !tbaa !68
  %i.bf = icmp eq i8 %i.be, 14
  %spec.select.i.i13 = select i1 %i.bf, ptr %1, ptr null
  %i.bg = getelementptr inbounds i8, ptr %spec.select.i.i13, i64 -16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = and i64 %i.bh, 2
  %.not.i.i.i.i14 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.bl = lshr i64 %i.bh, 2
  %i.bm = and i64 %i.bl, 15
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = and i64 %i.bq, 2
  %.not.i.i.i.i16 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60
  br label %_ZNK4llvm15DICompositeType11getElementsEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bu = lshr i64 %i.bq, 2
  %i.bv = and i64 %i.bu, 15
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bw
  br label %_ZNK4llvm15DICompositeType11getElementsEv.exit

_ZNK4llvm15DICompositeType11getElementsEv.exit:   ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i.i17 = phi ptr [ %i.bx, %bb.n ], [ %i.bt, %bb.m ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i17, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !63 ; 4 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm15DICompositeType11getElementsEv.exit
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 4 uses
  %i.cc = and i64 %i.cb, 2
  %.not.i.i.i.i18 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.bz, i64 -24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !94
  %i.ch = zext i32 %i.cg to i64
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE3endEv.exit

bb.q:                                             ; preds = %bb.o
  %i.ci = lshr i64 %i.cb, 2
  %i.cj = and i64 %i.ci, 15
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ck
  %i.cm = lshr i64 %i.cb, 2
  %i.cn = and i64 %i.cm, 15
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.co
  %i.cq = lshr i64 %i.cb, 6
  %i.cr = and i64 %i.cq, 15
  br label %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE3endEv.exit

_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE3endEv.exit: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i.ph52 = phi ptr [ %i.cl, %bb.q ], [ %i.ce, %bb.p ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.cr, %bb.q ], [ %i.ch, %bb.p ]
  %.sroa.0.0.i.i.i.i21 = phi ptr [ %i.cp, %bb.q ], [ %i.ce, %bb.p ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i.i21, i64 %.sroa.3.0.i.i.i.i ; 2 uses
  %.not4145 = icmp eq ptr %.sroa.0.0.i.ph52, %i.cs
  br i1 %.not4145, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm24MDTupleTypedArrayWrapperINS_6DINodeEE3endEv.exit, %bb.v
end_hunk_2
