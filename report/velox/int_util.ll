inline.NumInlined: 2119
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 286
loop-unroll.NumUnrolled: 304
begin_hunk_0_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
  %.not = icmp eq i32 %i.g, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !531
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !262
  %.not31 = icmp eq i32 %i.k, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !534
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %.not31, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !534
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond51 = select i1 %or.cond, i1 %i.q, i1 false
  br i1 %or.cond51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA58_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(58) @.str.1)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  switch i32 %i.c, label %bb.m [
    i32 3, label %bb.e
    i32 5, label %bb.f
    i32 7, label %bb.g
    i32 9, label %bb.h
    i32 2, label %bb.i
    i32 4, label %bb.j
    i32 6, label %bb.k
    i32 8, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 41
  %.val = load i8, ptr %i.r, align 1, !tbaa !535
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 41
  %.val32 = load i8, ptr %i.s, align 1, !tbaa !535
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_8Int8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.val, i8 %.val32)
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %2, i64 42
  %.val33 = load i16, ptr %i.t, align 2, !tbaa !545
  %i.u = getelementptr i8, ptr %3, i64 42
  %.val34 = load i16, ptr %i.u, align 2, !tbaa !545
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %.val33, i16 %.val34)
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %2, i64 44
  %.val35 = load i32, ptr %i.v, align 4, !tbaa !547
  %i.w = getelementptr i8, ptr %3, i64 44
  %.val36 = load i32, ptr %i.w, align 4, !tbaa !547
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 %.val35, i32 %.val36)
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %2, i64 48
  %.val37 = load i64, ptr %i.x, align 8, !tbaa !549
  %i.y = getelementptr i8, ptr %3, i64 48
  %.val38 = load i64, ptr %i.y, align 8, !tbaa !549
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.val37, i64 %.val38)
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 41
  %.val39 = load i8, ptr %i.z, align 1, !tbaa !551
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 41
  %.val40 = load i8, ptr %i.aa, align 1, !tbaa !551
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9UInt8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.val39, i8 %.val40)
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %2, i64 42
  %.val41 = load i16, ptr %i.ab, align 2, !tbaa !553
  %i.ac = getelementptr i8, ptr %3, i64 42
  %.val42 = load i16, ptr %i.ac, align 2, !tbaa !553
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %.val41, i16 %.val42)
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %2, i64 44
  %.val43 = load i32, ptr %i.ad, align 4, !tbaa !555
  %i.ae = getelementptr i8, ptr %3, i64 44
  %.val44 = load i32, ptr %i.ae, align 4, !tbaa !555
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 %.val43, i32 %.val44)
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %2, i64 48
  %.val45 = load i64, ptr %i.af, align 8, !tbaa !557
  %i.ag = getelementptr i8, ptr %3, i64 48
  %.val46 = load i64, ptr %i.ag, align 8, !tbaa !557
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.val45, i64 %.val46)
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  tail call void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(38) @.str)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_8Int8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.41.val, i8 %.41.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.41.val, ptr %i.a, align 1, !tbaa !7, !noalias !559
  store i8 %.41.val1, ptr %i.b, align 1, !tbaa !7, !noalias !559
  %.not.i = icmp ne i8 %.41.val, -128
  %.not97.i = icmp ne i8 %.41.val1, 127
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !562
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !559 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !559
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !559 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !559
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !559
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !559
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !559
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !559
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.p = shufflevector <8 x i8> %i.o, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.r = shufflevector <8 x i8> %i.q, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat66 = shufflevector <16 x i8> %broadcast.splatinsert65, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert67 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat68 = shufflevector <16 x i8> %broadcast.splatinsert67, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert86 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat87 = shufflevector <8 x i8> %broadcast.splatinsert86, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert88 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat89 = shufflevector <8 x i8> %broadcast.splatinsert88, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.v = shufflevector <8 x i8> %i.u, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat43 = shufflevector <16 x i8> %broadcast.splatinsert42, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat49 = shufflevector <8 x i8> %broadcast.splatinsert48, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat51 = shufflevector <8 x i8> %broadcast.splatinsert50, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.ayu, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 51 uses
  %.090172.i = phi i64 [ %i.ayw, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.ayx, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !559 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check79, label %.preheader137.i

iter.check79:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check59 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check59, label %.preheader.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %iter.check79
  %min.iters.check61 = icmp ult i32 %i.x, 256
  br i1 %min.iters.check61, label %vec.epilog.ph83, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %n.mod.vf63 = and i64 %smax189.i, 24
  %n.vec64 = and i64 %smax189.i, 268435424        ; 5 uses
  %i.ac = shl nuw nsw i64 %n.vec64, 3             ; 2 uses
  %3 = or disjoint i64 %i.ac, 8
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph62
  %index70 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body69 ] ; 2 uses
  %vec.phi71 = phi <16 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.ahh, %vector.body69 ]
  %vec.phi72 = phi <16 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.ahi, %vector.body69 ]
  %i.ad = shl i64 %index70, 3                     ; 32 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bn = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.br = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 184
  %i.bz = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 208
  %i.cf = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %i.ch = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 224
  %i.cj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 232
  %i.cl = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 240
  %i.cn = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.cp = load i8, ptr %i.ae, align 1, !tbaa !7, !noalias !559
  %i.cq = load i8, ptr %i.ag, align 1, !tbaa !7, !noalias !559
  %i.cr = load i8, ptr %i.ai, align 1, !tbaa !7, !noalias !559
  %i.cs = load i8, ptr %i.ak, align 1, !tbaa !7, !noalias !559
  %i.ct = load i8, ptr %i.am, align 1, !tbaa !7, !noalias !559
  %i.cu = load i8, ptr %i.ao, align 1, !tbaa !7, !noalias !559
  %i.cv = load i8, ptr %i.aq, align 1, !tbaa !7, !noalias !559
  %i.cw = load i8, ptr %i.as, align 1, !tbaa !7, !noalias !559
  %i.cx = load i8, ptr %i.au, align 1, !tbaa !7, !noalias !559
  %i.cy = load i8, ptr %i.aw, align 1, !tbaa !7, !noalias !559
  %i.cz = load i8, ptr %i.ay, align 1, !tbaa !7, !noalias !559
  %i.da = load i8, ptr %i.ba, align 1, !tbaa !7, !noalias !559
  %i.db = load i8, ptr %i.bc, align 1, !tbaa !7, !noalias !559
  %i.dc = load i8, ptr %i.be, align 1, !tbaa !7, !noalias !559
  %i.dd = load i8, ptr %i.bg, align 1, !tbaa !7, !noalias !559
  %i.de = load i8, ptr %i.bi, align 1, !tbaa !7, !noalias !559
  %i.df = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 1
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 2
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 3
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 4
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 5
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 6
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 7
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 8
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 9
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 10
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 11
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 12
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 13
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 14
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 15 ; 2 uses
  %i.dv = load i8, ptr %i.bk, align 1, !tbaa !7, !noalias !559
  %i.dw = load i8, ptr %i.bm, align 1, !tbaa !7, !noalias !559
  %i.dx = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !559
  %i.dy = load i8, ptr %i.bq, align 1, !tbaa !7, !noalias !559
  %i.dz = load i8, ptr %i.bs, align 1, !tbaa !7, !noalias !559
  %i.ea = load i8, ptr %i.bu, align 1, !tbaa !7, !noalias !559
  %i.eb = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !559
  %i.ec = load i8, ptr %i.by, align 1, !tbaa !7, !noalias !559
  %i.ed = load i8, ptr %i.ca, align 1, !tbaa !7, !noalias !559
  %i.ee = load i8, ptr %i.cc, align 1, !tbaa !7, !noalias !559
  %i.ef = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !559
  %i.eg = load i8, ptr %i.cg, align 1, !tbaa !7, !noalias !559
  %i.eh = load i8, ptr %i.ci, align 1, !tbaa !7, !noalias !559
  %i.ei = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !559
  %i.ej = load i8, ptr %i.cm, align 1, !tbaa !7, !noalias !559
  %i.ek = load i8, ptr %i.co, align 1, !tbaa !7, !noalias !559
  %i.el = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 1
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 2
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 3
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 4
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 5
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 6
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 7
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 8
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 9
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 10
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 11
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 12
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 13
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 14
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 15 ; 2 uses
  %i.fb = icmp slt <16 x i8> %i.du, %broadcast.splat66
  %i.fc = icmp slt <16 x i8> %i.fa, %broadcast.splat66
  %i.fd = icmp sgt <16 x i8> %i.du, %broadcast.splat68
  %i.fe = icmp sgt <16 x i8> %i.fa, %broadcast.splat68
  %i.ff = or <16 x i1> %i.fb, %i.fd
  %i.fg = or <16 x i1> %i.fc, %i.fe
  %i.fh = or <16 x i1> %vec.phi71, %i.ff
  %i.fi = or <16 x i1> %vec.phi72, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 33
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ar, i64 57
  %i.fr = getelementptr inbounds nuw i8, ptr %i.at, i64 65
  %i.fs = getelementptr inbounds nuw i8, ptr %i.av, i64 73
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ax, i64 81
  %i.fu = getelementptr inbounds nuw i8, ptr %i.az, i64 89
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bb, i64 97
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bd, i64 105
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bf, i64 113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bh, i64 121
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bj, i64 129
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bl, i64 137
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bn, i64 145
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 153
  %i.gd = getelementptr inbounds nuw i8, ptr %i.br, i64 161
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bt, i64 169
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bv, i64 177
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bx, i64 185
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bz, i64 193
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cb, i64 201
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cd, i64 209
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cf, i64 217
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ch, i64 225
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 233
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cl, i64 241
  %i.go = getelementptr inbounds nuw i8, ptr %i.cn, i64 249
  %i.gp = load i8, ptr %i.fj, align 1, !tbaa !7, !noalias !559
  %i.gq = load i8, ptr %i.fk, align 1, !tbaa !7, !noalias !559
  %i.gr = load i8, ptr %i.fl, align 1, !tbaa !7, !noalias !559
  %i.gs = load i8, ptr %i.fm, align 1, !tbaa !7, !noalias !559
  %i.gt = load i8, ptr %i.fn, align 1, !tbaa !7, !noalias !559
  %i.gu = load i8, ptr %i.fo, align 1, !tbaa !7, !noalias !559
  %i.gv = load i8, ptr %i.fp, align 1, !tbaa !7, !noalias !559
  %i.gw = load i8, ptr %i.fq, align 1, !tbaa !7, !noalias !559
  %i.gx = load i8, ptr %i.fr, align 1, !tbaa !7, !noalias !559
  %i.gy = load i8, ptr %i.fs, align 1, !tbaa !7, !noalias !559
  %i.gz = load i8, ptr %i.ft, align 1, !tbaa !7, !noalias !559
  %i.ha = load i8, ptr %i.fu, align 1, !tbaa !7, !noalias !559
  %i.hb = load i8, ptr %i.fv, align 1, !tbaa !7, !noalias !559
  %i.hc = load i8, ptr %i.fw, align 1, !tbaa !7, !noalias !559
  %i.hd = load i8, ptr %i.fx, align 1, !tbaa !7, !noalias !559
  %i.he = load i8, ptr %i.fy, align 1, !tbaa !7, !noalias !559
  %i.hf = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 1
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 2
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 3
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 4
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 5
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 6
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 7
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 8
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 9
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_8Int8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.aak = getelementptr inbounds nuw i8, ptr %i.cf, i64 222
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ch, i64 230
  %i.aam = getelementptr inbounds nuw i8, ptr %i.cj, i64 238
  %i.aan = getelementptr inbounds nuw i8, ptr %i.cl, i64 246
  %i.aao = getelementptr inbounds nuw i8, ptr %i.cn, i64 254
  %i.aap = load i8, ptr %i.zj, align 1, !tbaa !7, !noalias !559
  %i.aaq = load i8, ptr %i.zk, align 1, !tbaa !7, !noalias !559
  %i.aar = load i8, ptr %i.zl, align 1, !tbaa !7, !noalias !559
  %i.aas = load i8, ptr %i.zm, align 1, !tbaa !7, !noalias !559
  %i.aat = load i8, ptr %i.zn, align 1, !tbaa !7, !noalias !559
  %i.aau = load i8, ptr %i.zo, align 1, !tbaa !7, !noalias !559
  %i.aav = load i8, ptr %i.zp, align 1, !tbaa !7, !noalias !559
  %i.aaw = load i8, ptr %i.zq, align 1, !tbaa !7, !noalias !559
  %i.aax = load i8, ptr %i.zr, align 1, !tbaa !7, !noalias !559
  %i.aay = load i8, ptr %i.zs, align 1, !tbaa !7, !noalias !559
  %i.aaz = load i8, ptr %i.zt, align 1, !tbaa !7, !noalias !559
  %i.aba = load i8, ptr %i.zu, align 1, !tbaa !7, !noalias !559
  %i.abb = load i8, ptr %i.zv, align 1, !tbaa !7, !noalias !559
  %i.abc = load i8, ptr %i.zw, align 1, !tbaa !7, !noalias !559
  %i.abd = load i8, ptr %i.zx, align 1, !tbaa !7, !noalias !559
  %i.abe = load i8, ptr %i.zy, align 1, !tbaa !7, !noalias !559
  %i.abf = insertelement <16 x i8> poison, i8 %i.aap, i64 0
  %i.abg = insertelement <16 x i8> %i.abf, i8 %i.aaq, i64 1
  %i.abh = insertelement <16 x i8> %i.abg, i8 %i.aar, i64 2
  %i.abi = insertelement <16 x i8> %i.abh, i8 %i.aas, i64 3
  %i.abj = insertelement <16 x i8> %i.abi, i8 %i.aat, i64 4
  %i.abk = insertelement <16 x i8> %i.abj, i8 %i.aau, i64 5
  %i.abl = insertelement <16 x i8> %i.abk, i8 %i.aav, i64 6
  %i.abm = insertelement <16 x i8> %i.abl, i8 %i.aaw, i64 7
  %i.abn = insertelement <16 x i8> %i.abm, i8 %i.aax, i64 8
  %i.abo = insertelement <16 x i8> %i.abn, i8 %i.aay, i64 9
  %i.abp = insertelement <16 x i8> %i.abo, i8 %i.aaz, i64 10
  %i.abq = insertelement <16 x i8> %i.abp, i8 %i.aba, i64 11
  %i.abr = insertelement <16 x i8> %i.abq, i8 %i.abb, i64 12
  %i.abs = insertelement <16 x i8> %i.abr, i8 %i.abc, i64 13
  %i.abt = insertelement <16 x i8> %i.abs, i8 %i.abd, i64 14
  %i.abu = insertelement <16 x i8> %i.abt, i8 %i.abe, i64 15 ; 2 uses
  %i.abv = load i8, ptr %i.zz, align 1, !tbaa !7, !noalias !559
  %i.abw = load i8, ptr %i.aaa, align 1, !tbaa !7, !noalias !559
  %i.abx = load i8, ptr %i.aab, align 1, !tbaa !7, !noalias !559
  %i.aby = load i8, ptr %i.aac, align 1, !tbaa !7, !noalias !559
  %i.abz = load i8, ptr %i.aad, align 1, !tbaa !7, !noalias !559
  %i.aca = load i8, ptr %i.aae, align 1, !tbaa !7, !noalias !559
  %i.acb = load i8, ptr %i.aaf, align 1, !tbaa !7, !noalias !559
  %i.acc = load i8, ptr %i.aag, align 1, !tbaa !7, !noalias !559
  %i.acd = load i8, ptr %i.aah, align 1, !tbaa !7, !noalias !559
  %i.ace = load i8, ptr %i.aai, align 1, !tbaa !7, !noalias !559
  %i.acf = load i8, ptr %i.aaj, align 1, !tbaa !7, !noalias !559
  %i.acg = load i8, ptr %i.aak, align 1, !tbaa !7, !noalias !559
  %i.ach = load i8, ptr %i.aal, align 1, !tbaa !7, !noalias !559
  %i.aci = load i8, ptr %i.aam, align 1, !tbaa !7, !noalias !559
  %i.acj = load i8, ptr %i.aan, align 1, !tbaa !7, !noalias !559
  %i.ack = load i8, ptr %i.aao, align 1, !tbaa !7, !noalias !559
  %i.acl = insertelement <16 x i8> poison, i8 %i.abv, i64 0
  %i.acm = insertelement <16 x i8> %i.acl, i8 %i.abw, i64 1
  %i.acn = insertelement <16 x i8> %i.acm, i8 %i.abx, i64 2
  %i.aco = insertelement <16 x i8> %i.acn, i8 %i.aby, i64 3
  %i.acp = insertelement <16 x i8> %i.aco, i8 %i.abz, i64 4
  %i.acq = insertelement <16 x i8> %i.acp, i8 %i.aca, i64 5
  %i.acr = insertelement <16 x i8> %i.acq, i8 %i.acb, i64 6
  %i.acs = insertelement <16 x i8> %i.acr, i8 %i.acc, i64 7
  %i.act = insertelement <16 x i8> %i.acs, i8 %i.acd, i64 8
  %i.acu = insertelement <16 x i8> %i.act, i8 %i.ace, i64 9
  %i.acv = insertelement <16 x i8> %i.acu, i8 %i.acf, i64 10
  %i.acw = insertelement <16 x i8> %i.acv, i8 %i.acg, i64 11
  %i.acx = insertelement <16 x i8> %i.acw, i8 %i.ach, i64 12
  %i.acy = insertelement <16 x i8> %i.acx, i8 %i.aci, i64 13
  %i.acz = insertelement <16 x i8> %i.acy, i8 %i.acj, i64 14
  %i.ada = insertelement <16 x i8> %i.acz, i8 %i.ack, i64 15 ; 2 uses
  %i.adb = icmp slt <16 x i8> %i.abu, %broadcast.splat66
  %i.adc = icmp slt <16 x i8> %i.ada, %broadcast.splat66
  %i.add = icmp sgt <16 x i8> %i.abu, %broadcast.splat68
  %i.ade = icmp sgt <16 x i8> %i.ada, %broadcast.splat68
  %i.adf = or <16 x i1> %i.adb, %i.add
  %i.adg = or <16 x i1> %i.adc, %i.ade
  %i.adh = or <16 x i1> %i.zh, %i.adf
  %i.adi = or <16 x i1> %i.zi, %i.adg
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.adk = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ah, i64 23
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aj, i64 31
  %i.adn = getelementptr inbounds nuw i8, ptr %i.al, i64 39
  %i.ado = getelementptr inbounds nuw i8, ptr %i.an, i64 47
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ap, i64 55
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ar, i64 63
  %i.adr = getelementptr inbounds nuw i8, ptr %i.at, i64 71
  %i.ads = getelementptr inbounds nuw i8, ptr %i.av, i64 79
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ax, i64 87
  %i.adu = getelementptr inbounds nuw i8, ptr %i.az, i64 95
  %i.adv = getelementptr inbounds nuw i8, ptr %i.bb, i64 103
  %i.adw = getelementptr inbounds nuw i8, ptr %i.bd, i64 111
  %i.adx = getelementptr inbounds nuw i8, ptr %i.bf, i64 119
  %i.ady = getelementptr inbounds nuw i8, ptr %i.bh, i64 127
  %i.adz = getelementptr inbounds nuw i8, ptr %i.bj, i64 135
  %i.aea = getelementptr inbounds nuw i8, ptr %i.bl, i64 143
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.bn, i64 151
  %i.aec = getelementptr inbounds nuw i8, ptr %i.bp, i64 159
  %i.aed = getelementptr inbounds nuw i8, ptr %i.br, i64 167
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bt, i64 175
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bv, i64 183
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.bx, i64 191
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.bz, i64 199
  %i.aei = getelementptr inbounds nuw i8, ptr %i.cb, i64 207
  %i.aej = getelementptr inbounds nuw i8, ptr %i.cd, i64 215
  %i.aek = getelementptr inbounds nuw i8, ptr %i.cf, i64 223
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ch, i64 231
  %i.aem = getelementptr inbounds nuw i8, ptr %i.cj, i64 239
  %i.aen = getelementptr inbounds nuw i8, ptr %i.cl, i64 247
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.cn, i64 255
  %i.aep = load i8, ptr %i.adj, align 1, !tbaa !7, !noalias !559
  %i.aeq = load i8, ptr %i.adk, align 1, !tbaa !7, !noalias !559
  %i.aer = load i8, ptr %i.adl, align 1, !tbaa !7, !noalias !559
  %i.aes = load i8, ptr %i.adm, align 1, !tbaa !7, !noalias !559
  %i.aet = load i8, ptr %i.adn, align 1, !tbaa !7, !noalias !559
  %i.aeu = load i8, ptr %i.ado, align 1, !tbaa !7, !noalias !559
  %i.aev = load i8, ptr %i.adp, align 1, !tbaa !7, !noalias !559
  %i.aew = load i8, ptr %i.adq, align 1, !tbaa !7, !noalias !559
  %i.aex = load i8, ptr %i.adr, align 1, !tbaa !7, !noalias !559
  %i.aey = load i8, ptr %i.ads, align 1, !tbaa !7, !noalias !559
  %i.aez = load i8, ptr %i.adt, align 1, !tbaa !7, !noalias !559
  %i.afa = load i8, ptr %i.adu, align 1, !tbaa !7, !noalias !559
  %i.afb = load i8, ptr %i.adv, align 1, !tbaa !7, !noalias !559
  %i.afc = load i8, ptr %i.adw, align 1, !tbaa !7, !noalias !559
  %i.afd = load i8, ptr %i.adx, align 1, !tbaa !7, !noalias !559
  %i.afe = load i8, ptr %i.ady, align 1, !tbaa !7, !noalias !559
  %i.aff = insertelement <16 x i8> poison, i8 %i.aep, i64 0
  %i.afg = insertelement <16 x i8> %i.aff, i8 %i.aeq, i64 1
  %i.afh = insertelement <16 x i8> %i.afg, i8 %i.aer, i64 2
  %i.afi = insertelement <16 x i8> %i.afh, i8 %i.aes, i64 3
  %i.afj = insertelement <16 x i8> %i.afi, i8 %i.aet, i64 4
  %i.afk = insertelement <16 x i8> %i.afj, i8 %i.aeu, i64 5
  %i.afl = insertelement <16 x i8> %i.afk, i8 %i.aev, i64 6
  %i.afm = insertelement <16 x i8> %i.afl, i8 %i.aew, i64 7
  %i.afn = insertelement <16 x i8> %i.afm, i8 %i.aex, i64 8
  %i.afo = insertelement <16 x i8> %i.afn, i8 %i.aey, i64 9
  %i.afp = insertelement <16 x i8> %i.afo, i8 %i.aez, i64 10
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 11
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 12
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 13
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 14
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 15 ; 2 uses
  %i.afv = load i8, ptr %i.adz, align 1, !tbaa !7, !noalias !559
  %i.afw = load i8, ptr %i.aea, align 1, !tbaa !7, !noalias !559
  %i.afx = load i8, ptr %i.aeb, align 1, !tbaa !7, !noalias !559
  %i.afy = load i8, ptr %i.aec, align 1, !tbaa !7, !noalias !559
  %i.afz = load i8, ptr %i.aed, align 1, !tbaa !7, !noalias !559
  %i.aga = load i8, ptr %i.aee, align 1, !tbaa !7, !noalias !559
  %i.agb = load i8, ptr %i.aef, align 1, !tbaa !7, !noalias !559
  %i.agc = load i8, ptr %i.aeg, align 1, !tbaa !7, !noalias !559
  %i.agd = load i8, ptr %i.aeh, align 1, !tbaa !7, !noalias !559
  %i.age = load i8, ptr %i.aei, align 1, !tbaa !7, !noalias !559
  %i.agf = load i8, ptr %i.aej, align 1, !tbaa !7, !noalias !559
  %i.agg = load i8, ptr %i.aek, align 1, !tbaa !7, !noalias !559
  %i.agh = load i8, ptr %i.ael, align 1, !tbaa !7, !noalias !559
  %i.agi = load i8, ptr %i.aem, align 1, !tbaa !7, !noalias !559
  %i.agj = load i8, ptr %i.aen, align 1, !tbaa !7, !noalias !559
  %i.agk = load i8, ptr %i.aeo, align 1, !tbaa !7, !noalias !559
  %i.agl = insertelement <16 x i8> poison, i8 %i.afv, i64 0
  %i.agm = insertelement <16 x i8> %i.agl, i8 %i.afw, i64 1
  %i.agn = insertelement <16 x i8> %i.agm, i8 %i.afx, i64 2
  %i.ago = insertelement <16 x i8> %i.agn, i8 %i.afy, i64 3
  %i.agp = insertelement <16 x i8> %i.ago, i8 %i.afz, i64 4
  %i.agq = insertelement <16 x i8> %i.agp, i8 %i.aga, i64 5
  %i.agr = insertelement <16 x i8> %i.agq, i8 %i.agb, i64 6
  %i.ags = insertelement <16 x i8> %i.agr, i8 %i.agc, i64 7
  %i.agt = insertelement <16 x i8> %i.ags, i8 %i.agd, i64 8
  %i.agu = insertelement <16 x i8> %i.agt, i8 %i.age, i64 9
  %i.agv = insertelement <16 x i8> %i.agu, i8 %i.agf, i64 10
  %i.agw = insertelement <16 x i8> %i.agv, i8 %i.agg, i64 11
  %i.agx = insertelement <16 x i8> %i.agw, i8 %i.agh, i64 12
  %i.agy = insertelement <16 x i8> %i.agx, i8 %i.agi, i64 13
  %i.agz = insertelement <16 x i8> %i.agy, i8 %i.agj, i64 14
  %i.aha = insertelement <16 x i8> %i.agz, i8 %i.agk, i64 15 ; 2 uses
  %i.ahb = icmp slt <16 x i8> %i.afu, %broadcast.splat66
  %i.ahc = icmp slt <16 x i8> %i.aha, %broadcast.splat66
  %i.ahd = icmp sgt <16 x i8> %i.afu, %broadcast.splat68
  %i.ahe = icmp sgt <16 x i8> %i.aha, %broadcast.splat68
  %i.ahf = or <16 x i1> %i.ahb, %i.ahd
  %i.ahg = or <16 x i1> %i.ahc, %i.ahe
  %i.ahh = or <16 x i1> %i.adh, %i.ahf            ; 2 uses
  %i.ahi = or <16 x i1> %i.adi, %i.ahg            ; 2 uses
  %index.next73 = add nuw i64 %index70, 32        ; 2 uses
  %i.ahj = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.ahj, label %middle.block74, label %vector.body69, !llvm.loop !565

