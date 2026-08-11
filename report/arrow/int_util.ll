inline.NumInlined: 2184
inline.NumDeleted: 621
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 275
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
  %.not = icmp eq i32 %i.g, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !514
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !260
  %.not31 = icmp eq i32 %i.k, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !517
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %.not31, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !517
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
  %.val = load i8, ptr %i.r, align 1, !tbaa !518
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 41
  %.val32 = load i8, ptr %i.s, align 1, !tbaa !518
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_8Int8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.val, i8 %.val32)
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %2, i64 42
  %.val33 = load i16, ptr %i.t, align 2, !tbaa !528
  %i.u = getelementptr i8, ptr %3, i64 42
  %.val34 = load i16, ptr %i.u, align 2, !tbaa !528
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %.val33, i16 %.val34)
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %2, i64 44
  %.val35 = load i32, ptr %i.v, align 4, !tbaa !530
  %i.w = getelementptr i8, ptr %3, i64 44
  %.val36 = load i32, ptr %i.w, align 4, !tbaa !530
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 %.val35, i32 %.val36)
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %2, i64 48
  %.val37 = load i64, ptr %i.x, align 8, !tbaa !532
  %i.y = getelementptr i8, ptr %3, i64 48
  %.val38 = load i64, ptr %i.y, align 8, !tbaa !532
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int64TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %.val37, i64 %.val38)
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 41
  %.val39 = load i8, ptr %i.z, align 1, !tbaa !534
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 41
  %.val40 = load i8, ptr %i.aa, align 1, !tbaa !534
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9UInt8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.val39, i8 %.val40)
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %2, i64 42
  %.val41 = load i16, ptr %i.ab, align 2, !tbaa !536
  %i.ac = getelementptr i8, ptr %3, i64 42
  %.val42 = load i16, ptr %i.ac, align 2, !tbaa !536
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i16 %.val41, i16 %.val42)
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %2, i64 44
  %.val43 = load i32, ptr %i.ad, align 4, !tbaa !538
  %i.ae = getelementptr i8, ptr %3, i64 44
  %.val44 = load i32, ptr %i.ae, align 4, !tbaa !538
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt32TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 %.val43, i32 %.val44)
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %2, i64 48
  %.val45 = load i64, ptr %i.af, align 8, !tbaa !540
  %i.ag = getelementptr i8, ptr %3, i64 48
  %.val46 = load i64, ptr %i.ag, align 8, !tbaa !540
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.41.val, ptr %i.a, align 1, !tbaa !7, !noalias !542
  store i8 %.41.val1, ptr %i.b, align 1, !tbaa !7, !noalias !542
  %.not.i = icmp ne i8 %.41.val, -128
  %.not97.i = icmp ne i8 %.41.val1, 127
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !545
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !542 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !542
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !542 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !542
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !542
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !542
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !542
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !542
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.p = shufflevector <8 x i8> %i.o, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.r = shufflevector <8 x i8> %i.q, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat64 = shufflevector <16 x i8> %broadcast.splatinsert63, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert65 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat66 = shufflevector <16 x i8> %broadcast.splatinsert65, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert83 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat84 = shufflevector <8 x i8> %broadcast.splatinsert83, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert85 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat86 = shufflevector <8 x i8> %broadcast.splatinsert85, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.v = shufflevector <8 x i8> %i.u, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat43 = shufflevector <16 x i8> %broadcast.splatinsert42, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat48 = shufflevector <8 x i8> %broadcast.splatinsert47, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat50 = shufflevector <8 x i8> %broadcast.splatinsert49, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.ayx, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 51 uses
  %.090172.i = phi i64 [ %i.ayz, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.aza, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !542 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check77, label %.preheader137.i

iter.check77:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check58 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check58, label %.preheader.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check77
  %min.iters.check60 = icmp ult i32 %i.x, 256
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ac = and i64 %smax189.i, 24
  %n.vec62 = and i64 %smax189.i, 268435424        ; 5 uses
  %i.ad = shl nuw nsw i64 %n.vec62, 3
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph61
  %index68 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body67 ] ; 2 uses
  %vec.phi69 = phi <16 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.ahi, %vector.body67 ]
  %vec.phi70 = phi <16 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.ahj, %vector.body67 ]
  %i.ae = shl nuw i64 %index68, 3                 ; 32 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 152
  %i.bs = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.bu = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.ca = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %i.cc = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 224
  %i.ck = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 232
  %i.cm = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  %i.co = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 248
  %i.cq = load i8, ptr %i.af, align 1, !tbaa !7, !noalias !542
  %i.cr = load i8, ptr %i.ah, align 1, !tbaa !7, !noalias !542
  %i.cs = load i8, ptr %i.aj, align 1, !tbaa !7, !noalias !542
  %i.ct = load i8, ptr %i.al, align 1, !tbaa !7, !noalias !542
  %i.cu = load i8, ptr %i.an, align 1, !tbaa !7, !noalias !542
  %i.cv = load i8, ptr %i.ap, align 1, !tbaa !7, !noalias !542
  %i.cw = load i8, ptr %i.ar, align 1, !tbaa !7, !noalias !542
  %i.cx = load i8, ptr %i.at, align 1, !tbaa !7, !noalias !542
  %i.cy = load i8, ptr %i.av, align 1, !tbaa !7, !noalias !542
  %i.cz = load i8, ptr %i.ax, align 1, !tbaa !7, !noalias !542
  %i.da = load i8, ptr %i.az, align 1, !tbaa !7, !noalias !542
  %i.db = load i8, ptr %i.bb, align 1, !tbaa !7, !noalias !542
  %i.dc = load i8, ptr %i.bd, align 1, !tbaa !7, !noalias !542
  %i.dd = load i8, ptr %i.bf, align 1, !tbaa !7, !noalias !542
  %i.de = load i8, ptr %i.bh, align 1, !tbaa !7, !noalias !542
  %i.df = load i8, ptr %i.bj, align 1, !tbaa !7, !noalias !542
  %i.dg = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 1
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 2
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 3
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 4
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 5
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 6
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 7
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 8
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 9
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 10
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 11
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 12
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 13
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 14
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 15 ; 2 uses
  %i.dw = load i8, ptr %i.bl, align 1, !tbaa !7, !noalias !542
  %i.dx = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !542
  %i.dy = load i8, ptr %i.bp, align 1, !tbaa !7, !noalias !542
  %i.dz = load i8, ptr %i.br, align 1, !tbaa !7, !noalias !542
  %i.ea = load i8, ptr %i.bt, align 1, !tbaa !7, !noalias !542
  %i.eb = load i8, ptr %i.bv, align 1, !tbaa !7, !noalias !542
  %i.ec = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !542
  %i.ed = load i8, ptr %i.bz, align 1, !tbaa !7, !noalias !542
  %i.ee = load i8, ptr %i.cb, align 1, !tbaa !7, !noalias !542
  %i.ef = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !542
  %i.eg = load i8, ptr %i.cf, align 1, !tbaa !7, !noalias !542
  %i.eh = load i8, ptr %i.ch, align 1, !tbaa !7, !noalias !542
  %i.ei = load i8, ptr %i.cj, align 1, !tbaa !7, !noalias !542
  %i.ej = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !542
  %i.ek = load i8, ptr %i.cn, align 1, !tbaa !7, !noalias !542
  %i.el = load i8, ptr %i.cp, align 1, !tbaa !7, !noalias !542
  %i.em = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 1
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 2
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 3
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 4
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 5
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 6
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 7
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 8
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 9
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 10
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 11
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 12
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 13
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 14
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 15 ; 2 uses
  %i.fc = icmp slt <16 x i8> %i.dv, %broadcast.splat64
  %i.fd = icmp slt <16 x i8> %i.fb, %broadcast.splat64
  %i.fe = icmp sgt <16 x i8> %i.dv, %broadcast.splat66
  %i.ff = icmp sgt <16 x i8> %i.fb, %broadcast.splat66
  %i.fg = or <16 x i1> %i.fc, %i.fe
  %i.fh = or <16 x i1> %i.fd, %i.ff
  %i.fi = or <16 x i1> %vec.phi69, %i.fg
  %i.fj = or <16 x i1> %vec.phi70, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ak, i64 25
  %i.fo = getelementptr inbounds nuw i8, ptr %i.am, i64 33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ao, i64 41
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aq, i64 49
  %i.fr = getelementptr inbounds nuw i8, ptr %i.as, i64 57
  %i.fs = getelementptr inbounds nuw i8, ptr %i.au, i64 65
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 73
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ay, i64 81
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 89
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bc, i64 97
  %i.fx = getelementptr inbounds nuw i8, ptr %i.be, i64 105
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bg, i64 113
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bi, i64 121
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bk, i64 129
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bm, i64 137
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bo, i64 145
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bq, i64 153
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bs, i64 161
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bu, i64 169
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bw, i64 177
  %i.gh = getelementptr inbounds nuw i8, ptr %i.by, i64 185
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ca, i64 193
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cc, i64 201
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ce, i64 209
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cg, i64 217
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ci, i64 225
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ck, i64 233
  %i.go = getelementptr inbounds nuw i8, ptr %i.cm, i64 241
  %i.gp = getelementptr inbounds nuw i8, ptr %i.co, i64 249
  %i.gq = load i8, ptr %i.fk, align 1, !tbaa !7, !noalias !542
  %i.gr = load i8, ptr %i.fl, align 1, !tbaa !7, !noalias !542
  %i.gs = load i8, ptr %i.fm, align 1, !tbaa !7, !noalias !542
  %i.gt = load i8, ptr %i.fn, align 1, !tbaa !7, !noalias !542
  %i.gu = load i8, ptr %i.fo, align 1, !tbaa !7, !noalias !542
  %i.gv = load i8, ptr %i.fp, align 1, !tbaa !7, !noalias !542
  %i.gw = load i8, ptr %i.fq, align 1, !tbaa !7, !noalias !542
  %i.gx = load i8, ptr %i.fr, align 1, !tbaa !7, !noalias !542
  %i.gy = load i8, ptr %i.fs, align 1, !tbaa !7, !noalias !542
  %i.gz = load i8, ptr %i.ft, align 1, !tbaa !7, !noalias !542
  %i.ha = load i8, ptr %i.fu, align 1, !tbaa !7, !noalias !542
  %i.hb = load i8, ptr %i.fv, align 1, !tbaa !7, !noalias !542
  %i.hc = load i8, ptr %i.fw, align 1, !tbaa !7, !noalias !542
  %i.hd = load i8, ptr %i.fx, align 1, !tbaa !7, !noalias !542
  %i.he = load i8, ptr %i.fy, align 1, !tbaa !7, !noalias !542
  %i.hf = load i8, ptr %i.fz, align 1, !tbaa !7, !noalias !542
  %i.hg = insertelement <16 x i8> poison, i8 %i.gq, i64 0
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 1
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 2
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 3
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 4
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 5
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 6
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 7
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 8
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 9
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 10
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 11
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 12
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 13
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 14
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 15 ; 2 uses
  %i.hw = load i8, ptr %i.ga, align 1, !tbaa !7, !noalias !542
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_8Int8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %i.cg, i64 222
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ci, i64 230
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ck, i64 238
  %i.aao = getelementptr inbounds nuw i8, ptr %i.cm, i64 246
  %i.aap = getelementptr inbounds nuw i8, ptr %i.co, i64 254
  %i.aaq = load i8, ptr %i.zk, align 1, !tbaa !7, !noalias !542
  %i.aar = load i8, ptr %i.zl, align 1, !tbaa !7, !noalias !542
  %i.aas = load i8, ptr %i.zm, align 1, !tbaa !7, !noalias !542
  %i.aat = load i8, ptr %i.zn, align 1, !tbaa !7, !noalias !542
  %i.aau = load i8, ptr %i.zo, align 1, !tbaa !7, !noalias !542
  %i.aav = load i8, ptr %i.zp, align 1, !tbaa !7, !noalias !542
  %i.aaw = load i8, ptr %i.zq, align 1, !tbaa !7, !noalias !542
  %i.aax = load i8, ptr %i.zr, align 1, !tbaa !7, !noalias !542
  %i.aay = load i8, ptr %i.zs, align 1, !tbaa !7, !noalias !542
  %i.aaz = load i8, ptr %i.zt, align 1, !tbaa !7, !noalias !542
  %i.aba = load i8, ptr %i.zu, align 1, !tbaa !7, !noalias !542
  %i.abb = load i8, ptr %i.zv, align 1, !tbaa !7, !noalias !542
  %i.abc = load i8, ptr %i.zw, align 1, !tbaa !7, !noalias !542
  %i.abd = load i8, ptr %i.zx, align 1, !tbaa !7, !noalias !542
  %i.abe = load i8, ptr %i.zy, align 1, !tbaa !7, !noalias !542
  %i.abf = load i8, ptr %i.zz, align 1, !tbaa !7, !noalias !542
  %i.abg = insertelement <16 x i8> poison, i8 %i.aaq, i64 0
  %i.abh = insertelement <16 x i8> %i.abg, i8 %i.aar, i64 1
  %i.abi = insertelement <16 x i8> %i.abh, i8 %i.aas, i64 2
  %i.abj = insertelement <16 x i8> %i.abi, i8 %i.aat, i64 3
  %i.abk = insertelement <16 x i8> %i.abj, i8 %i.aau, i64 4
  %i.abl = insertelement <16 x i8> %i.abk, i8 %i.aav, i64 5
  %i.abm = insertelement <16 x i8> %i.abl, i8 %i.aaw, i64 6
  %i.abn = insertelement <16 x i8> %i.abm, i8 %i.aax, i64 7
  %i.abo = insertelement <16 x i8> %i.abn, i8 %i.aay, i64 8
  %i.abp = insertelement <16 x i8> %i.abo, i8 %i.aaz, i64 9
  %i.abq = insertelement <16 x i8> %i.abp, i8 %i.aba, i64 10
  %i.abr = insertelement <16 x i8> %i.abq, i8 %i.abb, i64 11
  %i.abs = insertelement <16 x i8> %i.abr, i8 %i.abc, i64 12
  %i.abt = insertelement <16 x i8> %i.abs, i8 %i.abd, i64 13
  %i.abu = insertelement <16 x i8> %i.abt, i8 %i.abe, i64 14
  %i.abv = insertelement <16 x i8> %i.abu, i8 %i.abf, i64 15 ; 2 uses
  %i.abw = load i8, ptr %i.aaa, align 1, !tbaa !7, !noalias !542
  %i.abx = load i8, ptr %i.aab, align 1, !tbaa !7, !noalias !542
  %i.aby = load i8, ptr %i.aac, align 1, !tbaa !7, !noalias !542
  %i.abz = load i8, ptr %i.aad, align 1, !tbaa !7, !noalias !542
  %i.aca = load i8, ptr %i.aae, align 1, !tbaa !7, !noalias !542
  %i.acb = load i8, ptr %i.aaf, align 1, !tbaa !7, !noalias !542
  %i.acc = load i8, ptr %i.aag, align 1, !tbaa !7, !noalias !542
  %i.acd = load i8, ptr %i.aah, align 1, !tbaa !7, !noalias !542
  %i.ace = load i8, ptr %i.aai, align 1, !tbaa !7, !noalias !542
  %i.acf = load i8, ptr %i.aaj, align 1, !tbaa !7, !noalias !542
  %i.acg = load i8, ptr %i.aak, align 1, !tbaa !7, !noalias !542
  %i.ach = load i8, ptr %i.aal, align 1, !tbaa !7, !noalias !542
  %i.aci = load i8, ptr %i.aam, align 1, !tbaa !7, !noalias !542
  %i.acj = load i8, ptr %i.aan, align 1, !tbaa !7, !noalias !542
  %i.ack = load i8, ptr %i.aao, align 1, !tbaa !7, !noalias !542
  %i.acl = load i8, ptr %i.aap, align 1, !tbaa !7, !noalias !542
  %i.acm = insertelement <16 x i8> poison, i8 %i.abw, i64 0
  %i.acn = insertelement <16 x i8> %i.acm, i8 %i.abx, i64 1
  %i.aco = insertelement <16 x i8> %i.acn, i8 %i.aby, i64 2
  %i.acp = insertelement <16 x i8> %i.aco, i8 %i.abz, i64 3
  %i.acq = insertelement <16 x i8> %i.acp, i8 %i.aca, i64 4
  %i.acr = insertelement <16 x i8> %i.acq, i8 %i.acb, i64 5
  %i.acs = insertelement <16 x i8> %i.acr, i8 %i.acc, i64 6
  %i.act = insertelement <16 x i8> %i.acs, i8 %i.acd, i64 7
  %i.acu = insertelement <16 x i8> %i.act, i8 %i.ace, i64 8
  %i.acv = insertelement <16 x i8> %i.acu, i8 %i.acf, i64 9
  %i.acw = insertelement <16 x i8> %i.acv, i8 %i.acg, i64 10
  %i.acx = insertelement <16 x i8> %i.acw, i8 %i.ach, i64 11
  %i.acy = insertelement <16 x i8> %i.acx, i8 %i.aci, i64 12
  %i.acz = insertelement <16 x i8> %i.acy, i8 %i.acj, i64 13
  %i.ada = insertelement <16 x i8> %i.acz, i8 %i.ack, i64 14
  %i.adb = insertelement <16 x i8> %i.ada, i8 %i.acl, i64 15 ; 2 uses
  %i.adc = icmp slt <16 x i8> %i.abv, %broadcast.splat64
  %i.add = icmp slt <16 x i8> %i.adb, %broadcast.splat64
  %i.ade = icmp sgt <16 x i8> %i.abv, %broadcast.splat66
  %i.adf = icmp sgt <16 x i8> %i.adb, %broadcast.splat66
  %i.adg = or <16 x i1> %i.adc, %i.ade
  %i.adh = or <16 x i1> %i.add, %i.adf
  %i.adi = or <16 x i1> %i.zi, %i.adg
  %i.adj = or <16 x i1> %i.zj, %i.adh
  %i.adk = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ag, i64 15
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ai, i64 23
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ak, i64 31
  %i.ado = getelementptr inbounds nuw i8, ptr %i.am, i64 39
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ao, i64 47
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aq, i64 55
  %i.adr = getelementptr inbounds nuw i8, ptr %i.as, i64 63
  %i.ads = getelementptr inbounds nuw i8, ptr %i.au, i64 71
  %i.adt = getelementptr inbounds nuw i8, ptr %i.aw, i64 79
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ay, i64 87
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ba, i64 95
  %i.adw = getelementptr inbounds nuw i8, ptr %i.bc, i64 103
  %i.adx = getelementptr inbounds nuw i8, ptr %i.be, i64 111
  %i.ady = getelementptr inbounds nuw i8, ptr %i.bg, i64 119
  %i.adz = getelementptr inbounds nuw i8, ptr %i.bi, i64 127
  %i.aea = getelementptr inbounds nuw i8, ptr %i.bk, i64 135
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.bm, i64 143
  %i.aec = getelementptr inbounds nuw i8, ptr %i.bo, i64 151
  %i.aed = getelementptr inbounds nuw i8, ptr %i.bq, i64 159
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bs, i64 167
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bu, i64 175
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.bw, i64 183
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.by, i64 191
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ca, i64 199
  %i.aej = getelementptr inbounds nuw i8, ptr %i.cc, i64 207
  %i.aek = getelementptr inbounds nuw i8, ptr %i.ce, i64 215
  %i.ael = getelementptr inbounds nuw i8, ptr %i.cg, i64 223
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ci, i64 231
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ck, i64 239
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.cm, i64 247
  %i.aep = getelementptr inbounds nuw i8, ptr %i.co, i64 255
  %i.aeq = load i8, ptr %i.adk, align 1, !tbaa !7, !noalias !542
  %i.aer = load i8, ptr %i.adl, align 1, !tbaa !7, !noalias !542
  %i.aes = load i8, ptr %i.adm, align 1, !tbaa !7, !noalias !542
  %i.aet = load i8, ptr %i.adn, align 1, !tbaa !7, !noalias !542
  %i.aeu = load i8, ptr %i.ado, align 1, !tbaa !7, !noalias !542
  %i.aev = load i8, ptr %i.adp, align 1, !tbaa !7, !noalias !542
  %i.aew = load i8, ptr %i.adq, align 1, !tbaa !7, !noalias !542
  %i.aex = load i8, ptr %i.adr, align 1, !tbaa !7, !noalias !542
  %i.aey = load i8, ptr %i.ads, align 1, !tbaa !7, !noalias !542
  %i.aez = load i8, ptr %i.adt, align 1, !tbaa !7, !noalias !542
  %i.afa = load i8, ptr %i.adu, align 1, !tbaa !7, !noalias !542
  %i.afb = load i8, ptr %i.adv, align 1, !tbaa !7, !noalias !542
  %i.afc = load i8, ptr %i.adw, align 1, !tbaa !7, !noalias !542
  %i.afd = load i8, ptr %i.adx, align 1, !tbaa !7, !noalias !542
  %i.afe = load i8, ptr %i.ady, align 1, !tbaa !7, !noalias !542
  %i.aff = load i8, ptr %i.adz, align 1, !tbaa !7, !noalias !542
  %i.afg = insertelement <16 x i8> poison, i8 %i.aeq, i64 0
  %i.afh = insertelement <16 x i8> %i.afg, i8 %i.aer, i64 1
  %i.afi = insertelement <16 x i8> %i.afh, i8 %i.aes, i64 2
  %i.afj = insertelement <16 x i8> %i.afi, i8 %i.aet, i64 3
  %i.afk = insertelement <16 x i8> %i.afj, i8 %i.aeu, i64 4
  %i.afl = insertelement <16 x i8> %i.afk, i8 %i.aev, i64 5
  %i.afm = insertelement <16 x i8> %i.afl, i8 %i.aew, i64 6
  %i.afn = insertelement <16 x i8> %i.afm, i8 %i.aex, i64 7
  %i.afo = insertelement <16 x i8> %i.afn, i8 %i.aey, i64 8
  %i.afp = insertelement <16 x i8> %i.afo, i8 %i.aez, i64 9
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 10
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 11
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 12
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 13
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 14
  %i.afv = insertelement <16 x i8> %i.afu, i8 %i.aff, i64 15 ; 2 uses
  %i.afw = load i8, ptr %i.aea, align 1, !tbaa !7, !noalias !542
  %i.afx = load i8, ptr %i.aeb, align 1, !tbaa !7, !noalias !542
  %i.afy = load i8, ptr %i.aec, align 1, !tbaa !7, !noalias !542
  %i.afz = load i8, ptr %i.aed, align 1, !tbaa !7, !noalias !542
  %i.aga = load i8, ptr %i.aee, align 1, !tbaa !7, !noalias !542
  %i.agb = load i8, ptr %i.aef, align 1, !tbaa !7, !noalias !542
  %i.agc = load i8, ptr %i.aeg, align 1, !tbaa !7, !noalias !542
  %i.agd = load i8, ptr %i.aeh, align 1, !tbaa !7, !noalias !542
  %i.age = load i8, ptr %i.aei, align 1, !tbaa !7, !noalias !542
  %i.agf = load i8, ptr %i.aej, align 1, !tbaa !7, !noalias !542
  %i.agg = load i8, ptr %i.aek, align 1, !tbaa !7, !noalias !542
  %i.agh = load i8, ptr %i.ael, align 1, !tbaa !7, !noalias !542
  %i.agi = load i8, ptr %i.aem, align 1, !tbaa !7, !noalias !542
  %i.agj = load i8, ptr %i.aen, align 1, !tbaa !7, !noalias !542
  %i.agk = load i8, ptr %i.aeo, align 1, !tbaa !7, !noalias !542
  %i.agl = load i8, ptr %i.aep, align 1, !tbaa !7, !noalias !542
  %i.agm = insertelement <16 x i8> poison, i8 %i.afw, i64 0
  %i.agn = insertelement <16 x i8> %i.agm, i8 %i.afx, i64 1
  %i.ago = insertelement <16 x i8> %i.agn, i8 %i.afy, i64 2
  %i.agp = insertelement <16 x i8> %i.ago, i8 %i.afz, i64 3
  %i.agq = insertelement <16 x i8> %i.agp, i8 %i.aga, i64 4
  %i.agr = insertelement <16 x i8> %i.agq, i8 %i.agb, i64 5
  %i.ags = insertelement <16 x i8> %i.agr, i8 %i.agc, i64 6
  %i.agt = insertelement <16 x i8> %i.ags, i8 %i.agd, i64 7
  %i.agu = insertelement <16 x i8> %i.agt, i8 %i.age, i64 8
  %i.agv = insertelement <16 x i8> %i.agu, i8 %i.agf, i64 9
  %i.agw = insertelement <16 x i8> %i.agv, i8 %i.agg, i64 10
  %i.agx = insertelement <16 x i8> %i.agw, i8 %i.agh, i64 11
  %i.agy = insertelement <16 x i8> %i.agx, i8 %i.agi, i64 12
  %i.agz = insertelement <16 x i8> %i.agy, i8 %i.agj, i64 13
  %i.aha = insertelement <16 x i8> %i.agz, i8 %i.agk, i64 14
  %i.ahb = insertelement <16 x i8> %i.aha, i8 %i.agl, i64 15 ; 2 uses
  %i.ahc = icmp slt <16 x i8> %i.afv, %broadcast.splat64
  %i.ahd = icmp slt <16 x i8> %i.ahb, %broadcast.splat64
  %i.ahe = icmp sgt <16 x i8> %i.afv, %broadcast.splat66
  %i.ahf = icmp sgt <16 x i8> %i.ahb, %broadcast.splat66
  %i.ahg = or <16 x i1> %i.ahc, %i.ahe
  %i.ahh = or <16 x i1> %i.ahd, %i.ahf
  %i.ahi = or <16 x i1> %i.adi, %i.ahg            ; 2 uses
  %i.ahj = or <16 x i1> %i.adj, %i.ahh            ; 2 uses
  %index.next71 = add nuw i64 %index68, 32        ; 2 uses
  %i.ahk = icmp eq i64 %index.next71, %n.vec62
  br i1 %i.ahk, label %middle.block72, label %vector.body67, !llvm.loop !548

