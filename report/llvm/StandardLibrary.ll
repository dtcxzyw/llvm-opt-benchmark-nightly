Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StandardLibrary?download=true
inline.NumInlined: 1113
inline.NumDeleted: 576
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5clang7tooling6stdlib6Symbol7headersEv:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplIN5clang7tooling6stdlib6HeaderEE12emplace_backIJS4_EEERS4_DpOT_.exit
  %.09 = phi ptr [ %i.n, %.lr.ph ], [ %i.ae, %_ZN4llvm15SmallVectorImplIN5clang7tooling6stdlib6HeaderEE12emplace_backIJS4_EEERS4_DpOT_.exit ] ; 2 uses
  %i.t = load i32, ptr %.09, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.u = load i32, ptr %i.d, align 4, !tbaa !48
  store i32 %i.t, ptr %2, align 8, !tbaa !45
  store i32 %i.u, ptr %i.s, align 4, !tbaa !43
  %i.v = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !66
  %.not.i = icmp ult i32 %i.v, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang7tooling6stdlib6HeaderELb1EE18growAndEmplaceBackIJS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIN5clang7tooling6stdlib6HeaderEE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %0, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i64, ptr %2, align 8
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !64
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !64
  br label %_ZN4llvm15SmallVectorImplIN5clang7tooling6stdlib6HeaderEE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZN4llvm15SmallVectorImplIN5clang7tooling6stdlib6HeaderEE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.r
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplIN5clang7tooling6stdlib6HeaderEE12emplace_backIJS4_EEERS4_DpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7tooling6stdlib10RecognizerC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load atomic i8, ptr @_ZGVZN5clang7tooling6stdlibL17ensureInitializedEvE5Dummy acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5clang7tooling6stdlibL17ensureInitializedEv.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang7tooling6stdlibL17ensureInitializedEvE5Dummy) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5clang7tooling6stdlibL17ensureInitializedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZZN5clang7tooling6stdlibL17ensureInitializedEvENK3$_0clEv"()
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang7tooling6stdlibL17ensureInitializedEvE5Dummy) #19
  br label %_ZN5clang7tooling6stdlibL17ensureInitializedEv.exit

_ZN5clang7tooling6stdlibL17ensureInitializedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 127
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5clang7tooling6stdlibL16LanguageMappingsE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !187
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59, !noalias !187 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60, !noalias !187 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %i.q, -1                         ; 2 uses
  %i.t = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr nonnull @.str, i64 0) #19
  %.01627.i = and i32 %i.t, %i.s                  ; 3 uses
  %i.u = zext i32 %.01627.i to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  %i.y = and i32 %.01627.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit, !prof !30

