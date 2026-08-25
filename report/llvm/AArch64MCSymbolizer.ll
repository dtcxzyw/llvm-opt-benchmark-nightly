Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64MCSymbolizer?download=true
inline.NumInlined: 252
inline.NumDeleted: 185
begin_hunk_0

$_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE = comdat any

$_ZNK4llvm12MCSymbolizer22getReferencedAddressesEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm4bolt13BinarySectionEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [16 x i8] c"__BOLT_got_zero\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@_ZTVN4llvm4bolt19AArch64MCSymbolizerE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4bolt19AArch64MCSymbolizerD1Ev, ptr @_ZN4llvm4bolt19AArch64MCSymbolizerD0Ev, ptr @_ZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmm, ptr @_ZN4llvm4bolt19AArch64MCSymbolizer31tryAddingPcLoadReferenceCommentERNS_11raw_ostreamElm, ptr @_ZNK4llvm12MCSymbolizer22getReferencedAddressesEv] }, align 8

@_ZN4llvm4bolt19AArch64MCSymbolizerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm4bolt19AArch64MCSymbolizerD2Ev

; Function Attrs: nounwind
declare void @_ZN4llvm12MCSymbolizerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19AArch64MCSymbolizerD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm12MCSymbolizerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19AArch64MCSymbolizerD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm4bolt19AArch64MCSymbolizerD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 noundef %3, i64 noundef %4, i1 zeroext %5, i64 %6, i64 %7, i64 %8) unnamed_addr #1 align 2 {
bb.a:
  %9 = alloca %"class.std::optional.472", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !22, !align !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24, !nonnull !22, !align !23 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1568 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(536) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %1) #11
  br i1 %i.l, label %.critedge33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !155  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(536) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %1) #11
  br i1 %i.q, label %.critedge33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !22, !align !23 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !159
  %i.u = sub i64 %4, %i.t                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !160  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1192 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i, label %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %bb.c ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !161
  %i.aa = icmp ult i64 %i.z, %i.u                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !163

_ZNKSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.x
  br i1 %i.ab, label %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread, label %_ZNKSt3mapImN4llvm4bolt10RelocationESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.i

_ZNKSt3mapImN4llvm4bolt10RelocationESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !161
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread, label %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit

_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit: ; preds = %_ZNKSt3mapImN4llvm4bolt10RelocationESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @_ZNK4llvm4bolt19AArch64MCSymbolizer16adjustRelocationERKNS0_10RelocationERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.472") align 8 %9, ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !165, !range !167, !noundef !22
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !168
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !170 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !171
  %i.ap = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.ak, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr null) #11 ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = tail call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, i1 noundef zeroext false, i32 noundef 0) #11
  %i.ar = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr null) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.ar, %bb.e ], [ %i.ap, %bb.d ]
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !155 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !157
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 912
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(536) %i.as, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, i32 noundef %i.ao) #11, !inline_history !172
  %.fca.1.load.cast.i.i = ptrtoint ptr %i.aw to i64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !173 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !174
  %.not.i.i.i = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i.i, label %bb.h, label %bb.g, !prof !175

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 5, i64 %.fca.1.load.cast.i.i)
  br label %"_ZZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmmENK3$_0clEPKNS_8MCSymbolEmm.exit"

bb.h:                                             ; preds = %bb.f
  %i.bc = zext i32 %i.az to i64
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !176
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  store i8 5, ptr %i.be, align 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.fca.1.load.cast.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !173
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !173
  br label %"_ZZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmmENK3$_0clEPKNS_8MCSymbolEmm.exit"

"_ZZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmmENK3$_0clEPKNS_8MCSymbolEmm.exit": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.critedge33

.critedge:                                        ; preds = %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread

_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread: ; preds = %_ZNKSt3mapImN4llvm4bolt10RelocationESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.i, %bb.c, %_ZNKSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %.critedge
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !155 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !157
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 656
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(536) %i.bh, ptr noundef nonnull align 8 dereferenceable(128) %1) #11
  br i1 %i.bl, label %bb.i, label %.critedge33

bb.i:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread
  %i.bm = add i64 %4, %3                          ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !177, !range !167, !noundef !22
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = tail call noundef ptr @_ZNK4llvm4bolt13BinaryContext34getBinaryDataContainingAddressImplEm(ptr noundef nonnull align 8 dereferenceable(2268) %i.d, i64 noundef %i.bm) #11 ; 3 uses
  %.not31.not = icmp eq ptr %i.bq, null
  br i1 %.not31.not, label %.critedge33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !178
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !180
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !181
  %i.bw = sub i64 %i.bm, %i.bv
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !22, !align !23
  %i.by = tail call { ptr, i64 } @_ZN4llvm4bolt13BinaryContext16handleAddressRefEmRNS0_14BinaryFunctionEb(ptr noundef nonnull align 8 dereferenceable(2268) %i.d, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(1360) %i.bx, i1 noundef zeroext true) #11 ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.061 = phi i64 [ %i.ca, %bb.l ], [ %i.bw, %bb.k ] ; 2 uses
  %.0 = phi ptr [ %i.bz, %bb.l ], [ %i.bt, %bb.k ]
  %i.cb = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr null) #11 ; 2 uses
  %.not.i34 = icmp eq i64 %.061, 0
  br i1 %.not.i34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = tail call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %.061, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, i1 noundef zeroext false, i32 noundef 0) #11
  %i.cd = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.cb, ptr noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr null) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i35 = phi ptr [ %i.cd, %bb.n ], [ %i.cb, %bb.m ]
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !155 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !157
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 912
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(536) %i.ce, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.0.i35, ptr noundef nonnull align 8 dereferenceable(2208) %i.f, i32 noundef 0) #11, !inline_history !172
  %.fca.1.load.cast.i.i36 = ptrtoint ptr %i.ci to i64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !173 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !174
  %.not.i.i.i37 = icmp ult i32 %i.cl, %i.cn
  br i1 %.not.i.i.i37, label %bb.q, label %bb.p, !prof !175

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 5, i64 %.fca.1.load.cast.i.i36)
  br label %.critedge33