middle.block74:                                   ; preds = %vector.body69
  %bin.rdx75 = or <16 x i1> %i.ahi, %i.ahh
  %i.ahk = bitcast <16 x i1> %bin.rdx75 to i16
  %i.ahl = icmp ne i16 %i.ahk, 0                  ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec64, %smax189.i
  br i1 %cmp.n76, label %.preheader137.loopexit.i, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block74
  %min.epilog.iters.check82 = icmp eq i64 %n.mod.vf63, 0
  br i1 %min.epilog.iters.check82, label %.preheader.i.preheader, label %vec.epilog.ph83, !prof !566

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check81
  %vec.epilog.resume.val77 = phi i64 [ %n.vec64, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check60 ]
  %bc.merge.rdx78 = phi i1 [ %i.ahl, %vec.epilog.iter.check81 ], [ false, %vector.main.loop.iter.check60 ]
  %n.vec85 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ahm = shl nuw nsw i64 %n.vec85, 3            ; 2 uses
  %4 = or disjoint i64 %i.ahm, 8
  %i.ahn = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx78, i64 0
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph83
  %index91 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph83 ], [ %index.next93, %vec.epilog.vector.body90 ] ; 2 uses
  %vec.phi92 = phi <8 x i1> [ %i.ahn, %vec.epilog.ph83 ], [ %i.aql, %vec.epilog.vector.body90 ]
  %i.aho = shl i64 %index91, 3                    ; 8 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %i.ahw = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 32
  %i.ahy = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 40
  %i.aia = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 48
  %i.aic = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 56
  %i.aie = load i8, ptr %i.ahp, align 1, !tbaa !7, !noalias !559
  %i.aif = load i8, ptr %i.ahr, align 1, !tbaa !7, !noalias !559
  %i.aig = load i8, ptr %i.aht, align 1, !tbaa !7, !noalias !559
  %i.aih = load i8, ptr %i.ahv, align 1, !tbaa !7, !noalias !559
  %i.aii = load i8, ptr %i.ahx, align 1, !tbaa !7, !noalias !559
  %i.aij = load i8, ptr %i.ahz, align 1, !tbaa !7, !noalias !559
  %i.aik = load i8, ptr %i.aib, align 1, !tbaa !7, !noalias !559
  %i.ail = load i8, ptr %i.aid, align 1, !tbaa !7, !noalias !559
  %i.aim = insertelement <8 x i8> poison, i8 %i.aie, i64 0
  %i.ain = insertelement <8 x i8> %i.aim, i8 %i.aif, i64 1
  %i.aio = insertelement <8 x i8> %i.ain, i8 %i.aig, i64 2
  %i.aip = insertelement <8 x i8> %i.aio, i8 %i.aih, i64 3
  %i.aiq = insertelement <8 x i8> %i.aip, i8 %i.aii, i64 4
  %i.air = insertelement <8 x i8> %i.aiq, i8 %i.aij, i64 5
  %i.ais = insertelement <8 x i8> %i.air, i8 %i.aik, i64 6
  %i.ait = insertelement <8 x i8> %i.ais, i8 %i.ail, i64 7 ; 2 uses
  %i.aiu = icmp slt <8 x i8> %i.ait, %broadcast.splat87
  %i.aiv = icmp sgt <8 x i8> %i.ait, %broadcast.splat89
  %i.aiw = or <8 x i1> %i.aiu, %i.aiv
  %i.aix = or <8 x i1> %vec.phi92, %i.aiw
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahp, i64 1
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahq, i64 9
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahs, i64 17
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahu, i64 25
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ahw, i64 33
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahy, i64 41
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aia, i64 49
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aic, i64 57
  %i.ajg = load i8, ptr %i.aiy, align 1, !tbaa !7, !noalias !559
  %i.ajh = load i8, ptr %i.aiz, align 1, !tbaa !7, !noalias !559
  %i.aji = load i8, ptr %i.aja, align 1, !tbaa !7, !noalias !559
  %i.ajj = load i8, ptr %i.ajb, align 1, !tbaa !7, !noalias !559
  %i.ajk = load i8, ptr %i.ajc, align 1, !tbaa !7, !noalias !559
  %i.ajl = load i8, ptr %i.ajd, align 1, !tbaa !7, !noalias !559
  %i.ajm = load i8, ptr %i.aje, align 1, !tbaa !7, !noalias !559
  %i.ajn = load i8, ptr %i.ajf, align 1, !tbaa !7, !noalias !559
  %i.ajo = insertelement <8 x i8> poison, i8 %i.ajg, i64 0
  %i.ajp = insertelement <8 x i8> %i.ajo, i8 %i.ajh, i64 1
  %i.ajq = insertelement <8 x i8> %i.ajp, i8 %i.aji, i64 2
  %i.ajr = insertelement <8 x i8> %i.ajq, i8 %i.ajj, i64 3
  %i.ajs = insertelement <8 x i8> %i.ajr, i8 %i.ajk, i64 4
  %i.ajt = insertelement <8 x i8> %i.ajs, i8 %i.ajl, i64 5
  %i.aju = insertelement <8 x i8> %i.ajt, i8 %i.ajm, i64 6
  %i.ajv = insertelement <8 x i8> %i.aju, i8 %i.ajn, i64 7 ; 2 uses
  %i.ajw = icmp slt <8 x i8> %i.ajv, %broadcast.splat87
  %i.ajx = icmp sgt <8 x i8> %i.ajv, %broadcast.splat89
  %i.ajy = or <8 x i1> %i.ajw, %i.ajx
  %i.ajz = or <8 x i1> %i.aix, %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahq, i64 10
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ahs, i64 18
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ahu, i64 26
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ahw, i64 34
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ahy, i64 42
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aia, i64 50
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aic, i64 58
  %i.aki = load i8, ptr %i.aka, align 1, !tbaa !7, !noalias !559
  %i.akj = load i8, ptr %i.akb, align 1, !tbaa !7, !noalias !559
  %i.akk = load i8, ptr %i.akc, align 1, !tbaa !7, !noalias !559
  %i.akl = load i8, ptr %i.akd, align 1, !tbaa !7, !noalias !559
  %i.akm = load i8, ptr %i.ake, align 1, !tbaa !7, !noalias !559
  %i.akn = load i8, ptr %i.akf, align 1, !tbaa !7, !noalias !559
  %i.ako = load i8, ptr %i.akg, align 1, !tbaa !7, !noalias !559
  %i.akp = load i8, ptr %i.akh, align 1, !tbaa !7, !noalias !559
  %i.akq = insertelement <8 x i8> poison, i8 %i.aki, i64 0
  %i.akr = insertelement <8 x i8> %i.akq, i8 %i.akj, i64 1
  %i.aks = insertelement <8 x i8> %i.akr, i8 %i.akk, i64 2
  %i.akt = insertelement <8 x i8> %i.aks, i8 %i.akl, i64 3
  %i.aku = insertelement <8 x i8> %i.akt, i8 %i.akm, i64 4
  %i.akv = insertelement <8 x i8> %i.aku, i8 %i.akn, i64 5
  %i.akw = insertelement <8 x i8> %i.akv, i8 %i.ako, i64 6
  %i.akx = insertelement <8 x i8> %i.akw, i8 %i.akp, i64 7 ; 2 uses
  %i.aky = icmp slt <8 x i8> %i.akx, %broadcast.splat87
  %i.akz = icmp sgt <8 x i8> %i.akx, %broadcast.splat89
  %i.ala = or <8 x i1> %i.aky, %i.akz
  %i.alb = or <8 x i1> %i.ajz, %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ahp, i64 3
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ahq, i64 11
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ahs, i64 19
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ahu, i64 27
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ahw, i64 35
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahy, i64 43
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aia, i64 51
  %i.alj = getelementptr inbounds nuw i8, ptr %i.aic, i64 59
  %i.alk = load i8, ptr %i.alc, align 1, !tbaa !7, !noalias !559
  %i.all = load i8, ptr %i.ald, align 1, !tbaa !7, !noalias !559
  %i.alm = load i8, ptr %i.ale, align 1, !tbaa !7, !noalias !559
  %i.aln = load i8, ptr %i.alf, align 1, !tbaa !7, !noalias !559
  %i.alo = load i8, ptr %i.alg, align 1, !tbaa !7, !noalias !559
  %i.alp = load i8, ptr %i.alh, align 1, !tbaa !7, !noalias !559
  %i.alq = load i8, ptr %i.ali, align 1, !tbaa !7, !noalias !559
  %i.alr = load i8, ptr %i.alj, align 1, !tbaa !7, !noalias !559
  %i.als = insertelement <8 x i8> poison, i8 %i.alk, i64 0
  %i.alt = insertelement <8 x i8> %i.als, i8 %i.all, i64 1
  %i.alu = insertelement <8 x i8> %i.alt, i8 %i.alm, i64 2
  %i.alv = insertelement <8 x i8> %i.alu, i8 %i.aln, i64 3
  %i.alw = insertelement <8 x i8> %i.alv, i8 %i.alo, i64 4
  %i.alx = insertelement <8 x i8> %i.alw, i8 %i.alp, i64 5
  %i.aly = insertelement <8 x i8> %i.alx, i8 %i.alq, i64 6
  %i.alz = insertelement <8 x i8> %i.aly, i8 %i.alr, i64 7 ; 2 uses
  %i.ama = icmp slt <8 x i8> %i.alz, %broadcast.splat87
  %i.amb = icmp sgt <8 x i8> %i.alz, %broadcast.splat89
  %i.amc = or <8 x i1> %i.ama, %i.amb
  %i.amd = or <8 x i1> %i.alb, %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ahq, i64 12
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ahs, i64 20
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ahu, i64 28
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ahw, i64 36
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ahy, i64 44
  %i.amk = getelementptr inbounds nuw i8, ptr %i.aia, i64 52
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aic, i64 60
  %i.amm = load i8, ptr %i.ame, align 1, !tbaa !7, !noalias !559
  %i.amn = load i8, ptr %i.amf, align 1, !tbaa !7, !noalias !559
  %i.amo = load i8, ptr %i.amg, align 1, !tbaa !7, !noalias !559
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !7, !noalias !559
  %i.amq = load i8, ptr %i.ami, align 1, !tbaa !7, !noalias !559
  %i.amr = load i8, ptr %i.amj, align 1, !tbaa !7, !noalias !559
  %i.ams = load i8, ptr %i.amk, align 1, !tbaa !7, !noalias !559
  %i.amt = load i8, ptr %i.aml, align 1, !tbaa !7, !noalias !559
  %i.amu = insertelement <8 x i8> poison, i8 %i.amm, i64 0
  %i.amv = insertelement <8 x i8> %i.amu, i8 %i.amn, i64 1
  %i.amw = insertelement <8 x i8> %i.amv, i8 %i.amo, i64 2
  %i.amx = insertelement <8 x i8> %i.amw, i8 %i.amp, i64 3
  %i.amy = insertelement <8 x i8> %i.amx, i8 %i.amq, i64 4
  %i.amz = insertelement <8 x i8> %i.amy, i8 %i.amr, i64 5
  %i.ana = insertelement <8 x i8> %i.amz, i8 %i.ams, i64 6
  %i.anb = insertelement <8 x i8> %i.ana, i8 %i.amt, i64 7 ; 2 uses
  %i.anc = icmp slt <8 x i8> %i.anb, %broadcast.splat87
  %i.and = icmp sgt <8 x i8> %i.anb, %broadcast.splat89
  %i.ane = or <8 x i1> %i.anc, %i.and
  %i.anf = or <8 x i1> %i.amd, %i.ane
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ahp, i64 5
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 13
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ahs, i64 21
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ahu, i64 29
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ahw, i64 37
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ahy, i64 45
  %i.anm = getelementptr inbounds nuw i8, ptr %i.aia, i64 53
  %i.ann = getelementptr inbounds nuw i8, ptr %i.aic, i64 61
  %i.ano = load i8, ptr %i.ang, align 1, !tbaa !7, !noalias !559
  %i.anp = load i8, ptr %i.anh, align 1, !tbaa !7, !noalias !559
  %i.anq = load i8, ptr %i.ani, align 1, !tbaa !7, !noalias !559
  %i.anr = load i8, ptr %i.anj, align 1, !tbaa !7, !noalias !559
  %i.ans = load i8, ptr %i.ank, align 1, !tbaa !7, !noalias !559
  %i.ant = load i8, ptr %i.anl, align 1, !tbaa !7, !noalias !559
  %i.anu = load i8, ptr %i.anm, align 1, !tbaa !7, !noalias !559
  %i.anv = load i8, ptr %i.ann, align 1, !tbaa !7, !noalias !559
  %i.anw = insertelement <8 x i8> poison, i8 %i.ano, i64 0
  %i.anx = insertelement <8 x i8> %i.anw, i8 %i.anp, i64 1
  %i.any = insertelement <8 x i8> %i.anx, i8 %i.anq, i64 2
  %i.anz = insertelement <8 x i8> %i.any, i8 %i.anr, i64 3
  %i.aoa = insertelement <8 x i8> %i.anz, i8 %i.ans, i64 4
  %i.aob = insertelement <8 x i8> %i.aoa, i8 %i.ant, i64 5
  %i.aoc = insertelement <8 x i8> %i.aob, i8 %i.anu, i64 6
  %i.aod = insertelement <8 x i8> %i.aoc, i8 %i.anv, i64 7 ; 2 uses
  %i.aoe = icmp slt <8 x i8> %i.aod, %broadcast.splat87
  %i.aof = icmp sgt <8 x i8> %i.aod, %broadcast.splat89
  %i.aog = or <8 x i1> %i.aoe, %i.aof
  %i.aoh = or <8 x i1> %i.anf, %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ahp, i64 6
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ahq, i64 14
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ahs, i64 22
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ahu, i64 30
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ahw, i64 38
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ahy, i64 46
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aia, i64 54
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aic, i64 62
  %i.aoq = load i8, ptr %i.aoi, align 1, !tbaa !7, !noalias !559
  %i.aor = load i8, ptr %i.aoj, align 1, !tbaa !7, !noalias !559
  %i.aos = load i8, ptr %i.aok, align 1, !tbaa !7, !noalias !559
  %i.aot = load i8, ptr %i.aol, align 1, !tbaa !7, !noalias !559
  %i.aou = load i8, ptr %i.aom, align 1, !tbaa !7, !noalias !559
  %i.aov = load i8, ptr %i.aon, align 1, !tbaa !7, !noalias !559
  %i.aow = load i8, ptr %i.aoo, align 1, !tbaa !7, !noalias !559
  %i.aox = load i8, ptr %i.aop, align 1, !tbaa !7, !noalias !559
  %i.aoy = insertelement <8 x i8> poison, i8 %i.aoq, i64 0
  %i.aoz = insertelement <8 x i8> %i.aoy, i8 %i.aor, i64 1
  %i.apa = insertelement <8 x i8> %i.aoz, i8 %i.aos, i64 2
  %i.apb = insertelement <8 x i8> %i.apa, i8 %i.aot, i64 3
  %i.apc = insertelement <8 x i8> %i.apb, i8 %i.aou, i64 4
  %i.apd = insertelement <8 x i8> %i.apc, i8 %i.aov, i64 5
  %i.ape = insertelement <8 x i8> %i.apd, i8 %i.aow, i64 6
  %i.apf = insertelement <8 x i8> %i.ape, i8 %i.aox, i64 7 ; 2 uses
  %i.apg = icmp slt <8 x i8> %i.apf, %broadcast.splat87
  %i.aph = icmp sgt <8 x i8> %i.apf, %broadcast.splat89
  %i.api = or <8 x i1> %i.apg, %i.aph
  %i.apj = or <8 x i1> %i.aoh, %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.ahp, i64 7
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ahq, i64 15
  %i.apm = getelementptr inbounds nuw i8, ptr %i.ahs, i64 23
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ahu, i64 31
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ahw, i64 39
  %i.app = getelementptr inbounds nuw i8, ptr %i.ahy, i64 47
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aia, i64 55
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aic, i64 63
  %i.aps = load i8, ptr %i.apk, align 1, !tbaa !7, !noalias !559
  %i.apt = load i8, ptr %i.apl, align 1, !tbaa !7, !noalias !559
  %i.apu = load i8, ptr %i.apm, align 1, !tbaa !7, !noalias !559
  %i.apv = load i8, ptr %i.apn, align 1, !tbaa !7, !noalias !559
  %i.apw = load i8, ptr %i.apo, align 1, !tbaa !7, !noalias !559
  %i.apx = load i8, ptr %i.app, align 1, !tbaa !7, !noalias !559
  %i.apy = load i8, ptr %i.apq, align 1, !tbaa !7, !noalias !559
  %i.apz = load i8, ptr %i.apr, align 1, !tbaa !7, !noalias !559
  %i.aqa = insertelement <8 x i8> poison, i8 %i.aps, i64 0
  %i.aqb = insertelement <8 x i8> %i.aqa, i8 %i.apt, i64 1
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 2
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 3
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 4
  %i.aqf = insertelement <8 x i8> %i.aqe, i8 %i.apx, i64 5
  %i.aqg = insertelement <8 x i8> %i.aqf, i8 %i.apy, i64 6
  %i.aqh = insertelement <8 x i8> %i.aqg, i8 %i.apz, i64 7 ; 2 uses
  %i.aqi = icmp slt <8 x i8> %i.aqh, %broadcast.splat87
  %i.aqj = icmp sgt <8 x i8> %i.aqh, %broadcast.splat89
  %i.aqk = or <8 x i1> %i.aqi, %i.aqj
  %i.aql = or <8 x i1> %i.apj, %i.aqk             ; 2 uses
  %index.next93 = add nuw i64 %index91, 8         ; 2 uses
  %i.aqm = icmp eq i64 %index.next93, %n.vec85
  br i1 %i.aqm, label %vec.epilog.middle.block94, label %vec.epilog.vector.body90, !llvm.loop !567

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body90
  %i.aqn = bitcast <8 x i1> %i.aql to i8
  %i.aqo = icmp ne i8 %i.aqn, 0                   ; 2 uses
  %cmp.n95 = icmp eq i64 %n.vec85, %smax189.i
  br i1 %cmp.n95, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check79, %vec.epilog.iter.check81, %vec.epilog.middle.block94
  %indvars.iv190.i.ph = phi i64 [ 8, %iter.check79 ], [ %3, %vec.epilog.iter.check81 ], [ %4, %vec.epilog.middle.block94 ]
  %.081158.i.ph = phi i64 [ 0, %iter.check79 ], [ %n.vec64, %vec.epilog.iter.check81 ], [ %n.vec85, %vec.epilog.middle.block94 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check79 ], [ %i.ac, %vec.epilog.iter.check81 ], [ %i.ahm, %vec.epilog.middle.block94 ]
  %.085156.i.ph = phi i1 [ false, %iter.check79 ], [ %i.ahl, %vec.epilog.iter.check81 ], [ %i.aqo, %vec.epilog.middle.block94 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block94, %middle.block74
  %.lcssa36 = phi i1 [ %i.aqo, %vec.epilog.middle.block94 ], [ %i.ahl, %middle.block74 ], [ %op.rdx, %.preheader.i ]
  %i.aqp = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.aqp, %.preheader137.loopexit.i ] ; 7 uses
  %i.aqq = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.aqr = icmp slt i64 %.082.lcssa.i, %i.aqq
  br i1 %i.aqr, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.aqs = sub nsw i64 %i.aqq, %.082.lcssa.i      ; 6 uses
  %min.iters.check = icmp ult i64 %i.aqs, 8
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.aqs, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aqs, 24
  %n.vec = and i64 %i.aqs, -32                    ; 4 uses
  %i.aqt = add nsw i64 %.082.lcssa.i, %n.vec
  %i.aqu = insertelement <16 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.aqv = getelementptr i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ %i.aqu, %vector.ph ], [ %i.are, %vector.body ]
  %vec.phi44 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.arf, %vector.body ]
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 %index ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16
  %wide.load = load <16 x i8>, ptr %i.aqw, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %wide.load45 = load <16 x i8>, ptr %i.aqx, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.aqy = icmp slt <16 x i8> %wide.load, %broadcast.splat
  %i.aqz = icmp slt <16 x i8> %wide.load45, %broadcast.splat
  %i.ara = icmp sgt <16 x i8> %wide.load, %broadcast.splat43
  %i.arb = icmp sgt <16 x i8> %wide.load45, %broadcast.splat43
  %i.arc = or <16 x i1> %i.aqy, %i.ara
  %i.ard = or <16 x i1> %i.aqz, %i.arb
  %i.are = or <16 x i1> %vec.phi, %i.arc          ; 2 uses
  %i.arf = or <16 x i1> %vec.phi44, %i.ard        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.arg = icmp eq i64 %index.next, %n.vec
  br i1 %i.arg, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.arf, %i.are
  %i.arh = bitcast <16 x i1> %bin.rdx to i16
  %i.ari = icmp ne i16 %i.arh, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %i.aqs, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader, label %vec.epilog.ph, !prof !566

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ari, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %n.mod.vf46 = and i64 %i.aqq, 7
  %n.vec47 = sub nsw i64 %i.aqs, %n.mod.vf46      ; 2 uses
  %i.arj = add nsw i64 %.082.lcssa.i, %n.vec47
  %i.ark = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.arl = getelementptr i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi53 = phi <8 x i1> [ %i.ark, %vec.epilog.ph ], [ %i.arq, %vec.epilog.vector.body ]
  %i.arm = getelementptr i8, ptr %i.arl, i64 %index52
  %wide.load54 = load <8 x i8>, ptr %i.arm, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.arn = icmp slt <8 x i8> %wide.load54, %broadcast.splat49
  %i.aro = icmp sgt <8 x i8> %wide.load54, %broadcast.splat51
  %i.arp = or <8 x i1> %i.arn, %i.aro
  %i.arq = or <8 x i1> %vec.phi53, %i.arp         ; 2 uses
  %index.next55 = add nuw i64 %index52, 8         ; 2 uses
  %i.arr = icmp eq i64 %index.next55, %n.vec47
  br i1 %i.arr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !569

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ars = bitcast <8 x i1> %i.arq to i8
  %i.art = icmp ne i8 %i.ars, 0                   ; 2 uses
  %i.aru = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n56 = icmp eq i16 %i.aru, 0
  br i1 %cmp.n56, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.aqt, %vec.epilog.iter.check ], [ %i.arj, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.ari, %vec.epilog.iter.check ], [ %i.art, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv190.i = phi i64 [ %i.asd, %.preheader.i ], [ %indvars.iv190.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.081158.i = phi i64 [ %i.asc, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %indvars.iv190.i, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ]
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.arv = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082157.i
  %i.arw = load <8 x i8>, ptr %i.arv, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.arx = icmp slt <8 x i8> %i.arw, %i.t
  %i.ary = icmp sgt <8 x i8> %i.arw, %i.v
  %i.arz = shufflevector <8 x i1> %i.ary, <8 x i1> %i.arx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.asa = bitcast <16 x i1> %i.arz to i16
  %i.asb = icmp ne i16 %i.asa, 0
  %op.rdx = or i1 %i.asb, %.085156.i              ; 2 uses
  %i.asc = add nuw nsw i64 %.081158.i, 1          ; 2 uses
  %i.asd = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.asc, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !570

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i
  %.284162.i = phi i64 [ %i.asj, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.asi, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader ]
  %i.ase = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.284162.i
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.asg = icmp slt i8 %i.asf, %.41.val
  %i.ash = icmp sgt i8 %i.asf, %.41.val1
  %spec.select128.i = or i1 %i.asg, %i.ash
  %i.asi = or i1 %.287161.i, %spec.select128.i    ; 2 uses
  %i.asj = add nuw nsw i64 %.284162.i, 1          ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.asj, %i.aqq
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i, !llvm.loop !571

bb.d:                                             ; preds = %.lr.ph176.i
  %i.ask = icmp sgt i32 %i.x, 0
  br i1 %i.ask, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.asl = icmp sgt i32 %i.y, 7
  br i1 %i.asl, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.asm = lshr i32 %i.y, 3
  %i.asn = trunc i64 %.092169.i to i3             ; 7 uses
  %i.aso = trunc i64 %.092169.i to i8
  %i.asp = and i8 %i.aso, 7
  %i.asq = add i3 %i.asn, 1
  %i.asr = zext i3 %i.asq to i8
  %i.ass = add i3 %i.asn, 2
  %i.ast = zext i3 %i.ass to i8
  %i.asu = add i3 %i.asn, 3
  %i.asv = zext i3 %i.asu to i8
  %i.asw = xor i3 %i.asn, -4
  %i.asx = zext i3 %i.asw to i8
  %i.asy = add i3 %i.asn, -3
  %i.asz = zext i3 %i.asy to i8
  %i.ata = add i3 %i.asn, -2
  %i.atb = zext i3 %i.ata to i8
  %i.atc = add i3 %i.asn, -1
  %i.atd = zext i3 %i.atc to i8
  %smax.i = zext nneg i32 %i.asm to i64           ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.ate = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx99, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.ate, %.preheader139.loopexit.i ] ; 6 uses
  %i.atf = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.atg = icmp slt i64 %.076.lcssa.i, %i.atf
  br i1 %i.atg, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader: ; preds = %.preheader139.i
  %i.ath = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.ath, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader
  %i.ati = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076.lcssa.i
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.atk = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.atl = lshr i64 %i.atk, 3
  %i.atm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.atl
  %i.atn = load i8, ptr %i.atm, align 1, !tbaa !7, !noalias !559
  %i.ato = trunc i64 %.092169.i to i8
  %i.atp = and i8 %i.ato, 7
  %i.atq = lshr i8 %i.atn, %i.atp
  %i.atr = trunc i8 %i.atq to i1
  %i.ats = icmp slt i8 %i.atj, %.41.val
  %i.att = icmp sgt i8 %i.atj, %.41.val1
  %spec.select130.i.prol = or i1 %i.ats, %i.att
  %i.atu = select i1 %i.atr, i1 %spec.select130.i.prol, i1 false
  %i.atv = or i1 %.3.lcssa.i, %i.atu              ; 2 uses
  %i.atw = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader ], [ %i.atv, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader ], [ %i.atw, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader ], [ %i.atv, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol ]
  %i.atx = add nsw i64 %i.atf, -1
  %i.aty = icmp eq i64 %.076.lcssa.i, %i.atx
  br i1 %i.aty, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.awt, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.aws, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %op.rdx99, %.preheader133.i ]
  %i.atz = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076147.i
  %i.aua = add nsw i64 %.076147.i, %.092169.i
  %i.aub = lshr i64 %i.aua, 3
  %i.auc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aub
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !7, !noalias !559
  %i.aue = or disjoint i64 %.076147.i, 1
  %i.auf = add nsw i64 %i.aue, %.092169.i
  %i.aug = lshr i64 %i.auf, 3
  %i.auh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !7, !noalias !559
  %i.auj = or disjoint i64 %.076147.i, 2
  %i.auk = add nsw i64 %i.auj, %.092169.i
  %i.aul = lshr i64 %i.auk, 3
  %i.aum = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !7, !noalias !559
  %i.auo = or disjoint i64 %.076147.i, 3
  %i.aup = add nsw i64 %i.auo, %.092169.i
  %i.auq = lshr i64 %i.aup, 3
  %i.aur = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !7, !noalias !559
  %i.aut = or disjoint i64 %.076147.i, 4
  %i.auu = add nsw i64 %i.aut, %.092169.i
  %i.auv = lshr i64 %i.auu, 3
  %i.auw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auv
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !7, !noalias !559
  %i.auy = or disjoint i64 %.076147.i, 5
  %i.auz = add nsw i64 %i.auy, %.092169.i
  %i.ava = lshr i64 %i.auz, 3
  %i.avb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !7, !noalias !559
  %i.avd = or disjoint i64 %.076147.i, 6
  %i.ave = add nsw i64 %i.avd, %.092169.i
  %i.avf = lshr i64 %i.ave, 3
  %i.avg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !7, !noalias !559
  %i.avi = or disjoint i64 %.076147.i, 7
  %i.avj = add nsw i64 %i.avi, %.092169.i
  %i.avk = lshr i64 %i.avj, 3
  %i.avl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avk
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !7, !noalias !559
  %i.avn = load <8 x i8>, ptr %i.atz, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.avo = lshr i8 %i.avm, %i.atd
  %i.avp = lshr i8 %i.avh, %i.atb
  %i.avq = lshr i8 %i.avc, %i.asz
  %i.avr = lshr i8 %i.aux, %i.asx
  %i.avs = lshr i8 %i.aus, %i.asv
  %i.avt = lshr i8 %i.aun, %i.ast
  %i.avu = lshr i8 %i.aui, %i.asr
  %i.avv = lshr i8 %i.aud, %i.asp
  %i.avw = trunc i8 %i.avo to i1
  %i.avx = trunc i8 %i.avp to i1
  %i.avy = trunc i8 %i.avq to i1
  %i.avz = trunc i8 %i.avr to i1
  %i.awa = trunc i8 %i.avs to i1
  %i.awb = trunc i8 %i.avt to i1
  %i.awc = trunc i8 %i.avu to i1
  %i.awd = trunc i8 %i.avv to i1
  %i.awe = icmp slt <8 x i8> %i.avn, %i.p
  %i.awf = icmp sgt <8 x i8> %i.avn, %i.r
  %i.awg = or <8 x i1> %i.awe, %i.awf
  %i.awh = insertelement <8 x i1> poison, i1 %i.awd, i64 0
  %i.awi = insertelement <8 x i1> %i.awh, i1 %i.awc, i64 1
  %i.awj = insertelement <8 x i1> %i.awi, i1 %i.awb, i64 2
  %i.awk = insertelement <8 x i1> %i.awj, i1 %i.awa, i64 3
  %i.awl = insertelement <8 x i1> %i.awk, i1 %i.avz, i64 4
  %i.awm = insertelement <8 x i1> %i.awl, i1 %i.avy, i64 5
  %i.awn = insertelement <8 x i1> %i.awm, i1 %i.avx, i64 6
  %i.awo = insertelement <8 x i1> %i.awn, i1 %i.avw, i64 7
  %i.awp = select <8 x i1> %i.awo, <8 x i1> %i.awg, <8 x i1> zeroinitializer
  %i.awq = bitcast <8 x i1> %i.awp to i8
  %i.awr = icmp ne i8 %i.awq, 0
  %op.rdx99 = or i1 %i.awr, %.3146.i              ; 2 uses
  %i.aws = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %i.awt = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.aws, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !572

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i
  %.2151.i = phi i64 [ %i.axx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.axw, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit ]
  %i.awu = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.2151.i
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.aww = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.awx = lshr i64 %i.aww, 3
  %i.awy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.awx
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !7, !noalias !559
  %i.axa = trunc i64 %i.aww to i8
  %i.axb = and i8 %i.axa, 7
  %i.axc = lshr i8 %i.awz, %i.axb
  %i.axd = trunc i8 %i.axc to i1
  %i.axe = icmp slt i8 %i.awv, %.41.val
  %i.axf = icmp sgt i8 %i.awv, %.41.val1
  %spec.select130.i = or i1 %i.axe, %i.axf
  %i.axg = select i1 %i.axd, i1 %spec.select130.i, i1 false
  %i.axh = or i1 %.5150.i, %i.axg
  %i.axi = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.axi
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !7, !noalias !559 ; 2 uses
  %i.axl = add nsw i64 %i.axi, %.092169.i         ; 2 uses
  %i.axm = lshr i64 %i.axl, 3
  %i.axn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axm
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !7, !noalias !559
  %i.axp = trunc i64 %i.axl to i8
  %i.axq = and i8 %i.axp, 7
  %i.axr = lshr i8 %i.axo, %i.axq
  %i.axs = trunc i8 %i.axr to i1
  %i.axt = icmp slt i8 %i.axk, %.41.val
  %i.axu = icmp sgt i8 %i.axk, %.41.val1
  %spec.select130.i.1 = or i1 %i.axt, %i.axu
  %i.axv = select i1 %i.axs, i1 %spec.select130.i.1, i1 false
  %i.axw = or i1 %i.axh, %i.axv                   ; 2 uses
  %i.axx = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.axx, %i.atf
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i, !llvm.loop !573

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.asi, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.art, %vec.epilog.middle.block ], [ %i.ari, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit ], [ %i.axw, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.axy = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !559
  %i.axz = icmp sgt i64 %i.axy, 0
  %i.aya = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.axz, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ayn, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.ayb = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.ayc = lshr i64 %i.ayb, 3
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ayc
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !7, !noalias !559
  %i.ayf = trunc i64 %i.ayb to i8
  %i.ayg = and i8 %i.ayf, 7
  %i.ayh = lshr i8 %i.aye, %i.ayg
  %i.ayi = trunc i8 %i.ayh to i1
  br i1 %i.ayi, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ayj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.073167.i
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !7, !noalias !559 ; 3 uses
  %i.ayl = icmp slt i8 %i.ayk, %.41.val
  %i.aym = icmp sgt i8 %i.ayk, %.41.val1
  %or.cond131.i = or i1 %i.ayl, %i.aym
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE0_clEa(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef signext %i.ayk)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ayn = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ayn, %i.aya
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !575

bb.g:                                             ; preds = %.lr.ph.i
  %i.ayo = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ayo, %i.aya
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !576

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ayo, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.0165.i
  %i.ayq = load i8, ptr %i.ayp, align 1, !tbaa !7, !noalias !559 ; 3 uses
  %i.ayr = icmp slt i8 %i.ayq, %.41.val
  %i.ays = icmp sgt i8 %i.ayq, %.41.val1
  %or.cond132.i = or i1 %i.ayr, %i.ays
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE0_clEa(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef signext %i.ayq)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ayt = sext i32 %i.y to i64
  %i.ayu = getelementptr inbounds i8, ptr %.088173.i, i64 %i.ayt
  %i.ayv = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ayw = add nsw i64 %.090172.i, %i.ayv         ; 2 uses
  %i.ayx = add nsw i64 %.092169.i, %i.ayv
  %i.ayy = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !559
  %i.ayz = icmp slt i64 %i.ayw, %i.ayy
  br i1 %i.ayz, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !577

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !578
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !559
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %.42.val, i16 %.42.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.42.val, ptr %i.a, align 2, !tbaa !16, !noalias !581
  store i16 %.42.val1, ptr %i.b, align 2, !tbaa !16, !noalias !581
  %.not.i = icmp ne i16 %.42.val, -32768
  %.not97.i = icmp ne i16 %.42.val1, 32767
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !584
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !581 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !581
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !581 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !581
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !581
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !581
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !581
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !581
  %i.n = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat66 = shufflevector <8 x i16> %broadcast.splatinsert65, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert67 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat68 = shufflevector <8 x i16> %broadcast.splatinsert67, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert86 = insertelement <4 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat87 = shufflevector <4 x i16> %broadcast.splatinsert86, <4 x i16> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert88 = insertelement <4 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat89 = shufflevector <4 x i16> %broadcast.splatinsert88, <4 x i16> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.t = shufflevector <8 x i16> %i.s, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.v = shufflevector <8 x i16> %i.u, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat49 = shufflevector <4 x i16> %broadcast.splatinsert48, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat51 = shufflevector <4 x i16> %broadcast.splatinsert50, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.afo, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 31 uses
  %.090172.i = phi i64 [ %i.afq, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.afr, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !581 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check79, label %.preheader137.i

iter.check79:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check59 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check59, label %.preheader.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %iter.check79
  %min.iters.check61 = icmp ult i32 %i.x, 128
  br i1 %min.iters.check61, label %vec.epilog.ph83, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %n.mod.vf63 = and i64 %smax189.i, 12
  %n.vec64 = and i64 %smax189.i, 268435440        ; 5 uses
  %i.ac = shl nuw nsw i64 %n.vec64, 3             ; 2 uses
  %3 = or disjoint i64 %i.ac, 8
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph62
  %index70 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body69 ] ; 2 uses
  %vec.phi71 = phi <8 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.rx, %vector.body69 ]
  %vec.phi72 = phi <8 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.ry, %vector.body69 ]
  %i.ad = shl i64 %index70, 3                     ; 16 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load i16, ptr %i.ae, align 2, !tbaa !16, !noalias !581
  %i.bk = load i16, ptr %i.ag, align 2, !tbaa !16, !noalias !581
  %i.bl = load i16, ptr %i.ai, align 2, !tbaa !16, !noalias !581
  %i.bm = load i16, ptr %i.ak, align 2, !tbaa !16, !noalias !581
  %i.bn = load i16, ptr %i.am, align 2, !tbaa !16, !noalias !581
  %i.bo = load i16, ptr %i.ao, align 2, !tbaa !16, !noalias !581
  %i.bp = load i16, ptr %i.aq, align 2, !tbaa !16, !noalias !581
  %i.bq = load i16, ptr %i.as, align 2, !tbaa !16, !noalias !581
  %i.br = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 1
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 2
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 3
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 4
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 5
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 6
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 7 ; 2 uses
  %i.bz = load i16, ptr %i.au, align 2, !tbaa !16, !noalias !581
  %i.ca = load i16, ptr %i.aw, align 2, !tbaa !16, !noalias !581
  %i.cb = load i16, ptr %i.ay, align 2, !tbaa !16, !noalias !581
  %i.cc = load i16, ptr %i.ba, align 2, !tbaa !16, !noalias !581
  %i.cd = load i16, ptr %i.bc, align 2, !tbaa !16, !noalias !581
  %i.ce = load i16, ptr %i.be, align 2, !tbaa !16, !noalias !581
  %i.cf = load i16, ptr %i.bg, align 2, !tbaa !16, !noalias !581
  %i.cg = load i16, ptr %i.bi, align 2, !tbaa !16, !noalias !581
  %i.ch = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.ca, i64 1
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 2
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 3
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 4
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 5
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 6
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 7 ; 2 uses
  %i.cp = icmp slt <8 x i16> %i.by, %broadcast.splat66
  %i.cq = icmp slt <8 x i16> %i.co, %broadcast.splat66
  %i.cr = icmp sgt <8 x i16> %i.by, %broadcast.splat68
  %i.cs = icmp sgt <8 x i16> %i.co, %broadcast.splat68
  %i.ct = or <8 x i1> %i.cp, %i.cr
  %i.cu = or <8 x i1> %i.cq, %i.cs
  %i.cv = or <8 x i1> %vec.phi71, %i.ct
  %i.cw = or <8 x i1> %vec.phi72, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 50
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 66
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 82
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 98
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 114
  %i.df = getelementptr inbounds nuw i8, ptr %i.at, i64 130
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 146
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 162
  %i.di = getelementptr inbounds nuw i8, ptr %i.az, i64 178
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 194
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bd, i64 210
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bf, i64 226
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 242
  %i.dn = load i16, ptr %i.cx, align 2, !tbaa !16, !noalias !581
  %i.do = load i16, ptr %i.cy, align 2, !tbaa !16, !noalias !581
  %i.dp = load i16, ptr %i.cz, align 2, !tbaa !16, !noalias !581
  %i.dq = load i16, ptr %i.da, align 2, !tbaa !16, !noalias !581
  %i.dr = load i16, ptr %i.db, align 2, !tbaa !16, !noalias !581
  %i.ds = load i16, ptr %i.dc, align 2, !tbaa !16, !noalias !581
  %i.dt = load i16, ptr %i.dd, align 2, !tbaa !16, !noalias !581
  %i.du = load i16, ptr %i.de, align 2, !tbaa !16, !noalias !581
  %i.dv = insertelement <8 x i16> poison, i16 %i.dn, i64 0
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 1
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 2
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 3
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 4
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 5
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 6
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 7 ; 2 uses
  %i.ed = load i16, ptr %i.df, align 2, !tbaa !16, !noalias !581
  %i.ee = load i16, ptr %i.dg, align 2, !tbaa !16, !noalias !581
  %i.ef = load i16, ptr %i.dh, align 2, !tbaa !16, !noalias !581
  %i.eg = load i16, ptr %i.di, align 2, !tbaa !16, !noalias !581
  %i.eh = load i16, ptr %i.dj, align 2, !tbaa !16, !noalias !581
  %i.ei = load i16, ptr %i.dk, align 2, !tbaa !16, !noalias !581
  %i.ej = load i16, ptr %i.dl, align 2, !tbaa !16, !noalias !581
  %i.ek = load i16, ptr %i.dm, align 2, !tbaa !16, !noalias !581
  %i.el = insertelement <8 x i16> poison, i16 %i.ed, i64 0
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 1
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 2
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 3
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 4
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 5
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 6
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 7 ; 2 uses
  %i.et = icmp slt <8 x i16> %i.ec, %broadcast.splat66
  %i.eu = icmp slt <8 x i16> %i.es, %broadcast.splat66
  %i.ev = icmp sgt <8 x i16> %i.ec, %broadcast.splat68
  %i.ew = icmp sgt <8 x i16> %i.es, %broadcast.splat68
  %i.ex = or <8 x i1> %i.et, %i.ev
  %i.ey = or <8 x i1> %i.eu, %i.ew
  %i.ez = or <8 x i1> %i.cv, %i.ex
  %i.fa = or <8 x i1> %i.cw, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.fg = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ap, i64 100
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  %i.fj = getelementptr inbounds nuw i8, ptr %i.at, i64 132
  %i.fk = getelementptr inbounds nuw i8, ptr %i.av, i64 148
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ax, i64 164
  %i.fm = getelementptr inbounds nuw i8, ptr %i.az, i64 180
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bb, i64 196
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bd, i64 212
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bf, i64 228
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bh, i64 244
  %i.fr = load i16, ptr %i.fb, align 2, !tbaa !16, !noalias !581
  %i.fs = load i16, ptr %i.fc, align 2, !tbaa !16, !noalias !581
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !16, !noalias !581
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !16, !noalias !581
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !16, !noalias !581
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !16, !noalias !581
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !16, !noalias !581
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !16, !noalias !581
  %i.fz = insertelement <8 x i16> poison, i16 %i.fr, i64 0
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 1
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 2
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 3
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 4
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 5
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 6
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 7 ; 2 uses
  %i.gh = load i16, ptr %i.fj, align 2, !tbaa !16, !noalias !581
  %i.gi = load i16, ptr %i.fk, align 2, !tbaa !16, !noalias !581
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !16, !noalias !581
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !16, !noalias !581
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !16, !noalias !581
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !16, !noalias !581
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !16, !noalias !581
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !16, !noalias !581
  %i.gp = insertelement <8 x i16> poison, i16 %i.gh, i64 0
  %i.gq = insertelement <8 x i16> %i.gp, i16 %i.gi, i64 1
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 2
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 3
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 4
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 5
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 6
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 7 ; 2 uses
  %i.gx = icmp slt <8 x i16> %i.gg, %broadcast.splat66
  %i.gy = icmp slt <8 x i16> %i.gw, %broadcast.splat66
  %i.gz = icmp sgt <8 x i16> %i.gg, %broadcast.splat68
  %i.ha = icmp sgt <8 x i16> %i.gw, %broadcast.splat68
  %i.hb = or <8 x i1> %i.gx, %i.gz
  %i.hc = or <8 x i1> %i.gy, %i.ha
  %i.hd = or <8 x i1> %i.ez, %i.hb
  %i.he = or <8 x i1> %i.fa, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.hg = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ah, i64 38
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aj, i64 54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.al, i64 70
  %i.hk = getelementptr inbounds nuw i8, ptr %i.an, i64 86
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ap, i64 102
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ar, i64 118
  %i.hn = getelementptr inbounds nuw i8, ptr %i.at, i64 134
  %i.ho = getelementptr inbounds nuw i8, ptr %i.av, i64 150
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.ks, i64 3
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 4
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 5
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 6
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 7 ; 2 uses
  %i.lf = icmp slt <8 x i16> %i.ko, %broadcast.splat66
  %i.lg = icmp slt <8 x i16> %i.le, %broadcast.splat66
  %i.lh = icmp sgt <8 x i16> %i.ko, %broadcast.splat68
  %i.li = icmp sgt <8 x i16> %i.le, %broadcast.splat68
  %i.lj = or <8 x i1> %i.lf, %i.lh
  %i.lk = or <8 x i1> %i.lg, %i.li
  %i.ll = or <8 x i1> %i.jh, %i.lj
  %i.lm = or <8 x i1> %i.ji, %i.lk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 42
  %i.lq = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.lr = getelementptr inbounds nuw i8, ptr %i.al, i64 74
  %i.ls = getelementptr inbounds nuw i8, ptr %i.an, i64 90
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ap, i64 106
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ar, i64 122
  %i.lv = getelementptr inbounds nuw i8, ptr %i.at, i64 138
  %i.lw = getelementptr inbounds nuw i8, ptr %i.av, i64 154
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ax, i64 170
  %i.ly = getelementptr inbounds nuw i8, ptr %i.az, i64 186
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bb, i64 202
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bd, i64 218
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bf, i64 234
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bh, i64 250
  %i.md = load i16, ptr %i.ln, align 2, !tbaa !16, !noalias !581
  %i.me = load i16, ptr %i.lo, align 2, !tbaa !16, !noalias !581
  %i.mf = load i16, ptr %i.lp, align 2, !tbaa !16, !noalias !581
  %i.mg = load i16, ptr %i.lq, align 2, !tbaa !16, !noalias !581
  %i.mh = load i16, ptr %i.lr, align 2, !tbaa !16, !noalias !581
  %i.mi = load i16, ptr %i.ls, align 2, !tbaa !16, !noalias !581
  %i.mj = load i16, ptr %i.lt, align 2, !tbaa !16, !noalias !581
  %i.mk = load i16, ptr %i.lu, align 2, !tbaa !16, !noalias !581
  %i.ml = insertelement <8 x i16> poison, i16 %i.md, i64 0
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 1
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 2
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 3
  %i.mp = insertelement <8 x i16> %i.mo, i16 %i.mh, i64 4
  %i.mq = insertelement <8 x i16> %i.mp, i16 %i.mi, i64 5
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 6
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 7 ; 2 uses
  %i.mt = load i16, ptr %i.lv, align 2, !tbaa !16, !noalias !581
  %i.mu = load i16, ptr %i.lw, align 2, !tbaa !16, !noalias !581
  %i.mv = load i16, ptr %i.lx, align 2, !tbaa !16, !noalias !581
  %i.mw = load i16, ptr %i.ly, align 2, !tbaa !16, !noalias !581
  %i.mx = load i16, ptr %i.lz, align 2, !tbaa !16, !noalias !581
  %i.my = load i16, ptr %i.ma, align 2, !tbaa !16, !noalias !581
  %i.mz = load i16, ptr %i.mb, align 2, !tbaa !16, !noalias !581
  %i.na = load i16, ptr %i.mc, align 2, !tbaa !16, !noalias !581
  %i.nb = insertelement <8 x i16> poison, i16 %i.mt, i64 0
  %i.nc = insertelement <8 x i16> %i.nb, i16 %i.mu, i64 1
  %i.nd = insertelement <8 x i16> %i.nc, i16 %i.mv, i64 2
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 3
  %i.nf = insertelement <8 x i16> %i.ne, i16 %i.mx, i64 4
  %i.ng = insertelement <8 x i16> %i.nf, i16 %i.my, i64 5
  %i.nh = insertelement <8 x i16> %i.ng, i16 %i.mz, i64 6
  %i.ni = insertelement <8 x i16> %i.nh, i16 %i.na, i64 7 ; 2 uses
  %i.nj = icmp slt <8 x i16> %i.ms, %broadcast.splat66
  %i.nk = icmp slt <8 x i16> %i.ni, %broadcast.splat66
  %i.nl = icmp sgt <8 x i16> %i.ms, %broadcast.splat68
  %i.nm = icmp sgt <8 x i16> %i.ni, %broadcast.splat68
  %i.nn = or <8 x i1> %i.nj, %i.nl
  %i.no = or <8 x i1> %i.nk, %i.nm
  %i.np = or <8 x i1> %i.ll, %i.nn
  %i.nq = or <8 x i1> %i.lm, %i.no
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ns = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.nu = getelementptr inbounds nuw i8, ptr %i.aj, i64 60
  %i.nv = getelementptr inbounds nuw i8, ptr %i.al, i64 76
  %i.nw = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ap, i64 108
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ar, i64 124
  %i.nz = getelementptr inbounds nuw i8, ptr %i.at, i64 140
  %i.oa = getelementptr inbounds nuw i8, ptr %i.av, i64 156
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ax, i64 172
  %i.oc = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.od = getelementptr inbounds nuw i8, ptr %i.bb, i64 204
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bd, i64 220
  %i.of = getelementptr inbounds nuw i8, ptr %i.bf, i64 236
  %i.og = getelementptr inbounds nuw i8, ptr %i.bh, i64 252
  %i.oh = load i16, ptr %i.nr, align 2, !tbaa !16, !noalias !581
  %i.oi = load i16, ptr %i.ns, align 2, !tbaa !16, !noalias !581
  %i.oj = load i16, ptr %i.nt, align 2, !tbaa !16, !noalias !581
  %i.ok = load i16, ptr %i.nu, align 2, !tbaa !16, !noalias !581
  %i.ol = load i16, ptr %i.nv, align 2, !tbaa !16, !noalias !581
  %i.om = load i16, ptr %i.nw, align 2, !tbaa !16, !noalias !581
  %i.on = load i16, ptr %i.nx, align 2, !tbaa !16, !noalias !581
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !16, !noalias !581
  %i.op = insertelement <8 x i16> poison, i16 %i.oh, i64 0
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 1
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 2
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 3
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 4
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 5
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 6
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 7 ; 2 uses
  %i.ox = load i16, ptr %i.nz, align 2, !tbaa !16, !noalias !581
  %i.oy = load i16, ptr %i.oa, align 2, !tbaa !16, !noalias !581
  %i.oz = load i16, ptr %i.ob, align 2, !tbaa !16, !noalias !581
  %i.pa = load i16, ptr %i.oc, align 2, !tbaa !16, !noalias !581
  %i.pb = load i16, ptr %i.od, align 2, !tbaa !16, !noalias !581
  %i.pc = load i16, ptr %i.oe, align 2, !tbaa !16, !noalias !581
  %i.pd = load i16, ptr %i.of, align 2, !tbaa !16, !noalias !581
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !16, !noalias !581
  %i.pf = insertelement <8 x i16> poison, i16 %i.ox, i64 0
  %i.pg = insertelement <8 x i16> %i.pf, i16 %i.oy, i64 1
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 2
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 3
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 4
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 5
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 6
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 7 ; 2 uses
  %i.pn = icmp slt <8 x i16> %i.ow, %broadcast.splat66
  %i.po = icmp slt <8 x i16> %i.pm, %broadcast.splat66
  %i.pp = icmp sgt <8 x i16> %i.ow, %broadcast.splat68
  %i.pq = icmp sgt <8 x i16> %i.pm, %broadcast.splat68
  %i.pr = or <8 x i1> %i.pn, %i.pp
  %i.ps = or <8 x i1> %i.po, %i.pq
  %i.pt = or <8 x i1> %i.np, %i.pr
  %i.pu = or <8 x i1> %i.nq, %i.ps
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  %i.pw = getelementptr inbounds nuw i8, ptr %i.af, i64 30
  %i.px = getelementptr inbounds nuw i8, ptr %i.ah, i64 46
  %i.py = getelementptr inbounds nuw i8, ptr %i.aj, i64 62
  %i.pz = getelementptr inbounds nuw i8, ptr %i.al, i64 78
  %i.qa = getelementptr inbounds nuw i8, ptr %i.an, i64 94
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ap, i64 110
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ar, i64 126
  %i.qd = getelementptr inbounds nuw i8, ptr %i.at, i64 142
  %i.qe = getelementptr inbounds nuw i8, ptr %i.av, i64 158
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ax, i64 174
  %i.qg = getelementptr inbounds nuw i8, ptr %i.az, i64 190
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bb, i64 206
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bd, i64 222
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bf, i64 238
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bh, i64 254
  %i.ql = load i16, ptr %i.pv, align 2, !tbaa !16, !noalias !581
  %i.qm = load i16, ptr %i.pw, align 2, !tbaa !16, !noalias !581
  %i.qn = load i16, ptr %i.px, align 2, !tbaa !16, !noalias !581
  %i.qo = load i16, ptr %i.py, align 2, !tbaa !16, !noalias !581
  %i.qp = load i16, ptr %i.pz, align 2, !tbaa !16, !noalias !581
  %i.qq = load i16, ptr %i.qa, align 2, !tbaa !16, !noalias !581
  %i.qr = load i16, ptr %i.qb, align 2, !tbaa !16, !noalias !581
  %i.qs = load i16, ptr %i.qc, align 2, !tbaa !16, !noalias !581
  %i.qt = insertelement <8 x i16> poison, i16 %i.ql, i64 0
  %i.qu = insertelement <8 x i16> %i.qt, i16 %i.qm, i64 1
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 2
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 3
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 4
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 5
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 6
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 7 ; 2 uses
  %i.rb = load i16, ptr %i.qd, align 2, !tbaa !16, !noalias !581
  %i.rc = load i16, ptr %i.qe, align 2, !tbaa !16, !noalias !581
  %i.rd = load i16, ptr %i.qf, align 2, !tbaa !16, !noalias !581
  %i.re = load i16, ptr %i.qg, align 2, !tbaa !16, !noalias !581
  %i.rf = load i16, ptr %i.qh, align 2, !tbaa !16, !noalias !581
  %i.rg = load i16, ptr %i.qi, align 2, !tbaa !16, !noalias !581
  %i.rh = load i16, ptr %i.qj, align 2, !tbaa !16, !noalias !581
  %i.ri = load i16, ptr %i.qk, align 2, !tbaa !16, !noalias !581
  %i.rj = insertelement <8 x i16> poison, i16 %i.rb, i64 0
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 1
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 2
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 3
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 4
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 5
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 6
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 7 ; 2 uses
  %i.rr = icmp slt <8 x i16> %i.ra, %broadcast.splat66
  %i.rs = icmp slt <8 x i16> %i.rq, %broadcast.splat66
  %i.rt = icmp sgt <8 x i16> %i.ra, %broadcast.splat68
  %i.ru = icmp sgt <8 x i16> %i.rq, %broadcast.splat68
  %i.rv = or <8 x i1> %i.rr, %i.rt
  %i.rw = or <8 x i1> %i.rs, %i.ru
  %i.rx = or <8 x i1> %i.pt, %i.rv                ; 2 uses
  %i.ry = or <8 x i1> %i.pu, %i.rw                ; 2 uses
  %index.next73 = add nuw i64 %index70, 16        ; 2 uses
  %i.rz = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.rz, label %middle.block74, label %vector.body69, !llvm.loop !587