middle.block72:                                   ; preds = %vector.body67
  %bin.rdx73 = or <16 x i1> %i.ahj, %i.ahi
  %i.ahl = bitcast <16 x i1> %bin.rdx73 to i16
  %i.ahm = icmp ne i16 %i.ahl, 0                  ; 3 uses
  %cmp.n74 = icmp eq i64 %n.vec62, %smax189.i
  br i1 %cmp.n74, label %.preheader137.loopexit.i, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block72
  %min.epilog.iters.check80 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check80, label %.preheader.i.preheader, label %vec.epilog.ph81, !prof !549

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec62, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %bc.merge.rdx76 = phi i1 [ %i.ahm, %vec.epilog.iter.check79 ], [ false, %vector.main.loop.iter.check59 ]
  %n.vec82 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ahn = shl nuw nsw i64 %n.vec82, 3
  %i.aho = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx76, i64 0
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph81
  %index88 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next90, %vec.epilog.vector.body87 ] ; 2 uses
  %vec.phi89 = phi <8 x i1> [ %i.aho, %vec.epilog.ph81 ], [ %i.aqm, %vec.epilog.vector.body87 ]
  %i.ahp = shl nuw i64 %index88, 3                ; 8 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  %i.ahv = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  %i.ahx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 40
  %i.aib = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 48
  %i.aid = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 56
  %i.aif = load i8, ptr %i.ahq, align 1, !tbaa !7, !noalias !542
  %i.aig = load i8, ptr %i.ahs, align 1, !tbaa !7, !noalias !542
  %i.aih = load i8, ptr %i.ahu, align 1, !tbaa !7, !noalias !542
  %i.aii = load i8, ptr %i.ahw, align 1, !tbaa !7, !noalias !542
  %i.aij = load i8, ptr %i.ahy, align 1, !tbaa !7, !noalias !542
  %i.aik = load i8, ptr %i.aia, align 1, !tbaa !7, !noalias !542
  %i.ail = load i8, ptr %i.aic, align 1, !tbaa !7, !noalias !542
  %i.aim = load i8, ptr %i.aie, align 1, !tbaa !7, !noalias !542
  %i.ain = insertelement <8 x i8> poison, i8 %i.aif, i64 0
  %i.aio = insertelement <8 x i8> %i.ain, i8 %i.aig, i64 1
  %i.aip = insertelement <8 x i8> %i.aio, i8 %i.aih, i64 2
  %i.aiq = insertelement <8 x i8> %i.aip, i8 %i.aii, i64 3
  %i.air = insertelement <8 x i8> %i.aiq, i8 %i.aij, i64 4
  %i.ais = insertelement <8 x i8> %i.air, i8 %i.aik, i64 5
  %i.ait = insertelement <8 x i8> %i.ais, i8 %i.ail, i64 6
  %i.aiu = insertelement <8 x i8> %i.ait, i8 %i.aim, i64 7 ; 2 uses
  %i.aiv = icmp slt <8 x i8> %i.aiu, %broadcast.splat84
  %i.aiw = icmp sgt <8 x i8> %i.aiu, %broadcast.splat86
  %i.aix = or <8 x i1> %i.aiv, %i.aiw
  %i.aiy = or <8 x i1> %vec.phi89, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahr, i64 9
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aht, i64 17
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ahv, i64 25
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahx, i64 33
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahz, i64 41
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aib, i64 49
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aid, i64 57
  %i.ajh = load i8, ptr %i.aiz, align 1, !tbaa !7, !noalias !542
  %i.aji = load i8, ptr %i.aja, align 1, !tbaa !7, !noalias !542
  %i.ajj = load i8, ptr %i.ajb, align 1, !tbaa !7, !noalias !542
  %i.ajk = load i8, ptr %i.ajc, align 1, !tbaa !7, !noalias !542
  %i.ajl = load i8, ptr %i.ajd, align 1, !tbaa !7, !noalias !542
  %i.ajm = load i8, ptr %i.aje, align 1, !tbaa !7, !noalias !542
  %i.ajn = load i8, ptr %i.ajf, align 1, !tbaa !7, !noalias !542
  %i.ajo = load i8, ptr %i.ajg, align 1, !tbaa !7, !noalias !542
  %i.ajp = insertelement <8 x i8> poison, i8 %i.ajh, i64 0
  %i.ajq = insertelement <8 x i8> %i.ajp, i8 %i.aji, i64 1
  %i.ajr = insertelement <8 x i8> %i.ajq, i8 %i.ajj, i64 2
  %i.ajs = insertelement <8 x i8> %i.ajr, i8 %i.ajk, i64 3
  %i.ajt = insertelement <8 x i8> %i.ajs, i8 %i.ajl, i64 4
  %i.aju = insertelement <8 x i8> %i.ajt, i8 %i.ajm, i64 5
  %i.ajv = insertelement <8 x i8> %i.aju, i8 %i.ajn, i64 6
  %i.ajw = insertelement <8 x i8> %i.ajv, i8 %i.ajo, i64 7 ; 2 uses
  %i.ajx = icmp slt <8 x i8> %i.ajw, %broadcast.splat84
  %i.ajy = icmp sgt <8 x i8> %i.ajw, %broadcast.splat86
  %i.ajz = or <8 x i1> %i.ajx, %i.ajy
  %i.aka = or <8 x i1> %i.aiy, %i.ajz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahq, i64 2
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ahr, i64 10
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aht, i64 18
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ahv, i64 26
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ahx, i64 34
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ahz, i64 42
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aib, i64 50
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aid, i64 58
  %i.akj = load i8, ptr %i.akb, align 1, !tbaa !7, !noalias !542
  %i.akk = load i8, ptr %i.akc, align 1, !tbaa !7, !noalias !542
  %i.akl = load i8, ptr %i.akd, align 1, !tbaa !7, !noalias !542
  %i.akm = load i8, ptr %i.ake, align 1, !tbaa !7, !noalias !542
  %i.akn = load i8, ptr %i.akf, align 1, !tbaa !7, !noalias !542
  %i.ako = load i8, ptr %i.akg, align 1, !tbaa !7, !noalias !542
  %i.akp = load i8, ptr %i.akh, align 1, !tbaa !7, !noalias !542
  %i.akq = load i8, ptr %i.aki, align 1, !tbaa !7, !noalias !542
  %i.akr = insertelement <8 x i8> poison, i8 %i.akj, i64 0
  %i.aks = insertelement <8 x i8> %i.akr, i8 %i.akk, i64 1
  %i.akt = insertelement <8 x i8> %i.aks, i8 %i.akl, i64 2
  %i.aku = insertelement <8 x i8> %i.akt, i8 %i.akm, i64 3
  %i.akv = insertelement <8 x i8> %i.aku, i8 %i.akn, i64 4
  %i.akw = insertelement <8 x i8> %i.akv, i8 %i.ako, i64 5
  %i.akx = insertelement <8 x i8> %i.akw, i8 %i.akp, i64 6
  %i.aky = insertelement <8 x i8> %i.akx, i8 %i.akq, i64 7 ; 2 uses
  %i.akz = icmp slt <8 x i8> %i.aky, %broadcast.splat84
  %i.ala = icmp sgt <8 x i8> %i.aky, %broadcast.splat86
  %i.alb = or <8 x i1> %i.akz, %i.ala
  %i.alc = or <8 x i1> %i.aka, %i.alb
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ahq, i64 3
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ahr, i64 11
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aht, i64 19
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ahv, i64 27
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahx, i64 35
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ahz, i64 43
  %i.alj = getelementptr inbounds nuw i8, ptr %i.aib, i64 51
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aid, i64 59
  %i.all = load i8, ptr %i.ald, align 1, !tbaa !7, !noalias !542
  %i.alm = load i8, ptr %i.ale, align 1, !tbaa !7, !noalias !542
  %i.aln = load i8, ptr %i.alf, align 1, !tbaa !7, !noalias !542
  %i.alo = load i8, ptr %i.alg, align 1, !tbaa !7, !noalias !542
  %i.alp = load i8, ptr %i.alh, align 1, !tbaa !7, !noalias !542
  %i.alq = load i8, ptr %i.ali, align 1, !tbaa !7, !noalias !542
  %i.alr = load i8, ptr %i.alj, align 1, !tbaa !7, !noalias !542
  %i.als = load i8, ptr %i.alk, align 1, !tbaa !7, !noalias !542
  %i.alt = insertelement <8 x i8> poison, i8 %i.all, i64 0
  %i.alu = insertelement <8 x i8> %i.alt, i8 %i.alm, i64 1
  %i.alv = insertelement <8 x i8> %i.alu, i8 %i.aln, i64 2
  %i.alw = insertelement <8 x i8> %i.alv, i8 %i.alo, i64 3
  %i.alx = insertelement <8 x i8> %i.alw, i8 %i.alp, i64 4
  %i.aly = insertelement <8 x i8> %i.alx, i8 %i.alq, i64 5
  %i.alz = insertelement <8 x i8> %i.aly, i8 %i.alr, i64 6
  %i.ama = insertelement <8 x i8> %i.alz, i8 %i.als, i64 7 ; 2 uses
  %i.amb = icmp slt <8 x i8> %i.ama, %broadcast.splat84
  %i.amc = icmp sgt <8 x i8> %i.ama, %broadcast.splat86
  %i.amd = or <8 x i1> %i.amb, %i.amc
  %i.ame = or <8 x i1> %i.alc, %i.amd
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ahr, i64 12
  %i.amh = getelementptr inbounds nuw i8, ptr %i.aht, i64 20
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ahv, i64 28
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ahx, i64 36
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ahz, i64 44
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aib, i64 52
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aid, i64 60
  %i.amn = load i8, ptr %i.amf, align 1, !tbaa !7, !noalias !542
  %i.amo = load i8, ptr %i.amg, align 1, !tbaa !7, !noalias !542
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !7, !noalias !542
  %i.amq = load i8, ptr %i.ami, align 1, !tbaa !7, !noalias !542
  %i.amr = load i8, ptr %i.amj, align 1, !tbaa !7, !noalias !542
  %i.ams = load i8, ptr %i.amk, align 1, !tbaa !7, !noalias !542
  %i.amt = load i8, ptr %i.aml, align 1, !tbaa !7, !noalias !542
  %i.amu = load i8, ptr %i.amm, align 1, !tbaa !7, !noalias !542
  %i.amv = insertelement <8 x i8> poison, i8 %i.amn, i64 0
  %i.amw = insertelement <8 x i8> %i.amv, i8 %i.amo, i64 1
  %i.amx = insertelement <8 x i8> %i.amw, i8 %i.amp, i64 2
  %i.amy = insertelement <8 x i8> %i.amx, i8 %i.amq, i64 3
  %i.amz = insertelement <8 x i8> %i.amy, i8 %i.amr, i64 4
  %i.ana = insertelement <8 x i8> %i.amz, i8 %i.ams, i64 5
  %i.anb = insertelement <8 x i8> %i.ana, i8 %i.amt, i64 6
  %i.anc = insertelement <8 x i8> %i.anb, i8 %i.amu, i64 7 ; 2 uses
  %i.and = icmp slt <8 x i8> %i.anc, %broadcast.splat84
  %i.ane = icmp sgt <8 x i8> %i.anc, %broadcast.splat86
  %i.anf = or <8 x i1> %i.and, %i.ane
  %i.ang = or <8 x i1> %i.ame, %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 5
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ahr, i64 13
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aht, i64 21
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ahv, i64 29
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ahx, i64 37
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ahz, i64 45
  %i.ann = getelementptr inbounds nuw i8, ptr %i.aib, i64 53
  %i.ano = getelementptr inbounds nuw i8, ptr %i.aid, i64 61
  %i.anp = load i8, ptr %i.anh, align 1, !tbaa !7, !noalias !542
  %i.anq = load i8, ptr %i.ani, align 1, !tbaa !7, !noalias !542
  %i.anr = load i8, ptr %i.anj, align 1, !tbaa !7, !noalias !542
  %i.ans = load i8, ptr %i.ank, align 1, !tbaa !7, !noalias !542
  %i.ant = load i8, ptr %i.anl, align 1, !tbaa !7, !noalias !542
  %i.anu = load i8, ptr %i.anm, align 1, !tbaa !7, !noalias !542
  %i.anv = load i8, ptr %i.ann, align 1, !tbaa !7, !noalias !542
  %i.anw = load i8, ptr %i.ano, align 1, !tbaa !7, !noalias !542
  %i.anx = insertelement <8 x i8> poison, i8 %i.anp, i64 0
  %i.any = insertelement <8 x i8> %i.anx, i8 %i.anq, i64 1
  %i.anz = insertelement <8 x i8> %i.any, i8 %i.anr, i64 2
  %i.aoa = insertelement <8 x i8> %i.anz, i8 %i.ans, i64 3
  %i.aob = insertelement <8 x i8> %i.aoa, i8 %i.ant, i64 4
  %i.aoc = insertelement <8 x i8> %i.aob, i8 %i.anu, i64 5
  %i.aod = insertelement <8 x i8> %i.aoc, i8 %i.anv, i64 6
  %i.aoe = insertelement <8 x i8> %i.aod, i8 %i.anw, i64 7 ; 2 uses
  %i.aof = icmp slt <8 x i8> %i.aoe, %broadcast.splat84
  %i.aog = icmp sgt <8 x i8> %i.aoe, %broadcast.splat86
  %i.aoh = or <8 x i1> %i.aof, %i.aog
  %i.aoi = or <8 x i1> %i.ang, %i.aoh
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ahq, i64 6
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ahr, i64 14
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aht, i64 22
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ahv, i64 30
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ahx, i64 38
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ahz, i64 46
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aib, i64 54
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aid, i64 62
  %i.aor = load i8, ptr %i.aoj, align 1, !tbaa !7, !noalias !542
  %i.aos = load i8, ptr %i.aok, align 1, !tbaa !7, !noalias !542
  %i.aot = load i8, ptr %i.aol, align 1, !tbaa !7, !noalias !542
  %i.aou = load i8, ptr %i.aom, align 1, !tbaa !7, !noalias !542
  %i.aov = load i8, ptr %i.aon, align 1, !tbaa !7, !noalias !542
  %i.aow = load i8, ptr %i.aoo, align 1, !tbaa !7, !noalias !542
  %i.aox = load i8, ptr %i.aop, align 1, !tbaa !7, !noalias !542
  %i.aoy = load i8, ptr %i.aoq, align 1, !tbaa !7, !noalias !542
  %i.aoz = insertelement <8 x i8> poison, i8 %i.aor, i64 0
  %i.apa = insertelement <8 x i8> %i.aoz, i8 %i.aos, i64 1
  %i.apb = insertelement <8 x i8> %i.apa, i8 %i.aot, i64 2
  %i.apc = insertelement <8 x i8> %i.apb, i8 %i.aou, i64 3
  %i.apd = insertelement <8 x i8> %i.apc, i8 %i.aov, i64 4
  %i.ape = insertelement <8 x i8> %i.apd, i8 %i.aow, i64 5
  %i.apf = insertelement <8 x i8> %i.ape, i8 %i.aox, i64 6
  %i.apg = insertelement <8 x i8> %i.apf, i8 %i.aoy, i64 7 ; 2 uses
  %i.aph = icmp slt <8 x i8> %i.apg, %broadcast.splat84
  %i.api = icmp sgt <8 x i8> %i.apg, %broadcast.splat86
  %i.apj = or <8 x i1> %i.aph, %i.api
  %i.apk = or <8 x i1> %i.aoi, %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ahq, i64 7
  %i.apm = getelementptr inbounds nuw i8, ptr %i.ahr, i64 15
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aht, i64 23
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ahv, i64 31
  %i.app = getelementptr inbounds nuw i8, ptr %i.ahx, i64 39
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ahz, i64 47
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aib, i64 55
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aid, i64 63
  %i.apt = load i8, ptr %i.apl, align 1, !tbaa !7, !noalias !542
  %i.apu = load i8, ptr %i.apm, align 1, !tbaa !7, !noalias !542
  %i.apv = load i8, ptr %i.apn, align 1, !tbaa !7, !noalias !542
  %i.apw = load i8, ptr %i.apo, align 1, !tbaa !7, !noalias !542
  %i.apx = load i8, ptr %i.app, align 1, !tbaa !7, !noalias !542
  %i.apy = load i8, ptr %i.apq, align 1, !tbaa !7, !noalias !542
  %i.apz = load i8, ptr %i.apr, align 1, !tbaa !7, !noalias !542
  %i.aqa = load i8, ptr %i.aps, align 1, !tbaa !7, !noalias !542
  %i.aqb = insertelement <8 x i8> poison, i8 %i.apt, i64 0
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 1
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 2
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 3
  %i.aqf = insertelement <8 x i8> %i.aqe, i8 %i.apx, i64 4
  %i.aqg = insertelement <8 x i8> %i.aqf, i8 %i.apy, i64 5
  %i.aqh = insertelement <8 x i8> %i.aqg, i8 %i.apz, i64 6
  %i.aqi = insertelement <8 x i8> %i.aqh, i8 %i.aqa, i64 7 ; 2 uses
  %i.aqj = icmp slt <8 x i8> %i.aqi, %broadcast.splat84
  %i.aqk = icmp sgt <8 x i8> %i.aqi, %broadcast.splat86
  %i.aql = or <8 x i1> %i.aqj, %i.aqk
  %i.aqm = or <8 x i1> %i.apk, %i.aql             ; 2 uses
  %index.next90 = add nuw i64 %index88, 8         ; 2 uses
  %i.aqn = icmp eq i64 %index.next90, %n.vec82
  br i1 %i.aqn, label %vec.epilog.middle.block91, label %vec.epilog.vector.body87, !llvm.loop !550

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body87
  %i.aqo = bitcast <8 x i1> %i.aqm to i8
  %i.aqp = icmp ne i8 %i.aqo, 0                   ; 2 uses
  %cmp.n92 = icmp eq i64 %n.vec82, %smax189.i
  br i1 %cmp.n92, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block91
  %.081158.i.ph = phi i64 [ 0, %iter.check77 ], [ %n.vec62, %vec.epilog.iter.check79 ], [ %n.vec82, %vec.epilog.middle.block91 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check77 ], [ %i.ad, %vec.epilog.iter.check79 ], [ %i.ahn, %vec.epilog.middle.block91 ]
  %.085156.i.ph = phi i1 [ false, %iter.check77 ], [ %i.ahm, %vec.epilog.iter.check79 ], [ %i.aqp, %vec.epilog.middle.block91 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block91, %middle.block72
  %.lcssa36 = phi i1 [ %i.aqp, %vec.epilog.middle.block91 ], [ %i.ahm, %middle.block72 ], [ %op.rdx, %.preheader.i ]
  %i.aqq = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.aqq, %.preheader137.loopexit.i ] ; 7 uses
  %i.aqr = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.aqs = icmp slt i64 %.082.lcssa.i, %i.aqr
  br i1 %i.aqs, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.aqt = sub nsw i64 %i.aqr, %.082.lcssa.i      ; 6 uses
  %min.iters.check = icmp ult i64 %i.aqt, 8
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.aqt, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aqu = and i64 %i.aqt, 24
  %n.vec = and i64 %i.aqt, -32                    ; 4 uses
  %i.aqv = add nsw i64 %.082.lcssa.i, %n.vec
  %i.aqw = insertelement <16 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.aqx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ %i.aqw, %vector.ph ], [ %i.arg, %vector.body ]
  %vec.phi44 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.arh, %vector.body ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 %index ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %wide.load = load <16 x i8>, ptr %i.aqy, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %wide.load45 = load <16 x i8>, ptr %i.aqz, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.ara = icmp slt <16 x i8> %wide.load, %broadcast.splat
  %i.arb = icmp slt <16 x i8> %wide.load45, %broadcast.splat
  %i.arc = icmp sgt <16 x i8> %wide.load, %broadcast.splat43
  %i.ard = icmp sgt <16 x i8> %wide.load45, %broadcast.splat43
  %i.are = or <16 x i1> %i.ara, %i.arc
  %i.arf = or <16 x i1> %i.arb, %i.ard
  %i.arg = or <16 x i1> %vec.phi, %i.are          ; 2 uses
  %i.arh = or <16 x i1> %vec.phi44, %i.arf        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ari = icmp eq i64 %index.next, %n.vec
  br i1 %i.ari, label %middle.block, label %vector.body, !llvm.loop !551

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.arh, %i.arg
  %i.arj = bitcast <16 x i1> %bin.rdx to i16
  %i.ark = icmp ne i16 %i.arj, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %i.aqt, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aqu, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader, label %vec.epilog.ph, !prof !549

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ark, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %i.arl = and i64 %i.aqr, 7
  %n.vec46 = sub nsw i64 %i.aqt, %i.arl           ; 2 uses
  %i.arm = add nsw i64 %.082.lcssa.i, %n.vec46
  %i.arn = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.aro = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi52 = phi <8 x i1> [ %i.arn, %vec.epilog.ph ], [ %i.art, %vec.epilog.vector.body ]
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 %index51
  %wide.load53 = load <8 x i8>, ptr %i.arp, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.arq = icmp slt <8 x i8> %wide.load53, %broadcast.splat48
  %i.arr = icmp sgt <8 x i8> %wide.load53, %broadcast.splat50
  %i.ars = or <8 x i1> %i.arq, %i.arr
  %i.art = or <8 x i1> %vec.phi52, %i.ars         ; 2 uses
  %index.next54 = add nuw i64 %index51, 8         ; 2 uses
  %i.aru = icmp eq i64 %index.next54, %n.vec46
  br i1 %i.aru, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !552

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.arv = bitcast <8 x i1> %i.art to i8
  %i.arw = icmp ne i8 %i.arv, 0                   ; 2 uses
  %i.arx = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n55 = icmp eq i16 %i.arx, 0
  br i1 %cmp.n55, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.aqv, %vec.epilog.iter.check ], [ %i.arm, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.ark, %vec.epilog.iter.check ], [ %i.arw, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.asg, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.asf, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.ary = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082157.i
  %i.arz = load <8 x i8>, ptr %i.ary, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.asa = icmp slt <8 x i8> %i.arz, %i.t
  %i.asb = icmp sgt <8 x i8> %i.arz, %i.v
  %i.asc = shufflevector <8 x i1> %i.asb, <8 x i1> %i.asa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.asd = bitcast <16 x i1> %i.asc to i16
  %i.ase = icmp ne i16 %i.asd, 0
  %op.rdx = or i1 %i.ase, %.085156.i              ; 2 uses
  %i.asf = add nuw nsw i64 %.082157.i, 8
  %i.asg = add nuw nsw i64 %.081158.i, 1          ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.asg, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !553

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i
  %.284162.i = phi i64 [ %i.asm, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.asl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i.preheader ]
  %i.ash = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.284162.i
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.asj = icmp slt i8 %i.asi, %.41.val
  %i.ask = icmp sgt i8 %i.asi, %.41.val1
  %spec.select128.i = or i1 %i.asj, %i.ask
  %i.asl = or i1 %.287161.i, %spec.select128.i    ; 2 uses
  %i.asm = add nuw nsw i64 %.284162.i, 1          ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.asm, %i.aqr
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i, !llvm.loop !554

bb.d:                                             ; preds = %.lr.ph176.i
  %i.asn = icmp sgt i32 %i.x, 0
  br i1 %i.asn, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.aso = icmp sgt i32 %i.y, 7
  br i1 %i.aso, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.asp = lshr i32 %i.y, 3
  %i.asq = trunc i64 %.092169.i to i3             ; 7 uses
  %i.asr = trunc i64 %.092169.i to i8
  %i.ass = and i8 %i.asr, 7
  %i.ast = add i3 %i.asq, 1
  %i.asu = zext i3 %i.ast to i8
  %i.asv = add i3 %i.asq, 2
  %i.asw = zext i3 %i.asv to i8
  %i.asx = add i3 %i.asq, 3
  %i.asy = zext i3 %i.asx to i8
  %i.asz = xor i3 %i.asq, -4
  %i.ata = zext i3 %i.asz to i8
  %i.atb = add i3 %i.asq, -3
  %i.atc = zext i3 %i.atb to i8
  %i.atd = add i3 %i.asq, -2
  %i.ate = zext i3 %i.atd to i8
  %i.atf = add i3 %i.asq, -1
  %i.atg = zext i3 %i.atf to i8
  %smax.i = zext nneg i32 %i.asp to i64           ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.ath = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx96, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.ath, %.preheader139.loopexit.i ] ; 6 uses
  %i.ati = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.atj = icmp slt i64 %.076.lcssa.i, %i.ati
  br i1 %i.atj, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader: ; preds = %.preheader139.i
  %i.atk = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.atk, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader
  %i.atl = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076.lcssa.i
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.atn = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.ato = lshr i64 %i.atn, 3
  %i.atp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ato
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !7, !noalias !542
  %i.atr = trunc i64 %.092169.i to i8
  %i.ats = and i8 %i.atr, 7
  %i.att = lshr i8 %i.atq, %i.ats
  %i.atu = trunc i8 %i.att to i1
  %i.atv = icmp slt i8 %i.atm, %.41.val
  %i.atw = icmp sgt i8 %i.atm, %.41.val1
  %spec.select130.i.prol = or i1 %i.atv, %i.atw
  %i.atx = select i1 %i.atu, i1 %spec.select130.i.prol, i1 false
  %i.aty = or i1 %.3.lcssa.i, %i.atx              ; 2 uses
  %i.atz = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader ], [ %i.aty, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader ], [ %i.atz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.preheader ], [ %i.aty, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol ]
  %i.aua = add nsw i64 %i.ati, -1
  %i.aub = icmp eq i64 %.076.lcssa.i, %i.aua
  br i1 %i.aub, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.aww, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.awv, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx96, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.auc = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076147.i
  %i.aud = add nsw i64 %.076147.i, %.092169.i
  %i.aue = lshr i64 %i.aud, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aue
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !7, !noalias !542
  %i.auh = or disjoint i64 %.076147.i, 1
  %i.aui = add nsw i64 %i.auh, %.092169.i
  %i.auj = lshr i64 %i.aui, 3
  %i.auk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !7, !noalias !542
  %i.aum = or disjoint i64 %.076147.i, 2
  %i.aun = add nsw i64 %i.aum, %.092169.i
  %i.auo = lshr i64 %i.aun, 3
  %i.aup = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auo
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !7, !noalias !542
  %i.aur = or disjoint i64 %.076147.i, 3
  %i.aus = add nsw i64 %i.aur, %.092169.i
  %i.aut = lshr i64 %i.aus, 3
  %i.auu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aut
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !7, !noalias !542
  %i.auw = or disjoint i64 %.076147.i, 4
  %i.aux = add nsw i64 %i.auw, %.092169.i
  %i.auy = lshr i64 %i.aux, 3
  %i.auz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !7, !noalias !542
  %i.avb = or disjoint i64 %.076147.i, 5
  %i.avc = add nsw i64 %i.avb, %.092169.i
  %i.avd = lshr i64 %i.avc, 3
  %i.ave = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avd
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !7, !noalias !542
  %i.avg = or disjoint i64 %.076147.i, 6
  %i.avh = add nsw i64 %i.avg, %.092169.i
  %i.avi = lshr i64 %i.avh, 3
  %i.avj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avi
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !7, !noalias !542
  %i.avl = or disjoint i64 %.076147.i, 7
  %i.avm = add nsw i64 %i.avl, %.092169.i
  %i.avn = lshr i64 %i.avm, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avn
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !7, !noalias !542
  %i.avq = load <8 x i8>, ptr %i.auc, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.avr = lshr i8 %i.avp, %i.atg
  %i.avs = lshr i8 %i.avk, %i.ate
  %i.avt = lshr i8 %i.avf, %i.atc
  %i.avu = lshr i8 %i.ava, %i.ata
  %i.avv = lshr i8 %i.auv, %i.asy
  %i.avw = lshr i8 %i.auq, %i.asw
  %i.avx = lshr i8 %i.aul, %i.asu
  %i.avy = lshr i8 %i.aug, %i.ass
  %i.avz = trunc i8 %i.avr to i1
  %i.awa = trunc i8 %i.avs to i1
  %i.awb = trunc i8 %i.avt to i1
  %i.awc = trunc i8 %i.avu to i1
  %i.awd = trunc i8 %i.avv to i1
  %i.awe = trunc i8 %i.avw to i1
  %i.awf = trunc i8 %i.avx to i1
  %i.awg = trunc i8 %i.avy to i1
  %i.awh = icmp slt <8 x i8> %i.avq, %i.p
  %i.awi = icmp sgt <8 x i8> %i.avq, %i.r
  %i.awj = or <8 x i1> %i.awh, %i.awi
  %i.awk = insertelement <8 x i1> poison, i1 %i.awg, i64 0
  %i.awl = insertelement <8 x i1> %i.awk, i1 %i.awf, i64 1
  %i.awm = insertelement <8 x i1> %i.awl, i1 %i.awe, i64 2
  %i.awn = insertelement <8 x i1> %i.awm, i1 %i.awd, i64 3
  %i.awo = insertelement <8 x i1> %i.awn, i1 %i.awc, i64 4
  %i.awp = insertelement <8 x i1> %i.awo, i1 %i.awb, i64 5
  %i.awq = insertelement <8 x i1> %i.awp, i1 %i.awa, i64 6
  %i.awr = insertelement <8 x i1> %i.awq, i1 %i.avz, i64 7
  %i.aws = select <8 x i1> %i.awr, <8 x i1> %i.awj, <8 x i1> zeroinitializer
  %i.awt = bitcast <8 x i1> %i.aws to i8
  %i.awu = icmp ne i8 %i.awt, 0
  %op.rdx96 = or i1 %i.awu, %.3146.i              ; 2 uses
  %i.awv = add nuw nsw i64 %.076147.i, 8
  %i.aww = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aww, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !555

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i
  %.2151.i = phi i64 [ %i.aya, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.axz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit ]
  %i.awx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.2151.i
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.awz = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.axa = lshr i64 %i.awz, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !7, !noalias !542
  %i.axd = trunc i64 %i.awz to i8
  %i.axe = and i8 %i.axd, 7
  %i.axf = lshr i8 %i.axc, %i.axe
  %i.axg = trunc i8 %i.axf to i1
  %i.axh = icmp slt i8 %i.awy, %.41.val
  %i.axi = icmp sgt i8 %i.awy, %.41.val1
  %spec.select130.i = or i1 %i.axh, %i.axi
  %i.axj = select i1 %i.axg, i1 %spec.select130.i, i1 false
  %i.axk = or i1 %.5150.i, %i.axj
  %i.axl = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.axl
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !7, !noalias !542 ; 2 uses
  %i.axo = add nsw i64 %i.axl, %.092169.i         ; 2 uses
  %i.axp = lshr i64 %i.axo, 3
  %i.axq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axp
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !7, !noalias !542
  %i.axs = trunc i64 %i.axo to i8
  %i.axt = and i8 %i.axs, 7
  %i.axu = lshr i8 %i.axr, %i.axt
  %i.axv = trunc i8 %i.axu to i1
  %i.axw = icmp slt i8 %i.axn, %.41.val
  %i.axx = icmp sgt i8 %i.axn, %.41.val1
  %spec.select130.i.1 = or i1 %i.axw, %i.axx
  %i.axy = select i1 %i.axv, i1 %spec.select130.i.1, i1 false
  %i.axz = or i1 %i.axk, %i.axy                   ; 2 uses
  %i.aya = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.aya, %i.ati
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i, !llvm.loop !556

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.asl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.arw, %vec.epilog.middle.block ], [ %i.ark, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i.prol.loopexit ], [ %i.axz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.ayb = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !542
  %i.ayc = icmp sgt i64 %i.ayb, 0
  %i.ayd = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.ayc, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ayq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.aye = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ayf
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !7, !noalias !542
  %i.ayi = trunc i64 %i.aye to i8
  %i.ayj = and i8 %i.ayi, 7
  %i.ayk = lshr i8 %i.ayh, %i.ayj
  %i.ayl = trunc i8 %i.ayk to i1
  br i1 %i.ayl, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.aym = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.073167.i
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !7, !noalias !542 ; 3 uses
  %i.ayo = icmp slt i8 %i.ayn, %.41.val
  %i.ayp = icmp sgt i8 %i.ayn, %.41.val1
  %or.cond131.i = or i1 %i.ayo, %i.ayp
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE0_clEa(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef signext %i.ayn)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ayq = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ayq, %i.ayd
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !558

bb.g:                                             ; preds = %.lr.ph.i
  %i.ayr = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ayr, %i.ayd
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !559

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ayr, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.0165.i
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !7, !noalias !542 ; 3 uses
  %i.ayu = icmp slt i8 %i.ayt, %.41.val
  %i.ayv = icmp sgt i8 %i.ayt, %.41.val1
  %or.cond132.i = or i1 %i.ayu, %i.ayv
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE0_clEa(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef signext %i.ayt)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ayw = sext i32 %i.y to i64
  %i.ayx = getelementptr inbounds i8, ptr %.088173.i, i64 %i.ayw
  %i.ayy = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ayz = add nsw i64 %.090172.i, %i.ayy         ; 2 uses
  %i.aza = add nsw i64 %.092169.i, %i.ayy
  %i.azb = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !542
  %i.azc = icmp slt i64 %i.ayz, %i.azb
  br i1 %i.azc, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !560

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !561
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlaE_clEa.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_8Int8TypeEaEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlabE_clEab.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !542
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.42.val, ptr %i.a, align 2, !tbaa !16, !noalias !564
  store i16 %.42.val1, ptr %i.b, align 2, !tbaa !16, !noalias !564
  %.not.i = icmp ne i16 %.42.val, -32768
  %.not97.i = icmp ne i16 %.42.val1, 32767
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !567
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !564 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !564
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !564 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !564
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !564
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !564
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !564
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !564
  %i.n = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat64 = shufflevector <8 x i16> %broadcast.splatinsert63, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert65 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat66 = shufflevector <8 x i16> %broadcast.splatinsert65, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert83 = insertelement <4 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat84 = shufflevector <4 x i16> %broadcast.splatinsert83, <4 x i16> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert85 = insertelement <4 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat86 = shufflevector <4 x i16> %broadcast.splatinsert85, <4 x i16> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.t = shufflevector <8 x i16> %i.s, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.v = shufflevector <8 x i16> %i.u, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <4 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat48 = shufflevector <4 x i16> %broadcast.splatinsert47, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat50 = shufflevector <4 x i16> %broadcast.splatinsert49, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.afr, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 31 uses
  %.090172.i = phi i64 [ %i.aft, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.afu, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !564 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check77, label %.preheader137.i

iter.check77:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check58 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check58, label %.preheader.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check77
  %min.iters.check60 = icmp ult i32 %i.x, 128
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ac = and i64 %smax189.i, 12
  %n.vec62 = and i64 %smax189.i, 268435440        ; 5 uses
  %i.ad = shl nuw nsw i64 %n.vec62, 3
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph61
  %index68 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body67 ] ; 2 uses
  %vec.phi69 = phi <8 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.ry, %vector.body67 ]
  %vec.phi70 = phi <8 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.rz, %vector.body67 ]
  %i.ae = shl nuw i64 %index68, 3                 ; 16 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.bk = load i16, ptr %i.af, align 2, !tbaa !16, !noalias !564
  %i.bl = load i16, ptr %i.ah, align 2, !tbaa !16, !noalias !564
  %i.bm = load i16, ptr %i.aj, align 2, !tbaa !16, !noalias !564
  %i.bn = load i16, ptr %i.al, align 2, !tbaa !16, !noalias !564
  %i.bo = load i16, ptr %i.an, align 2, !tbaa !16, !noalias !564
  %i.bp = load i16, ptr %i.ap, align 2, !tbaa !16, !noalias !564
  %i.bq = load i16, ptr %i.ar, align 2, !tbaa !16, !noalias !564
  %i.br = load i16, ptr %i.at, align 2, !tbaa !16, !noalias !564
  %i.bs = insertelement <8 x i16> poison, i16 %i.bk, i64 0
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 1
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 2
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 3
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 4
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 5
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 6
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 7 ; 2 uses
  %i.ca = load i16, ptr %i.av, align 2, !tbaa !16, !noalias !564
  %i.cb = load i16, ptr %i.ax, align 2, !tbaa !16, !noalias !564
  %i.cc = load i16, ptr %i.az, align 2, !tbaa !16, !noalias !564
  %i.cd = load i16, ptr %i.bb, align 2, !tbaa !16, !noalias !564
  %i.ce = load i16, ptr %i.bd, align 2, !tbaa !16, !noalias !564
  %i.cf = load i16, ptr %i.bf, align 2, !tbaa !16, !noalias !564
  %i.cg = load i16, ptr %i.bh, align 2, !tbaa !16, !noalias !564
  %i.ch = load i16, ptr %i.bj, align 2, !tbaa !16, !noalias !564
  %i.ci = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 1
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 2
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 3
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 4
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 5
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 6
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 7 ; 2 uses
  %i.cq = icmp slt <8 x i16> %i.bz, %broadcast.splat64
  %i.cr = icmp slt <8 x i16> %i.cp, %broadcast.splat64
  %i.cs = icmp sgt <8 x i16> %i.bz, %broadcast.splat66
  %i.ct = icmp sgt <8 x i16> %i.cp, %broadcast.splat66
  %i.cu = or <8 x i1> %i.cq, %i.cs
  %i.cv = or <8 x i1> %i.cr, %i.ct
  %i.cw = or <8 x i1> %vec.phi69, %i.cu
  %i.cx = or <8 x i1> %vec.phi70, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 34
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 66
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ao, i64 82
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 98
  %i.df = getelementptr inbounds nuw i8, ptr %i.as, i64 114
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 130
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 146
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 162
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ba, i64 178
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bc, i64 194
  %i.dl = getelementptr inbounds nuw i8, ptr %i.be, i64 210
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 226
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bi, i64 242
  %i.do = load i16, ptr %i.cy, align 2, !tbaa !16, !noalias !564
  %i.dp = load i16, ptr %i.cz, align 2, !tbaa !16, !noalias !564
  %i.dq = load i16, ptr %i.da, align 2, !tbaa !16, !noalias !564
  %i.dr = load i16, ptr %i.db, align 2, !tbaa !16, !noalias !564
  %i.ds = load i16, ptr %i.dc, align 2, !tbaa !16, !noalias !564
  %i.dt = load i16, ptr %i.dd, align 2, !tbaa !16, !noalias !564
  %i.du = load i16, ptr %i.de, align 2, !tbaa !16, !noalias !564
  %i.dv = load i16, ptr %i.df, align 2, !tbaa !16, !noalias !564
  %i.dw = insertelement <8 x i16> poison, i16 %i.do, i64 0
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 1
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 2
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 3
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 4
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 5
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 6
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 7 ; 2 uses
  %i.ee = load i16, ptr %i.dg, align 2, !tbaa !16, !noalias !564
  %i.ef = load i16, ptr %i.dh, align 2, !tbaa !16, !noalias !564
  %i.eg = load i16, ptr %i.di, align 2, !tbaa !16, !noalias !564
  %i.eh = load i16, ptr %i.dj, align 2, !tbaa !16, !noalias !564
  %i.ei = load i16, ptr %i.dk, align 2, !tbaa !16, !noalias !564
  %i.ej = load i16, ptr %i.dl, align 2, !tbaa !16, !noalias !564
  %i.ek = load i16, ptr %i.dm, align 2, !tbaa !16, !noalias !564
  %i.el = load i16, ptr %i.dn, align 2, !tbaa !16, !noalias !564
  %i.em = insertelement <8 x i16> poison, i16 %i.ee, i64 0
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 1
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 2
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 3
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 4
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 5
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 6
  %i.et = insertelement <8 x i16> %i.es, i16 %i.el, i64 7 ; 2 uses
  %i.eu = icmp slt <8 x i16> %i.ed, %broadcast.splat64
  %i.ev = icmp slt <8 x i16> %i.et, %broadcast.splat64
  %i.ew = icmp sgt <8 x i16> %i.ed, %broadcast.splat66
  %i.ex = icmp sgt <8 x i16> %i.et, %broadcast.splat66
  %i.ey = or <8 x i1> %i.eu, %i.ew
  %i.ez = or <8 x i1> %i.ev, %i.ex
  %i.fa = or <8 x i1> %i.cw, %i.ey
  %i.fb = or <8 x i1> %i.cx, %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.fg = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ao, i64 84
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aq, i64 100
  %i.fj = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %i.fk = getelementptr inbounds nuw i8, ptr %i.au, i64 132
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 148
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ay, i64 164
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 180
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bc, i64 196
  %i.fp = getelementptr inbounds nuw i8, ptr %i.be, i64 212
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bg, i64 228
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bi, i64 244
  %i.fs = load i16, ptr %i.fc, align 2, !tbaa !16, !noalias !564
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !16, !noalias !564
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !16, !noalias !564
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !16, !noalias !564
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !16, !noalias !564
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !16, !noalias !564
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !16, !noalias !564
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !16, !noalias !564
  %i.ga = insertelement <8 x i16> poison, i16 %i.fs, i64 0
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 1
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 2
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 3
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 4
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 5
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 6
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 7 ; 2 uses
  %i.gi = load i16, ptr %i.fk, align 2, !tbaa !16, !noalias !564
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !16, !noalias !564
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !16, !noalias !564
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !16, !noalias !564
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !16, !noalias !564
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !16, !noalias !564
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !16, !noalias !564
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !16, !noalias !564
  %i.gq = insertelement <8 x i16> poison, i16 %i.gi, i64 0
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 1
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 2
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 3
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 4
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 5
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 6
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 7 ; 2 uses
  %i.gy = icmp slt <8 x i16> %i.gh, %broadcast.splat64
  %i.gz = icmp slt <8 x i16> %i.gx, %broadcast.splat64
  %i.ha = icmp sgt <8 x i16> %i.gh, %broadcast.splat66
  %i.hb = icmp sgt <8 x i16> %i.gx, %broadcast.splat66
  %i.hc = or <8 x i1> %i.gy, %i.ha
  %i.hd = or <8 x i1> %i.gz, %i.hb
  %i.he = or <8 x i1> %i.fa, %i.hc
  %i.hf = or <8 x i1> %i.fb, %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ag, i64 22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ai, i64 38
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 54
  %i.hk = getelementptr inbounds nuw i8, ptr %i.am, i64 70
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ao, i64 86
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aq, i64 102
  %i.hn = getelementptr inbounds nuw i8, ptr %i.as, i64 118
  %i.ho = getelementptr inbounds nuw i8, ptr %i.au, i64 134
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 150
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ay, i64 166
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ba, i64 182
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bc, i64 198
  %i.ht = getelementptr inbounds nuw i8, ptr %i.be, i64 214
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bg, i64 230
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bi, i64 246
  %i.hw = load i16, ptr %i.hg, align 2, !tbaa !16, !noalias !564
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9Int16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 3
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 4
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 5
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 6
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.kx, i64 7 ; 2 uses
  %i.lg = icmp slt <8 x i16> %i.kp, %broadcast.splat64
  %i.lh = icmp slt <8 x i16> %i.lf, %broadcast.splat64
  %i.li = icmp sgt <8 x i16> %i.kp, %broadcast.splat66
  %i.lj = icmp sgt <8 x i16> %i.lf, %broadcast.splat66
  %i.lk = or <8 x i1> %i.lg, %i.li
  %i.ll = or <8 x i1> %i.lh, %i.lj
  %i.lm = or <8 x i1> %i.ji, %i.lk
  %i.ln = or <8 x i1> %i.jj, %i.ll
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ag, i64 26
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ai, i64 42
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 58
  %i.ls = getelementptr inbounds nuw i8, ptr %i.am, i64 74
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ao, i64 90
  %i.lu = getelementptr inbounds nuw i8, ptr %i.aq, i64 106
  %i.lv = getelementptr inbounds nuw i8, ptr %i.as, i64 122
  %i.lw = getelementptr inbounds nuw i8, ptr %i.au, i64 138
  %i.lx = getelementptr inbounds nuw i8, ptr %i.aw, i64 154
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ay, i64 170
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ba, i64 186
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bc, i64 202
  %i.mb = getelementptr inbounds nuw i8, ptr %i.be, i64 218
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bg, i64 234
  %i.md = getelementptr inbounds nuw i8, ptr %i.bi, i64 250
  %i.me = load i16, ptr %i.lo, align 2, !tbaa !16, !noalias !564
  %i.mf = load i16, ptr %i.lp, align 2, !tbaa !16, !noalias !564
  %i.mg = load i16, ptr %i.lq, align 2, !tbaa !16, !noalias !564
  %i.mh = load i16, ptr %i.lr, align 2, !tbaa !16, !noalias !564
  %i.mi = load i16, ptr %i.ls, align 2, !tbaa !16, !noalias !564
  %i.mj = load i16, ptr %i.lt, align 2, !tbaa !16, !noalias !564
  %i.mk = load i16, ptr %i.lu, align 2, !tbaa !16, !noalias !564
  %i.ml = load i16, ptr %i.lv, align 2, !tbaa !16, !noalias !564
  %i.mm = insertelement <8 x i16> poison, i16 %i.me, i64 0
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 1
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 2
  %i.mp = insertelement <8 x i16> %i.mo, i16 %i.mh, i64 3
  %i.mq = insertelement <8 x i16> %i.mp, i16 %i.mi, i64 4
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 5
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 6
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 7 ; 2 uses
  %i.mu = load i16, ptr %i.lw, align 2, !tbaa !16, !noalias !564
  %i.mv = load i16, ptr %i.lx, align 2, !tbaa !16, !noalias !564
  %i.mw = load i16, ptr %i.ly, align 2, !tbaa !16, !noalias !564
  %i.mx = load i16, ptr %i.lz, align 2, !tbaa !16, !noalias !564
  %i.my = load i16, ptr %i.ma, align 2, !tbaa !16, !noalias !564
  %i.mz = load i16, ptr %i.mb, align 2, !tbaa !16, !noalias !564
  %i.na = load i16, ptr %i.mc, align 2, !tbaa !16, !noalias !564
  %i.nb = load i16, ptr %i.md, align 2, !tbaa !16, !noalias !564
  %i.nc = insertelement <8 x i16> poison, i16 %i.mu, i64 0
  %i.nd = insertelement <8 x i16> %i.nc, i16 %i.mv, i64 1
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 2
  %i.nf = insertelement <8 x i16> %i.ne, i16 %i.mx, i64 3
  %i.ng = insertelement <8 x i16> %i.nf, i16 %i.my, i64 4
  %i.nh = insertelement <8 x i16> %i.ng, i16 %i.mz, i64 5
  %i.ni = insertelement <8 x i16> %i.nh, i16 %i.na, i64 6
  %i.nj = insertelement <8 x i16> %i.ni, i16 %i.nb, i64 7 ; 2 uses
  %i.nk = icmp slt <8 x i16> %i.mt, %broadcast.splat64
  %i.nl = icmp slt <8 x i16> %i.nj, %broadcast.splat64
  %i.nm = icmp sgt <8 x i16> %i.mt, %broadcast.splat66
  %i.nn = icmp sgt <8 x i16> %i.nj, %broadcast.splat66
  %i.no = or <8 x i1> %i.nk, %i.nm
  %i.np = or <8 x i1> %i.nl, %i.nn
  %i.nq = or <8 x i1> %i.lm, %i.no
  %i.nr = or <8 x i1> %i.ln, %i.np
  %i.ns = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.nw = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ao, i64 92
  %i.ny = getelementptr inbounds nuw i8, ptr %i.aq, i64 108
  %i.nz = getelementptr inbounds nuw i8, ptr %i.as, i64 124
  %i.oa = getelementptr inbounds nuw i8, ptr %i.au, i64 140
  %i.ob = getelementptr inbounds nuw i8, ptr %i.aw, i64 156
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ay, i64 172
  %i.od = getelementptr inbounds nuw i8, ptr %i.ba, i64 188
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bc, i64 204
  %i.of = getelementptr inbounds nuw i8, ptr %i.be, i64 220
  %i.og = getelementptr inbounds nuw i8, ptr %i.bg, i64 236
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bi, i64 252
  %i.oi = load i16, ptr %i.ns, align 2, !tbaa !16, !noalias !564
  %i.oj = load i16, ptr %i.nt, align 2, !tbaa !16, !noalias !564
  %i.ok = load i16, ptr %i.nu, align 2, !tbaa !16, !noalias !564
  %i.ol = load i16, ptr %i.nv, align 2, !tbaa !16, !noalias !564
  %i.om = load i16, ptr %i.nw, align 2, !tbaa !16, !noalias !564
  %i.on = load i16, ptr %i.nx, align 2, !tbaa !16, !noalias !564
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !16, !noalias !564
  %i.op = load i16, ptr %i.nz, align 2, !tbaa !16, !noalias !564
  %i.oq = insertelement <8 x i16> poison, i16 %i.oi, i64 0
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 1
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 2
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 3
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 4
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 5
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 6
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 7 ; 2 uses
  %i.oy = load i16, ptr %i.oa, align 2, !tbaa !16, !noalias !564
  %i.oz = load i16, ptr %i.ob, align 2, !tbaa !16, !noalias !564
  %i.pa = load i16, ptr %i.oc, align 2, !tbaa !16, !noalias !564
  %i.pb = load i16, ptr %i.od, align 2, !tbaa !16, !noalias !564
  %i.pc = load i16, ptr %i.oe, align 2, !tbaa !16, !noalias !564
  %i.pd = load i16, ptr %i.of, align 2, !tbaa !16, !noalias !564
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !16, !noalias !564
  %i.pf = load i16, ptr %i.oh, align 2, !tbaa !16, !noalias !564
  %i.pg = insertelement <8 x i16> poison, i16 %i.oy, i64 0
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 1
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 2
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 3
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 4
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 5
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 6
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 7 ; 2 uses
  %i.po = icmp slt <8 x i16> %i.ox, %broadcast.splat64
  %i.pp = icmp slt <8 x i16> %i.pn, %broadcast.splat64
  %i.pq = icmp sgt <8 x i16> %i.ox, %broadcast.splat66
  %i.pr = icmp sgt <8 x i16> %i.pn, %broadcast.splat66
  %i.ps = or <8 x i1> %i.po, %i.pq
  %i.pt = or <8 x i1> %i.pp, %i.pr
  %i.pu = or <8 x i1> %i.nq, %i.ps
  %i.pv = or <8 x i1> %i.nr, %i.pt
  %i.pw = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.px = getelementptr inbounds nuw i8, ptr %i.ag, i64 30
  %i.py = getelementptr inbounds nuw i8, ptr %i.ai, i64 46
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ak, i64 62
  %i.qa = getelementptr inbounds nuw i8, ptr %i.am, i64 78
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ao, i64 94
  %i.qc = getelementptr inbounds nuw i8, ptr %i.aq, i64 110
  %i.qd = getelementptr inbounds nuw i8, ptr %i.as, i64 126
  %i.qe = getelementptr inbounds nuw i8, ptr %i.au, i64 142
  %i.qf = getelementptr inbounds nuw i8, ptr %i.aw, i64 158
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ay, i64 174
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ba, i64 190
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bc, i64 206
  %i.qj = getelementptr inbounds nuw i8, ptr %i.be, i64 222
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bg, i64 238
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bi, i64 254
  %i.qm = load i16, ptr %i.pw, align 2, !tbaa !16, !noalias !564
  %i.qn = load i16, ptr %i.px, align 2, !tbaa !16, !noalias !564
  %i.qo = load i16, ptr %i.py, align 2, !tbaa !16, !noalias !564
  %i.qp = load i16, ptr %i.pz, align 2, !tbaa !16, !noalias !564
  %i.qq = load i16, ptr %i.qa, align 2, !tbaa !16, !noalias !564
  %i.qr = load i16, ptr %i.qb, align 2, !tbaa !16, !noalias !564
  %i.qs = load i16, ptr %i.qc, align 2, !tbaa !16, !noalias !564
  %i.qt = load i16, ptr %i.qd, align 2, !tbaa !16, !noalias !564
  %i.qu = insertelement <8 x i16> poison, i16 %i.qm, i64 0
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 1
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 2
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 3
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 4
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 5
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 6
  %i.rb = insertelement <8 x i16> %i.ra, i16 %i.qt, i64 7 ; 2 uses
  %i.rc = load i16, ptr %i.qe, align 2, !tbaa !16, !noalias !564
  %i.rd = load i16, ptr %i.qf, align 2, !tbaa !16, !noalias !564
  %i.re = load i16, ptr %i.qg, align 2, !tbaa !16, !noalias !564
  %i.rf = load i16, ptr %i.qh, align 2, !tbaa !16, !noalias !564
  %i.rg = load i16, ptr %i.qi, align 2, !tbaa !16, !noalias !564
  %i.rh = load i16, ptr %i.qj, align 2, !tbaa !16, !noalias !564
  %i.ri = load i16, ptr %i.qk, align 2, !tbaa !16, !noalias !564
  %i.rj = load i16, ptr %i.ql, align 2, !tbaa !16, !noalias !564
  %i.rk = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 1
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 2
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 3
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 4
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 5
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 6
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.rj, i64 7 ; 2 uses
  %i.rs = icmp slt <8 x i16> %i.rb, %broadcast.splat64
  %i.rt = icmp slt <8 x i16> %i.rr, %broadcast.splat64
  %i.ru = icmp sgt <8 x i16> %i.rb, %broadcast.splat66
  %i.rv = icmp sgt <8 x i16> %i.rr, %broadcast.splat66
  %i.rw = or <8 x i1> %i.rs, %i.ru
  %i.rx = or <8 x i1> %i.rt, %i.rv
  %i.ry = or <8 x i1> %i.pu, %i.rw                ; 2 uses
  %i.rz = or <8 x i1> %i.pv, %i.rx                ; 2 uses
  %index.next71 = add nuw i64 %index68, 16        ; 2 uses
  %i.sa = icmp eq i64 %index.next71, %n.vec62
  br i1 %i.sa, label %middle.block72, label %vector.body67, !llvm.loop !570

