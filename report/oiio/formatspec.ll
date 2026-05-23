inline.NumInlined: 8159
inline.NumDeleted: 2480
begin_hunk_0_@_ZN11OpenImageIO4v3_14pugi4impl22convert_buffer_genericINS2_13utf16_decoderINS2_9opt_falseEEEEEbRPcRmPKvmT_:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !995 ; 2 uses
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 64512
  %i.bz = icmp eq i32 %i.by, 56320
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = shl nuw nsw i32 %i.ac, 10               ; 2 uses
  %i.cb = and i32 %i.ca, 1047552
  %i.cc = add nuw nsw i32 %i.cb, 65536            ; 2 uses
  %i.cd = and i32 %i.bx, 960
  %i.ce = or disjoint i32 %i.cd, %i.ca
  %i.cf = lshr i32 %i.cc, 18
  %i.cg = lshr i32 %i.cc, 12
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = lshr exact i32 %i.ce, 6
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = trunc i16 %i.bw to i8
  %i.cl = trunc nuw nsw i32 %i.cf to i8
  %i.cm = insertelement <4 x i8> poison, i8 %i.cl, i64 0
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.ch, i64 1
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.cj, i64 2
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.ck, i64 3
  %i.cq = and <4 x i8> %i.cp, <i8 -1, i8 63, i8 63, i8 63>
  %i.cr = or disjoint <4 x i8> %i.cq, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.cr, ptr %.02937.i20, align 1, !tbaa !62
  %i.cs = getelementptr inbounds nuw i8, ptr %.02937.i20, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.039.i18, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35.i, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i
  %.sink.i22 = phi i64 [ -2, %bb.q ], [ -1, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i ], [ -1, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35.i ], [ -1, %bb.p ], [ -1, %bb.o ]
  %.231.i23 = phi ptr [ %i.cs, %bb.q ], [ %i.ba, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i ], [ %i.bq, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35.i ], [ %.02937.i20, %bb.p ], [ %.02937.i20, %bb.o ] ; 2 uses
  %.2.i24 = phi ptr [ %i.ct, %bb.q ], [ %i.bb, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i ], [ %i.br, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35.i ], [ %i.bv, %bb.p ], [ %i.bv, %bb.o ]
  %i.cu = add i64 %.sink.i22, %.02638.i19         ; 2 uses
  %.not.i25 = icmp eq i64 %i.cu, 0
  br i1 %.not.i25, label %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKtmS9_S8_.exit, label %.lr.ph.i17, !llvm.loop !1128