middle.block74:                                   ; preds = %vector.body69
  %bin.rdx75 = or <8 x i1> %i.ry, %i.rx
  %i.sa = bitcast <8 x i1> %bin.rdx75 to i8
  %i.sb = icmp ne i8 %i.sa, 0                     ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec64, %smax189.i
  br i1 %cmp.n76, label %.preheader137.loopexit.i, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block74
  %min.epilog.iters.check82 = icmp eq i64 %n.mod.vf63, 0
  br i1 %min.epilog.iters.check82, label %.preheader.i.preheader, label %vec.epilog.ph83, !prof !588

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check81
  %vec.epilog.resume.val77 = phi i64 [ %n.vec64, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check60 ]
  %bc.merge.rdx78 = phi i1 [ %i.sb, %vec.epilog.iter.check81 ], [ false, %vector.main.loop.iter.check60 ]
  %n.vec85 = and i64 %smax189.i, 268435452        ; 4 uses
  %i.sc = shl nuw nsw i64 %n.vec85, 3             ; 2 uses
  %4 = or disjoint i64 %i.sc, 8
  %i.sd = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx78, i64 0
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph83
  %index91 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph83 ], [ %index.next93, %vec.epilog.vector.body90 ] ; 2 uses
  %vec.phi92 = phi <4 x i1> [ %i.sd, %vec.epilog.ph83 ], [ %i.xf, %vec.epilog.vector.body90 ]
  %i.se = shl i64 %index91, 3                     ; 4 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 48
  %i.sm = load i16, ptr %i.sf, align 2, !tbaa !16, !noalias !581
  %i.sn = load i16, ptr %i.sh, align 2, !tbaa !16, !noalias !581
  %i.so = load i16, ptr %i.sj, align 2, !tbaa !16, !noalias !581
  %i.sp = load i16, ptr %i.sl, align 2, !tbaa !16, !noalias !581
  %i.sq = insertelement <4 x i16> poison, i16 %i.sm, i64 0
  %i.sr = insertelement <4 x i16> %i.sq, i16 %i.sn, i64 1
  %i.ss = insertelement <4 x i16> %i.sr, i16 %i.so, i64 2
  %i.st = insertelement <4 x i16> %i.ss, i16 %i.sp, i64 3 ; 2 uses
  %i.su = icmp slt <4 x i16> %i.st, %broadcast.splat87
  %i.sv = icmp sgt <4 x i16> %i.st, %broadcast.splat89
  %i.sw = or <4 x i1> %i.su, %i.sv
  %i.sx = or <4 x i1> %vec.phi92, %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sg, i64 18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.si, i64 34
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sk, i64 50
  %i.tc = load i16, ptr %i.sy, align 2, !tbaa !16, !noalias !581
  %i.td = load i16, ptr %i.sz, align 2, !tbaa !16, !noalias !581
  %i.te = load i16, ptr %i.ta, align 2, !tbaa !16, !noalias !581
  %i.tf = load i16, ptr %i.tb, align 2, !tbaa !16, !noalias !581
  %i.tg = insertelement <4 x i16> poison, i16 %i.tc, i64 0
  %i.th = insertelement <4 x i16> %i.tg, i16 %i.td, i64 1
  %i.ti = insertelement <4 x i16> %i.th, i16 %i.te, i64 2
  %i.tj = insertelement <4 x i16> %i.ti, i16 %i.tf, i64 3 ; 2 uses
  %i.tk = icmp slt <4 x i16> %i.tj, %broadcast.splat87
  %i.tl = icmp sgt <4 x i16> %i.tj, %broadcast.splat89
  %i.tm = or <4 x i1> %i.tk, %i.tl
  %i.tn = or <4 x i1> %i.sx, %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sg, i64 20
  %i.tq = getelementptr inbounds nuw i8, ptr %i.si, i64 36
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sk, i64 52
  %i.ts = load i16, ptr %i.to, align 2, !tbaa !16, !noalias !581
  %i.tt = load i16, ptr %i.tp, align 2, !tbaa !16, !noalias !581
  %i.tu = load i16, ptr %i.tq, align 2, !tbaa !16, !noalias !581
  %i.tv = load i16, ptr %i.tr, align 2, !tbaa !16, !noalias !581
  %i.tw = insertelement <4 x i16> poison, i16 %i.ts, i64 0
  %i.tx = insertelement <4 x i16> %i.tw, i16 %i.tt, i64 1
  %i.ty = insertelement <4 x i16> %i.tx, i16 %i.tu, i64 2
  %i.tz = insertelement <4 x i16> %i.ty, i16 %i.tv, i64 3 ; 2 uses
  %i.ua = icmp slt <4 x i16> %i.tz, %broadcast.splat87
  %i.ub = icmp sgt <4 x i16> %i.tz, %broadcast.splat89
  %i.uc = or <4 x i1> %i.ua, %i.ub
  %i.ud = or <4 x i1> %i.tn, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sf, i64 6
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sg, i64 22
  %i.ug = getelementptr inbounds nuw i8, ptr %i.si, i64 38
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sk, i64 54
  %i.ui = load i16, ptr %i.ue, align 2, !tbaa !16, !noalias !581
  %i.uj = load i16, ptr %i.uf, align 2, !tbaa !16, !noalias !581
  %i.uk = load i16, ptr %i.ug, align 2, !tbaa !16, !noalias !581
  %i.ul = load i16, ptr %i.uh, align 2, !tbaa !16, !noalias !581
  %i.um = insertelement <4 x i16> poison, i16 %i.ui, i64 0
  %i.un = insertelement <4 x i16> %i.um, i16 %i.uj, i64 1
  %i.uo = insertelement <4 x i16> %i.un, i16 %i.uk, i64 2
  %i.up = insertelement <4 x i16> %i.uo, i16 %i.ul, i64 3 ; 2 uses
  %i.uq = icmp slt <4 x i16> %i.up, %broadcast.splat87
  %i.ur = icmp sgt <4 x i16> %i.up, %broadcast.splat89
  %i.us = or <4 x i1> %i.uq, %i.ur
  %i.ut = or <4 x i1> %i.ud, %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.uw = getelementptr inbounds nuw i8, ptr %i.si, i64 40
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  %i.uy = load i16, ptr %i.uu, align 2, !tbaa !16, !noalias !581
  %i.uz = load i16, ptr %i.uv, align 2, !tbaa !16, !noalias !581
  %i.va = load i16, ptr %i.uw, align 2, !tbaa !16, !noalias !581
  %i.vb = load i16, ptr %i.ux, align 2, !tbaa !16, !noalias !581
  %i.vc = insertelement <4 x i16> poison, i16 %i.uy, i64 0
  %i.vd = insertelement <4 x i16> %i.vc, i16 %i.uz, i64 1
  %i.ve = insertelement <4 x i16> %i.vd, i16 %i.va, i64 2
  %i.vf = insertelement <4 x i16> %i.ve, i16 %i.vb, i64 3 ; 2 uses
  %i.vg = icmp slt <4 x i16> %i.vf, %broadcast.splat87
  %i.vh = icmp sgt <4 x i16> %i.vf, %broadcast.splat89
  %i.vi = or <4 x i1> %i.vg, %i.vh
  %i.vj = or <4 x i1> %i.ut, %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.sf, i64 10
  %i.vl = getelementptr inbounds nuw i8, ptr %i.sg, i64 26
  %i.vm = getelementptr inbounds nuw i8, ptr %i.si, i64 42
  %i.vn = getelementptr inbounds nuw i8, ptr %i.sk, i64 58
  %i.vo = load i16, ptr %i.vk, align 2, !tbaa !16, !noalias !581
  %i.vp = load i16, ptr %i.vl, align 2, !tbaa !16, !noalias !581
  %i.vq = load i16, ptr %i.vm, align 2, !tbaa !16, !noalias !581
  %i.vr = load i16, ptr %i.vn, align 2, !tbaa !16, !noalias !581
  %i.vs = insertelement <4 x i16> poison, i16 %i.vo, i64 0
  %i.vt = insertelement <4 x i16> %i.vs, i16 %i.vp, i64 1
  %i.vu = insertelement <4 x i16> %i.vt, i16 %i.vq, i64 2
  %i.vv = insertelement <4 x i16> %i.vu, i16 %i.vr, i64 3 ; 2 uses
  %i.vw = icmp slt <4 x i16> %i.vv, %broadcast.splat87
  %i.vx = icmp sgt <4 x i16> %i.vv, %broadcast.splat89
  %i.vy = or <4 x i1> %i.vw, %i.vx
  %i.vz = or <4 x i1> %i.vj, %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.wb = getelementptr inbounds nuw i8, ptr %i.sg, i64 28
  %i.wc = getelementptr inbounds nuw i8, ptr %i.si, i64 44
  %i.wd = getelementptr inbounds nuw i8, ptr %i.sk, i64 60
  %i.we = load i16, ptr %i.wa, align 2, !tbaa !16, !noalias !581
  %i.wf = load i16, ptr %i.wb, align 2, !tbaa !16, !noalias !581
  %i.wg = load i16, ptr %i.wc, align 2, !tbaa !16, !noalias !581
  %i.wh = load i16, ptr %i.wd, align 2, !tbaa !16, !noalias !581
  %i.wi = insertelement <4 x i16> poison, i16 %i.we, i64 0
  %i.wj = insertelement <4 x i16> %i.wi, i16 %i.wf, i64 1
  %i.wk = insertelement <4 x i16> %i.wj, i16 %i.wg, i64 2
  %i.wl = insertelement <4 x i16> %i.wk, i16 %i.wh, i64 3 ; 2 uses
  %i.wm = icmp slt <4 x i16> %i.wl, %broadcast.splat87
  %i.wn = icmp sgt <4 x i16> %i.wl, %broadcast.splat89
  %i.wo = or <4 x i1> %i.wm, %i.wn
  %i.wp = or <4 x i1> %i.vz, %i.wo
  %i.wq = getelementptr inbounds nuw i8, ptr %i.sf, i64 14
  %i.wr = getelementptr inbounds nuw i8, ptr %i.sg, i64 30
  %i.ws = getelementptr inbounds nuw i8, ptr %i.si, i64 46
  %i.wt = getelementptr inbounds nuw i8, ptr %i.sk, i64 62
  %i.wu = load i16, ptr %i.wq, align 2, !tbaa !16, !noalias !581
  %i.wv = load i16, ptr %i.wr, align 2, !tbaa !16, !noalias !581
  %i.ww = load i16, ptr %i.ws, align 2, !tbaa !16, !noalias !581
  %i.wx = load i16, ptr %i.wt, align 2, !tbaa !16, !noalias !581
  %i.wy = insertelement <4 x i16> poison, i16 %i.wu, i64 0
  %i.wz = insertelement <4 x i16> %i.wy, i16 %i.wv, i64 1
  %i.xa = insertelement <4 x i16> %i.wz, i16 %i.ww, i64 2
  %i.xb = insertelement <4 x i16> %i.xa, i16 %i.wx, i64 3 ; 2 uses
  %i.xc = icmp slt <4 x i16> %i.xb, %broadcast.splat87
  %i.xd = icmp sgt <4 x i16> %i.xb, %broadcast.splat89
  %i.xe = or <4 x i1> %i.xc, %i.xd
  %i.xf = or <4 x i1> %i.wp, %i.xe                ; 2 uses
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.xg = icmp eq i64 %index.next93, %n.vec85
  br i1 %i.xg, label %vec.epilog.middle.block94, label %vec.epilog.vector.body90, !llvm.loop !589

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body90
  %i.xh = bitcast <4 x i1> %i.xf to i4
  %i.xi = icmp ne i4 %i.xh, 0                     ; 2 uses
  %cmp.n95 = icmp eq i64 %n.vec85, %smax189.i
  br i1 %cmp.n95, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check79, %vec.epilog.iter.check81, %vec.epilog.middle.block94
  %indvars.iv190.i.ph = phi i64 [ 8, %iter.check79 ], [ %3, %vec.epilog.iter.check81 ], [ %4, %vec.epilog.middle.block94 ]
  %.081158.i.ph = phi i64 [ 0, %iter.check79 ], [ %n.vec64, %vec.epilog.iter.check81 ], [ %n.vec85, %vec.epilog.middle.block94 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check79 ], [ %i.ac, %vec.epilog.iter.check81 ], [ %i.sc, %vec.epilog.middle.block94 ]
  %.085156.i.ph = phi i1 [ false, %iter.check79 ], [ %i.sb, %vec.epilog.iter.check81 ], [ %i.xi, %vec.epilog.middle.block94 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block94, %middle.block74
  %.lcssa36 = phi i1 [ %i.xi, %vec.epilog.middle.block94 ], [ %i.sb, %middle.block74 ], [ %op.rdx, %.preheader.i ]
  %i.xj = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.xj, %.preheader137.loopexit.i ] ; 7 uses
  %i.xk = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.xl = icmp slt i64 %.082.lcssa.i, %i.xk
  br i1 %i.xl, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.xm = sub nsw i64 %i.xk, %.082.lcssa.i        ; 6 uses
  %min.iters.check = icmp ult i64 %i.xm, 4
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.xm, 16
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.xm, 12
  %n.vec = and i64 %i.xm, -16                     ; 4 uses
  %i.xn = add nsw i64 %.082.lcssa.i, %n.vec
  %i.xo = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.xp = getelementptr [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ %i.xo, %vector.ph ], [ %i.xy, %vector.body ]
  %vec.phi44 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.xz, %vector.body ]
  %i.xq = getelementptr [2 x i8], ptr %i.xp, i64 %index ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %wide.load = load <8 x i16>, ptr %i.xq, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.xr, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.xs = icmp slt <8 x i16> %wide.load, %broadcast.splat
  %i.xt = icmp slt <8 x i16> %wide.load45, %broadcast.splat
  %i.xu = icmp sgt <8 x i16> %wide.load, %broadcast.splat43
  %i.xv = icmp sgt <8 x i16> %wide.load45, %broadcast.splat43
  %i.xw = or <8 x i1> %i.xs, %i.xu
  %i.xx = or <8 x i1> %i.xt, %i.xv
  %i.xy = or <8 x i1> %vec.phi, %i.xw             ; 2 uses
  %i.xz = or <8 x i1> %vec.phi44, %i.xx           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ya = icmp eq i64 %index.next, %n.vec
  br i1 %i.ya, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.xz, %i.xy
  %i.yb = bitcast <8 x i1> %bin.rdx to i8
  %i.yc = icmp ne i8 %i.yb, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.xm, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader, label %vec.epilog.ph, !prof !588

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.yc, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %n.mod.vf46 = and i64 %i.xk, 3
  %n.vec47 = sub nsw i64 %i.xm, %n.mod.vf46       ; 2 uses
  %i.yd = add nsw i64 %.082.lcssa.i, %n.vec47
  %i.ye = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.yf = getelementptr [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi53 = phi <4 x i1> [ %i.ye, %vec.epilog.ph ], [ %i.yk, %vec.epilog.vector.body ]
  %i.yg = getelementptr [2 x i8], ptr %i.yf, i64 %index52
  %wide.load54 = load <4 x i16>, ptr %i.yg, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.yh = icmp slt <4 x i16> %wide.load54, %broadcast.splat49
  %i.yi = icmp sgt <4 x i16> %wide.load54, %broadcast.splat51
  %i.yj = or <4 x i1> %i.yh, %i.yi
  %i.yk = or <4 x i1> %vec.phi53, %i.yj           ; 2 uses
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.yl = icmp eq i64 %index.next55, %n.vec47
  br i1 %i.yl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !591

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ym = bitcast <4 x i1> %i.yk to i4
  %i.yn = icmp ne i4 %i.ym, 0                     ; 2 uses
  %i.yo = and i16 %.sroa.0.0.extract.trunc.i, 3
  %cmp.n56 = icmp eq i16 %i.yo, 0
  br i1 %cmp.n56, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.xn, %vec.epilog.iter.check ], [ %i.yd, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.yc, %vec.epilog.iter.check ], [ %i.yn, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv190.i = phi i64 [ %i.yx, %.preheader.i ], [ %indvars.iv190.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.081158.i = phi i64 [ %i.yw, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %indvars.iv190.i, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ]
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082157.i
  %i.yq = load <8 x i16>, ptr %i.yp, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.yr = icmp slt <8 x i16> %i.yq, %i.t
  %i.ys = icmp sgt <8 x i16> %i.yq, %i.v
  %i.yt = shufflevector <8 x i1> %i.ys, <8 x i1> %i.yr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yu = bitcast <16 x i1> %i.yt to i16
  %i.yv = icmp ne i16 %i.yu, 0
  %op.rdx = or i1 %i.yv, %.085156.i               ; 2 uses
  %i.yw = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %i.yx = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.yw, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !592

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i
  %.284162.i = phi i64 [ %i.zd, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.zc, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader ]
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.284162.i
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.za = icmp slt i16 %i.yz, %.42.val
  %i.zb = icmp sgt i16 %i.yz, %.42.val1
  %spec.select128.i = or i1 %i.za, %i.zb
  %i.zc = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.zd = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.zd, %i.xk
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i, !llvm.loop !593

bb.d:                                             ; preds = %.lr.ph176.i
  %i.ze = icmp sgt i32 %i.x, 0
  br i1 %i.ze, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.zf = icmp sgt i32 %i.y, 7
  br i1 %i.zf, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.zg = lshr i32 %i.y, 3
  %i.zh = trunc i64 %.092169.i to i3              ; 7 uses
  %i.zi = trunc i64 %.092169.i to i8
  %i.zj = and i8 %i.zi, 7
  %i.zk = add i3 %i.zh, 1
  %i.zl = zext i3 %i.zk to i8
  %i.zm = add i3 %i.zh, 2
  %i.zn = zext i3 %i.zm to i8
  %i.zo = add i3 %i.zh, 3
  %i.zp = zext i3 %i.zo to i8
  %i.zq = xor i3 %i.zh, -4
  %i.zr = zext i3 %i.zq to i8
  %i.zs = add i3 %i.zh, -3
  %i.zt = zext i3 %i.zs to i8
  %i.zu = add i3 %i.zh, -2
  %i.zv = zext i3 %i.zu to i8
  %i.zw = add i3 %i.zh, -1
  %i.zx = zext i3 %i.zw to i8
  %smax.i = zext nneg i32 %i.zg to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.zy = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx99, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.zy, %.preheader139.loopexit.i ] ; 6 uses
  %i.zz = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.aaa = icmp slt i64 %.076.lcssa.i, %i.zz
  br i1 %i.aaa, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.aab = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.aab, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.aae = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.aaf = lshr i64 %i.aae, 3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !7, !noalias !581
  %i.aai = trunc i64 %.092169.i to i8
  %i.aaj = and i8 %i.aai, 7
  %i.aak = lshr i8 %i.aah, %i.aaj
  %i.aal = trunc i8 %i.aak to i1
  %i.aam = icmp slt i16 %i.aad, %.42.val
  %i.aan = icmp sgt i16 %i.aad, %.42.val1
  %spec.select130.i.prol = or i1 %i.aam, %i.aan
  %i.aao = select i1 %i.aal, i1 %spec.select130.i.prol, i1 false
  %i.aap = or i1 %.3.lcssa.i, %i.aao              ; 2 uses
  %i.aaq = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader ], [ %i.aap, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader ], [ %i.aaq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader ], [ %i.aap, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol ]
  %i.aar = add nsw i64 %i.zz, -1
  %i.aas = icmp eq i64 %.076.lcssa.i, %i.aar
  br i1 %i.aas, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.adn, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.adm, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %op.rdx99, %.preheader133.i ]
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076147.i
  %i.aau = add nsw i64 %.076147.i, %.092169.i
  %i.aav = lshr i64 %i.aau, 3
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !7, !noalias !581
  %i.aay = or disjoint i64 %.076147.i, 1
  %i.aaz = add nsw i64 %i.aay, %.092169.i
  %i.aba = lshr i64 %i.aaz, 3
  %i.abb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aba
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !7, !noalias !581
  %i.abd = or disjoint i64 %.076147.i, 2
  %i.abe = add nsw i64 %i.abd, %.092169.i
  %i.abf = lshr i64 %i.abe, 3
  %i.abg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !7, !noalias !581
  %i.abi = or disjoint i64 %.076147.i, 3
  %i.abj = add nsw i64 %i.abi, %.092169.i
  %i.abk = lshr i64 %i.abj, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !7, !noalias !581
  %i.abn = or disjoint i64 %.076147.i, 4
  %i.abo = add nsw i64 %i.abn, %.092169.i
  %i.abp = lshr i64 %i.abo, 3
  %i.abq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !7, !noalias !581
  %i.abs = or disjoint i64 %.076147.i, 5
  %i.abt = add nsw i64 %i.abs, %.092169.i
  %i.abu = lshr i64 %i.abt, 3
  %i.abv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !7, !noalias !581
  %i.abx = or disjoint i64 %.076147.i, 6
  %i.aby = add nsw i64 %i.abx, %.092169.i
  %i.abz = lshr i64 %i.aby, 3
  %i.aca = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abz
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !7, !noalias !581
  %i.acc = or disjoint i64 %.076147.i, 7
  %i.acd = add nsw i64 %i.acc, %.092169.i
  %i.ace = lshr i64 %i.acd, 3
  %i.acf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !7, !noalias !581
  %i.ach = load <8 x i16>, ptr %i.aat, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.aci = lshr i8 %i.acg, %i.zx
  %i.acj = lshr i8 %i.acb, %i.zv
  %i.ack = lshr i8 %i.abw, %i.zt
  %i.acl = lshr i8 %i.abr, %i.zr
  %i.acm = lshr i8 %i.abm, %i.zp
  %i.acn = lshr i8 %i.abh, %i.zn
  %i.aco = lshr i8 %i.abc, %i.zl
  %i.acp = lshr i8 %i.aax, %i.zj
  %i.acq = trunc i8 %i.aci to i1
  %i.acr = trunc i8 %i.acj to i1
  %i.acs = trunc i8 %i.ack to i1
  %i.act = trunc i8 %i.acl to i1
  %i.acu = trunc i8 %i.acm to i1
  %i.acv = trunc i8 %i.acn to i1
  %i.acw = trunc i8 %i.aco to i1
  %i.acx = trunc i8 %i.acp to i1
  %i.acy = icmp slt <8 x i16> %i.ach, %i.p
  %i.acz = icmp sgt <8 x i16> %i.ach, %i.r
  %i.ada = or <8 x i1> %i.acy, %i.acz
  %i.adb = insertelement <8 x i1> poison, i1 %i.acx, i64 0
  %i.adc = insertelement <8 x i1> %i.adb, i1 %i.acw, i64 1
  %i.add = insertelement <8 x i1> %i.adc, i1 %i.acv, i64 2
  %i.ade = insertelement <8 x i1> %i.add, i1 %i.acu, i64 3
  %i.adf = insertelement <8 x i1> %i.ade, i1 %i.act, i64 4
  %i.adg = insertelement <8 x i1> %i.adf, i1 %i.acs, i64 5
  %i.adh = insertelement <8 x i1> %i.adg, i1 %i.acr, i64 6
  %i.adi = insertelement <8 x i1> %i.adh, i1 %i.acq, i64 7
  %i.adj = select <8 x i1> %i.adi, <8 x i1> %i.ada, <8 x i1> zeroinitializer
  %i.adk = bitcast <8 x i1> %i.adj to i8
  %i.adl = icmp ne i8 %i.adk, 0
  %op.rdx99 = or i1 %i.adl, %.3146.i              ; 2 uses
  %i.adm = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %i.adn = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.adm, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !594

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i
  %.2151.i = phi i64 [ %i.aer, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.aeq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit ]
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.2151.i
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.adq = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.adr = lshr i64 %i.adq, 3
  %i.ads = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.adr
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !7, !noalias !581
  %i.adu = trunc i64 %i.adq to i8
  %i.adv = and i8 %i.adu, 7
  %i.adw = lshr i8 %i.adt, %i.adv
  %i.adx = trunc i8 %i.adw to i1
  %i.ady = icmp slt i16 %i.adp, %.42.val
  %i.adz = icmp sgt i16 %i.adp, %.42.val1
  %spec.select130.i = or i1 %i.ady, %i.adz
  %i.aea = select i1 %i.adx, i1 %spec.select130.i, i1 false
  %i.aeb = or i1 %.5150.i, %i.aea
  %i.aec = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.aec
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !16, !noalias !581 ; 2 uses
  %i.aef = add nsw i64 %i.aec, %.092169.i         ; 2 uses
  %i.aeg = lshr i64 %i.aef, 3
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !7, !noalias !581
  %i.aej = trunc i64 %i.aef to i8
  %i.aek = and i8 %i.aej, 7
  %i.ael = lshr i8 %i.aei, %i.aek
  %i.aem = trunc i8 %i.ael to i1
  %i.aen = icmp slt i16 %i.aee, %.42.val
  %i.aeo = icmp sgt i16 %i.aee, %.42.val1
  %spec.select130.i.1 = or i1 %i.aen, %i.aeo
  %i.aep = select i1 %i.aem, i1 %spec.select130.i.1, i1 false
  %i.aeq = or i1 %i.aeb, %i.aep                   ; 2 uses
  %i.aer = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.aer, %i.zz
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i, !llvm.loop !595

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.zc, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.yn, %vec.epilog.middle.block ], [ %i.yc, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit ], [ %i.aeq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.aes = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !581
  %i.aet = icmp sgt i64 %i.aes, 0
  %i.aeu = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.aet, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.afh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.aev = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.aew = lshr i64 %i.aev, 3
  %i.aex = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !7, !noalias !581
  %i.aez = trunc i64 %i.aev to i8
  %i.afa = and i8 %i.aez, 7
  %i.afb = lshr i8 %i.aey, %i.afa
  %i.afc = trunc i8 %i.afb to i1
  br i1 %i.afc, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.073167.i
  %i.afe = load i16, ptr %i.afd, align 2, !tbaa !16, !noalias !581 ; 3 uses
  %i.aff = icmp slt i16 %i.afe, %.42.val
  %i.afg = icmp sgt i16 %i.afe, %.42.val1
  %or.cond131.i = or i1 %i.aff, %i.afg
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE0_clEs(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef signext %i.afe)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.afh = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.afh, %i.aeu
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !596

bb.g:                                             ; preds = %.lr.ph.i
  %i.afi = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.afi, %i.aeu
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !597

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.afi, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.0165.i
  %i.afk = load i16, ptr %i.afj, align 2, !tbaa !16, !noalias !581 ; 3 uses
  %i.afl = icmp slt i16 %i.afk, %.42.val
  %i.afm = icmp sgt i16 %i.afk, %.42.val1
  %or.cond132.i = or i1 %i.afl, %i.afm
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE0_clEs(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef signext %i.afk)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.afn = sext i32 %i.y to i64
  %i.afo = getelementptr inbounds [2 x i8], ptr %.088173.i, i64 %i.afn
  %i.afp = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.afq = add nsw i64 %.090172.i, %i.afp         ; 2 uses
  %i.afr = add nsw i64 %.092169.i, %i.afp
  %i.afs = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !581
  %i.aft = icmp slt i64 %i.afq, %i.afs
  br i1 %i.aft, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !598

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !599
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !581
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 %.44.val, i32 %.44.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.44.val, ptr %i.a, align 4, !tbaa !3, !noalias !602
  store i32 %.44.val1, ptr %i.b, align 4, !tbaa !3, !noalias !602
  %.not.i = icmp ne i32 %.44.val, -2147483648
  %.not97.i = icmp ne i32 %.44.val1, 2147483647
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !605
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !602 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !602
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !602 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !602
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !602
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !602
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !602
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !602
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i32> poison, i32 %.44.val, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i32> poison, i32 %.44.val1, i64 0
  %i.r = shufflevector <8 x i32> %i.q, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %.44.val, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %.44.val1, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.s = insertelement <8 x i32> poison, i32 %.44.val, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i32> poison, i32 %.44.val1, i64 0
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.44.val, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %.44.val1, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.se, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 18 uses
  %.090172.i = phi i64 [ %i.sg, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.sh, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !602 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 5 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 4 uses
  %min.iters.check46 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check46, label %.preheader.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.preheader.preheader.i
  %n.vec49 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ac = shl nuw nsw i64 %n.vec49, 3             ; 2 uses
  %3 = or disjoint i64 %i.ac, 8
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph47
  %index55 = phi i64 [ 0, %vector.ph47 ], [ %index.next58, %vector.body54 ] ; 2 uses
  %vec.phi56 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kf, %vector.body54 ]
  %vec.phi57 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kg, %vector.body54 ]
  %i.ad = shl i64 %index55, 3                     ; 8 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !602
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !602
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !602
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !602
  %i.ax = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 2
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 3 ; 2 uses
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !602
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !602
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !602
  %i.be = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !602
  %i.bf = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 3 ; 2 uses
  %i.bj = icmp slt <4 x i32> %i.ba, %broadcast.splat51
  %i.bk = icmp slt <4 x i32> %i.bi, %broadcast.splat51
  %i.bl = icmp sgt <4 x i32> %i.ba, %broadcast.splat53
  %i.bm = icmp sgt <4 x i32> %i.bi, %broadcast.splat53
  %i.bn = or <4 x i1> %i.bj, %i.bl
  %i.bo = or <4 x i1> %i.bk, %i.bm
  %i.bp = or <4 x i1> %vec.phi56, %i.bn
  %i.bq = or <4 x i1> %vec.phi57, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 164
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 196
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 228
  %i.bz = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !602
  %i.ca = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !602
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !602
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !602
  %i.cd = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.ca, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cb, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 3 ; 2 uses
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !602
  %i.ci = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !602
  %i.cj = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !602
  %i.ck = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !602
  %i.cl = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 1
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 2
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 3 ; 2 uses
  %i.cp = icmp slt <4 x i32> %i.cg, %broadcast.splat51
  %i.cq = icmp slt <4 x i32> %i.co, %broadcast.splat51
  %i.cr = icmp sgt <4 x i32> %i.cg, %broadcast.splat53
  %i.cs = icmp sgt <4 x i32> %i.co, %broadcast.splat53
  %i.ct = or <4 x i1> %i.cp, %i.cr
  %i.cu = or <4 x i1> %i.cq, %i.cs
  %i.cv = or <4 x i1> %i.bp, %i.ct
  %i.cw = or <4 x i1> %i.bq, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.df = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !602
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !602
  %i.dh = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !602
  %i.di = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !602
  %i.dj = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dg, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.dh, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 3 ; 2 uses
  %i.dn = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !602
  %i.do = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !602
  %i.dp = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !602
  %i.dq = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !602
  %i.dr = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 1
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 2
  %i.du = insertelement <4 x i32> %i.dt, i32 %i.dq, i64 3 ; 2 uses
  %i.dv = icmp slt <4 x i32> %i.dm, %broadcast.splat51
  %i.dw = icmp slt <4 x i32> %i.du, %broadcast.splat51
  %i.dx = icmp sgt <4 x i32> %i.dm, %broadcast.splat53
  %i.dy = icmp sgt <4 x i32> %i.du, %broadcast.splat53
  %i.dz = or <4 x i1> %i.dv, %i.dx
  %i.ea = or <4 x i1> %i.dw, %i.dy
  %i.eb = or <4 x i1> %i.cv, %i.dz
  %i.ec = or <4 x i1> %i.cw, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ah, i64 76
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aj, i64 108
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 140
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 172
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ap, i64 204
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ar, i64 236
  %i.el = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !602
  %i.em = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !602
  %i.en = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !602
  %i.eo = load i32, ptr %i.eg, align 4, !tbaa !3, !noalias !602
  %i.ep = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = insertelement <4 x i32> %i.eq, i32 %i.en, i64 2
  %i.es = insertelement <4 x i32> %i.er, i32 %i.eo, i64 3 ; 2 uses
  %i.et = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !602
  %i.eu = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !602
  %i.ev = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !602
  %i.ew = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !602
  %i.ex = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3 ; 2 uses
  %i.fb = icmp slt <4 x i32> %i.es, %broadcast.splat51
  %i.fc = icmp slt <4 x i32> %i.fa, %broadcast.splat51
  %i.fd = icmp sgt <4 x i32> %i.es, %broadcast.splat53
  %i.fe = icmp sgt <4 x i32> %i.fa, %broadcast.splat53
  %i.ff = or <4 x i1> %i.fb, %i.fd
  %i.fg = or <4 x i1> %i.fc, %i.fe
  %i.fh = or <4 x i1> %i.eb, %i.ff
  %i.fi = or <4 x i1> %i.ec, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !602
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !602
  %i.ft = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !602
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !602
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3 ; 2 uses
  %i.fz = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !602
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !602
  %i.gb = load i32, ptr %i.fp, align 4, !tbaa !3, !noalias !602
  %i.gc = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !602
  %i.gd = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ga, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.gb, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 3 ; 2 uses
  %i.gh = icmp slt <4 x i32> %i.fy, %broadcast.splat51
  %i.gi = icmp slt <4 x i32> %i.gg, %broadcast.splat51
  %i.gj = icmp sgt <4 x i32> %i.fy, %broadcast.splat53
  %i.gk = icmp sgt <4 x i32> %i.gg, %broadcast.splat53
  %i.gl = or <4 x i1> %i.gh, %i.gj
  %i.gm = or <4 x i1> %i.gi, %i.gk
  %i.gn = or <4 x i1> %i.fh, %i.gl
  %i.go = or <4 x i1> %i.fi, %i.gm
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aj, i64 116
  %i.gt = getelementptr inbounds nuw i8, ptr %i.al, i64 148
  %i.gu = getelementptr inbounds nuw i8, ptr %i.an, i64 180
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ap, i64 212
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ar, i64 244
  %i.gx = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !602
  %i.gy = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !602
  %i.gz = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !602
  %i.ha = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !602
  %i.hb = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 1
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 2
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 3 ; 2 uses
  %i.hf = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !602
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !602
  %i.hh = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !602
  %i.hi = load i32, ptr %i.gw, align 4, !tbaa !3, !noalias !602
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3 ; 2 uses
  %i.hn = icmp slt <4 x i32> %i.he, %broadcast.splat51
  %i.ho = icmp slt <4 x i32> %i.hm, %broadcast.splat51
  %i.hp = icmp sgt <4 x i32> %i.he, %broadcast.splat53
  %i.hq = icmp sgt <4 x i32> %i.hm, %broadcast.splat53
  %i.hr = or <4 x i1> %i.hn, %i.hp
  %i.hs = or <4 x i1> %i.ho, %i.hq
  %i.ht = or <4 x i1> %i.gn, %i.hr
  %i.hu = or <4 x i1> %i.go, %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.hz = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ia = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ar, i64 248
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !602
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !602
  %i.if = load i32, ptr %i.hx, align 4, !tbaa !3, !noalias !602
  %i.ig = load i32, ptr %i.hy, align 4, !tbaa !3, !noalias !602
  %i.ih = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 1
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 2
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.ig, i64 3 ; 2 uses
  %i.il = load i32, ptr %i.hz, align 4, !tbaa !3, !noalias !602
  %i.im = load i32, ptr %i.ia, align 4, !tbaa !3, !noalias !602
  %i.in = load i32, ptr %i.ib, align 4, !tbaa !3, !noalias !602
  %i.io = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !602
  %i.ip = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.im, i64 1
  %i.ir = insertelement <4 x i32> %i.iq, i32 %i.in, i64 2
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.io, i64 3 ; 2 uses
  %i.it = icmp slt <4 x i32> %i.ik, %broadcast.splat51
  %i.iu = icmp slt <4 x i32> %i.is, %broadcast.splat51
  %i.iv = icmp sgt <4 x i32> %i.ik, %broadcast.splat53
  %i.iw = icmp sgt <4 x i32> %i.is, %broadcast.splat53
  %i.ix = or <4 x i1> %i.it, %i.iv
  %i.iy = or <4 x i1> %i.iu, %i.iw
  %i.iz = or <4 x i1> %i.ht, %i.ix
  %i.ja = or <4 x i1> %i.hu, %i.iy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.jc = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  %i.je = getelementptr inbounds nuw i8, ptr %i.aj, i64 124
  %i.jf = getelementptr inbounds nuw i8, ptr %i.al, i64 156
  %i.jg = getelementptr inbounds nuw i8, ptr %i.an, i64 188
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ap, i64 220
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ar, i64 252
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !3, !noalias !602
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !3, !noalias !602
  %i.jl = load i32, ptr %i.jd, align 4, !tbaa !3, !noalias !602
  %i.jm = load i32, ptr %i.je, align 4, !tbaa !3, !noalias !602
  %i.jn = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 1
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 2
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jm, i64 3 ; 2 uses
  %i.jr = load i32, ptr %i.jf, align 4, !tbaa !3, !noalias !602
  %i.js = load i32, ptr %i.jg, align 4, !tbaa !3, !noalias !602
  %i.jt = load i32, ptr %i.jh, align 4, !tbaa !3, !noalias !602
  %i.ju = load i32, ptr %i.ji, align 4, !tbaa !3, !noalias !602
  %i.jv = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 1
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.jt, i64 2
  %i.jy = insertelement <4 x i32> %i.jx, i32 %i.ju, i64 3 ; 2 uses
  %i.jz = icmp slt <4 x i32> %i.jq, %broadcast.splat51
  %i.ka = icmp slt <4 x i32> %i.jy, %broadcast.splat51
  %i.kb = icmp sgt <4 x i32> %i.jq, %broadcast.splat53
  %i.kc = icmp sgt <4 x i32> %i.jy, %broadcast.splat53
  %i.kd = or <4 x i1> %i.jz, %i.kb
  %i.ke = or <4 x i1> %i.ka, %i.kc
  %i.kf = or <4 x i1> %i.iz, %i.kd                ; 2 uses
  %i.kg = or <4 x i1> %i.ja, %i.ke                ; 2 uses
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.kh = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.kh, label %middle.block59, label %vector.body54, !llvm.loop !608