.lr.ph.split.us.i:                                ; preds = %bb.c, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i
  %i.ab = phi i64 [ %i.ae, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i ], [ %i.u, %bb.c ]
  %.01628.us.i = phi i32 [ %.016.us.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i ], [ %.01627.i, %bb.c ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.ab ; 2 uses
  %.sroa.2.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2.0.copyload.us.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i, align 8, !tbaa !32
  %.not.i.i.us.i = icmp eq i64 %.sroa.2.0.copyload.us.i, 0
  br i1 %.not.i.i.us.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i, !prof !33

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i: ; preds = %.lr.ph.split.us.i
  %i.ad = add nuw i32 %.01628.us.i, 1
  %.016.us.i = and i32 %i.ad, %i.s                ; 3 uses
  %i.ae = zext i32 %.016.us.i to i64              ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29
  %i.ai = and i32 %.016.us.i, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.split.us.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit, !prof !34

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit: ; preds = %.lr.ph.split.us.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit

bb.d:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %0, align 8, !tbaa !70, !noalias !188 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !72, !noalias !188 ; 4 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = ptrtoint ptr %1 to i64
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.at, %i.ay                    ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29, !noalias !189
  %i.be = and i32 %i.az, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !30

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.bh = phi i64 [ %i.bn, %bb.f ], [ %i.ba, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.bm, %bb.f ], [ %i.az, %bb.e ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !74, !noalias !189
  %i.bk = icmp eq ptr %1, %i.bj
  br i1 %i.bk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit.loopexit, label %bb.f, !prof !67

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bl = add nuw i32 %.017.i.i.i.i, 1
  %i.bm = and i32 %i.bl, %i.at                    ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = lshr i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29, !noalias !189
  %i.br = and i32 %i.bm, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !34

.loopexit.i.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.bu = zext i32 %i.ar to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.bu
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.ar to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit.loopexit ], [ %i.bu, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.bi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit.loopexit ], [ %i.bv, %.loopexit.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.pre-phi
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.bw
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !191
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E4findES5_.exit
  %7 = icmp eq ptr %1, null                       ; 2 uses
  %8 = getelementptr inbounds i8, ptr %1, i64 -48 ; 2 uses
  %9 = select i1 %7, ptr null, ptr %8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bz = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !76 ; 2 uses
  %i.cb = and i64 %i.ca, 7
  %i.cc = icmp ne i64 %i.cb, 0
  %.not1.i.i = icmp ult i64 %i.ca, 8
  %.not.i.i = or i1 %.not1.i.i, %i.cc
  br i1 %.not.i.i, label %"_ZZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangEENK3$_0clEv.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cd, ptr %3, align 8, !tbaa !193
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !195
  store i8 0, ptr %i.cd, align 8, !tbaa !196
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclEKNS1_11DeclContextEEEDaPT0_.exit.i

._crit_edge.i:                                    ; preds = %bb.aa, %_ZNK5clang11DeclContext9getParentEv.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.pre17.i = load i64, ptr %i.ce, align 8, !tbaa !195
  %i.cl = freeze i64 %.pre17.i                    ; 4 uses
  %i.cm = zext i32 %2 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @_ZN5clang7tooling6stdlibL16LanguageMappingsE, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !55 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !58, !noalias !198 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !59, !noalias !198 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !60, !noalias !198 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.cx = add i32 %i.cv, -1                       ; 3 uses
  %i.cy = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.pre.i, i64 %i.cl) #19
  %.01627.i.i = and i32 %i.cy, %i.cx              ; 4 uses
  %i.cz = zext i32 %.01627.i.i to i64             ; 3 uses
  %i.da = lshr i64 %i.cz, 5
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !29
  %i.dd = and i32 %.01627.i.i, 31
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = trunc i32 %i.de to i1
  br i1 %i.df, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i, !prof !30

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.dg = icmp eq i64 %i.cl, 0
  br i1 %i.dg, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i
  %i.dh = phi i64 [ %i.dk, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %i.cz, %.lr.ph.i.i ] ; 2 uses
  %.01628.us.i.i = phi i32 [ %.016.us.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %.01627.i.i, %.lr.ph.i.i ]
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.dh
  %.sroa.2.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.2.0.copyload.us.i.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i.i, align 8, !tbaa !32
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.2.0.copyload.us.i.i, 0
  br i1 %.not.i.i.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, !prof !33

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.dj = add nuw i32 %.01628.us.i.i, 1
  %.016.us.i.i = and i32 %i.dj, %i.cx             ; 3 uses
  %i.dk = zext i32 %.016.us.i.i to i64            ; 2 uses
  %i.dl = lshr i64 %i.dk, 5
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29
  %i.do = and i32 %.016.us.i.i, 31
  %i.dp = lshr i32 %i.dn, %i.do
  %i.dq = trunc i32 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.split.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i, !prof !34

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i
  %i.dr = phi i64 [ %i.dv, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %i.cz, %.lr.ph.i.i ] ; 2 uses
  %.01628.i.i = phi i32 [ %.016.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %.01627.i.i, %.lr.ph.i.i ]
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.dr ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !32
  %.not.i.i.i.i = icmp eq i64 %i.cl, %.sroa.2.0.copyload.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !33

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i: ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ds, align 8, !tbaa !36
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.pre.i, ptr %.sroa.0.0.copyload.i.i, i64 %i.cl)
  %i.dt = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dt, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !37

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.i.i
  %i.du = add nuw i32 %.01628.i.i, 1
  %.016.i.i = and i32 %i.du, %i.cx                ; 3 uses
  %i.dv = zext i32 %.016.i.i to i64               ; 2 uses
  %i.dw = lshr i64 %i.dv, 5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.dz = and i32 %.016.i.i, 31
  %i.ea = lshr i32 %i.dy, %i.dz
  %i.eb = trunc i32 %i.ea to i1
  br i1 %i.eb, label %.lr.ph.split.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i, !prof !34

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.us.i.i
  %i.ec = phi i64 [ %i.dh, %.lr.ph.split.us.i.i ], [ %i.dr, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i ]
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !61
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit.i, %bb.i, %._crit_edge.i
  %spec.select.i.i = phi ptr [ %i.ef, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit.i ], [ null, %._crit_edge.i ], [ null, %bb.i ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ]
  %i.eg = load ptr, ptr %3, align 8, !tbaa !197   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cd
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i
  %i.ei = load i64, ptr %i.cd, align 8, !tbaa !196
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %"_ZZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangEENK3$_0clEv.exit"