middle.block72:                                   ; preds = %vector.body67
  %bin.rdx73 = or <8 x i1> %i.rz, %i.ry
  %i.sb = bitcast <8 x i1> %bin.rdx73 to i8
  %i.sc = icmp ne i8 %i.sb, 0                     ; 3 uses
  %cmp.n74 = icmp eq i64 %n.vec62, %smax189.i
  br i1 %cmp.n74, label %.preheader137.loopexit.i, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block72
  %min.epilog.iters.check80 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check80, label %.preheader.i.preheader, label %vec.epilog.ph81, !prof !426

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec62, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %bc.merge.rdx76 = phi i1 [ %i.sc, %vec.epilog.iter.check79 ], [ false, %vector.main.loop.iter.check59 ]
  %n.vec82 = and i64 %smax189.i, 268435452        ; 4 uses
  %i.sd = shl nuw nsw i64 %n.vec82, 3
  %i.se = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx76, i64 0
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph81
  %index88 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next90, %vec.epilog.vector.body87 ] ; 2 uses
  %vec.phi89 = phi <4 x i1> [ %i.se, %vec.epilog.ph81 ], [ %i.xg, %vec.epilog.vector.body87 ]
  %i.sf = shl nuw i64 %index88, 3                 ; 4 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 48
  %i.sn = load i16, ptr %i.sg, align 2, !tbaa !16, !noalias !564
  %i.so = load i16, ptr %i.si, align 2, !tbaa !16, !noalias !564
  %i.sp = load i16, ptr %i.sk, align 2, !tbaa !16, !noalias !564
  %i.sq = load i16, ptr %i.sm, align 2, !tbaa !16, !noalias !564
  %i.sr = insertelement <4 x i16> poison, i16 %i.sn, i64 0
  %i.ss = insertelement <4 x i16> %i.sr, i16 %i.so, i64 1
  %i.st = insertelement <4 x i16> %i.ss, i16 %i.sp, i64 2
  %i.su = insertelement <4 x i16> %i.st, i16 %i.sq, i64 3 ; 2 uses
  %i.sv = icmp slt <4 x i16> %i.su, %broadcast.splat84
  %i.sw = icmp sgt <4 x i16> %i.su, %broadcast.splat86
  %i.sx = or <4 x i1> %i.sv, %i.sw
  %i.sy = or <4 x i1> %vec.phi89, %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sg, i64 2
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sh, i64 18
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 34
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sl, i64 50
  %i.td = load i16, ptr %i.sz, align 2, !tbaa !16, !noalias !564
  %i.te = load i16, ptr %i.ta, align 2, !tbaa !16, !noalias !564
  %i.tf = load i16, ptr %i.tb, align 2, !tbaa !16, !noalias !564
  %i.tg = load i16, ptr %i.tc, align 2, !tbaa !16, !noalias !564
  %i.th = insertelement <4 x i16> poison, i16 %i.td, i64 0
  %i.ti = insertelement <4 x i16> %i.th, i16 %i.te, i64 1
  %i.tj = insertelement <4 x i16> %i.ti, i16 %i.tf, i64 2
  %i.tk = insertelement <4 x i16> %i.tj, i16 %i.tg, i64 3 ; 2 uses
  %i.tl = icmp slt <4 x i16> %i.tk, %broadcast.splat84
  %i.tm = icmp sgt <4 x i16> %i.tk, %broadcast.splat86
  %i.tn = or <4 x i1> %i.tl, %i.tm
  %i.to = or <4 x i1> %i.sy, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sh, i64 20
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sj, i64 36
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sl, i64 52
  %i.tt = load i16, ptr %i.tp, align 2, !tbaa !16, !noalias !564
  %i.tu = load i16, ptr %i.tq, align 2, !tbaa !16, !noalias !564
  %i.tv = load i16, ptr %i.tr, align 2, !tbaa !16, !noalias !564
  %i.tw = load i16, ptr %i.ts, align 2, !tbaa !16, !noalias !564
  %i.tx = insertelement <4 x i16> poison, i16 %i.tt, i64 0
  %i.ty = insertelement <4 x i16> %i.tx, i16 %i.tu, i64 1
  %i.tz = insertelement <4 x i16> %i.ty, i16 %i.tv, i64 2
  %i.ua = insertelement <4 x i16> %i.tz, i16 %i.tw, i64 3 ; 2 uses
  %i.ub = icmp slt <4 x i16> %i.ua, %broadcast.splat84
  %i.uc = icmp sgt <4 x i16> %i.ua, %broadcast.splat86
  %i.ud = or <4 x i1> %i.ub, %i.uc
  %i.ue = or <4 x i1> %i.to, %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sg, i64 6
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sh, i64 22
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sj, i64 38
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sl, i64 54
  %i.uj = load i16, ptr %i.uf, align 2, !tbaa !16, !noalias !564
  %i.uk = load i16, ptr %i.ug, align 2, !tbaa !16, !noalias !564
  %i.ul = load i16, ptr %i.uh, align 2, !tbaa !16, !noalias !564
  %i.um = load i16, ptr %i.ui, align 2, !tbaa !16, !noalias !564
  %i.un = insertelement <4 x i16> poison, i16 %i.uj, i64 0
  %i.uo = insertelement <4 x i16> %i.un, i16 %i.uk, i64 1
  %i.up = insertelement <4 x i16> %i.uo, i16 %i.ul, i64 2
  %i.uq = insertelement <4 x i16> %i.up, i16 %i.um, i64 3 ; 2 uses
  %i.ur = icmp slt <4 x i16> %i.uq, %broadcast.splat84
  %i.us = icmp sgt <4 x i16> %i.uq, %broadcast.splat86
  %i.ut = or <4 x i1> %i.ur, %i.us
  %i.uu = or <4 x i1> %i.ue, %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sj, i64 40
  %i.uy = getelementptr inbounds nuw i8, ptr %i.sl, i64 56
  %i.uz = load i16, ptr %i.uv, align 2, !tbaa !16, !noalias !564
  %i.va = load i16, ptr %i.uw, align 2, !tbaa !16, !noalias !564
  %i.vb = load i16, ptr %i.ux, align 2, !tbaa !16, !noalias !564
  %i.vc = load i16, ptr %i.uy, align 2, !tbaa !16, !noalias !564
  %i.vd = insertelement <4 x i16> poison, i16 %i.uz, i64 0
  %i.ve = insertelement <4 x i16> %i.vd, i16 %i.va, i64 1
  %i.vf = insertelement <4 x i16> %i.ve, i16 %i.vb, i64 2
  %i.vg = insertelement <4 x i16> %i.vf, i16 %i.vc, i64 3 ; 2 uses
  %i.vh = icmp slt <4 x i16> %i.vg, %broadcast.splat84
  %i.vi = icmp sgt <4 x i16> %i.vg, %broadcast.splat86
  %i.vj = or <4 x i1> %i.vh, %i.vi
  %i.vk = or <4 x i1> %i.uu, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.sg, i64 10
  %i.vm = getelementptr inbounds nuw i8, ptr %i.sh, i64 26
  %i.vn = getelementptr inbounds nuw i8, ptr %i.sj, i64 42
  %i.vo = getelementptr inbounds nuw i8, ptr %i.sl, i64 58
  %i.vp = load i16, ptr %i.vl, align 2, !tbaa !16, !noalias !564
  %i.vq = load i16, ptr %i.vm, align 2, !tbaa !16, !noalias !564
  %i.vr = load i16, ptr %i.vn, align 2, !tbaa !16, !noalias !564
  %i.vs = load i16, ptr %i.vo, align 2, !tbaa !16, !noalias !564
  %i.vt = insertelement <4 x i16> poison, i16 %i.vp, i64 0
  %i.vu = insertelement <4 x i16> %i.vt, i16 %i.vq, i64 1
  %i.vv = insertelement <4 x i16> %i.vu, i16 %i.vr, i64 2
  %i.vw = insertelement <4 x i16> %i.vv, i16 %i.vs, i64 3 ; 2 uses
  %i.vx = icmp slt <4 x i16> %i.vw, %broadcast.splat84
  %i.vy = icmp sgt <4 x i16> %i.vw, %broadcast.splat86
  %i.vz = or <4 x i1> %i.vx, %i.vy
  %i.wa = or <4 x i1> %i.vk, %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.sg, i64 12
  %i.wc = getelementptr inbounds nuw i8, ptr %i.sh, i64 28
  %i.wd = getelementptr inbounds nuw i8, ptr %i.sj, i64 44
  %i.we = getelementptr inbounds nuw i8, ptr %i.sl, i64 60
  %i.wf = load i16, ptr %i.wb, align 2, !tbaa !16, !noalias !564
  %i.wg = load i16, ptr %i.wc, align 2, !tbaa !16, !noalias !564
  %i.wh = load i16, ptr %i.wd, align 2, !tbaa !16, !noalias !564
  %i.wi = load i16, ptr %i.we, align 2, !tbaa !16, !noalias !564
  %i.wj = insertelement <4 x i16> poison, i16 %i.wf, i64 0
  %i.wk = insertelement <4 x i16> %i.wj, i16 %i.wg, i64 1
  %i.wl = insertelement <4 x i16> %i.wk, i16 %i.wh, i64 2
  %i.wm = insertelement <4 x i16> %i.wl, i16 %i.wi, i64 3 ; 2 uses
  %i.wn = icmp slt <4 x i16> %i.wm, %broadcast.splat84
  %i.wo = icmp sgt <4 x i16> %i.wm, %broadcast.splat86
  %i.wp = or <4 x i1> %i.wn, %i.wo
  %i.wq = or <4 x i1> %i.wa, %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.sg, i64 14
  %i.ws = getelementptr inbounds nuw i8, ptr %i.sh, i64 30
  %i.wt = getelementptr inbounds nuw i8, ptr %i.sj, i64 46
  %i.wu = getelementptr inbounds nuw i8, ptr %i.sl, i64 62
  %i.wv = load i16, ptr %i.wr, align 2, !tbaa !16, !noalias !564
  %i.ww = load i16, ptr %i.ws, align 2, !tbaa !16, !noalias !564
  %i.wx = load i16, ptr %i.wt, align 2, !tbaa !16, !noalias !564
  %i.wy = load i16, ptr %i.wu, align 2, !tbaa !16, !noalias !564
  %i.wz = insertelement <4 x i16> poison, i16 %i.wv, i64 0
  %i.xa = insertelement <4 x i16> %i.wz, i16 %i.ww, i64 1
  %i.xb = insertelement <4 x i16> %i.xa, i16 %i.wx, i64 2
  %i.xc = insertelement <4 x i16> %i.xb, i16 %i.wy, i64 3 ; 2 uses
  %i.xd = icmp slt <4 x i16> %i.xc, %broadcast.splat84
  %i.xe = icmp sgt <4 x i16> %i.xc, %broadcast.splat86
  %i.xf = or <4 x i1> %i.xd, %i.xe
  %i.xg = or <4 x i1> %i.wq, %i.xf                ; 2 uses
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.xh = icmp eq i64 %index.next90, %n.vec82
  br i1 %i.xh, label %vec.epilog.middle.block91, label %vec.epilog.vector.body87, !llvm.loop !571

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body87
  %i.xi = bitcast <4 x i1> %i.xg to i4
  %i.xj = icmp ne i4 %i.xi, 0                     ; 2 uses
  %cmp.n92 = icmp eq i64 %n.vec82, %smax189.i
  br i1 %cmp.n92, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block91
  %.081158.i.ph = phi i64 [ 0, %iter.check77 ], [ %n.vec62, %vec.epilog.iter.check79 ], [ %n.vec82, %vec.epilog.middle.block91 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check77 ], [ %i.ad, %vec.epilog.iter.check79 ], [ %i.sd, %vec.epilog.middle.block91 ]
  %.085156.i.ph = phi i1 [ false, %iter.check77 ], [ %i.sc, %vec.epilog.iter.check79 ], [ %i.xj, %vec.epilog.middle.block91 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block91, %middle.block72
  %.lcssa36 = phi i1 [ %i.xj, %vec.epilog.middle.block91 ], [ %i.sc, %middle.block72 ], [ %op.rdx, %.preheader.i ]
  %i.xk = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.xk, %.preheader137.loopexit.i ] ; 7 uses
  %i.xl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.xm = icmp slt i64 %.082.lcssa.i, %i.xl
  br i1 %i.xm, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.xn = sub nsw i64 %i.xl, %.082.lcssa.i        ; 6 uses
  %min.iters.check = icmp ult i64 %i.xn, 4
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.xn, 16
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xo = and i64 %i.xn, 12
  %n.vec = and i64 %i.xn, -16                     ; 4 uses
  %i.xp = add nsw i64 %.082.lcssa.i, %n.vec
  %i.xq = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ %i.xq, %vector.ph ], [ %i.ya, %vector.body ]
  %vec.phi44 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.yb, %vector.body ]
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xr, i64 %index ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %wide.load = load <8 x i16>, ptr %i.xs, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.xt, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.xu = icmp slt <8 x i16> %wide.load, %broadcast.splat
  %i.xv = icmp slt <8 x i16> %wide.load45, %broadcast.splat
  %i.xw = icmp sgt <8 x i16> %wide.load, %broadcast.splat43
  %i.xx = icmp sgt <8 x i16> %wide.load45, %broadcast.splat43
  %i.xy = or <8 x i1> %i.xu, %i.xw
  %i.xz = or <8 x i1> %i.xv, %i.xx
  %i.ya = or <8 x i1> %vec.phi, %i.xy             ; 2 uses
  %i.yb = or <8 x i1> %vec.phi44, %i.xz           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.yc = icmp eq i64 %index.next, %n.vec
  br i1 %i.yc, label %middle.block, label %vector.body, !llvm.loop !572

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.yb, %i.ya
  %i.yd = bitcast <8 x i1> %bin.rdx to i8
  %i.ye = icmp ne i8 %i.yd, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.xn, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.xo, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader, label %vec.epilog.ph, !prof !426

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ye, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %i.yf = and i64 %i.xl, 3
  %n.vec46 = sub nsw i64 %i.xn, %i.yf             ; 2 uses
  %i.yg = add nsw i64 %.082.lcssa.i, %n.vec46
  %i.yh = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi52 = phi <4 x i1> [ %i.yh, %vec.epilog.ph ], [ %i.yn, %vec.epilog.vector.body ]
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %index51
  %wide.load53 = load <4 x i16>, ptr %i.yj, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.yk = icmp slt <4 x i16> %wide.load53, %broadcast.splat48
  %i.yl = icmp sgt <4 x i16> %wide.load53, %broadcast.splat50
  %i.ym = or <4 x i1> %i.yk, %i.yl
  %i.yn = or <4 x i1> %vec.phi52, %i.ym           ; 2 uses
  %index.next54 = add nuw i64 %index51, 4         ; 2 uses
  %i.yo = icmp eq i64 %index.next54, %n.vec46
  br i1 %i.yo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !573

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.yp = bitcast <4 x i1> %i.yn to i4
  %i.yq = icmp ne i4 %i.yp, 0                     ; 2 uses
  %i.yr = and i16 %.sroa.0.0.extract.trunc.i, 3
  %cmp.n55 = icmp eq i16 %i.yr, 0
  br i1 %cmp.n55, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.xp, %vec.epilog.iter.check ], [ %i.yg, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.ye, %vec.epilog.iter.check ], [ %i.yq, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.za, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.yz, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082157.i
  %i.yt = load <8 x i16>, ptr %i.ys, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.yu = icmp slt <8 x i16> %i.yt, %i.t
  %i.yv = icmp sgt <8 x i16> %i.yt, %i.v
  %i.yw = shufflevector <8 x i1> %i.yv, <8 x i1> %i.yu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yx = bitcast <16 x i1> %i.yw to i16
  %i.yy = icmp ne i16 %i.yx, 0
  %op.rdx = or i1 %i.yy, %.085156.i               ; 2 uses
  %i.yz = add nuw nsw i64 %.082157.i, 8
  %i.za = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.za, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !574

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i
  %.284162.i = phi i64 [ %i.zg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.zf, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i.preheader ]
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.284162.i
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.zd = icmp slt i16 %i.zc, %.42.val
  %i.ze = icmp sgt i16 %i.zc, %.42.val1
  %spec.select128.i = or i1 %i.zd, %i.ze
  %i.zf = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.zg = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.zg, %i.xl
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i, !llvm.loop !575

bb.d:                                             ; preds = %.lr.ph176.i
  %i.zh = icmp sgt i32 %i.x, 0
  br i1 %i.zh, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.zi = icmp sgt i32 %i.y, 7
  br i1 %i.zi, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.zj = lshr i32 %i.y, 3
  %i.zk = trunc i64 %.092169.i to i3              ; 7 uses
  %i.zl = trunc i64 %.092169.i to i8
  %i.zm = and i8 %i.zl, 7
  %i.zn = add i3 %i.zk, 1
  %i.zo = zext i3 %i.zn to i8
  %i.zp = add i3 %i.zk, 2
  %i.zq = zext i3 %i.zp to i8
  %i.zr = add i3 %i.zk, 3
  %i.zs = zext i3 %i.zr to i8
  %i.zt = xor i3 %i.zk, -4
  %i.zu = zext i3 %i.zt to i8
  %i.zv = add i3 %i.zk, -3
  %i.zw = zext i3 %i.zv to i8
  %i.zx = add i3 %i.zk, -2
  %i.zy = zext i3 %i.zx to i8
  %i.zz = add i3 %i.zk, -1
  %i.aaa = zext i3 %i.zz to i8
  %smax.i = zext nneg i32 %i.zj to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.aab = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx96, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.aab, %.preheader139.loopexit.i ] ; 6 uses
  %i.aac = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.aad = icmp slt i64 %.076.lcssa.i, %i.aac
  br i1 %i.aad, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.aae = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.aae, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.aah = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.aai = lshr i64 %i.aah, 3
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aai
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !7, !noalias !564
  %i.aal = trunc i64 %.092169.i to i8
  %i.aam = and i8 %i.aal, 7
  %i.aan = lshr i8 %i.aak, %i.aam
  %i.aao = trunc i8 %i.aan to i1
  %i.aap = icmp slt i16 %i.aag, %.42.val
  %i.aaq = icmp sgt i16 %i.aag, %.42.val1
  %spec.select130.i.prol = or i1 %i.aap, %i.aaq
  %i.aar = select i1 %i.aao, i1 %spec.select130.i.prol, i1 false
  %i.aas = or i1 %.3.lcssa.i, %i.aar              ; 2 uses
  %i.aat = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader ], [ %i.aas, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader ], [ %i.aat, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.preheader ], [ %i.aas, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol ]
  %i.aau = add nsw i64 %i.aac, -1
  %i.aav = icmp eq i64 %.076.lcssa.i, %i.aau
  br i1 %i.aav, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.adq, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.adp, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx96, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076147.i
  %i.aax = add nsw i64 %.076147.i, %.092169.i
  %i.aay = lshr i64 %i.aax, 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !7, !noalias !564
  %i.abb = or disjoint i64 %.076147.i, 1
  %i.abc = add nsw i64 %i.abb, %.092169.i
  %i.abd = lshr i64 %i.abc, 3
  %i.abe = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !7, !noalias !564
  %i.abg = or disjoint i64 %.076147.i, 2
  %i.abh = add nsw i64 %i.abg, %.092169.i
  %i.abi = lshr i64 %i.abh, 3
  %i.abj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !7, !noalias !564
  %i.abl = or disjoint i64 %.076147.i, 3
  %i.abm = add nsw i64 %i.abl, %.092169.i
  %i.abn = lshr i64 %i.abm, 3
  %i.abo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !7, !noalias !564
  %i.abq = or disjoint i64 %.076147.i, 4
  %i.abr = add nsw i64 %i.abq, %.092169.i
  %i.abs = lshr i64 %i.abr, 3
  %i.abt = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !7, !noalias !564
  %i.abv = or disjoint i64 %.076147.i, 5
  %i.abw = add nsw i64 %i.abv, %.092169.i
  %i.abx = lshr i64 %i.abw, 3
  %i.aby = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !7, !noalias !564
  %i.aca = or disjoint i64 %.076147.i, 6
  %i.acb = add nsw i64 %i.aca, %.092169.i
  %i.acc = lshr i64 %i.acb, 3
  %i.acd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !7, !noalias !564
  %i.acf = or disjoint i64 %.076147.i, 7
  %i.acg = add nsw i64 %i.acf, %.092169.i
  %i.ach = lshr i64 %i.acg, 3
  %i.aci = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !7, !noalias !564
  %i.ack = load <8 x i16>, ptr %i.aaw, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.acl = lshr i8 %i.acj, %i.aaa
  %i.acm = lshr i8 %i.ace, %i.zy
  %i.acn = lshr i8 %i.abz, %i.zw
  %i.aco = lshr i8 %i.abu, %i.zu
  %i.acp = lshr i8 %i.abp, %i.zs
  %i.acq = lshr i8 %i.abk, %i.zq
  %i.acr = lshr i8 %i.abf, %i.zo
  %i.acs = lshr i8 %i.aba, %i.zm
  %i.act = trunc i8 %i.acl to i1
  %i.acu = trunc i8 %i.acm to i1
  %i.acv = trunc i8 %i.acn to i1
  %i.acw = trunc i8 %i.aco to i1
  %i.acx = trunc i8 %i.acp to i1
  %i.acy = trunc i8 %i.acq to i1
  %i.acz = trunc i8 %i.acr to i1
  %i.ada = trunc i8 %i.acs to i1
  %i.adb = icmp slt <8 x i16> %i.ack, %i.p
  %i.adc = icmp sgt <8 x i16> %i.ack, %i.r
  %i.add = or <8 x i1> %i.adb, %i.adc
  %i.ade = insertelement <8 x i1> poison, i1 %i.ada, i64 0
  %i.adf = insertelement <8 x i1> %i.ade, i1 %i.acz, i64 1
  %i.adg = insertelement <8 x i1> %i.adf, i1 %i.acy, i64 2
  %i.adh = insertelement <8 x i1> %i.adg, i1 %i.acx, i64 3
  %i.adi = insertelement <8 x i1> %i.adh, i1 %i.acw, i64 4
  %i.adj = insertelement <8 x i1> %i.adi, i1 %i.acv, i64 5
  %i.adk = insertelement <8 x i1> %i.adj, i1 %i.acu, i64 6
  %i.adl = insertelement <8 x i1> %i.adk, i1 %i.act, i64 7
  %i.adm = select <8 x i1> %i.adl, <8 x i1> %i.add, <8 x i1> zeroinitializer
  %i.adn = bitcast <8 x i1> %i.adm to i8
  %i.ado = icmp ne i8 %i.adn, 0
  %op.rdx96 = or i1 %i.ado, %.3146.i              ; 2 uses
  %i.adp = add nuw nsw i64 %.076147.i, 8
  %i.adq = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.adq, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !576

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i
  %.2151.i = phi i64 [ %i.aeu, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.aet, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit ]
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.2151.i
  %i.ads = load i16, ptr %i.adr, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.adt = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.adu = lshr i64 %i.adt, 3
  %i.adv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !7, !noalias !564
  %i.adx = trunc i64 %i.adt to i8
  %i.ady = and i8 %i.adx, 7
  %i.adz = lshr i8 %i.adw, %i.ady
  %i.aea = trunc i8 %i.adz to i1
  %i.aeb = icmp slt i16 %i.ads, %.42.val
  %i.aec = icmp sgt i16 %i.ads, %.42.val1
  %spec.select130.i = or i1 %i.aeb, %i.aec
  %i.aed = select i1 %i.aea, i1 %spec.select130.i, i1 false
  %i.aee = or i1 %.5150.i, %i.aed
  %i.aef = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.aef
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !16, !noalias !564 ; 2 uses
  %i.aei = add nsw i64 %i.aef, %.092169.i         ; 2 uses
  %i.aej = lshr i64 %i.aei, 3
  %i.aek = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aej
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !7, !noalias !564
  %i.aem = trunc i64 %i.aei to i8
  %i.aen = and i8 %i.aem, 7
  %i.aeo = lshr i8 %i.ael, %i.aen
  %i.aep = trunc i8 %i.aeo to i1
  %i.aeq = icmp slt i16 %i.aeh, %.42.val
  %i.aer = icmp sgt i16 %i.aeh, %.42.val1
  %spec.select130.i.1 = or i1 %i.aeq, %i.aer
  %i.aes = select i1 %i.aep, i1 %spec.select130.i.1, i1 false
  %i.aet = or i1 %i.aee, %i.aes                   ; 2 uses
  %i.aeu = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.aeu, %i.aac
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i, !llvm.loop !577

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.zf, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.yq, %vec.epilog.middle.block ], [ %i.ye, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i.prol.loopexit ], [ %i.aet, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.aev = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !564
  %i.aew = icmp sgt i64 %i.aev, 0
  %i.aex = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.aew, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.afk, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.aey = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.aez = lshr i64 %i.aey, 3
  %i.afa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aez
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !7, !noalias !564
  %i.afc = trunc i64 %i.aey to i8
  %i.afd = and i8 %i.afc, 7
  %i.afe = lshr i8 %i.afb, %i.afd
  %i.aff = trunc i8 %i.afe to i1
  br i1 %i.aff, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.073167.i
  %i.afh = load i16, ptr %i.afg, align 2, !tbaa !16, !noalias !564 ; 3 uses
  %i.afi = icmp slt i16 %i.afh, %.42.val
  %i.afj = icmp sgt i16 %i.afh, %.42.val1
  %or.cond131.i = or i1 %i.afi, %i.afj
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE0_clEs(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef signext %i.afh)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.afk = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.afk, %i.aex
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !578

bb.g:                                             ; preds = %.lr.ph.i
  %i.afl = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.afl, %i.aex
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !579

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.afl, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.0165.i
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !16, !noalias !564 ; 3 uses
  %i.afo = icmp slt i16 %i.afn, %.42.val
  %i.afp = icmp sgt i16 %i.afn, %.42.val1
  %or.cond132.i = or i1 %i.afo, %i.afp
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE0_clEs(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef signext %i.afn)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.afq = sext i32 %i.y to i64
  %i.afr = getelementptr inbounds [2 x i8], ptr %.088173.i, i64 %i.afq
  %i.afs = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.aft = add nsw i64 %.090172.i, %i.afs         ; 2 uses
  %i.afu = add nsw i64 %.092169.i, %i.afs
  %i.afv = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !564
  %i.afw = icmp slt i64 %i.aft, %i.afv
  br i1 %i.afw, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !580

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !581
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsE_clEs.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int16TypeEsEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlsbE_clEsb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !564
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.44.val, ptr %i.a, align 4, !tbaa !3, !noalias !584
  store i32 %.44.val1, ptr %i.b, align 4, !tbaa !3, !noalias !584
  %.not.i = icmp ne i32 %.44.val, -2147483648
  %.not97.i = icmp ne i32 %.44.val1, 2147483647
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !587
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !584 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !584
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !584 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !584
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !584
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !584
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !584
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !584
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i32> poison, i32 %.44.val, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i32> poison, i32 %.44.val1, i64 0
  %i.r = shufflevector <8 x i32> %i.q, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %.44.val, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert51 = insertelement <4 x i32> poison, i32 %.44.val1, i64 0
  %broadcast.splat52 = shufflevector <4 x i32> %broadcast.splatinsert51, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
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
  %.088173.i = phi ptr [ %i.sf, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 18 uses
  %.090172.i = phi i64 [ %i.sh, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.si, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !584 ; 3 uses
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
  %n.vec48 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ac = shl nuw nsw i64 %n.vec48, 3
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph47
  %index54 = phi i64 [ 0, %vector.ph47 ], [ %index.next57, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kf, %vector.body53 ]
  %vec.phi56 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kg, %vector.body53 ]
  %i.ad = shl nuw i64 %index54, 3                 ; 8 uses
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
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !584
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !584
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !584
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !584
  %i.ax = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 2
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 3 ; 2 uses
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !584
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !584
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !584
  %i.be = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !584
  %i.bf = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 3 ; 2 uses
  %i.bj = icmp slt <4 x i32> %i.ba, %broadcast.splat50
  %i.bk = icmp slt <4 x i32> %i.bi, %broadcast.splat50
  %i.bl = icmp sgt <4 x i32> %i.ba, %broadcast.splat52
  %i.bm = icmp sgt <4 x i32> %i.bi, %broadcast.splat52
  %i.bn = or <4 x i1> %i.bj, %i.bl
  %i.bo = or <4 x i1> %i.bk, %i.bm
  %i.bp = or <4 x i1> %vec.phi55, %i.bn
  %i.bq = or <4 x i1> %vec.phi56, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 164
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 196
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 228
  %i.bz = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !584
  %i.ca = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !584
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !584
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !584
  %i.cd = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.ca, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cb, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 3 ; 2 uses
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !584
  %i.ci = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !584
  %i.cj = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !584
  %i.ck = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !584
  %i.cl = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 1
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 2
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 3 ; 2 uses
  %i.cp = icmp slt <4 x i32> %i.cg, %broadcast.splat50
  %i.cq = icmp slt <4 x i32> %i.co, %broadcast.splat50
  %i.cr = icmp sgt <4 x i32> %i.cg, %broadcast.splat52
  %i.cs = icmp sgt <4 x i32> %i.co, %broadcast.splat52
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
  %i.df = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !584
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !584
  %i.dh = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !584
  %i.di = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !584
  %i.dj = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dg, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.dh, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 3 ; 2 uses
  %i.dn = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !584
  %i.do = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !584
  %i.dp = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !584
  %i.dq = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !584
  %i.dr = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 1
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 2
  %i.du = insertelement <4 x i32> %i.dt, i32 %i.dq, i64 3 ; 2 uses
  %i.dv = icmp slt <4 x i32> %i.dm, %broadcast.splat50
  %i.dw = icmp slt <4 x i32> %i.du, %broadcast.splat50
  %i.dx = icmp sgt <4 x i32> %i.dm, %broadcast.splat52
  %i.dy = icmp sgt <4 x i32> %i.du, %broadcast.splat52
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
  %i.el = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !584
  %i.em = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !584
  %i.en = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !584
  %i.eo = load i32, ptr %i.eg, align 4, !tbaa !3, !noalias !584
  %i.ep = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = insertelement <4 x i32> %i.eq, i32 %i.en, i64 2
  %i.es = insertelement <4 x i32> %i.er, i32 %i.eo, i64 3 ; 2 uses
  %i.et = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !584
  %i.eu = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !584
  %i.ev = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !584
  %i.ew = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !584
  %i.ex = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3 ; 2 uses
  %i.fb = icmp slt <4 x i32> %i.es, %broadcast.splat50
  %i.fc = icmp slt <4 x i32> %i.fa, %broadcast.splat50
  %i.fd = icmp sgt <4 x i32> %i.es, %broadcast.splat52
  %i.fe = icmp sgt <4 x i32> %i.fa, %broadcast.splat52
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
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !584
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !584
  %i.ft = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !584
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !584
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3 ; 2 uses
  %i.fz = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !584
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !584
  %i.gb = load i32, ptr %i.fp, align 4, !tbaa !3, !noalias !584
  %i.gc = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !584
  %i.gd = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ga, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.gb, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 3 ; 2 uses
  %i.gh = icmp slt <4 x i32> %i.fy, %broadcast.splat50
  %i.gi = icmp slt <4 x i32> %i.gg, %broadcast.splat50
  %i.gj = icmp sgt <4 x i32> %i.fy, %broadcast.splat52
  %i.gk = icmp sgt <4 x i32> %i.gg, %broadcast.splat52
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
  %i.gx = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !584
  %i.gy = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !584
  %i.gz = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !584
  %i.ha = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !584
  %i.hb = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 1
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 2
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 3 ; 2 uses
  %i.hf = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !584
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !584
  %i.hh = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !584
  %i.hi = load i32, ptr %i.gw, align 4, !tbaa !3, !noalias !584
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3 ; 2 uses
  %i.hn = icmp slt <4 x i32> %i.he, %broadcast.splat50
  %i.ho = icmp slt <4 x i32> %i.hm, %broadcast.splat50
  %i.hp = icmp sgt <4 x i32> %i.he, %broadcast.splat52
  %i.hq = icmp sgt <4 x i32> %i.hm, %broadcast.splat52
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
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !584
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !584
  %i.if = load i32, ptr %i.hx, align 4, !tbaa !3, !noalias !584
  %i.ig = load i32, ptr %i.hy, align 4, !tbaa !3, !noalias !584
  %i.ih = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 1
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 2
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.ig, i64 3 ; 2 uses
  %i.il = load i32, ptr %i.hz, align 4, !tbaa !3, !noalias !584
  %i.im = load i32, ptr %i.ia, align 4, !tbaa !3, !noalias !584
  %i.in = load i32, ptr %i.ib, align 4, !tbaa !3, !noalias !584
  %i.io = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !584
  %i.ip = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.im, i64 1
  %i.ir = insertelement <4 x i32> %i.iq, i32 %i.in, i64 2
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.io, i64 3 ; 2 uses
  %i.it = icmp slt <4 x i32> %i.ik, %broadcast.splat50
  %i.iu = icmp slt <4 x i32> %i.is, %broadcast.splat50
  %i.iv = icmp sgt <4 x i32> %i.ik, %broadcast.splat52
  %i.iw = icmp sgt <4 x i32> %i.is, %broadcast.splat52
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
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !3, !noalias !584
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !3, !noalias !584
  %i.jl = load i32, ptr %i.jd, align 4, !tbaa !3, !noalias !584
  %i.jm = load i32, ptr %i.je, align 4, !tbaa !3, !noalias !584
  %i.jn = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 1
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 2
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jm, i64 3 ; 2 uses
  %i.jr = load i32, ptr %i.jf, align 4, !tbaa !3, !noalias !584
  %i.js = load i32, ptr %i.jg, align 4, !tbaa !3, !noalias !584
  %i.jt = load i32, ptr %i.jh, align 4, !tbaa !3, !noalias !584
  %i.ju = load i32, ptr %i.ji, align 4, !tbaa !3, !noalias !584
  %i.jv = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 1
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.jt, i64 2
  %i.jy = insertelement <4 x i32> %i.jx, i32 %i.ju, i64 3 ; 2 uses
  %i.jz = icmp slt <4 x i32> %i.jq, %broadcast.splat50
  %i.ka = icmp slt <4 x i32> %i.jy, %broadcast.splat50
  %i.kb = icmp sgt <4 x i32> %i.jq, %broadcast.splat52
  %i.kc = icmp sgt <4 x i32> %i.jy, %broadcast.splat52
  %i.kd = or <4 x i1> %i.jz, %i.kb
  %i.ke = or <4 x i1> %i.ka, %i.kc
  %i.kf = or <4 x i1> %i.iz, %i.kd                ; 2 uses
  %i.kg = or <4 x i1> %i.ja, %i.ke                ; 2 uses
  %index.next57 = add nuw i64 %index54, 8         ; 2 uses
  %i.kh = icmp eq i64 %index.next57, %n.vec48
  br i1 %i.kh, label %middle.block58, label %vector.body53, !llvm.loop !590

middle.block58:                                   ; preds = %vector.body53
  %bin.rdx59 = or <4 x i1> %i.kg, %i.kf
  %i.ki = bitcast <4 x i1> %bin.rdx59 to i4
  %i.kj = icmp ne i4 %i.ki, 0                     ; 2 uses
  %cmp.n60 = icmp eq i64 %n.vec48, %smax189.i
  br i1 %cmp.n60, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block58
  %.081158.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec48, %middle.block58 ]
  %.082157.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %i.ac, %middle.block58 ]
  %.085156.i.ph = phi i1 [ false, %.preheader.preheader.i ], [ %i.kj, %middle.block58 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %middle.block58
  %.lcssa36 = phi i1 [ %i.kj, %middle.block58 ], [ %op.rdx, %.preheader.i ]
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
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader
  %i.ko = and i64 %i.kl, 7
  %n.vec = sub nuw nsw i64 %i.kn, %i.ko           ; 2 uses
  %i.kp = add nsw i64 %.082.lcssa.i, %n.vec
  %i.kq = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.kq, %vector.ph ], [ %i.la, %vector.body ]
  %vec.phi43 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.lb, %vector.body ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load = load <4 x i32>, ptr %i.ks, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %wide.load44 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.ku = icmp slt <4 x i32> %wide.load, %broadcast.splat
  %i.kv = icmp slt <4 x i32> %wide.load44, %broadcast.splat
  %i.kw = icmp sgt <4 x i32> %wide.load, %broadcast.splat42
  %i.kx = icmp sgt <4 x i32> %wide.load44, %broadcast.splat42
  %i.ky = or <4 x i1> %i.ku, %i.kw
  %i.kz = or <4 x i1> %i.kv, %i.kx
  %i.la = or <4 x i1> %vec.phi, %i.ky             ; 2 uses
  %i.lb = or <4 x i1> %vec.phi43, %i.kz           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lc = icmp eq i64 %index.next, %n.vec
  br i1 %i.lc, label %middle.block, label %vector.body, !llvm.loop !591

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.lb, %i.la
  %i.ld = bitcast <4 x i1> %bin.rdx to i4
  %i.le = icmp ne i4 %i.ld, 0                     ; 2 uses
  %i.lf = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n = icmp eq i16 %i.lf, 0
  br i1 %cmp.n, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader66

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader66: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader, %middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader ], [ %i.kp, %middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader ], [ %i.le, %middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.lo, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.ln, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.082157.i
  %i.lh = load <8 x i32>, ptr %i.lg, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.li = icmp slt <8 x i32> %i.lh, %i.t
  %i.lj = icmp sgt <8 x i32> %i.lh, %i.v
  %i.lk = shufflevector <8 x i1> %i.lj, <8 x i1> %i.li, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ll = bitcast <16 x i1> %i.lk to i16
  %i.lm = icmp ne i16 %i.ll, 0
  %op.rdx = or i1 %i.lm, %.085156.i               ; 2 uses
  %i.ln = add nuw nsw i64 %.082157.i, 8
  %i.lo = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.lo, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !592

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader66, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i
  %.284162.i = phi i64 [ %i.lu, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader66 ] ; 2 uses
  %.287161.i = phi i1 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i.preheader66 ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.284162.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %.44.val
  %i.ls = icmp sgt i32 %i.lq, %.44.val1
  %spec.select128.i = or i1 %i.lr, %i.ls
  %i.lt = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.lu = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.lu, %i.kl
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i, !llvm.loop !593

bb.d:                                             ; preds = %.lr.ph176.i
  %i.lv = icmp sgt i32 %i.x, 0
  br i1 %i.lv, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.lw = icmp sgt i32 %i.y, 7
  br i1 %i.lw, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.lx = lshr i32 %i.y, 3
  %i.ly = trunc i64 %.092169.i to i3              ; 7 uses
  %i.lz = trunc i64 %.092169.i to i8
  %i.ma = and i8 %i.lz, 7
  %i.mb = add i3 %i.ly, 1
  %i.mc = zext i3 %i.mb to i8
  %i.md = add i3 %i.ly, 2
  %i.me = zext i3 %i.md to i8
  %i.mf = add i3 %i.ly, 3
  %i.mg = zext i3 %i.mf to i8
  %i.mh = xor i3 %i.ly, -4
  %i.mi = zext i3 %i.mh to i8
  %i.mj = add i3 %i.ly, -3
  %i.mk = zext i3 %i.mj to i8
  %i.ml = add i3 %i.ly, -2
  %i.mm = zext i3 %i.ml to i8
  %i.mn = add i3 %i.ly, -1
  %i.mo = zext i3 %i.mn to i8
  %smax.i = zext nneg i32 %i.lx to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.mp = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx64, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.mp, %.preheader139.loopexit.i ] ; 6 uses
  %i.mq = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.mr = icmp slt i64 %.076.lcssa.i, %i.mq
  br i1 %i.mr, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader: ; preds = %.preheader139.i
  %i.ms = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.ms, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.mv = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.mw = lshr i64 %i.mv, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !7, !noalias !584
  %i.mz = trunc i64 %.092169.i to i8
  %i.na = and i8 %i.mz, 7
  %i.nb = lshr i8 %i.my, %i.na
  %i.nc = trunc i8 %i.nb to i1
  %i.nd = icmp slt i32 %i.mu, %.44.val
  %i.ne = icmp sgt i32 %i.mu, %.44.val1
  %spec.select130.i.prol = or i1 %i.nd, %i.ne
  %i.nf = select i1 %i.nc, i1 %spec.select130.i.prol, i1 false
  %i.ng = or i1 %.3.lcssa.i, %i.nf                ; 2 uses
  %i.nh = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader ], [ %i.ng, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader ], [ %i.nh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.preheader ], [ %i.ng, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol ]
  %i.ni = add nsw i64 %i.mq, -1
  %i.nj = icmp eq i64 %.076.lcssa.i, %i.ni
  br i1 %i.nj, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.qe, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.qd, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx64, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076147.i
  %i.nl = add nsw i64 %.076147.i, %.092169.i
  %i.nm = lshr i64 %i.nl, 3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !7, !noalias !584
  %i.np = or disjoint i64 %.076147.i, 1
  %i.nq = add nsw i64 %i.np, %.092169.i
  %i.nr = lshr i64 %i.nq, 3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !7, !noalias !584
  %i.nu = or disjoint i64 %.076147.i, 2
  %i.nv = add nsw i64 %i.nu, %.092169.i
  %i.nw = lshr i64 %i.nv, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !7, !noalias !584
  %i.nz = or disjoint i64 %.076147.i, 3
  %i.oa = add nsw i64 %i.nz, %.092169.i
  %i.ob = lshr i64 %i.oa, 3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !7, !noalias !584
  %i.oe = or disjoint i64 %.076147.i, 4
  %i.of = add nsw i64 %i.oe, %.092169.i
  %i.og = lshr i64 %i.of, 3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !7, !noalias !584
  %i.oj = or disjoint i64 %.076147.i, 5
  %i.ok = add nsw i64 %i.oj, %.092169.i
  %i.ol = lshr i64 %i.ok, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !7, !noalias !584
  %i.oo = or disjoint i64 %.076147.i, 6
  %i.op = add nsw i64 %i.oo, %.092169.i
  %i.oq = lshr i64 %i.op, 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !7, !noalias !584
  %i.ot = or disjoint i64 %.076147.i, 7
  %i.ou = add nsw i64 %i.ot, %.092169.i
  %i.ov = lshr i64 %i.ou, 3
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !7, !noalias !584
  %i.oy = load <8 x i32>, ptr %i.nk, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.oz = lshr i8 %i.ox, %i.mo
  %i.pa = lshr i8 %i.os, %i.mm
  %i.pb = lshr i8 %i.on, %i.mk
  %i.pc = lshr i8 %i.oi, %i.mi
  %i.pd = lshr i8 %i.od, %i.mg
  %i.pe = lshr i8 %i.ny, %i.me
  %i.pf = lshr i8 %i.nt, %i.mc
  %i.pg = lshr i8 %i.no, %i.ma
  %i.ph = trunc i8 %i.oz to i1
  %i.pi = trunc i8 %i.pa to i1
  %i.pj = trunc i8 %i.pb to i1
  %i.pk = trunc i8 %i.pc to i1
  %i.pl = trunc i8 %i.pd to i1
  %i.pm = trunc i8 %i.pe to i1
  %i.pn = trunc i8 %i.pf to i1
  %i.po = trunc i8 %i.pg to i1
  %i.pp = icmp slt <8 x i32> %i.oy, %i.p
  %i.pq = icmp sgt <8 x i32> %i.oy, %i.r
  %i.pr = or <8 x i1> %i.pp, %i.pq
  %i.ps = insertelement <8 x i1> poison, i1 %i.po, i64 0
  %i.pt = insertelement <8 x i1> %i.ps, i1 %i.pn, i64 1
  %i.pu = insertelement <8 x i1> %i.pt, i1 %i.pm, i64 2
  %i.pv = insertelement <8 x i1> %i.pu, i1 %i.pl, i64 3
  %i.pw = insertelement <8 x i1> %i.pv, i1 %i.pk, i64 4
  %i.px = insertelement <8 x i1> %i.pw, i1 %i.pj, i64 5
  %i.py = insertelement <8 x i1> %i.px, i1 %i.pi, i64 6
  %i.pz = insertelement <8 x i1> %i.py, i1 %i.ph, i64 7
  %i.qa = select <8 x i1> %i.pz, <8 x i1> %i.pr, <8 x i1> zeroinitializer
  %i.qb = bitcast <8 x i1> %i.qa to i8
  %i.qc = icmp ne i8 %i.qb, 0
  %op.rdx64 = or i1 %i.qc, %.3146.i               ; 2 uses
  %i.qd = add nuw nsw i64 %.076147.i, 8
  %i.qe = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.qe, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !594

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i
  %.2151.i = phi i64 [ %i.ri, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ]
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.2151.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.qh = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.qi = lshr i64 %i.qh, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !7, !noalias !584
  %i.ql = trunc i64 %i.qh to i8
  %i.qm = and i8 %i.ql, 7
  %i.qn = lshr i8 %i.qk, %i.qm
  %i.qo = trunc i8 %i.qn to i1
  %i.qp = icmp slt i32 %i.qg, %.44.val
  %i.qq = icmp sgt i32 %i.qg, %.44.val1
  %spec.select130.i = or i1 %i.qp, %i.qq
  %i.qr = select i1 %i.qo, i1 %spec.select130.i, i1 false
  %i.qs = or i1 %.5150.i, %i.qr
  %i.qt = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !3, !noalias !584 ; 2 uses
  %i.qw = add nsw i64 %i.qt, %.092169.i           ; 2 uses
  %i.qx = lshr i64 %i.qw, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !7, !noalias !584
  %i.ra = trunc i64 %i.qw to i8
  %i.rb = and i8 %i.ra, 7
  %i.rc = lshr i8 %i.qz, %i.rb
  %i.rd = trunc i8 %i.rc to i1
  %i.re = icmp slt i32 %i.qv, %.44.val
  %i.rf = icmp sgt i32 %i.qv, %.44.val1
  %spec.select130.i.1 = or i1 %i.re, %i.rf
  %i.rg = select i1 %i.rd, i1 %spec.select130.i.1, i1 false
  %i.rh = or i1 %i.qs, %i.rg                      ; 2 uses
  %i.ri = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.ri, %i.mq
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i, !llvm.loop !595

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.le, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i.prol.loopexit ], [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.rj = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !584
  %i.rk = icmp sgt i64 %i.rj, 0
  %i.rl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.rk, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ry, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.rm = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !7, !noalias !584
  %i.rq = trunc i64 %i.rm to i8
  %i.rr = and i8 %i.rq, 7
  %i.rs = lshr i8 %i.rp, %i.rr
  %i.rt = trunc i8 %i.rs to i1
  br i1 %i.rt, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.073167.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3, !noalias !584 ; 3 uses
  %i.rw = icmp slt i32 %i.rv, %.44.val
  %i.rx = icmp sgt i32 %i.rv, %.44.val1
  %or.cond131.i = or i1 %i.rw, %i.rx
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.rv)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ry = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ry, %i.rl
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !596