bb.q:                                             ; preds = %bb.o
  %i.co = zext i32 %i.cl to i64
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !176
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  store i8 5, ptr %i.cq, align 1
  %.sroa.4.0..sroa_idx.i.i.i38 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %.fca.1.load.cast.i.i36, ptr %.sroa.4.0..sroa_idx.i.i.i38, align 1
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !173
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !173
  br label %.critedge33

.critedge33:                                      ; preds = %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread, %"_ZZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmmENK3$_0clEPKNS_8MCSymbolEmm.exit", %bb.q, %bb.p, %bb.j, %bb.a, %bb.b
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZNK4llvm4bolt14BinaryFunction15getRelocationAtEm.exit.thread ], [ true, %"_ZZN4llvm4bolt19AArch64MCSymbolizer24tryAddingSymbolicOperandERNS_6MCInstERNS_11raw_ostreamElmbmmmENK3$_0clEPKNS_8MCSymbolEmm.exit" ], [ false, %bb.j ], [ true, %bb.p ], [ true, %bb.q ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt19AArch64MCSymbolizer16adjustRelocationERKNS0_10RelocationERKNS_6MCInstE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.472") align 8 captures(none) initializes((40, 41)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ErrorOr", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !22, !align !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24, !nonnull !22, !align !23 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1568 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !171
  switch i32 %i.l, label %bb.d [
    i32 277, label %bb.c
    i32 312, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.m, align 8, !tbaa !165
  br label %bb.r

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !157
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 520
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(536) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !171  ; 2 uses
  br i1 %i.r, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  switch i32 %i.t, label %._crit_edge [
    i32 563, label %bb.f
    i32 564, label %bb.f
    i32 562, label %bb.f
    i32 542, label %bb.f
    i32 541, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.u, align 8, !tbaa !165
  br label %bb.r

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = tail call noundef zeroext i1 @_ZN4llvm4bolt10Relocation5isGOTEj(i32 noundef %i.t) #11
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !188
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.x, align 8, !tbaa !165
  br label %bb.r

bb.h:                                             ; preds = %._crit_edge
  %.sroa.027.0.copyload = load i64, ptr %2, align 8, !tbaa !161 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !180 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %i.v, align 8, !tbaa !189 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 3 uses
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.949.0.copyload = load i64, ptr %.sroa.949.0..sroa_idx, align 8, !tbaa !161 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !161 ; 3 uses
  %i.y = icmp eq i32 %.sroa.7.0.copyload, 312
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !157
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 504
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(536) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.027.0.copyload, ptr %0, align 8, !tbaa !161
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx31, align 8, !tbaa !180
  %.sroa.7.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 277, ptr %.sroa.7.0..sroa_idx37, align 8, !tbaa !189
  %.sroa.9.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx43, align 4
  %.sroa.949.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.949.0.copyload, ptr %.sroa.949.0..sroa_idx50, align 8, !tbaa !161
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx56, align 8, !tbaa !161
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ae, align 8, !tbaa !165
  br label %bb.r

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !157
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 488
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(536) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  br i1 %i.aj, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %.sroa.949.0..sroa_idx, align 8, !tbaa !170
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.v, align 8, !tbaa !171
  %i.an = tail call noundef zeroext i1 @_ZN4llvm4bolt10Relocation5isTLSEj(i32 noundef %i.am) #11
  br i1 %i.an, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ao = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !168
  call void @_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2268) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  %i.ap = load i64, ptr %4, align 8, !tbaa !161
  %i.aq = and i64 %i.ap, -4096                    ; 2 uses
  %i.ar = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !191
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = call noundef zeroext i1 @_ZNK4llvm4bolt19AArch64MCSymbolizer24isPageAddressValidForGOTEm(ptr noundef nonnull align 8 dereferenceable(33) %1, i64 noundef %i.aq)
  br i1 %i.at, label %bb.p, label %.critedge

.critedge:                                        ; preds = %bb.o
  store i64 %.sroa.027.0.copyload, ptr %0, align 8, !tbaa !161
  %.sroa.6.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx33, align 8, !tbaa !180
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 275, ptr %.sroa.7.0..sroa_idx39, align 8, !tbaa !189
  %.sroa.9.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx45, align 4
  %.sroa.949.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.949.0.copyload, ptr %.sroa.949.0..sroa_idx52, align 8, !tbaa !161
  %.sroa.10.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx58, align 8, !tbaa !161
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.au, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.l, %bb.k
  %i.av = call noundef ptr @_ZN4llvm4bolt13BinaryContext21registerNameAtAddressENS_9StringRefEmmtj(ptr noundef nonnull align 8 dereferenceable(2268) %i.d, ptr nonnull @.str, i64 15, i64 noundef 0, i64 noundef 0, i16 noundef zeroext 0, i32 noundef 0) #11
end_hunk_0