_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclEKNS1_11DeclContextEEEDaPT0_.exit.i: ; preds = %bb.aa, %.lr.ph.i
  %.011.i = phi ptr [ %8, %.lr.ph.i ], [ %11, %bb.aa ] ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.011.i, i64 48 ; 2 uses
  %i.ek = call noundef zeroext i1 @_ZNK5clang11DeclContext17isInlineNamespaceEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  br i1 %i.ek, label %bb.x, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclEKNS1_11DeclContextEEEDaPT0_.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !76 ; 3 uses
  %i.en = and i64 %i.em, 7
  %i.eo = icmp ne i64 %i.en, 0
  %.not1.i8.i = icmp ult i64 %i.em, 8
  %.not.i9.i = or i1 %.not1.i8.i, %i.eo
  br i1 %.not.i9.i, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ep = inttoptr i64 %i.em to ptr
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !79 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !tbaa !81 ; 2 uses
  %i.eu = and i64 %i.et, 4294967295               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  store ptr %i.cf, ptr %6, align 8, !tbaa !193, !alias.scope !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !199
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !32, !noalias !199
  %i.ev = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.ev, label %bb.l, label %._crit_edge.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ew = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ew, ptr %6, align 8, !tbaa !197, !alias.scope !199
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !199
  store i64 %i.ex, ptr %i.cf, align 8, !tbaa !196, !alias.scope !199
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %i.ey = phi ptr [ %i.ew, %bb.l ], [ %i.cf, %bb.k ] ; 2 uses
  %trunc.i = trunc i64 %i.et to i32
  switch i32 %trunc.i, label %bb.n [
    i32 1, label %bb.m
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ez = load i8, ptr %i.es, align 8, !tbaa !196
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !196
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr nonnull align 8 %i.es, i64 %i.eu, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i:          ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !199 ; 2 uses
  store i64 %i.fa, ptr %i.cg, align 8, !tbaa !195, !alias.scope !199
  %i.fb = load ptr, ptr %6, align 8, !tbaa !197, !alias.scope !199
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 0, ptr %i.fc, align 1, !tbaa !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !199
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.fd = load i64, ptr %i.cg, align 8, !tbaa !195, !noalias !200
  %i.fe = and i64 %i.fd, -2
  %i.ff = icmp eq i64 %i.fe, 4611686018427387902
  br i1 %i.ff, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.o:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3906) #21, !noalias !200
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  %i.fg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3905, i64 noundef 2) #19, !noalias !200 ; 6 uses
  store ptr %i.ch, ptr %5, align 8, !tbaa !193, !alias.scope !200
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !197 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 5 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !195 ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add nuw nsw i64 %i.fl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.fi, i64 %i.fn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.fh, ptr %5, align 8, !tbaa !197, !alias.scope !200
  %i.fo = load i64, ptr %i.fi, align 8, !tbaa !196
  store i64 %i.fo, ptr %i.ch, align 8, !tbaa !196, !alias.scope !200
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !195
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.p
  %i.fp = phi i64 [ %i.fl, %bb.p ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.fp, ptr %i.ci, align 8, !tbaa !195, !alias.scope !200
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !197
  store i64 0, ptr %i.fq, align 8, !tbaa !195
  store i8 0, ptr %i.fi, align 8, !tbaa !196
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.fr = load i64, ptr %i.ce, align 8, !tbaa !195, !noalias !201 ; 2 uses
  %i.fs = load i64, ptr %i.ci, align 8, !tbaa !195, !noalias !201
  %i.ft = sub i64 4611686018427387903, %i.fs
  %i.fu = icmp ult i64 %i.ft, %i.fr
  br i1 %i.fu, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3906) #21, !noalias !201
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  %i.fv = load ptr, ptr %3, align 8, !tbaa !197, !noalias !201
  %i.fw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.fv, i64 noundef %i.fr) #19, !noalias !201 ; 6 uses
  store ptr %i.cj, ptr %4, align 8, !tbaa !193, !alias.scope !201
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !197 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 5 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !195 ; 3 uses
  %i.gc = icmp ult i64 %i.gb, 16
  call void @llvm.assume(i1 %i.gc)
  %i.gd = add nuw nsw i64 %i.gb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i64 %i.gd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.fx, ptr %4, align 8, !tbaa !197, !alias.scope !201
  %i.ge = load i64, ptr %i.fy, align 8, !tbaa !196
  store i64 %i.ge, ptr %i.cj, align 8, !tbaa !196, !alias.scope !201
  %.phi.trans.insert.i14.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.pre.i15.i = load i64, ptr %.phi.trans.insert.i14.i, align 8, !tbaa !195
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i, %bb.r
  %i.gf = phi i64 [ %i.gb, %bb.r ], [ %.pre.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.gf, ptr %i.ck, align 8, !tbaa !195, !alias.scope !201
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !197
  store i64 0, ptr %i.gg, align 8, !tbaa !195
  store i8 0, ptr %i.fy, align 8, !tbaa !196
  %i.gh = load ptr, ptr %3, align 8, !tbaa !197   ; 6 uses
  %i.gi = icmp eq ptr %i.gh, %i.cd
  %i.gj = load ptr, ptr %4, align 8, !tbaa !197   ; 5 uses
  %i.gk = icmp eq ptr %i.gj, %i.cj                ; 2 uses
  br i1 %i.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i
  br i1 %i.gk, label %bb.s, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit.i
  br i1 %i.gk, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gl = load i64, ptr %i.ck, align 8, !tbaa !195 ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gm)
  switch i64 %i.gl, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !196
  store i8 %i.gn, ptr %i.gh, align 1, !tbaa !196
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gj, i64 %i.gl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.go = load i64, ptr %i.ck, align 8, !tbaa !195 ; 2 uses
  store i64 %i.go, ptr %i.ce, align 8, !tbaa !195
  %i.gp = load ptr, ptr %3, align 8, !tbaa !197
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store i8 0, ptr %i.gq, align 1, !tbaa !196
  %.pre.i17.i = load ptr, ptr %4, align 8, !tbaa !197
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.gj, ptr %3, align 8, !tbaa !197
  %i.gr = load <2 x i64>, ptr %i.ck, align 8, !tbaa !196
  store <2 x i64> %i.gr, ptr %i.ce, align 8, !tbaa !196
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.gs = load i64, ptr %i.cd, align 8, !tbaa !196
  store ptr %i.gj, ptr %3, align 8, !tbaa !197
  %i.gt = load <2 x i64>, ptr %i.ck, align 8, !tbaa !196
  store <2 x i64> %i.gt, ptr %i.ce, align 8, !tbaa !196
  %.not.i16.i = icmp eq ptr %i.gh, null
  br i1 %.not.i16.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.gh, ptr %4, align 8, !tbaa !197
  store i64 %i.gs, ptr %i.cj, align 8, !tbaa !196
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.cj, ptr %4, align 8, !tbaa !197
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.gu = phi ptr [ %i.gh, %bb.v ], [ %i.cj, %bb.w ], [ %.pre.i17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ck, align 8, !tbaa !195
  store i8 0, ptr %i.gu, align 1, !tbaa !196
  %i.gv = load ptr, ptr %4, align 8, !tbaa !197   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.cj
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.gx = load i64, ptr %i.cj, align 8, !tbaa !196
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i
  %i.gz = load ptr, ptr %5, align 8, !tbaa !197   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ch
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i
  %i.hb = load i64, ptr %i.ch, align 8, !tbaa !196
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  %i.hd = load ptr, ptr %6, align 8, !tbaa !197   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.cf
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
  %i.hf = load i64, ptr %i.cf, align 8, !tbaa !196
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, %bb.j, %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclEKNS1_11DeclContextEEEDaPT0_.exit.i
  %i.hh = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hi, align 8 ; 3 uses
  %i.hj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hl = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang11DeclContext9getParentEv.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !83
  br label %_ZNK5clang11DeclContext9getParentEv.exit.i

_ZNK5clang11DeclContext9getParentEv.exit.i:       ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi ptr [ %i.hl, %bb.y ], [ %i.ho, %bb.z ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang11DeclContext9getParentEv.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.hq = load i16, ptr %i.hp, align 8
  %i.hr = and i16 %i.hq, 127
  %i.hs = icmp eq i16 %i.hr, 78
  %11 = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -48
  br i1 %i.hs, label %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclEKNS1_11DeclContextEEEDaPT0_.exit.i, label %._crit_edge.i, !llvm.loop !182

"_ZZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangEENK3$_0clEv.exit": ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.07.i = phi ptr [ %spec.select.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ null, %bb.h ]
  store ptr %.07.i, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %spec.select = select i1 %7, ptr null, ptr %12
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !74
  %i.ht = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang11DeclContextEPNS1_INS_9StringRefEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEENS7_IS5_vEENSA_IS5_SD_EEEES5_SD_SE_SF_E24lookupOrInsertIntoBucketIS5_JRSD_EEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !202 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.hu = load ptr, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6lookupERKS2_.exit: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i, %bb.c, %bb.b, %bb.g, %"_ZZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangEENK3$_0clEv.exit", %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit
  %.1 = phi ptr [ %i.hu, %"_ZZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangEENK3$_0clEv.exit" ], [ %i.am, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEPNS1_IS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES4_NS6_IS2_S9_EEEES2_S9_S4_SA_E6doFindIS2_EEPKSA_RKT_.exit ], [ %i.by, %bb.g ], [ null, %bb.b ], [ null, %bb.c ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.77", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang4Decl11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #23
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 4096
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 1
  %.not15 = icmp eq i64 %i.d, 0
  br i1 %.not15, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ]        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 6, ptr %i.g, align 4, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8 ; 3 uses
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

_ZNK5clang4Decl14getDeclContextEv.exit:           ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.not16 = icmp eq ptr %.0.i.i, null
  br i1 %.not16, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread", label %.preheader

.preheader:                                       ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit, %.preheader.backedge
  %.012 = phi ptr [ %.012.be, %.preheader.backedge ], [ %.0.i.i, %_ZNK5clang4Decl14getDeclContextEv.exit ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 127                        ; 2 uses
  switch i16 %i.q, label %bb.f [
    i16 78, label %.critedge
    i16 0, label %.critedge
  ]

bb.f:                                             ; preds = %.preheader
  %i.r = add nsw i16 %i.q, -20
  %i.s = icmp ult i16 %i.r, 64
  br i1 %i.s, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE9push_backES4_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.u = load i32, ptr %i.g, align 4, !tbaa !66
  %.not.i = icmp ult i32 %i.t, %i.u
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !67

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.012)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE9push_backES4_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %2, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store ptr %.012, ptr %i.x, align 1
  %i.y = load i32, ptr %i.f, align 8, !tbaa !64
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.f, align 8, !tbaa !64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE9push_backES4_.exit: ; preds = %bb.i, %bb.h, %bb.f
  %i.aa = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.012) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8 ; 3 uses
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE9push_backES4_.exit
  %i.ae = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.j, %bb.k
  %.012.be = phi ptr [ %i.ah, %bb.k ], [ %i.ae, %bb.j ]
  br label %.preheader, !llvm.loop !203

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang11DeclContextELb1EE9push_backES4_.exit
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  br label %.preheader.backedge

.critedge:                                        ; preds = %.preheader, %.preheader
  %i.ai = call noundef ptr @_ZN5clang7tooling6stdlib10Recognizer16namespaceSymbolsEPKNS_11DeclContextENS1_4LangE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.012, i32 noundef %.0) ; 5 uses
  %.not17 = icmp eq ptr %i.ai, null
  br i1 %.not17, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread", label %bb.l