middle.block59:                                   ; preds = %vector.body54
  %bin.rdx60 = or <4 x i1> %i.kg, %i.kf
  %i.ki = bitcast <4 x i1> %bin.rdx60 to i4
  %i.kj = icmp ne i4 %i.ki, 0                     ; 2 uses
  %cmp.n61 = icmp eq i64 %n.vec49, %smax189.i
  br i1 %cmp.n61, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block59
  %indvars.iv190.i.ph = phi i64 [ 8, %.preheader.preheader.i ], [ %3, %middle.block59 ]
  %.081158.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec49, %middle.block59 ]
  %.082157.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %i.ac, %middle.block59 ]
  %.085156.i.ph = phi i1 [ false, %.preheader.preheader.i ], [ %i.kj, %middle.block59 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %middle.block59
  %.lcssa36 = phi i1 [ %i.kj, %middle.block59 ], [ %op.rdx, %.preheader.i ]
  %i.kk = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.kk, %.preheader137.loopexit.i ] ; 5 uses
  %i.kl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.km = icmp slt i64 %.082.lcssa.i, %i.kl
  br i1 %i.km, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader: ; preds = %.preheader137.i
  %i.kn = sub nsw i64 %i.kl, %.082.lcssa.i        ; 2 uses
  %min.iters.check = icmp ult i64 %i.kn, 8
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader
  %n.mod.vf = and i64 %i.kl, 7
  %n.vec = sub nuw nsw i64 %i.kn, %n.mod.vf       ; 2 uses
  %i.ko = add nsw i64 %.082.lcssa.i, %n.vec
  %i.kp = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.kq = getelementptr [4 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.kp, %vector.ph ], [ %i.kz, %vector.body ]
  %vec.phi43 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.la, %vector.body ]
  %i.kr = getelementptr [4 x i8], ptr %i.kq, i64 %index ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load = load <4 x i32>, ptr %i.kr, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %wide.load44 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.kt = icmp slt <4 x i32> %wide.load, %broadcast.splat
  %i.ku = icmp slt <4 x i32> %wide.load44, %broadcast.splat
  %i.kv = icmp sgt <4 x i32> %wide.load, %broadcast.splat42
  %i.kw = icmp sgt <4 x i32> %wide.load44, %broadcast.splat42
  %i.kx = or <4 x i1> %i.kt, %i.kv
  %i.ky = or <4 x i1> %i.ku, %i.kw
  %i.kz = or <4 x i1> %vec.phi, %i.kx             ; 2 uses
  %i.la = or <4 x i1> %vec.phi43, %i.ky           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !609

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.la, %i.kz
  %i.lc = bitcast <4 x i1> %bin.rdx to i4
  %i.ld = icmp ne i4 %i.lc, 0                     ; 2 uses
  %i.le = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n = icmp eq i16 %i.le, 0
  br i1 %cmp.n, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader67

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader67: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader, %middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader ], [ %i.ko, %middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader ], [ %i.ld, %middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv190.i = phi i64 [ %i.ln, %.preheader.i ], [ %indvars.iv190.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.081158.i = phi i64 [ %i.lm, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %indvars.iv190.i, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ]
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.082157.i
  %i.lg = load <8 x i32>, ptr %i.lf, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.lh = icmp slt <8 x i32> %i.lg, %i.t
  %i.li = icmp sgt <8 x i32> %i.lg, %i.v
  %i.lj = shufflevector <8 x i1> %i.li, <8 x i1> %i.lh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lk = bitcast <16 x i1> %i.lj to i16
  %i.ll = icmp ne i16 %i.lk, 0
  %op.rdx = or i1 %i.ll, %.085156.i               ; 2 uses
  %i.lm = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %i.ln = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.lm, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !610

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader67, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i
  %.284162.i = phi i64 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader67 ] ; 2 uses
  %.287161.i = phi i1 [ %i.ls, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader67 ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.284162.i
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.lq = icmp slt i32 %i.lp, %.44.val
  %i.lr = icmp sgt i32 %i.lp, %.44.val1
  %spec.select128.i = or i1 %i.lq, %i.lr
  %i.ls = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.lt = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.lt, %i.kl
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i, !llvm.loop !611

bb.d:                                             ; preds = %.lr.ph176.i
  %i.lu = icmp sgt i32 %i.x, 0
  br i1 %i.lu, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.lv = icmp sgt i32 %i.y, 7
  br i1 %i.lv, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.lw = lshr i32 %i.y, 3
  %i.lx = trunc i64 %.092169.i to i3              ; 7 uses
  %i.ly = trunc i64 %.092169.i to i8
  %i.lz = and i8 %i.ly, 7
  %i.ma = add i3 %i.lx, 1
  %i.mb = zext i3 %i.ma to i8
  %i.mc = add i3 %i.lx, 2
  %i.md = zext i3 %i.mc to i8
  %i.me = add i3 %i.lx, 3
  %i.mf = zext i3 %i.me to i8
  %i.mg = xor i3 %i.lx, -4
  %i.mh = zext i3 %i.mg to i8
  %i.mi = add i3 %i.lx, -3
  %i.mj = zext i3 %i.mi to i8
  %i.mk = add i3 %i.lx, -2
  %i.ml = zext i3 %i.mk to i8
  %i.mm = add i3 %i.lx, -1
  %i.mn = zext i3 %i.mm to i8
  %smax.i = zext nneg i32 %i.lw to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.mo = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx65, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.mo, %.preheader139.loopexit.i ] ; 6 uses
  %i.mp = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.mq = icmp slt i64 %.076.lcssa.i, %i.mp
  br i1 %i.mq, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader: ; preds = %.preheader139.i
  %i.mr = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.mr, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.mu = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.mv = lshr i64 %i.mu, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !7, !noalias !602
  %i.my = trunc i64 %.092169.i to i8
  %i.mz = and i8 %i.my, 7
  %i.na = lshr i8 %i.mx, %i.mz
  %i.nb = trunc i8 %i.na to i1
  %i.nc = icmp slt i32 %i.mt, %.44.val
  %i.nd = icmp sgt i32 %i.mt, %.44.val1
  %spec.select130.i.prol = or i1 %i.nc, %i.nd
  %i.ne = select i1 %i.nb, i1 %spec.select130.i.prol, i1 false
  %i.nf = or i1 %.3.lcssa.i, %i.ne                ; 2 uses
  %i.ng = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader ], [ %i.nf, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader ], [ %i.ng, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader ], [ %i.nf, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol ]
  %i.nh = add nsw i64 %i.mp, -1
  %i.ni = icmp eq i64 %.076.lcssa.i, %i.nh
  br i1 %i.ni, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.qd, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.qc, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %op.rdx65, %.preheader133.i ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076147.i
  %i.nk = add nsw i64 %.076147.i, %.092169.i
  %i.nl = lshr i64 %i.nk, 3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !7, !noalias !602
  %i.no = or disjoint i64 %.076147.i, 1
  %i.np = add nsw i64 %i.no, %.092169.i
  %i.nq = lshr i64 %i.np, 3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !7, !noalias !602
  %i.nt = or disjoint i64 %.076147.i, 2
  %i.nu = add nsw i64 %i.nt, %.092169.i
  %i.nv = lshr i64 %i.nu, 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !7, !noalias !602
  %i.ny = or disjoint i64 %.076147.i, 3
  %i.nz = add nsw i64 %i.ny, %.092169.i
  %i.oa = lshr i64 %i.nz, 3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !7, !noalias !602
  %i.od = or disjoint i64 %.076147.i, 4
  %i.oe = add nsw i64 %i.od, %.092169.i
  %i.of = lshr i64 %i.oe, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !7, !noalias !602
  %i.oi = or disjoint i64 %.076147.i, 5
  %i.oj = add nsw i64 %i.oi, %.092169.i
  %i.ok = lshr i64 %i.oj, 3
  %i.ol = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !7, !noalias !602
  %i.on = or disjoint i64 %.076147.i, 6
  %i.oo = add nsw i64 %i.on, %.092169.i
  %i.op = lshr i64 %i.oo, 3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !7, !noalias !602
  %i.os = or disjoint i64 %.076147.i, 7
  %i.ot = add nsw i64 %i.os, %.092169.i
  %i.ou = lshr i64 %i.ot, 3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !7, !noalias !602
  %i.ox = load <8 x i32>, ptr %i.nj, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.oy = lshr i8 %i.ow, %i.mn
  %i.oz = lshr i8 %i.or, %i.ml
  %i.pa = lshr i8 %i.om, %i.mj
  %i.pb = lshr i8 %i.oh, %i.mh
  %i.pc = lshr i8 %i.oc, %i.mf
  %i.pd = lshr i8 %i.nx, %i.md
  %i.pe = lshr i8 %i.ns, %i.mb
  %i.pf = lshr i8 %i.nn, %i.lz
  %i.pg = trunc i8 %i.oy to i1
  %i.ph = trunc i8 %i.oz to i1
  %i.pi = trunc i8 %i.pa to i1
  %i.pj = trunc i8 %i.pb to i1
  %i.pk = trunc i8 %i.pc to i1
  %i.pl = trunc i8 %i.pd to i1
  %i.pm = trunc i8 %i.pe to i1
  %i.pn = trunc i8 %i.pf to i1
  %i.po = icmp slt <8 x i32> %i.ox, %i.p
  %i.pp = icmp sgt <8 x i32> %i.ox, %i.r
  %i.pq = or <8 x i1> %i.po, %i.pp
  %i.pr = insertelement <8 x i1> poison, i1 %i.pn, i64 0
  %i.ps = insertelement <8 x i1> %i.pr, i1 %i.pm, i64 1
  %i.pt = insertelement <8 x i1> %i.ps, i1 %i.pl, i64 2
  %i.pu = insertelement <8 x i1> %i.pt, i1 %i.pk, i64 3
  %i.pv = insertelement <8 x i1> %i.pu, i1 %i.pj, i64 4
  %i.pw = insertelement <8 x i1> %i.pv, i1 %i.pi, i64 5
  %i.px = insertelement <8 x i1> %i.pw, i1 %i.ph, i64 6
  %i.py = insertelement <8 x i1> %i.px, i1 %i.pg, i64 7
  %i.pz = select <8 x i1> %i.py, <8 x i1> %i.pq, <8 x i1> zeroinitializer
  %i.qa = bitcast <8 x i1> %i.pz to i8
  %i.qb = icmp ne i8 %i.qa, 0
  %op.rdx65 = or i1 %i.qb, %.3146.i               ; 2 uses
  %i.qc = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %i.qd = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.qc, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !612

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i
  %.2151.i = phi i64 [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.rg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.2151.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.qg = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.qh = lshr i64 %i.qg, 3
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !7, !noalias !602
  %i.qk = trunc i64 %i.qg to i8
  %i.ql = and i8 %i.qk, 7
  %i.qm = lshr i8 %i.qj, %i.ql
  %i.qn = trunc i8 %i.qm to i1
  %i.qo = icmp slt i32 %i.qf, %.44.val
  %i.qp = icmp sgt i32 %i.qf, %.44.val1
  %spec.select130.i = or i1 %i.qo, %i.qp
  %i.qq = select i1 %i.qn, i1 %spec.select130.i, i1 false
  %i.qr = or i1 %.5150.i, %i.qq
  %i.qs = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3, !noalias !602 ; 2 uses
  %i.qv = add nsw i64 %i.qs, %.092169.i           ; 2 uses
  %i.qw = lshr i64 %i.qv, 3
  %i.qx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !7, !noalias !602
  %i.qz = trunc i64 %i.qv to i8
  %i.ra = and i8 %i.qz, 7
  %i.rb = lshr i8 %i.qy, %i.ra
  %i.rc = trunc i8 %i.rb to i1
  %i.rd = icmp slt i32 %i.qu, %.44.val
  %i.re = icmp sgt i32 %i.qu, %.44.val1
  %spec.select130.i.1 = or i1 %i.rd, %i.re
  %i.rf = select i1 %i.rc, i1 %spec.select130.i.1, i1 false
  %i.rg = or i1 %i.qr, %i.rf                      ; 2 uses
  %i.rh = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.rh, %i.mp
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i, !llvm.loop !613

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.ls, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.ld, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ], [ %i.rg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.ri = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !602
  %i.rj = icmp sgt i64 %i.ri, 0
  %i.rk = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.rj, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i
  %.073167.i = phi i64 [ %i.rx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.rl = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.rm = lshr i64 %i.rl, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !7, !noalias !602
  %i.rp = trunc i64 %i.rl to i8
  %i.rq = and i8 %i.rp, 7
  %i.rr = lshr i8 %i.ro, %i.rq
  %i.rs = trunc i8 %i.rr to i1
  br i1 %i.rs, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.073167.i
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !3, !noalias !602 ; 3 uses
  %i.rv = icmp slt i32 %i.ru, %.44.val
  %i.rw = icmp sgt i32 %i.ru, %.44.val1
  %or.cond131.i = or i1 %i.rv, %i.rw
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.ru)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.rx = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.rx, %i.rk
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !614

bb.g:                                             ; preds = %.lr.ph.i
  %i.ry = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ry, %i.rk
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !615

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ry, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.0165.i
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !3, !noalias !602 ; 3 uses
  %i.sb = icmp slt i32 %i.sa, %.44.val
  %i.sc = icmp sgt i32 %i.sa, %.44.val1
  %or.cond132.i = or i1 %i.sb, %i.sc
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.sa)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.sd = sext i32 %i.y to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %.088173.i, i64 %i.sd
  %i.sf = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.sg = add nsw i64 %.090172.i, %i.sf           ; 2 uses
  %i.sh = add nsw i64 %.092169.i, %i.sf
  %i.si = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !602
  %i.sj = icmp slt i64 %i.sg, %i.si
  br i1 %i.sj, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !616

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !617
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !602
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.48.val, i64 %.48.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.48.val, ptr %i.a, align 8, !tbaa !30, !noalias !620
  store i64 %.48.val1, ptr %i.b, align 8, !tbaa !30, !noalias !620
  %.not.i = icmp ne i64 %.48.val, -9223372036854775808
  %.not97.i = icmp ne i64 %.48.val1, 9223372036854775807
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !623
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !620 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !620
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !620 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !620
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !620
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !620
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !620
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !620
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.kv, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 20 uses
  %.090172.i = phi i64 [ %i.kx, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.ky, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.o = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !620 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.o to i16 ; 7 uses
  %i.p = ashr i32 %i.o, 16                        ; 4 uses
  %sext.i = shl i32 %i.o, 16
  %i.q = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.s = icmp sgt i32 %i.p, 7
  br i1 %i.s, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.t = lshr i32 %i.p, 3
  %smax189.i = zext nneg i32 %i.t to i64          ; 2 uses
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i
  %i.u = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %op.rdx, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.u, %.preheader137.loopexit.i ] ; 4 uses
  %i.v = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.w = icmp slt i64 %.082.lcssa.i, %i.v
  br i1 %i.w, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader: ; preds = %.preheader137.i
  %xtraiter48 = and i64 %i.v, 3
  %i.x = and i16 %.sroa.0.0.extract.trunc.i, 3
  %lcmp.mod49.not = icmp eq i16 %i.x, 0
  br i1 %lcmp.mod49.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol
  %.284162.i.prol = phi i64 [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ], [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ] ; 2 uses
  %.287161.i.prol = phi i1 [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ], [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ], [ 0, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.aa = icmp slt i64 %i.z, %.48.val
  %i.ab = icmp sgt i64 %i.z, %.48.val1
  %spec.select128.i.prol = or i1 %i.aa, %i.ab
  %i.ac = or i1 %.287161.i.prol, %spec.select128.i.prol ; 3 uses
  %i.ad = add nuw nsw i64 %.284162.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter48
  br i1 %prol.iter.cmp.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol, !llvm.loop !626

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader
  %.lcssa44.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ]
  %.284162.i.unr = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ]
  %.287161.i.unr = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol ]
  %i.ae = sub nsw i64 %.082.lcssa.i, %i.v
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv190.i = phi i64 [ 8, %.preheader.preheader.i ], [ %i.cg, %.preheader.i ] ; 2 uses
  %.081158.i = phi i64 [ 0, %.preheader.preheader.i ], [ %i.cf, %.preheader.i ]
  %.082157.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv190.i, %.preheader.i ]
  %.085156.i = phi i1 [ false, %.preheader.preheader.i ], [ %op.rdx, %.preheader.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.082157.i ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.aw = icmp slt i64 %i.ao, %.48.val
  %i.ax = icmp slt i64 %i.ap, %.48.val
  %i.ay = icmp slt i64 %i.aq, %.48.val
  %i.az = icmp slt i64 %i.ar, %.48.val
  %i.ba = icmp slt i64 %i.as, %.48.val
  %i.bb = icmp slt i64 %i.at, %.48.val
  %i.bc = icmp slt i64 %i.au, %.48.val
  %i.bd = icmp slt i64 %i.av, %.48.val
  %i.be = icmp sgt i64 %i.ao, %.48.val1
  %i.bf = icmp sgt i64 %i.ap, %.48.val1
  %i.bg = icmp sgt i64 %i.aq, %.48.val1
  %i.bh = icmp sgt i64 %i.ar, %.48.val1
  %i.bi = icmp sgt i64 %i.as, %.48.val1
  %i.bj = icmp sgt i64 %i.at, %.48.val1
  %i.bk = icmp sgt i64 %i.au, %.48.val1
  %i.bl = icmp sgt i64 %i.av, %.48.val1
  %i.bm = insertelement <8 x i1> poison, i1 %i.bl, i64 0
  %i.bn = insertelement <8 x i1> %i.bm, i1 %i.bk, i64 1
  %i.bo = insertelement <8 x i1> %i.bn, i1 %i.bj, i64 2
  %i.bp = insertelement <8 x i1> %i.bo, i1 %i.bi, i64 3
  %i.bq = insertelement <8 x i1> %i.bp, i1 %i.bh, i64 4
  %i.br = insertelement <8 x i1> %i.bq, i1 %i.bg, i64 5
  %i.bs = insertelement <8 x i1> %i.br, i1 %i.bf, i64 6
  %i.bt = insertelement <8 x i1> %i.bs, i1 %i.be, i64 7
  %i.bu = insertelement <8 x i1> poison, i1 %i.bd, i64 0
  %i.bv = insertelement <8 x i1> %i.bu, i1 %i.bc, i64 1
  %i.bw = insertelement <8 x i1> %i.bv, i1 %i.bb, i64 2
  %i.bx = insertelement <8 x i1> %i.bw, i1 %i.ba, i64 3
  %i.by = insertelement <8 x i1> %i.bx, i1 %i.az, i64 4
  %i.bz = insertelement <8 x i1> %i.by, i1 %i.ay, i64 5
  %i.ca = insertelement <8 x i1> %i.bz, i1 %i.ax, i64 6
  %i.cb = insertelement <8 x i1> %i.ca, i1 %i.aw, i64 7
  %i.cc = shufflevector <8 x i1> %i.bt, <8 x i1> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp ne i16 %i.cd, 0
  %op.rdx = or i1 %i.ce, %.085156.i               ; 2 uses
  %i.cf = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %i.cg = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.cf, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !627

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i
  %.284162.i = phi i64 [ %i.de, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.284162.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit ] ; 5 uses
  %.287161.i = phi i1 [ %i.dd, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.287161.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %.48.val
  %i.ck = icmp sgt i64 %i.ci, %.48.val1
  %spec.select128.i = or i1 %i.cj, %i.ck
  %i.cl = or i1 %.287161.i, %spec.select128.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.cp = icmp slt i64 %i.co, %.48.val
  %i.cq = icmp sgt i64 %i.co, %.48.val1
  %spec.select128.i.1 = or i1 %i.cp, %i.cq
  %i.cr = or i1 %i.cl, %spec.select128.i.1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %.48.val
  %i.cw = icmp sgt i64 %i.cu, %.48.val1
  %spec.select128.i.2 = or i1 %i.cv, %i.cw
  %i.cx = or i1 %i.cr, %spec.select128.i.2
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.db = icmp slt i64 %i.da, %.48.val
  %i.dc = icmp sgt i64 %i.da, %.48.val1
  %spec.select128.i.3 = or i1 %i.db, %i.dc
  %i.dd = or i1 %i.cx, %spec.select128.i.3        ; 2 uses
  %i.de = add nuw nsw i64 %.284162.i, 4           ; 2 uses
  %exitcond191.not.i.3 = icmp eq i64 %i.de, %i.v
  br i1 %exitcond191.not.i.3, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i, !llvm.loop !628

bb.d:                                             ; preds = %.lr.ph176.i
  %i.df = icmp sgt i32 %i.p, 0
  br i1 %i.df, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.dg = icmp sgt i32 %i.q, 7
  br i1 %i.dg, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.dh = lshr i32 %i.q, 3
  %i.di = trunc i64 %.092169.i to i3              ; 7 uses
  %i.dj = trunc i64 %.092169.i to i8
  %i.dk = and i8 %i.dj, 7
  %i.dl = add i3 %i.di, 1
  %i.dm = zext i3 %i.dl to i8
  %i.dn = add i3 %i.di, 2
  %i.do = zext i3 %i.dn to i8
  %i.dp = add i3 %i.di, 3
  %i.dq = zext i3 %i.dp to i8
  %i.dr = xor i3 %i.di, -4
  %i.ds = zext i3 %i.dr to i8
  %i.dt = add i3 %i.di, -3
  %i.du = zext i3 %i.dt to i8
  %i.dv = add i3 %i.di, -2
  %i.dw = zext i3 %i.dv to i8
  %i.dx = add i3 %i.di, -1
  %i.dy = zext i3 %i.dx to i8
  %smax.i = zext nneg i32 %i.dh to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.dz = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %i.is, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.dz, %.preheader139.loopexit.i ] ; 6 uses
  %i.ea = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.eb = icmp slt i64 %.076.lcssa.i, %i.ea
  br i1 %i.eb, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.ec = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.ec, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.ef = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7, !noalias !620
  %i.ej = trunc i64 %.092169.i to i8
  %i.ek = and i8 %i.ej, 7
  %i.el = lshr i8 %i.ei, %i.ek
  %i.em = trunc i8 %i.el to i1
  %i.en = icmp slt i64 %i.ee, %.48.val
  %i.eo = icmp sgt i64 %i.ee, %.48.val1
  %spec.select130.i.prol = or i1 %i.en, %i.eo
  %i.ep = select i1 %i.em, i1 %spec.select130.i.prol, i1 false
  %i.eq = or i1 %.3.lcssa.i, %i.ep                ; 2 uses
  %i.er = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader
  %.lcssa43.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.eq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.er, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.eq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %i.es = add nsw i64 %i.ea, -1
  %i.et = icmp eq i64 %.076.lcssa.i, %i.es
  br i1 %i.et, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.iu, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.it, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %i.is, %.preheader133.i ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076147.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.ew = add nsw i64 %.076147.i, %.092169.i
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !7, !noalias !620
  %i.fa = lshr i8 %i.ez, %i.dk
  %i.fb = trunc i8 %i.fa to i1
  %i.fc = icmp slt i64 %i.ev, %.48.val
  %i.fd = icmp sgt i64 %i.ev, %.48.val1
  %spec.select129.i = or i1 %i.fc, %i.fd
  %i.fe = select i1 %i.fb, i1 %spec.select129.i, i1 false
  %i.ff = or i1 %.3146.i, %i.fe
  %i.fg = or disjoint i64 %.076147.i, 1           ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.fj = add nsw i64 %i.fg, %.092169.i
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !7, !noalias !620
  %i.fn = lshr i8 %i.fm, %i.dm
  %i.fo = trunc i8 %i.fn to i1
  %i.fp = icmp slt i64 %i.fi, %.48.val
  %i.fq = icmp sgt i64 %i.fi, %.48.val1
  %spec.select129.1.i = or i1 %i.fp, %i.fq
  %i.fr = select i1 %i.fo, i1 %spec.select129.1.i, i1 false
  %i.fs = or i1 %i.ff, %i.fr
  %i.ft = or disjoint i64 %.076147.i, 2           ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.fw = add nsw i64 %i.ft, %.092169.i
  %i.fx = lshr i64 %i.fw, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !7, !noalias !620
  %i.ga = lshr i8 %i.fz, %i.do
  %i.gb = trunc i8 %i.ga to i1
  %i.gc = icmp slt i64 %i.fv, %.48.val
  %i.gd = icmp sgt i64 %i.fv, %.48.val1
  %spec.select129.2.i = or i1 %i.gc, %i.gd
  %i.ge = select i1 %i.gb, i1 %spec.select129.2.i, i1 false
  %i.gf = or i1 %i.fs, %i.ge
  %i.gg = or disjoint i64 %.076147.i, 3           ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.gj = add nsw i64 %i.gg, %.092169.i
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !7, !noalias !620
  %i.gn = lshr i8 %i.gm, %i.dq
  %i.go = trunc i8 %i.gn to i1
  %i.gp = icmp slt i64 %i.gi, %.48.val
  %i.gq = icmp sgt i64 %i.gi, %.48.val1
  %spec.select129.3.i = or i1 %i.gp, %i.gq
  %i.gr = select i1 %i.go, i1 %spec.select129.3.i, i1 false
  %i.gs = or i1 %i.gf, %i.gr
  %i.gt = or disjoint i64 %.076147.i, 4           ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.gw = add nsw i64 %i.gt, %.092169.i
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !7, !noalias !620
  %i.ha = lshr i8 %i.gz, %i.ds
  %i.hb = trunc i8 %i.ha to i1
  %i.hc = icmp slt i64 %i.gv, %.48.val
  %i.hd = icmp sgt i64 %i.gv, %.48.val1
  %spec.select129.4.i = or i1 %i.hc, %i.hd
  %i.he = select i1 %i.hb, i1 %spec.select129.4.i, i1 false
  %i.hf = or i1 %i.gs, %i.he
  %i.hg = or disjoint i64 %.076147.i, 5           ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.hj = add nsw i64 %i.hg, %.092169.i
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !7, !noalias !620
  %i.hn = lshr i8 %i.hm, %i.du
  %i.ho = trunc i8 %i.hn to i1
  %i.hp = icmp slt i64 %i.hi, %.48.val
  %i.hq = icmp sgt i64 %i.hi, %.48.val1
  %spec.select129.5.i = or i1 %i.hp, %i.hq
  %i.hr = select i1 %i.ho, i1 %spec.select129.5.i, i1 false
  %i.hs = or i1 %i.hf, %i.hr
  %i.ht = or disjoint i64 %.076147.i, 6           ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.hw = add nsw i64 %i.ht, %.092169.i
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !7, !noalias !620
  %i.ia = lshr i8 %i.hz, %i.dw
  %i.ib = trunc i8 %i.ia to i1
  %i.ic = icmp slt i64 %i.hv, %.48.val
  %i.id = icmp sgt i64 %i.hv, %.48.val1
  %spec.select129.6.i = or i1 %i.ic, %i.id
  %i.ie = select i1 %i.ib, i1 %spec.select129.6.i, i1 false
  %i.if = or i1 %i.hs, %i.ie
  %i.ig = or disjoint i64 %.076147.i, 7           ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.ij = add nsw i64 %i.ig, %.092169.i
  %i.ik = lshr i64 %i.ij, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !7, !noalias !620
  %i.in = lshr i8 %i.im, %i.dy
  %i.io = trunc i8 %i.in to i1
  %i.ip = icmp slt i64 %i.ii, %.48.val
  %i.iq = icmp sgt i64 %i.ii, %.48.val1
  %spec.select129.7.i = or i1 %i.ip, %i.iq
  %i.ir = select i1 %i.io, i1 %spec.select129.7.i, i1 false
  %i.is = or i1 %i.if, %i.ir                      ; 2 uses
  %i.it = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %i.iu = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.it, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !629

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i
  %.2151.i = phi i64 [ %i.jy, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.jx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.2151.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.ix = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !7, !noalias !620
  %i.jb = trunc i64 %i.ix to i8
  %i.jc = and i8 %i.jb, 7
  %i.jd = lshr i8 %i.ja, %i.jc
  %i.je = trunc i8 %i.jd to i1
  %i.jf = icmp slt i64 %i.iw, %.48.val
  %i.jg = icmp sgt i64 %i.iw, %.48.val1
  %spec.select130.i = or i1 %i.jf, %i.jg
  %i.jh = select i1 %i.je, i1 %spec.select130.i, i1 false
  %i.ji = or i1 %.5150.i, %i.jh
  %i.jj = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.jj
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !30, !noalias !620 ; 2 uses
  %i.jm = add nsw i64 %i.jj, %.092169.i           ; 2 uses
  %i.jn = lshr i64 %i.jm, 3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !7, !noalias !620
  %i.jq = trunc i64 %i.jm to i8
  %i.jr = and i8 %i.jq, 7
  %i.js = lshr i8 %i.jp, %i.jr
  %i.jt = trunc i8 %i.js to i1
  %i.ju = icmp slt i64 %i.jl, %.48.val
  %i.jv = icmp sgt i64 %i.jl, %.48.val1
  %spec.select130.i.1 = or i1 %i.ju, %i.jv
  %i.jw = select i1 %i.jt, i1 %spec.select130.i.1, i1 false
  %i.jx = or i1 %i.ji, %i.jw                      ; 2 uses
  %i.jy = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.jy, %i.ea
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i, !llvm.loop !630

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.dd, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %.lcssa44.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.prol.loopexit ], [ %.lcssa43.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit ], [ %i.jx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.jz = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !620
  %i.ka = icmp sgt i64 %i.jz, 0
  %i.kb = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.ka, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ko, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.kc = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.kd = lshr i64 %i.kc, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !7, !noalias !620
  %i.kg = trunc i64 %i.kc to i8
  %i.kh = and i8 %i.kg, 7
  %i.ki = lshr i8 %i.kf, %i.kh
  %i.kj = trunc i8 %i.ki to i1
  br i1 %i.kj, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.073167.i
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !30, !noalias !620 ; 3 uses
  %i.km = icmp slt i64 %i.kl, %.48.val
  %i.kn = icmp sgt i64 %i.kl, %.48.val1
  %or.cond131.i = or i1 %i.km, %i.kn
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.kl)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ko = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ko, %i.kb
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !631

bb.g:                                             ; preds = %.lr.ph.i
  %i.kp = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.kp, %i.kb
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !632

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.kp, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.0165.i
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !30, !noalias !620 ; 3 uses
  %i.ks = icmp slt i64 %i.kr, %.48.val
  %i.kt = icmp sgt i64 %i.kr, %.48.val1
  %or.cond132.i = or i1 %i.ks, %i.kt
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.kr)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ku = sext i32 %i.q to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %.088173.i, i64 %i.ku
  %i.kw = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.kx = add nsw i64 %.090172.i, %i.kw           ; 2 uses
  %i.ky = add nsw i64 %.092169.i, %i.kw
  %i.kz = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !620
  %i.la = icmp slt i64 %i.kx, %i.kz
  br i1 %i.la, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !633

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !634
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !620
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9UInt8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.41.val, i8 %.41.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.41.val, ptr %i.a, align 1, !tbaa !7, !noalias !637
  store i8 %.41.val1, ptr %i.b, align 1, !tbaa !7, !noalias !637
  %.not.i = icmp ne i8 %.41.val, 0
  %.not97.i = icmp ne i8 %.41.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !640
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !637 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !637
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !637 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !637
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !637
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !637
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !637
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !637
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.p = shufflevector <8 x i8> %i.o, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.r = shufflevector <8 x i8> %i.q, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat66 = shufflevector <16 x i8> %broadcast.splatinsert65, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert67 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat68 = shufflevector <16 x i8> %broadcast.splatinsert67, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert86 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat87 = shufflevector <8 x i8> %broadcast.splatinsert86, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert88 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat89 = shufflevector <8 x i8> %broadcast.splatinsert88, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.v = shufflevector <8 x i8> %i.u, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat43 = shufflevector <16 x i8> %broadcast.splatinsert42, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat49 = shufflevector <8 x i8> %broadcast.splatinsert48, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat51 = shufflevector <8 x i8> %broadcast.splatinsert50, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.ayi, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 51 uses
  %.090172.i = phi i64 [ %i.ayk, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.ayl, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !637 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check79, label %.preheader137.i

iter.check79:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check59 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check59, label %.preheader.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %iter.check79
  %min.iters.check61 = icmp ult i32 %i.x, 256
  br i1 %min.iters.check61, label %vec.epilog.ph83, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %n.mod.vf63 = and i64 %smax189.i, 24
  %n.vec64 = and i64 %smax189.i, 268435424        ; 5 uses
  %i.ac = shl nuw nsw i64 %n.vec64, 3             ; 2 uses
  %3 = or disjoint i64 %i.ac, 8
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph62
  %index70 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body69 ] ; 2 uses
  %vec.phi71 = phi <16 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.ahh, %vector.body69 ]
  %vec.phi72 = phi <16 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.ahi, %vector.body69 ]
  %i.ad = shl i64 %index70, 3                     ; 32 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bn = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.br = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 184
  %i.bz = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 208
  %i.cf = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %i.ch = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 224
  %i.cj = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 232
  %i.cl = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 240
  %i.cn = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.cp = load i8, ptr %i.ae, align 1, !tbaa !7, !noalias !637
  %i.cq = load i8, ptr %i.ag, align 1, !tbaa !7, !noalias !637
  %i.cr = load i8, ptr %i.ai, align 1, !tbaa !7, !noalias !637
  %i.cs = load i8, ptr %i.ak, align 1, !tbaa !7, !noalias !637
  %i.ct = load i8, ptr %i.am, align 1, !tbaa !7, !noalias !637
  %i.cu = load i8, ptr %i.ao, align 1, !tbaa !7, !noalias !637
  %i.cv = load i8, ptr %i.aq, align 1, !tbaa !7, !noalias !637
  %i.cw = load i8, ptr %i.as, align 1, !tbaa !7, !noalias !637
  %i.cx = load i8, ptr %i.au, align 1, !tbaa !7, !noalias !637
  %i.cy = load i8, ptr %i.aw, align 1, !tbaa !7, !noalias !637
  %i.cz = load i8, ptr %i.ay, align 1, !tbaa !7, !noalias !637
  %i.da = load i8, ptr %i.ba, align 1, !tbaa !7, !noalias !637
  %i.db = load i8, ptr %i.bc, align 1, !tbaa !7, !noalias !637
  %i.dc = load i8, ptr %i.be, align 1, !tbaa !7, !noalias !637
  %i.dd = load i8, ptr %i.bg, align 1, !tbaa !7, !noalias !637
  %i.de = load i8, ptr %i.bi, align 1, !tbaa !7, !noalias !637
  %i.df = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 1
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 2
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 3
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 4
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 5
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 6
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 7
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 8
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 9
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 10
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 11
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 12
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 13
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 14
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 15 ; 2 uses
  %i.dv = load i8, ptr %i.bk, align 1, !tbaa !7, !noalias !637
  %i.dw = load i8, ptr %i.bm, align 1, !tbaa !7, !noalias !637
  %i.dx = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !637
  %i.dy = load i8, ptr %i.bq, align 1, !tbaa !7, !noalias !637
  %i.dz = load i8, ptr %i.bs, align 1, !tbaa !7, !noalias !637
  %i.ea = load i8, ptr %i.bu, align 1, !tbaa !7, !noalias !637
  %i.eb = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !637
  %i.ec = load i8, ptr %i.by, align 1, !tbaa !7, !noalias !637
  %i.ed = load i8, ptr %i.ca, align 1, !tbaa !7, !noalias !637
  %i.ee = load i8, ptr %i.cc, align 1, !tbaa !7, !noalias !637
  %i.ef = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !637
  %i.eg = load i8, ptr %i.cg, align 1, !tbaa !7, !noalias !637
  %i.eh = load i8, ptr %i.ci, align 1, !tbaa !7, !noalias !637
  %i.ei = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !637
  %i.ej = load i8, ptr %i.cm, align 1, !tbaa !7, !noalias !637
  %i.ek = load i8, ptr %i.co, align 1, !tbaa !7, !noalias !637
  %i.el = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 1
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 2
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 3
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 4
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 5
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 6
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 7
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 8
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 9
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 10
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 11
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 12
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 13
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 14
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 15 ; 2 uses
  %i.fb = icmp ult <16 x i8> %i.du, %broadcast.splat66
  %i.fc = icmp ult <16 x i8> %i.fa, %broadcast.splat66
  %i.fd = icmp ugt <16 x i8> %i.du, %broadcast.splat68
  %i.fe = icmp ugt <16 x i8> %i.fa, %broadcast.splat68
  %i.ff = or <16 x i1> %i.fb, %i.fd
  %i.fg = or <16 x i1> %i.fc, %i.fe
  %i.fh = or <16 x i1> %vec.phi71, %i.ff
  %i.fi = or <16 x i1> %vec.phi72, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 33
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ar, i64 57
  %i.fr = getelementptr inbounds nuw i8, ptr %i.at, i64 65
  %i.fs = getelementptr inbounds nuw i8, ptr %i.av, i64 73
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ax, i64 81
  %i.fu = getelementptr inbounds nuw i8, ptr %i.az, i64 89
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bb, i64 97
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bd, i64 105
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bf, i64 113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bh, i64 121
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bj, i64 129
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bl, i64 137
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bn, i64 145
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 153
  %i.gd = getelementptr inbounds nuw i8, ptr %i.br, i64 161
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bt, i64 169
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bv, i64 177
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bx, i64 185
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bz, i64 193
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cb, i64 201
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cd, i64 209
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cf, i64 217
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ch, i64 225
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 233
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cl, i64 241
  %i.go = getelementptr inbounds nuw i8, ptr %i.cn, i64 249
  %i.gp = load i8, ptr %i.fj, align 1, !tbaa !7, !noalias !637
  %i.gq = load i8, ptr %i.fk, align 1, !tbaa !7, !noalias !637
  %i.gr = load i8, ptr %i.fl, align 1, !tbaa !7, !noalias !637
  %i.gs = load i8, ptr %i.fm, align 1, !tbaa !7, !noalias !637
  %i.gt = load i8, ptr %i.fn, align 1, !tbaa !7, !noalias !637
  %i.gu = load i8, ptr %i.fo, align 1, !tbaa !7, !noalias !637
  %i.gv = load i8, ptr %i.fp, align 1, !tbaa !7, !noalias !637
  %i.gw = load i8, ptr %i.fq, align 1, !tbaa !7, !noalias !637
  %i.gx = load i8, ptr %i.fr, align 1, !tbaa !7, !noalias !637
  %i.gy = load i8, ptr %i.fs, align 1, !tbaa !7, !noalias !637
  %i.gz = load i8, ptr %i.ft, align 1, !tbaa !7, !noalias !637
  %i.ha = load i8, ptr %i.fu, align 1, !tbaa !7, !noalias !637
  %i.hb = load i8, ptr %i.fv, align 1, !tbaa !7, !noalias !637
  %i.hc = load i8, ptr %i.fw, align 1, !tbaa !7, !noalias !637
  %i.hd = load i8, ptr %i.fx, align 1, !tbaa !7, !noalias !637
  %i.he = load i8, ptr %i.fy, align 1, !tbaa !7, !noalias !637
  %i.hf = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 1
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 2
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 3
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 4
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 5
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 6
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 7
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 8
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 9
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9UInt8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.aak = getelementptr inbounds nuw i8, ptr %i.cf, i64 222
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ch, i64 230
  %i.aam = getelementptr inbounds nuw i8, ptr %i.cj, i64 238
  %i.aan = getelementptr inbounds nuw i8, ptr %i.cl, i64 246
  %i.aao = getelementptr inbounds nuw i8, ptr %i.cn, i64 254
  %i.aap = load i8, ptr %i.zj, align 1, !tbaa !7, !noalias !637
  %i.aaq = load i8, ptr %i.zk, align 1, !tbaa !7, !noalias !637
  %i.aar = load i8, ptr %i.zl, align 1, !tbaa !7, !noalias !637
  %i.aas = load i8, ptr %i.zm, align 1, !tbaa !7, !noalias !637
  %i.aat = load i8, ptr %i.zn, align 1, !tbaa !7, !noalias !637
  %i.aau = load i8, ptr %i.zo, align 1, !tbaa !7, !noalias !637
  %i.aav = load i8, ptr %i.zp, align 1, !tbaa !7, !noalias !637
  %i.aaw = load i8, ptr %i.zq, align 1, !tbaa !7, !noalias !637
  %i.aax = load i8, ptr %i.zr, align 1, !tbaa !7, !noalias !637
  %i.aay = load i8, ptr %i.zs, align 1, !tbaa !7, !noalias !637
  %i.aaz = load i8, ptr %i.zt, align 1, !tbaa !7, !noalias !637
  %i.aba = load i8, ptr %i.zu, align 1, !tbaa !7, !noalias !637
  %i.abb = load i8, ptr %i.zv, align 1, !tbaa !7, !noalias !637
  %i.abc = load i8, ptr %i.zw, align 1, !tbaa !7, !noalias !637
  %i.abd = load i8, ptr %i.zx, align 1, !tbaa !7, !noalias !637
  %i.abe = load i8, ptr %i.zy, align 1, !tbaa !7, !noalias !637
  %i.abf = insertelement <16 x i8> poison, i8 %i.aap, i64 0
  %i.abg = insertelement <16 x i8> %i.abf, i8 %i.aaq, i64 1
  %i.abh = insertelement <16 x i8> %i.abg, i8 %i.aar, i64 2
  %i.abi = insertelement <16 x i8> %i.abh, i8 %i.aas, i64 3
  %i.abj = insertelement <16 x i8> %i.abi, i8 %i.aat, i64 4
  %i.abk = insertelement <16 x i8> %i.abj, i8 %i.aau, i64 5
  %i.abl = insertelement <16 x i8> %i.abk, i8 %i.aav, i64 6
  %i.abm = insertelement <16 x i8> %i.abl, i8 %i.aaw, i64 7
  %i.abn = insertelement <16 x i8> %i.abm, i8 %i.aax, i64 8
  %i.abo = insertelement <16 x i8> %i.abn, i8 %i.aay, i64 9
  %i.abp = insertelement <16 x i8> %i.abo, i8 %i.aaz, i64 10
  %i.abq = insertelement <16 x i8> %i.abp, i8 %i.aba, i64 11
  %i.abr = insertelement <16 x i8> %i.abq, i8 %i.abb, i64 12
  %i.abs = insertelement <16 x i8> %i.abr, i8 %i.abc, i64 13
  %i.abt = insertelement <16 x i8> %i.abs, i8 %i.abd, i64 14
  %i.abu = insertelement <16 x i8> %i.abt, i8 %i.abe, i64 15 ; 2 uses
  %i.abv = load i8, ptr %i.zz, align 1, !tbaa !7, !noalias !637
  %i.abw = load i8, ptr %i.aaa, align 1, !tbaa !7, !noalias !637
  %i.abx = load i8, ptr %i.aab, align 1, !tbaa !7, !noalias !637
  %i.aby = load i8, ptr %i.aac, align 1, !tbaa !7, !noalias !637
  %i.abz = load i8, ptr %i.aad, align 1, !tbaa !7, !noalias !637
  %i.aca = load i8, ptr %i.aae, align 1, !tbaa !7, !noalias !637
  %i.acb = load i8, ptr %i.aaf, align 1, !tbaa !7, !noalias !637
  %i.acc = load i8, ptr %i.aag, align 1, !tbaa !7, !noalias !637
  %i.acd = load i8, ptr %i.aah, align 1, !tbaa !7, !noalias !637
  %i.ace = load i8, ptr %i.aai, align 1, !tbaa !7, !noalias !637
  %i.acf = load i8, ptr %i.aaj, align 1, !tbaa !7, !noalias !637
  %i.acg = load i8, ptr %i.aak, align 1, !tbaa !7, !noalias !637
  %i.ach = load i8, ptr %i.aal, align 1, !tbaa !7, !noalias !637
  %i.aci = load i8, ptr %i.aam, align 1, !tbaa !7, !noalias !637
  %i.acj = load i8, ptr %i.aan, align 1, !tbaa !7, !noalias !637
  %i.ack = load i8, ptr %i.aao, align 1, !tbaa !7, !noalias !637
  %i.acl = insertelement <16 x i8> poison, i8 %i.abv, i64 0
  %i.acm = insertelement <16 x i8> %i.acl, i8 %i.abw, i64 1
  %i.acn = insertelement <16 x i8> %i.acm, i8 %i.abx, i64 2
  %i.aco = insertelement <16 x i8> %i.acn, i8 %i.aby, i64 3
  %i.acp = insertelement <16 x i8> %i.aco, i8 %i.abz, i64 4
  %i.acq = insertelement <16 x i8> %i.acp, i8 %i.aca, i64 5
  %i.acr = insertelement <16 x i8> %i.acq, i8 %i.acb, i64 6
  %i.acs = insertelement <16 x i8> %i.acr, i8 %i.acc, i64 7
  %i.act = insertelement <16 x i8> %i.acs, i8 %i.acd, i64 8
  %i.acu = insertelement <16 x i8> %i.act, i8 %i.ace, i64 9
  %i.acv = insertelement <16 x i8> %i.acu, i8 %i.acf, i64 10
  %i.acw = insertelement <16 x i8> %i.acv, i8 %i.acg, i64 11
  %i.acx = insertelement <16 x i8> %i.acw, i8 %i.ach, i64 12
  %i.acy = insertelement <16 x i8> %i.acx, i8 %i.aci, i64 13
  %i.acz = insertelement <16 x i8> %i.acy, i8 %i.acj, i64 14
  %i.ada = insertelement <16 x i8> %i.acz, i8 %i.ack, i64 15 ; 2 uses
  %i.adb = icmp ult <16 x i8> %i.abu, %broadcast.splat66
  %i.adc = icmp ult <16 x i8> %i.ada, %broadcast.splat66
  %i.add = icmp ugt <16 x i8> %i.abu, %broadcast.splat68
  %i.ade = icmp ugt <16 x i8> %i.ada, %broadcast.splat68
  %i.adf = or <16 x i1> %i.adb, %i.add
  %i.adg = or <16 x i1> %i.adc, %i.ade
  %i.adh = or <16 x i1> %i.zh, %i.adf
  %i.adi = or <16 x i1> %i.zi, %i.adg
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.adk = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ah, i64 23
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aj, i64 31
  %i.adn = getelementptr inbounds nuw i8, ptr %i.al, i64 39
  %i.ado = getelementptr inbounds nuw i8, ptr %i.an, i64 47
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ap, i64 55
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ar, i64 63
  %i.adr = getelementptr inbounds nuw i8, ptr %i.at, i64 71
  %i.ads = getelementptr inbounds nuw i8, ptr %i.av, i64 79
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ax, i64 87
  %i.adu = getelementptr inbounds nuw i8, ptr %i.az, i64 95
  %i.adv = getelementptr inbounds nuw i8, ptr %i.bb, i64 103
  %i.adw = getelementptr inbounds nuw i8, ptr %i.bd, i64 111
  %i.adx = getelementptr inbounds nuw i8, ptr %i.bf, i64 119
  %i.ady = getelementptr inbounds nuw i8, ptr %i.bh, i64 127
  %i.adz = getelementptr inbounds nuw i8, ptr %i.bj, i64 135
  %i.aea = getelementptr inbounds nuw i8, ptr %i.bl, i64 143
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.bn, i64 151
  %i.aec = getelementptr inbounds nuw i8, ptr %i.bp, i64 159
  %i.aed = getelementptr inbounds nuw i8, ptr %i.br, i64 167
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bt, i64 175
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bv, i64 183
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.bx, i64 191
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.bz, i64 199
  %i.aei = getelementptr inbounds nuw i8, ptr %i.cb, i64 207
  %i.aej = getelementptr inbounds nuw i8, ptr %i.cd, i64 215
  %i.aek = getelementptr inbounds nuw i8, ptr %i.cf, i64 223
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ch, i64 231
  %i.aem = getelementptr inbounds nuw i8, ptr %i.cj, i64 239
  %i.aen = getelementptr inbounds nuw i8, ptr %i.cl, i64 247
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.cn, i64 255
  %i.aep = load i8, ptr %i.adj, align 1, !tbaa !7, !noalias !637
  %i.aeq = load i8, ptr %i.adk, align 1, !tbaa !7, !noalias !637
  %i.aer = load i8, ptr %i.adl, align 1, !tbaa !7, !noalias !637
  %i.aes = load i8, ptr %i.adm, align 1, !tbaa !7, !noalias !637
  %i.aet = load i8, ptr %i.adn, align 1, !tbaa !7, !noalias !637
  %i.aeu = load i8, ptr %i.ado, align 1, !tbaa !7, !noalias !637
  %i.aev = load i8, ptr %i.adp, align 1, !tbaa !7, !noalias !637
  %i.aew = load i8, ptr %i.adq, align 1, !tbaa !7, !noalias !637
  %i.aex = load i8, ptr %i.adr, align 1, !tbaa !7, !noalias !637
  %i.aey = load i8, ptr %i.ads, align 1, !tbaa !7, !noalias !637
  %i.aez = load i8, ptr %i.adt, align 1, !tbaa !7, !noalias !637
  %i.afa = load i8, ptr %i.adu, align 1, !tbaa !7, !noalias !637
  %i.afb = load i8, ptr %i.adv, align 1, !tbaa !7, !noalias !637
  %i.afc = load i8, ptr %i.adw, align 1, !tbaa !7, !noalias !637
  %i.afd = load i8, ptr %i.adx, align 1, !tbaa !7, !noalias !637
  %i.afe = load i8, ptr %i.ady, align 1, !tbaa !7, !noalias !637
  %i.aff = insertelement <16 x i8> poison, i8 %i.aep, i64 0
  %i.afg = insertelement <16 x i8> %i.aff, i8 %i.aeq, i64 1
  %i.afh = insertelement <16 x i8> %i.afg, i8 %i.aer, i64 2
  %i.afi = insertelement <16 x i8> %i.afh, i8 %i.aes, i64 3
  %i.afj = insertelement <16 x i8> %i.afi, i8 %i.aet, i64 4
  %i.afk = insertelement <16 x i8> %i.afj, i8 %i.aeu, i64 5
  %i.afl = insertelement <16 x i8> %i.afk, i8 %i.aev, i64 6
  %i.afm = insertelement <16 x i8> %i.afl, i8 %i.aew, i64 7
  %i.afn = insertelement <16 x i8> %i.afm, i8 %i.aex, i64 8
  %i.afo = insertelement <16 x i8> %i.afn, i8 %i.aey, i64 9
  %i.afp = insertelement <16 x i8> %i.afo, i8 %i.aez, i64 10
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 11
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 12
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 13
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 14
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 15 ; 2 uses
  %i.afv = load i8, ptr %i.adz, align 1, !tbaa !7, !noalias !637
  %i.afw = load i8, ptr %i.aea, align 1, !tbaa !7, !noalias !637
  %i.afx = load i8, ptr %i.aeb, align 1, !tbaa !7, !noalias !637
  %i.afy = load i8, ptr %i.aec, align 1, !tbaa !7, !noalias !637
  %i.afz = load i8, ptr %i.aed, align 1, !tbaa !7, !noalias !637
  %i.aga = load i8, ptr %i.aee, align 1, !tbaa !7, !noalias !637
  %i.agb = load i8, ptr %i.aef, align 1, !tbaa !7, !noalias !637
  %i.agc = load i8, ptr %i.aeg, align 1, !tbaa !7, !noalias !637
  %i.agd = load i8, ptr %i.aeh, align 1, !tbaa !7, !noalias !637
  %i.age = load i8, ptr %i.aei, align 1, !tbaa !7, !noalias !637
  %i.agf = load i8, ptr %i.aej, align 1, !tbaa !7, !noalias !637
  %i.agg = load i8, ptr %i.aek, align 1, !tbaa !7, !noalias !637
  %i.agh = load i8, ptr %i.ael, align 1, !tbaa !7, !noalias !637
  %i.agi = load i8, ptr %i.aem, align 1, !tbaa !7, !noalias !637
  %i.agj = load i8, ptr %i.aen, align 1, !tbaa !7, !noalias !637
  %i.agk = load i8, ptr %i.aeo, align 1, !tbaa !7, !noalias !637
  %i.agl = insertelement <16 x i8> poison, i8 %i.afv, i64 0
  %i.agm = insertelement <16 x i8> %i.agl, i8 %i.afw, i64 1
  %i.agn = insertelement <16 x i8> %i.agm, i8 %i.afx, i64 2
  %i.ago = insertelement <16 x i8> %i.agn, i8 %i.afy, i64 3
  %i.agp = insertelement <16 x i8> %i.ago, i8 %i.afz, i64 4
  %i.agq = insertelement <16 x i8> %i.agp, i8 %i.aga, i64 5
  %i.agr = insertelement <16 x i8> %i.agq, i8 %i.agb, i64 6
  %i.ags = insertelement <16 x i8> %i.agr, i8 %i.agc, i64 7
  %i.agt = insertelement <16 x i8> %i.ags, i8 %i.agd, i64 8
  %i.agu = insertelement <16 x i8> %i.agt, i8 %i.age, i64 9
  %i.agv = insertelement <16 x i8> %i.agu, i8 %i.agf, i64 10
  %i.agw = insertelement <16 x i8> %i.agv, i8 %i.agg, i64 11
  %i.agx = insertelement <16 x i8> %i.agw, i8 %i.agh, i64 12
  %i.agy = insertelement <16 x i8> %i.agx, i8 %i.agi, i64 13
  %i.agz = insertelement <16 x i8> %i.agy, i8 %i.agj, i64 14
  %i.aha = insertelement <16 x i8> %i.agz, i8 %i.agk, i64 15 ; 2 uses
  %i.ahb = icmp ult <16 x i8> %i.afu, %broadcast.splat66
  %i.ahc = icmp ult <16 x i8> %i.aha, %broadcast.splat66
  %i.ahd = icmp ugt <16 x i8> %i.afu, %broadcast.splat68
  %i.ahe = icmp ugt <16 x i8> %i.aha, %broadcast.splat68
  %i.ahf = or <16 x i1> %i.ahb, %i.ahd
  %i.ahg = or <16 x i1> %i.ahc, %i.ahe
  %i.ahh = or <16 x i1> %i.adh, %i.ahf            ; 2 uses
  %i.ahi = or <16 x i1> %i.adi, %i.ahg            ; 2 uses
  %index.next73 = add nuw i64 %index70, 32        ; 2 uses
  %i.ahj = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.ahj, label %middle.block74, label %vector.body69, !llvm.loop !643