bb.g:                                             ; preds = %.lr.ph.i
  %i.rz = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.rz, %i.rl
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !597

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.rz, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.0165.i
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3, !noalias !584 ; 3 uses
  %i.sc = icmp slt i32 %i.sb, %.44.val
  %i.sd = icmp sgt i32 %i.sb, %.44.val1
  %or.cond132.i = or i1 %i.sc, %i.sd
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE0_clEi(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.sb)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.se = sext i32 %i.y to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.088173.i, i64 %i.se
  %i.sg = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.sh = add nsw i64 %.090172.i, %i.sg           ; 2 uses
  %i.si = add nsw i64 %.092169.i, %i.sg
  %i.sj = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !584
  %i.sk = icmp slt i64 %i.sh, %i.sj
  br i1 %i.sk, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !598

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !599
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUliE_clEi.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int32TypeEiEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlibE_clEib.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !584
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.48.val, ptr %i.a, align 8, !tbaa !30, !noalias !602
  store i64 %.48.val1, ptr %i.b, align 8, !tbaa !30, !noalias !602
  %.not.i = icmp ne i64 %.48.val, -9223372036854775808
  %.not97.i = icmp ne i64 %.48.val1, 9223372036854775807
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !605
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !602 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !602
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !602 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !602
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !602
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !602
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !602
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !602
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i64> poison, i64 %.48.val, i64 0
  %i.p = shufflevector <8 x i64> %i.o, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i64> poison, i64 %.48.val1, i64 0
  %i.r = shufflevector <8 x i64> %i.q, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <2 x i64> poison, i64 %.48.val, i64 0
  %broadcast.splat50 = shufflevector <2 x i64> %broadcast.splatinsert49, <2 x i64> poison, <2 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %.48.val1, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 16 uses
  %i.s = insertelement <8 x i64> poison, i64 %.48.val, i64 0
  %i.t = shufflevector <8 x i64> %i.s, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i64> poison, i64 %.48.val1, i64 0
  %i.v = shufflevector <8 x i64> %i.u, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.48.val, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert41 = insertelement <2 x i64> poison, i64 %.48.val1, i64 0
  %broadcast.splat42 = shufflevector <2 x i64> %broadcast.splatinsert41, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.oj, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 14 uses
  %.090172.i = phi i64 [ %i.ol, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.om, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
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
  %min.iters.check46 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check46, label %.preheader.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.preheader.preheader.i
  %n.vec48 = and i64 %smax189.i, 268435452        ; 4 uses
  %i.ac = shl nuw nsw i64 %n.vec48, 3
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph47
  %index54 = phi i64 [ 0, %vector.ph47 ], [ %index.next57, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <2 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.gj, %vector.body53 ]
  %vec.phi56 = phi <2 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.gk, %vector.body53 ]
  %i.ad = shl nuw i64 %index54, 3                 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ad ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !30, !noalias !602
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !30, !noalias !602
  %i.an = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.ao = insertelement <2 x i64> %i.an, i64 %i.am, i64 1 ; 2 uses
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !30, !noalias !602
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !30, !noalias !602
  %i.ar = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.as = insertelement <2 x i64> %i.ar, i64 %i.aq, i64 1 ; 2 uses
  %i.at = icmp slt <2 x i64> %i.ao, %broadcast.splat50
  %i.au = icmp slt <2 x i64> %i.as, %broadcast.splat50
  %i.av = icmp sgt <2 x i64> %i.ao, %broadcast.splat52
  %i.aw = icmp sgt <2 x i64> %i.as, %broadcast.splat52
  %i.ax = or <2 x i1> %i.at, %i.av
  %i.ay = or <2 x i1> %i.au, %i.aw
  %i.az = or <2 x i1> %vec.phi55, %i.ax
  %i.ba = or <2 x i1> %vec.phi56, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !30, !noalias !602
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !30, !noalias !602
  %i.bh = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bi = insertelement <2 x i64> %i.bh, i64 %i.bg, i64 1 ; 2 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !30, !noalias !602
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !30, !noalias !602
  %i.bl = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bm = insertelement <2 x i64> %i.bl, i64 %i.bk, i64 1 ; 2 uses
  %i.bn = icmp slt <2 x i64> %i.bi, %broadcast.splat50
  %i.bo = icmp slt <2 x i64> %i.bm, %broadcast.splat50
  %i.bp = icmp sgt <2 x i64> %i.bi, %broadcast.splat52
  %i.bq = icmp sgt <2 x i64> %i.bm, %broadcast.splat52
  %i.br = or <2 x i1> %i.bn, %i.bp
  %i.bs = or <2 x i1> %i.bo, %i.bq
  %i.bt = or <2 x i1> %i.az, %i.br
  %i.bu = or <2 x i1> %i.ba, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !30, !noalias !602
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !30, !noalias !602
  %i.cb = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cc = insertelement <2 x i64> %i.cb, i64 %i.ca, i64 1 ; 2 uses
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !30, !noalias !602
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !30, !noalias !602
  %i.cf = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cg = insertelement <2 x i64> %i.cf, i64 %i.ce, i64 1 ; 2 uses
  %i.ch = icmp slt <2 x i64> %i.cc, %broadcast.splat50
  %i.ci = icmp slt <2 x i64> %i.cg, %broadcast.splat50
  %i.cj = icmp sgt <2 x i64> %i.cc, %broadcast.splat52
  %i.ck = icmp sgt <2 x i64> %i.cg, %broadcast.splat52
  %i.cl = or <2 x i1> %i.ch, %i.cj
  %i.cm = or <2 x i1> %i.ci, %i.ck
  %i.cn = or <2 x i1> %i.bt, %i.cl
  %i.co = or <2 x i1> %i.bu, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !30, !noalias !602
  %i.cu = load i64, ptr %i.cq, align 8, !tbaa !30, !noalias !602
  %i.cv = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cw = insertelement <2 x i64> %i.cv, i64 %i.cu, i64 1 ; 2 uses
  %i.cx = load i64, ptr %i.cr, align 8, !tbaa !30, !noalias !602
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !30, !noalias !602
  %i.cz = insertelement <2 x i64> poison, i64 %i.cx, i64 0
  %i.da = insertelement <2 x i64> %i.cz, i64 %i.cy, i64 1 ; 2 uses
  %i.db = icmp slt <2 x i64> %i.cw, %broadcast.splat50
  %i.dc = icmp slt <2 x i64> %i.da, %broadcast.splat50
  %i.dd = icmp sgt <2 x i64> %i.cw, %broadcast.splat52
  %i.de = icmp sgt <2 x i64> %i.da, %broadcast.splat52
  %i.df = or <2 x i1> %i.db, %i.dd
  %i.dg = or <2 x i1> %i.dc, %i.de
  %i.dh = or <2 x i1> %i.cn, %i.df
  %i.di = or <2 x i1> %i.co, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.dn = load i64, ptr %i.dj, align 8, !tbaa !30, !noalias !602
  %i.do = load i64, ptr %i.dk, align 8, !tbaa !30, !noalias !602
  %i.dp = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dq = insertelement <2 x i64> %i.dp, i64 %i.do, i64 1 ; 2 uses
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !30, !noalias !602
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !30, !noalias !602
  %i.dt = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %i.du = insertelement <2 x i64> %i.dt, i64 %i.ds, i64 1 ; 2 uses
  %i.dv = icmp slt <2 x i64> %i.dq, %broadcast.splat50
  %i.dw = icmp slt <2 x i64> %i.du, %broadcast.splat50
  %i.dx = icmp sgt <2 x i64> %i.dq, %broadcast.splat52
  %i.dy = icmp sgt <2 x i64> %i.du, %broadcast.splat52
  %i.dz = or <2 x i1> %i.dv, %i.dx
  %i.ea = or <2 x i1> %i.dw, %i.dy
  %i.eb = or <2 x i1> %i.dh, %i.dz
  %i.ec = or <2 x i1> %i.di, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !30, !noalias !602
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !30, !noalias !602
  %i.ej = insertelement <2 x i64> poison, i64 %i.eh, i64 0
  %i.ek = insertelement <2 x i64> %i.ej, i64 %i.ei, i64 1 ; 2 uses
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !30, !noalias !602
  %i.em = load i64, ptr %i.eg, align 8, !tbaa !30, !noalias !602
  %i.en = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.eo = insertelement <2 x i64> %i.en, i64 %i.em, i64 1 ; 2 uses
  %i.ep = icmp slt <2 x i64> %i.ek, %broadcast.splat50
  %i.eq = icmp slt <2 x i64> %i.eo, %broadcast.splat50
  %i.er = icmp sgt <2 x i64> %i.ek, %broadcast.splat52
  %i.es = icmp sgt <2 x i64> %i.eo, %broadcast.splat52
  %i.et = or <2 x i1> %i.ep, %i.er
  %i.eu = or <2 x i1> %i.eq, %i.es
  %i.ev = or <2 x i1> %i.eb, %i.et
  %i.ew = or <2 x i1> %i.ec, %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !30, !noalias !602
  %i.fc = load i64, ptr %i.ey, align 8, !tbaa !30, !noalias !602
  %i.fd = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fe = insertelement <2 x i64> %i.fd, i64 %i.fc, i64 1 ; 2 uses
  %i.ff = load i64, ptr %i.ez, align 8, !tbaa !30, !noalias !602
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !30, !noalias !602
  %i.fh = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fi = insertelement <2 x i64> %i.fh, i64 %i.fg, i64 1 ; 2 uses
  %i.fj = icmp slt <2 x i64> %i.fe, %broadcast.splat50
  %i.fk = icmp slt <2 x i64> %i.fi, %broadcast.splat50
  %i.fl = icmp sgt <2 x i64> %i.fe, %broadcast.splat52
  %i.fm = icmp sgt <2 x i64> %i.fi, %broadcast.splat52
  %i.fn = or <2 x i1> %i.fj, %i.fl
  %i.fo = or <2 x i1> %i.fk, %i.fm
  %i.fp = or <2 x i1> %i.ev, %i.fn
  %i.fq = or <2 x i1> %i.ew, %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.fv = load i64, ptr %i.fr, align 8, !tbaa !30, !noalias !602
  %i.fw = load i64, ptr %i.fs, align 8, !tbaa !30, !noalias !602
  %i.fx = insertelement <2 x i64> poison, i64 %i.fv, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %i.fw, i64 1 ; 2 uses
  %i.fz = load i64, ptr %i.ft, align 8, !tbaa !30, !noalias !602
  %i.ga = load i64, ptr %i.fu, align 8, !tbaa !30, !noalias !602
  %i.gb = insertelement <2 x i64> poison, i64 %i.fz, i64 0
  %i.gc = insertelement <2 x i64> %i.gb, i64 %i.ga, i64 1 ; 2 uses
  %i.gd = icmp slt <2 x i64> %i.fy, %broadcast.splat50
  %i.ge = icmp slt <2 x i64> %i.gc, %broadcast.splat50
  %i.gf = icmp sgt <2 x i64> %i.fy, %broadcast.splat52
  %i.gg = icmp sgt <2 x i64> %i.gc, %broadcast.splat52
  %i.gh = or <2 x i1> %i.gd, %i.gf
  %i.gi = or <2 x i1> %i.ge, %i.gg
  %i.gj = or <2 x i1> %i.fp, %i.gh                ; 2 uses
  %i.gk = or <2 x i1> %i.fq, %i.gi                ; 2 uses
  %index.next57 = add nuw i64 %index54, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next57, %n.vec48
  br i1 %i.gl, label %middle.block58, label %vector.body53, !llvm.loop !608

middle.block58:                                   ; preds = %vector.body53
  %bin.rdx59 = or <2 x i1> %i.gk, %i.gj
  %i.gm = bitcast <2 x i1> %bin.rdx59 to i2
  %i.gn = icmp ne i2 %i.gm, 0                     ; 2 uses
  %cmp.n60 = icmp eq i64 %n.vec48, %smax189.i
  br i1 %cmp.n60, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block58
  %.081158.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec48, %middle.block58 ]
  %.082157.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %i.ac, %middle.block58 ]
  %.085156.i.ph = phi i1 [ false, %.preheader.preheader.i ], [ %i.gn, %middle.block58 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %middle.block58
  %.lcssa36 = phi i1 [ %i.gn, %middle.block58 ], [ %op.rdx, %.preheader.i ]
  %i.go = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.go, %.preheader137.loopexit.i ] ; 5 uses
  %i.gp = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.gq = icmp slt i64 %.082.lcssa.i, %i.gp
  br i1 %i.gq, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader: ; preds = %.preheader137.i
  %i.gr = sub nsw i64 %i.gp, %.082.lcssa.i        ; 2 uses
  %min.iters.check = icmp ult i64 %i.gr, 4
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader
  %i.gs = and i64 %i.gp, 3
  %n.vec = sub nuw nsw i64 %i.gr, %i.gs           ; 2 uses
  %i.gt = add nsw i64 %.082.lcssa.i, %n.vec
  %i.gu = insertelement <2 x i1> <i1 poison, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ %i.gu, %vector.ph ], [ %i.he, %vector.body ]
  %vec.phi43 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.hf, %vector.body ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load = load <2 x i64>, ptr %i.gw, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %wide.load44 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.gy = icmp slt <2 x i64> %wide.load, %broadcast.splat
  %i.gz = icmp slt <2 x i64> %wide.load44, %broadcast.splat
  %i.ha = icmp sgt <2 x i64> %wide.load, %broadcast.splat42
  %i.hb = icmp sgt <2 x i64> %wide.load44, %broadcast.splat42
  %i.hc = or <2 x i1> %i.gy, %i.ha
  %i.hd = or <2 x i1> %i.gz, %i.hb
  %i.he = or <2 x i1> %vec.phi, %i.hc             ; 2 uses
  %i.hf = or <2 x i1> %vec.phi43, %i.hd           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !609

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.hf, %i.he
  %i.hh = bitcast <2 x i1> %bin.rdx to i2
  %i.hi = icmp ne i2 %i.hh, 0                     ; 2 uses
  %i.hj = and i16 %.sroa.0.0.extract.trunc.i, 3
  %cmp.n = icmp eq i16 %i.hj, 0
  br i1 %cmp.n, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader66

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader66: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader, %middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.gt, %middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader ], [ %i.hi, %middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.hs, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.hr, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.082157.i
  %i.hl = load <8 x i64>, ptr %i.hk, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.hm = icmp slt <8 x i64> %i.hl, %i.t
  %i.hn = icmp sgt <8 x i64> %i.hl, %i.v
  %i.ho = shufflevector <8 x i1> %i.hn, <8 x i1> %i.hm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hp = bitcast <16 x i1> %i.ho to i16
  %i.hq = icmp ne i16 %i.hp, 0
  %op.rdx = or i1 %i.hq, %.085156.i               ; 2 uses
  %i.hr = add nuw nsw i64 %.082157.i, 8
  %i.hs = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.hs, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !610

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader66, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i
  %.284162.i = phi i64 [ %i.hy, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader66 ] ; 2 uses
  %.287161.i = phi i1 [ %i.hx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i.preheader66 ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.hv = icmp slt i64 %i.hu, %.48.val
  %i.hw = icmp sgt i64 %i.hu, %.48.val1
  %spec.select128.i = or i1 %i.hv, %i.hw
  %i.hx = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.hy = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.hy, %i.gp
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i, !llvm.loop !611

bb.d:                                             ; preds = %.lr.ph176.i
  %i.hz = icmp sgt i32 %i.x, 0
  br i1 %i.hz, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.ia = icmp sgt i32 %i.y, 7
  br i1 %i.ia, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.ib = lshr i32 %i.y, 3
  %i.ic = trunc i64 %.092169.i to i3              ; 7 uses
  %i.id = trunc i64 %.092169.i to i8
  %i.ie = and i8 %i.id, 7
  %i.if = add i3 %i.ic, 1
  %i.ig = zext i3 %i.if to i8
  %i.ih = add i3 %i.ic, 2
  %i.ii = zext i3 %i.ih to i8
  %i.ij = add i3 %i.ic, 3
  %i.ik = zext i3 %i.ij to i8
  %i.il = xor i3 %i.ic, -4
  %i.im = zext i3 %i.il to i8
  %i.in = add i3 %i.ic, -3
  %i.io = zext i3 %i.in to i8
  %i.ip = add i3 %i.ic, -2
  %i.iq = zext i3 %i.ip to i8
  %i.ir = add i3 %i.ic, -1
  %i.is = zext i3 %i.ir to i8
  %smax.i = zext nneg i32 %i.ib to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.it = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx64, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.it, %.preheader139.loopexit.i ] ; 6 uses
  %i.iu = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.iv = icmp slt i64 %.076.lcssa.i, %i.iu
  br i1 %i.iv, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.iw = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.iw, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.iz = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.ja = lshr i64 %i.iz, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !7, !noalias !602
  %i.jd = trunc i64 %.092169.i to i8
  %i.je = and i8 %i.jd, 7
  %i.jf = lshr i8 %i.jc, %i.je
  %i.jg = trunc i8 %i.jf to i1
  %i.jh = icmp slt i64 %i.iy, %.48.val
  %i.ji = icmp sgt i64 %i.iy, %.48.val1
  %spec.select130.i.prol = or i1 %i.jh, %i.ji
  %i.jj = select i1 %i.jg, i1 %spec.select130.i.prol, i1 false
  %i.jk = or i1 %.3.lcssa.i, %i.jj                ; 2 uses
  %i.jl = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.jk, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.jl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.preheader ], [ %i.jk, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol ]
  %i.jm = add nsw i64 %i.iu, -1
  %i.jn = icmp eq i64 %.076.lcssa.i, %i.jm
  br i1 %i.jn, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.mi, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.mh, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx64, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076147.i
  %i.jp = add nsw i64 %.076147.i, %.092169.i
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !7, !noalias !602
  %i.jt = or disjoint i64 %.076147.i, 1
  %i.ju = add nsw i64 %i.jt, %.092169.i
  %i.jv = lshr i64 %i.ju, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !7, !noalias !602
  %i.jy = or disjoint i64 %.076147.i, 2
  %i.jz = add nsw i64 %i.jy, %.092169.i
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !7, !noalias !602
  %i.kd = or disjoint i64 %.076147.i, 3
  %i.ke = add nsw i64 %i.kd, %.092169.i
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !7, !noalias !602
  %i.ki = or disjoint i64 %.076147.i, 4
  %i.kj = add nsw i64 %i.ki, %.092169.i
  %i.kk = lshr i64 %i.kj, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !7, !noalias !602
  %i.kn = or disjoint i64 %.076147.i, 5
  %i.ko = add nsw i64 %i.kn, %.092169.i
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !7, !noalias !602
  %i.ks = or disjoint i64 %.076147.i, 6
  %i.kt = add nsw i64 %i.ks, %.092169.i
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !7, !noalias !602
  %i.kx = or disjoint i64 %.076147.i, 7
  %i.ky = add nsw i64 %i.kx, %.092169.i
  %i.kz = lshr i64 %i.ky, 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !7, !noalias !602
  %i.lc = load <8 x i64>, ptr %i.jo, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.ld = lshr i8 %i.lb, %i.is
  %i.le = lshr i8 %i.kw, %i.iq
  %i.lf = lshr i8 %i.kr, %i.io
  %i.lg = lshr i8 %i.km, %i.im
  %i.lh = lshr i8 %i.kh, %i.ik
  %i.li = lshr i8 %i.kc, %i.ii
  %i.lj = lshr i8 %i.jx, %i.ig
  %i.lk = lshr i8 %i.js, %i.ie
  %i.ll = trunc i8 %i.ld to i1
  %i.lm = trunc i8 %i.le to i1
  %i.ln = trunc i8 %i.lf to i1
  %i.lo = trunc i8 %i.lg to i1
  %i.lp = trunc i8 %i.lh to i1
  %i.lq = trunc i8 %i.li to i1
  %i.lr = trunc i8 %i.lj to i1
  %i.ls = trunc i8 %i.lk to i1
  %i.lt = icmp slt <8 x i64> %i.lc, %i.p
  %i.lu = icmp sgt <8 x i64> %i.lc, %i.r
  %i.lv = or <8 x i1> %i.lt, %i.lu
  %i.lw = insertelement <8 x i1> poison, i1 %i.ls, i64 0
  %i.lx = insertelement <8 x i1> %i.lw, i1 %i.lr, i64 1
  %i.ly = insertelement <8 x i1> %i.lx, i1 %i.lq, i64 2
  %i.lz = insertelement <8 x i1> %i.ly, i1 %i.lp, i64 3
  %i.ma = insertelement <8 x i1> %i.lz, i1 %i.lo, i64 4
  %i.mb = insertelement <8 x i1> %i.ma, i1 %i.ln, i64 5
  %i.mc = insertelement <8 x i1> %i.mb, i1 %i.lm, i64 6
  %i.md = insertelement <8 x i1> %i.mc, i1 %i.ll, i64 7
  %i.me = select <8 x i1> %i.md, <8 x i1> %i.lv, <8 x i1> zeroinitializer
  %i.mf = bitcast <8 x i1> %i.me to i8
  %i.mg = icmp ne i8 %i.mf, 0
  %op.rdx64 = or i1 %i.mg, %.3146.i               ; 2 uses
  %i.mh = add nuw nsw i64 %.076147.i, 8
  %i.mi = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.mi, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !612

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i
  %.2151.i = phi i64 [ %i.nm, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.nl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.2151.i
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.ml = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.mm = lshr i64 %i.ml, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !7, !noalias !602
  %i.mp = trunc i64 %i.ml to i8
  %i.mq = and i8 %i.mp, 7
  %i.mr = lshr i8 %i.mo, %i.mq
  %i.ms = trunc i8 %i.mr to i1
  %i.mt = icmp slt i64 %i.mk, %.48.val
  %i.mu = icmp sgt i64 %i.mk, %.48.val1
  %spec.select130.i = or i1 %i.mt, %i.mu
  %i.mv = select i1 %i.ms, i1 %spec.select130.i, i1 false
  %i.mw = or i1 %.5150.i, %i.mv
  %i.mx = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.mx
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !30, !noalias !602 ; 2 uses
  %i.na = add nsw i64 %i.mx, %.092169.i           ; 2 uses
  %i.nb = lshr i64 %i.na, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !7, !noalias !602
  %i.ne = trunc i64 %i.na to i8
  %i.nf = and i8 %i.ne, 7
  %i.ng = lshr i8 %i.nd, %i.nf
  %i.nh = trunc i8 %i.ng to i1
  %i.ni = icmp slt i64 %i.mz, %.48.val
  %i.nj = icmp sgt i64 %i.mz, %.48.val1
  %spec.select130.i.1 = or i1 %i.ni, %i.nj
  %i.nk = select i1 %i.nh, i1 %spec.select130.i.1, i1 false
  %i.nl = or i1 %i.mw, %i.nk                      ; 2 uses
  %i.nm = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.nm, %i.iu
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i, !llvm.loop !613

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.hx, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.hi, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i.prol.loopexit ], [ %i.nl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.nn = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !602
  %i.no = icmp sgt i64 %i.nn, 0
  %i.np = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.no, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.oc, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.nq = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.nr = lshr i64 %i.nq, 3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !7, !noalias !602
  %i.nu = trunc i64 %i.nq to i8
  %i.nv = and i8 %i.nu, 7
  %i.nw = lshr i8 %i.nt, %i.nv
  %i.nx = trunc i8 %i.nw to i1
  br i1 %i.nx, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.073167.i
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !30, !noalias !602 ; 3 uses
  %i.oa = icmp slt i64 %i.nz, %.48.val
  %i.ob = icmp sgt i64 %i.nz, %.48.val1
  %or.cond131.i = or i1 %i.oa, %i.ob
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.nz)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.oc = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.oc, %i.np
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !614