bb.l:                                             ; preds = %.critedge
  %.val.val = load ptr, ptr %2, align 8, !tbaa !65, !noalias !220 ; 2 uses
  %.val.val19 = load i32, ptr %i.f, align 8, !tbaa !64, !noalias !220 ; 2 uses
  %.not14.i58 = icmp eq i32 %.val.val19, 0
  br i1 %.not14.i58, label %.critedge24.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.aj = zext i32 %.val.val19 to i64
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.idx
  br label %bb.n

bb.m:                                             ; preds = %.critedge.i
  %.not14.i = icmp eq ptr %i.al, %.val.val
  br i1 %.not14.i, label %.critedge24.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.03.0.i59 = phi ptr [ %i.ak, %.lr.ph ], [ %i.al, %bb.m ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.03.0.i59, i64 -8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.an = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.am) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i.i, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = and i64 %.sroa.0.0.copyload.i.i, -8     ; 2 uses
  %.not17.i = icmp eq i64 %i.ar, 0
  %.not.i20 = or i1 %i.aq, %.not17.i
  br i1 %.not.i20, label %.critedge.i, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit"

.critedge.i:                                      ; preds = %bb.n
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.m, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread"

.critedge24.i:                                    ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 124
  %i.av = add nsw i32 %i.au, -84
  %i.aw = icmp ult i32 %i.av, -64
  br i1 %i.aw, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread", label %bb.o