middle.block74:                                   ; preds = %vector.body69
  %bin.rdx75 = or <16 x i1> %i.ahi, %i.ahh
  %i.ahk = bitcast <16 x i1> %bin.rdx75 to i16
  %i.ahl = icmp ne i16 %i.ahk, 0                  ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec64, %smax189.i
  br i1 %cmp.n76, label %.preheader137.loopexit.i, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block74
  %min.epilog.iters.check82 = icmp eq i64 %n.mod.vf63, 0
  br i1 %min.epilog.iters.check82, label %.preheader.i.preheader, label %vec.epilog.ph83, !prof !566

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check81
  %vec.epilog.resume.val77 = phi i64 [ %n.vec64, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check60 ]
  %bc.merge.rdx78 = phi i1 [ %i.ahl, %vec.epilog.iter.check81 ], [ false, %vector.main.loop.iter.check60 ]
  %n.vec85 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ahm = shl nuw nsw i64 %n.vec85, 3            ; 2 uses
  %4 = or disjoint i64 %i.ahm, 8
  %i.ahn = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx78, i64 0
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph83
  %index91 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph83 ], [ %index.next93, %vec.epilog.vector.body90 ] ; 2 uses
  %vec.phi92 = phi <8 x i1> [ %i.ahn, %vec.epilog.ph83 ], [ %i.aql, %vec.epilog.vector.body90 ]
  %i.aho = shl i64 %index91, 3                    ; 8 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %i.ahw = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 32
  %i.ahy = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 40
  %i.aia = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 48
  %i.aic = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aho ; 8 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 56
  %i.aie = load i8, ptr %i.ahp, align 1, !tbaa !7, !noalias !637
  %i.aif = load i8, ptr %i.ahr, align 1, !tbaa !7, !noalias !637
  %i.aig = load i8, ptr %i.aht, align 1, !tbaa !7, !noalias !637
  %i.aih = load i8, ptr %i.ahv, align 1, !tbaa !7, !noalias !637
  %i.aii = load i8, ptr %i.ahx, align 1, !tbaa !7, !noalias !637
  %i.aij = load i8, ptr %i.ahz, align 1, !tbaa !7, !noalias !637
  %i.aik = load i8, ptr %i.aib, align 1, !tbaa !7, !noalias !637
  %i.ail = load i8, ptr %i.aid, align 1, !tbaa !7, !noalias !637
  %i.aim = insertelement <8 x i8> poison, i8 %i.aie, i64 0
  %i.ain = insertelement <8 x i8> %i.aim, i8 %i.aif, i64 1
  %i.aio = insertelement <8 x i8> %i.ain, i8 %i.aig, i64 2
  %i.aip = insertelement <8 x i8> %i.aio, i8 %i.aih, i64 3
  %i.aiq = insertelement <8 x i8> %i.aip, i8 %i.aii, i64 4
  %i.air = insertelement <8 x i8> %i.aiq, i8 %i.aij, i64 5
  %i.ais = insertelement <8 x i8> %i.air, i8 %i.aik, i64 6
  %i.ait = insertelement <8 x i8> %i.ais, i8 %i.ail, i64 7 ; 2 uses
  %i.aiu = icmp ult <8 x i8> %i.ait, %broadcast.splat87
  %i.aiv = icmp ugt <8 x i8> %i.ait, %broadcast.splat89
  %i.aiw = or <8 x i1> %i.aiu, %i.aiv
  %i.aix = or <8 x i1> %vec.phi92, %i.aiw
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahp, i64 1
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahq, i64 9
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahs, i64 17
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahu, i64 25
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ahw, i64 33
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahy, i64 41
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aia, i64 49
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aic, i64 57
  %i.ajg = load i8, ptr %i.aiy, align 1, !tbaa !7, !noalias !637
  %i.ajh = load i8, ptr %i.aiz, align 1, !tbaa !7, !noalias !637
  %i.aji = load i8, ptr %i.aja, align 1, !tbaa !7, !noalias !637
  %i.ajj = load i8, ptr %i.ajb, align 1, !tbaa !7, !noalias !637
  %i.ajk = load i8, ptr %i.ajc, align 1, !tbaa !7, !noalias !637
  %i.ajl = load i8, ptr %i.ajd, align 1, !tbaa !7, !noalias !637
  %i.ajm = load i8, ptr %i.aje, align 1, !tbaa !7, !noalias !637
  %i.ajn = load i8, ptr %i.ajf, align 1, !tbaa !7, !noalias !637
  %i.ajo = insertelement <8 x i8> poison, i8 %i.ajg, i64 0
  %i.ajp = insertelement <8 x i8> %i.ajo, i8 %i.ajh, i64 1
  %i.ajq = insertelement <8 x i8> %i.ajp, i8 %i.aji, i64 2
  %i.ajr = insertelement <8 x i8> %i.ajq, i8 %i.ajj, i64 3
  %i.ajs = insertelement <8 x i8> %i.ajr, i8 %i.ajk, i64 4
  %i.ajt = insertelement <8 x i8> %i.ajs, i8 %i.ajl, i64 5
  %i.aju = insertelement <8 x i8> %i.ajt, i8 %i.ajm, i64 6
  %i.ajv = insertelement <8 x i8> %i.aju, i8 %i.ajn, i64 7 ; 2 uses
  %i.ajw = icmp ult <8 x i8> %i.ajv, %broadcast.splat87
  %i.ajx = icmp ugt <8 x i8> %i.ajv, %broadcast.splat89
  %i.ajy = or <8 x i1> %i.ajw, %i.ajx
  %i.ajz = or <8 x i1> %i.aix, %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahq, i64 10
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ahs, i64 18
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ahu, i64 26
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ahw, i64 34
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ahy, i64 42
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aia, i64 50
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aic, i64 58
  %i.aki = load i8, ptr %i.aka, align 1, !tbaa !7, !noalias !637
  %i.akj = load i8, ptr %i.akb, align 1, !tbaa !7, !noalias !637
  %i.akk = load i8, ptr %i.akc, align 1, !tbaa !7, !noalias !637
  %i.akl = load i8, ptr %i.akd, align 1, !tbaa !7, !noalias !637
  %i.akm = load i8, ptr %i.ake, align 1, !tbaa !7, !noalias !637
  %i.akn = load i8, ptr %i.akf, align 1, !tbaa !7, !noalias !637
  %i.ako = load i8, ptr %i.akg, align 1, !tbaa !7, !noalias !637
  %i.akp = load i8, ptr %i.akh, align 1, !tbaa !7, !noalias !637
  %i.akq = insertelement <8 x i8> poison, i8 %i.aki, i64 0
  %i.akr = insertelement <8 x i8> %i.akq, i8 %i.akj, i64 1
  %i.aks = insertelement <8 x i8> %i.akr, i8 %i.akk, i64 2
  %i.akt = insertelement <8 x i8> %i.aks, i8 %i.akl, i64 3
  %i.aku = insertelement <8 x i8> %i.akt, i8 %i.akm, i64 4
  %i.akv = insertelement <8 x i8> %i.aku, i8 %i.akn, i64 5
  %i.akw = insertelement <8 x i8> %i.akv, i8 %i.ako, i64 6
  %i.akx = insertelement <8 x i8> %i.akw, i8 %i.akp, i64 7 ; 2 uses
  %i.aky = icmp ult <8 x i8> %i.akx, %broadcast.splat87
  %i.akz = icmp ugt <8 x i8> %i.akx, %broadcast.splat89
  %i.ala = or <8 x i1> %i.aky, %i.akz
  %i.alb = or <8 x i1> %i.ajz, %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ahp, i64 3
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ahq, i64 11
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ahs, i64 19
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ahu, i64 27
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ahw, i64 35
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahy, i64 43
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aia, i64 51
  %i.alj = getelementptr inbounds nuw i8, ptr %i.aic, i64 59
  %i.alk = load i8, ptr %i.alc, align 1, !tbaa !7, !noalias !637
  %i.all = load i8, ptr %i.ald, align 1, !tbaa !7, !noalias !637
  %i.alm = load i8, ptr %i.ale, align 1, !tbaa !7, !noalias !637
  %i.aln = load i8, ptr %i.alf, align 1, !tbaa !7, !noalias !637
  %i.alo = load i8, ptr %i.alg, align 1, !tbaa !7, !noalias !637
  %i.alp = load i8, ptr %i.alh, align 1, !tbaa !7, !noalias !637
  %i.alq = load i8, ptr %i.ali, align 1, !tbaa !7, !noalias !637
  %i.alr = load i8, ptr %i.alj, align 1, !tbaa !7, !noalias !637
  %i.als = insertelement <8 x i8> poison, i8 %i.alk, i64 0
  %i.alt = insertelement <8 x i8> %i.als, i8 %i.all, i64 1
  %i.alu = insertelement <8 x i8> %i.alt, i8 %i.alm, i64 2
  %i.alv = insertelement <8 x i8> %i.alu, i8 %i.aln, i64 3
  %i.alw = insertelement <8 x i8> %i.alv, i8 %i.alo, i64 4
  %i.alx = insertelement <8 x i8> %i.alw, i8 %i.alp, i64 5
  %i.aly = insertelement <8 x i8> %i.alx, i8 %i.alq, i64 6
  %i.alz = insertelement <8 x i8> %i.aly, i8 %i.alr, i64 7 ; 2 uses
  %i.ama = icmp ult <8 x i8> %i.alz, %broadcast.splat87
  %i.amb = icmp ugt <8 x i8> %i.alz, %broadcast.splat89
  %i.amc = or <8 x i1> %i.ama, %i.amb
  %i.amd = or <8 x i1> %i.alb, %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ahq, i64 12
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ahs, i64 20
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ahu, i64 28
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ahw, i64 36
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ahy, i64 44
  %i.amk = getelementptr inbounds nuw i8, ptr %i.aia, i64 52
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aic, i64 60
  %i.amm = load i8, ptr %i.ame, align 1, !tbaa !7, !noalias !637
  %i.amn = load i8, ptr %i.amf, align 1, !tbaa !7, !noalias !637
  %i.amo = load i8, ptr %i.amg, align 1, !tbaa !7, !noalias !637
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !7, !noalias !637
  %i.amq = load i8, ptr %i.ami, align 1, !tbaa !7, !noalias !637
  %i.amr = load i8, ptr %i.amj, align 1, !tbaa !7, !noalias !637
  %i.ams = load i8, ptr %i.amk, align 1, !tbaa !7, !noalias !637
  %i.amt = load i8, ptr %i.aml, align 1, !tbaa !7, !noalias !637
  %i.amu = insertelement <8 x i8> poison, i8 %i.amm, i64 0
  %i.amv = insertelement <8 x i8> %i.amu, i8 %i.amn, i64 1
  %i.amw = insertelement <8 x i8> %i.amv, i8 %i.amo, i64 2
  %i.amx = insertelement <8 x i8> %i.amw, i8 %i.amp, i64 3
  %i.amy = insertelement <8 x i8> %i.amx, i8 %i.amq, i64 4
  %i.amz = insertelement <8 x i8> %i.amy, i8 %i.amr, i64 5
  %i.ana = insertelement <8 x i8> %i.amz, i8 %i.ams, i64 6
  %i.anb = insertelement <8 x i8> %i.ana, i8 %i.amt, i64 7 ; 2 uses
  %i.anc = icmp ult <8 x i8> %i.anb, %broadcast.splat87
  %i.and = icmp ugt <8 x i8> %i.anb, %broadcast.splat89
  %i.ane = or <8 x i1> %i.anc, %i.and
  %i.anf = or <8 x i1> %i.amd, %i.ane
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ahp, i64 5
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 13
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ahs, i64 21
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ahu, i64 29
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ahw, i64 37
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ahy, i64 45
  %i.anm = getelementptr inbounds nuw i8, ptr %i.aia, i64 53
  %i.ann = getelementptr inbounds nuw i8, ptr %i.aic, i64 61
  %i.ano = load i8, ptr %i.ang, align 1, !tbaa !7, !noalias !637
  %i.anp = load i8, ptr %i.anh, align 1, !tbaa !7, !noalias !637
  %i.anq = load i8, ptr %i.ani, align 1, !tbaa !7, !noalias !637
  %i.anr = load i8, ptr %i.anj, align 1, !tbaa !7, !noalias !637
  %i.ans = load i8, ptr %i.ank, align 1, !tbaa !7, !noalias !637
  %i.ant = load i8, ptr %i.anl, align 1, !tbaa !7, !noalias !637
  %i.anu = load i8, ptr %i.anm, align 1, !tbaa !7, !noalias !637
  %i.anv = load i8, ptr %i.ann, align 1, !tbaa !7, !noalias !637
  %i.anw = insertelement <8 x i8> poison, i8 %i.ano, i64 0
  %i.anx = insertelement <8 x i8> %i.anw, i8 %i.anp, i64 1
  %i.any = insertelement <8 x i8> %i.anx, i8 %i.anq, i64 2
  %i.anz = insertelement <8 x i8> %i.any, i8 %i.anr, i64 3
  %i.aoa = insertelement <8 x i8> %i.anz, i8 %i.ans, i64 4
  %i.aob = insertelement <8 x i8> %i.aoa, i8 %i.ant, i64 5
  %i.aoc = insertelement <8 x i8> %i.aob, i8 %i.anu, i64 6
  %i.aod = insertelement <8 x i8> %i.aoc, i8 %i.anv, i64 7 ; 2 uses
  %i.aoe = icmp ult <8 x i8> %i.aod, %broadcast.splat87
  %i.aof = icmp ugt <8 x i8> %i.aod, %broadcast.splat89
  %i.aog = or <8 x i1> %i.aoe, %i.aof
  %i.aoh = or <8 x i1> %i.anf, %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ahp, i64 6
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ahq, i64 14
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ahs, i64 22
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ahu, i64 30
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ahw, i64 38
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ahy, i64 46
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aia, i64 54
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aic, i64 62
  %i.aoq = load i8, ptr %i.aoi, align 1, !tbaa !7, !noalias !637
  %i.aor = load i8, ptr %i.aoj, align 1, !tbaa !7, !noalias !637
  %i.aos = load i8, ptr %i.aok, align 1, !tbaa !7, !noalias !637
  %i.aot = load i8, ptr %i.aol, align 1, !tbaa !7, !noalias !637
  %i.aou = load i8, ptr %i.aom, align 1, !tbaa !7, !noalias !637
  %i.aov = load i8, ptr %i.aon, align 1, !tbaa !7, !noalias !637
  %i.aow = load i8, ptr %i.aoo, align 1, !tbaa !7, !noalias !637
  %i.aox = load i8, ptr %i.aop, align 1, !tbaa !7, !noalias !637
  %i.aoy = insertelement <8 x i8> poison, i8 %i.aoq, i64 0
  %i.aoz = insertelement <8 x i8> %i.aoy, i8 %i.aor, i64 1
  %i.apa = insertelement <8 x i8> %i.aoz, i8 %i.aos, i64 2
  %i.apb = insertelement <8 x i8> %i.apa, i8 %i.aot, i64 3
  %i.apc = insertelement <8 x i8> %i.apb, i8 %i.aou, i64 4
  %i.apd = insertelement <8 x i8> %i.apc, i8 %i.aov, i64 5
  %i.ape = insertelement <8 x i8> %i.apd, i8 %i.aow, i64 6
  %i.apf = insertelement <8 x i8> %i.ape, i8 %i.aox, i64 7 ; 2 uses
  %i.apg = icmp ult <8 x i8> %i.apf, %broadcast.splat87
  %i.aph = icmp ugt <8 x i8> %i.apf, %broadcast.splat89
  %i.api = or <8 x i1> %i.apg, %i.aph
  %i.apj = or <8 x i1> %i.aoh, %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.ahp, i64 7
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ahq, i64 15
  %i.apm = getelementptr inbounds nuw i8, ptr %i.ahs, i64 23
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ahu, i64 31
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ahw, i64 39
  %i.app = getelementptr inbounds nuw i8, ptr %i.ahy, i64 47
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aia, i64 55
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aic, i64 63
  %i.aps = load i8, ptr %i.apk, align 1, !tbaa !7, !noalias !637
  %i.apt = load i8, ptr %i.apl, align 1, !tbaa !7, !noalias !637
  %i.apu = load i8, ptr %i.apm, align 1, !tbaa !7, !noalias !637
  %i.apv = load i8, ptr %i.apn, align 1, !tbaa !7, !noalias !637
  %i.apw = load i8, ptr %i.apo, align 1, !tbaa !7, !noalias !637
  %i.apx = load i8, ptr %i.app, align 1, !tbaa !7, !noalias !637
  %i.apy = load i8, ptr %i.apq, align 1, !tbaa !7, !noalias !637
  %i.apz = load i8, ptr %i.apr, align 1, !tbaa !7, !noalias !637
  %i.aqa = insertelement <8 x i8> poison, i8 %i.aps, i64 0
  %i.aqb = insertelement <8 x i8> %i.aqa, i8 %i.apt, i64 1
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 2
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 3
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 4
  %i.aqf = insertelement <8 x i8> %i.aqe, i8 %i.apx, i64 5
  %i.aqg = insertelement <8 x i8> %i.aqf, i8 %i.apy, i64 6
  %i.aqh = insertelement <8 x i8> %i.aqg, i8 %i.apz, i64 7 ; 2 uses
  %i.aqi = icmp ult <8 x i8> %i.aqh, %broadcast.splat87
  %i.aqj = icmp ugt <8 x i8> %i.aqh, %broadcast.splat89
  %i.aqk = or <8 x i1> %i.aqi, %i.aqj
  %i.aql = or <8 x i1> %i.apj, %i.aqk             ; 2 uses
  %index.next93 = add nuw i64 %index91, 8         ; 2 uses
  %i.aqm = icmp eq i64 %index.next93, %n.vec85
  br i1 %i.aqm, label %vec.epilog.middle.block94, label %vec.epilog.vector.body90, !llvm.loop !644

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body90
  %i.aqn = bitcast <8 x i1> %i.aql to i8
  %i.aqo = icmp ne i8 %i.aqn, 0                   ; 2 uses
  %cmp.n95 = icmp eq i64 %n.vec85, %smax189.i
  br i1 %cmp.n95, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check79, %vec.epilog.iter.check81, %vec.epilog.middle.block94
  %indvars.iv190.i.ph = phi i64 [ 8, %iter.check79 ], [ %3, %vec.epilog.iter.check81 ], [ %4, %vec.epilog.middle.block94 ]
  %.081158.i.ph = phi i64 [ 0, %iter.check79 ], [ %n.vec64, %vec.epilog.iter.check81 ], [ %n.vec85, %vec.epilog.middle.block94 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check79 ], [ %i.ac, %vec.epilog.iter.check81 ], [ %i.ahm, %vec.epilog.middle.block94 ]
  %.085156.i.ph = phi i1 [ false, %iter.check79 ], [ %i.ahl, %vec.epilog.iter.check81 ], [ %i.aqo, %vec.epilog.middle.block94 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block94, %middle.block74
  %.lcssa36 = phi i1 [ %i.aqo, %vec.epilog.middle.block94 ], [ %i.ahl, %middle.block74 ], [ %op.rdx, %.preheader.i ]
  %i.aqp = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.aqp, %.preheader137.loopexit.i ] ; 7 uses
  %i.aqq = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.aqr = icmp slt i64 %.082.lcssa.i, %i.aqq
  br i1 %i.aqr, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.aqs = sub nsw i64 %i.aqq, %.082.lcssa.i      ; 6 uses
  %min.iters.check = icmp ult i64 %i.aqs, 8
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.aqs, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aqs, 24
  %n.vec = and i64 %i.aqs, -32                    ; 4 uses
  %i.aqt = add nsw i64 %.082.lcssa.i, %n.vec
  %i.aqu = insertelement <16 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.aqv = getelementptr i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ %i.aqu, %vector.ph ], [ %i.are, %vector.body ]
  %vec.phi44 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.arf, %vector.body ]
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 %index ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16
  %wide.load = load <16 x i8>, ptr %i.aqw, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %wide.load45 = load <16 x i8>, ptr %i.aqx, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.aqy = icmp ult <16 x i8> %wide.load, %broadcast.splat
  %i.aqz = icmp ult <16 x i8> %wide.load45, %broadcast.splat
  %i.ara = icmp ugt <16 x i8> %wide.load, %broadcast.splat43
  %i.arb = icmp ugt <16 x i8> %wide.load45, %broadcast.splat43
  %i.arc = or <16 x i1> %i.aqy, %i.ara
  %i.ard = or <16 x i1> %i.aqz, %i.arb
  %i.are = or <16 x i1> %vec.phi, %i.arc          ; 2 uses
  %i.arf = or <16 x i1> %vec.phi44, %i.ard        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.arg = icmp eq i64 %index.next, %n.vec
  br i1 %i.arg, label %middle.block, label %vector.body, !llvm.loop !645

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.arf, %i.are
  %i.arh = bitcast <16 x i1> %bin.rdx to i16
  %i.ari = icmp ne i16 %i.arh, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %i.aqs, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader, label %vec.epilog.ph, !prof !566

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ari, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %n.mod.vf46 = and i64 %i.aqq, 7
  %n.vec47 = sub nsw i64 %i.aqs, %n.mod.vf46      ; 2 uses
  %i.arj = add nsw i64 %.082.lcssa.i, %n.vec47
  %i.ark = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.arl = getelementptr i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi53 = phi <8 x i1> [ %i.ark, %vec.epilog.ph ], [ %i.arq, %vec.epilog.vector.body ]
  %i.arm = getelementptr i8, ptr %i.arl, i64 %index52
  %wide.load54 = load <8 x i8>, ptr %i.arm, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.arn = icmp ult <8 x i8> %wide.load54, %broadcast.splat49
  %i.aro = icmp ugt <8 x i8> %wide.load54, %broadcast.splat51
  %i.arp = or <8 x i1> %i.arn, %i.aro
  %i.arq = or <8 x i1> %vec.phi53, %i.arp         ; 2 uses
  %index.next55 = add nuw i64 %index52, 8         ; 2 uses
  %i.arr = icmp eq i64 %index.next55, %n.vec47
  br i1 %i.arr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !646

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ars = bitcast <8 x i1> %i.arq to i8
  %i.art = icmp ne i8 %i.ars, 0                   ; 2 uses
  %i.aru = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n56 = icmp eq i16 %i.aru, 0
  br i1 %cmp.n56, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.aqt, %vec.epilog.iter.check ], [ %i.arj, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.ari, %vec.epilog.iter.check ], [ %i.art, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv190.i = phi i64 [ %i.asd, %.preheader.i ], [ %indvars.iv190.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.081158.i = phi i64 [ %i.asc, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %indvars.iv190.i, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ]
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.arv = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082157.i
  %i.arw = load <8 x i8>, ptr %i.arv, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.arx = icmp ult <8 x i8> %i.arw, %i.t
  %i.ary = icmp ugt <8 x i8> %i.arw, %i.v
  %i.arz = shufflevector <8 x i1> %i.ary, <8 x i1> %i.arx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.asa = bitcast <16 x i1> %i.arz to i16
  %i.asb = icmp ne i16 %i.asa, 0
  %op.rdx = or i1 %i.asb, %.085156.i              ; 2 uses
  %i.asc = add nuw nsw i64 %.081158.i, 1          ; 2 uses
  %i.asd = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.asc, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !647

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i
  %.284162.i = phi i64 [ %i.asj, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.asi, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader ]
  %i.ase = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.284162.i
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.asg = icmp ult i8 %i.asf, %.41.val
  %i.ash = icmp ugt i8 %i.asf, %.41.val1
  %spec.select128.i = or i1 %i.asg, %i.ash
  %i.asi = or i1 %.287161.i, %spec.select128.i    ; 2 uses
  %i.asj = add nuw nsw i64 %.284162.i, 1          ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.asj, %i.aqq
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i, !llvm.loop !648

bb.d:                                             ; preds = %.lr.ph176.i
  %i.ask = icmp sgt i32 %i.x, 0
  br i1 %i.ask, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.asl = icmp sgt i32 %i.y, 7
  br i1 %i.asl, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.asm = lshr i32 %i.y, 3
  %i.asn = trunc i64 %.092169.i to i3             ; 3 uses
  %i.aso = trunc i64 %.092169.i to i8
  %i.asp = and i8 %i.aso, 7
  %i.asq = add i3 %i.asn, 1
  %i.asr = zext i3 %i.asq to i8
  %i.ass = insertelement <2 x i3> poison, i3 %i.asn, i64 0
  %i.ast = insertelement <4 x i3> poison, i3 %i.asn, i64 0
  %i.asu = shufflevector <4 x i3> %i.ast, <4 x i3> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.asv = xor <4 x i3> %i.asu, <i3 -4, i3 poison, i3 poison, i3 poison>
  %i.asw = add <4 x i3> %i.asu, <i3 poison, i3 -3, i3 -2, i3 -1>
  %smax.i = zext nneg i32 %i.asm to i64           ; 2 uses
  %i.asx = insertelement <8 x i8> poison, i8 %i.asp, i64 0
  %i.asy = insertelement <8 x i8> %i.asx, i8 %i.asr, i64 1
  %i.asz = shufflevector <4 x i3> %i.asv, <4 x i3> %i.asw, <8 x i32> <i32 0, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ata = zext <8 x i3> %i.asz to <8 x i8>
  %i.atb = shufflevector <2 x i3> %i.ass, <2 x i3> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atc = add <8 x i3> %i.atb, <i3 2, i3 3, i3 undef, i3 undef, i3 undef, i3 undef, i3 undef, i3 undef>
  %i.atd = zext <8 x i3> %i.atc to <8 x i8>
  %i.ate = shufflevector <8 x i8> %i.asy, <8 x i8> %i.atd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atf = shufflevector <8 x i8> %i.ate, <8 x i8> %i.ata, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.atg = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx99, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.atg, %.preheader139.loopexit.i ] ; 6 uses
  %i.ath = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.ati = icmp slt i64 %.076.lcssa.i, %i.ath
  br i1 %i.ati, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.atj = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.atj, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader
  %i.atk = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076.lcssa.i
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.atm = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.atn = lshr i64 %i.atm, 3
  %i.ato = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.atn
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !7, !noalias !637
  %i.atq = trunc i64 %.092169.i to i8
  %i.atr = and i8 %i.atq, 7
  %i.ats = lshr i8 %i.atp, %i.atr
  %i.att = trunc i8 %i.ats to i1
  %i.atu = icmp ult i8 %i.atl, %.41.val
  %i.atv = icmp ugt i8 %i.atl, %.41.val1
  %spec.select130.i.prol = or i1 %i.atu, %i.atv
  %i.atw = select i1 %i.att, i1 %spec.select130.i.prol, i1 false
  %i.atx = or i1 %.3.lcssa.i, %i.atw              ; 2 uses
  %i.aty = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader ], [ %i.atx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader ], [ %i.aty, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader ], [ %i.atx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol ]
  %i.atz = add nsw i64 %i.ath, -1
  %i.aua = icmp eq i64 %.076.lcssa.i, %i.atz
  br i1 %i.aua, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.awh, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.awg, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %op.rdx99, %.preheader133.i ]
  %i.aub = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076147.i
  %i.auc = add nsw i64 %.076147.i, %.092169.i
  %i.aud = lshr i64 %i.auc, 3
  %i.aue = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !7, !noalias !637
  %i.aug = or disjoint i64 %.076147.i, 1
  %i.auh = add nsw i64 %i.aug, %.092169.i
  %i.aui = lshr i64 %i.auh, 3
  %i.auj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aui
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !7, !noalias !637
  %i.aul = or disjoint i64 %.076147.i, 2
  %i.aum = add nsw i64 %i.aul, %.092169.i
  %i.aun = lshr i64 %i.aum, 3
  %i.auo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !7, !noalias !637
  %i.auq = or disjoint i64 %.076147.i, 3
  %i.aur = add nsw i64 %i.auq, %.092169.i
  %i.aus = lshr i64 %i.aur, 3
  %i.aut = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aus
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !7, !noalias !637
  %i.auv = or disjoint i64 %.076147.i, 4
  %i.auw = add nsw i64 %i.auv, %.092169.i
  %i.aux = lshr i64 %i.auw, 3
  %i.auy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aux
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !7, !noalias !637
  %i.ava = or disjoint i64 %.076147.i, 5
  %i.avb = add nsw i64 %i.ava, %.092169.i
  %i.avc = lshr i64 %i.avb, 3
  %i.avd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !7, !noalias !637
  %i.avf = or disjoint i64 %.076147.i, 6
  %i.avg = add nsw i64 %i.avf, %.092169.i
  %i.avh = lshr i64 %i.avg, 3
  %i.avi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avh
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !7, !noalias !637
  %i.avk = or disjoint i64 %.076147.i, 7
  %i.avl = add nsw i64 %i.avk, %.092169.i
  %i.avm = lshr i64 %i.avl, 3
  %i.avn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avm
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !7, !noalias !637
  %i.avp = load <8 x i8>, ptr %i.aub, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.avq = insertelement <8 x i8> poison, i8 %i.auf, i64 0
  %i.avr = insertelement <8 x i8> %i.avq, i8 %i.auk, i64 1
  %i.avs = insertelement <8 x i8> %i.avr, i8 %i.aup, i64 2
  %i.avt = insertelement <8 x i8> %i.avs, i8 %i.auu, i64 3
  %i.avu = insertelement <8 x i8> %i.avt, i8 %i.auz, i64 4
  %i.avv = insertelement <8 x i8> %i.avu, i8 %i.ave, i64 5
  %i.avw = insertelement <8 x i8> %i.avv, i8 %i.avj, i64 6
  %i.avx = insertelement <8 x i8> %i.avw, i8 %i.avo, i64 7
  %i.avy = lshr <8 x i8> %i.avx, %i.atf
  %i.avz = trunc <8 x i8> %i.avy to <8 x i1>
  %i.awa = icmp ult <8 x i8> %i.avp, %i.p
  %i.awb = icmp ugt <8 x i8> %i.avp, %i.r
  %i.awc = or <8 x i1> %i.awa, %i.awb
  %i.awd = select <8 x i1> %i.avz, <8 x i1> %i.awc, <8 x i1> zeroinitializer
  %i.awe = bitcast <8 x i1> %i.awd to i8
  %i.awf = icmp ne i8 %i.awe, 0
  %op.rdx99 = or i1 %i.awf, %.3146.i              ; 2 uses
  %i.awg = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %i.awh = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.awg, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !649

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i
  %.2151.i = phi i64 [ %i.axl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.axk, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit ]
  %i.awi = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.2151.i
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.awk = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.awl = lshr i64 %i.awk, 3
  %i.awm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.awl
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !7, !noalias !637
  %i.awo = trunc i64 %i.awk to i8
  %i.awp = and i8 %i.awo, 7
  %i.awq = lshr i8 %i.awn, %i.awp
  %i.awr = trunc i8 %i.awq to i1
  %i.aws = icmp ult i8 %i.awj, %.41.val
  %i.awt = icmp ugt i8 %i.awj, %.41.val1
  %spec.select130.i = or i1 %i.aws, %i.awt
  %i.awu = select i1 %i.awr, i1 %spec.select130.i, i1 false
  %i.awv = or i1 %.5150.i, %i.awu
  %i.aww = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.aww
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !7, !noalias !637 ; 2 uses
  %i.awz = add nsw i64 %i.aww, %.092169.i         ; 2 uses
  %i.axa = lshr i64 %i.awz, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !7, !noalias !637
  %i.axd = trunc i64 %i.awz to i8
  %i.axe = and i8 %i.axd, 7
  %i.axf = lshr i8 %i.axc, %i.axe
  %i.axg = trunc i8 %i.axf to i1
  %i.axh = icmp ult i8 %i.awy, %.41.val
  %i.axi = icmp ugt i8 %i.awy, %.41.val1
  %spec.select130.i.1 = or i1 %i.axh, %i.axi
  %i.axj = select i1 %i.axg, i1 %spec.select130.i.1, i1 false
  %i.axk = or i1 %i.awv, %i.axj                   ; 2 uses
  %i.axl = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.axl, %i.ath
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i, !llvm.loop !650

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.asi, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.art, %vec.epilog.middle.block ], [ %i.ari, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit ], [ %i.axk, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.axm = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !637
  %i.axn = icmp sgt i64 %i.axm, 0
  %i.axo = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.axn, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ayb, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.axp = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.axq = lshr i64 %i.axp, 3
  %i.axr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axq
  %i.axs = load i8, ptr %i.axr, align 1, !tbaa !7, !noalias !637
  %i.axt = trunc i64 %i.axp to i8
  %i.axu = and i8 %i.axt, 7
  %i.axv = lshr i8 %i.axs, %i.axu
  %i.axw = trunc i8 %i.axv to i1
  br i1 %i.axw, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.axx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.073167.i
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !7, !noalias !637 ; 3 uses
  %i.axz = icmp ult i8 %i.axy, %.41.val
  %i.aya = icmp ugt i8 %i.axy, %.41.val1
  %or.cond131.i = or i1 %i.axz, %i.aya
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef zeroext %i.axy)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ayb = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ayb, %i.axo
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !651