bb.g:                                             ; preds = %.lr.ph.i
  %i.od = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.od, %i.np
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !615

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.od, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.0165.i
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !30, !noalias !602 ; 3 uses
  %i.og = icmp slt i64 %i.of, %.48.val
  %i.oh = icmp sgt i64 %i.of, %.48.val1
  %or.cond132.i = or i1 %i.og, %i.oh
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.of)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.oi = sext i32 %i.y to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %.088173.i, i64 %i.oi
  %i.ok = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ol = add nsw i64 %.090172.i, %i.ok           ; 2 uses
  %i.om = add nsw i64 %.092169.i, %i.ok
  %i.on = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !602
  %i.oo = icmp slt i64 %i.ol, %i.on
  br i1 %i.oo, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !616

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !617
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllE_clEl.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9Int64TypeElEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUllbE_clElb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !602
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.41.val, ptr %i.a, align 1, !tbaa !7, !noalias !620
  store i8 %.41.val1, ptr %i.b, align 1, !tbaa !7, !noalias !620
  %.not.i = icmp ne i8 %.41.val, 0
  %.not97.i = icmp ne i8 %.41.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !623
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !620 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !620
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !620 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !620
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !620
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !620
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !620
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !620
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.p = shufflevector <8 x i8> %i.o, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.r = shufflevector <8 x i8> %i.q, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat64 = shufflevector <16 x i8> %broadcast.splatinsert63, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert65 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat66 = shufflevector <16 x i8> %broadcast.splatinsert65, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert83 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat84 = shufflevector <8 x i8> %broadcast.splatinsert83, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert85 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat86 = shufflevector <8 x i8> %broadcast.splatinsert85, <8 x i8> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %i.v = shufflevector <8 x i8> %i.u, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <16 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat43 = shufflevector <16 x i8> %broadcast.splatinsert42, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x i8> poison, i8 %.41.val, i64 0
  %broadcast.splat48 = shufflevector <8 x i8> %broadcast.splatinsert47, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <8 x i8> poison, i8 %.41.val1, i64 0
  %broadcast.splat50 = shufflevector <8 x i8> %broadcast.splatinsert49, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.ayx, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 51 uses
  %.090172.i = phi i64 [ %i.ayz, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.aza, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !620 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check77, label %.preheader137.i

iter.check77:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check58 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check58, label %.preheader.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check77
  %min.iters.check60 = icmp ult i32 %i.x, 256
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ac = and i64 %smax189.i, 24
  %n.vec62 = and i64 %smax189.i, 268435424        ; 5 uses
  %i.ad = shl nuw nsw i64 %n.vec62, 3
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph61
  %index68 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body67 ] ; 2 uses
  %vec.phi69 = phi <16 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.ahi, %vector.body67 ]
  %vec.phi70 = phi <16 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.ahj, %vector.body67 ]
  %i.ae = shl nuw i64 %index68, 3                 ; 32 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 152
  %i.bs = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.bu = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.ca = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %i.cc = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 224
  %i.ck = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 232
  %i.cm = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  %i.co = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 248
  %i.cq = load i8, ptr %i.af, align 1, !tbaa !7, !noalias !620
  %i.cr = load i8, ptr %i.ah, align 1, !tbaa !7, !noalias !620
  %i.cs = load i8, ptr %i.aj, align 1, !tbaa !7, !noalias !620
  %i.ct = load i8, ptr %i.al, align 1, !tbaa !7, !noalias !620
  %i.cu = load i8, ptr %i.an, align 1, !tbaa !7, !noalias !620
  %i.cv = load i8, ptr %i.ap, align 1, !tbaa !7, !noalias !620
  %i.cw = load i8, ptr %i.ar, align 1, !tbaa !7, !noalias !620
  %i.cx = load i8, ptr %i.at, align 1, !tbaa !7, !noalias !620
  %i.cy = load i8, ptr %i.av, align 1, !tbaa !7, !noalias !620
  %i.cz = load i8, ptr %i.ax, align 1, !tbaa !7, !noalias !620
  %i.da = load i8, ptr %i.az, align 1, !tbaa !7, !noalias !620
  %i.db = load i8, ptr %i.bb, align 1, !tbaa !7, !noalias !620
  %i.dc = load i8, ptr %i.bd, align 1, !tbaa !7, !noalias !620
  %i.dd = load i8, ptr %i.bf, align 1, !tbaa !7, !noalias !620
  %i.de = load i8, ptr %i.bh, align 1, !tbaa !7, !noalias !620
  %i.df = load i8, ptr %i.bj, align 1, !tbaa !7, !noalias !620
  %i.dg = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 1
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 2
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 3
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 4
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 5
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 6
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 7
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 8
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 9
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 10
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 11
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 12
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 13
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 14
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 15 ; 2 uses
  %i.dw = load i8, ptr %i.bl, align 1, !tbaa !7, !noalias !620
  %i.dx = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !620
  %i.dy = load i8, ptr %i.bp, align 1, !tbaa !7, !noalias !620
  %i.dz = load i8, ptr %i.br, align 1, !tbaa !7, !noalias !620
  %i.ea = load i8, ptr %i.bt, align 1, !tbaa !7, !noalias !620
  %i.eb = load i8, ptr %i.bv, align 1, !tbaa !7, !noalias !620
  %i.ec = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !620
  %i.ed = load i8, ptr %i.bz, align 1, !tbaa !7, !noalias !620
  %i.ee = load i8, ptr %i.cb, align 1, !tbaa !7, !noalias !620
  %i.ef = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !620
  %i.eg = load i8, ptr %i.cf, align 1, !tbaa !7, !noalias !620
  %i.eh = load i8, ptr %i.ch, align 1, !tbaa !7, !noalias !620
  %i.ei = load i8, ptr %i.cj, align 1, !tbaa !7, !noalias !620
  %i.ej = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !620
  %i.ek = load i8, ptr %i.cn, align 1, !tbaa !7, !noalias !620
  %i.el = load i8, ptr %i.cp, align 1, !tbaa !7, !noalias !620
  %i.em = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 1
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 2
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 3
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 4
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 5
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 6
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 7
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 8
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 9
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 10
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 11
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 12
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 13
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 14
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 15 ; 2 uses
  %i.fc = icmp ult <16 x i8> %i.dv, %broadcast.splat64
  %i.fd = icmp ult <16 x i8> %i.fb, %broadcast.splat64
  %i.fe = icmp ugt <16 x i8> %i.dv, %broadcast.splat66
  %i.ff = icmp ugt <16 x i8> %i.fb, %broadcast.splat66
  %i.fg = or <16 x i1> %i.fc, %i.fe
  %i.fh = or <16 x i1> %i.fd, %i.ff
  %i.fi = or <16 x i1> %vec.phi69, %i.fg
  %i.fj = or <16 x i1> %vec.phi70, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ak, i64 25
  %i.fo = getelementptr inbounds nuw i8, ptr %i.am, i64 33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ao, i64 41
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aq, i64 49
  %i.fr = getelementptr inbounds nuw i8, ptr %i.as, i64 57
  %i.fs = getelementptr inbounds nuw i8, ptr %i.au, i64 65
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 73
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ay, i64 81
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 89
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bc, i64 97
  %i.fx = getelementptr inbounds nuw i8, ptr %i.be, i64 105
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bg, i64 113
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bi, i64 121
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bk, i64 129
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bm, i64 137
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bo, i64 145
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bq, i64 153
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bs, i64 161
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bu, i64 169
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bw, i64 177
  %i.gh = getelementptr inbounds nuw i8, ptr %i.by, i64 185
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ca, i64 193
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cc, i64 201
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ce, i64 209
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cg, i64 217
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ci, i64 225
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ck, i64 233
  %i.go = getelementptr inbounds nuw i8, ptr %i.cm, i64 241
  %i.gp = getelementptr inbounds nuw i8, ptr %i.co, i64 249
  %i.gq = load i8, ptr %i.fk, align 1, !tbaa !7, !noalias !620
  %i.gr = load i8, ptr %i.fl, align 1, !tbaa !7, !noalias !620
  %i.gs = load i8, ptr %i.fm, align 1, !tbaa !7, !noalias !620
  %i.gt = load i8, ptr %i.fn, align 1, !tbaa !7, !noalias !620
  %i.gu = load i8, ptr %i.fo, align 1, !tbaa !7, !noalias !620
  %i.gv = load i8, ptr %i.fp, align 1, !tbaa !7, !noalias !620
  %i.gw = load i8, ptr %i.fq, align 1, !tbaa !7, !noalias !620
  %i.gx = load i8, ptr %i.fr, align 1, !tbaa !7, !noalias !620
  %i.gy = load i8, ptr %i.fs, align 1, !tbaa !7, !noalias !620
  %i.gz = load i8, ptr %i.ft, align 1, !tbaa !7, !noalias !620
  %i.ha = load i8, ptr %i.fu, align 1, !tbaa !7, !noalias !620
  %i.hb = load i8, ptr %i.fv, align 1, !tbaa !7, !noalias !620
  %i.hc = load i8, ptr %i.fw, align 1, !tbaa !7, !noalias !620
  %i.hd = load i8, ptr %i.fx, align 1, !tbaa !7, !noalias !620
  %i.he = load i8, ptr %i.fy, align 1, !tbaa !7, !noalias !620
  %i.hf = load i8, ptr %i.fz, align 1, !tbaa !7, !noalias !620
  %i.hg = insertelement <16 x i8> poison, i8 %i.gq, i64 0
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 1
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 2
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 3
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 4
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 5
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 6
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 7
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 8
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 9
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 10
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 11
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 12
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 13
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 14
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 15 ; 2 uses
  %i.hw = load i8, ptr %i.ga, align 1, !tbaa !7, !noalias !620
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_9UInt8TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %i.cg, i64 222
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ci, i64 230
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ck, i64 238
  %i.aao = getelementptr inbounds nuw i8, ptr %i.cm, i64 246
  %i.aap = getelementptr inbounds nuw i8, ptr %i.co, i64 254
  %i.aaq = load i8, ptr %i.zk, align 1, !tbaa !7, !noalias !620
  %i.aar = load i8, ptr %i.zl, align 1, !tbaa !7, !noalias !620
  %i.aas = load i8, ptr %i.zm, align 1, !tbaa !7, !noalias !620
  %i.aat = load i8, ptr %i.zn, align 1, !tbaa !7, !noalias !620
  %i.aau = load i8, ptr %i.zo, align 1, !tbaa !7, !noalias !620
  %i.aav = load i8, ptr %i.zp, align 1, !tbaa !7, !noalias !620
  %i.aaw = load i8, ptr %i.zq, align 1, !tbaa !7, !noalias !620
  %i.aax = load i8, ptr %i.zr, align 1, !tbaa !7, !noalias !620
  %i.aay = load i8, ptr %i.zs, align 1, !tbaa !7, !noalias !620
  %i.aaz = load i8, ptr %i.zt, align 1, !tbaa !7, !noalias !620
  %i.aba = load i8, ptr %i.zu, align 1, !tbaa !7, !noalias !620
  %i.abb = load i8, ptr %i.zv, align 1, !tbaa !7, !noalias !620
  %i.abc = load i8, ptr %i.zw, align 1, !tbaa !7, !noalias !620
  %i.abd = load i8, ptr %i.zx, align 1, !tbaa !7, !noalias !620
  %i.abe = load i8, ptr %i.zy, align 1, !tbaa !7, !noalias !620
  %i.abf = load i8, ptr %i.zz, align 1, !tbaa !7, !noalias !620
  %i.abg = insertelement <16 x i8> poison, i8 %i.aaq, i64 0
  %i.abh = insertelement <16 x i8> %i.abg, i8 %i.aar, i64 1
  %i.abi = insertelement <16 x i8> %i.abh, i8 %i.aas, i64 2
  %i.abj = insertelement <16 x i8> %i.abi, i8 %i.aat, i64 3
  %i.abk = insertelement <16 x i8> %i.abj, i8 %i.aau, i64 4
  %i.abl = insertelement <16 x i8> %i.abk, i8 %i.aav, i64 5
  %i.abm = insertelement <16 x i8> %i.abl, i8 %i.aaw, i64 6
  %i.abn = insertelement <16 x i8> %i.abm, i8 %i.aax, i64 7
  %i.abo = insertelement <16 x i8> %i.abn, i8 %i.aay, i64 8
  %i.abp = insertelement <16 x i8> %i.abo, i8 %i.aaz, i64 9
  %i.abq = insertelement <16 x i8> %i.abp, i8 %i.aba, i64 10
  %i.abr = insertelement <16 x i8> %i.abq, i8 %i.abb, i64 11
  %i.abs = insertelement <16 x i8> %i.abr, i8 %i.abc, i64 12
  %i.abt = insertelement <16 x i8> %i.abs, i8 %i.abd, i64 13
  %i.abu = insertelement <16 x i8> %i.abt, i8 %i.abe, i64 14
  %i.abv = insertelement <16 x i8> %i.abu, i8 %i.abf, i64 15 ; 2 uses
  %i.abw = load i8, ptr %i.aaa, align 1, !tbaa !7, !noalias !620
  %i.abx = load i8, ptr %i.aab, align 1, !tbaa !7, !noalias !620
  %i.aby = load i8, ptr %i.aac, align 1, !tbaa !7, !noalias !620
  %i.abz = load i8, ptr %i.aad, align 1, !tbaa !7, !noalias !620
  %i.aca = load i8, ptr %i.aae, align 1, !tbaa !7, !noalias !620
  %i.acb = load i8, ptr %i.aaf, align 1, !tbaa !7, !noalias !620
  %i.acc = load i8, ptr %i.aag, align 1, !tbaa !7, !noalias !620
  %i.acd = load i8, ptr %i.aah, align 1, !tbaa !7, !noalias !620
  %i.ace = load i8, ptr %i.aai, align 1, !tbaa !7, !noalias !620
  %i.acf = load i8, ptr %i.aaj, align 1, !tbaa !7, !noalias !620
  %i.acg = load i8, ptr %i.aak, align 1, !tbaa !7, !noalias !620
  %i.ach = load i8, ptr %i.aal, align 1, !tbaa !7, !noalias !620
  %i.aci = load i8, ptr %i.aam, align 1, !tbaa !7, !noalias !620
  %i.acj = load i8, ptr %i.aan, align 1, !tbaa !7, !noalias !620
  %i.ack = load i8, ptr %i.aao, align 1, !tbaa !7, !noalias !620
  %i.acl = load i8, ptr %i.aap, align 1, !tbaa !7, !noalias !620
  %i.acm = insertelement <16 x i8> poison, i8 %i.abw, i64 0
  %i.acn = insertelement <16 x i8> %i.acm, i8 %i.abx, i64 1
  %i.aco = insertelement <16 x i8> %i.acn, i8 %i.aby, i64 2
  %i.acp = insertelement <16 x i8> %i.aco, i8 %i.abz, i64 3
  %i.acq = insertelement <16 x i8> %i.acp, i8 %i.aca, i64 4
  %i.acr = insertelement <16 x i8> %i.acq, i8 %i.acb, i64 5
  %i.acs = insertelement <16 x i8> %i.acr, i8 %i.acc, i64 6
  %i.act = insertelement <16 x i8> %i.acs, i8 %i.acd, i64 7
  %i.acu = insertelement <16 x i8> %i.act, i8 %i.ace, i64 8
  %i.acv = insertelement <16 x i8> %i.acu, i8 %i.acf, i64 9
  %i.acw = insertelement <16 x i8> %i.acv, i8 %i.acg, i64 10
  %i.acx = insertelement <16 x i8> %i.acw, i8 %i.ach, i64 11
  %i.acy = insertelement <16 x i8> %i.acx, i8 %i.aci, i64 12
  %i.acz = insertelement <16 x i8> %i.acy, i8 %i.acj, i64 13
  %i.ada = insertelement <16 x i8> %i.acz, i8 %i.ack, i64 14
  %i.adb = insertelement <16 x i8> %i.ada, i8 %i.acl, i64 15 ; 2 uses
  %i.adc = icmp ult <16 x i8> %i.abv, %broadcast.splat64
  %i.add = icmp ult <16 x i8> %i.adb, %broadcast.splat64
  %i.ade = icmp ugt <16 x i8> %i.abv, %broadcast.splat66
  %i.adf = icmp ugt <16 x i8> %i.adb, %broadcast.splat66
  %i.adg = or <16 x i1> %i.adc, %i.ade
  %i.adh = or <16 x i1> %i.add, %i.adf
  %i.adi = or <16 x i1> %i.zi, %i.adg
  %i.adj = or <16 x i1> %i.zj, %i.adh
  %i.adk = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ag, i64 15
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ai, i64 23
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ak, i64 31
  %i.ado = getelementptr inbounds nuw i8, ptr %i.am, i64 39
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ao, i64 47
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aq, i64 55
  %i.adr = getelementptr inbounds nuw i8, ptr %i.as, i64 63
  %i.ads = getelementptr inbounds nuw i8, ptr %i.au, i64 71
  %i.adt = getelementptr inbounds nuw i8, ptr %i.aw, i64 79
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ay, i64 87
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ba, i64 95
  %i.adw = getelementptr inbounds nuw i8, ptr %i.bc, i64 103
  %i.adx = getelementptr inbounds nuw i8, ptr %i.be, i64 111
  %i.ady = getelementptr inbounds nuw i8, ptr %i.bg, i64 119
  %i.adz = getelementptr inbounds nuw i8, ptr %i.bi, i64 127
  %i.aea = getelementptr inbounds nuw i8, ptr %i.bk, i64 135
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.bm, i64 143
  %i.aec = getelementptr inbounds nuw i8, ptr %i.bo, i64 151
  %i.aed = getelementptr inbounds nuw i8, ptr %i.bq, i64 159
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bs, i64 167
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bu, i64 175
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.bw, i64 183
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.by, i64 191
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ca, i64 199
  %i.aej = getelementptr inbounds nuw i8, ptr %i.cc, i64 207
  %i.aek = getelementptr inbounds nuw i8, ptr %i.ce, i64 215
  %i.ael = getelementptr inbounds nuw i8, ptr %i.cg, i64 223
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ci, i64 231
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ck, i64 239
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.cm, i64 247
  %i.aep = getelementptr inbounds nuw i8, ptr %i.co, i64 255
  %i.aeq = load i8, ptr %i.adk, align 1, !tbaa !7, !noalias !620
  %i.aer = load i8, ptr %i.adl, align 1, !tbaa !7, !noalias !620
  %i.aes = load i8, ptr %i.adm, align 1, !tbaa !7, !noalias !620
  %i.aet = load i8, ptr %i.adn, align 1, !tbaa !7, !noalias !620
  %i.aeu = load i8, ptr %i.ado, align 1, !tbaa !7, !noalias !620
  %i.aev = load i8, ptr %i.adp, align 1, !tbaa !7, !noalias !620
  %i.aew = load i8, ptr %i.adq, align 1, !tbaa !7, !noalias !620
  %i.aex = load i8, ptr %i.adr, align 1, !tbaa !7, !noalias !620
  %i.aey = load i8, ptr %i.ads, align 1, !tbaa !7, !noalias !620
  %i.aez = load i8, ptr %i.adt, align 1, !tbaa !7, !noalias !620
  %i.afa = load i8, ptr %i.adu, align 1, !tbaa !7, !noalias !620
  %i.afb = load i8, ptr %i.adv, align 1, !tbaa !7, !noalias !620
  %i.afc = load i8, ptr %i.adw, align 1, !tbaa !7, !noalias !620
  %i.afd = load i8, ptr %i.adx, align 1, !tbaa !7, !noalias !620
  %i.afe = load i8, ptr %i.ady, align 1, !tbaa !7, !noalias !620
  %i.aff = load i8, ptr %i.adz, align 1, !tbaa !7, !noalias !620
  %i.afg = insertelement <16 x i8> poison, i8 %i.aeq, i64 0
  %i.afh = insertelement <16 x i8> %i.afg, i8 %i.aer, i64 1
  %i.afi = insertelement <16 x i8> %i.afh, i8 %i.aes, i64 2
  %i.afj = insertelement <16 x i8> %i.afi, i8 %i.aet, i64 3
  %i.afk = insertelement <16 x i8> %i.afj, i8 %i.aeu, i64 4
  %i.afl = insertelement <16 x i8> %i.afk, i8 %i.aev, i64 5
  %i.afm = insertelement <16 x i8> %i.afl, i8 %i.aew, i64 6
  %i.afn = insertelement <16 x i8> %i.afm, i8 %i.aex, i64 7
  %i.afo = insertelement <16 x i8> %i.afn, i8 %i.aey, i64 8
  %i.afp = insertelement <16 x i8> %i.afo, i8 %i.aez, i64 9
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 10
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 11
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 12
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 13
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 14
  %i.afv = insertelement <16 x i8> %i.afu, i8 %i.aff, i64 15 ; 2 uses
  %i.afw = load i8, ptr %i.aea, align 1, !tbaa !7, !noalias !620
  %i.afx = load i8, ptr %i.aeb, align 1, !tbaa !7, !noalias !620
  %i.afy = load i8, ptr %i.aec, align 1, !tbaa !7, !noalias !620
  %i.afz = load i8, ptr %i.aed, align 1, !tbaa !7, !noalias !620
  %i.aga = load i8, ptr %i.aee, align 1, !tbaa !7, !noalias !620
  %i.agb = load i8, ptr %i.aef, align 1, !tbaa !7, !noalias !620
  %i.agc = load i8, ptr %i.aeg, align 1, !tbaa !7, !noalias !620
  %i.agd = load i8, ptr %i.aeh, align 1, !tbaa !7, !noalias !620
  %i.age = load i8, ptr %i.aei, align 1, !tbaa !7, !noalias !620
  %i.agf = load i8, ptr %i.aej, align 1, !tbaa !7, !noalias !620
  %i.agg = load i8, ptr %i.aek, align 1, !tbaa !7, !noalias !620
  %i.agh = load i8, ptr %i.ael, align 1, !tbaa !7, !noalias !620
  %i.agi = load i8, ptr %i.aem, align 1, !tbaa !7, !noalias !620
  %i.agj = load i8, ptr %i.aen, align 1, !tbaa !7, !noalias !620
  %i.agk = load i8, ptr %i.aeo, align 1, !tbaa !7, !noalias !620
  %i.agl = load i8, ptr %i.aep, align 1, !tbaa !7, !noalias !620
  %i.agm = insertelement <16 x i8> poison, i8 %i.afw, i64 0
  %i.agn = insertelement <16 x i8> %i.agm, i8 %i.afx, i64 1
  %i.ago = insertelement <16 x i8> %i.agn, i8 %i.afy, i64 2
  %i.agp = insertelement <16 x i8> %i.ago, i8 %i.afz, i64 3
  %i.agq = insertelement <16 x i8> %i.agp, i8 %i.aga, i64 4
  %i.agr = insertelement <16 x i8> %i.agq, i8 %i.agb, i64 5
  %i.ags = insertelement <16 x i8> %i.agr, i8 %i.agc, i64 6
  %i.agt = insertelement <16 x i8> %i.ags, i8 %i.agd, i64 7
  %i.agu = insertelement <16 x i8> %i.agt, i8 %i.age, i64 8
  %i.agv = insertelement <16 x i8> %i.agu, i8 %i.agf, i64 9
  %i.agw = insertelement <16 x i8> %i.agv, i8 %i.agg, i64 10
  %i.agx = insertelement <16 x i8> %i.agw, i8 %i.agh, i64 11
  %i.agy = insertelement <16 x i8> %i.agx, i8 %i.agi, i64 12
  %i.agz = insertelement <16 x i8> %i.agy, i8 %i.agj, i64 13
  %i.aha = insertelement <16 x i8> %i.agz, i8 %i.agk, i64 14
  %i.ahb = insertelement <16 x i8> %i.aha, i8 %i.agl, i64 15 ; 2 uses
  %i.ahc = icmp ult <16 x i8> %i.afv, %broadcast.splat64
  %i.ahd = icmp ult <16 x i8> %i.ahb, %broadcast.splat64
  %i.ahe = icmp ugt <16 x i8> %i.afv, %broadcast.splat66
  %i.ahf = icmp ugt <16 x i8> %i.ahb, %broadcast.splat66
  %i.ahg = or <16 x i1> %i.ahc, %i.ahe
  %i.ahh = or <16 x i1> %i.ahd, %i.ahf
  %i.ahi = or <16 x i1> %i.adi, %i.ahg            ; 2 uses
  %i.ahj = or <16 x i1> %i.adj, %i.ahh            ; 2 uses
  %index.next71 = add nuw i64 %index68, 32        ; 2 uses
  %i.ahk = icmp eq i64 %index.next71, %n.vec62
  br i1 %i.ahk, label %middle.block72, label %vector.body67, !llvm.loop !626

middle.block72:                                   ; preds = %vector.body67
  %bin.rdx73 = or <16 x i1> %i.ahj, %i.ahi
  %i.ahl = bitcast <16 x i1> %bin.rdx73 to i16
  %i.ahm = icmp ne i16 %i.ahl, 0                  ; 3 uses
  %cmp.n74 = icmp eq i64 %n.vec62, %smax189.i
  br i1 %cmp.n74, label %.preheader137.loopexit.i, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block72
  %min.epilog.iters.check80 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check80, label %.preheader.i.preheader, label %vec.epilog.ph81, !prof !549

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec62, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %bc.merge.rdx76 = phi i1 [ %i.ahm, %vec.epilog.iter.check79 ], [ false, %vector.main.loop.iter.check59 ]
  %n.vec82 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ahn = shl nuw nsw i64 %n.vec82, 3
  %i.aho = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx76, i64 0
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph81
  %index88 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next90, %vec.epilog.vector.body87 ] ; 2 uses
  %vec.phi89 = phi <8 x i1> [ %i.aho, %vec.epilog.ph81 ], [ %i.aqm, %vec.epilog.vector.body87 ]
  %i.ahp = shl nuw i64 %index88, 3                ; 8 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  %i.ahv = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  %i.ahx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 40
  %i.aib = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 48
  %i.aid = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.ahp ; 8 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 56
  %i.aif = load i8, ptr %i.ahq, align 1, !tbaa !7, !noalias !620
  %i.aig = load i8, ptr %i.ahs, align 1, !tbaa !7, !noalias !620
  %i.aih = load i8, ptr %i.ahu, align 1, !tbaa !7, !noalias !620
  %i.aii = load i8, ptr %i.ahw, align 1, !tbaa !7, !noalias !620
  %i.aij = load i8, ptr %i.ahy, align 1, !tbaa !7, !noalias !620
  %i.aik = load i8, ptr %i.aia, align 1, !tbaa !7, !noalias !620
  %i.ail = load i8, ptr %i.aic, align 1, !tbaa !7, !noalias !620
  %i.aim = load i8, ptr %i.aie, align 1, !tbaa !7, !noalias !620
  %i.ain = insertelement <8 x i8> poison, i8 %i.aif, i64 0
  %i.aio = insertelement <8 x i8> %i.ain, i8 %i.aig, i64 1
  %i.aip = insertelement <8 x i8> %i.aio, i8 %i.aih, i64 2
  %i.aiq = insertelement <8 x i8> %i.aip, i8 %i.aii, i64 3
  %i.air = insertelement <8 x i8> %i.aiq, i8 %i.aij, i64 4
  %i.ais = insertelement <8 x i8> %i.air, i8 %i.aik, i64 5
  %i.ait = insertelement <8 x i8> %i.ais, i8 %i.ail, i64 6
  %i.aiu = insertelement <8 x i8> %i.ait, i8 %i.aim, i64 7 ; 2 uses
  %i.aiv = icmp ult <8 x i8> %i.aiu, %broadcast.splat84
  %i.aiw = icmp ugt <8 x i8> %i.aiu, %broadcast.splat86
  %i.aix = or <8 x i1> %i.aiv, %i.aiw
  %i.aiy = or <8 x i1> %vec.phi89, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahr, i64 9
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aht, i64 17
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ahv, i64 25
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahx, i64 33
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahz, i64 41
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aib, i64 49
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aid, i64 57
  %i.ajh = load i8, ptr %i.aiz, align 1, !tbaa !7, !noalias !620
  %i.aji = load i8, ptr %i.aja, align 1, !tbaa !7, !noalias !620
  %i.ajj = load i8, ptr %i.ajb, align 1, !tbaa !7, !noalias !620
  %i.ajk = load i8, ptr %i.ajc, align 1, !tbaa !7, !noalias !620
  %i.ajl = load i8, ptr %i.ajd, align 1, !tbaa !7, !noalias !620
  %i.ajm = load i8, ptr %i.aje, align 1, !tbaa !7, !noalias !620
  %i.ajn = load i8, ptr %i.ajf, align 1, !tbaa !7, !noalias !620
  %i.ajo = load i8, ptr %i.ajg, align 1, !tbaa !7, !noalias !620
  %i.ajp = insertelement <8 x i8> poison, i8 %i.ajh, i64 0
  %i.ajq = insertelement <8 x i8> %i.ajp, i8 %i.aji, i64 1
  %i.ajr = insertelement <8 x i8> %i.ajq, i8 %i.ajj, i64 2
  %i.ajs = insertelement <8 x i8> %i.ajr, i8 %i.ajk, i64 3
  %i.ajt = insertelement <8 x i8> %i.ajs, i8 %i.ajl, i64 4
  %i.aju = insertelement <8 x i8> %i.ajt, i8 %i.ajm, i64 5
  %i.ajv = insertelement <8 x i8> %i.aju, i8 %i.ajn, i64 6
  %i.ajw = insertelement <8 x i8> %i.ajv, i8 %i.ajo, i64 7 ; 2 uses
  %i.ajx = icmp ult <8 x i8> %i.ajw, %broadcast.splat84
  %i.ajy = icmp ugt <8 x i8> %i.ajw, %broadcast.splat86
  %i.ajz = or <8 x i1> %i.ajx, %i.ajy
  %i.aka = or <8 x i1> %i.aiy, %i.ajz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahq, i64 2
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ahr, i64 10
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aht, i64 18
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ahv, i64 26
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ahx, i64 34
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ahz, i64 42
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aib, i64 50
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aid, i64 58
  %i.akj = load i8, ptr %i.akb, align 1, !tbaa !7, !noalias !620
  %i.akk = load i8, ptr %i.akc, align 1, !tbaa !7, !noalias !620
  %i.akl = load i8, ptr %i.akd, align 1, !tbaa !7, !noalias !620
  %i.akm = load i8, ptr %i.ake, align 1, !tbaa !7, !noalias !620
  %i.akn = load i8, ptr %i.akf, align 1, !tbaa !7, !noalias !620
  %i.ako = load i8, ptr %i.akg, align 1, !tbaa !7, !noalias !620
  %i.akp = load i8, ptr %i.akh, align 1, !tbaa !7, !noalias !620
  %i.akq = load i8, ptr %i.aki, align 1, !tbaa !7, !noalias !620
  %i.akr = insertelement <8 x i8> poison, i8 %i.akj, i64 0
  %i.aks = insertelement <8 x i8> %i.akr, i8 %i.akk, i64 1
  %i.akt = insertelement <8 x i8> %i.aks, i8 %i.akl, i64 2
  %i.aku = insertelement <8 x i8> %i.akt, i8 %i.akm, i64 3
  %i.akv = insertelement <8 x i8> %i.aku, i8 %i.akn, i64 4
  %i.akw = insertelement <8 x i8> %i.akv, i8 %i.ako, i64 5
  %i.akx = insertelement <8 x i8> %i.akw, i8 %i.akp, i64 6
  %i.aky = insertelement <8 x i8> %i.akx, i8 %i.akq, i64 7 ; 2 uses
  %i.akz = icmp ult <8 x i8> %i.aky, %broadcast.splat84
  %i.ala = icmp ugt <8 x i8> %i.aky, %broadcast.splat86
  %i.alb = or <8 x i1> %i.akz, %i.ala
  %i.alc = or <8 x i1> %i.aka, %i.alb
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ahq, i64 3
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ahr, i64 11
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aht, i64 19
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ahv, i64 27
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahx, i64 35
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ahz, i64 43
  %i.alj = getelementptr inbounds nuw i8, ptr %i.aib, i64 51
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aid, i64 59
  %i.all = load i8, ptr %i.ald, align 1, !tbaa !7, !noalias !620
  %i.alm = load i8, ptr %i.ale, align 1, !tbaa !7, !noalias !620
  %i.aln = load i8, ptr %i.alf, align 1, !tbaa !7, !noalias !620
  %i.alo = load i8, ptr %i.alg, align 1, !tbaa !7, !noalias !620
  %i.alp = load i8, ptr %i.alh, align 1, !tbaa !7, !noalias !620
  %i.alq = load i8, ptr %i.ali, align 1, !tbaa !7, !noalias !620
  %i.alr = load i8, ptr %i.alj, align 1, !tbaa !7, !noalias !620
  %i.als = load i8, ptr %i.alk, align 1, !tbaa !7, !noalias !620
  %i.alt = insertelement <8 x i8> poison, i8 %i.all, i64 0
  %i.alu = insertelement <8 x i8> %i.alt, i8 %i.alm, i64 1
  %i.alv = insertelement <8 x i8> %i.alu, i8 %i.aln, i64 2
  %i.alw = insertelement <8 x i8> %i.alv, i8 %i.alo, i64 3
  %i.alx = insertelement <8 x i8> %i.alw, i8 %i.alp, i64 4
  %i.aly = insertelement <8 x i8> %i.alx, i8 %i.alq, i64 5
  %i.alz = insertelement <8 x i8> %i.aly, i8 %i.alr, i64 6
  %i.ama = insertelement <8 x i8> %i.alz, i8 %i.als, i64 7 ; 2 uses
  %i.amb = icmp ult <8 x i8> %i.ama, %broadcast.splat84
  %i.amc = icmp ugt <8 x i8> %i.ama, %broadcast.splat86
  %i.amd = or <8 x i1> %i.amb, %i.amc
  %i.ame = or <8 x i1> %i.alc, %i.amd
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ahr, i64 12
  %i.amh = getelementptr inbounds nuw i8, ptr %i.aht, i64 20
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ahv, i64 28
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ahx, i64 36
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ahz, i64 44
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aib, i64 52
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aid, i64 60
  %i.amn = load i8, ptr %i.amf, align 1, !tbaa !7, !noalias !620
  %i.amo = load i8, ptr %i.amg, align 1, !tbaa !7, !noalias !620
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !7, !noalias !620
  %i.amq = load i8, ptr %i.ami, align 1, !tbaa !7, !noalias !620
  %i.amr = load i8, ptr %i.amj, align 1, !tbaa !7, !noalias !620
  %i.ams = load i8, ptr %i.amk, align 1, !tbaa !7, !noalias !620
  %i.amt = load i8, ptr %i.aml, align 1, !tbaa !7, !noalias !620
  %i.amu = load i8, ptr %i.amm, align 1, !tbaa !7, !noalias !620
  %i.amv = insertelement <8 x i8> poison, i8 %i.amn, i64 0
  %i.amw = insertelement <8 x i8> %i.amv, i8 %i.amo, i64 1
  %i.amx = insertelement <8 x i8> %i.amw, i8 %i.amp, i64 2
  %i.amy = insertelement <8 x i8> %i.amx, i8 %i.amq, i64 3
  %i.amz = insertelement <8 x i8> %i.amy, i8 %i.amr, i64 4
  %i.ana = insertelement <8 x i8> %i.amz, i8 %i.ams, i64 5
  %i.anb = insertelement <8 x i8> %i.ana, i8 %i.amt, i64 6
  %i.anc = insertelement <8 x i8> %i.anb, i8 %i.amu, i64 7 ; 2 uses
  %i.and = icmp ult <8 x i8> %i.anc, %broadcast.splat84
  %i.ane = icmp ugt <8 x i8> %i.anc, %broadcast.splat86
  %i.anf = or <8 x i1> %i.and, %i.ane
  %i.ang = or <8 x i1> %i.ame, %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 5
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ahr, i64 13
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aht, i64 21
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ahv, i64 29
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ahx, i64 37
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ahz, i64 45
  %i.ann = getelementptr inbounds nuw i8, ptr %i.aib, i64 53
  %i.ano = getelementptr inbounds nuw i8, ptr %i.aid, i64 61
  %i.anp = load i8, ptr %i.anh, align 1, !tbaa !7, !noalias !620
  %i.anq = load i8, ptr %i.ani, align 1, !tbaa !7, !noalias !620
  %i.anr = load i8, ptr %i.anj, align 1, !tbaa !7, !noalias !620
  %i.ans = load i8, ptr %i.ank, align 1, !tbaa !7, !noalias !620
  %i.ant = load i8, ptr %i.anl, align 1, !tbaa !7, !noalias !620
  %i.anu = load i8, ptr %i.anm, align 1, !tbaa !7, !noalias !620
  %i.anv = load i8, ptr %i.ann, align 1, !tbaa !7, !noalias !620
  %i.anw = load i8, ptr %i.ano, align 1, !tbaa !7, !noalias !620
  %i.anx = insertelement <8 x i8> poison, i8 %i.anp, i64 0
  %i.any = insertelement <8 x i8> %i.anx, i8 %i.anq, i64 1
  %i.anz = insertelement <8 x i8> %i.any, i8 %i.anr, i64 2
  %i.aoa = insertelement <8 x i8> %i.anz, i8 %i.ans, i64 3
  %i.aob = insertelement <8 x i8> %i.aoa, i8 %i.ant, i64 4
  %i.aoc = insertelement <8 x i8> %i.aob, i8 %i.anu, i64 5
  %i.aod = insertelement <8 x i8> %i.aoc, i8 %i.anv, i64 6
  %i.aoe = insertelement <8 x i8> %i.aod, i8 %i.anw, i64 7 ; 2 uses
  %i.aof = icmp ult <8 x i8> %i.aoe, %broadcast.splat84
  %i.aog = icmp ugt <8 x i8> %i.aoe, %broadcast.splat86
  %i.aoh = or <8 x i1> %i.aof, %i.aog
  %i.aoi = or <8 x i1> %i.ang, %i.aoh
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ahq, i64 6
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ahr, i64 14
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aht, i64 22
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ahv, i64 30
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ahx, i64 38
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ahz, i64 46
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aib, i64 54
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aid, i64 62
  %i.aor = load i8, ptr %i.aoj, align 1, !tbaa !7, !noalias !620
  %i.aos = load i8, ptr %i.aok, align 1, !tbaa !7, !noalias !620
  %i.aot = load i8, ptr %i.aol, align 1, !tbaa !7, !noalias !620
  %i.aou = load i8, ptr %i.aom, align 1, !tbaa !7, !noalias !620
  %i.aov = load i8, ptr %i.aon, align 1, !tbaa !7, !noalias !620
  %i.aow = load i8, ptr %i.aoo, align 1, !tbaa !7, !noalias !620
  %i.aox = load i8, ptr %i.aop, align 1, !tbaa !7, !noalias !620
  %i.aoy = load i8, ptr %i.aoq, align 1, !tbaa !7, !noalias !620
  %i.aoz = insertelement <8 x i8> poison, i8 %i.aor, i64 0
  %i.apa = insertelement <8 x i8> %i.aoz, i8 %i.aos, i64 1
  %i.apb = insertelement <8 x i8> %i.apa, i8 %i.aot, i64 2
  %i.apc = insertelement <8 x i8> %i.apb, i8 %i.aou, i64 3
  %i.apd = insertelement <8 x i8> %i.apc, i8 %i.aov, i64 4
  %i.ape = insertelement <8 x i8> %i.apd, i8 %i.aow, i64 5
  %i.apf = insertelement <8 x i8> %i.ape, i8 %i.aox, i64 6
  %i.apg = insertelement <8 x i8> %i.apf, i8 %i.aoy, i64 7 ; 2 uses
  %i.aph = icmp ult <8 x i8> %i.apg, %broadcast.splat84
  %i.api = icmp ugt <8 x i8> %i.apg, %broadcast.splat86
  %i.apj = or <8 x i1> %i.aph, %i.api
  %i.apk = or <8 x i1> %i.aoi, %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ahq, i64 7
  %i.apm = getelementptr inbounds nuw i8, ptr %i.ahr, i64 15
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aht, i64 23
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ahv, i64 31
  %i.app = getelementptr inbounds nuw i8, ptr %i.ahx, i64 39
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ahz, i64 47
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aib, i64 55
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aid, i64 63
  %i.apt = load i8, ptr %i.apl, align 1, !tbaa !7, !noalias !620
  %i.apu = load i8, ptr %i.apm, align 1, !tbaa !7, !noalias !620
  %i.apv = load i8, ptr %i.apn, align 1, !tbaa !7, !noalias !620
  %i.apw = load i8, ptr %i.apo, align 1, !tbaa !7, !noalias !620
  %i.apx = load i8, ptr %i.app, align 1, !tbaa !7, !noalias !620
  %i.apy = load i8, ptr %i.apq, align 1, !tbaa !7, !noalias !620
  %i.apz = load i8, ptr %i.apr, align 1, !tbaa !7, !noalias !620
  %i.aqa = load i8, ptr %i.aps, align 1, !tbaa !7, !noalias !620
  %i.aqb = insertelement <8 x i8> poison, i8 %i.apt, i64 0
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 1
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 2
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 3
  %i.aqf = insertelement <8 x i8> %i.aqe, i8 %i.apx, i64 4
  %i.aqg = insertelement <8 x i8> %i.aqf, i8 %i.apy, i64 5
  %i.aqh = insertelement <8 x i8> %i.aqg, i8 %i.apz, i64 6
  %i.aqi = insertelement <8 x i8> %i.aqh, i8 %i.aqa, i64 7 ; 2 uses
  %i.aqj = icmp ult <8 x i8> %i.aqi, %broadcast.splat84
  %i.aqk = icmp ugt <8 x i8> %i.aqi, %broadcast.splat86
  %i.aql = or <8 x i1> %i.aqj, %i.aqk
  %i.aqm = or <8 x i1> %i.apk, %i.aql             ; 2 uses
  %index.next90 = add nuw i64 %index88, 8         ; 2 uses
  %i.aqn = icmp eq i64 %index.next90, %n.vec82
  br i1 %i.aqn, label %vec.epilog.middle.block91, label %vec.epilog.vector.body87, !llvm.loop !627

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body87
  %i.aqo = bitcast <8 x i1> %i.aqm to i8
  %i.aqp = icmp ne i8 %i.aqo, 0                   ; 2 uses
  %cmp.n92 = icmp eq i64 %n.vec82, %smax189.i
  br i1 %cmp.n92, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block91
  %.081158.i.ph = phi i64 [ 0, %iter.check77 ], [ %n.vec62, %vec.epilog.iter.check79 ], [ %n.vec82, %vec.epilog.middle.block91 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check77 ], [ %i.ad, %vec.epilog.iter.check79 ], [ %i.ahn, %vec.epilog.middle.block91 ]
  %.085156.i.ph = phi i1 [ false, %iter.check77 ], [ %i.ahm, %vec.epilog.iter.check79 ], [ %i.aqp, %vec.epilog.middle.block91 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block91, %middle.block72
  %.lcssa36 = phi i1 [ %i.aqp, %vec.epilog.middle.block91 ], [ %i.ahm, %middle.block72 ], [ %op.rdx, %.preheader.i ]
  %i.aqq = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.aqq, %.preheader137.loopexit.i ] ; 7 uses
  %i.aqr = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.aqs = icmp slt i64 %.082.lcssa.i, %i.aqr
  br i1 %i.aqs, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.aqt = sub nsw i64 %i.aqr, %.082.lcssa.i      ; 6 uses
  %min.iters.check = icmp ult i64 %i.aqt, 8
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.aqt, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aqu = and i64 %i.aqt, 24
  %n.vec = and i64 %i.aqt, -32                    ; 4 uses
  %i.aqv = add nsw i64 %.082.lcssa.i, %n.vec
  %i.aqw = insertelement <16 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.aqx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ %i.aqw, %vector.ph ], [ %i.arg, %vector.body ]
  %vec.phi44 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.arh, %vector.body ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 %index ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %wide.load = load <16 x i8>, ptr %i.aqy, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %wide.load45 = load <16 x i8>, ptr %i.aqz, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.ara = icmp ult <16 x i8> %wide.load, %broadcast.splat
  %i.arb = icmp ult <16 x i8> %wide.load45, %broadcast.splat
  %i.arc = icmp ugt <16 x i8> %wide.load, %broadcast.splat43
  %i.ard = icmp ugt <16 x i8> %wide.load45, %broadcast.splat43
  %i.are = or <16 x i1> %i.ara, %i.arc
  %i.arf = or <16 x i1> %i.arb, %i.ard
  %i.arg = or <16 x i1> %vec.phi, %i.are          ; 2 uses
  %i.arh = or <16 x i1> %vec.phi44, %i.arf        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ari = icmp eq i64 %index.next, %n.vec
  br i1 %i.ari, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.arh, %i.arg
  %i.arj = bitcast <16 x i1> %bin.rdx to i16
  %i.ark = icmp ne i16 %i.arj, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %i.aqt, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aqu, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader, label %vec.epilog.ph, !prof !549

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ark, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %i.arl = and i64 %i.aqr, 7
  %n.vec46 = sub nsw i64 %i.aqt, %i.arl           ; 2 uses
  %i.arm = add nsw i64 %.082.lcssa.i, %n.vec46
  %i.arn = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.aro = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi52 = phi <8 x i1> [ %i.arn, %vec.epilog.ph ], [ %i.art, %vec.epilog.vector.body ]
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 %index51
  %wide.load53 = load <8 x i8>, ptr %i.arp, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.arq = icmp ult <8 x i8> %wide.load53, %broadcast.splat48
  %i.arr = icmp ugt <8 x i8> %wide.load53, %broadcast.splat50
  %i.ars = or <8 x i1> %i.arq, %i.arr
  %i.art = or <8 x i1> %vec.phi52, %i.ars         ; 2 uses
  %index.next54 = add nuw i64 %index51, 8         ; 2 uses
  %i.aru = icmp eq i64 %index.next54, %n.vec46
  br i1 %i.aru, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !629

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.arv = bitcast <8 x i1> %i.art to i8
  %i.arw = icmp ne i8 %i.arv, 0                   ; 2 uses
  %i.arx = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n55 = icmp eq i16 %i.arx, 0
  br i1 %cmp.n55, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.aqv, %vec.epilog.iter.check ], [ %i.arm, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.ark, %vec.epilog.iter.check ], [ %i.arw, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.asg, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.asf, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.ary = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.082157.i
  %i.arz = load <8 x i8>, ptr %i.ary, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.asa = icmp ult <8 x i8> %i.arz, %i.t
  %i.asb = icmp ugt <8 x i8> %i.arz, %i.v
  %i.asc = shufflevector <8 x i1> %i.asb, <8 x i1> %i.asa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.asd = bitcast <16 x i1> %i.asc to i16
  %i.ase = icmp ne i16 %i.asd, 0
  %op.rdx = or i1 %i.ase, %.085156.i              ; 2 uses
  %i.asf = add nuw nsw i64 %.082157.i, 8
  %i.asg = add nuw nsw i64 %.081158.i, 1          ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.asg, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !630

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i
  %.284162.i = phi i64 [ %i.asm, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.asl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i.preheader ]
  %i.ash = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.284162.i
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.asj = icmp ult i8 %i.asi, %.41.val
  %i.ask = icmp ugt i8 %i.asi, %.41.val1
  %spec.select128.i = or i1 %i.asj, %i.ask
  %i.asl = or i1 %.287161.i, %spec.select128.i    ; 2 uses
  %i.asm = add nuw nsw i64 %.284162.i, 1          ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.asm, %i.aqr
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i, !llvm.loop !631

bb.d:                                             ; preds = %.lr.ph176.i
  %i.asn = icmp sgt i32 %i.x, 0
  br i1 %i.asn, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.aso = icmp sgt i32 %i.y, 7
  br i1 %i.aso, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.asp = lshr i32 %i.y, 3
  %i.asq = trunc i64 %.092169.i to i3             ; 7 uses
  %i.asr = trunc i64 %.092169.i to i8
  %i.ass = and i8 %i.asr, 7
  %i.ast = add i3 %i.asq, 1
  %i.asu = zext i3 %i.ast to i8
  %i.asv = add i3 %i.asq, 2
  %i.asw = zext i3 %i.asv to i8
  %i.asx = add i3 %i.asq, 3
  %i.asy = zext i3 %i.asx to i8
  %i.asz = xor i3 %i.asq, -4
  %i.ata = zext i3 %i.asz to i8
  %i.atb = add i3 %i.asq, -3
  %i.atc = zext i3 %i.atb to i8
  %i.atd = add i3 %i.asq, -2
  %i.ate = zext i3 %i.atd to i8
  %i.atf = add i3 %i.asq, -1
  %i.atg = zext i3 %i.atf to i8
  %smax.i = zext nneg i32 %i.asp to i64           ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.ath = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx96, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.ath, %.preheader139.loopexit.i ] ; 6 uses
  %i.ati = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.atj = icmp slt i64 %.076.lcssa.i, %i.ati
  br i1 %i.atj, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.atk = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.atk, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader
  %i.atl = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076.lcssa.i
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.atn = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.ato = lshr i64 %i.atn, 3
  %i.atp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ato
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !7, !noalias !620
  %i.atr = trunc i64 %.092169.i to i8
  %i.ats = and i8 %i.atr, 7
  %i.att = lshr i8 %i.atq, %i.ats
  %i.atu = trunc i8 %i.att to i1
  %i.atv = icmp ult i8 %i.atm, %.41.val
  %i.atw = icmp ugt i8 %i.atm, %.41.val1
  %spec.select130.i.prol = or i1 %i.atv, %i.atw
  %i.atx = select i1 %i.atu, i1 %spec.select130.i.prol, i1 false
  %i.aty = or i1 %.3.lcssa.i, %i.atx              ; 2 uses
  %i.atz = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader ], [ %i.aty, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader ], [ %i.atz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.preheader ], [ %i.aty, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol ]
  %i.aua = add nsw i64 %i.ati, -1
  %i.aub = icmp eq i64 %.076.lcssa.i, %i.aua
  br i1 %i.aub, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.aww, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.awv, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx96, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.auc = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.076147.i
  %i.aud = add nsw i64 %.076147.i, %.092169.i
  %i.aue = lshr i64 %i.aud, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aue
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !7, !noalias !620
  %i.auh = or disjoint i64 %.076147.i, 1
  %i.aui = add nsw i64 %i.auh, %.092169.i
  %i.auj = lshr i64 %i.aui, 3
  %i.auk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !7, !noalias !620
  %i.aum = or disjoint i64 %.076147.i, 2
  %i.aun = add nsw i64 %i.aum, %.092169.i
  %i.auo = lshr i64 %i.aun, 3
  %i.aup = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auo
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !7, !noalias !620
  %i.aur = or disjoint i64 %.076147.i, 3
  %i.aus = add nsw i64 %i.aur, %.092169.i
  %i.aut = lshr i64 %i.aus, 3
  %i.auu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aut
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !7, !noalias !620
  %i.auw = or disjoint i64 %.076147.i, 4
  %i.aux = add nsw i64 %i.auw, %.092169.i
  %i.auy = lshr i64 %i.aux, 3
  %i.auz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !7, !noalias !620
  %i.avb = or disjoint i64 %.076147.i, 5
  %i.avc = add nsw i64 %i.avb, %.092169.i
  %i.avd = lshr i64 %i.avc, 3
  %i.ave = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avd
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !7, !noalias !620
  %i.avg = or disjoint i64 %.076147.i, 6
  %i.avh = add nsw i64 %i.avg, %.092169.i
  %i.avi = lshr i64 %i.avh, 3
  %i.avj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avi
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !7, !noalias !620
  %i.avl = or disjoint i64 %.076147.i, 7
  %i.avm = add nsw i64 %i.avl, %.092169.i
  %i.avn = lshr i64 %i.avm, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.avn
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !7, !noalias !620
  %i.avq = load <8 x i8>, ptr %i.auc, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.avr = lshr i8 %i.avp, %i.atg
  %i.avs = lshr i8 %i.avk, %i.ate
  %i.avt = lshr i8 %i.avf, %i.atc
  %i.avu = lshr i8 %i.ava, %i.ata
  %i.avv = lshr i8 %i.auv, %i.asy
  %i.avw = lshr i8 %i.auq, %i.asw
  %i.avx = lshr i8 %i.aul, %i.asu
  %i.avy = lshr i8 %i.aug, %i.ass
  %i.avz = trunc i8 %i.avr to i1
  %i.awa = trunc i8 %i.avs to i1
  %i.awb = trunc i8 %i.avt to i1
  %i.awc = trunc i8 %i.avu to i1
  %i.awd = trunc i8 %i.avv to i1
  %i.awe = trunc i8 %i.avw to i1
  %i.awf = trunc i8 %i.avx to i1
  %i.awg = trunc i8 %i.avy to i1
  %i.awh = icmp ult <8 x i8> %i.avq, %i.p
  %i.awi = icmp ugt <8 x i8> %i.avq, %i.r
  %i.awj = or <8 x i1> %i.awh, %i.awi
  %i.awk = insertelement <8 x i1> poison, i1 %i.awg, i64 0
  %i.awl = insertelement <8 x i1> %i.awk, i1 %i.awf, i64 1
  %i.awm = insertelement <8 x i1> %i.awl, i1 %i.awe, i64 2
  %i.awn = insertelement <8 x i1> %i.awm, i1 %i.awd, i64 3
  %i.awo = insertelement <8 x i1> %i.awn, i1 %i.awc, i64 4
  %i.awp = insertelement <8 x i1> %i.awo, i1 %i.awb, i64 5
  %i.awq = insertelement <8 x i1> %i.awp, i1 %i.awa, i64 6
  %i.awr = insertelement <8 x i1> %i.awq, i1 %i.avz, i64 7
  %i.aws = select <8 x i1> %i.awr, <8 x i1> %i.awj, <8 x i1> zeroinitializer
  %i.awt = bitcast <8 x i1> %i.aws to i8
  %i.awu = icmp ne i8 %i.awt, 0
  %op.rdx96 = or i1 %i.awu, %.3146.i              ; 2 uses
  %i.awv = add nuw nsw i64 %.076147.i, 8
  %i.aww = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aww, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !632

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i
  %.2151.i = phi i64 [ %i.aya, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.axz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit ]
  %i.awx = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.2151.i
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.awz = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.axa = lshr i64 %i.awz, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !7, !noalias !620
  %i.axd = trunc i64 %i.awz to i8
  %i.axe = and i8 %i.axd, 7
  %i.axf = lshr i8 %i.axc, %i.axe
  %i.axg = trunc i8 %i.axf to i1
  %i.axh = icmp ult i8 %i.awy, %.41.val
  %i.axi = icmp ugt i8 %i.awy, %.41.val1
  %spec.select130.i = or i1 %i.axh, %i.axi
  %i.axj = select i1 %i.axg, i1 %spec.select130.i, i1 false
  %i.axk = or i1 %.5150.i, %i.axj
  %i.axl = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %i.axl
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !7, !noalias !620 ; 2 uses
  %i.axo = add nsw i64 %i.axl, %.092169.i         ; 2 uses
  %i.axp = lshr i64 %i.axo, 3
  %i.axq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.axp
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !7, !noalias !620
  %i.axs = trunc i64 %i.axo to i8
  %i.axt = and i8 %i.axs, 7
  %i.axu = lshr i8 %i.axr, %i.axt
  %i.axv = trunc i8 %i.axu to i1
  %i.axw = icmp ult i8 %i.axn, %.41.val
  %i.axx = icmp ugt i8 %i.axn, %.41.val1
  %spec.select130.i.1 = or i1 %i.axw, %i.axx
  %i.axy = select i1 %i.axv, i1 %spec.select130.i.1, i1 false
  %i.axz = or i1 %i.axk, %i.axy                   ; 2 uses
  %i.aya = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.aya, %i.ati
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i, !llvm.loop !633

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.asl, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.arw, %vec.epilog.middle.block ], [ %i.ark, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i.prol.loopexit ], [ %i.axz, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.ayb = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !620
  %i.ayc = icmp sgt i64 %i.ayb, 0
  %i.ayd = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.ayc, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ayq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.aye = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ayf
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !7, !noalias !620
  %i.ayi = trunc i64 %i.aye to i8
  %i.ayj = and i8 %i.ayi, 7
  %i.ayk = lshr i8 %i.ayh, %i.ayj
  %i.ayl = trunc i8 %i.ayk to i1
  br i1 %i.ayl, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.aym = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.073167.i
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !7, !noalias !620 ; 3 uses
  %i.ayo = icmp ult i8 %i.ayn, %.41.val
  %i.ayp = icmp ugt i8 %i.ayn, %.41.val1
  %or.cond131.i = or i1 %i.ayo, %i.ayp
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef zeroext %i.ayn)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ayq = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ayq, %i.ayd
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !634