bb.o:                                             ; preds = %.critedge24.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !76 ; 2 uses
  %i.az = and i64 %i.ay, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = and i64 %i.ay, -8                       ; 2 uses
  %.not2216.i = icmp eq i64 %i.bb, 0
  %.not22.i = or i1 %i.ba, %.not2216.i
  br i1 %.not22.i, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread", label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit"

"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit": ; preds = %bb.n, %bb.o
  %.lcssa.sink.i = phi i64 [ %i.bb, %bb.o ], [ %i.ar, %bb.n ]
  %i.bc = inttoptr i64 %.lcssa.sink.i to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !79 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !81
  %.fr = freeze i64 %i.bg
  %i.bh = and i64 %.fr, 4294967295                ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread", label %bb.p

bb.p:                                             ; preds = %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit"
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !26, !noalias !221
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27, !noalias !221 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28, !noalias !221 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %"_ZZN5clang7tooling6stdlib10RecognizerclEPKNS_4DeclEENK3$_0clEv.exit.thread", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add i32 %i.bn, -1                       ; 2 uses
  %i.bq = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr nonnull %i.bf, i64 %i.bh) #19, !noalias !222
  %.01627.i = and i32 %i.bq, %i.bp                ; 3 uses
  %i.br = zext i32 %.01627.i to i64               ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29, !noalias !222
  %i.bv = and i32 %.01627.i, 31
end_hunk_0