bb.g:                                             ; preds = %.lr.ph.i
  %i.ayc = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ayc, %i.axo
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !652

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ayc, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.0165.i
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !7, !noalias !637 ; 3 uses
  %i.ayf = icmp ult i8 %i.aye, %.41.val
  %i.ayg = icmp ugt i8 %i.aye, %.41.val1
  %or.cond132.i = or i1 %i.ayf, %i.ayg
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef zeroext %i.aye)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ayh = sext i32 %i.y to i64
  %i.ayi = getelementptr inbounds i8, ptr %.088173.i, i64 %i.ayh
  %i.ayj = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ayk = add nsw i64 %.090172.i, %i.ayj         ; 2 uses
  %i.ayl = add nsw i64 %.092169.i, %i.ayj
  %i.aym = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !637
  %i.ayn = icmp slt i64 %i.ayk, %i.aym
  br i1 %i.ayn, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !653

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !654
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !637
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %.42.val, i16 %.42.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.42.val, ptr %i.a, align 2, !tbaa !16, !noalias !657
  store i16 %.42.val1, ptr %i.b, align 2, !tbaa !16, !noalias !657
  %.not.i = icmp ne i16 %.42.val, 0
  %.not97.i = icmp ne i16 %.42.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !660
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !657 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !657
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !657 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !657
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !657
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !657
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !657
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !657
  %i.n = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat66 = shufflevector <8 x i16> %broadcast.splatinsert65, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert67 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat68 = shufflevector <8 x i16> %broadcast.splatinsert67, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert86 = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat87 = shufflevector <8 x i16> %broadcast.splatinsert86, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert88 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat89 = shufflevector <8 x i16> %broadcast.splatinsert88, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.t = shufflevector <8 x i16> %i.s, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.v = shufflevector <8 x i16> %i.u, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat49 = shufflevector <4 x i16> %broadcast.splatinsert48, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat51 = shufflevector <4 x i16> %broadcast.splatinsert50, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.ajk, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 35 uses
  %.090172.i = phi i64 [ %i.ajm, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.ajn, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !657 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check79, label %.preheader137.i

iter.check79:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check59 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check59, label %.preheader.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %iter.check79
  %min.iters.check61 = icmp ult i32 %i.x, 128
  br i1 %min.iters.check61, label %vec.epilog.ph83, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %n.mod.vf63 = and i64 %smax189.i, 8
  %n.vec64 = and i64 %smax189.i, 268435440        ; 5 uses
  %i.ac = shl nuw nsw i64 %n.vec64, 3             ; 2 uses
  %3 = or disjoint i64 %i.ac, 8
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph62
  %index70 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body69 ] ; 2 uses
  %vec.phi71 = phi <8 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.rx, %vector.body69 ]
  %vec.phi72 = phi <8 x i1> [ zeroinitializer, %vector.ph62 ], [ %i.ry, %vector.body69 ]
  %i.ad = shl i64 %index70, 3                     ; 16 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load i16, ptr %i.ae, align 2, !tbaa !16, !noalias !657
  %i.bk = load i16, ptr %i.ag, align 2, !tbaa !16, !noalias !657
  %i.bl = load i16, ptr %i.ai, align 2, !tbaa !16, !noalias !657
  %i.bm = load i16, ptr %i.ak, align 2, !tbaa !16, !noalias !657
  %i.bn = load i16, ptr %i.am, align 2, !tbaa !16, !noalias !657
  %i.bo = load i16, ptr %i.ao, align 2, !tbaa !16, !noalias !657
  %i.bp = load i16, ptr %i.aq, align 2, !tbaa !16, !noalias !657
  %i.bq = load i16, ptr %i.as, align 2, !tbaa !16, !noalias !657
  %i.br = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 1
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 2
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 3
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 4
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 5
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 6
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 7 ; 2 uses
  %i.bz = load i16, ptr %i.au, align 2, !tbaa !16, !noalias !657
  %i.ca = load i16, ptr %i.aw, align 2, !tbaa !16, !noalias !657
  %i.cb = load i16, ptr %i.ay, align 2, !tbaa !16, !noalias !657
  %i.cc = load i16, ptr %i.ba, align 2, !tbaa !16, !noalias !657
  %i.cd = load i16, ptr %i.bc, align 2, !tbaa !16, !noalias !657
  %i.ce = load i16, ptr %i.be, align 2, !tbaa !16, !noalias !657
  %i.cf = load i16, ptr %i.bg, align 2, !tbaa !16, !noalias !657
  %i.cg = load i16, ptr %i.bi, align 2, !tbaa !16, !noalias !657
  %i.ch = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.ca, i64 1
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 2
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 3
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 4
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 5
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 6
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 7 ; 2 uses
  %i.cp = icmp ult <8 x i16> %i.by, %broadcast.splat66
  %i.cq = icmp ult <8 x i16> %i.co, %broadcast.splat66
  %i.cr = icmp ugt <8 x i16> %i.by, %broadcast.splat68
  %i.cs = icmp ugt <8 x i16> %i.co, %broadcast.splat68
  %i.ct = or <8 x i1> %i.cp, %i.cr
  %i.cu = or <8 x i1> %i.cq, %i.cs
  %i.cv = or <8 x i1> %vec.phi71, %i.ct
  %i.cw = or <8 x i1> %vec.phi72, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 50
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 66
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 82
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 98
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 114
  %i.df = getelementptr inbounds nuw i8, ptr %i.at, i64 130
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 146
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 162
  %i.di = getelementptr inbounds nuw i8, ptr %i.az, i64 178
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 194
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bd, i64 210
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bf, i64 226
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 242
  %i.dn = load i16, ptr %i.cx, align 2, !tbaa !16, !noalias !657
  %i.do = load i16, ptr %i.cy, align 2, !tbaa !16, !noalias !657
  %i.dp = load i16, ptr %i.cz, align 2, !tbaa !16, !noalias !657
  %i.dq = load i16, ptr %i.da, align 2, !tbaa !16, !noalias !657
  %i.dr = load i16, ptr %i.db, align 2, !tbaa !16, !noalias !657
  %i.ds = load i16, ptr %i.dc, align 2, !tbaa !16, !noalias !657
  %i.dt = load i16, ptr %i.dd, align 2, !tbaa !16, !noalias !657
  %i.du = load i16, ptr %i.de, align 2, !tbaa !16, !noalias !657
  %i.dv = insertelement <8 x i16> poison, i16 %i.dn, i64 0
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 1
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 2
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 3
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 4
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 5
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 6
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 7 ; 2 uses
  %i.ed = load i16, ptr %i.df, align 2, !tbaa !16, !noalias !657
  %i.ee = load i16, ptr %i.dg, align 2, !tbaa !16, !noalias !657
  %i.ef = load i16, ptr %i.dh, align 2, !tbaa !16, !noalias !657
  %i.eg = load i16, ptr %i.di, align 2, !tbaa !16, !noalias !657
  %i.eh = load i16, ptr %i.dj, align 2, !tbaa !16, !noalias !657
  %i.ei = load i16, ptr %i.dk, align 2, !tbaa !16, !noalias !657
  %i.ej = load i16, ptr %i.dl, align 2, !tbaa !16, !noalias !657
  %i.ek = load i16, ptr %i.dm, align 2, !tbaa !16, !noalias !657
  %i.el = insertelement <8 x i16> poison, i16 %i.ed, i64 0
  %i.em = insertelement <8 x i16> %i.el, i16 %i.ee, i64 1
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 2
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 3
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 4
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 5
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 6
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 7 ; 2 uses
  %i.et = icmp ult <8 x i16> %i.ec, %broadcast.splat66
  %i.eu = icmp ult <8 x i16> %i.es, %broadcast.splat66
  %i.ev = icmp ugt <8 x i16> %i.ec, %broadcast.splat68
  %i.ew = icmp ugt <8 x i16> %i.es, %broadcast.splat68
  %i.ex = or <8 x i1> %i.et, %i.ev
  %i.ey = or <8 x i1> %i.eu, %i.ew
  %i.ez = or <8 x i1> %i.cv, %i.ex
  %i.fa = or <8 x i1> %i.cw, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.fg = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ap, i64 100
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  %i.fj = getelementptr inbounds nuw i8, ptr %i.at, i64 132
  %i.fk = getelementptr inbounds nuw i8, ptr %i.av, i64 148
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ax, i64 164
  %i.fm = getelementptr inbounds nuw i8, ptr %i.az, i64 180
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bb, i64 196
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bd, i64 212
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bf, i64 228
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bh, i64 244
  %i.fr = load i16, ptr %i.fb, align 2, !tbaa !16, !noalias !657
  %i.fs = load i16, ptr %i.fc, align 2, !tbaa !16, !noalias !657
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !16, !noalias !657
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !16, !noalias !657
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !16, !noalias !657
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !16, !noalias !657
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !16, !noalias !657
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !16, !noalias !657
  %i.fz = insertelement <8 x i16> poison, i16 %i.fr, i64 0
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 1
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 2
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 3
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 4
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 5
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 6
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 7 ; 2 uses
  %i.gh = load i16, ptr %i.fj, align 2, !tbaa !16, !noalias !657
  %i.gi = load i16, ptr %i.fk, align 2, !tbaa !16, !noalias !657
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !16, !noalias !657
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !16, !noalias !657
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !16, !noalias !657
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !16, !noalias !657
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !16, !noalias !657
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !16, !noalias !657
  %i.gp = insertelement <8 x i16> poison, i16 %i.gh, i64 0
  %i.gq = insertelement <8 x i16> %i.gp, i16 %i.gi, i64 1
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 2
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 3
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 4
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 5
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 6
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 7 ; 2 uses
  %i.gx = icmp ult <8 x i16> %i.gg, %broadcast.splat66
  %i.gy = icmp ult <8 x i16> %i.gw, %broadcast.splat66
  %i.gz = icmp ugt <8 x i16> %i.gg, %broadcast.splat68
  %i.ha = icmp ugt <8 x i16> %i.gw, %broadcast.splat68
  %i.hb = or <8 x i1> %i.gx, %i.gz
  %i.hc = or <8 x i1> %i.gy, %i.ha
  %i.hd = or <8 x i1> %i.ez, %i.hb
  %i.he = or <8 x i1> %i.fa, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.hg = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ah, i64 38
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aj, i64 54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.al, i64 70
  %i.hk = getelementptr inbounds nuw i8, ptr %i.an, i64 86
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ap, i64 102
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ar, i64 118
  %i.hn = getelementptr inbounds nuw i8, ptr %i.at, i64 134
  %i.ho = getelementptr inbounds nuw i8, ptr %i.av, i64 150
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.ks, i64 3
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 4
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 5
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 6
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 7 ; 2 uses
  %i.lf = icmp ult <8 x i16> %i.ko, %broadcast.splat66
  %i.lg = icmp ult <8 x i16> %i.le, %broadcast.splat66
  %i.lh = icmp ugt <8 x i16> %i.ko, %broadcast.splat68
  %i.li = icmp ugt <8 x i16> %i.le, %broadcast.splat68
  %i.lj = or <8 x i1> %i.lf, %i.lh
  %i.lk = or <8 x i1> %i.lg, %i.li
  %i.ll = or <8 x i1> %i.jh, %i.lj
  %i.lm = or <8 x i1> %i.ji, %i.lk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ah, i64 42
  %i.lq = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.lr = getelementptr inbounds nuw i8, ptr %i.al, i64 74
  %i.ls = getelementptr inbounds nuw i8, ptr %i.an, i64 90
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ap, i64 106
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ar, i64 122
  %i.lv = getelementptr inbounds nuw i8, ptr %i.at, i64 138
  %i.lw = getelementptr inbounds nuw i8, ptr %i.av, i64 154
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ax, i64 170
  %i.ly = getelementptr inbounds nuw i8, ptr %i.az, i64 186
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bb, i64 202
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bd, i64 218
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bf, i64 234
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bh, i64 250
  %i.md = load i16, ptr %i.ln, align 2, !tbaa !16, !noalias !657
  %i.me = load i16, ptr %i.lo, align 2, !tbaa !16, !noalias !657
  %i.mf = load i16, ptr %i.lp, align 2, !tbaa !16, !noalias !657
  %i.mg = load i16, ptr %i.lq, align 2, !tbaa !16, !noalias !657
  %i.mh = load i16, ptr %i.lr, align 2, !tbaa !16, !noalias !657
  %i.mi = load i16, ptr %i.ls, align 2, !tbaa !16, !noalias !657
  %i.mj = load i16, ptr %i.lt, align 2, !tbaa !16, !noalias !657
  %i.mk = load i16, ptr %i.lu, align 2, !tbaa !16, !noalias !657
  %i.ml = insertelement <8 x i16> poison, i16 %i.md, i64 0
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 1
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 2
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 3
  %i.mp = insertelement <8 x i16> %i.mo, i16 %i.mh, i64 4
  %i.mq = insertelement <8 x i16> %i.mp, i16 %i.mi, i64 5
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 6
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 7 ; 2 uses
  %i.mt = load i16, ptr %i.lv, align 2, !tbaa !16, !noalias !657
  %i.mu = load i16, ptr %i.lw, align 2, !tbaa !16, !noalias !657
  %i.mv = load i16, ptr %i.lx, align 2, !tbaa !16, !noalias !657
  %i.mw = load i16, ptr %i.ly, align 2, !tbaa !16, !noalias !657
  %i.mx = load i16, ptr %i.lz, align 2, !tbaa !16, !noalias !657
  %i.my = load i16, ptr %i.ma, align 2, !tbaa !16, !noalias !657
  %i.mz = load i16, ptr %i.mb, align 2, !tbaa !16, !noalias !657
  %i.na = load i16, ptr %i.mc, align 2, !tbaa !16, !noalias !657
  %i.nb = insertelement <8 x i16> poison, i16 %i.mt, i64 0
  %i.nc = insertelement <8 x i16> %i.nb, i16 %i.mu, i64 1
  %i.nd = insertelement <8 x i16> %i.nc, i16 %i.mv, i64 2
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 3
  %i.nf = insertelement <8 x i16> %i.ne, i16 %i.mx, i64 4
  %i.ng = insertelement <8 x i16> %i.nf, i16 %i.my, i64 5
  %i.nh = insertelement <8 x i16> %i.ng, i16 %i.mz, i64 6
  %i.ni = insertelement <8 x i16> %i.nh, i16 %i.na, i64 7 ; 2 uses
  %i.nj = icmp ult <8 x i16> %i.ms, %broadcast.splat66
  %i.nk = icmp ult <8 x i16> %i.ni, %broadcast.splat66
  %i.nl = icmp ugt <8 x i16> %i.ms, %broadcast.splat68
  %i.nm = icmp ugt <8 x i16> %i.ni, %broadcast.splat68
  %i.nn = or <8 x i1> %i.nj, %i.nl
  %i.no = or <8 x i1> %i.nk, %i.nm
  %i.np = or <8 x i1> %i.ll, %i.nn
  %i.nq = or <8 x i1> %i.lm, %i.no
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ns = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.nu = getelementptr inbounds nuw i8, ptr %i.aj, i64 60
  %i.nv = getelementptr inbounds nuw i8, ptr %i.al, i64 76
  %i.nw = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ap, i64 108
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ar, i64 124
  %i.nz = getelementptr inbounds nuw i8, ptr %i.at, i64 140
  %i.oa = getelementptr inbounds nuw i8, ptr %i.av, i64 156
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ax, i64 172
  %i.oc = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.od = getelementptr inbounds nuw i8, ptr %i.bb, i64 204
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bd, i64 220
  %i.of = getelementptr inbounds nuw i8, ptr %i.bf, i64 236
  %i.og = getelementptr inbounds nuw i8, ptr %i.bh, i64 252
  %i.oh = load i16, ptr %i.nr, align 2, !tbaa !16, !noalias !657
  %i.oi = load i16, ptr %i.ns, align 2, !tbaa !16, !noalias !657
  %i.oj = load i16, ptr %i.nt, align 2, !tbaa !16, !noalias !657
  %i.ok = load i16, ptr %i.nu, align 2, !tbaa !16, !noalias !657
  %i.ol = load i16, ptr %i.nv, align 2, !tbaa !16, !noalias !657
  %i.om = load i16, ptr %i.nw, align 2, !tbaa !16, !noalias !657
  %i.on = load i16, ptr %i.nx, align 2, !tbaa !16, !noalias !657
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !16, !noalias !657
  %i.op = insertelement <8 x i16> poison, i16 %i.oh, i64 0
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 1
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 2
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 3
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 4
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 5
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 6
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 7 ; 2 uses
  %i.ox = load i16, ptr %i.nz, align 2, !tbaa !16, !noalias !657
  %i.oy = load i16, ptr %i.oa, align 2, !tbaa !16, !noalias !657
  %i.oz = load i16, ptr %i.ob, align 2, !tbaa !16, !noalias !657
  %i.pa = load i16, ptr %i.oc, align 2, !tbaa !16, !noalias !657
  %i.pb = load i16, ptr %i.od, align 2, !tbaa !16, !noalias !657
  %i.pc = load i16, ptr %i.oe, align 2, !tbaa !16, !noalias !657
  %i.pd = load i16, ptr %i.of, align 2, !tbaa !16, !noalias !657
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !16, !noalias !657
  %i.pf = insertelement <8 x i16> poison, i16 %i.ox, i64 0
  %i.pg = insertelement <8 x i16> %i.pf, i16 %i.oy, i64 1
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 2
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 3
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 4
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 5
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 6
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 7 ; 2 uses
  %i.pn = icmp ult <8 x i16> %i.ow, %broadcast.splat66
  %i.po = icmp ult <8 x i16> %i.pm, %broadcast.splat66
  %i.pp = icmp ugt <8 x i16> %i.ow, %broadcast.splat68
  %i.pq = icmp ugt <8 x i16> %i.pm, %broadcast.splat68
  %i.pr = or <8 x i1> %i.pn, %i.pp
  %i.ps = or <8 x i1> %i.po, %i.pq
  %i.pt = or <8 x i1> %i.np, %i.pr
  %i.pu = or <8 x i1> %i.nq, %i.ps
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  %i.pw = getelementptr inbounds nuw i8, ptr %i.af, i64 30
  %i.px = getelementptr inbounds nuw i8, ptr %i.ah, i64 46
  %i.py = getelementptr inbounds nuw i8, ptr %i.aj, i64 62
  %i.pz = getelementptr inbounds nuw i8, ptr %i.al, i64 78
  %i.qa = getelementptr inbounds nuw i8, ptr %i.an, i64 94
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ap, i64 110
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ar, i64 126
  %i.qd = getelementptr inbounds nuw i8, ptr %i.at, i64 142
  %i.qe = getelementptr inbounds nuw i8, ptr %i.av, i64 158
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ax, i64 174
  %i.qg = getelementptr inbounds nuw i8, ptr %i.az, i64 190
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bb, i64 206
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bd, i64 222
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bf, i64 238
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bh, i64 254
  %i.ql = load i16, ptr %i.pv, align 2, !tbaa !16, !noalias !657
  %i.qm = load i16, ptr %i.pw, align 2, !tbaa !16, !noalias !657
  %i.qn = load i16, ptr %i.px, align 2, !tbaa !16, !noalias !657
  %i.qo = load i16, ptr %i.py, align 2, !tbaa !16, !noalias !657
  %i.qp = load i16, ptr %i.pz, align 2, !tbaa !16, !noalias !657
  %i.qq = load i16, ptr %i.qa, align 2, !tbaa !16, !noalias !657
  %i.qr = load i16, ptr %i.qb, align 2, !tbaa !16, !noalias !657
  %i.qs = load i16, ptr %i.qc, align 2, !tbaa !16, !noalias !657
  %i.qt = insertelement <8 x i16> poison, i16 %i.ql, i64 0
  %i.qu = insertelement <8 x i16> %i.qt, i16 %i.qm, i64 1
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 2
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 3
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 4
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 5
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 6
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 7 ; 2 uses
  %i.rb = load i16, ptr %i.qd, align 2, !tbaa !16, !noalias !657
  %i.rc = load i16, ptr %i.qe, align 2, !tbaa !16, !noalias !657
  %i.rd = load i16, ptr %i.qf, align 2, !tbaa !16, !noalias !657
  %i.re = load i16, ptr %i.qg, align 2, !tbaa !16, !noalias !657
  %i.rf = load i16, ptr %i.qh, align 2, !tbaa !16, !noalias !657
  %i.rg = load i16, ptr %i.qi, align 2, !tbaa !16, !noalias !657
  %i.rh = load i16, ptr %i.qj, align 2, !tbaa !16, !noalias !657
  %i.ri = load i16, ptr %i.qk, align 2, !tbaa !16, !noalias !657
  %i.rj = insertelement <8 x i16> poison, i16 %i.rb, i64 0
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 1
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 2
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 3
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 4
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 5
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 6
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 7 ; 2 uses
  %i.rr = icmp ult <8 x i16> %i.ra, %broadcast.splat66
  %i.rs = icmp ult <8 x i16> %i.rq, %broadcast.splat66
  %i.rt = icmp ugt <8 x i16> %i.ra, %broadcast.splat68
  %i.ru = icmp ugt <8 x i16> %i.rq, %broadcast.splat68
  %i.rv = or <8 x i1> %i.rr, %i.rt
  %i.rw = or <8 x i1> %i.rs, %i.ru
  %i.rx = or <8 x i1> %i.pt, %i.rv                ; 2 uses
  %i.ry = or <8 x i1> %i.pu, %i.rw                ; 2 uses
  %index.next73 = add nuw i64 %index70, 16        ; 2 uses
  %i.rz = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.rz, label %middle.block74, label %vector.body69, !llvm.loop !663