_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKtmS9_S8_.exit: ; preds = %bb.r, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.thread
  %.029.lcssa.i3541 = phi i64 [ 1, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.thread ], [ %i.w, %bb.r ]
  %i.cv = phi ptr [ %i.aa, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.thread ], [ %i.y, %bb.r ]
  %.029.lcssa.i26 = phi ptr [ %i.aa, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.thread ], [ %.231.i23, %bb.r ]
  store i8 0, ptr %.029.lcssa.i26, align 1, !tbaa !62
  store ptr %i.cv, ptr %0, align 8, !tbaa !113
  store i64 %.029.lcssa.i3541, ptr %1, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.thread, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKtmS9_S8_.exit
  %.not36 = phi i1 [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.thread ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit ], [ true, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKtmS9_S8_.exit ]
  ret i1 %.not36
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_8opt_trueEE7processINS2_11utf8_writerEEENT_10value_typeEPKtmS9_S8_(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not37 = icmp eq i64 %1, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.040 = phi ptr [ %.2, %bb.k ], [ %0, %bb.a ]   ; 5 uses
  %.02639 = phi i64 [ %i.bt, %bb.k ], [ %1, %bb.a ] ; 2 uses
  %.02938 = phi ptr [ %.231, %bb.k ], [ %2, %bb.a ] ; 15 uses
  %i.a = load i16, ptr %.040, align 2, !tbaa !995
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 13 uses
  %i.b = zext i16 %rev.i to i32                   ; 3 uses
  %i.c = icmp ult i16 %rev.i, -10240
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i16 %rev.i, 128
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i16 %rev.i to i8
  store i8 %i.e, ptr %.02938, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i16 %rev.i, 2048
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i16 %rev.i, 6
  %i.h = trunc nuw nsw i16 %i.g to i8
  %i.i = or disjoint i8 %i.h, -64
  store i8 %i.i, ptr %.02938, align 1, !tbaa !62
  %i.j = trunc i16 %rev.i to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128
  %i.m = getelementptr inbounds nuw i8, ptr %.02938, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit

bb.f:                                             ; preds = %bb.d
  %i.n = lshr i16 %rev.i, 12
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = or disjoint i8 %i.o, -32
  store i8 %i.p, ptr %.02938, align 1, !tbaa !62
  %i.q = lshr i16 %rev.i, 6
  %i.r = trunc i16 %i.q to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = getelementptr inbounds nuw i8, ptr %.02938, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !62
  %i.v = trunc i16 %rev.i to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %.02938, i64 2
  store i8 %i.x, ptr %i.y, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sink.i = phi i64 [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.02938, i64 %.sink.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.040, i64 2
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.ab = and i32 %i.b, 57344
  %i.ac = icmp eq i32 %i.ab, 57344
  br i1 %i.ac, label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35, label %bb.h

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35: ; preds = %bb.g
  %i.ad = lshr i16 %rev.i, 12
  %i.ae = trunc nuw nsw i16 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, -32
  store i8 %i.af, ptr %.02938, align 1, !tbaa !62
  %i.ag = lshr i16 %rev.i, 6
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = getelementptr inbounds nuw i8, ptr %.02938, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !62
  %i.al = trunc i16 %rev.i to i8
  %i.am = and i8 %i.al, 63
  %i.an = or disjoint i8 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %.02938, i64 2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %.02938, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.040, i64 2
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ar = and i32 %i.b, 64512
  %i.as = icmp eq i32 %i.ar, 55296
  %i.at = icmp ne i64 %.02639, 1
  %or.cond = and i1 %i.at, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.040, i64 2 ; 3 uses
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = load i16, ptr %i.au, align 2, !tbaa !995
  %rev.i36 = tail call noundef i16 @llvm.bswap.i16(i16 %i.av) ; 2 uses
  %i.aw = zext i16 %rev.i36 to i32                ; 2 uses
  %i.ax = and i32 %i.aw, 64512
  %i.ay = icmp eq i32 %i.ax, 56320
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = shl nuw nsw i32 %i.b, 10                ; 2 uses
  %i.ba = and i32 %i.az, 1047552
  %i.bb = add nuw nsw i32 %i.ba, 65536            ; 2 uses
  %i.bc = and i32 %i.aw, 960
  %i.bd = or disjoint i32 %i.bc, %i.az
  %i.be = lshr i32 %i.bb, 18
  %i.bf = lshr i32 %i.bb, 12
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = lshr exact i32 %i.bd, 6
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = trunc i16 %rev.i36 to i8
  %i.bk = trunc nuw nsw i32 %i.be to i8
  %i.bl = insertelement <4 x i8> poison, i8 %i.bk, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bg, i64 1
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bi, i64 2
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bj, i64 3
  %i.bp = and <4 x i8> %i.bo, <i8 -1, i8 63, i8 63, i8 63>
  %i.bq = or disjoint <4 x i8> %i.bp, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bq, ptr %.02938, align 1, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %.02938, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.040, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit
  %.sink = phi i64 [ -2, %bb.j ], [ -1, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit ], [ -1, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35 ], [ -1, %bb.i ], [ -1, %bb.h ]
  %.231 = phi ptr [ %i.br, %bb.j ], [ %i.z, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit ], [ %i.ap, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35 ], [ %.02938, %bb.i ], [ %.02938, %bb.h ] ; 2 uses
  %.2 = phi ptr [ %i.bs, %bb.j ], [ %i.aa, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit ], [ %i.aq, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit35 ], [ %i.au, %bb.i ], [ %i.au, %bb.h ]
  %i.bt = add i64 %.02639, %.sink                 ; 2 uses
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1129

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.029.lcssa = phi ptr [ %2, %bb.a ], [ %.231, %bb.k ]
  ret ptr %.029.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #12 align 2 {
switch.lookup:
  %i.a = alloca ptr, align 8                      ; 21 uses
  %i.b = lshr i32 %3, 4                           ; 2 uses
  %i.c = and i32 %i.b, 15
  %i.d = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = and i32 %i.b, 3
  %i.f = lshr i32 %3, 9
  %i.g = and i32 %i.f, 4
  %i.h = or disjoint i32 %i.e, %i.g
  %i.i = zext nneg i32 %i.h to i64
  %switch.gep813 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc.4, i64 %i.i
  %switch.load814 = load ptr, ptr %switch.gep813, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store ptr %2, ptr %i.a, align 8, !tbaa !301
  %i.j = and i32 %3, 1032
  %.not215 = icmp ne i32 %i.j, 0
  %i.k = and i32 %3, 2048
  %.not216 = icmp eq i32 %i.k, 0                  ; 2 uses
  %or.cond265 = and i1 %.not215, %.not216
  %i.l = and i32 %3, 1024
  %.not217 = icmp eq i32 %i.l, 0
  %i.m = and i32 %3, 4096
  %.not223 = icmp eq i32 %i.m, 0
  %i.n = and i32 %3, 8192
  %.not227 = icmp eq i32 %i.n, 0
  %.not250 = icmp eq i8 %4, 62                    ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %switch.lookup
  %.0187 = phi ptr [ %1, %switch.lookup ], [ %.0187.be, %.backedge.backedge ] ; 6 uses
  %i.o = load i8, ptr %.0187, align 1, !tbaa !62  ; 3 uses
  switch i8 %i.o, label %.preheader313 [
    i8 0, label %.loopexit.loopexit422
    i8 60, label %thread-pre-split
  ]

.preheader313:                                    ; preds = %.backedge
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14chartype_tableE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !62
  %i.s = and i8 %i.r, 8
  %.not213402 = icmp eq i8 %i.s, 0
  br i1 %.not213402, label %._crit_edge, label %.lr.ph

thread-pre-split:                                 ; preds = %.preheader312, %.backedge
  %.19.pn = phi ptr [ %.0187, %.backedge ], [ %.19, %.preheader312 ]
  %.1188.ph = getelementptr inbounds nuw i8, ptr %.19.pn, i64 1 ; 2 uses
  %.pr = load i8, ptr %.1188.ph, align 1, !tbaa !62
  br label %bb.a

bb.a:                                             ; preds = %thread-pre-split, %bb.co
  %i.t = phi i8 [ %.pr, %thread-pre-split ], [ %i.le, %bb.co ] ; 3 uses
  %.1188 = phi ptr [ %.1188.ph, %thread-pre-split ], [ %i.ld, %bb.co ] ; 7 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14chartype_tableE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  %.not234 = icmp sgt i8 %i.w, -1
  br i1 %.not234, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !301  ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !1110   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !290 ; 2 uses
  %i.ab = add i64 %i.aa, 64                       ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 32728
  br i1 %i.ac, label %bb.c, label %bb.e, !prof !126

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !18
  %i.ae = call noundef ptr %i.ad(i64 noundef 32768), !inline_history !1130 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !294
  %i.ag = load i64, ptr %i.z, align 8, !tbaa !290
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !288 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !280
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !296
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !297
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !288
  store i64 64, ptr %i.z, align 8, !tbaa !290
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !288 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !290
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05.ph.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.al, %bb.e ]
  %.0.i.i.ph.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.an, %bb.e ] ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i, i64 8 ; 2 uses
  %i.ap = ptrtoint ptr %.0.i.i.ph.i.i to i64
  %i.aq = ptrtoint ptr %.05.ph.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = shl i64 %i.ar, 8
  %i.at = or disjoint i64 %i.as, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 56, i1 false)
  store i64 %i.at, ptr %.0.i.i.ph.i.i, align 8, !tbaa !284
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i, i64 24
  store ptr %i.x, ptr %i.au, align 8, !tbaa !298
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !293 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store ptr %.0.i.i.ph.i.i, ptr %i.az, align 8, !tbaa !300
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i, i64 40
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !293
  store ptr %.0.i.i.ph.i.i, ptr %i.ax, align 8, !tbaa !293
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store ptr %.0.i.i.ph.i.i, ptr %i.av, align 8, !tbaa !299
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i, i64 40
  store ptr %.0.i.i.ph.i.i, ptr %i.bb, align 8, !tbaa !293
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1188, ptr %i.bc, align 8, !tbaa !1112
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3, ptr %i.bd, align 8, !tbaa !1113
  br label %.thread299