bb.g:                                             ; preds = %.lr.ph.i
  %i.ayr = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ayr, %i.ayd
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !635

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ayr, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.088173.i, i64 %.0165.i
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !7, !noalias !620 ; 3 uses
  %i.ayu = icmp ult i8 %i.ayt, %.41.val
  %i.ayv = icmp ugt i8 %i.ayt, %.41.val1
  %or.cond132.i = or i1 %i.ayu, %i.ayv
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i8 noundef zeroext %i.ayt)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ayw = sext i32 %i.y to i64
  %i.ayx = getelementptr inbounds i8, ptr %.088173.i, i64 %i.ayw
  %i.ayy = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ayz = add nsw i64 %.090172.i, %i.ayy         ; 2 uses
  %i.aza = add nsw i64 %.092169.i, %i.ayy
  %i.azb = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !620
  %i.azc = icmp slt i64 %i.ayz, %i.azb
  br i1 %i.azc, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !636

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !637
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE_clEh.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhbE_clEhb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !620
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.42.val, ptr %i.a, align 2, !tbaa !16, !noalias !640
  store i16 %.42.val1, ptr %i.b, align 2, !tbaa !16, !noalias !640
  %.not.i = icmp ne i16 %.42.val, 0
  %.not97.i = icmp ne i16 %.42.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !643
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !640 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !640
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !640 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !640
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !640
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !640
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !640
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !640
  %i.n = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat64 = shufflevector <8 x i16> %broadcast.splatinsert63, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert65 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat66 = shufflevector <8 x i16> %broadcast.splatinsert65, <8 x i16> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert83 = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat84 = shufflevector <8 x i16> %broadcast.splatinsert83, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert85 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat86 = shufflevector <8 x i16> %broadcast.splatinsert85, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %i.t = shufflevector <8 x i16> %i.s, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %i.v = shufflevector <8 x i16> %i.u, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <4 x i16> poison, i16 %.42.val, i64 0
  %broadcast.splat48 = shufflevector <4 x i16> %broadcast.splatinsert47, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i16> poison, i16 %.42.val1, i64 0
  %broadcast.splat50 = shufflevector <4 x i16> %broadcast.splatinsert49, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.ajn, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 35 uses
  %.090172.i = phi i64 [ %i.ajp, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.ajq, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !640 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.w to i16 ; 7 uses
  %i.x = ashr i32 %i.w, 16                        ; 6 uses
  %sext.i = shl i32 %i.w, 16
  %i.y = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.aa = icmp sgt i32 %i.x, 7
  br i1 %i.aa, label %iter.check77, label %.preheader137.i

iter.check77:                                     ; preds = %.preheader138.i
  %i.ab = lshr i32 %i.x, 3
  %smax189.i = zext nneg i32 %i.ab to i64         ; 7 uses
  %min.iters.check58 = icmp ult i32 %i.x, 64
  br i1 %min.iters.check58, label %.preheader.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check77
  %min.iters.check60 = icmp ult i32 %i.x, 128
  br i1 %min.iters.check60, label %vec.epilog.ph81, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ac = and i64 %smax189.i, 8
  %n.vec62 = and i64 %smax189.i, 268435440        ; 5 uses
  %i.ad = shl nuw nsw i64 %n.vec62, 3
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph61
  %index68 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body67 ] ; 2 uses
  %vec.phi69 = phi <8 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.ry, %vector.body67 ]
  %vec.phi70 = phi <8 x i1> [ zeroinitializer, %vector.ph61 ], [ %i.rz, %vector.body67 ]
  %i.ae = shl nuw i64 %index68, 3                 ; 16 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.ae ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.bk = load i16, ptr %i.af, align 2, !tbaa !16, !noalias !640
  %i.bl = load i16, ptr %i.ah, align 2, !tbaa !16, !noalias !640
  %i.bm = load i16, ptr %i.aj, align 2, !tbaa !16, !noalias !640
  %i.bn = load i16, ptr %i.al, align 2, !tbaa !16, !noalias !640
  %i.bo = load i16, ptr %i.an, align 2, !tbaa !16, !noalias !640
  %i.bp = load i16, ptr %i.ap, align 2, !tbaa !16, !noalias !640
  %i.bq = load i16, ptr %i.ar, align 2, !tbaa !16, !noalias !640
  %i.br = load i16, ptr %i.at, align 2, !tbaa !16, !noalias !640
  %i.bs = insertelement <8 x i16> poison, i16 %i.bk, i64 0
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 1
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 2
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 3
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 4
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 5
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 6
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 7 ; 2 uses
  %i.ca = load i16, ptr %i.av, align 2, !tbaa !16, !noalias !640
  %i.cb = load i16, ptr %i.ax, align 2, !tbaa !16, !noalias !640
  %i.cc = load i16, ptr %i.az, align 2, !tbaa !16, !noalias !640
  %i.cd = load i16, ptr %i.bb, align 2, !tbaa !16, !noalias !640
  %i.ce = load i16, ptr %i.bd, align 2, !tbaa !16, !noalias !640
  %i.cf = load i16, ptr %i.bf, align 2, !tbaa !16, !noalias !640
  %i.cg = load i16, ptr %i.bh, align 2, !tbaa !16, !noalias !640
  %i.ch = load i16, ptr %i.bj, align 2, !tbaa !16, !noalias !640
  %i.ci = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 1
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 2
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 3
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 4
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 5
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 6
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 7 ; 2 uses
  %i.cq = icmp ult <8 x i16> %i.bz, %broadcast.splat64
  %i.cr = icmp ult <8 x i16> %i.cp, %broadcast.splat64
  %i.cs = icmp ugt <8 x i16> %i.bz, %broadcast.splat66
  %i.ct = icmp ugt <8 x i16> %i.cp, %broadcast.splat66
  %i.cu = or <8 x i1> %i.cq, %i.cs
  %i.cv = or <8 x i1> %i.cr, %i.ct
  %i.cw = or <8 x i1> %vec.phi69, %i.cu
  %i.cx = or <8 x i1> %vec.phi70, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 34
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 66
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ao, i64 82
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 98
  %i.df = getelementptr inbounds nuw i8, ptr %i.as, i64 114
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 130
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 146
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 162
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ba, i64 178
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bc, i64 194
  %i.dl = getelementptr inbounds nuw i8, ptr %i.be, i64 210
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 226
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bi, i64 242
  %i.do = load i16, ptr %i.cy, align 2, !tbaa !16, !noalias !640
  %i.dp = load i16, ptr %i.cz, align 2, !tbaa !16, !noalias !640
  %i.dq = load i16, ptr %i.da, align 2, !tbaa !16, !noalias !640
  %i.dr = load i16, ptr %i.db, align 2, !tbaa !16, !noalias !640
  %i.ds = load i16, ptr %i.dc, align 2, !tbaa !16, !noalias !640
  %i.dt = load i16, ptr %i.dd, align 2, !tbaa !16, !noalias !640
  %i.du = load i16, ptr %i.de, align 2, !tbaa !16, !noalias !640
  %i.dv = load i16, ptr %i.df, align 2, !tbaa !16, !noalias !640
  %i.dw = insertelement <8 x i16> poison, i16 %i.do, i64 0
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 1
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 2
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 3
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 4
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 5
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 6
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 7 ; 2 uses
  %i.ee = load i16, ptr %i.dg, align 2, !tbaa !16, !noalias !640
  %i.ef = load i16, ptr %i.dh, align 2, !tbaa !16, !noalias !640
  %i.eg = load i16, ptr %i.di, align 2, !tbaa !16, !noalias !640
  %i.eh = load i16, ptr %i.dj, align 2, !tbaa !16, !noalias !640
  %i.ei = load i16, ptr %i.dk, align 2, !tbaa !16, !noalias !640
  %i.ej = load i16, ptr %i.dl, align 2, !tbaa !16, !noalias !640
  %i.ek = load i16, ptr %i.dm, align 2, !tbaa !16, !noalias !640
  %i.el = load i16, ptr %i.dn, align 2, !tbaa !16, !noalias !640
  %i.em = insertelement <8 x i16> poison, i16 %i.ee, i64 0
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ef, i64 1
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 2
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 3
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 4
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 5
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 6
  %i.et = insertelement <8 x i16> %i.es, i16 %i.el, i64 7 ; 2 uses
  %i.eu = icmp ult <8 x i16> %i.ed, %broadcast.splat64
  %i.ev = icmp ult <8 x i16> %i.et, %broadcast.splat64
  %i.ew = icmp ugt <8 x i16> %i.ed, %broadcast.splat66
  %i.ex = icmp ugt <8 x i16> %i.et, %broadcast.splat66
  %i.ey = or <8 x i1> %i.eu, %i.ew
  %i.ez = or <8 x i1> %i.ev, %i.ex
  %i.fa = or <8 x i1> %i.cw, %i.ey
  %i.fb = or <8 x i1> %i.cx, %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.fg = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ao, i64 84
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aq, i64 100
  %i.fj = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %i.fk = getelementptr inbounds nuw i8, ptr %i.au, i64 132
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 148
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ay, i64 164
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 180
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bc, i64 196
  %i.fp = getelementptr inbounds nuw i8, ptr %i.be, i64 212
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bg, i64 228
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bi, i64 244
  %i.fs = load i16, ptr %i.fc, align 2, !tbaa !16, !noalias !640
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !16, !noalias !640
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !16, !noalias !640
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !16, !noalias !640
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !16, !noalias !640
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !16, !noalias !640
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !16, !noalias !640
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !16, !noalias !640
  %i.ga = insertelement <8 x i16> poison, i16 %i.fs, i64 0
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 1
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 2
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 3
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 4
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 5
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 6
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 7 ; 2 uses
  %i.gi = load i16, ptr %i.fk, align 2, !tbaa !16, !noalias !640
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !16, !noalias !640
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !16, !noalias !640
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !16, !noalias !640
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !16, !noalias !640
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !16, !noalias !640
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !16, !noalias !640
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !16, !noalias !640
  %i.gq = insertelement <8 x i16> poison, i16 %i.gi, i64 0
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 1
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 2
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 3
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 4
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 5
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 6
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 7 ; 2 uses
  %i.gy = icmp ult <8 x i16> %i.gh, %broadcast.splat64
  %i.gz = icmp ult <8 x i16> %i.gx, %broadcast.splat64
  %i.ha = icmp ugt <8 x i16> %i.gh, %broadcast.splat66
  %i.hb = icmp ugt <8 x i16> %i.gx, %broadcast.splat66
  %i.hc = or <8 x i1> %i.gy, %i.ha
  %i.hd = or <8 x i1> %i.gz, %i.hb
  %i.he = or <8 x i1> %i.fa, %i.hc
  %i.hf = or <8 x i1> %i.fb, %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ag, i64 22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ai, i64 38
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 54
  %i.hk = getelementptr inbounds nuw i8, ptr %i.am, i64 70
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ao, i64 86
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aq, i64 102
  %i.hn = getelementptr inbounds nuw i8, ptr %i.as, i64 118
  %i.ho = getelementptr inbounds nuw i8, ptr %i.au, i64 134
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 150
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ay, i64 166
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ba, i64 182
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bc, i64 198
  %i.ht = getelementptr inbounds nuw i8, ptr %i.be, i64 214
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bg, i64 230
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bi, i64 246
  %i.hw = load i16, ptr %i.hg, align 2, !tbaa !16, !noalias !640
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_124CheckIntegersInRangeImplINS_10UInt16TypeEEENS_6StatusERKNS_9ArraySpanERKNS_6ScalarESA_:bb.a
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 3
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 4
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 5
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 6
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.kx, i64 7 ; 2 uses
  %i.lg = icmp ult <8 x i16> %i.kp, %broadcast.splat64
  %i.lh = icmp ult <8 x i16> %i.lf, %broadcast.splat64
  %i.li = icmp ugt <8 x i16> %i.kp, %broadcast.splat66
  %i.lj = icmp ugt <8 x i16> %i.lf, %broadcast.splat66
  %i.lk = or <8 x i1> %i.lg, %i.li
  %i.ll = or <8 x i1> %i.lh, %i.lj
  %i.lm = or <8 x i1> %i.ji, %i.lk
  %i.ln = or <8 x i1> %i.jj, %i.ll
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ag, i64 26
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ai, i64 42
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 58
  %i.ls = getelementptr inbounds nuw i8, ptr %i.am, i64 74
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ao, i64 90
  %i.lu = getelementptr inbounds nuw i8, ptr %i.aq, i64 106
  %i.lv = getelementptr inbounds nuw i8, ptr %i.as, i64 122
  %i.lw = getelementptr inbounds nuw i8, ptr %i.au, i64 138
  %i.lx = getelementptr inbounds nuw i8, ptr %i.aw, i64 154
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ay, i64 170
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ba, i64 186
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bc, i64 202
  %i.mb = getelementptr inbounds nuw i8, ptr %i.be, i64 218
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bg, i64 234
  %i.md = getelementptr inbounds nuw i8, ptr %i.bi, i64 250
  %i.me = load i16, ptr %i.lo, align 2, !tbaa !16, !noalias !640
  %i.mf = load i16, ptr %i.lp, align 2, !tbaa !16, !noalias !640
  %i.mg = load i16, ptr %i.lq, align 2, !tbaa !16, !noalias !640
  %i.mh = load i16, ptr %i.lr, align 2, !tbaa !16, !noalias !640
  %i.mi = load i16, ptr %i.ls, align 2, !tbaa !16, !noalias !640
  %i.mj = load i16, ptr %i.lt, align 2, !tbaa !16, !noalias !640
  %i.mk = load i16, ptr %i.lu, align 2, !tbaa !16, !noalias !640
  %i.ml = load i16, ptr %i.lv, align 2, !tbaa !16, !noalias !640
  %i.mm = insertelement <8 x i16> poison, i16 %i.me, i64 0
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 1
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 2
  %i.mp = insertelement <8 x i16> %i.mo, i16 %i.mh, i64 3
  %i.mq = insertelement <8 x i16> %i.mp, i16 %i.mi, i64 4
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 5
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 6
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 7 ; 2 uses
  %i.mu = load i16, ptr %i.lw, align 2, !tbaa !16, !noalias !640
  %i.mv = load i16, ptr %i.lx, align 2, !tbaa !16, !noalias !640
  %i.mw = load i16, ptr %i.ly, align 2, !tbaa !16, !noalias !640
  %i.mx = load i16, ptr %i.lz, align 2, !tbaa !16, !noalias !640
  %i.my = load i16, ptr %i.ma, align 2, !tbaa !16, !noalias !640
  %i.mz = load i16, ptr %i.mb, align 2, !tbaa !16, !noalias !640
  %i.na = load i16, ptr %i.mc, align 2, !tbaa !16, !noalias !640
  %i.nb = load i16, ptr %i.md, align 2, !tbaa !16, !noalias !640
  %i.nc = insertelement <8 x i16> poison, i16 %i.mu, i64 0
  %i.nd = insertelement <8 x i16> %i.nc, i16 %i.mv, i64 1
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 2
  %i.nf = insertelement <8 x i16> %i.ne, i16 %i.mx, i64 3
  %i.ng = insertelement <8 x i16> %i.nf, i16 %i.my, i64 4
  %i.nh = insertelement <8 x i16> %i.ng, i16 %i.mz, i64 5
  %i.ni = insertelement <8 x i16> %i.nh, i16 %i.na, i64 6
  %i.nj = insertelement <8 x i16> %i.ni, i16 %i.nb, i64 7 ; 2 uses
  %i.nk = icmp ult <8 x i16> %i.mt, %broadcast.splat64
  %i.nl = icmp ult <8 x i16> %i.nj, %broadcast.splat64
  %i.nm = icmp ugt <8 x i16> %i.mt, %broadcast.splat66
  %i.nn = icmp ugt <8 x i16> %i.nj, %broadcast.splat66
  %i.no = or <8 x i1> %i.nk, %i.nm
  %i.np = or <8 x i1> %i.nl, %i.nn
  %i.nq = or <8 x i1> %i.lm, %i.no
  %i.nr = or <8 x i1> %i.ln, %i.np
  %i.ns = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.nw = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ao, i64 92
  %i.ny = getelementptr inbounds nuw i8, ptr %i.aq, i64 108
  %i.nz = getelementptr inbounds nuw i8, ptr %i.as, i64 124
  %i.oa = getelementptr inbounds nuw i8, ptr %i.au, i64 140
  %i.ob = getelementptr inbounds nuw i8, ptr %i.aw, i64 156
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ay, i64 172
  %i.od = getelementptr inbounds nuw i8, ptr %i.ba, i64 188
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bc, i64 204
  %i.of = getelementptr inbounds nuw i8, ptr %i.be, i64 220
  %i.og = getelementptr inbounds nuw i8, ptr %i.bg, i64 236
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bi, i64 252
  %i.oi = load i16, ptr %i.ns, align 2, !tbaa !16, !noalias !640
  %i.oj = load i16, ptr %i.nt, align 2, !tbaa !16, !noalias !640
  %i.ok = load i16, ptr %i.nu, align 2, !tbaa !16, !noalias !640
  %i.ol = load i16, ptr %i.nv, align 2, !tbaa !16, !noalias !640
  %i.om = load i16, ptr %i.nw, align 2, !tbaa !16, !noalias !640
  %i.on = load i16, ptr %i.nx, align 2, !tbaa !16, !noalias !640
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !16, !noalias !640
  %i.op = load i16, ptr %i.nz, align 2, !tbaa !16, !noalias !640
  %i.oq = insertelement <8 x i16> poison, i16 %i.oi, i64 0
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 1
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 2
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 3
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 4
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 5
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 6
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 7 ; 2 uses
  %i.oy = load i16, ptr %i.oa, align 2, !tbaa !16, !noalias !640
  %i.oz = load i16, ptr %i.ob, align 2, !tbaa !16, !noalias !640
  %i.pa = load i16, ptr %i.oc, align 2, !tbaa !16, !noalias !640
  %i.pb = load i16, ptr %i.od, align 2, !tbaa !16, !noalias !640
  %i.pc = load i16, ptr %i.oe, align 2, !tbaa !16, !noalias !640
  %i.pd = load i16, ptr %i.of, align 2, !tbaa !16, !noalias !640
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !16, !noalias !640
  %i.pf = load i16, ptr %i.oh, align 2, !tbaa !16, !noalias !640
  %i.pg = insertelement <8 x i16> poison, i16 %i.oy, i64 0
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 1
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 2
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 3
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 4
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 5
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 6
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 7 ; 2 uses
  %i.po = icmp ult <8 x i16> %i.ox, %broadcast.splat64
  %i.pp = icmp ult <8 x i16> %i.pn, %broadcast.splat64
  %i.pq = icmp ugt <8 x i16> %i.ox, %broadcast.splat66
  %i.pr = icmp ugt <8 x i16> %i.pn, %broadcast.splat66
  %i.ps = or <8 x i1> %i.po, %i.pq
  %i.pt = or <8 x i1> %i.pp, %i.pr
  %i.pu = or <8 x i1> %i.nq, %i.ps
  %i.pv = or <8 x i1> %i.nr, %i.pt
  %i.pw = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.px = getelementptr inbounds nuw i8, ptr %i.ag, i64 30
  %i.py = getelementptr inbounds nuw i8, ptr %i.ai, i64 46
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ak, i64 62
  %i.qa = getelementptr inbounds nuw i8, ptr %i.am, i64 78
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ao, i64 94
  %i.qc = getelementptr inbounds nuw i8, ptr %i.aq, i64 110
  %i.qd = getelementptr inbounds nuw i8, ptr %i.as, i64 126
  %i.qe = getelementptr inbounds nuw i8, ptr %i.au, i64 142
  %i.qf = getelementptr inbounds nuw i8, ptr %i.aw, i64 158
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ay, i64 174
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ba, i64 190
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bc, i64 206
  %i.qj = getelementptr inbounds nuw i8, ptr %i.be, i64 222
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bg, i64 238
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bi, i64 254
  %i.qm = load i16, ptr %i.pw, align 2, !tbaa !16, !noalias !640
  %i.qn = load i16, ptr %i.px, align 2, !tbaa !16, !noalias !640
  %i.qo = load i16, ptr %i.py, align 2, !tbaa !16, !noalias !640
  %i.qp = load i16, ptr %i.pz, align 2, !tbaa !16, !noalias !640
  %i.qq = load i16, ptr %i.qa, align 2, !tbaa !16, !noalias !640
  %i.qr = load i16, ptr %i.qb, align 2, !tbaa !16, !noalias !640
  %i.qs = load i16, ptr %i.qc, align 2, !tbaa !16, !noalias !640
  %i.qt = load i16, ptr %i.qd, align 2, !tbaa !16, !noalias !640
  %i.qu = insertelement <8 x i16> poison, i16 %i.qm, i64 0
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 1
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 2
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 3
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 4
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 5
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 6
  %i.rb = insertelement <8 x i16> %i.ra, i16 %i.qt, i64 7 ; 2 uses
  %i.rc = load i16, ptr %i.qe, align 2, !tbaa !16, !noalias !640
  %i.rd = load i16, ptr %i.qf, align 2, !tbaa !16, !noalias !640
  %i.re = load i16, ptr %i.qg, align 2, !tbaa !16, !noalias !640
  %i.rf = load i16, ptr %i.qh, align 2, !tbaa !16, !noalias !640
  %i.rg = load i16, ptr %i.qi, align 2, !tbaa !16, !noalias !640
  %i.rh = load i16, ptr %i.qj, align 2, !tbaa !16, !noalias !640
  %i.ri = load i16, ptr %i.qk, align 2, !tbaa !16, !noalias !640
  %i.rj = load i16, ptr %i.ql, align 2, !tbaa !16, !noalias !640
  %i.rk = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 1
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 2
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 3
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 4
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 5
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.ri, i64 6
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.rj, i64 7 ; 2 uses
  %i.rs = icmp ult <8 x i16> %i.rb, %broadcast.splat64
  %i.rt = icmp ult <8 x i16> %i.rr, %broadcast.splat64
  %i.ru = icmp ugt <8 x i16> %i.rb, %broadcast.splat66
  %i.rv = icmp ugt <8 x i16> %i.rr, %broadcast.splat66
  %i.rw = or <8 x i1> %i.rs, %i.ru
  %i.rx = or <8 x i1> %i.rt, %i.rv
  %i.ry = or <8 x i1> %i.pu, %i.rw                ; 2 uses
  %i.rz = or <8 x i1> %i.pv, %i.rx                ; 2 uses
  %index.next71 = add nuw i64 %index68, 16        ; 2 uses
  %i.sa = icmp eq i64 %index.next71, %n.vec62
  br i1 %i.sa, label %middle.block72, label %vector.body67, !llvm.loop !646

