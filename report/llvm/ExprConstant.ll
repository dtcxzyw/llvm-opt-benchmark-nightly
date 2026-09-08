Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5clang18OptionalDiagnosticlsIPNS_4ExprEEERS0_RKT_:bb.a

declare noundef zeroext i1 @_ZNK5clang10ASTContext40hasSameFunctionTypeIgnoringExceptionSpecENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904), i64, i64) local_unnamed_addr #3

declare i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12EvaluateArgsN4llvm8ArrayRefIPKN5clang4ExprEEEN12_GLOBAL__N_17CallRefERNS6_8EvalInfoEPKNS1_12FunctionDeclEbPNS6_6LValueE(ptr nofree readonly captures(none) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(984) %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %"class.llvm::SmallBitVector", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 1, ptr %7, align 8, !tbaa !1155
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 256
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %4) #24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !603  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !605  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !881
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i16, ptr %i.l, align 4
  %i.n = icmp eq i16 %i.m, 109
  br i1 %i.n, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %.lr.ph.i.i.i.i.i, !llvm.loop !2299

_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not24 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.j
  br i1 %.not24, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit
  %i.p = trunc i64 %1 to i32
  call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.p, i1 noundef zeroext false)
  %i.q = load i32, ptr %i.b, align 4
  %i.r = and i32 %i.q, 256
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %bb.d
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %4) #24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !603  ; 2 uses
  %.pre.i = load i32, ptr %i.b, align 4
  %.pre4.i = and i32 %.pre.i, 256
  %i.u = icmp eq i32 %.pre4.i, 0
  br i1 %i.u, label %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %4) #24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !603
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !605
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  br label %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %bb.d, %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %bb.e
  %i.ab = phi ptr [ %i.t, %bb.e ], [ %i.t, %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.d ]
  %i.ac = phi ptr [ %i.aa, %bb.e ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.d ] ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm14SmallBitVector3setEv.exit, %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %.sroa.07.0 = phi ptr [ %i.ab, %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %i.dd, %_ZN4llvm14SmallBitVector3setEv.exit ] ; 8 uses
  %i.ad = icmp ult ptr %.sroa.07.0, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i, label %bb.h

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.07.1.i.i = phi ptr [ %i.ai, %bb.g ], [ %.sroa.07.0, %bb.f ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.07.1.i.i, align 8, !tbaa !881
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = icmp eq i16 %i.ag, 109
  br i1 %i.ah, label %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 8 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i71, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %.lr.ph.i.i.i, !llvm.loop !2299

bb.h:                                             ; preds = %bb.f
  %.not2.i3.i.i = icmp eq ptr %i.ac, %.sroa.07.0
  br i1 %.not2.i3.i.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %bb.h, %bb.i
  %.sroa.0.1.i.i = phi ptr [ %i.an, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %i.aj = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !881
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = icmp eq i16 %i.al, 109
  br i1 %i.am, label %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i4.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 8 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.an, %.sroa.07.0
  br i1 %.not.i5.i.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %.lr.ph.i4.i.i, !llvm.loop !2299

_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit: ; preds = %.lr.ph.i4.i.i, %.lr.ph.i.i.i
  %.sroa.07.0.i.i = phi ptr [ %.sroa.07.1.i.i, %.lr.ph.i.i.i ], [ %.sroa.07.0, %.lr.ph.i4.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i, %.lr.ph.i4.i.i ]
  %.not25 = icmp eq ptr %.sroa.07.0.i.i, %.sroa.0.0.i.i
  br i1 %.not25, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %bb.j

bb.j:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit
  %i.ao = load ptr, ptr %.sroa.07.0, align 8, !tbaa !881 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = icmp eq i16 %i.aq, 109
  br i1 %i.ar, label %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.sroa.07.0, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !881 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = icmp eq i16 %i.aw, 109
  br i1 %i.ax, label %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i, !llvm.loop !2300

_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit: ; preds = %.lr.ph.i.i, %bb.j
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.j ], [ %i.at, %.lr.ph.i.i ]
  %i.ay = phi ptr [ %i.ao, %bb.j ], [ %i.au, %.lr.ph.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2306 ; 2 uses
  %.not.not = icmp eq i32 %i.ba, 0
  br i1 %.not.not, label %bb.k, label %.lr.ph.preheader

bb.k:                                             ; preds = %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.bb = load i64, ptr %7, align 8, !tbaa !1155  ; 4 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = lshr i64 %i.bb, 58
  %i.be = shl nsw i64 -1, %i.bd
  %i.bf = xor i64 %i.be, -1
  %i.bg = shl nuw i64 %i.bf, 1
  %i.bh = and i64 %i.bb, -288230376151711743
  %i.bi = or i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %7, align 8, !tbaa !1155
  br label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14

bb.m:                                             ; preds = %bb.k
  %i.bj = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !603 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !605 ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN4llvm9BitVector10init_wordsEb.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.m
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 -1, i64 %.idx.i.i.i.i, i1 false), !tbaa !513
  br label %_ZN4llvm9BitVector10init_wordsEb.exit.i.i

_ZN4llvm9BitVector10init_wordsEb.exit.i.i:        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1162
  %i.bq = and i32 %i.bp, 63                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm9BitVector10init_wordsEb.exit.i.i
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nsw i64 -1, %i.br
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !513
  %i.bx = and i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !513
  br label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14

.lr.ph.preheader:                                 ; preds = %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2307 ; 2 uses
  %i.ca = zext i32 %i.ba to i64
  %.idx = shl nuw nsw i64 %i.ca, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %.06239 = phi ptr [ %i.dc, %_ZN4llvm14SmallBitVector9referenceaSEb.exit ], [ %i.bz, %.lr.ph.preheader ] ; 2 uses
  %i.cc = load i32, ptr %.06239, align 4, !tbaa !508 ; 2 uses
  %i.cd = and i32 %i.cc, 1073741823
  %8 = lshr i32 %i.cc, 30
  %9 = and i32 %8, 1
  %10 = xor i32 %9, -1
  %i.ce = add nsw i32 %i.cd, %10                  ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %.not69 = icmp ugt i64 %1, %i.cf
  br i1 %.not69, label %bb.o, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

bb.o:                                             ; preds = %.lr.ph
  %i.cg = load i64, ptr %7, align 8, !tbaa !1155  ; 5 uses
  %i.ch = trunc i64 %i.cg to i1
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = lshr i64 %i.cg, 1
  %i.cj = lshr i64 %i.cg, 58
  %i.ck = shl nsw i64 -1, %i.cj
  %i.cl = xor i64 %i.ck, -1
  %i.cm = shl nuw i64 1, %i.cf
  %i.cn = or i64 %i.ci, %i.cm
  %i.co = and i64 %i.cn, %i.cl
  %i.cp = shl nuw i64 %i.co, 1
  %i.cq = and i64 %i.cg, -288230376151711743
  %i.cr = or i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %7, align 8, !tbaa !1155
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

bb.q:                                             ; preds = %bb.o
  %i.cs = inttoptr i64 %i.cg to ptr
  %i.ct = and i32 %i.ce, 63
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = lshr i32 %i.ce, 6
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !603
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !513
  %i.db = or i64 %i.da, %i.cv
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !513
  br label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

_ZN4llvm14SmallBitVector9referenceaSEb.exit:      ; preds = %bb.q, %bb.p, %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.06239, i64 4 ; 2 uses
  %.not67 = icmp eq ptr %i.dc, %i.cb
  br i1 %.not67, label %_ZN4llvm14SmallBitVector3setEv.exit, label %.lr.ph

_ZN4llvm14SmallBitVector3setEv.exit:              ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.07.1, i64 8
  br label %bb.f

_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14: ; preds = %bb.c, %bb.h, %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, %bb.i, %bb.g, %bb.l, %_ZN4llvm9BitVector10init_wordsEb.exit.i.i, %bb.n, %bb.b, %bb.a, %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit
  %.not6840 = icmp eq i64 %1, 0
  br i1 %.not6840, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph44, %bb.ac
  %i.dh = phi i64 [ 0, %.lr.ph44 ], [ %i.fl, %bb.ac ]
  %.05342 = phi i1 [ true, %.lr.ph44 ], [ %.154, %bb.ac ]
  %.05741 = phi i32 [ 0, %.lr.ph44 ], [ %i.fk, %bb.ac ] ; 2 uses
  %i.di = xor i64 %i.dh, -1
  %i.dj = add i64 %1, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = select i1 %5, i32 %i.dk, i32 %.05741    ; 6 uses
  %i.dm = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #24
  %i.dn = icmp ult i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !818
  %i.dp = zext i32 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !820
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ds = phi ptr [ %i.dr, %bb.s ], [ null, %bb.r ] ; 3 uses
  %i.dt = load i64, ptr %7, align 8, !tbaa !1155  ; 5 uses
  %i.du = trunc i64 %i.dt to i1
  br i1 %i.du, label %.split, label %_ZNK4llvm14SmallBitVector5emptyEv.exit

.split:                                           ; preds = %bb.t
  %i.dv = icmp ult i64 %i.dt, 288230376151711744
  br i1 %i.dv, label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit, label %bb.u

_ZNK4llvm14SmallBitVector5emptyEv.exit:           ; preds = %bb.t
  %i.dw = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1162
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit, label %bb.v

bb.u:                                             ; preds = %.split
  %i.ea = lshr i64 %i.dt, 1
  %i.eb = lshr i64 %i.dt, 58
  %i.ec = shl nsw i64 -1, %i.eb
  %i.ed = xor i64 %i.ec, -1
  %i.ee = and i64 %i.ea, %i.ed
  %i.ef = zext nneg i32 %i.dl to i64
  %i.eg = lshr i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i1
  br label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit

bb.v:                                             ; preds = %_ZNK4llvm14SmallBitVector5emptyEv.exit
  %i.ei = lshr i32 %i.dl, 6
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !603
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = and i32 %i.dl, 63
  %i.en = load i64, ptr %i.el, align 8, !tbaa !513
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = and i64 %i.en, %i.ep
  %i.er = icmp ne i64 %i.eq, 0
  br label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit

_ZNK4llvm14SmallBitVector9referencecvbEv.exit:    ; preds = %bb.v, %bb.u, %.split, %_ZNK4llvm14SmallBitVector5emptyEv.exit
  %i.es = phi i1 [ false, %_ZNK4llvm14SmallBitVector5emptyEv.exit ], [ false, %.split ], [ %i.eh, %bb.u ], [ %i.er, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !696
  %i.et = zext i32 %i.dl to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !821
  %i.ew = call fastcc noundef zeroext i1 @_ZL15EvaluateCallArgPKN5clang11ParmVarDeclEPKNS_4ExprEN12_GLOBAL__N_17CallRefERNS6_8EvalInfoEbPPNS_7APValueE(ptr noundef %i.ds, ptr noundef %i.ev, i64 %2, ptr noundef nonnull align 8 dereferenceable(984) %3, i1 noundef zeroext %i.es, ptr noundef nonnull %i.a)
  br i1 %i.ew, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  %i.ex = call noundef zeroext i1 @_ZNK5clang6interp5State26keepEvaluatingAfterFailureEv(ptr noundef nonnull align 8 dereferenceable(984) %3) #24 ; 2 uses
  %i.ey = load ptr, ptr %i.df, align 8, !tbaa !614, !nonnull !480, !align !481 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !617, !range !517, !noundef !480
  %i.fa = zext i1 %i.ex to i8
  %i.fb = or i8 %i.ez, %i.fa
  store i8 %i.fb, ptr %i.ey, align 8, !tbaa !617
  br i1 %i.ex, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  %.154 = phi i1 [ %.05342, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit ], [ false, %bb.w ] ; 2 uses
  %.not = icmp eq ptr %i.ds, null
  br i1 %.not, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ds, i64 100
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !675
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.fg = icmp ne ptr %i.ff, null
  %or.cond = select i1 %i.fe, i1 %i.fg, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fh = load i32, ptr %i.ff, align 8, !tbaa !631
  %i.fi = icmp eq i32 %i.fh, 7
  br i1 %i.fi, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %i.dg, align 8, !tbaa !651, !nonnull !480, !align !481
  call fastcc void @_ZN12_GLOBAL__N_16LValue7setFromERKN5clang10ASTContextERKNS1_7APValueE(ptr noundef nonnull align 8 dereferenceable(130) %6, ptr noundef nonnull align 8 dereferenceable(23904) %i.fj, ptr noundef nonnull align 8 dereferenceable(56) %i.ff)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fk = add i32 %.05741, 1                      ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %.not68.not = icmp ugt i64 %1, %i.fl
  br i1 %.not68.not, label %bb.r, label %.loopexit, !llvm.loop !2301

.loopexit:                                        ; preds = %bb.ac, %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14, %bb.ab
  %.not6831 = phi i1 [ false, %bb.ab ], [ true, %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread14 ], [ %.154, %bb.ac ]
  %i.fm = load i64, ptr %7, align 8, !tbaa !1155  ; 3 uses
  %i.fn = trunc i64 %i.fm to i1
  br i1 %i.fn, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %i.fo = inttoptr i64 %i.fm to ptr               ; 3 uses
  %i.fp = icmp eq i64 %i.fm, 0
  br i1 %i.fp, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !603 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.fq) #24
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.af, %bb.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 72) #26
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %.loopexit, %bb.ad, %_ZN4llvm9BitVectorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i1 %.not6831
}

end_hunk_0