bb.j:                                             ; preds = %bb.h, %bb.g
  store ptr %.0.i.i.ph.i.i, ptr %i.a, align 8, !tbaa !301
  store ptr %.1188, ptr %i.ao, align 8, !tbaa !302
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.2189 = phi ptr [ %.1188, %bb.j ], [ %i.cb, %bb.n ] ; 9 uses
  %i.be = load i8, ptr %.2189, align 1, !tbaa !62 ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14chartype_tableE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !62  ; 2 uses
  %i.bi = and i8 %i.bh, 64
  %.not245 = icmp eq i8 %i.bi, 0
  br i1 %.not245, label %select.unfold, label %bb.l, !prof !126

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.2189, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !62  ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14chartype_tableE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62  ; 2 uses
  %i.bo = and i8 %i.bn, 64
  %.not246 = icmp eq i8 %i.bo, 0
  br i1 %.not246, label %select.unfold.split.loop.exit640, label %bb.m, !prof !126

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.2189, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62  ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14chartype_tableE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62  ; 2 uses
  %i.bu = and i8 %i.bt, 64
  %.not247 = icmp eq i8 %i.bu, 0
  br i1 %.not247, label %select.unfold.split.loop.exit636, label %bb.n, !prof !126

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.2189, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62  ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14chartype_tableE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62  ; 2 uses
  %i.ca = and i8 %i.bz, 64
  %.not248 = icmp eq i8 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.2189, i64 4
  br i1 %.not248, label %select.unfold.split.loop.exit644, label %bb.k, !prof !126