middle.block74:                                   ; preds = %vector.body69
  %bin.rdx75 = or <8 x i1> %i.ry, %i.rx
  %i.sa = bitcast <8 x i1> %bin.rdx75 to i8
  %i.sb = icmp ne i8 %i.sa, 0                     ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec64, %smax189.i
  br i1 %cmp.n76, label %.preheader137.loopexit.i, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block74
  %min.epilog.iters.check82.not.not = icmp eq i64 %n.mod.vf63, 0
  br i1 %min.epilog.iters.check82.not.not, label %.preheader.i.preheader, label %vec.epilog.ph83, !prof !664

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check81
  %vec.epilog.resume.val77 = phi i64 [ %n.vec64, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check60 ]
  %bc.merge.rdx78 = phi i1 [ %i.sb, %vec.epilog.iter.check81 ], [ false, %vector.main.loop.iter.check60 ]
  %n.vec85 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.sc = shl nuw nsw i64 %n.vec85, 3             ; 2 uses
  %4 = or disjoint i64 %i.sc, 8
  %i.sd = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx78, i64 0
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph83
  %index91 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph83 ], [ %index.next93, %vec.epilog.vector.body90 ] ; 2 uses
  %vec.phi92 = phi <8 x i1> [ %i.sd, %vec.epilog.ph83 ], [ %i.abb, %vec.epilog.vector.body90 ]
  %i.se = shl i64 %index91, 3                     ; 8 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 48
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 80
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 96
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.se ; 8 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 112
  %i.su = load i16, ptr %i.sf, align 2, !tbaa !16, !noalias !657
  %i.sv = load i16, ptr %i.sh, align 2, !tbaa !16, !noalias !657
  %i.sw = load i16, ptr %i.sj, align 2, !tbaa !16, !noalias !657
  %i.sx = load i16, ptr %i.sl, align 2, !tbaa !16, !noalias !657
  %i.sy = load i16, ptr %i.sn, align 2, !tbaa !16, !noalias !657
  %i.sz = load i16, ptr %i.sp, align 2, !tbaa !16, !noalias !657
  %i.ta = load i16, ptr %i.sr, align 2, !tbaa !16, !noalias !657
  %i.tb = load i16, ptr %i.st, align 2, !tbaa !16, !noalias !657
  %i.tc = insertelement <8 x i16> poison, i16 %i.su, i64 0
  %i.td = insertelement <8 x i16> %i.tc, i16 %i.sv, i64 1
  %i.te = insertelement <8 x i16> %i.td, i16 %i.sw, i64 2
  %i.tf = insertelement <8 x i16> %i.te, i16 %i.sx, i64 3
  %i.tg = insertelement <8 x i16> %i.tf, i16 %i.sy, i64 4
  %i.th = insertelement <8 x i16> %i.tg, i16 %i.sz, i64 5
  %i.ti = insertelement <8 x i16> %i.th, i16 %i.ta, i64 6
  %i.tj = insertelement <8 x i16> %i.ti, i16 %i.tb, i64 7 ; 2 uses
  %i.tk = icmp ult <8 x i16> %i.tj, %broadcast.splat87
  %i.tl = icmp ugt <8 x i16> %i.tj, %broadcast.splat89
  %i.tm = or <8 x i1> %i.tk, %i.tl
  %i.tn = or <8 x i1> %vec.phi92, %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sg, i64 18
  %i.tq = getelementptr inbounds nuw i8, ptr %i.si, i64 34
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sk, i64 50
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sm, i64 66
  %i.tt = getelementptr inbounds nuw i8, ptr %i.so, i64 82
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sq, i64 98
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ss, i64 114
  %i.tw = load i16, ptr %i.to, align 2, !tbaa !16, !noalias !657
  %i.tx = load i16, ptr %i.tp, align 2, !tbaa !16, !noalias !657
  %i.ty = load i16, ptr %i.tq, align 2, !tbaa !16, !noalias !657
  %i.tz = load i16, ptr %i.tr, align 2, !tbaa !16, !noalias !657
  %i.ua = load i16, ptr %i.ts, align 2, !tbaa !16, !noalias !657
  %i.ub = load i16, ptr %i.tt, align 2, !tbaa !16, !noalias !657
  %i.uc = load i16, ptr %i.tu, align 2, !tbaa !16, !noalias !657
  %i.ud = load i16, ptr %i.tv, align 2, !tbaa !16, !noalias !657
  %i.ue = insertelement <8 x i16> poison, i16 %i.tw, i64 0
  %i.uf = insertelement <8 x i16> %i.ue, i16 %i.tx, i64 1
  %i.ug = insertelement <8 x i16> %i.uf, i16 %i.ty, i64 2
  %i.uh = insertelement <8 x i16> %i.ug, i16 %i.tz, i64 3
  %i.ui = insertelement <8 x i16> %i.uh, i16 %i.ua, i64 4
  %i.uj = insertelement <8 x i16> %i.ui, i16 %i.ub, i64 5
  %i.uk = insertelement <8 x i16> %i.uj, i16 %i.uc, i64 6
  %i.ul = insertelement <8 x i16> %i.uk, i16 %i.ud, i64 7 ; 2 uses
  %i.um = icmp ult <8 x i16> %i.ul, %broadcast.splat87
  %i.un = icmp ugt <8 x i16> %i.ul, %broadcast.splat89
  %i.uo = or <8 x i1> %i.um, %i.un
  %i.up = or <8 x i1> %i.tn, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sg, i64 20
  %i.us = getelementptr inbounds nuw i8, ptr %i.si, i64 36
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sk, i64 52
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sm, i64 68
  %i.uv = getelementptr inbounds nuw i8, ptr %i.so, i64 84
  %i.uw = getelementptr inbounds nuw i8, ptr %i.sq, i64 100
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ss, i64 116
  %i.uy = load i16, ptr %i.uq, align 2, !tbaa !16, !noalias !657
  %i.uz = load i16, ptr %i.ur, align 2, !tbaa !16, !noalias !657
  %i.va = load i16, ptr %i.us, align 2, !tbaa !16, !noalias !657
  %i.vb = load i16, ptr %i.ut, align 2, !tbaa !16, !noalias !657
  %i.vc = load i16, ptr %i.uu, align 2, !tbaa !16, !noalias !657
  %i.vd = load i16, ptr %i.uv, align 2, !tbaa !16, !noalias !657
  %i.ve = load i16, ptr %i.uw, align 2, !tbaa !16, !noalias !657
  %i.vf = load i16, ptr %i.ux, align 2, !tbaa !16, !noalias !657
  %i.vg = insertelement <8 x i16> poison, i16 %i.uy, i64 0
  %i.vh = insertelement <8 x i16> %i.vg, i16 %i.uz, i64 1
  %i.vi = insertelement <8 x i16> %i.vh, i16 %i.va, i64 2
  %i.vj = insertelement <8 x i16> %i.vi, i16 %i.vb, i64 3
  %i.vk = insertelement <8 x i16> %i.vj, i16 %i.vc, i64 4
  %i.vl = insertelement <8 x i16> %i.vk, i16 %i.vd, i64 5
  %i.vm = insertelement <8 x i16> %i.vl, i16 %i.ve, i64 6
  %i.vn = insertelement <8 x i16> %i.vm, i16 %i.vf, i64 7 ; 2 uses
  %i.vo = icmp ult <8 x i16> %i.vn, %broadcast.splat87
  %i.vp = icmp ugt <8 x i16> %i.vn, %broadcast.splat89
  %i.vq = or <8 x i1> %i.vo, %i.vp
  %i.vr = or <8 x i1> %i.up, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.sf, i64 6
  %i.vt = getelementptr inbounds nuw i8, ptr %i.sg, i64 22
  %i.vu = getelementptr inbounds nuw i8, ptr %i.si, i64 38
  %i.vv = getelementptr inbounds nuw i8, ptr %i.sk, i64 54
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sm, i64 70
  %i.vx = getelementptr inbounds nuw i8, ptr %i.so, i64 86
  %i.vy = getelementptr inbounds nuw i8, ptr %i.sq, i64 102
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ss, i64 118
  %i.wa = load i16, ptr %i.vs, align 2, !tbaa !16, !noalias !657
  %i.wb = load i16, ptr %i.vt, align 2, !tbaa !16, !noalias !657
  %i.wc = load i16, ptr %i.vu, align 2, !tbaa !16, !noalias !657
  %i.wd = load i16, ptr %i.vv, align 2, !tbaa !16, !noalias !657
  %i.we = load i16, ptr %i.vw, align 2, !tbaa !16, !noalias !657
  %i.wf = load i16, ptr %i.vx, align 2, !tbaa !16, !noalias !657
  %i.wg = load i16, ptr %i.vy, align 2, !tbaa !16, !noalias !657
  %i.wh = load i16, ptr %i.vz, align 2, !tbaa !16, !noalias !657
  %i.wi = insertelement <8 x i16> poison, i16 %i.wa, i64 0
  %i.wj = insertelement <8 x i16> %i.wi, i16 %i.wb, i64 1
  %i.wk = insertelement <8 x i16> %i.wj, i16 %i.wc, i64 2
  %i.wl = insertelement <8 x i16> %i.wk, i16 %i.wd, i64 3
  %i.wm = insertelement <8 x i16> %i.wl, i16 %i.we, i64 4
  %i.wn = insertelement <8 x i16> %i.wm, i16 %i.wf, i64 5
  %i.wo = insertelement <8 x i16> %i.wn, i16 %i.wg, i64 6
  %i.wp = insertelement <8 x i16> %i.wo, i16 %i.wh, i64 7 ; 2 uses
  %i.wq = icmp ult <8 x i16> %i.wp, %broadcast.splat87
  %i.wr = icmp ugt <8 x i16> %i.wp, %broadcast.splat89
  %i.ws = or <8 x i1> %i.wq, %i.wr
  %i.wt = or <8 x i1> %i.vr, %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.ww = getelementptr inbounds nuw i8, ptr %i.si, i64 40
  %i.wx = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  %i.wy = getelementptr inbounds nuw i8, ptr %i.sm, i64 72
  %i.wz = getelementptr inbounds nuw i8, ptr %i.so, i64 88
  %i.xa = getelementptr inbounds nuw i8, ptr %i.sq, i64 104
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ss, i64 120
  %i.xc = load i16, ptr %i.wu, align 2, !tbaa !16, !noalias !657
  %i.xd = load i16, ptr %i.wv, align 2, !tbaa !16, !noalias !657
  %i.xe = load i16, ptr %i.ww, align 2, !tbaa !16, !noalias !657
  %i.xf = load i16, ptr %i.wx, align 2, !tbaa !16, !noalias !657
  %i.xg = load i16, ptr %i.wy, align 2, !tbaa !16, !noalias !657
  %i.xh = load i16, ptr %i.wz, align 2, !tbaa !16, !noalias !657
  %i.xi = load i16, ptr %i.xa, align 2, !tbaa !16, !noalias !657
  %i.xj = load i16, ptr %i.xb, align 2, !tbaa !16, !noalias !657
  %i.xk = insertelement <8 x i16> poison, i16 %i.xc, i64 0
  %i.xl = insertelement <8 x i16> %i.xk, i16 %i.xd, i64 1
  %i.xm = insertelement <8 x i16> %i.xl, i16 %i.xe, i64 2
  %i.xn = insertelement <8 x i16> %i.xm, i16 %i.xf, i64 3
  %i.xo = insertelement <8 x i16> %i.xn, i16 %i.xg, i64 4
  %i.xp = insertelement <8 x i16> %i.xo, i16 %i.xh, i64 5
  %i.xq = insertelement <8 x i16> %i.xp, i16 %i.xi, i64 6
  %i.xr = insertelement <8 x i16> %i.xq, i16 %i.xj, i64 7 ; 2 uses
  %i.xs = icmp ult <8 x i16> %i.xr, %broadcast.splat87
  %i.xt = icmp ugt <8 x i16> %i.xr, %broadcast.splat89
  %i.xu = or <8 x i1> %i.xs, %i.xt
  %i.xv = or <8 x i1> %i.wt, %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.sf, i64 10
  %i.xx = getelementptr inbounds nuw i8, ptr %i.sg, i64 26
  %i.xy = getelementptr inbounds nuw i8, ptr %i.si, i64 42
  %i.xz = getelementptr inbounds nuw i8, ptr %i.sk, i64 58
  %i.ya = getelementptr inbounds nuw i8, ptr %i.sm, i64 74
  %i.yb = getelementptr inbounds nuw i8, ptr %i.so, i64 90
  %i.yc = getelementptr inbounds nuw i8, ptr %i.sq, i64 106
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ss, i64 122
  %i.ye = load i16, ptr %i.xw, align 2, !tbaa !16, !noalias !657
  %i.yf = load i16, ptr %i.xx, align 2, !tbaa !16, !noalias !657
  %i.yg = load i16, ptr %i.xy, align 2, !tbaa !16, !noalias !657
  %i.yh = load i16, ptr %i.xz, align 2, !tbaa !16, !noalias !657
  %i.yi = load i16, ptr %i.ya, align 2, !tbaa !16, !noalias !657
  %i.yj = load i16, ptr %i.yb, align 2, !tbaa !16, !noalias !657
  %i.yk = load i16, ptr %i.yc, align 2, !tbaa !16, !noalias !657
  %i.yl = load i16, ptr %i.yd, align 2, !tbaa !16, !noalias !657
  %i.ym = insertelement <8 x i16> poison, i16 %i.ye, i64 0
  %i.yn = insertelement <8 x i16> %i.ym, i16 %i.yf, i64 1
  %i.yo = insertelement <8 x i16> %i.yn, i16 %i.yg, i64 2
  %i.yp = insertelement <8 x i16> %i.yo, i16 %i.yh, i64 3
  %i.yq = insertelement <8 x i16> %i.yp, i16 %i.yi, i64 4
  %i.yr = insertelement <8 x i16> %i.yq, i16 %i.yj, i64 5
  %i.ys = insertelement <8 x i16> %i.yr, i16 %i.yk, i64 6
  %i.yt = insertelement <8 x i16> %i.ys, i16 %i.yl, i64 7 ; 2 uses
  %i.yu = icmp ult <8 x i16> %i.yt, %broadcast.splat87
  %i.yv = icmp ugt <8 x i16> %i.yt, %broadcast.splat89
  %i.yw = or <8 x i1> %i.yu, %i.yv
  %i.yx = or <8 x i1> %i.xv, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.yz = getelementptr inbounds nuw i8, ptr %i.sg, i64 28
  %i.za = getelementptr inbounds nuw i8, ptr %i.si, i64 44
  %i.zb = getelementptr inbounds nuw i8, ptr %i.sk, i64 60
  %i.zc = getelementptr inbounds nuw i8, ptr %i.sm, i64 76
  %i.zd = getelementptr inbounds nuw i8, ptr %i.so, i64 92
  %i.ze = getelementptr inbounds nuw i8, ptr %i.sq, i64 108
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ss, i64 124
  %i.zg = load i16, ptr %i.yy, align 2, !tbaa !16, !noalias !657
  %i.zh = load i16, ptr %i.yz, align 2, !tbaa !16, !noalias !657
  %i.zi = load i16, ptr %i.za, align 2, !tbaa !16, !noalias !657
  %i.zj = load i16, ptr %i.zb, align 2, !tbaa !16, !noalias !657
  %i.zk = load i16, ptr %i.zc, align 2, !tbaa !16, !noalias !657
  %i.zl = load i16, ptr %i.zd, align 2, !tbaa !16, !noalias !657
  %i.zm = load i16, ptr %i.ze, align 2, !tbaa !16, !noalias !657
  %i.zn = load i16, ptr %i.zf, align 2, !tbaa !16, !noalias !657
  %i.zo = insertelement <8 x i16> poison, i16 %i.zg, i64 0
  %i.zp = insertelement <8 x i16> %i.zo, i16 %i.zh, i64 1
  %i.zq = insertelement <8 x i16> %i.zp, i16 %i.zi, i64 2
  %i.zr = insertelement <8 x i16> %i.zq, i16 %i.zj, i64 3
  %i.zs = insertelement <8 x i16> %i.zr, i16 %i.zk, i64 4
  %i.zt = insertelement <8 x i16> %i.zs, i16 %i.zl, i64 5
  %i.zu = insertelement <8 x i16> %i.zt, i16 %i.zm, i64 6
  %i.zv = insertelement <8 x i16> %i.zu, i16 %i.zn, i64 7 ; 2 uses
  %i.zw = icmp ult <8 x i16> %i.zv, %broadcast.splat87
  %i.zx = icmp ugt <8 x i16> %i.zv, %broadcast.splat89
  %i.zy = or <8 x i1> %i.zw, %i.zx
  %i.zz = or <8 x i1> %i.yx, %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.sf, i64 14
  %i.aab = getelementptr inbounds nuw i8, ptr %i.sg, i64 30
  %i.aac = getelementptr inbounds nuw i8, ptr %i.si, i64 46
  %i.aad = getelementptr inbounds nuw i8, ptr %i.sk, i64 62
  %i.aae = getelementptr inbounds nuw i8, ptr %i.sm, i64 78
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.so, i64 94
  %i.aag = getelementptr inbounds nuw i8, ptr %i.sq, i64 110
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ss, i64 126
  %i.aai = load i16, ptr %i.aaa, align 2, !tbaa !16, !noalias !657
  %i.aaj = load i16, ptr %i.aab, align 2, !tbaa !16, !noalias !657
  %i.aak = load i16, ptr %i.aac, align 2, !tbaa !16, !noalias !657
  %i.aal = load i16, ptr %i.aad, align 2, !tbaa !16, !noalias !657
  %i.aam = load i16, ptr %i.aae, align 2, !tbaa !16, !noalias !657
  %i.aan = load i16, ptr %i.aaf, align 2, !tbaa !16, !noalias !657
  %i.aao = load i16, ptr %i.aag, align 2, !tbaa !16, !noalias !657
  %i.aap = load i16, ptr %i.aah, align 2, !tbaa !16, !noalias !657
  %i.aaq = insertelement <8 x i16> poison, i16 %i.aai, i64 0
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aaj, i64 1
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aak, i64 2
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 3
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 4
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 5
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 6
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 7 ; 2 uses
  %i.aay = icmp ult <8 x i16> %i.aax, %broadcast.splat87
  %i.aaz = icmp ugt <8 x i16> %i.aax, %broadcast.splat89
  %i.aba = or <8 x i1> %i.aay, %i.aaz
  %i.abb = or <8 x i1> %i.zz, %i.aba              ; 2 uses
  %index.next93 = add nuw i64 %index91, 8         ; 2 uses
  %i.abc = icmp eq i64 %index.next93, %n.vec85
  br i1 %i.abc, label %vec.epilog.middle.block94, label %vec.epilog.vector.body90, !llvm.loop !665

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body90
  %i.abd = bitcast <8 x i1> %i.abb to i8
  %i.abe = icmp ne i8 %i.abd, 0                   ; 2 uses
  %cmp.n95 = icmp eq i64 %n.vec85, %smax189.i
  br i1 %cmp.n95, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check79, %vec.epilog.iter.check81, %vec.epilog.middle.block94
  %indvars.iv190.i.ph = phi i64 [ 8, %iter.check79 ], [ %3, %vec.epilog.iter.check81 ], [ %4, %vec.epilog.middle.block94 ]
  %.081158.i.ph = phi i64 [ 0, %iter.check79 ], [ %n.vec64, %vec.epilog.iter.check81 ], [ %n.vec85, %vec.epilog.middle.block94 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check79 ], [ %i.ac, %vec.epilog.iter.check81 ], [ %i.sc, %vec.epilog.middle.block94 ]
  %.085156.i.ph = phi i1 [ false, %iter.check79 ], [ %i.sb, %vec.epilog.iter.check81 ], [ %i.abe, %vec.epilog.middle.block94 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block94, %middle.block74
  %.lcssa36 = phi i1 [ %i.abe, %vec.epilog.middle.block94 ], [ %i.sb, %middle.block74 ], [ %op.rdx, %.preheader.i ]
  %i.abf = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.abf, %.preheader137.loopexit.i ] ; 7 uses
  %i.abg = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.abh = icmp slt i64 %.082.lcssa.i, %i.abg
  br i1 %i.abh, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.abi = sub nsw i64 %i.abg, %.082.lcssa.i      ; 6 uses
  %min.iters.check = icmp ult i64 %i.abi, 4
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.abi, 16
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.abi, 12
  %n.vec = and i64 %i.abi, -16                    ; 4 uses
  %i.abj = add nsw i64 %.082.lcssa.i, %n.vec
  %i.abk = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.abl = getelementptr [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ %i.abk, %vector.ph ], [ %i.abu, %vector.body ]
  %vec.phi44 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.abv, %vector.body ]
  %i.abm = getelementptr [2 x i8], ptr %i.abl, i64 %index ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %wide.load = load <8 x i16>, ptr %i.abm, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.abn, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.abo = icmp ult <8 x i16> %wide.load, %broadcast.splat
  %i.abp = icmp ult <8 x i16> %wide.load45, %broadcast.splat
  %i.abq = icmp ugt <8 x i16> %wide.load, %broadcast.splat43
  %i.abr = icmp ugt <8 x i16> %wide.load45, %broadcast.splat43
  %i.abs = or <8 x i1> %i.abo, %i.abq
  %i.abt = or <8 x i1> %i.abp, %i.abr
  %i.abu = or <8 x i1> %vec.phi, %i.abs           ; 2 uses
  %i.abv = or <8 x i1> %vec.phi44, %i.abt         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abw = icmp eq i64 %index.next, %n.vec
  br i1 %i.abw, label %middle.block, label %vector.body, !llvm.loop !666

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.abv, %i.abu
  %i.abx = bitcast <8 x i1> %bin.rdx to i8
  %i.aby = icmp ne i8 %i.abx, 0                   ; 3 uses
  %cmp.n = icmp eq i64 %i.abi, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader, label %vec.epilog.ph, !prof !588

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aby, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %n.mod.vf46 = and i64 %i.abg, 3
  %n.vec47 = sub nsw i64 %i.abi, %n.mod.vf46      ; 2 uses
  %i.abz = add nsw i64 %.082.lcssa.i, %n.vec47
  %i.aca = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.acb = getelementptr [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi53 = phi <4 x i1> [ %i.aca, %vec.epilog.ph ], [ %i.acg, %vec.epilog.vector.body ]
  %i.acc = getelementptr [2 x i8], ptr %i.acb, i64 %index52
  %wide.load54 = load <4 x i16>, ptr %i.acc, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.acd = icmp ult <4 x i16> %wide.load54, %broadcast.splat49
  %i.ace = icmp ugt <4 x i16> %wide.load54, %broadcast.splat51
  %i.acf = or <4 x i1> %i.acd, %i.ace
  %i.acg = or <4 x i1> %vec.phi53, %i.acf         ; 2 uses
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.ach = icmp eq i64 %index.next55, %n.vec47
  br i1 %i.ach, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !667

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aci = bitcast <4 x i1> %i.acg to i4
  %i.acj = icmp ne i4 %i.aci, 0                   ; 2 uses
  %i.ack = and i16 %.sroa.0.0.extract.trunc.i, 3
  %cmp.n56 = icmp eq i16 %i.ack, 0
  br i1 %cmp.n56, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.abj, %vec.epilog.iter.check ], [ %i.abz, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.aby, %vec.epilog.iter.check ], [ %i.acj, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv190.i = phi i64 [ %i.act, %.preheader.i ], [ %indvars.iv190.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.081158.i = phi i64 [ %i.acs, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %indvars.iv190.i, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ]
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082157.i
  %i.acm = load <8 x i16>, ptr %i.acl, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.acn = icmp ult <8 x i16> %i.acm, %i.t
  %i.aco = icmp ugt <8 x i16> %i.acm, %i.v
  %i.acp = shufflevector <8 x i1> %i.aco, <8 x i1> %i.acn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.acq = bitcast <16 x i1> %i.acp to i16
  %i.acr = icmp ne i16 %i.acq, 0
  %op.rdx = or i1 %i.acr, %.085156.i              ; 2 uses
  %i.acs = add nuw nsw i64 %.081158.i, 1          ; 2 uses
  %i.act = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.acs, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !668

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i
  %.284162.i = phi i64 [ %i.acz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.acy, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader ]
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.284162.i
  %i.acv = load i16, ptr %i.acu, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.acw = icmp ult i16 %i.acv, %.42.val
  %i.acx = icmp ugt i16 %i.acv, %.42.val1
  %spec.select128.i = or i1 %i.acw, %i.acx
  %i.acy = or i1 %.287161.i, %spec.select128.i    ; 2 uses
  %i.acz = add nuw nsw i64 %.284162.i, 1          ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.acz, %i.abg
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i, !llvm.loop !669

bb.d:                                             ; preds = %.lr.ph176.i
  %i.ada = icmp sgt i32 %i.x, 0
  br i1 %i.ada, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.adb = icmp sgt i32 %i.y, 7
  br i1 %i.adb, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.adc = lshr i32 %i.y, 3
  %i.add = trunc i64 %.092169.i to i3             ; 7 uses
  %i.ade = trunc i64 %.092169.i to i8
  %i.adf = and i8 %i.ade, 7
  %i.adg = add i3 %i.add, 1
  %i.adh = zext i3 %i.adg to i8
  %i.adi = add i3 %i.add, 2
  %i.adj = zext i3 %i.adi to i8
  %i.adk = add i3 %i.add, 3
  %i.adl = zext i3 %i.adk to i8
  %i.adm = xor i3 %i.add, -4
  %i.adn = zext i3 %i.adm to i8
  %i.ado = add i3 %i.add, -3
  %i.adp = zext i3 %i.ado to i8
  %i.adq = add i3 %i.add, -2
  %i.adr = zext i3 %i.adq to i8
  %i.ads = add i3 %i.add, -1
  %i.adt = zext i3 %i.ads to i8
  %smax.i = zext nneg i32 %i.adc to i64           ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.adu = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx99, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.adu, %.preheader139.loopexit.i ] ; 6 uses
  %i.adv = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.adw = icmp slt i64 %.076.lcssa.i, %i.adv
  br i1 %i.adw, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.adx = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.adx, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.aea = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.aeb = lshr i64 %i.aea, 3
  %i.aec = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aeb
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !7, !noalias !657
  %i.aee = trunc i64 %.092169.i to i8
  %i.aef = and i8 %i.aee, 7
  %i.aeg = lshr i8 %i.aed, %i.aef
  %i.aeh = trunc i8 %i.aeg to i1
  %i.aei = icmp ult i16 %i.adz, %.42.val
  %i.aej = icmp ugt i16 %i.adz, %.42.val1
  %spec.select130.i.prol = or i1 %i.aei, %i.aej
  %i.aek = select i1 %i.aeh, i1 %spec.select130.i.prol, i1 false
  %i.ael = or i1 %.3.lcssa.i, %i.aek              ; 2 uses
  %i.aem = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader ], [ %i.ael, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader ], [ %i.aem, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader ], [ %i.ael, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol ]
  %i.aen = add nsw i64 %i.adv, -1
  %i.aeo = icmp eq i64 %.076.lcssa.i, %i.aen
  br i1 %i.aeo, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.ahj, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.ahi, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %op.rdx99, %.preheader133.i ]
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076147.i
  %i.aeq = add nsw i64 %.076147.i, %.092169.i
  %i.aer = lshr i64 %i.aeq, 3
  %i.aes = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !7, !noalias !657
  %i.aeu = or disjoint i64 %.076147.i, 1
  %i.aev = add nsw i64 %i.aeu, %.092169.i
  %i.aew = lshr i64 %i.aev, 3
  %i.aex = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !7, !noalias !657
  %i.aez = or disjoint i64 %.076147.i, 2
  %i.afa = add nsw i64 %i.aez, %.092169.i
  %i.afb = lshr i64 %i.afa, 3
  %i.afc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !7, !noalias !657
  %i.afe = or disjoint i64 %.076147.i, 3
  %i.aff = add nsw i64 %i.afe, %.092169.i
  %i.afg = lshr i64 %i.aff, 3
  %i.afh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !7, !noalias !657
  %i.afj = or disjoint i64 %.076147.i, 4
  %i.afk = add nsw i64 %i.afj, %.092169.i
  %i.afl = lshr i64 %i.afk, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afl
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !7, !noalias !657
  %i.afo = or disjoint i64 %.076147.i, 5
  %i.afp = add nsw i64 %i.afo, %.092169.i
  %i.afq = lshr i64 %i.afp, 3
  %i.afr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afq
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !7, !noalias !657
  %i.aft = or disjoint i64 %.076147.i, 6
  %i.afu = add nsw i64 %i.aft, %.092169.i
  %i.afv = lshr i64 %i.afu, 3
  %i.afw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !7, !noalias !657
  %i.afy = or disjoint i64 %.076147.i, 7
  %i.afz = add nsw i64 %i.afy, %.092169.i
  %i.aga = lshr i64 %i.afz, 3
  %i.agb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !7, !noalias !657
  %i.agd = load <8 x i16>, ptr %i.aep, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.age = lshr i8 %i.agc, %i.adt
  %i.agf = lshr i8 %i.afx, %i.adr
  %i.agg = lshr i8 %i.afs, %i.adp
  %i.agh = lshr i8 %i.afn, %i.adn
  %i.agi = lshr i8 %i.afi, %i.adl
  %i.agj = lshr i8 %i.afd, %i.adj
  %i.agk = lshr i8 %i.aey, %i.adh
  %i.agl = lshr i8 %i.aet, %i.adf
  %i.agm = trunc i8 %i.age to i1
  %i.agn = trunc i8 %i.agf to i1
  %i.ago = trunc i8 %i.agg to i1
  %i.agp = trunc i8 %i.agh to i1
  %i.agq = trunc i8 %i.agi to i1
  %i.agr = trunc i8 %i.agj to i1
  %i.ags = trunc i8 %i.agk to i1
  %i.agt = trunc i8 %i.agl to i1
  %i.agu = icmp ult <8 x i16> %i.agd, %i.p
  %i.agv = icmp ugt <8 x i16> %i.agd, %i.r
  %i.agw = or <8 x i1> %i.agu, %i.agv
  %i.agx = insertelement <8 x i1> poison, i1 %i.agt, i64 0
  %i.agy = insertelement <8 x i1> %i.agx, i1 %i.ags, i64 1
  %i.agz = insertelement <8 x i1> %i.agy, i1 %i.agr, i64 2
  %i.aha = insertelement <8 x i1> %i.agz, i1 %i.agq, i64 3
  %i.ahb = insertelement <8 x i1> %i.aha, i1 %i.agp, i64 4
  %i.ahc = insertelement <8 x i1> %i.ahb, i1 %i.ago, i64 5
  %i.ahd = insertelement <8 x i1> %i.ahc, i1 %i.agn, i64 6
  %i.ahe = insertelement <8 x i1> %i.ahd, i1 %i.agm, i64 7
  %i.ahf = select <8 x i1> %i.ahe, <8 x i1> %i.agw, <8 x i1> zeroinitializer
  %i.ahg = bitcast <8 x i1> %i.ahf to i8
  %i.ahh = icmp ne i8 %i.ahg, 0
  %op.rdx99 = or i1 %i.ahh, %.3146.i              ; 2 uses
  %i.ahi = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %i.ahj = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.ahi, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !670

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i
  %.2151.i = phi i64 [ %i.ain, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.aim, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit ]
  %i.ahk = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.2151.i
  %i.ahl = load i16, ptr %i.ahk, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.ahm = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.ahn = lshr i64 %i.ahm, 3
  %i.aho = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !7, !noalias !657
  %i.ahq = trunc i64 %i.ahm to i8
  %i.ahr = and i8 %i.ahq, 7
  %i.ahs = lshr i8 %i.ahp, %i.ahr
  %i.aht = trunc i8 %i.ahs to i1
  %i.ahu = icmp ult i16 %i.ahl, %.42.val
  %i.ahv = icmp ugt i16 %i.ahl, %.42.val1
  %spec.select130.i = or i1 %i.ahu, %i.ahv
  %i.ahw = select i1 %i.aht, i1 %spec.select130.i, i1 false
  %i.ahx = or i1 %.5150.i, %i.ahw
  %i.ahy = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ahy
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !16, !noalias !657 ; 2 uses
  %i.aib = add nsw i64 %i.ahy, %.092169.i         ; 2 uses
  %i.aic = lshr i64 %i.aib, 3
  %i.aid = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aic
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !7, !noalias !657
  %i.aif = trunc i64 %i.aib to i8
  %i.aig = and i8 %i.aif, 7
  %i.aih = lshr i8 %i.aie, %i.aig
  %i.aii = trunc i8 %i.aih to i1
  %i.aij = icmp ult i16 %i.aia, %.42.val
  %i.aik = icmp ugt i16 %i.aia, %.42.val1
  %spec.select130.i.1 = or i1 %i.aij, %i.aik
  %i.ail = select i1 %i.aii, i1 %spec.select130.i.1, i1 false
  %i.aim = or i1 %i.ahx, %i.ail                   ; 2 uses
  %i.ain = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.ain, %i.adv
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i, !llvm.loop !671

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.acy, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.acj, %vec.epilog.middle.block ], [ %i.aby, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit ], [ %i.aim, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.aio = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !657
  %i.aip = icmp sgt i64 %i.aio, 0
  %i.aiq = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.aip, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ajd, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.air = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.ais = lshr i64 %i.air, 3
  %i.ait = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !7, !noalias !657
  %i.aiv = trunc i64 %i.air to i8
  %i.aiw = and i8 %i.aiv, 7
  %i.aix = lshr i8 %i.aiu, %i.aiw
  %i.aiy = trunc i8 %i.aix to i1
  br i1 %i.aiy, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.073167.i
  %i.aja = load i16, ptr %i.aiz, align 2, !tbaa !16, !noalias !657 ; 3 uses
  %i.ajb = icmp ult i16 %i.aja, %.42.val
  %i.ajc = icmp ugt i16 %i.aja, %.42.val1
  %or.cond131.i = or i1 %i.ajb, %i.ajc
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef zeroext %i.aja)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ajd = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ajd, %i.aiq
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !672

bb.g:                                             ; preds = %.lr.ph.i
  %i.aje = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.aje, %i.aiq
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !673

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.aje, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.0165.i
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !16, !noalias !657 ; 3 uses
  %i.ajh = icmp ult i16 %i.ajg, %.42.val
  %i.aji = icmp ugt i16 %i.ajg, %.42.val1
  %or.cond132.i = or i1 %i.ajh, %i.aji
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef zeroext %i.ajg)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ajj = sext i32 %i.y to i64
  %i.ajk = getelementptr inbounds [2 x i8], ptr %.088173.i, i64 %i.ajj
  %i.ajl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ajm = add nsw i64 %.090172.i, %i.ajl         ; 2 uses
  %i.ajn = add nsw i64 %.092169.i, %i.ajl
  %i.ajo = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !657
  %i.ajp = icmp slt i64 %i.ajm, %i.ajo
  br i1 %i.ajp, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !674

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !675
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !657
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 %.44.val, i32 %.44.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.44.val, ptr %i.a, align 4, !tbaa !3, !noalias !678
  store i32 %.44.val1, ptr %i.b, align 4, !tbaa !3, !noalias !678
  %.not.i = icmp ne i32 %.44.val, 0
  %.not97.i = icmp ne i32 %.44.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !681
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !678 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !678
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !678 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !678
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !678
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !678
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !678
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !678
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i32> poison, i32 %.44.val, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i32> poison, i32 %.44.val1, i64 0
  %i.r = shufflevector <8 x i32> %i.q, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %.44.val, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %.44.val1, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.s = insertelement <8 x i32> poison, i32 %.44.val, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i32> poison, i32 %.44.val1, i64 0
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.44.val, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %.44.val1, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.se, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 18 uses
  %.090172.i = phi i64 [ %i.sg, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.sh, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !678 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 5 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 4 uses
  %min.iters.check46 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check46, label %.preheader.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.preheader.preheader.i
  %n.vec49 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ac = shl nuw nsw i64 %n.vec49, 3             ; 2 uses
  %3 = or disjoint i64 %i.ac, 8
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph47
  %index55 = phi i64 [ 0, %vector.ph47 ], [ %index.next58, %vector.body54 ] ; 2 uses
  %vec.phi56 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kf, %vector.body54 ]
  %vec.phi57 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kg, %vector.body54 ]
  %i.ad = shl i64 %index55, 3                     ; 8 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !678
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !678
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !678
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !678
  %i.ax = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 2
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 3 ; 2 uses
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !678
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !678
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !678
  %i.be = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !678
  %i.bf = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 3 ; 2 uses
  %i.bj = icmp ult <4 x i32> %i.ba, %broadcast.splat51
  %i.bk = icmp ult <4 x i32> %i.bi, %broadcast.splat51
  %i.bl = icmp ugt <4 x i32> %i.ba, %broadcast.splat53
  %i.bm = icmp ugt <4 x i32> %i.bi, %broadcast.splat53
  %i.bn = or <4 x i1> %i.bj, %i.bl
  %i.bo = or <4 x i1> %i.bk, %i.bm
  %i.bp = or <4 x i1> %vec.phi56, %i.bn
  %i.bq = or <4 x i1> %vec.phi57, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 164
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 196
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 228
  %i.bz = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !678
  %i.ca = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !678
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !678
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !678
  %i.cd = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.ca, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cb, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 3 ; 2 uses
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !678
  %i.ci = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !678
  %i.cj = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !678
  %i.ck = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !678
  %i.cl = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 1
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 2
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 3 ; 2 uses
  %i.cp = icmp ult <4 x i32> %i.cg, %broadcast.splat51
  %i.cq = icmp ult <4 x i32> %i.co, %broadcast.splat51
  %i.cr = icmp ugt <4 x i32> %i.cg, %broadcast.splat53
  %i.cs = icmp ugt <4 x i32> %i.co, %broadcast.splat53
  %i.ct = or <4 x i1> %i.cp, %i.cr
  %i.cu = or <4 x i1> %i.cq, %i.cs
  %i.cv = or <4 x i1> %i.bp, %i.ct
  %i.cw = or <4 x i1> %i.bq, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  %i.df = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !678
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !678
  %i.dh = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !678
  %i.di = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !678
  %i.dj = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dg, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.dh, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 3 ; 2 uses
  %i.dn = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !678
  %i.do = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !678
  %i.dp = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !678
  %i.dq = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !678
  %i.dr = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 1
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 2
  %i.du = insertelement <4 x i32> %i.dt, i32 %i.dq, i64 3 ; 2 uses
  %i.dv = icmp ult <4 x i32> %i.dm, %broadcast.splat51
  %i.dw = icmp ult <4 x i32> %i.du, %broadcast.splat51
  %i.dx = icmp ugt <4 x i32> %i.dm, %broadcast.splat53
  %i.dy = icmp ugt <4 x i32> %i.du, %broadcast.splat53
  %i.dz = or <4 x i1> %i.dv, %i.dx
  %i.ea = or <4 x i1> %i.dw, %i.dy
  %i.eb = or <4 x i1> %i.cv, %i.dz
  %i.ec = or <4 x i1> %i.cw, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ah, i64 76
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aj, i64 108
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 140
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 172
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ap, i64 204
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ar, i64 236
  %i.el = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !678
  %i.em = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !678
  %i.en = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !678
  %i.eo = load i32, ptr %i.eg, align 4, !tbaa !3, !noalias !678
  %i.ep = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = insertelement <4 x i32> %i.eq, i32 %i.en, i64 2
  %i.es = insertelement <4 x i32> %i.er, i32 %i.eo, i64 3 ; 2 uses
  %i.et = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !678
  %i.eu = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !678
  %i.ev = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !678
  %i.ew = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !678
  %i.ex = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3 ; 2 uses
  %i.fb = icmp ult <4 x i32> %i.es, %broadcast.splat51
  %i.fc = icmp ult <4 x i32> %i.fa, %broadcast.splat51
  %i.fd = icmp ugt <4 x i32> %i.es, %broadcast.splat53
  %i.fe = icmp ugt <4 x i32> %i.fa, %broadcast.splat53
  %i.ff = or <4 x i1> %i.fb, %i.fd
  %i.fg = or <4 x i1> %i.fc, %i.fe
  %i.fh = or <4 x i1> %i.eb, %i.ff
  %i.fi = or <4 x i1> %i.ec, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !678
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !678
  %i.ft = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !678
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !678
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3 ; 2 uses
  %i.fz = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !678
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !678
  %i.gb = load i32, ptr %i.fp, align 4, !tbaa !3, !noalias !678
  %i.gc = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !678
  %i.gd = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ga, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.gb, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 3 ; 2 uses
  %i.gh = icmp ult <4 x i32> %i.fy, %broadcast.splat51
  %i.gi = icmp ult <4 x i32> %i.gg, %broadcast.splat51
  %i.gj = icmp ugt <4 x i32> %i.fy, %broadcast.splat53
  %i.gk = icmp ugt <4 x i32> %i.gg, %broadcast.splat53
  %i.gl = or <4 x i1> %i.gh, %i.gj
  %i.gm = or <4 x i1> %i.gi, %i.gk
  %i.gn = or <4 x i1> %i.fh, %i.gl
  %i.go = or <4 x i1> %i.fi, %i.gm
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aj, i64 116
  %i.gt = getelementptr inbounds nuw i8, ptr %i.al, i64 148
  %i.gu = getelementptr inbounds nuw i8, ptr %i.an, i64 180
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ap, i64 212
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ar, i64 244
  %i.gx = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !678
  %i.gy = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !678
  %i.gz = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !678
  %i.ha = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !678
  %i.hb = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 1
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 2
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 3 ; 2 uses
  %i.hf = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !678
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !678
  %i.hh = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !678
  %i.hi = load i32, ptr %i.gw, align 4, !tbaa !3, !noalias !678
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3 ; 2 uses
  %i.hn = icmp ult <4 x i32> %i.he, %broadcast.splat51
  %i.ho = icmp ult <4 x i32> %i.hm, %broadcast.splat51
  %i.hp = icmp ugt <4 x i32> %i.he, %broadcast.splat53
  %i.hq = icmp ugt <4 x i32> %i.hm, %broadcast.splat53
  %i.hr = or <4 x i1> %i.hn, %i.hp
  %i.hs = or <4 x i1> %i.ho, %i.hq
  %i.ht = or <4 x i1> %i.gn, %i.hr
  %i.hu = or <4 x i1> %i.go, %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.hz = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ia = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ar, i64 248
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !678
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !678
  %i.if = load i32, ptr %i.hx, align 4, !tbaa !3, !noalias !678
  %i.ig = load i32, ptr %i.hy, align 4, !tbaa !3, !noalias !678
  %i.ih = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 1
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 2
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.ig, i64 3 ; 2 uses
  %i.il = load i32, ptr %i.hz, align 4, !tbaa !3, !noalias !678
  %i.im = load i32, ptr %i.ia, align 4, !tbaa !3, !noalias !678
  %i.in = load i32, ptr %i.ib, align 4, !tbaa !3, !noalias !678
  %i.io = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !678
  %i.ip = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.im, i64 1
  %i.ir = insertelement <4 x i32> %i.iq, i32 %i.in, i64 2
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.io, i64 3 ; 2 uses
  %i.it = icmp ult <4 x i32> %i.ik, %broadcast.splat51
  %i.iu = icmp ult <4 x i32> %i.is, %broadcast.splat51
  %i.iv = icmp ugt <4 x i32> %i.ik, %broadcast.splat53
  %i.iw = icmp ugt <4 x i32> %i.is, %broadcast.splat53
  %i.ix = or <4 x i1> %i.it, %i.iv
  %i.iy = or <4 x i1> %i.iu, %i.iw
  %i.iz = or <4 x i1> %i.ht, %i.ix
  %i.ja = or <4 x i1> %i.hu, %i.iy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.jc = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  %i.je = getelementptr inbounds nuw i8, ptr %i.aj, i64 124
  %i.jf = getelementptr inbounds nuw i8, ptr %i.al, i64 156
  %i.jg = getelementptr inbounds nuw i8, ptr %i.an, i64 188
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ap, i64 220
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ar, i64 252
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !3, !noalias !678
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !3, !noalias !678
  %i.jl = load i32, ptr %i.jd, align 4, !tbaa !3, !noalias !678
  %i.jm = load i32, ptr %i.je, align 4, !tbaa !3, !noalias !678
  %i.jn = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 1
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 2
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jm, i64 3 ; 2 uses
  %i.jr = load i32, ptr %i.jf, align 4, !tbaa !3, !noalias !678
  %i.js = load i32, ptr %i.jg, align 4, !tbaa !3, !noalias !678
  %i.jt = load i32, ptr %i.jh, align 4, !tbaa !3, !noalias !678
  %i.ju = load i32, ptr %i.ji, align 4, !tbaa !3, !noalias !678
  %i.jv = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 1
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.jt, i64 2
  %i.jy = insertelement <4 x i32> %i.jx, i32 %i.ju, i64 3 ; 2 uses
  %i.jz = icmp ult <4 x i32> %i.jq, %broadcast.splat51
  %i.ka = icmp ult <4 x i32> %i.jy, %broadcast.splat51
  %i.kb = icmp ugt <4 x i32> %i.jq, %broadcast.splat53
  %i.kc = icmp ugt <4 x i32> %i.jy, %broadcast.splat53
  %i.kd = or <4 x i1> %i.jz, %i.kb
  %i.ke = or <4 x i1> %i.ka, %i.kc
  %i.kf = or <4 x i1> %i.iz, %i.kd                ; 2 uses
  %i.kg = or <4 x i1> %i.ja, %i.ke                ; 2 uses
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.kh = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.kh, label %middle.block59, label %vector.body54, !llvm.loop !684