middle.block72:                                   ; preds = %vector.body67
  %bin.rdx73 = or <8 x i1> %i.rz, %i.ry
  %i.sb = bitcast <8 x i1> %bin.rdx73 to i8
  %i.sc = icmp ne i8 %i.sb, 0                     ; 3 uses
  %cmp.n74 = icmp eq i64 %n.vec62, %smax189.i
  br i1 %cmp.n74, label %.preheader137.loopexit.i, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block72
  %min.epilog.iters.check80.not.not = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check80.not.not, label %.preheader.i.preheader, label %vec.epilog.ph81, !prof !647

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec62, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %bc.merge.rdx76 = phi i1 [ %i.sc, %vec.epilog.iter.check79 ], [ false, %vector.main.loop.iter.check59 ]
  %n.vec82 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.sd = shl nuw nsw i64 %n.vec82, 3
  %i.se = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx76, i64 0
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph81
  %index88 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next90, %vec.epilog.vector.body87 ] ; 2 uses
  %vec.phi89 = phi <8 x i1> [ %i.se, %vec.epilog.ph81 ], [ %i.abc, %vec.epilog.vector.body87 ]
  %i.sf = shl nuw i64 %index88, 3                 ; 8 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 48
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 64
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 80
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 96
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.sf ; 8 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 112
  %i.sv = load i16, ptr %i.sg, align 2, !tbaa !16, !noalias !640
  %i.sw = load i16, ptr %i.si, align 2, !tbaa !16, !noalias !640
  %i.sx = load i16, ptr %i.sk, align 2, !tbaa !16, !noalias !640
  %i.sy = load i16, ptr %i.sm, align 2, !tbaa !16, !noalias !640
  %i.sz = load i16, ptr %i.so, align 2, !tbaa !16, !noalias !640
  %i.ta = load i16, ptr %i.sq, align 2, !tbaa !16, !noalias !640
  %i.tb = load i16, ptr %i.ss, align 2, !tbaa !16, !noalias !640
  %i.tc = load i16, ptr %i.su, align 2, !tbaa !16, !noalias !640
  %i.td = insertelement <8 x i16> poison, i16 %i.sv, i64 0
  %i.te = insertelement <8 x i16> %i.td, i16 %i.sw, i64 1
  %i.tf = insertelement <8 x i16> %i.te, i16 %i.sx, i64 2
  %i.tg = insertelement <8 x i16> %i.tf, i16 %i.sy, i64 3
  %i.th = insertelement <8 x i16> %i.tg, i16 %i.sz, i64 4
  %i.ti = insertelement <8 x i16> %i.th, i16 %i.ta, i64 5
  %i.tj = insertelement <8 x i16> %i.ti, i16 %i.tb, i64 6
  %i.tk = insertelement <8 x i16> %i.tj, i16 %i.tc, i64 7 ; 2 uses
  %i.tl = icmp ult <8 x i16> %i.tk, %broadcast.splat84
  %i.tm = icmp ugt <8 x i16> %i.tk, %broadcast.splat86
  %i.tn = or <8 x i1> %i.tl, %i.tm
  %i.to = or <8 x i1> %vec.phi89, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sg, i64 2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sh, i64 18
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sj, i64 34
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sl, i64 50
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sn, i64 66
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sp, i64 82
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sr, i64 98
  %i.tw = getelementptr inbounds nuw i8, ptr %i.st, i64 114
  %i.tx = load i16, ptr %i.tp, align 2, !tbaa !16, !noalias !640
  %i.ty = load i16, ptr %i.tq, align 2, !tbaa !16, !noalias !640
  %i.tz = load i16, ptr %i.tr, align 2, !tbaa !16, !noalias !640
  %i.ua = load i16, ptr %i.ts, align 2, !tbaa !16, !noalias !640
  %i.ub = load i16, ptr %i.tt, align 2, !tbaa !16, !noalias !640
  %i.uc = load i16, ptr %i.tu, align 2, !tbaa !16, !noalias !640
  %i.ud = load i16, ptr %i.tv, align 2, !tbaa !16, !noalias !640
  %i.ue = load i16, ptr %i.tw, align 2, !tbaa !16, !noalias !640
  %i.uf = insertelement <8 x i16> poison, i16 %i.tx, i64 0
  %i.ug = insertelement <8 x i16> %i.uf, i16 %i.ty, i64 1
  %i.uh = insertelement <8 x i16> %i.ug, i16 %i.tz, i64 2
  %i.ui = insertelement <8 x i16> %i.uh, i16 %i.ua, i64 3
  %i.uj = insertelement <8 x i16> %i.ui, i16 %i.ub, i64 4
  %i.uk = insertelement <8 x i16> %i.uj, i16 %i.uc, i64 5
  %i.ul = insertelement <8 x i16> %i.uk, i16 %i.ud, i64 6
  %i.um = insertelement <8 x i16> %i.ul, i16 %i.ue, i64 7 ; 2 uses
  %i.un = icmp ult <8 x i16> %i.um, %broadcast.splat84
  %i.uo = icmp ugt <8 x i16> %i.um, %broadcast.splat86
  %i.up = or <8 x i1> %i.un, %i.uo
  %i.uq = or <8 x i1> %i.to, %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %i.sh, i64 20
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sj, i64 36
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sl, i64 52
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sn, i64 68
  %i.uw = getelementptr inbounds nuw i8, ptr %i.sp, i64 84
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sr, i64 100
  %i.uy = getelementptr inbounds nuw i8, ptr %i.st, i64 116
  %i.uz = load i16, ptr %i.ur, align 2, !tbaa !16, !noalias !640
  %i.va = load i16, ptr %i.us, align 2, !tbaa !16, !noalias !640
  %i.vb = load i16, ptr %i.ut, align 2, !tbaa !16, !noalias !640
  %i.vc = load i16, ptr %i.uu, align 2, !tbaa !16, !noalias !640
  %i.vd = load i16, ptr %i.uv, align 2, !tbaa !16, !noalias !640
  %i.ve = load i16, ptr %i.uw, align 2, !tbaa !16, !noalias !640
  %i.vf = load i16, ptr %i.ux, align 2, !tbaa !16, !noalias !640
  %i.vg = load i16, ptr %i.uy, align 2, !tbaa !16, !noalias !640
  %i.vh = insertelement <8 x i16> poison, i16 %i.uz, i64 0
  %i.vi = insertelement <8 x i16> %i.vh, i16 %i.va, i64 1
  %i.vj = insertelement <8 x i16> %i.vi, i16 %i.vb, i64 2
  %i.vk = insertelement <8 x i16> %i.vj, i16 %i.vc, i64 3
  %i.vl = insertelement <8 x i16> %i.vk, i16 %i.vd, i64 4
  %i.vm = insertelement <8 x i16> %i.vl, i16 %i.ve, i64 5
  %i.vn = insertelement <8 x i16> %i.vm, i16 %i.vf, i64 6
  %i.vo = insertelement <8 x i16> %i.vn, i16 %i.vg, i64 7 ; 2 uses
  %i.vp = icmp ult <8 x i16> %i.vo, %broadcast.splat84
  %i.vq = icmp ugt <8 x i16> %i.vo, %broadcast.splat86
  %i.vr = or <8 x i1> %i.vp, %i.vq
  %i.vs = or <8 x i1> %i.uq, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.sg, i64 6
  %i.vu = getelementptr inbounds nuw i8, ptr %i.sh, i64 22
  %i.vv = getelementptr inbounds nuw i8, ptr %i.sj, i64 38
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sl, i64 54
  %i.vx = getelementptr inbounds nuw i8, ptr %i.sn, i64 70
  %i.vy = getelementptr inbounds nuw i8, ptr %i.sp, i64 86
  %i.vz = getelementptr inbounds nuw i8, ptr %i.sr, i64 102
  %i.wa = getelementptr inbounds nuw i8, ptr %i.st, i64 118
  %i.wb = load i16, ptr %i.vt, align 2, !tbaa !16, !noalias !640
  %i.wc = load i16, ptr %i.vu, align 2, !tbaa !16, !noalias !640
  %i.wd = load i16, ptr %i.vv, align 2, !tbaa !16, !noalias !640
  %i.we = load i16, ptr %i.vw, align 2, !tbaa !16, !noalias !640
  %i.wf = load i16, ptr %i.vx, align 2, !tbaa !16, !noalias !640
  %i.wg = load i16, ptr %i.vy, align 2, !tbaa !16, !noalias !640
  %i.wh = load i16, ptr %i.vz, align 2, !tbaa !16, !noalias !640
  %i.wi = load i16, ptr %i.wa, align 2, !tbaa !16, !noalias !640
  %i.wj = insertelement <8 x i16> poison, i16 %i.wb, i64 0
  %i.wk = insertelement <8 x i16> %i.wj, i16 %i.wc, i64 1
  %i.wl = insertelement <8 x i16> %i.wk, i16 %i.wd, i64 2
  %i.wm = insertelement <8 x i16> %i.wl, i16 %i.we, i64 3
  %i.wn = insertelement <8 x i16> %i.wm, i16 %i.wf, i64 4
  %i.wo = insertelement <8 x i16> %i.wn, i16 %i.wg, i64 5
  %i.wp = insertelement <8 x i16> %i.wo, i16 %i.wh, i64 6
  %i.wq = insertelement <8 x i16> %i.wp, i16 %i.wi, i64 7 ; 2 uses
  %i.wr = icmp ult <8 x i16> %i.wq, %broadcast.splat84
  %i.ws = icmp ugt <8 x i16> %i.wq, %broadcast.splat86
  %i.wt = or <8 x i1> %i.wr, %i.ws
  %i.wu = or <8 x i1> %i.vs, %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.wx = getelementptr inbounds nuw i8, ptr %i.sj, i64 40
  %i.wy = getelementptr inbounds nuw i8, ptr %i.sl, i64 56
  %i.wz = getelementptr inbounds nuw i8, ptr %i.sn, i64 72
  %i.xa = getelementptr inbounds nuw i8, ptr %i.sp, i64 88
  %i.xb = getelementptr inbounds nuw i8, ptr %i.sr, i64 104
  %i.xc = getelementptr inbounds nuw i8, ptr %i.st, i64 120
  %i.xd = load i16, ptr %i.wv, align 2, !tbaa !16, !noalias !640
  %i.xe = load i16, ptr %i.ww, align 2, !tbaa !16, !noalias !640
  %i.xf = load i16, ptr %i.wx, align 2, !tbaa !16, !noalias !640
  %i.xg = load i16, ptr %i.wy, align 2, !tbaa !16, !noalias !640
  %i.xh = load i16, ptr %i.wz, align 2, !tbaa !16, !noalias !640
  %i.xi = load i16, ptr %i.xa, align 2, !tbaa !16, !noalias !640
  %i.xj = load i16, ptr %i.xb, align 2, !tbaa !16, !noalias !640
  %i.xk = load i16, ptr %i.xc, align 2, !tbaa !16, !noalias !640
  %i.xl = insertelement <8 x i16> poison, i16 %i.xd, i64 0
  %i.xm = insertelement <8 x i16> %i.xl, i16 %i.xe, i64 1
  %i.xn = insertelement <8 x i16> %i.xm, i16 %i.xf, i64 2
  %i.xo = insertelement <8 x i16> %i.xn, i16 %i.xg, i64 3
  %i.xp = insertelement <8 x i16> %i.xo, i16 %i.xh, i64 4
  %i.xq = insertelement <8 x i16> %i.xp, i16 %i.xi, i64 5
  %i.xr = insertelement <8 x i16> %i.xq, i16 %i.xj, i64 6
  %i.xs = insertelement <8 x i16> %i.xr, i16 %i.xk, i64 7 ; 2 uses
  %i.xt = icmp ult <8 x i16> %i.xs, %broadcast.splat84
  %i.xu = icmp ugt <8 x i16> %i.xs, %broadcast.splat86
  %i.xv = or <8 x i1> %i.xt, %i.xu
  %i.xw = or <8 x i1> %i.wu, %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.sg, i64 10
  %i.xy = getelementptr inbounds nuw i8, ptr %i.sh, i64 26
  %i.xz = getelementptr inbounds nuw i8, ptr %i.sj, i64 42
  %i.ya = getelementptr inbounds nuw i8, ptr %i.sl, i64 58
  %i.yb = getelementptr inbounds nuw i8, ptr %i.sn, i64 74
  %i.yc = getelementptr inbounds nuw i8, ptr %i.sp, i64 90
  %i.yd = getelementptr inbounds nuw i8, ptr %i.sr, i64 106
  %i.ye = getelementptr inbounds nuw i8, ptr %i.st, i64 122
  %i.yf = load i16, ptr %i.xx, align 2, !tbaa !16, !noalias !640
  %i.yg = load i16, ptr %i.xy, align 2, !tbaa !16, !noalias !640
  %i.yh = load i16, ptr %i.xz, align 2, !tbaa !16, !noalias !640
  %i.yi = load i16, ptr %i.ya, align 2, !tbaa !16, !noalias !640
  %i.yj = load i16, ptr %i.yb, align 2, !tbaa !16, !noalias !640
  %i.yk = load i16, ptr %i.yc, align 2, !tbaa !16, !noalias !640
  %i.yl = load i16, ptr %i.yd, align 2, !tbaa !16, !noalias !640
  %i.ym = load i16, ptr %i.ye, align 2, !tbaa !16, !noalias !640
  %i.yn = insertelement <8 x i16> poison, i16 %i.yf, i64 0
  %i.yo = insertelement <8 x i16> %i.yn, i16 %i.yg, i64 1
  %i.yp = insertelement <8 x i16> %i.yo, i16 %i.yh, i64 2
  %i.yq = insertelement <8 x i16> %i.yp, i16 %i.yi, i64 3
  %i.yr = insertelement <8 x i16> %i.yq, i16 %i.yj, i64 4
  %i.ys = insertelement <8 x i16> %i.yr, i16 %i.yk, i64 5
  %i.yt = insertelement <8 x i16> %i.ys, i16 %i.yl, i64 6
  %i.yu = insertelement <8 x i16> %i.yt, i16 %i.ym, i64 7 ; 2 uses
  %i.yv = icmp ult <8 x i16> %i.yu, %broadcast.splat84
  %i.yw = icmp ugt <8 x i16> %i.yu, %broadcast.splat86
  %i.yx = or <8 x i1> %i.yv, %i.yw
  %i.yy = or <8 x i1> %i.xw, %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %i.sg, i64 12
  %i.za = getelementptr inbounds nuw i8, ptr %i.sh, i64 28
  %i.zb = getelementptr inbounds nuw i8, ptr %i.sj, i64 44
  %i.zc = getelementptr inbounds nuw i8, ptr %i.sl, i64 60
  %i.zd = getelementptr inbounds nuw i8, ptr %i.sn, i64 76
  %i.ze = getelementptr inbounds nuw i8, ptr %i.sp, i64 92
  %i.zf = getelementptr inbounds nuw i8, ptr %i.sr, i64 108
  %i.zg = getelementptr inbounds nuw i8, ptr %i.st, i64 124
  %i.zh = load i16, ptr %i.yz, align 2, !tbaa !16, !noalias !640
  %i.zi = load i16, ptr %i.za, align 2, !tbaa !16, !noalias !640
  %i.zj = load i16, ptr %i.zb, align 2, !tbaa !16, !noalias !640
  %i.zk = load i16, ptr %i.zc, align 2, !tbaa !16, !noalias !640
  %i.zl = load i16, ptr %i.zd, align 2, !tbaa !16, !noalias !640
  %i.zm = load i16, ptr %i.ze, align 2, !tbaa !16, !noalias !640
  %i.zn = load i16, ptr %i.zf, align 2, !tbaa !16, !noalias !640
  %i.zo = load i16, ptr %i.zg, align 2, !tbaa !16, !noalias !640
  %i.zp = insertelement <8 x i16> poison, i16 %i.zh, i64 0
  %i.zq = insertelement <8 x i16> %i.zp, i16 %i.zi, i64 1
  %i.zr = insertelement <8 x i16> %i.zq, i16 %i.zj, i64 2
  %i.zs = insertelement <8 x i16> %i.zr, i16 %i.zk, i64 3
  %i.zt = insertelement <8 x i16> %i.zs, i16 %i.zl, i64 4
  %i.zu = insertelement <8 x i16> %i.zt, i16 %i.zm, i64 5
  %i.zv = insertelement <8 x i16> %i.zu, i16 %i.zn, i64 6
  %i.zw = insertelement <8 x i16> %i.zv, i16 %i.zo, i64 7 ; 2 uses
  %i.zx = icmp ult <8 x i16> %i.zw, %broadcast.splat84
  %i.zy = icmp ugt <8 x i16> %i.zw, %broadcast.splat86
  %i.zz = or <8 x i1> %i.zx, %i.zy
  %i.aaa = or <8 x i1> %i.yy, %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.sg, i64 14
  %i.aac = getelementptr inbounds nuw i8, ptr %i.sh, i64 30
  %i.aad = getelementptr inbounds nuw i8, ptr %i.sj, i64 46
  %i.aae = getelementptr inbounds nuw i8, ptr %i.sl, i64 62
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.sn, i64 78
  %i.aag = getelementptr inbounds nuw i8, ptr %i.sp, i64 94
  %i.aah = getelementptr inbounds nuw i8, ptr %i.sr, i64 110
  %i.aai = getelementptr inbounds nuw i8, ptr %i.st, i64 126
  %i.aaj = load i16, ptr %i.aab, align 2, !tbaa !16, !noalias !640
  %i.aak = load i16, ptr %i.aac, align 2, !tbaa !16, !noalias !640
  %i.aal = load i16, ptr %i.aad, align 2, !tbaa !16, !noalias !640
  %i.aam = load i16, ptr %i.aae, align 2, !tbaa !16, !noalias !640
  %i.aan = load i16, ptr %i.aaf, align 2, !tbaa !16, !noalias !640
  %i.aao = load i16, ptr %i.aag, align 2, !tbaa !16, !noalias !640
  %i.aap = load i16, ptr %i.aah, align 2, !tbaa !16, !noalias !640
  %i.aaq = load i16, ptr %i.aai, align 2, !tbaa !16, !noalias !640
  %i.aar = insertelement <8 x i16> poison, i16 %i.aaj, i64 0
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aak, i64 1
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 2
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 3
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 4
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 5
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 6
  %i.aay = insertelement <8 x i16> %i.aax, i16 %i.aaq, i64 7 ; 2 uses
  %i.aaz = icmp ult <8 x i16> %i.aay, %broadcast.splat84
  %i.aba = icmp ugt <8 x i16> %i.aay, %broadcast.splat86
  %i.abb = or <8 x i1> %i.aaz, %i.aba
  %i.abc = or <8 x i1> %i.aaa, %i.abb             ; 2 uses
  %index.next90 = add nuw i64 %index88, 8         ; 2 uses
  %i.abd = icmp eq i64 %index.next90, %n.vec82
  br i1 %i.abd, label %vec.epilog.middle.block91, label %vec.epilog.vector.body87, !llvm.loop !648

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body87
  %i.abe = bitcast <8 x i1> %i.abc to i8
  %i.abf = icmp ne i8 %i.abe, 0                   ; 2 uses
  %cmp.n92 = icmp eq i64 %n.vec82, %smax189.i
  br i1 %cmp.n92, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block91
  %.081158.i.ph = phi i64 [ 0, %iter.check77 ], [ %n.vec62, %vec.epilog.iter.check79 ], [ %n.vec82, %vec.epilog.middle.block91 ]
  %.082157.i.ph = phi i64 [ 0, %iter.check77 ], [ %i.ad, %vec.epilog.iter.check79 ], [ %i.sd, %vec.epilog.middle.block91 ]
  %.085156.i.ph = phi i1 [ false, %iter.check77 ], [ %i.sc, %vec.epilog.iter.check79 ], [ %i.abf, %vec.epilog.middle.block91 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %vec.epilog.middle.block91, %middle.block72
  %.lcssa36 = phi i1 [ %i.abf, %vec.epilog.middle.block91 ], [ %i.sc, %middle.block72 ], [ %op.rdx, %.preheader.i ]
  %i.abg = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %.lcssa36, %.preheader137.loopexit.i ] ; 4 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.abg, %.preheader137.loopexit.i ] ; 7 uses
  %i.abh = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.abi = icmp slt i64 %.082.lcssa.i, %i.abh
  br i1 %i.abi, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader137.i
  %i.abj = sub nsw i64 %i.abh, %.082.lcssa.i      ; 6 uses
  %min.iters.check = icmp ult i64 %i.abj, 4
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.abj, 16
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abk = and i64 %i.abj, 12
  %n.vec = and i64 %i.abj, -16                    ; 4 uses
  %i.abl = add nsw i64 %.082.lcssa.i, %n.vec
  %i.abm = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ %i.abm, %vector.ph ], [ %i.abw, %vector.body ]
  %vec.phi44 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.abx, %vector.body ]
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.abn, i64 %index ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %wide.load = load <8 x i16>, ptr %i.abo, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.abp, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.abq = icmp ult <8 x i16> %wide.load, %broadcast.splat
  %i.abr = icmp ult <8 x i16> %wide.load45, %broadcast.splat
  %i.abs = icmp ugt <8 x i16> %wide.load, %broadcast.splat43
  %i.abt = icmp ugt <8 x i16> %wide.load45, %broadcast.splat43
  %i.abu = or <8 x i1> %i.abq, %i.abs
  %i.abv = or <8 x i1> %i.abr, %i.abt
  %i.abw = or <8 x i1> %vec.phi, %i.abu           ; 2 uses
  %i.abx = or <8 x i1> %vec.phi44, %i.abv         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aby = icmp eq i64 %index.next, %n.vec
  br i1 %i.aby, label %middle.block, label %vector.body, !llvm.loop !649

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.abx, %i.abw
  %i.abz = bitcast <8 x i1> %bin.rdx to i8
  %i.aca = icmp ne i8 %i.abz, 0                   ; 3 uses
  %cmp.n = icmp eq i64 %i.abj, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abk, 0
  br i1 %min.epilog.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader, label %vec.epilog.ph, !prof !426

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aca, %vec.epilog.iter.check ], [ %.085.lcssa.i, %vector.main.loop.iter.check ]
  %i.acb = and i64 %i.abh, 3
  %n.vec46 = sub nsw i64 %i.abj, %i.acb           ; 2 uses
  %i.acc = add nsw i64 %.082.lcssa.i, %n.vec46
  %i.acd = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi52 = phi <4 x i1> [ %i.acd, %vec.epilog.ph ], [ %i.acj, %vec.epilog.vector.body ]
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.ace, i64 %index51
  %wide.load53 = load <4 x i16>, ptr %i.acf, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.acg = icmp ult <4 x i16> %wide.load53, %broadcast.splat48
  %i.ach = icmp ugt <4 x i16> %wide.load53, %broadcast.splat50
  %i.aci = or <4 x i1> %i.acg, %i.ach
  %i.acj = or <4 x i1> %vec.phi52, %i.aci         ; 2 uses
  %index.next54 = add nuw i64 %index51, 4         ; 2 uses
  %i.ack = icmp eq i64 %index.next54, %n.vec46
  br i1 %i.ack, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !650

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.acl = bitcast <4 x i1> %i.acj to i4
  %i.acm = icmp ne i4 %i.acl, 0                   ; 2 uses
  %i.acn = and i16 %.sroa.0.0.extract.trunc.i, 3
  %cmp.n55 = icmp eq i16 %i.acn, 0
  br i1 %cmp.n55, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %iter.check ], [ %i.abl, %vec.epilog.iter.check ], [ %i.acc, %vec.epilog.middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %iter.check ], [ %i.aca, %vec.epilog.iter.check ], [ %i.acm, %vec.epilog.middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.acw, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.acv, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.082157.i
  %i.acp = load <8 x i16>, ptr %i.aco, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.acq = icmp ult <8 x i16> %i.acp, %i.t
  %i.acr = icmp ugt <8 x i16> %i.acp, %i.v
  %i.acs = shufflevector <8 x i1> %i.acr, <8 x i1> %i.acq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.act = bitcast <16 x i1> %i.acs to i16
  %i.acu = icmp ne i16 %i.act, 0
  %op.rdx = or i1 %i.acu, %.085156.i              ; 2 uses
  %i.acv = add nuw nsw i64 %.082157.i, 8
  %i.acw = add nuw nsw i64 %.081158.i, 1          ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.acw, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !651

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i
  %.284162.i = phi i64 [ %i.adc, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader ] ; 2 uses
  %.287161.i = phi i1 [ %i.adb, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i.preheader ]
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.284162.i
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.acz = icmp ult i16 %i.acy, %.42.val
  %i.ada = icmp ugt i16 %i.acy, %.42.val1
  %spec.select128.i = or i1 %i.acz, %i.ada
  %i.adb = or i1 %.287161.i, %spec.select128.i    ; 2 uses
  %i.adc = add nuw nsw i64 %.284162.i, 1          ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.adc, %i.abh
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i, !llvm.loop !652

bb.d:                                             ; preds = %.lr.ph176.i
  %i.add = icmp sgt i32 %i.x, 0
  br i1 %i.add, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.ade = icmp sgt i32 %i.y, 7
  br i1 %i.ade, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.adf = lshr i32 %i.y, 3
  %i.adg = trunc i64 %.092169.i to i3             ; 7 uses
  %i.adh = trunc i64 %.092169.i to i8
  %i.adi = and i8 %i.adh, 7
  %i.adj = add i3 %i.adg, 1
  %i.adk = zext i3 %i.adj to i8
  %i.adl = add i3 %i.adg, 2
  %i.adm = zext i3 %i.adl to i8
  %i.adn = add i3 %i.adg, 3
  %i.ado = zext i3 %i.adn to i8
  %i.adp = xor i3 %i.adg, -4
  %i.adq = zext i3 %i.adp to i8
  %i.adr = add i3 %i.adg, -3
  %i.ads = zext i3 %i.adr to i8
  %i.adt = add i3 %i.adg, -2
  %i.adu = zext i3 %i.adt to i8
  %i.adv = add i3 %i.adg, -1
  %i.adw = zext i3 %i.adv to i8
  %smax.i = zext nneg i32 %i.adf to i64           ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.adx = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx96, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.adx, %.preheader139.loopexit.i ] ; 6 uses
  %i.ady = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.adz = icmp slt i64 %.076.lcssa.i, %i.ady
  br i1 %i.adz, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.aea = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.aea, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.aec = load i16, ptr %i.aeb, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.aed = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.aee = lshr i64 %i.aed, 3
  %i.aef = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aee
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !7, !noalias !640
  %i.aeh = trunc i64 %.092169.i to i8
  %i.aei = and i8 %i.aeh, 7
  %i.aej = lshr i8 %i.aeg, %i.aei
  %i.aek = trunc i8 %i.aej to i1
  %i.ael = icmp ult i16 %i.aec, %.42.val
  %i.aem = icmp ugt i16 %i.aec, %.42.val1
  %spec.select130.i.prol = or i1 %i.ael, %i.aem
  %i.aen = select i1 %i.aek, i1 %spec.select130.i.prol, i1 false
  %i.aeo = or i1 %.3.lcssa.i, %i.aen              ; 2 uses
  %i.aep = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader ], [ %i.aeo, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader ], [ %i.aep, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.preheader ], [ %i.aeo, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol ]
  %i.aeq = add nsw i64 %i.ady, -1
  %i.aer = icmp eq i64 %.076.lcssa.i, %i.aeq
  br i1 %i.aer, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.ahm, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.ahl, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx96, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.076147.i
  %i.aet = add nsw i64 %.076147.i, %.092169.i
  %i.aeu = lshr i64 %i.aet, 3
  %i.aev = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aeu
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !7, !noalias !640
  %i.aex = or disjoint i64 %.076147.i, 1
  %i.aey = add nsw i64 %i.aex, %.092169.i
  %i.aez = lshr i64 %i.aey, 3
  %i.afa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aez
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !7, !noalias !640
  %i.afc = or disjoint i64 %.076147.i, 2
  %i.afd = add nsw i64 %i.afc, %.092169.i
  %i.afe = lshr i64 %i.afd, 3
  %i.aff = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !7, !noalias !640
  %i.afh = or disjoint i64 %.076147.i, 3
  %i.afi = add nsw i64 %i.afh, %.092169.i
  %i.afj = lshr i64 %i.afi, 3
  %i.afk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afj
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !7, !noalias !640
  %i.afm = or disjoint i64 %.076147.i, 4
  %i.afn = add nsw i64 %i.afm, %.092169.i
  %i.afo = lshr i64 %i.afn, 3
  %i.afp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !7, !noalias !640
  %i.afr = or disjoint i64 %.076147.i, 5
  %i.afs = add nsw i64 %i.afr, %.092169.i
  %i.aft = lshr i64 %i.afs, 3
  %i.afu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !7, !noalias !640
  %i.afw = or disjoint i64 %.076147.i, 6
  %i.afx = add nsw i64 %i.afw, %.092169.i
  %i.afy = lshr i64 %i.afx, 3
  %i.afz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !7, !noalias !640
  %i.agb = or disjoint i64 %.076147.i, 7
  %i.agc = add nsw i64 %i.agb, %.092169.i
  %i.agd = lshr i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.agd
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !7, !noalias !640
  %i.agg = load <8 x i16>, ptr %i.aes, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.agh = lshr i8 %i.agf, %i.adw
  %i.agi = lshr i8 %i.aga, %i.adu
  %i.agj = lshr i8 %i.afv, %i.ads
  %i.agk = lshr i8 %i.afq, %i.adq
  %i.agl = lshr i8 %i.afl, %i.ado
  %i.agm = lshr i8 %i.afg, %i.adm
  %i.agn = lshr i8 %i.afb, %i.adk
  %i.ago = lshr i8 %i.aew, %i.adi
  %i.agp = trunc i8 %i.agh to i1
  %i.agq = trunc i8 %i.agi to i1
  %i.agr = trunc i8 %i.agj to i1
  %i.ags = trunc i8 %i.agk to i1
  %i.agt = trunc i8 %i.agl to i1
  %i.agu = trunc i8 %i.agm to i1
  %i.agv = trunc i8 %i.agn to i1
  %i.agw = trunc i8 %i.ago to i1
  %i.agx = icmp ult <8 x i16> %i.agg, %i.p
  %i.agy = icmp ugt <8 x i16> %i.agg, %i.r
  %i.agz = or <8 x i1> %i.agx, %i.agy
  %i.aha = insertelement <8 x i1> poison, i1 %i.agw, i64 0
  %i.ahb = insertelement <8 x i1> %i.aha, i1 %i.agv, i64 1
  %i.ahc = insertelement <8 x i1> %i.ahb, i1 %i.agu, i64 2
  %i.ahd = insertelement <8 x i1> %i.ahc, i1 %i.agt, i64 3
  %i.ahe = insertelement <8 x i1> %i.ahd, i1 %i.ags, i64 4
  %i.ahf = insertelement <8 x i1> %i.ahe, i1 %i.agr, i64 5
  %i.ahg = insertelement <8 x i1> %i.ahf, i1 %i.agq, i64 6
  %i.ahh = insertelement <8 x i1> %i.ahg, i1 %i.agp, i64 7
  %i.ahi = select <8 x i1> %i.ahh, <8 x i1> %i.agz, <8 x i1> zeroinitializer
  %i.ahj = bitcast <8 x i1> %i.ahi to i8
  %i.ahk = icmp ne i8 %i.ahj, 0
  %op.rdx96 = or i1 %i.ahk, %.3146.i              ; 2 uses
  %i.ahl = add nuw nsw i64 %.076147.i, 8
  %i.ahm = add nuw nsw i64 %.075148.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ahm, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !653

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i
  %.2151.i = phi i64 [ %i.aiq, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.aip, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit ]
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.2151.i
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.ahp = add nsw i64 %.2151.i, %.092169.i       ; 2 uses
  %i.ahq = lshr i64 %i.ahp, 3
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !7, !noalias !640
  %i.aht = trunc i64 %i.ahp to i8
  %i.ahu = and i8 %i.aht, 7
  %i.ahv = lshr i8 %i.ahs, %i.ahu
  %i.ahw = trunc i8 %i.ahv to i1
  %i.ahx = icmp ult i16 %i.aho, %.42.val
  %i.ahy = icmp ugt i16 %i.aho, %.42.val1
  %spec.select130.i = or i1 %i.ahx, %i.ahy
  %i.ahz = select i1 %i.ahw, i1 %spec.select130.i, i1 false
  %i.aia = or i1 %.5150.i, %i.ahz
  %i.aib = add nuw nsw i64 %.2151.i, 1            ; 2 uses
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %i.aib
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !16, !noalias !640 ; 2 uses
  %i.aie = add nsw i64 %i.aib, %.092169.i         ; 2 uses
  %i.aif = lshr i64 %i.aie, 3
  %i.aig = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !7, !noalias !640
  %i.aii = trunc i64 %i.aie to i8
  %i.aij = and i8 %i.aii, 7
  %i.aik = lshr i8 %i.aih, %i.aij
  %i.ail = trunc i8 %i.aik to i1
  %i.aim = icmp ult i16 %i.aid, %.42.val
  %i.ain = icmp ugt i16 %i.aid, %.42.val1
  %spec.select130.i.1 = or i1 %i.aim, %i.ain
  %i.aio = select i1 %i.ail, i1 %spec.select130.i.1, i1 false
  %i.aip = or i1 %i.aia, %i.aio                   ; 2 uses
  %i.aiq = add nuw nsw i64 %.2151.i, 2            ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.aiq, %i.ady
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i, !llvm.loop !654

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i, %middle.block, %vec.epilog.middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.adb, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.acm, %vec.epilog.middle.block ], [ %i.aca, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i.prol.loopexit ], [ %i.aip, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.air = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !640
  %i.ais = icmp sgt i64 %i.air, 0
  %i.ait = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.ais, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ajg, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.aiu = add nsw i64 %.073167.i, %.092169.i     ; 2 uses
  %i.aiv = lshr i64 %i.aiu, 3
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !7, !noalias !640
  %i.aiy = trunc i64 %i.aiu to i8
  %i.aiz = and i8 %i.aiy, 7
  %i.aja = lshr i8 %i.aix, %i.aiz
  %i.ajb = trunc i8 %i.aja to i1
  br i1 %i.ajb, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ajc = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.073167.i
  %i.ajd = load i16, ptr %i.ajc, align 2, !tbaa !16, !noalias !640 ; 3 uses
  %i.aje = icmp ult i16 %i.ajd, %.42.val
  %i.ajf = icmp ugt i16 %i.ajd, %.42.val1
  %or.cond131.i = or i1 %i.aje, %i.ajf
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef zeroext %i.ajd)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ajg = add nuw nsw i64 %.073167.i, 1          ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ajg, %i.ait
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !655