select.unfold.split.loop.exit636:                 ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.2189, i64 2
  br label %select.unfold

select.unfold.split.loop.exit640:                 ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %.2189, i64 1
  br label %select.unfold

select.unfold.split.loop.exit644:                 ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.2189, i64 3
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %select.unfold.split.loop.exit644, %select.unfold.split.loop.exit640, %select.unfold.split.loop.exit636
  %i.cf = phi i8 [ %i.bz, %select.unfold.split.loop.exit644 ], [ %i.bn, %select.unfold.split.loop.exit640 ], [ %i.bt, %select.unfold.split.loop.exit636 ], [ %i.bh, %bb.k ]
  %i.cg = phi i8 [ %i.bw, %select.unfold.split.loop.exit644 ], [ %i.bk, %select.unfold.split.loop.exit640 ], [ %i.bq, %select.unfold.split.loop.exit636 ], [ %i.be, %bb.k ] ; 2 uses
  %.3190.ph = phi ptr [ %i.ce, %select.unfold.split.loop.exit644 ], [ %i.cd, %select.unfold.split.loop.exit640 ], [ %i.cc, %select.unfold.split.loop.exit636 ], [ %.2189, %bb.k ] ; 4 uses
  store i8 0, ptr %.3190.ph, align 1, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %.3190.ph, i64 1 ; 7 uses
  %i.ci = icmp eq i8 %i.cg, 62
  br i1 %i.ci, label %.backedge.backedge, label %bb.o

bb.o:                                             ; preds = %select.unfold
end_hunk_0