middle.block59:                                   ; preds = %vector.body54
  %bin.rdx60 = or <4 x i1> %i.kg, %i.kf
  %i.ki = bitcast <4 x i1> %bin.rdx60 to i4
  %i.kj = icmp ne i4 %i.ki, 0                     ; 2 uses
  %cmp.n61 = icmp eq i64 %n.vec49, %smax189.i
  br i1 %cmp.n61, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block59
  %indvars.iv190.i.ph = phi i64 [ 8, %.preheader.preheader.i ], [ %3, %middle.block59 ]
  %.081158.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec49, %middle.block59 ]
  %.082157.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %i.ac, %middle.block59 ]
  %.085156.i.ph = phi i1 [ false, %.preheader.preheader.i ], [ %i.kj, %middle.block59 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %middle.block59
  %.lcssa36 = phi i1 [ %i.kj, %middle.block59 ], [ %op.rdx, %.preheader.i ]
  %i.kk = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.kk, %.preheader137.loopexit.i ] ; 5 uses
  %i.kl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.km = icmp slt i64 %.082.lcssa.i, %i.kl
  br i1 %i.km, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader: ; preds = %.preheader137.i
  %i.kn = sub nsw i64 %i.kl, %.082.lcssa.i        ; 2 uses
  %min.iters.check = icmp ult i64 %i.kn, 8
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader
  %n.mod.vf = and i64 %i.kl, 7
  %n.vec = sub nuw nsw i64 %i.kn, %n.mod.vf       ; 2 uses
  %i.ko = add nsw i64 %.082.lcssa.i, %n.vec
  %i.kp = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.kq = getelementptr [4 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.kp, %vector.ph ], [ %i.kz, %vector.body ]
  %vec.phi43 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.la, %vector.body ]
  %i.kr = getelementptr [4 x i8], ptr %i.kq, i64 %index ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load = load <4 x i32>, ptr %i.kr, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %wide.load44 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.kt = icmp ult <4 x i32> %wide.load, %broadcast.splat
  %i.ku = icmp ult <4 x i32> %wide.load44, %broadcast.splat
  %i.kv = icmp ugt <4 x i32> %wide.load, %broadcast.splat42
  %i.kw = icmp ugt <4 x i32> %wide.load44, %broadcast.splat42
  %i.kx = or <4 x i1> %i.kt, %i.kv
  %i.ky = or <4 x i1> %i.ku, %i.kw
  %i.kz = or <4 x i1> %vec.phi, %i.kx             ; 2 uses
  %i.la = or <4 x i1> %vec.phi43, %i.ky           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.la, %i.kz
  %i.lc = bitcast <4 x i1> %bin.rdx to i4
  %i.ld = icmp ne i4 %i.lc, 0                     ; 2 uses
  %i.le = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n = icmp eq i16 %i.le, 0
  br i1 %cmp.n, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader67

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader67: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader, %middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader ], [ %i.ko, %middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader ], [ %i.ld, %middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv190.i = phi i64 [ %i.ln, %.preheader.i ], [ %indvars.iv190.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.081158.i = phi i64 [ %i.lm, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %indvars.iv190.i, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ]
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.082157.i
  %i.lg = load <8 x i32>, ptr %i.lf, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.lh = icmp ult <8 x i32> %i.lg, %i.t
  %i.li = icmp ugt <8 x i32> %i.lg, %i.v
  %i.lj = shufflevector <8 x i1> %i.li, <8 x i1> %i.lh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lk = bitcast <16 x i1> %i.lj to i16
  %i.ll = icmp ne i16 %i.lk, 0
  %op.rdx = or i1 %i.ll, %.085156.i               ; 2 uses
  %i.lm = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %i.ln = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.lm, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !686

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader67, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i
  %.284162.i = phi i64 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader67 ] ; 2 uses
  %.287161.i = phi i1 [ %i.ls, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader67 ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.284162.i
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.lq = icmp ult i32 %i.lp, %.44.val
  %i.lr = icmp ugt i32 %i.lp, %.44.val1
  %spec.select128.i = or i1 %i.lq, %i.lr
  %i.ls = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.lt = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.lt, %i.kl
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i, !llvm.loop !687

bb.d:                                             ; preds = %.lr.ph176.i
  %i.lu = icmp sgt i32 %i.x, 0
  br i1 %i.lu, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.lv = icmp sgt i32 %i.y, 7
  br i1 %i.lv, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.lw = lshr i32 %i.y, 3
  %i.lx = trunc i64 %.092169.i to i3              ; 7 uses
  %i.ly = trunc i64 %.092169.i to i8
  %i.lz = and i8 %i.ly, 7
  %i.ma = add i3 %i.lx, 1
  %i.mb = zext i3 %i.ma to i8
  %i.mc = add i3 %i.lx, 2
  %i.md = zext i3 %i.mc to i8
  %i.me = add i3 %i.lx, 3
  %i.mf = zext i3 %i.me to i8
  %i.mg = xor i3 %i.lx, -4
  %i.mh = zext i3 %i.mg to i8
  %i.mi = add i3 %i.lx, -3
  %i.mj = zext i3 %i.mi to i8
  %i.mk = add i3 %i.lx, -2
  %i.ml = zext i3 %i.mk to i8
  %i.mm = add i3 %i.lx, -1
  %i.mn = zext i3 %i.mm to i8
  %smax.i = zext nneg i32 %i.lw to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.mo = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx65, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.mo, %.preheader139.loopexit.i ] ; 6 uses
  %i.mp = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.mq = icmp slt i64 %.076.lcssa.i, %i.mp
  br i1 %i.mq, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.mr = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.mr, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.mu = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.mv = lshr i64 %i.mu, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !7, !noalias !678
  %i.my = trunc i64 %.092169.i to i8
  %i.mz = and i8 %i.my, 7
  %i.na = lshr i8 %i.mx, %i.mz
  %i.nb = trunc i8 %i.na to i1
  %i.nc = icmp ult i32 %i.mt, %.44.val
  %i.nd = icmp ugt i32 %i.mt, %.44.val1
  %spec.select130.i.prol = or i1 %i.nc, %i.nd
  %i.ne = select i1 %i.nb, i1 %spec.select130.i.prol, i1 false
  %i.nf = or i1 %.3.lcssa.i, %i.ne                ; 2 uses
  %i.ng = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader ], [ %i.nf, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader ], [ %i.ng, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader ], [ %i.nf, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol ]
  %i.nh = add nsw i64 %i.mp, -1
  %i.ni = icmp eq i64 %.076.lcssa.i, %i.nh
  br i1 %i.ni, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.qd, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.qc, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %op.rdx65, %.preheader133.i ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076147.i
  %i.nk = add nsw i64 %.076147.i, %.092169.i
  %i.nl = lshr i64 %i.nk, 3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !7, !noalias !678
  %i.no = or disjoint i64 %.076147.i, 1
  %i.np = add nsw i64 %i.no, %.092169.i
  %i.nq = lshr i64 %i.np, 3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !7, !noalias !678
  %i.nt = or disjoint i64 %.076147.i, 2
  %i.nu = add nsw i64 %i.nt, %.092169.i
  %i.nv = lshr i64 %i.nu, 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !7, !noalias !678
  %i.ny = or disjoint i64 %.076147.i, 3
  %i.nz = add nsw i64 %i.ny, %.092169.i
  %i.oa = lshr i64 %i.nz, 3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !7, !noalias !678
  %i.od = or disjoint i64 %.076147.i, 4
  %i.oe = add nsw i64 %i.od, %.092169.i
  %i.of = lshr i64 %i.oe, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !7, !noalias !678
  %i.oi = or disjoint i64 %.076147.i, 5
  %i.oj = add nsw i64 %i.oi, %.092169.i
  %i.ok = lshr i64 %i.oj, 3
  %i.ol = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !7, !noalias !678
  %i.on = or disjoint i64 %.076147.i, 6
  %i.oo = add nsw i64 %i.on, %.092169.i
  %i.op = lshr i64 %i.oo, 3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !7, !noalias !678
  %i.os = or disjoint i64 %.076147.i, 7
  %i.ot = add nsw i64 %i.os, %.092169.i
  %i.ou = lshr i64 %i.ot, 3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !7, !noalias !678
  %i.ox = load <8 x i32>, ptr %i.nj, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.oy = lshr i8 %i.ow, %i.mn
  %i.oz = lshr i8 %i.or, %i.ml
  %i.pa = lshr i8 %i.om, %i.mj
  %i.pb = lshr i8 %i.oh, %i.mh
  %i.pc = lshr i8 %i.oc, %i.mf
  %i.pd = lshr i8 %i.nx, %i.md
  %i.pe = lshr i8 %i.ns, %i.mb
  %i.pf = lshr i8 %i.nn, %i.lz
  %i.pg = trunc i8 %i.oy to i1
  %i.ph = trunc i8 %i.oz to i1
  %i.pi = trunc i8 %i.pa to i1
  %i.pj = trunc i8 %i.pb to i1
  %i.pk = trunc i8 %i.pc to i1
  %i.pl = trunc i8 %i.pd to i1
  %i.pm = trunc i8 %i.pe to i1
  %i.pn = trunc i8 %i.pf to i1
  %i.po = icmp ult <8 x i32> %i.ox, %i.p
  %i.pp = icmp ugt <8 x i32> %i.ox, %i.r
  %i.pq = or <8 x i1> %i.po, %i.pp
  %i.pr = insertelement <8 x i1> poison, i1 %i.pn, i64 0
  %i.ps = insertelement <8 x i1> %i.pr, i1 %i.pm, i64 1
  %i.pt = insertelement <8 x i1> %i.ps, i1 %i.pl, i64 2
  %i.pu = insertelement <8 x i1> %i.pt, i1 %i.pk, i64 3
  %i.pv = insertelement <8 x i1> %i.pu, i1 %i.pj, i64 4
  %i.pw = insertelement <8 x i1> %i.pv, i1 %i.pi, i64 5
  %i.px = insertelement <8 x i1> %i.pw, i1 %i.ph, i64 6
  %i.py = insertelement <8 x i1> %i.px, i1 %i.pg, i64 7
  %i.pz = select <8 x i1> %i.py, <8 x i1> %i.pq, <8 x i1> zeroinitializer
  %i.qa = bitcast <8 x i1> %i.pz to i8
  %i.qb = icmp ne i8 %i.qa, 0
  %op.rdx65 = or i1 %i.qb, %.3146.i               ; 2 uses
  %i.qc = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %i.qd = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.qc, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !688

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i
  %.2151.i = phi i64 [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.rg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.2151.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.qg = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.qh = lshr i64 %i.qg, 3
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !7, !noalias !678
  %i.qk = trunc i64 %i.qg to i8
  %i.ql = and i8 %i.qk, 7
  %i.qm = lshr i8 %i.qj, %i.ql
  %i.qn = trunc i8 %i.qm to i1
  %i.qo = icmp ult i32 %i.qf, %.44.val
  %i.qp = icmp ugt i32 %i.qf, %.44.val1
  %spec.select130.i = or i1 %i.qo, %i.qp
  %i.qq = select i1 %i.qn, i1 %spec.select130.i, i1 false
  %i.qr = or i1 %.5150.i, %i.qq
  %i.qs = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3, !noalias !678 ; 2 uses
  %i.qv = add nsw i64 %i.qs, %.092169.i           ; 2 uses
  %i.qw = lshr i64 %i.qv, 3
  %i.qx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !7, !noalias !678
  %i.qz = trunc i64 %i.qv to i8
  %i.ra = and i8 %i.qz, 7
  %i.rb = lshr i8 %i.qy, %i.ra
  %i.rc = trunc i8 %i.rb to i1
  %i.rd = icmp ult i32 %i.qu, %.44.val
  %i.re = icmp ugt i32 %i.qu, %.44.val1
  %spec.select130.i.1 = or i1 %i.rd, %i.re
  %i.rf = select i1 %i.rc, i1 %spec.select130.i.1, i1 false
  %i.rg = or i1 %i.qr, %i.rf                      ; 2 uses
  %i.rh = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.rh, %i.mp
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i, !llvm.loop !689

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.ls, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.ld, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ], [ %i.rg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.ri = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !678
  %i.rj = icmp sgt i64 %i.ri, 0
  %i.rk = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.rj, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.rx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.rl = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.rm = lshr i64 %i.rl, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !7, !noalias !678
  %i.rp = trunc i64 %i.rl to i8
  %i.rq = and i8 %i.rp, 7
  %i.rr = lshr i8 %i.ro, %i.rq
  %i.rs = trunc i8 %i.rr to i1
  br i1 %i.rs, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.073167.i
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !3, !noalias !678 ; 3 uses
  %i.rv = icmp ult i32 %i.ru, %.44.val
  %i.rw = icmp ugt i32 %i.ru, %.44.val1
  %or.cond131.i = or i1 %i.rv, %i.rw
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE0_clEj(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.ru)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.rx = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.rx, %i.rk
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !690

bb.g:                                             ; preds = %.lr.ph.i
  %i.ry = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ry, %i.rk
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !691

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ry, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.0165.i
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !3, !noalias !678 ; 3 uses
  %i.sb = icmp ult i32 %i.sa, %.44.val
  %i.sc = icmp ugt i32 %i.sa, %.44.val1
  %or.cond132.i = or i1 %i.sb, %i.sc
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE0_clEj(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.sa)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.sd = sext i32 %i.y to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %.088173.i, i64 %i.sd
  %i.sf = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.sg = add nsw i64 %.090172.i, %i.sf           ; 2 uses
  %i.sh = add nsw i64 %.092169.i, %i.sf
  %i.si = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !678
  %i.sj = icmp slt i64 %i.sg, %i.si
  br i1 %i.sj, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !692

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !693
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !678
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.48.val, i64 %.48.val1) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.48.val, ptr %i.a, align 8, !tbaa !30, !noalias !696
  store i64 %.48.val1, ptr %i.b, align 8, !tbaa !30, !noalias !696
  %.not.i = icmp ne i64 %.48.val, 0
  %.not97.i = icmp ne i64 %.48.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !699
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !696 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290, !noalias !696
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290, !noalias !696 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !696
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !696
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !696
  %i.k = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !696
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !289, !noalias !696
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.kv, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 20 uses
  %.090172.i = phi i64 [ %i.kx, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.ky, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.o = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !696 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.o to i16 ; 7 uses
  %i.p = ashr i32 %i.o, 16                        ; 4 uses
  %sext.i = shl i32 %i.o, 16
  %i.q = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.s = icmp sgt i32 %i.p, 7
  br i1 %i.s, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.t = lshr i32 %i.p, 3
  %smax189.i = zext nneg i32 %i.t to i64          ; 2 uses
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i
  %i.u = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %op.rdx, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.u, %.preheader137.loopexit.i ] ; 4 uses
  %i.v = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.w = icmp slt i64 %.082.lcssa.i, %i.v
  br i1 %i.w, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader: ; preds = %.preheader137.i
  %xtraiter48 = and i64 %i.v, 3
  %i.x = and i16 %.sroa.0.0.extract.trunc.i, 3
  %lcmp.mod49.not = icmp eq i16 %i.x, 0
  br i1 %lcmp.mod49.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol
  %.284162.i.prol = phi i64 [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ], [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ] ; 2 uses
  %.287161.i.prol = phi i1 [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ], [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ], [ 0, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.48.val
  %i.ab = icmp ugt i64 %i.z, %.48.val1
  %spec.select128.i.prol = or i1 %i.aa, %i.ab
  %i.ac = or i1 %.287161.i.prol, %spec.select128.i.prol ; 3 uses
  %i.ad = add nuw nsw i64 %.284162.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter48
  br i1 %prol.iter.cmp.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol, !llvm.loop !702

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader
  %.lcssa44.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ]
  %.284162.i.unr = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ad, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ]
  %.287161.i.unr = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ac, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol ]
  %i.ae = sub nsw i64 %.082.lcssa.i, %i.v
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv190.i = phi i64 [ 8, %.preheader.preheader.i ], [ %i.cg, %.preheader.i ] ; 2 uses
  %.081158.i = phi i64 [ 0, %.preheader.preheader.i ], [ %i.cf, %.preheader.i ]
  %.082157.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv190.i, %.preheader.i ]
  %.085156.i = phi i1 [ false, %.preheader.preheader.i ], [ %op.rdx, %.preheader.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.082157.i ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.aw = icmp ult i64 %i.ao, %.48.val
  %i.ax = icmp ult i64 %i.ap, %.48.val
  %i.ay = icmp ult i64 %i.aq, %.48.val
  %i.az = icmp ult i64 %i.ar, %.48.val
  %i.ba = icmp ult i64 %i.as, %.48.val
  %i.bb = icmp ult i64 %i.at, %.48.val
  %i.bc = icmp ult i64 %i.au, %.48.val
  %i.bd = icmp ult i64 %i.av, %.48.val
  %i.be = icmp ugt i64 %i.ao, %.48.val1
  %i.bf = icmp ugt i64 %i.ap, %.48.val1
  %i.bg = icmp ugt i64 %i.aq, %.48.val1
  %i.bh = icmp ugt i64 %i.ar, %.48.val1
  %i.bi = icmp ugt i64 %i.as, %.48.val1
  %i.bj = icmp ugt i64 %i.at, %.48.val1
  %i.bk = icmp ugt i64 %i.au, %.48.val1
  %i.bl = icmp ugt i64 %i.av, %.48.val1
  %i.bm = insertelement <8 x i1> poison, i1 %i.bl, i64 0
  %i.bn = insertelement <8 x i1> %i.bm, i1 %i.bk, i64 1
  %i.bo = insertelement <8 x i1> %i.bn, i1 %i.bj, i64 2
  %i.bp = insertelement <8 x i1> %i.bo, i1 %i.bi, i64 3
  %i.bq = insertelement <8 x i1> %i.bp, i1 %i.bh, i64 4
  %i.br = insertelement <8 x i1> %i.bq, i1 %i.bg, i64 5
  %i.bs = insertelement <8 x i1> %i.br, i1 %i.bf, i64 6
  %i.bt = insertelement <8 x i1> %i.bs, i1 %i.be, i64 7
  %i.bu = insertelement <8 x i1> poison, i1 %i.bd, i64 0
  %i.bv = insertelement <8 x i1> %i.bu, i1 %i.bc, i64 1
  %i.bw = insertelement <8 x i1> %i.bv, i1 %i.bb, i64 2
  %i.bx = insertelement <8 x i1> %i.bw, i1 %i.ba, i64 3
  %i.by = insertelement <8 x i1> %i.bx, i1 %i.az, i64 4
  %i.bz = insertelement <8 x i1> %i.by, i1 %i.ay, i64 5
  %i.ca = insertelement <8 x i1> %i.bz, i1 %i.ax, i64 6
  %i.cb = insertelement <8 x i1> %i.ca, i1 %i.aw, i64 7
  %i.cc = shufflevector <8 x i1> %i.bt, <8 x i1> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp ne i16 %i.cd, 0
  %op.rdx = or i1 %i.ce, %.085156.i               ; 2 uses
  %i.cf = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %i.cg = add nuw nsw i64 %indvars.iv190.i, 8
  %exitcond190.not.i = icmp eq i64 %i.cf, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !703

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i
  %.284162.i = phi i64 [ %i.de, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.284162.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit ] ; 5 uses
  %.287161.i = phi i1 [ %i.dd, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.287161.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %.48.val
  %i.ck = icmp ugt i64 %i.ci, %.48.val1
  %spec.select128.i = or i1 %i.cj, %i.ck
  %i.cl = or i1 %.287161.i, %spec.select128.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.cp = icmp ult i64 %i.co, %.48.val
  %i.cq = icmp ugt i64 %i.co, %.48.val1
  %spec.select128.i.1 = or i1 %i.cp, %i.cq
  %i.cr = or i1 %i.cl, %spec.select128.i.1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %.48.val
  %i.cw = icmp ugt i64 %i.cu, %.48.val1
  %spec.select128.i.2 = or i1 %i.cv, %i.cw
  %i.cx = or i1 %i.cr, %spec.select128.i.2
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.db = icmp ult i64 %i.da, %.48.val
  %i.dc = icmp ugt i64 %i.da, %.48.val1
  %spec.select128.i.3 = or i1 %i.db, %i.dc
  %i.dd = or i1 %i.cx, %spec.select128.i.3        ; 2 uses
  %i.de = add nuw nsw i64 %.284162.i, 4           ; 2 uses
  %exitcond191.not.i.3 = icmp eq i64 %i.de, %i.v
  br i1 %exitcond191.not.i.3, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i, !llvm.loop !704

bb.d:                                             ; preds = %.lr.ph176.i
  %i.df = icmp sgt i32 %i.p, 0
  br i1 %i.df, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.dg = icmp sgt i32 %i.q, 7
  br i1 %i.dg, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.dh = lshr i32 %i.q, 3
  %i.di = trunc i64 %.092169.i to i3              ; 7 uses
  %i.dj = trunc i64 %.092169.i to i8
  %i.dk = and i8 %i.dj, 7
  %i.dl = add i3 %i.di, 1
  %i.dm = zext i3 %i.dl to i8
  %i.dn = add i3 %i.di, 2
  %i.do = zext i3 %i.dn to i8
  %i.dp = add i3 %i.di, 3
  %i.dq = zext i3 %i.dp to i8
  %i.dr = xor i3 %i.di, -4
  %i.ds = zext i3 %i.dr to i8
  %i.dt = add i3 %i.di, -3
  %i.du = zext i3 %i.dt to i8
  %i.dv = add i3 %i.di, -2
  %i.dw = zext i3 %i.dv to i8
  %i.dx = add i3 %i.di, -1
  %i.dy = zext i3 %i.dx to i8
  %smax.i = zext nneg i32 %i.dh to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.dz = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %i.is, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.dz, %.preheader139.loopexit.i ] ; 6 uses
  %i.ea = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.eb = icmp slt i64 %.076.lcssa.i, %i.ea
  br i1 %i.eb, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.ec = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.ec, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.ef = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7, !noalias !696
  %i.ej = trunc i64 %.092169.i to i8
  %i.ek = and i8 %i.ej, 7
  %i.el = lshr i8 %i.ei, %i.ek
  %i.em = trunc i8 %i.el to i1
  %i.en = icmp ult i64 %i.ee, %.48.val
  %i.eo = icmp ugt i64 %i.ee, %.48.val1
  %spec.select130.i.prol = or i1 %i.en, %i.eo
  %i.ep = select i1 %i.em, i1 %spec.select130.i.prol, i1 false
  %i.eq = or i1 %.3.lcssa.i, %i.ep                ; 2 uses
  %i.er = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader
  %.lcssa43.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.eq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.er, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.eq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %i.es = add nsw i64 %i.ea, -1
  %i.et = icmp eq i64 %.076.lcssa.i, %i.es
  br i1 %i.et, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %indvars.iv.i = phi i64 [ 8, %.preheader133.preheader.i ], [ %i.iu, %.preheader133.i ] ; 2 uses
  %.075148.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %i.it, %.preheader133.i ]
  %.076147.i = phi i64 [ 0, %.preheader133.preheader.i ], [ %indvars.iv.i, %.preheader133.i ] ; 9 uses
  %.3146.i = phi i1 [ false, %.preheader133.preheader.i ], [ %i.is, %.preheader133.i ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076147.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.ew = add nsw i64 %.076147.i, %.092169.i
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !7, !noalias !696
  %i.fa = lshr i8 %i.ez, %i.dk
  %i.fb = trunc i8 %i.fa to i1
  %i.fc = icmp ult i64 %i.ev, %.48.val
  %i.fd = icmp ugt i64 %i.ev, %.48.val1
  %spec.select129.i = or i1 %i.fc, %i.fd
  %i.fe = select i1 %i.fb, i1 %spec.select129.i, i1 false
  %i.ff = or i1 %.3146.i, %i.fe
  %i.fg = or disjoint i64 %.076147.i, 1           ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.fj = add nsw i64 %i.fg, %.092169.i
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !7, !noalias !696
  %i.fn = lshr i8 %i.fm, %i.dm
  %i.fo = trunc i8 %i.fn to i1
  %i.fp = icmp ult i64 %i.fi, %.48.val
  %i.fq = icmp ugt i64 %i.fi, %.48.val1
  %spec.select129.1.i = or i1 %i.fp, %i.fq
  %i.fr = select i1 %i.fo, i1 %spec.select129.1.i, i1 false
  %i.fs = or i1 %i.ff, %i.fr
  %i.ft = or disjoint i64 %.076147.i, 2           ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.fw = add nsw i64 %i.ft, %.092169.i
  %i.fx = lshr i64 %i.fw, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !7, !noalias !696
  %i.ga = lshr i8 %i.fz, %i.do
  %i.gb = trunc i8 %i.ga to i1
  %i.gc = icmp ult i64 %i.fv, %.48.val
  %i.gd = icmp ugt i64 %i.fv, %.48.val1
  %spec.select129.2.i = or i1 %i.gc, %i.gd
  %i.ge = select i1 %i.gb, i1 %spec.select129.2.i, i1 false
  %i.gf = or i1 %i.fs, %i.ge
  %i.gg = or disjoint i64 %.076147.i, 3           ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.gj = add nsw i64 %i.gg, %.092169.i
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !7, !noalias !696
  %i.gn = lshr i8 %i.gm, %i.dq
  %i.go = trunc i8 %i.gn to i1
  %i.gp = icmp ult i64 %i.gi, %.48.val
  %i.gq = icmp ugt i64 %i.gi, %.48.val1
  %spec.select129.3.i = or i1 %i.gp, %i.gq
  %i.gr = select i1 %i.go, i1 %spec.select129.3.i, i1 false
  %i.gs = or i1 %i.gf, %i.gr
  %i.gt = or disjoint i64 %.076147.i, 4           ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.gw = add nsw i64 %i.gt, %.092169.i
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !7, !noalias !696
  %i.ha = lshr i8 %i.gz, %i.ds
  %i.hb = trunc i8 %i.ha to i1
  %i.hc = icmp ult i64 %i.gv, %.48.val
  %i.hd = icmp ugt i64 %i.gv, %.48.val1
  %spec.select129.4.i = or i1 %i.hc, %i.hd
  %i.he = select i1 %i.hb, i1 %spec.select129.4.i, i1 false
  %i.hf = or i1 %i.gs, %i.he
  %i.hg = or disjoint i64 %.076147.i, 5           ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.hj = add nsw i64 %i.hg, %.092169.i
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !7, !noalias !696
  %i.hn = lshr i8 %i.hm, %i.du
  %i.ho = trunc i8 %i.hn to i1
  %i.hp = icmp ult i64 %i.hi, %.48.val
  %i.hq = icmp ugt i64 %i.hi, %.48.val1
  %spec.select129.5.i = or i1 %i.hp, %i.hq
  %i.hr = select i1 %i.ho, i1 %spec.select129.5.i, i1 false
  %i.hs = or i1 %i.hf, %i.hr
  %i.ht = or disjoint i64 %.076147.i, 6           ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.hw = add nsw i64 %i.ht, %.092169.i
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !7, !noalias !696
  %i.ia = lshr i8 %i.hz, %i.dw
  %i.ib = trunc i8 %i.ia to i1
  %i.ic = icmp ult i64 %i.hv, %.48.val
  %i.id = icmp ugt i64 %i.hv, %.48.val1
  %spec.select129.6.i = or i1 %i.ic, %i.id
  %i.ie = select i1 %i.ib, i1 %spec.select129.6.i, i1 false
  %i.if = or i1 %i.hs, %i.ie
  %i.ig = or disjoint i64 %.076147.i, 7           ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.ij = add nsw i64 %i.ig, %.092169.i
  %i.ik = lshr i64 %i.ij, 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !7, !noalias !696
  %i.in = lshr i8 %i.im, %i.dy
  %i.io = trunc i8 %i.in to i1
  %i.ip = icmp ult i64 %i.ii, %.48.val
  %i.iq = icmp ugt i64 %i.ii, %.48.val1
  %spec.select129.7.i = or i1 %i.ip, %i.iq
  %i.ir = select i1 %i.io, i1 %spec.select129.7.i, i1 false
  %i.is = or i1 %i.if, %i.ir                      ; 2 uses
  %i.it = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %i.iu = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %i.it, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !705

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i
  %.2151.i = phi i64 [ %i.jy, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.jx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.2151.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.ix = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !7, !noalias !696
  %i.jb = trunc i64 %i.ix to i8
  %i.jc = and i8 %i.jb, 7
  %i.jd = lshr i8 %i.ja, %i.jc
  %i.je = trunc i8 %i.jd to i1
  %i.jf = icmp ult i64 %i.iw, %.48.val
  %i.jg = icmp ugt i64 %i.iw, %.48.val1
  %spec.select130.i = or i1 %i.jf, %i.jg
  %i.jh = select i1 %i.je, i1 %spec.select130.i, i1 false
  %i.ji = or i1 %.5150.i, %i.jh
  %i.jj = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.jj
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !30, !noalias !696 ; 2 uses
  %i.jm = add nsw i64 %i.jj, %.092169.i           ; 2 uses
  %i.jn = lshr i64 %i.jm, 3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !7, !noalias !696
  %i.jq = trunc i64 %i.jm to i8
  %i.jr = and i8 %i.jq, 7
  %i.js = lshr i8 %i.jp, %i.jr
  %i.jt = trunc i8 %i.js to i1
  %i.ju = icmp ult i64 %i.jl, %.48.val
  %i.jv = icmp ugt i64 %i.jl, %.48.val1
  %spec.select130.i.1 = or i1 %i.ju, %i.jv
  %i.jw = select i1 %i.jt, i1 %spec.select130.i.1, i1 false
  %i.jx = or i1 %i.ji, %i.jw                      ; 2 uses
  %i.jy = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.jy, %i.ea
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i, !llvm.loop !706

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.dd, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %.lcssa44.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.prol.loopexit ], [ %.lcssa43.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit ], [ %i.jx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !574

bb.e:                                             ; preds = %.loopexit.i
  %i.jz = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !696
  %i.ka = icmp sgt i64 %i.jz, 0
  %i.kb = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.ka, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ko, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.kc = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.kd = lshr i64 %i.kc, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !7, !noalias !696
  %i.kg = trunc i64 %i.kc to i8
  %i.kh = and i8 %i.kg, 7
  %i.ki = lshr i8 %i.kf, %i.kh
  %i.kj = trunc i8 %i.ki to i1
  br i1 %i.kj, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.073167.i
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !30, !noalias !696 ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.48.val
  %i.kn = icmp ugt i64 %i.kl, %.48.val1
  %or.cond131.i = or i1 %i.km, %i.kn
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.kl)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ko = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ko, %i.kb
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !707

bb.g:                                             ; preds = %.lr.ph.i
  %i.kp = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.kp, %i.kb
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !708

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.kp, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.0165.i
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !30, !noalias !696 ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.48.val
  %i.kt = icmp ugt i64 %i.kr, %.48.val1
  %or.cond132.i = or i1 %i.ks, %i.kt
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.kr)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ku = sext i32 %i.q to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %.088173.i, i64 %i.ku
  %i.kw = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.kx = add nsw i64 %.090172.i, %i.kw           ; 2 uses
  %i.ky = add nsw i64 %.092169.i, %i.kw
  %i.kz = load i64, ptr %i.i, align 8, !tbaa !293, !noalias !696
  %i.la = icmp slt i64 %i.kx, %i.kz
  br i1 %i.la, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !709

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !313, !alias.scope !710
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !696
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_.exit: ; preds = %bb.b, %.critedge103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14IntegersCanFitERKNS_9ArraySpanERKNS_8DataTypeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::UInt64Scalar", align 8 ; 13 uses
  %4 = alloca %"struct.arrow::UInt64Scalar", align 8 ; 12 uses
  %5 = alloca %"struct.arrow::UInt32Scalar", align 8 ; 13 uses
  %6 = alloca %"struct.arrow::UInt32Scalar", align 8 ; 12 uses
  %7 = alloca %"struct.arrow::UInt16Scalar", align 8 ; 13 uses
  %8 = alloca %"struct.arrow::UInt16Scalar", align 8 ; 12 uses
  %9 = alloca %"struct.arrow::UInt8Scalar", align 8 ; 13 uses
  %10 = alloca %"struct.arrow::UInt8Scalar", align 8 ; 12 uses
  %11 = alloca %"struct.arrow::Int64Scalar", align 8 ; 13 uses
  %12 = alloca %"struct.arrow::Int64Scalar", align 8 ; 12 uses
  %13 = alloca %"struct.arrow::Int32Scalar", align 8 ; 13 uses
  %14 = alloca %"struct.arrow::Int32Scalar", align 8 ; 12 uses
  %15 = alloca %"struct.arrow::Int16Scalar", align 8 ; 13 uses
  %16 = alloca %"struct.arrow::Int16Scalar", align 8 ; 12 uses
  %17 = alloca %"struct.arrow::Int8Scalar", align 8 ; 13 uses
  %18 = alloca %"struct.arrow::Int8Scalar", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !262  ; 9 uses
  %.off.i = add i32 %i.b, -2
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA37_KcRKNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(37) @.str.2, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.it

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !279
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !262
  switch i32 %i.e, label %bb.is [
    i32 3, label %bb.d
    i32 5, label %switch.lookup
    i32 7, label %switch.lookup265
    i32 9, label %switch.lookup271
    i32 2, label %_ZN5arrow8internal12_GLOBAL__N_113GetSafeMinMaxINS_9UInt8TypeEhEEvNS_4Type4typeEPT0_S7_.exit.i
    i32 4, label %switch.lookup277
    i32 6, label %switch.lookup281
    i32 8, label %switch.lookup285
  ]

bb.d:                                             ; preds = %bb.c
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.b to i8
  %switch.idx.mult.i.i = shl i8 %switch.idx.cast.i.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !713
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev(), !noalias !716 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !719, !noalias !716 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !720, !noalias !716
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !716
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !721
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !721
  br label %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !721 ; 0 uses
  br label %_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i

_ZN5arrow10Int8ScalarCI2NS_13NumericScalarINS_8Int8TypeEEEEa.exit.i: ; preds = %bb.g, %bb.f, %bb.d
end_hunk_4