bb.g:                                             ; preds = %.lr.ph.i
  %i.ajh = add nuw nsw i64 %.0165.i, 1            ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.ajh, %i.ait
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !656

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.ajh, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.aji = getelementptr inbounds nuw [2 x i8], ptr %.088173.i, i64 %.0165.i
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !16, !noalias !640 ; 3 uses
  %i.ajk = icmp ult i16 %i.ajj, %.42.val
  %i.ajl = icmp ugt i16 %i.ajj, %.42.val1
  %or.cond132.i = or i1 %i.ajk, %i.ajl
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i16 noundef zeroext %i.ajj)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.ajm = sext i32 %i.y to i64
  %i.ajn = getelementptr inbounds [2 x i8], ptr %.088173.i, i64 %i.ajm
  %i.ajo = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ajp = add nsw i64 %.090172.i, %i.ajo         ; 2 uses
  %i.ajq = add nsw i64 %.092169.i, %i.ajo
  %i.ajr = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !640
  %i.ajs = icmp slt i64 %i.ajp, %i.ajr
  br i1 %i.ajs, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !657

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !658
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE_clEt.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltbE_clEtb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !640
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.44.val, ptr %i.a, align 4, !tbaa !3, !noalias !661
  store i32 %.44.val1, ptr %i.b, align 4, !tbaa !3, !noalias !661
  %.not.i = icmp ne i32 %.44.val, 0
  %.not97.i = icmp ne i32 %.44.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !664
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !661 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !661
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !661 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !661
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !661
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !661
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !661
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !661
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i32> poison, i32 %.44.val, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i32> poison, i32 %.44.val1, i64 0
  %i.r = shufflevector <8 x i32> %i.q, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %.44.val, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert51 = insertelement <4 x i32> poison, i32 %.44.val1, i64 0
  %broadcast.splat52 = shufflevector <4 x i32> %broadcast.splatinsert51, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
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
  %.088173.i = phi ptr [ %i.sf, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 18 uses
  %.090172.i = phi i64 [ %i.sh, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.si, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.w = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !661 ; 3 uses
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
  %n.vec48 = and i64 %smax189.i, 268435448        ; 4 uses
  %i.ac = shl nuw nsw i64 %n.vec48, 3
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph47
  %index54 = phi i64 [ 0, %vector.ph47 ], [ %index.next57, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kf, %vector.body53 ]
  %vec.phi56 = phi <4 x i1> [ zeroinitializer, %vector.ph47 ], [ %i.kg, %vector.body53 ]
  %i.ad = shl nuw i64 %index54, 3                 ; 8 uses
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
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !661
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !661
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !661
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !661
  %i.ax = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 2
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 3 ; 2 uses
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !661
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !661
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !661
  %i.be = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !661
  %i.bf = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 3 ; 2 uses
  %i.bj = icmp ult <4 x i32> %i.ba, %broadcast.splat50
  %i.bk = icmp ult <4 x i32> %i.bi, %broadcast.splat50
  %i.bl = icmp ugt <4 x i32> %i.ba, %broadcast.splat52
  %i.bm = icmp ugt <4 x i32> %i.bi, %broadcast.splat52
  %i.bn = or <4 x i1> %i.bj, %i.bl
  %i.bo = or <4 x i1> %i.bk, %i.bm
  %i.bp = or <4 x i1> %vec.phi55, %i.bn
  %i.bq = or <4 x i1> %vec.phi56, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 164
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 196
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 228
  %i.bz = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !661
  %i.ca = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !661
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !661
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !661
  %i.cd = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.ce = insertelement <4 x i32> %i.cd, i32 %i.ca, i64 1
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.cb, i64 2
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 3 ; 2 uses
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !661
  %i.ci = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !661
  %i.cj = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !661
  %i.ck = load i32, ptr %i.by, align 4, !tbaa !3, !noalias !661
  %i.cl = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 1
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 2
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 3 ; 2 uses
  %i.cp = icmp ult <4 x i32> %i.cg, %broadcast.splat50
  %i.cq = icmp ult <4 x i32> %i.co, %broadcast.splat50
  %i.cr = icmp ugt <4 x i32> %i.cg, %broadcast.splat52
  %i.cs = icmp ugt <4 x i32> %i.co, %broadcast.splat52
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
  %i.df = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !661
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !661
  %i.dh = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !661
  %i.di = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !661
  %i.dj = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dg, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.dh, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 3 ; 2 uses
  %i.dn = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !661
  %i.do = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !661
  %i.dp = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !661
  %i.dq = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !661
  %i.dr = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 1
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 2
  %i.du = insertelement <4 x i32> %i.dt, i32 %i.dq, i64 3 ; 2 uses
  %i.dv = icmp ult <4 x i32> %i.dm, %broadcast.splat50
  %i.dw = icmp ult <4 x i32> %i.du, %broadcast.splat50
  %i.dx = icmp ugt <4 x i32> %i.dm, %broadcast.splat52
  %i.dy = icmp ugt <4 x i32> %i.du, %broadcast.splat52
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
  %i.el = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !661
  %i.em = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !661
  %i.en = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !661
  %i.eo = load i32, ptr %i.eg, align 4, !tbaa !3, !noalias !661
  %i.ep = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = insertelement <4 x i32> %i.eq, i32 %i.en, i64 2
  %i.es = insertelement <4 x i32> %i.er, i32 %i.eo, i64 3 ; 2 uses
  %i.et = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !661
  %i.eu = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !661
  %i.ev = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !661
  %i.ew = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !661
  %i.ex = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3 ; 2 uses
  %i.fb = icmp ult <4 x i32> %i.es, %broadcast.splat50
  %i.fc = icmp ult <4 x i32> %i.fa, %broadcast.splat50
  %i.fd = icmp ugt <4 x i32> %i.es, %broadcast.splat52
  %i.fe = icmp ugt <4 x i32> %i.fa, %broadcast.splat52
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
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !661
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !661
  %i.ft = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !661
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !661
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3 ; 2 uses
  %i.fz = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !661
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !661
  %i.gb = load i32, ptr %i.fp, align 4, !tbaa !3, !noalias !661
  %i.gc = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !661
  %i.gd = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ga, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.gb, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 3 ; 2 uses
  %i.gh = icmp ult <4 x i32> %i.fy, %broadcast.splat50
  %i.gi = icmp ult <4 x i32> %i.gg, %broadcast.splat50
  %i.gj = icmp ugt <4 x i32> %i.fy, %broadcast.splat52
  %i.gk = icmp ugt <4 x i32> %i.gg, %broadcast.splat52
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
  %i.gx = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !661
  %i.gy = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !661
  %i.gz = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !661
  %i.ha = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !661
  %i.hb = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 1
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 2
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 3 ; 2 uses
  %i.hf = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !661
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !661
  %i.hh = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !661
  %i.hi = load i32, ptr %i.gw, align 4, !tbaa !3, !noalias !661
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3 ; 2 uses
  %i.hn = icmp ult <4 x i32> %i.he, %broadcast.splat50
  %i.ho = icmp ult <4 x i32> %i.hm, %broadcast.splat50
  %i.hp = icmp ugt <4 x i32> %i.he, %broadcast.splat52
  %i.hq = icmp ugt <4 x i32> %i.hm, %broadcast.splat52
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
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !661
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !661
  %i.if = load i32, ptr %i.hx, align 4, !tbaa !3, !noalias !661
  %i.ig = load i32, ptr %i.hy, align 4, !tbaa !3, !noalias !661
  %i.ih = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 1
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 2
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.ig, i64 3 ; 2 uses
  %i.il = load i32, ptr %i.hz, align 4, !tbaa !3, !noalias !661
  %i.im = load i32, ptr %i.ia, align 4, !tbaa !3, !noalias !661
  %i.in = load i32, ptr %i.ib, align 4, !tbaa !3, !noalias !661
  %i.io = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !661
  %i.ip = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.im, i64 1
  %i.ir = insertelement <4 x i32> %i.iq, i32 %i.in, i64 2
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.io, i64 3 ; 2 uses
  %i.it = icmp ult <4 x i32> %i.ik, %broadcast.splat50
  %i.iu = icmp ult <4 x i32> %i.is, %broadcast.splat50
  %i.iv = icmp ugt <4 x i32> %i.ik, %broadcast.splat52
  %i.iw = icmp ugt <4 x i32> %i.is, %broadcast.splat52
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
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !3, !noalias !661
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !3, !noalias !661
  %i.jl = load i32, ptr %i.jd, align 4, !tbaa !3, !noalias !661
  %i.jm = load i32, ptr %i.je, align 4, !tbaa !3, !noalias !661
  %i.jn = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 1
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 2
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jm, i64 3 ; 2 uses
  %i.jr = load i32, ptr %i.jf, align 4, !tbaa !3, !noalias !661
  %i.js = load i32, ptr %i.jg, align 4, !tbaa !3, !noalias !661
  %i.jt = load i32, ptr %i.jh, align 4, !tbaa !3, !noalias !661
  %i.ju = load i32, ptr %i.ji, align 4, !tbaa !3, !noalias !661
  %i.jv = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 1
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.jt, i64 2
  %i.jy = insertelement <4 x i32> %i.jx, i32 %i.ju, i64 3 ; 2 uses
  %i.jz = icmp ult <4 x i32> %i.jq, %broadcast.splat50
  %i.ka = icmp ult <4 x i32> %i.jy, %broadcast.splat50
  %i.kb = icmp ugt <4 x i32> %i.jq, %broadcast.splat52
  %i.kc = icmp ugt <4 x i32> %i.jy, %broadcast.splat52
  %i.kd = or <4 x i1> %i.jz, %i.kb
  %i.ke = or <4 x i1> %i.ka, %i.kc
  %i.kf = or <4 x i1> %i.iz, %i.kd                ; 2 uses
  %i.kg = or <4 x i1> %i.ja, %i.ke                ; 2 uses
  %index.next57 = add nuw i64 %index54, 8         ; 2 uses
  %i.kh = icmp eq i64 %index.next57, %n.vec48
  br i1 %i.kh, label %middle.block58, label %vector.body53, !llvm.loop !667

middle.block58:                                   ; preds = %vector.body53
  %bin.rdx59 = or <4 x i1> %i.kg, %i.kf
  %i.ki = bitcast <4 x i1> %bin.rdx59 to i4
  %i.kj = icmp ne i4 %i.ki, 0                     ; 2 uses
  %cmp.n60 = icmp eq i64 %n.vec48, %smax189.i
  br i1 %cmp.n60, label %.preheader137.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block58
  %.081158.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec48, %middle.block58 ]
  %.082157.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %i.ac, %middle.block58 ]
  %.085156.i.ph = phi i1 [ false, %.preheader.preheader.i ], [ %i.kj, %middle.block58 ]
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i, %middle.block58
  %.lcssa36 = phi i1 [ %i.kj, %middle.block58 ], [ %op.rdx, %.preheader.i ]
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
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader
  %i.ko = and i64 %i.kl, 7
  %n.vec = sub nuw nsw i64 %i.kn, %i.ko           ; 2 uses
  %i.kp = add nsw i64 %.082.lcssa.i, %n.vec
  %i.kq = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.kq, %vector.ph ], [ %i.la, %vector.body ]
  %vec.phi43 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.lb, %vector.body ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load = load <4 x i32>, ptr %i.ks, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %wide.load44 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.ku = icmp ult <4 x i32> %wide.load, %broadcast.splat
  %i.kv = icmp ult <4 x i32> %wide.load44, %broadcast.splat
  %i.kw = icmp ugt <4 x i32> %wide.load, %broadcast.splat42
  %i.kx = icmp ugt <4 x i32> %wide.load44, %broadcast.splat42
  %i.ky = or <4 x i1> %i.ku, %i.kw
  %i.kz = or <4 x i1> %i.kv, %i.kx
  %i.la = or <4 x i1> %vec.phi, %i.ky             ; 2 uses
  %i.lb = or <4 x i1> %vec.phi43, %i.kz           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lc = icmp eq i64 %index.next, %n.vec
  br i1 %i.lc, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.lb, %i.la
  %i.ld = bitcast <4 x i1> %bin.rdx to i4
  %i.le = icmp ne i4 %i.ld, 0                     ; 2 uses
  %i.lf = and i16 %.sroa.0.0.extract.trunc.i, 7
  %cmp.n = icmp eq i16 %i.lf, 0
  br i1 %cmp.n, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader66

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader66: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader, %middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader ], [ %i.kp, %middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader ], [ %i.le, %middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.081158.i = phi i64 [ %i.lo, %.preheader.i ], [ %.081158.i.ph, %.preheader.i.preheader ]
  %.082157.i = phi i64 [ %i.ln, %.preheader.i ], [ %.082157.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ %.085156.i.ph, %.preheader.i.preheader ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.082157.i
  %i.lh = load <8 x i32>, ptr %i.lg, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.li = icmp ult <8 x i32> %i.lh, %i.t
  %i.lj = icmp ugt <8 x i32> %i.lh, %i.v
  %i.lk = shufflevector <8 x i1> %i.lj, <8 x i1> %i.li, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ll = bitcast <16 x i1> %i.lk to i16
  %i.lm = icmp ne i16 %i.ll, 0
  %op.rdx = or i1 %i.lm, %.085156.i               ; 2 uses
  %i.ln = add nuw nsw i64 %.082157.i, 8
  %i.lo = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.lo, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !669

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader66, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i
  %.284162.i = phi i64 [ %i.lu, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader66 ] ; 2 uses
  %.287161.i = phi i1 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i.preheader66 ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.284162.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.lr = icmp ult i32 %i.lq, %.44.val
  %i.ls = icmp ugt i32 %i.lq, %.44.val1
  %spec.select128.i = or i1 %i.lr, %i.ls
  %i.lt = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.lu = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.lu, %i.kl
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i, !llvm.loop !670

bb.d:                                             ; preds = %.lr.ph176.i
  %i.lv = icmp sgt i32 %i.x, 0
  br i1 %i.lv, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.lw = icmp sgt i32 %i.y, 7
  br i1 %i.lw, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.lx = lshr i32 %i.y, 3
  %i.ly = trunc i64 %.092169.i to i3              ; 7 uses
  %i.lz = trunc i64 %.092169.i to i8
  %i.ma = and i8 %i.lz, 7
  %i.mb = add i3 %i.ly, 1
  %i.mc = zext i3 %i.mb to i8
  %i.md = add i3 %i.ly, 2
  %i.me = zext i3 %i.md to i8
  %i.mf = add i3 %i.ly, 3
  %i.mg = zext i3 %i.mf to i8
  %i.mh = xor i3 %i.ly, -4
  %i.mi = zext i3 %i.mh to i8
  %i.mj = add i3 %i.ly, -3
  %i.mk = zext i3 %i.mj to i8
  %i.ml = add i3 %i.ly, -2
  %i.mm = zext i3 %i.ml to i8
  %i.mn = add i3 %i.ly, -1
  %i.mo = zext i3 %i.mn to i8
  %smax.i = zext nneg i32 %i.lx to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.mp = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %op.rdx64, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.mp, %.preheader139.loopexit.i ] ; 6 uses
  %i.mq = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.mr = icmp slt i64 %.076.lcssa.i, %i.mq
  br i1 %i.mr, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.ms = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.ms, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.mv = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.mw = lshr i64 %i.mv, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !7, !noalias !661
  %i.mz = trunc i64 %.092169.i to i8
  %i.na = and i8 %i.mz, 7
  %i.nb = lshr i8 %i.my, %i.na
  %i.nc = trunc i8 %i.nb to i1
  %i.nd = icmp ult i32 %i.mu, %.44.val
  %i.ne = icmp ugt i32 %i.mu, %.44.val1
  %spec.select130.i.prol = or i1 %i.nd, %i.ne
  %i.nf = select i1 %i.nc, i1 %spec.select130.i.prol, i1 false
  %i.ng = or i1 %.3.lcssa.i, %i.nf                ; 2 uses
  %i.nh = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader
  %.lcssa.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader ], [ %i.ng, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader ], [ %i.nh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.preheader ], [ %i.ng, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol ]
  %i.ni = add nsw i64 %i.mq, -1
  %i.nj = icmp eq i64 %.076.lcssa.i, %i.ni
  br i1 %i.nj, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.qe, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.qd, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %op.rdx64, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.076147.i
  %i.nl = add nsw i64 %.076147.i, %.092169.i
  %i.nm = lshr i64 %i.nl, 3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !7, !noalias !661
  %i.np = or disjoint i64 %.076147.i, 1
  %i.nq = add nsw i64 %i.np, %.092169.i
  %i.nr = lshr i64 %i.nq, 3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !7, !noalias !661
  %i.nu = or disjoint i64 %.076147.i, 2
  %i.nv = add nsw i64 %i.nu, %.092169.i
  %i.nw = lshr i64 %i.nv, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !7, !noalias !661
  %i.nz = or disjoint i64 %.076147.i, 3
  %i.oa = add nsw i64 %i.nz, %.092169.i
  %i.ob = lshr i64 %i.oa, 3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !7, !noalias !661
  %i.oe = or disjoint i64 %.076147.i, 4
  %i.of = add nsw i64 %i.oe, %.092169.i
  %i.og = lshr i64 %i.of, 3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !7, !noalias !661
  %i.oj = or disjoint i64 %.076147.i, 5
  %i.ok = add nsw i64 %i.oj, %.092169.i
  %i.ol = lshr i64 %i.ok, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !7, !noalias !661
  %i.oo = or disjoint i64 %.076147.i, 6
  %i.op = add nsw i64 %i.oo, %.092169.i
  %i.oq = lshr i64 %i.op, 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !7, !noalias !661
  %i.ot = or disjoint i64 %.076147.i, 7
  %i.ou = add nsw i64 %i.ot, %.092169.i
  %i.ov = lshr i64 %i.ou, 3
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !7, !noalias !661
  %i.oy = load <8 x i32>, ptr %i.nk, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.oz = lshr i8 %i.ox, %i.mo
  %i.pa = lshr i8 %i.os, %i.mm
  %i.pb = lshr i8 %i.on, %i.mk
  %i.pc = lshr i8 %i.oi, %i.mi
  %i.pd = lshr i8 %i.od, %i.mg
  %i.pe = lshr i8 %i.ny, %i.me
  %i.pf = lshr i8 %i.nt, %i.mc
  %i.pg = lshr i8 %i.no, %i.ma
  %i.ph = trunc i8 %i.oz to i1
  %i.pi = trunc i8 %i.pa to i1
  %i.pj = trunc i8 %i.pb to i1
  %i.pk = trunc i8 %i.pc to i1
  %i.pl = trunc i8 %i.pd to i1
  %i.pm = trunc i8 %i.pe to i1
  %i.pn = trunc i8 %i.pf to i1
  %i.po = trunc i8 %i.pg to i1
  %i.pp = icmp ult <8 x i32> %i.oy, %i.p
  %i.pq = icmp ugt <8 x i32> %i.oy, %i.r
  %i.pr = or <8 x i1> %i.pp, %i.pq
  %i.ps = insertelement <8 x i1> poison, i1 %i.po, i64 0
  %i.pt = insertelement <8 x i1> %i.ps, i1 %i.pn, i64 1
  %i.pu = insertelement <8 x i1> %i.pt, i1 %i.pm, i64 2
  %i.pv = insertelement <8 x i1> %i.pu, i1 %i.pl, i64 3
  %i.pw = insertelement <8 x i1> %i.pv, i1 %i.pk, i64 4
  %i.px = insertelement <8 x i1> %i.pw, i1 %i.pj, i64 5
  %i.py = insertelement <8 x i1> %i.px, i1 %i.pi, i64 6
  %i.pz = insertelement <8 x i1> %i.py, i1 %i.ph, i64 7
  %i.qa = select <8 x i1> %i.pz, <8 x i1> %i.pr, <8 x i1> zeroinitializer
  %i.qb = bitcast <8 x i1> %i.qa to i8
  %i.qc = icmp ne i8 %i.qb, 0
  %op.rdx64 = or i1 %i.qc, %.3146.i               ; 2 uses
  %i.qd = add nuw nsw i64 %.076147.i, 8
  %i.qe = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.qe, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !671

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i
  %.2151.i = phi i64 [ %i.ri, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ]
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.2151.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.qh = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.qi = lshr i64 %i.qh, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !7, !noalias !661
  %i.ql = trunc i64 %i.qh to i8
  %i.qm = and i8 %i.ql, 7
  %i.qn = lshr i8 %i.qk, %i.qm
  %i.qo = trunc i8 %i.qn to i1
  %i.qp = icmp ult i32 %i.qg, %.44.val
  %i.qq = icmp ugt i32 %i.qg, %.44.val1
  %spec.select130.i = or i1 %i.qp, %i.qq
  %i.qr = select i1 %i.qo, i1 %spec.select130.i, i1 false
  %i.qs = or i1 %.5150.i, %i.qr
  %i.qt = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !3, !noalias !661 ; 2 uses
  %i.qw = add nsw i64 %i.qt, %.092169.i           ; 2 uses
  %i.qx = lshr i64 %i.qw, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !7, !noalias !661
  %i.ra = trunc i64 %i.qw to i8
  %i.rb = and i8 %i.ra, 7
  %i.rc = lshr i8 %i.qz, %i.rb
  %i.rd = trunc i8 %i.rc to i1
  %i.re = icmp ult i32 %i.qv, %.44.val
  %i.rf = icmp ugt i32 %i.qv, %.44.val1
  %spec.select130.i.1 = or i1 %i.re, %i.rf
  %i.rg = select i1 %i.rd, i1 %spec.select130.i.1, i1 false
  %i.rh = or i1 %i.qs, %i.rg                      ; 2 uses
  %i.ri = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.ri, %i.mq
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i, !llvm.loop !672

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.lt, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.le, %middle.block ], [ %.lcssa.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i.prol.loopexit ], [ %i.rh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.rj = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !661
  %i.rk = icmp sgt i64 %i.rj, 0
  %i.rl = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.rk, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.ry, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.rm = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !7, !noalias !661
  %i.rq = trunc i64 %i.rm to i8
  %i.rr = and i8 %i.rq, 7
  %i.rs = lshr i8 %i.rp, %i.rr
  %i.rt = trunc i8 %i.rs to i1
  br i1 %i.rt, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.073167.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3, !noalias !661 ; 3 uses
  %i.rw = icmp ult i32 %i.rv, %.44.val
  %i.rx = icmp ugt i32 %i.rv, %.44.val1
  %or.cond131.i = or i1 %i.rw, %i.rx
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE0_clEj(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.rv)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.ry = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ry, %i.rl
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !673

bb.g:                                             ; preds = %.lr.ph.i
  %i.rz = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.rz, %i.rl
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !674

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.rz, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.088173.i, i64 %.0165.i
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3, !noalias !661 ; 3 uses
  %i.sc = icmp ult i32 %i.sb, %.44.val
  %i.sd = icmp ugt i32 %i.sb, %.44.val1
  %or.cond132.i = or i1 %i.sc, %i.sd
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE0_clEj(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %i.sb)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.se = sext i32 %i.y to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.088173.i, i64 %i.se
  %i.sg = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.sh = add nsw i64 %.090172.i, %i.sg           ; 2 uses
  %i.si = add nsw i64 %.092169.i, %i.sg
  %i.sj = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !661
  %i.sk = icmp slt i64 %i.sh, %i.sj
  br i1 %i.sk, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !675

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !676
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljE_clEj.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt32TypeEjEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUljbE_clEjb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !661
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.48.val, ptr %i.a, align 8, !tbaa !30, !noalias !679
  store i64 %.48.val1, ptr %i.b, align 8, !tbaa !30, !noalias !679
  %.not.i = icmp ne i64 %.48.val, 0
  %.not97.i = icmp ne i64 %.48.val1, -1
  %or.cond.i = or i1 %.not.i, %.not97.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !682
  br label %_ZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !679 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288, !noalias !679
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !288, !noalias !679 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !679
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !679
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.h, i64 noundef %i.d, i64 noundef %i.j), !noalias !679
  %i.k = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !679
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph176.preheader.i, label %._crit_edge.i

.lr.ph176.preheader.i:                            ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !287, !noalias !679
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.o = insertelement <8 x i64> poison, i64 %.48.val1, i64 0
  %i.p = shufflevector <8 x i64> %i.o, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.q = insertelement <8 x i64> poison, i64 %.48.val, i64 0
  %i.r = shufflevector <8 x i64> %i.q, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.48.val, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert41 = insertelement <2 x i64> poison, i64 %.48.val1, i64 0
  %broadcast.splat42 = shufflevector <2 x i64> %broadcast.splatinsert41, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.critedge.i, %.lr.ph176.preheader.i
  %.088173.i = phi ptr [ %i.iz, %.critedge.i ], [ %i.n, %.lr.ph176.preheader.i ] ; 17 uses
  %.090172.i = phi i64 [ %i.jb, %.critedge.i ], [ 0, %.lr.ph176.preheader.i ]
  %.092169.i = phi i64 [ %i.jc, %.critedge.i ], [ %i.m, %.lr.ph176.preheader.i ] ; 16 uses
  %i.s = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !679 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.s to i16 ; 7 uses
  %i.t = ashr i32 %i.s, 16                        ; 4 uses
  %sext.i = shl i32 %i.s, 16
  %i.u = ashr exact i32 %sext.i, 16               ; 4 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %.preheader138.i, label %bb.d

.preheader138.i:                                  ; preds = %.lr.ph176.i
  %i.w = icmp sgt i32 %i.t, 7
  br i1 %i.w, label %.preheader.preheader.i, label %.preheader137.i

.preheader.preheader.i:                           ; preds = %.preheader138.i
  %i.x = lshr i32 %i.t, 3
  %smax189.i = zext nneg i32 %i.x to i64          ; 2 uses
  br label %.preheader.i

.preheader137.loopexit.i:                         ; preds = %.preheader.i
  %i.y = shl nuw nsw i64 %smax189.i, 3
  br label %.preheader137.i

.preheader137.i:                                  ; preds = %.preheader137.loopexit.i, %.preheader138.i
  %.085.lcssa.i = phi i1 [ false, %.preheader138.i ], [ %op.rdx, %.preheader137.loopexit.i ] ; 3 uses
  %.082.lcssa.i = phi i64 [ 0, %.preheader138.i ], [ %i.y, %.preheader137.loopexit.i ] ; 5 uses
  %i.z = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.aa = icmp slt i64 %.082.lcssa.i, %i.z
  br i1 %i.aa, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader: ; preds = %.preheader137.i
  %i.ab = sub nsw i64 %i.z, %.082.lcssa.i         ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader
  %i.ac = and i64 %i.z, 3
  %n.vec = sub nuw nsw i64 %i.ab, %i.ac           ; 2 uses
  %i.ad = add nsw i64 %.082.lcssa.i, %n.vec
  %i.ae = insertelement <2 x i1> <i1 poison, i1 false>, i1 %.085.lcssa.i, i64 0
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.082.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ %i.ae, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi43 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x i64>, ptr %i.ag, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %wide.load44 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.ai = icmp ult <2 x i64> %wide.load, %broadcast.splat
  %i.aj = icmp ult <2 x i64> %wide.load44, %broadcast.splat
  %i.ak = icmp ugt <2 x i64> %wide.load, %broadcast.splat42
  %i.al = icmp ugt <2 x i64> %wide.load44, %broadcast.splat42
  %i.am = or <2 x i1> %i.ai, %i.ak
  %i.an = or <2 x i1> %i.aj, %i.al
  %i.ao = or <2 x i1> %vec.phi, %i.am             ; 2 uses
  %i.ap = or <2 x i1> %vec.phi43, %i.an           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ap, %i.ao
  %i.ar = bitcast <2 x i1> %bin.rdx to i2
  %i.as = icmp ne i2 %i.ar, 0                     ; 2 uses
  %i.at = and i16 %.sroa.0.0.extract.trunc.i, 3
  %cmp.n = icmp eq i16 %i.at, 0
  br i1 %cmp.n, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader46

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader46: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader, %middle.block
  %.284162.i.ph = phi i64 [ %.082.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.ad, %middle.block ]
  %.287161.i.ph = phi i1 [ %.085.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader ], [ %i.as, %middle.block ]
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.081158.i = phi i64 [ %i.bc, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %.082157.i = phi i64 [ %i.bb, %.preheader.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.085156.i = phi i1 [ %op.rdx, %.preheader.i ], [ false, %.preheader.preheader.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.082157.i
  %i.av = load <8 x i64>, ptr %i.au, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.aw = icmp ult <8 x i64> %i.av, %i.r
  %i.ax = icmp ugt <8 x i64> %i.av, %i.p
  %i.ay = shufflevector <8 x i1> %i.ax, <8 x i1> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = icmp ne i16 %i.az, 0
  %op.rdx = or i1 %i.ba, %.085156.i               ; 2 uses
  %i.bb = add nuw nsw i64 %.082157.i, 8
  %i.bc = add nuw nsw i64 %.081158.i, 1           ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.bc, %smax189.i
  br i1 %exitcond190.not.i, label %.preheader137.loopexit.i, label %.preheader.i, !llvm.loop !686

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader46, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i
  %.284162.i = phi i64 [ %i.bi, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.284162.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader46 ] ; 2 uses
  %.287161.i = phi i1 [ %i.bh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.287161.i.ph, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i.preheader46 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.284162.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.48.val
  %i.bg = icmp ugt i64 %i.be, %.48.val1
  %spec.select128.i = or i1 %i.bf, %i.bg
  %i.bh = or i1 %.287161.i, %spec.select128.i     ; 2 uses
  %i.bi = add nuw nsw i64 %.284162.i, 1           ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.bi, %i.z
  br i1 %exitcond191.not.i, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i, !llvm.loop !687

bb.d:                                             ; preds = %.lr.ph176.i
  %i.bj = icmp sgt i32 %i.t, 0
  br i1 %i.bj, label %.preheader141.i, label %.critedge.i

.preheader141.i:                                  ; preds = %bb.d
  %i.bk = icmp sgt i32 %i.u, 7
  br i1 %i.bk, label %.preheader133.preheader.i, label %.preheader139.i

.preheader133.preheader.i:                        ; preds = %.preheader141.i
  %i.bl = lshr i32 %i.u, 3
  %i.bm = trunc i64 %.092169.i to i3              ; 7 uses
  %i.bn = trunc i64 %.092169.i to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = add i3 %i.bm, 1
  %i.bq = zext i3 %i.bp to i8
  %i.br = add i3 %i.bm, 2
  %i.bs = zext i3 %i.br to i8
  %i.bt = add i3 %i.bm, 3
  %i.bu = zext i3 %i.bt to i8
  %i.bv = xor i3 %i.bm, -4
  %i.bw = zext i3 %i.bv to i8
  %i.bx = add i3 %i.bm, -3
  %i.by = zext i3 %i.bx to i8
  %i.bz = add i3 %i.bm, -2
  %i.ca = zext i3 %i.bz to i8
  %i.cb = add i3 %i.bm, -1
  %i.cc = zext i3 %i.cb to i8
  %smax.i = zext nneg i32 %i.bl to i64            ; 2 uses
  br label %.preheader133.i

.preheader139.loopexit.i:                         ; preds = %.preheader133.i
  %i.cd = shl nuw nsw i64 %smax.i, 3
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader139.loopexit.i, %.preheader141.i
  %.3.lcssa.i = phi i1 [ false, %.preheader141.i ], [ %i.gw, %.preheader139.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi i64 [ 0, %.preheader141.i ], [ %i.cd, %.preheader139.loopexit.i ] ; 6 uses
  %i.ce = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 3 uses
  %i.cf = icmp slt i64 %.076.lcssa.i, %i.ce
  br i1 %i.cf, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader, label %.loopexit.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader: ; preds = %.preheader139.i
  %i.cg = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.cg, 0
  br i1 %lcmp.mod.not, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076.lcssa.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.cj = add nsw i64 %.076.lcssa.i, %.092169.i
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !679
  %i.cn = trunc i64 %.092169.i to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = lshr i8 %i.cm, %i.co
  %i.cq = trunc i8 %i.cp to i1
  %i.cr = icmp ult i64 %i.ci, %.48.val
  %i.cs = icmp ugt i64 %i.ci, %.48.val1
  %spec.select130.i.prol = or i1 %i.cr, %i.cs
  %i.ct = select i1 %i.cq, i1 %spec.select130.i.prol, i1 false
  %i.cu = or i1 %.3.lcssa.i, %i.ct                ; 2 uses
  %i.cv = or disjoint i64 %.076.lcssa.i, 1
  br label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader
  %.lcssa48.unr = phi i1 [ poison, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.cu, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %.2151.i.unr = phi i64 [ %.076.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.cv, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %.5150.i.unr = phi i1 [ %.3.lcssa.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.preheader ], [ %i.cu, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol ]
  %i.cw = add nsw i64 %i.ce, -1
  %i.cx = icmp eq i64 %.076.lcssa.i, %i.cw
  br i1 %i.cx, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i

.preheader133.i:                                  ; preds = %.preheader133.i, %.preheader133.preheader.i
  %.075148.i = phi i64 [ %i.gy, %.preheader133.i ], [ 0, %.preheader133.preheader.i ]
  %.076147.i = phi i64 [ %i.gx, %.preheader133.i ], [ 0, %.preheader133.preheader.i ] ; 10 uses
  %.3146.i = phi i1 [ %i.gw, %.preheader133.i ], [ false, %.preheader133.preheader.i ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.076147.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.da = add nsw i64 %.076147.i, %.092169.i
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7, !noalias !679
  %i.de = lshr i8 %i.dd, %i.bo
  %i.df = trunc i8 %i.de to i1
  %i.dg = icmp ult i64 %i.cz, %.48.val
  %i.dh = icmp ugt i64 %i.cz, %.48.val1
  %spec.select129.i = or i1 %i.dg, %i.dh
  %i.di = select i1 %i.df, i1 %spec.select129.i, i1 false
  %i.dj = or i1 %.3146.i, %i.di
  %i.dk = or disjoint i64 %.076147.i, 1           ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.dn = add nsw i64 %i.dk, %.092169.i
  %i.do = lshr i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !7, !noalias !679
  %i.dr = lshr i8 %i.dq, %i.bq
  %i.ds = trunc i8 %i.dr to i1
  %i.dt = icmp ult i64 %i.dm, %.48.val
  %i.du = icmp ugt i64 %i.dm, %.48.val1
  %spec.select129.1.i = or i1 %i.dt, %i.du
  %i.dv = select i1 %i.ds, i1 %spec.select129.1.i, i1 false
  %i.dw = or i1 %i.dj, %i.dv
  %i.dx = or disjoint i64 %.076147.i, 2           ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.ea = add nsw i64 %i.dx, %.092169.i
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !7, !noalias !679
  %i.ee = lshr i8 %i.ed, %i.bs
  %i.ef = trunc i8 %i.ee to i1
  %i.eg = icmp ult i64 %i.dz, %.48.val
  %i.eh = icmp ugt i64 %i.dz, %.48.val1
  %spec.select129.2.i = or i1 %i.eg, %i.eh
  %i.ei = select i1 %i.ef, i1 %spec.select129.2.i, i1 false
  %i.ej = or i1 %i.dw, %i.ei
  %i.ek = or disjoint i64 %.076147.i, 3           ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.en = add nsw i64 %i.ek, %.092169.i
  %i.eo = lshr i64 %i.en, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !7, !noalias !679
  %i.er = lshr i8 %i.eq, %i.bu
  %i.es = trunc i8 %i.er to i1
  %i.et = icmp ult i64 %i.em, %.48.val
  %i.eu = icmp ugt i64 %i.em, %.48.val1
  %spec.select129.3.i = or i1 %i.et, %i.eu
  %i.ev = select i1 %i.es, i1 %spec.select129.3.i, i1 false
  %i.ew = or i1 %i.ej, %i.ev
  %i.ex = or disjoint i64 %.076147.i, 4           ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.fa = add nsw i64 %i.ex, %.092169.i
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !7, !noalias !679
  %i.fe = lshr i8 %i.fd, %i.bw
  %i.ff = trunc i8 %i.fe to i1
  %i.fg = icmp ult i64 %i.ez, %.48.val
  %i.fh = icmp ugt i64 %i.ez, %.48.val1
  %spec.select129.4.i = or i1 %i.fg, %i.fh
  %i.fi = select i1 %i.ff, i1 %spec.select129.4.i, i1 false
  %i.fj = or i1 %i.ew, %i.fi
  %i.fk = or disjoint i64 %.076147.i, 5           ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.fn = add nsw i64 %i.fk, %.092169.i
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !7, !noalias !679
  %i.fr = lshr i8 %i.fq, %i.by
  %i.fs = trunc i8 %i.fr to i1
  %i.ft = icmp ult i64 %i.fm, %.48.val
  %i.fu = icmp ugt i64 %i.fm, %.48.val1
  %spec.select129.5.i = or i1 %i.ft, %i.fu
  %i.fv = select i1 %i.fs, i1 %spec.select129.5.i, i1 false
  %i.fw = or i1 %i.fj, %i.fv
  %i.fx = or disjoint i64 %.076147.i, 6           ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.ga = add nsw i64 %i.fx, %.092169.i
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !7, !noalias !679
  %i.ge = lshr i8 %i.gd, %i.ca
  %i.gf = trunc i8 %i.ge to i1
  %i.gg = icmp ult i64 %i.fz, %.48.val
  %i.gh = icmp ugt i64 %i.fz, %.48.val1
  %spec.select129.6.i = or i1 %i.gg, %i.gh
  %i.gi = select i1 %i.gf, i1 %spec.select129.6.i, i1 false
  %i.gj = or i1 %i.fw, %i.gi
  %i.gk = or disjoint i64 %.076147.i, 7           ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.gn = add nsw i64 %i.gk, %.092169.i
  %i.go = lshr i64 %i.gn, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !7, !noalias !679
  %i.gr = lshr i8 %i.gq, %i.cc
  %i.gs = trunc i8 %i.gr to i1
  %i.gt = icmp ult i64 %i.gm, %.48.val
  %i.gu = icmp ugt i64 %i.gm, %.48.val1
  %spec.select129.7.i = or i1 %i.gt, %i.gu
  %i.gv = select i1 %i.gs, i1 %spec.select129.7.i, i1 false
  %i.gw = or i1 %i.gj, %i.gv                      ; 2 uses
  %i.gx = add nuw nsw i64 %.076147.i, 8
  %i.gy = add nuw nsw i64 %.075148.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gy, %smax.i
  br i1 %exitcond.not.i, label %.preheader139.loopexit.i, label %.preheader133.i, !llvm.loop !688

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i
  %.2151.i = phi i64 [ %i.ic, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i ], [ %.2151.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit ] ; 4 uses
  %.5150.i = phi i1 [ %i.ib, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i ], [ %.5150.i.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.2151.i
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.hb = add nsw i64 %.2151.i, %.092169.i        ; 2 uses
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !7, !noalias !679
  %i.hf = trunc i64 %i.hb to i8
  %i.hg = and i8 %i.hf, 7
  %i.hh = lshr i8 %i.he, %i.hg
  %i.hi = trunc i8 %i.hh to i1
  %i.hj = icmp ult i64 %i.ha, %.48.val
  %i.hk = icmp ugt i64 %i.ha, %.48.val1
  %spec.select130.i = or i1 %i.hj, %i.hk
  %i.hl = select i1 %i.hi, i1 %spec.select130.i, i1 false
  %i.hm = or i1 %.5150.i, %i.hl
  %i.hn = add nuw nsw i64 %.2151.i, 1             ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !30, !noalias !679 ; 2 uses
  %i.hq = add nsw i64 %i.hn, %.092169.i           ; 2 uses
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !7, !noalias !679
  %i.hu = trunc i64 %i.hq to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = lshr i8 %i.ht, %i.hv
  %i.hx = trunc i8 %i.hw to i1
  %i.hy = icmp ult i64 %i.hp, %.48.val
  %i.hz = icmp ugt i64 %i.hp, %.48.val1
  %spec.select130.i.1 = or i1 %i.hy, %i.hz
  %i.ia = select i1 %i.hx, i1 %spec.select130.i.1, i1 false
  %i.ib = or i1 %i.hm, %i.ia                      ; 2 uses
  %i.ic = add nuw nsw i64 %.2151.i, 2             ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %i.ic, %i.ce
  br i1 %exitcond187.not.i.1, label %.loopexit.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i, !llvm.loop !689

.loopexit.i:                                      ; preds = %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i, %middle.block, %.preheader139.i, %.preheader137.i
  %.6.i = phi i1 [ %i.bh, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit119.i ], [ %.085.lcssa.i, %.preheader137.i ], [ %.3.lcssa.i, %.preheader139.i ], [ %i.as, %middle.block ], [ %.lcssa48.unr, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i.prol.loopexit ], [ %i.ib, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit120.i ]
  br i1 %.6.i, label %bb.e, label %.critedge.i, !prof !557

bb.e:                                             ; preds = %.loopexit.i
  %i.id = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1), !noalias !679
  %i.ie = icmp sgt i64 %i.id, 0
  %i.if = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %.not99166.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.ie, label %.preheader134.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph.i, label %.critedge.i

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not99166.i, label %.lr.ph168.i, label %.critedge.i

.lr.ph168.i:                                      ; preds = %.preheader134.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i
  %.073167.i = phi i64 [ %i.is, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i ], [ 0, %.preheader134.i ] ; 3 uses
  %i.ig = add nsw i64 %.073167.i, %.092169.i      ; 2 uses
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !7, !noalias !679
  %i.ik = trunc i64 %i.ig to i8
  %i.il = and i8 %i.ik, 7
  %i.im = lshr i8 %i.ij, %i.il
  %i.in = trunc i8 %i.im to i1
  br i1 %i.in, label %bb.f, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i

bb.f:                                             ; preds = %.lr.ph168.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.073167.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !30, !noalias !679 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %.48.val
  %i.ir = icmp ugt i64 %i.ip, %.48.val1
  %or.cond131.i = or i1 %i.iq, %i.ir
  br i1 %or.cond131.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i: ; preds = %bb.f
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.ip)
  br label %.critedge103.i

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i: ; preds = %bb.f, %.lr.ph168.i
  %i.is = add nuw nsw i64 %.073167.i, 1           ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.is, %i.if
  br i1 %exitcond193.not.i, label %.critedge.i, label %.lr.ph168.i, !llvm.loop !690

bb.g:                                             ; preds = %.lr.ph.i
  %i.it = add nuw nsw i64 %.0165.i, 1             ; 2 uses
  %exitcond192.not.i = icmp eq i64 %i.it, %i.if
  br i1 %exitcond192.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !691

.lr.ph.i:                                         ; preds = %.preheader135.i, %bb.g
  %.0165.i = phi i64 [ %i.it, %bb.g ], [ 0, %.preheader135.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.088173.i, i64 %.0165.i
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !30, !noalias !679 ; 3 uses
  %i.iw = icmp ult i64 %i.iv, %.48.val
  %i.ix = icmp ugt i64 %i.iv, %.48.val1
  %or.cond132.i = or i1 %i.iw, %i.ix
  br i1 %or.cond132.i, label %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i, label %bb.g

_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i: ; preds = %.lr.ph.i
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE0_clEm(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %i.a, ptr nonnull %i.b, i64 noundef %i.iv)
  br label %.critedge103.i

.critedge.i:                                      ; preds = %bb.g, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread127.i, %.preheader134.i, %.preheader135.i, %.loopexit.i, %bb.d
  %i.iy = sext i32 %i.u to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %.088173.i, i64 %i.iy
  %i.ja = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.jb = add nsw i64 %.090172.i, %i.ja           ; 2 uses
  %i.jc = add nsw i64 %.092169.i, %i.ja
  %i.jd = load i64, ptr %i.i, align 8, !tbaa !291, !noalias !679
  %i.je = icmp slt i64 %i.jb, %i.jd
  br i1 %i.je, label %.lr.ph176.i, label %._crit_edge.i, !llvm.loop !692

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !311, !alias.scope !693
  br label %.critedge103.i

.critedge103.i:                                   ; preds = %._crit_edge.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmE_clEm.exit122.thread.i, %_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt64TypeEmEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlmbE_clEmb.exit121.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !679
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
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !260  ; 9 uses
  %.off.i = add i32 %i.b, -2
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22, !noalias !696
  call void @_ZN5arrow8internal12JoinToStringIJRA37_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(37) @.str.2, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !696
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %19, align 8, !tbaa !307, !noalias !696 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !696
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %19, align 8, !tbaa !307, !noalias !696 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !7, !noalias !696
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %bb.it, %bb.ho, %bb.gj, %bb.fe, %bb.dz, %bb.cu, %bb.bp, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %.pn.i, %bb.ak ], [ %.pn.i30, %bb.bp ], [ %.pn.i56, %bb.cu ], [ %.pn.i83, %bb.dz ], [ %.pn.i109, %bb.fe ], [ %.pn.i135, %bb.gj ], [ %.pn.i161, %bb.ho ], [ %.pn.i187, %bb.it ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22, !noalias !696
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA37_KcRKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22, !noalias !696
  br label %bb.iv

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !277
end_hunk_4
