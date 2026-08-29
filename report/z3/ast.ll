Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast?download=true
inline.NumInlined: 4960
inline.NumDeleted: 1839
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
define linkonce_odr hidden ptr @_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i128 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [131 x i8], align 16              ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i128 %1, 128
  %or.cond.i = icmp ult i128 %i.f, 256
  br i1 %or.cond.i, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.176) #41
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nsw i128 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !72
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.i = icmp slt i128 %1, 0
  %.045 = tail call i128 @llvm.abs.i128(i128 %1, i1 false) ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 131
  %i.l = lshr i16 %i.c, 11
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.aa [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.v
    i16 6, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = icmp eq i16 %i.d, 4096
  %.str.171..str.172 = select i1 %i.n, ptr @.str.171, ptr @.str.172 ; 4 uses
  %i.o = icmp eq i128 %1, 0
  br i1 %i.o, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i128 %.045, 64                      ; 2 uses
  %.not.i.i.i.i46.i = icmp eq i128 %i.p, 0
  br i1 %.not.i.i.i.i46.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread: ; preds = %bb.f
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true) ; 2 uses
  %i.s = sub nuw nsw i64 128, %i.r
  br label %.lr.ph.preheader.i49.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i: ; preds = %bb.f
  %i.t = trunc nuw i128 %.045 to i64
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true) ; 3 uses
  %i.v = or disjoint i64 %i.u, 64
  %i.w = sub nuw nsw i64 64, %i.u
  %.not16.i.i = icmp eq i64 %i.u, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i49.i

.lr.ph.preheader.i49.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i
  %i.x = phi i64 [ %i.s, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.w, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 2 uses
  %.1.i.i.i.i48.i85 = phi i64 [ %i.r, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.v, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 4 uses
  %.015.i.i = sub nuw nsw i64 127, %.1.i.i.i.i48.i85 ; 2 uses
  %i.y = trunc nsw i64 %.1.i.i.i.i48.i85 to i32
  %i.z = and i32 %i.y, 1
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i50.i.prol, label %.lr.ph.i50.i.prol.loopexit

.lr.ph.i50.i.prol:                                ; preds = %.lr.ph.preheader.i49.i
  %i.aa = trunc i128 %.045 to i8
  %i.ab = and i8 %i.aa, 1
  %i.ac = or disjoint i8 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015.i.i
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !72
  %i.ae = lshr i128 %.045, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 126, %.1.i.i.i.i48.i85
  br label %.lr.ph.i50.i.prol.loopexit

.lr.ph.i50.i.prol.loopexit:                       ; preds = %.lr.ph.i50.i.prol, %.lr.ph.preheader.i49.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i49.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i50.i.prol ]
  %.01317.i.i.unr = phi i128 [ %.045, %.lr.ph.preheader.i49.i ], [ %i.ae, %.lr.ph.i50.i.prol ]
  %i.af = icmp eq i64 %.1.i.i.i.i48.i85, 126
  br i1 %i.af, label %.loopexit.sink.split, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i50.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i128 [ %i.aq, %.lr.ph.i50.i ], [ %.01317.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %i.ag = trunc i128 %.01317.i.i to i8
  %i.ah = and i8 %i.ag, 1
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !72
  %i.ak = lshr i128 %.01317.i.i, 1
  %i.al = trunc i128 %i.ak to i8
  %i.am = and i8 %i.al, 1
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !72
  %i.aq = lshr i128 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ar = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i50.i, !llvm.loop !1026

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.as = icmp eq i128 %1, 0
  br i1 %i.as, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp ult i128 %.045, 10
  %extract.t134 = trunc i128 %.045 to i8
  br i1 %i.at, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.029.i.i.i = phi i32 [ %i.bb, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i.i = phi i128 [ %i.ba, %bb.n ], [ %.045, %bb.h ] ; 5 uses
  %i.au = icmp ult i128 %.02328.i.i.i, 100
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.av = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = icmp ult i128 %.02328.i.i.i, 1000
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = icmp ult i128 %.02328.i.i.i, 10000
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = udiv i128 %.02328.i.i.i, 10000
  %i.bb = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.bc = icmp ult i128 %.02328.i.i.i, 100000
  br i1 %i.bc, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1027

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.av, %bb.i ], [ %i.ax, %bb.k ], [ %i.bb, %bb.n ] ; 4 uses
  %i.bd = icmp ugt i32 %.022.i.i.i, 128
  br i1 %i.bd, label %.thread94, label %bb.o, !prof !893

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i
  %i.be = icmp ugt i128 %.045, 99
  br i1 %i.be, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.bf = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i128 [ %i.bg, %.lr.ph.i9.i.i ], [ %.045, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01819.i.i.i = phi i32 [ %i.bs, %.lr.ph.i9.i.i ], [ %i.bf, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.020.i.i.i.frozen = freeze i128 %.020.i.i.i    ; 2 uses
  %i.bg = udiv i128 %.020.i.i.i.frozen, 100       ; 3 uses
  %i.bh = mul i128 %i.bg, 100
  %.decomposed = sub i128 %.020.i.i.i.frozen, %i.bh
  %.tr.i.i.i = trunc nuw nsw i128 %.decomposed to i64
  %i.bi = shl nuw nsw i64 %.tr.i.i.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !72
  %i.bm = zext i32 %.01819.i.i.i to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bm
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !72
  %i.bo = load i8, ptr %i.bj, align 2, !tbaa !72
  %i.bp = add i32 %.01819.i.i.i, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bq
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !72
  %i.bs = add i32 %.01819.i.i.i, -2
  %i.bt = icmp ugt i128 %.020.i.i.i, 9999
  br i1 %i.bt, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1028

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i128 [ %.045, %bb.o ], [ %i.bg, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bu = icmp samesign ugt i128 %.0.lcssa.i.i.i, 9
  %extract.t = trunc i128 %.0.lcssa.i.i.i to i8
  br i1 %i.bu, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %.0.tr.i.i.i = trunc nuw nsw i128 %.0.lcssa.i.i.i to i64
  %i.bv = shl nuw nsw i64 %.0.tr.i.i.i, 1
  %i.bw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.by, ptr %i.bz, align 4, !tbaa !72
  %i.ca = load i8, ptr %i.bw, align 2, !tbaa !72
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i127.off0 = phi i8 [ %extract.t, %._crit_edge.i.i.i ], [ %extract.t134, %bb.h ]
  %.022.i.i.i121123126 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.cb = or disjoint i8 %.0.lcssa.i.i.i127.off0, 48
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink120.i52 = phi i8 [ 48, %bb.g ], [ %i.ca, %bb.p ], [ %i.cb, %._crit_edge.i.i.i.thread ]
  %.sink.i53.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i121123126, %._crit_edge.i.i.i.thread ]
  %.sink.i53 = zext nneg i32 %.sink.i53.shrunk to i64
  store i8 %.sink120.i52, ptr %i.j, align 1, !tbaa !72
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i53
  br label %.thread94

bb.q:                                             ; preds = %bb.d
  %.not49 = icmp ne i128 %1, 0                    ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.173, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  %i.cd = icmp eq i128 %1, 0
  br i1 %i.cd, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = lshr i128 %.045, 64                     ; 2 uses
  %.not.i.i.i.i29.i = icmp eq i128 %i.ce, 0
  br i1 %.not.i.i.i.i29.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc nuw i128 %i.ce to i64
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

bb.t:                                             ; preds = %bb.r
  %i.ci = trunc nuw i128 %.045 to i64
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = or disjoint i8 %i.ck, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i: ; preds = %bb.t, %bb.s
  %.1.i.i.i.i31.i = phi i8 [ %i.cl, %bb.t ], [ %i.ch, %bb.s ]
  %.lhs.trunc.i.i = sub nuw i8 -126, %.1.i.i.i.i31.i
  %i.cm = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = icmp ugt i128 %.045, 63
  br i1 %i.co, label %.lr.ph.preheader.i41.i, label %._crit_edge.i32.i

.lr.ph.preheader.i41.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.zext.i.i = zext nneg i8 %i.cm to i32
  %i.cp = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.preheader.i41.i
  %.031.i43.i = phi i32 [ %i.dc, %.lr.ph.i42.i ], [ %i.cp, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.cv, %.lr.ph.i42.i ], [ %.045, %.lr.ph.preheader.i41.i ] ; 3 uses
  %i.cq = trunc i128 %.02830.i44.i to i8          ; 2 uses
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = zext i32 %.031.i43.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !72
  %i.cv = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %i.cw = lshr i8 %i.cq, 3
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = add nsw i32 %.031.i43.i, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !72
  %i.dc = add nsw i32 %.031.i43.i, -2
  %i.dd = icmp ugt i128 %.02830.i44.i, 4095
  br i1 %i.dd, label %.lr.ph.i42.i, label %._crit_edge.i32.i, !llvm.loop !1029

._crit_edge.i32.i:                                ; preds = %.lr.ph.i42.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.028.lcssa.i33.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i ], [ %i.cv, %.lr.ph.i42.i ] ; 3 uses
  %i.de = icmp samesign ugt i128 %.028.lcssa.i33.i, 7
  %extract.t38.i.i = trunc i128 %.028.lcssa.i33.i to i8 ; 2 uses
  br i1 %i.de, label %bb.u, label %._crit_edge.thread.i34.i

bb.u:                                             ; preds = %._crit_edge.i32.i
  %i.df = lshr i128 %.028.lcssa.i33.i, 3
  %i.dg = and i8 %extract.t38.i.i, 7
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.dh, ptr %i.di, align 4, !tbaa !72
  %extract.t.i40.i = trunc i128 %i.df to i8
  br label %._crit_edge.thread.i34.i

._crit_edge.thread.i34.i:                         ; preds = %bb.u, %._crit_edge.i32.i
  %.028.lcssa37.sink.off0.i.i = phi i8 [ %extract.t.i40.i, %bb.u ], [ %extract.t38.i.i, %._crit_edge.i32.i ]
  %storemerge.i35.i = or disjoint i8 %.028.lcssa37.sink.off0.i.i, 48
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.d, %bb.d
  %i.dj = icmp eq i16 %i.d, 10240
  %.str.174..str.175 = select i1 %i.dj, ptr @.str.174, ptr @.str.175 ; 2 uses
  %i.dk = icmp eq i128 %1, 0
  br i1 %i.dk, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = lshr i128 %.045, 64                     ; 2 uses
  %.not.i.i.i.i.i = icmp eq i128 %i.dl, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = trunc nuw i128 %i.dl to i64
  %i.dn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.dp = trunc nuw i128 %.045 to i64
  %i.dq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.dr, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i: ; preds = %bb.y, %bb.x
  %.1.i.i.i.i.i = phi i32 [ %i.ds, %bb.y ], [ %i.do, %bb.x ]
  %i.dt = sub nuw nsw i32 131, %.1.i.i.i.i.i
  %i.du = lshr i32 %i.dt, 2                       ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = icmp ugt i128 %.045, 255
  br i1 %i.dw, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %i.dx = add nsw i32 %i.du, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.em, %.lr.ph.i.i ], [ %i.dx, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.ee, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dy = trunc i128 %.02830.i.i to i64           ; 2 uses
  %i.dz = and i64 %i.dy, 15
  %i.ea = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !72
  %i.ec = zext i32 %.031.i.i to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ec
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !72
  %i.ee = lshr i128 %.02830.i.i, 8                ; 2 uses
  %i.ef = lshr i64 %i.dy, 4
  %i.eg = and i64 %i.ef, 15
  %i.eh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !72
  %i.ej = add nsw i32 %.031.i.i, -1
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ek
  store i8 %i.ei, ptr %i.el, align 1, !tbaa !72
  %i.em = add nsw i32 %.031.i.i, -2
  %i.en = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.en, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1030

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.ee, %.lr.ph.i.i ] ; 3 uses
  %i.eo = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.eo, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ep = lshr i128 %.028.lcssa.i.i, 4
  %i.eq = and i64 %extract.t37.i.i, 15
  %i.er = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !72
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.es, ptr %i.et, align 4, !tbaa !72
  %extract.t.i.i = trunc i128 %i.ep to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !72
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i66 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i67 = phi i64 [ %i.dv, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i66, ptr %i.j, align 1, !tbaa !72
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i67 ; 3 uses
  %.not119 = icmp eq i16 %i.d, 12288
  br i1 %.not119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, %.lr.ph
  %.0107 = phi ptr [ %i.ez, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ] ; 3 uses
  %i.ev = load i8, ptr %.0107, align 1, !tbaa !72
  %i.ew = sext i8 %i.ev to i32
  %i.ex = call i32 @toupper(i32 noundef %i.ew) #43
  %i.ey = trunc i32 %i.ex to i8
  store i8 %i.ey, ptr %.0107, align 1, !tbaa !72
  %i.ez = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ez, %i.eu
end_hunk_0
begin_hunk_1_@_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i128 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [131 x i8], align 16              ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i128 %1, 128
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.176) #41
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nuw nsw i128 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !72
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 131
  %i.k = lshr i16 %i.c, 11
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.aa [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.v
    i16 6, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = icmp eq i16 %i.d, 4096
  %.str.171..str.172 = select i1 %i.m, ptr @.str.171, ptr @.str.172 ; 4 uses
  %i.n = icmp eq i128 %1, 0
  br i1 %i.n, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i128 %1, 64                         ; 2 uses
  %.not.i.i.i.i46.i = icmp eq i128 %i.o, 0
  br i1 %.not.i.i.i.i46.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread: ; preds = %bb.f
  %i.p = trunc nuw i128 %i.o to i64
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true) ; 2 uses
  %i.r = sub nuw nsw i64 128, %i.q
  br label %.lr.ph.preheader.i49.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i: ; preds = %bb.f
  %i.s = trunc nuw i128 %1 to i64
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true) ; 3 uses
  %i.u = or disjoint i64 %i.t, 64
  %i.v = sub nuw nsw i64 64, %i.t
  %.not16.i.i = icmp eq i64 %i.t, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i49.i

.lr.ph.preheader.i49.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i
  %i.w = phi i64 [ %i.r, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.v, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 2 uses
  %.1.i.i.i.i48.i84 = phi i64 [ %i.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i.thread ], [ %i.u, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ] ; 4 uses
  %.015.i.i = sub nuw nsw i64 127, %.1.i.i.i.i48.i84 ; 2 uses
  %i.x = trunc nsw i64 %.1.i.i.i.i48.i84 to i32
  %i.y = and i32 %i.x, 1
  %lcmp.mod.not.not = icmp eq i32 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i50.i.prol, label %.lr.ph.i50.i.prol.loopexit

.lr.ph.i50.i.prol:                                ; preds = %.lr.ph.preheader.i49.i
  %i.z = trunc i128 %1 to i8
  %i.aa = and i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %.015.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !72
  %i.ad = lshr i128 %1, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 126, %.1.i.i.i.i48.i84
  br label %.lr.ph.i50.i.prol.loopexit

.lr.ph.i50.i.prol.loopexit:                       ; preds = %.lr.ph.i50.i.prol, %.lr.ph.preheader.i49.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i49.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i50.i.prol ]
  %.01317.i.i.unr = phi i128 [ %1, %.lr.ph.preheader.i49.i ], [ %i.ad, %.lr.ph.i50.i.prol ]
  %i.ae = icmp eq i64 %.1.i.i.i.i48.i84, 126
  br i1 %i.ae, label %.loopexit.sink.split, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i50.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i128 [ %i.ap, %.lr.ph.i50.i ], [ %.01317.i.i.unr, %.lr.ph.i50.i.prol.loopexit ] ; 3 uses
  %i.af = trunc i128 %.01317.i.i to i8
  %i.ag = and i8 %i.af, 1
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !72
  %i.aj = lshr i128 %.01317.i.i, 1
  %i.ak = trunc i128 %i.aj to i8
  %i.al = and i8 %i.ak, 1
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !72
  %i.ap = lshr i128 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.aq = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i50.i, !llvm.loop !1026

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ar = icmp eq i128 %1, 0
  br i1 %i.ar, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = icmp ult i128 %1, 10
  %extract.t138 = trunc i128 %1 to i8
  br i1 %i.as, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.029.i.i.i = phi i32 [ %i.ba, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i.i = phi i128 [ %i.az, %bb.n ], [ %1, %bb.h ] ; 5 uses
  %i.at = icmp ult i128 %.02328.i.i.i, 100
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.av = icmp ult i128 %.02328.i.i.i, 1000
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i128 %.02328.i.i.i, 10000
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = udiv i128 %.02328.i.i.i, 10000
  %i.ba = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.bb = icmp ult i128 %.02328.i.i.i, 100000
  br i1 %i.bb, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1027

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.ay, %bb.m ], [ %i.au, %bb.i ], [ %i.aw, %bb.k ], [ %i.ba, %bb.n ] ; 4 uses
  %i.bc = icmp ugt i32 %.022.i.i.i, 128
  br i1 %i.bc, label %.thread98, label %bb.o, !prof !893

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i
  %i.bd = icmp ugt i128 %1, 99
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.be = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i128 [ %i.bf, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01819.i.i.i = phi i32 [ %i.br, %.lr.ph.i9.i.i ], [ %i.be, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.020.i.i.i.frozen = freeze i128 %.020.i.i.i    ; 2 uses
  %i.bf = udiv i128 %.020.i.i.i.frozen, 100       ; 3 uses
  %i.bg = mul i128 %i.bf, 100
  %.decomposed = sub i128 %.020.i.i.i.frozen, %i.bg
  %.tr.i.i.i = trunc nuw nsw i128 %.decomposed to i64
  %i.bh = shl nuw nsw i64 %.tr.i.i.i, 1
  %i.bi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !72
  %i.bl = zext i32 %.01819.i.i.i to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !72
  %i.bn = load i8, ptr %i.bi, align 2, !tbaa !72
  %i.bo = add i32 %.01819.i.i.i, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !72
  %i.br = add i32 %.01819.i.i.i, -2
  %i.bs = icmp ugt i128 %.020.i.i.i, 9999
  br i1 %i.bs, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1028

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i128 [ %1, %bb.o ], [ %i.bf, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bt = icmp samesign ugt i128 %.0.lcssa.i.i.i, 9
  %extract.t = trunc i128 %.0.lcssa.i.i.i to i8
  br i1 %i.bt, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %.0.tr.i.i.i = trunc nuw nsw i128 %.0.lcssa.i.i.i to i64
  %i.bu = shl nuw nsw i64 %.0.tr.i.i.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !72
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !72
  %i.bz = load i8, ptr %i.bv, align 2, !tbaa !72
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i131.off0 = phi i8 [ %extract.t, %._crit_edge.i.i.i ], [ %extract.t138, %bb.h ]
  %.022.i.i.i125127130 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.ca = or disjoint i8 %.0.lcssa.i.i.i131.off0, 48
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink120.i51 = phi i8 [ 48, %bb.g ], [ %i.bz, %bb.p ], [ %i.ca, %._crit_edge.i.i.i.thread ]
  %.sink.i52.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i125127130, %._crit_edge.i.i.i.thread ]
  %.sink.i52 = zext nneg i32 %.sink.i52.shrunk to i64
  store i8 %.sink120.i51, ptr %i.i, align 1, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i52
  br label %.thread98

bb.q:                                             ; preds = %bb.d
  %.not48 = icmp eq i128 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = lshr i128 %1, 64                        ; 2 uses
  %.not.i.i.i.i29.i = icmp eq i128 %i.cc, 0
  br i1 %.not.i.i.i.i29.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc nuw i128 %i.cc to i64
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

bb.t:                                             ; preds = %bb.r
  %i.cg = trunc nuw i128 %1 to i64
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i: ; preds = %bb.t, %bb.s
  %.1.i.i.i.i31.i = phi i8 [ %i.cj, %bb.t ], [ %i.cf, %bb.s ]
  %.lhs.trunc.i.i = sub nuw i8 -126, %.1.i.i.i.i31.i
  %i.ck = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = icmp ugt i128 %1, 63
  br i1 %i.cm, label %.lr.ph.preheader.i41.i, label %._crit_edge.i32.i

.lr.ph.preheader.i41.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.zext.i.i = zext nneg i8 %i.ck to i32
  %i.cn = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.preheader.i41.i
  %.031.i43.i = phi i32 [ %i.da, %.lr.ph.i42.i ], [ %i.cn, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.ct, %.lr.ph.i42.i ], [ %1, %.lr.ph.preheader.i41.i ] ; 3 uses
  %i.co = trunc i128 %.02830.i44.i to i8          ; 2 uses
  %i.cp = and i8 %i.co, 7
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = zext i32 %.031.i43.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !72
  %i.ct = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %i.cu = lshr i8 %i.co, 3
  %i.cv = and i8 %i.cu, 7
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = add nsw i32 %.031.i43.i, -1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cy
  store i8 %i.cw, ptr %i.cz, align 1, !tbaa !72
  %i.da = add nsw i32 %.031.i43.i, -2
  %i.db = icmp ugt i128 %.02830.i44.i, 4095
  br i1 %i.db, label %.lr.ph.i42.i, label %._crit_edge.i32.i, !llvm.loop !1029

._crit_edge.i32.i:                                ; preds = %.lr.ph.i42.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.028.lcssa.i33.i = phi i128 [ %1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i ], [ %i.ct, %.lr.ph.i42.i ] ; 3 uses
  %i.dc = icmp samesign ugt i128 %.028.lcssa.i33.i, 7
  %extract.t38.i.i = trunc i128 %.028.lcssa.i33.i to i8 ; 2 uses
  br i1 %i.dc, label %bb.u, label %._crit_edge.thread.i34.i

bb.u:                                             ; preds = %._crit_edge.i32.i
  %i.dd = lshr i128 %.028.lcssa.i33.i, 3
  %i.de = and i8 %extract.t38.i.i, 7
  %i.df = or disjoint i8 %i.de, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.df, ptr %i.dg, align 4, !tbaa !72
  %extract.t.i40.i = trunc i128 %i.dd to i8
  br label %._crit_edge.thread.i34.i

._crit_edge.thread.i34.i:                         ; preds = %bb.u, %._crit_edge.i32.i
  %.028.lcssa37.sink.off0.i.i = phi i8 [ %extract.t.i40.i, %bb.u ], [ %extract.t38.i.i, %._crit_edge.i32.i ]
  %storemerge.i35.i = or disjoint i8 %.028.lcssa37.sink.off0.i.i, 48
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.d, %bb.d
  %i.dh = icmp eq i16 %i.d, 10240
  %.str.174..str.175 = select i1 %i.dh, ptr @.str.174, ptr @.str.175 ; 2 uses
  %i.di = icmp eq i128 %1, 0
  br i1 %i.di, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = lshr i128 %1, 64                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i128 %i.dj, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = trunc nuw i128 %i.dj to i64
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.dn = trunc nuw i128 %1 to i64
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = or disjoint i32 %i.dp, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i: ; preds = %bb.y, %bb.x
  %.1.i.i.i.i.i = phi i32 [ %i.dq, %bb.y ], [ %i.dm, %bb.x ]
  %i.dr = sub nuw nsw i32 131, %.1.i.i.i.i.i
  %i.ds = lshr i32 %i.dr, 2                       ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = icmp ugt i128 %1, 255
  br i1 %i.du, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %i.dv = add nsw i32 %i.ds, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.ek, %.lr.ph.i.i ], [ %i.dv, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.ec, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dw = trunc i128 %.02830.i.i to i64           ; 2 uses
  %i.dx = and i64 %i.dw, 15
  %i.dy = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !72
  %i.ea = zext i32 %.031.i.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ea
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !72
  %i.ec = lshr i128 %.02830.i.i, 8                ; 2 uses
  %i.ed = lshr i64 %i.dw, 4
  %i.ee = and i64 %i.ed, 15
  %i.ef = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !72
  %i.eh = add nsw i32 %.031.i.i, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !72
  %i.ek = add nsw i32 %.031.i.i, -2
  %i.el = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1030

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.ec, %.lr.ph.i.i ] ; 3 uses
  %i.em = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.em, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.en = lshr i128 %.028.lcssa.i.i, 4
  %i.eo = and i64 %extract.t37.i.i, 15
  %i.ep = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.eq, ptr %i.er, align 4, !tbaa !72
  %extract.t.i.i = trunc i128 %i.en to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !72
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i65 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i66 = phi i64 [ %i.dt, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i65, ptr %i.i, align 1, !tbaa !72
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i66 ; 3 uses
  %.not123 = icmp eq i16 %i.d, 12288
  br i1 %.not123, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, %.lr.ph
  %.0110 = phi ptr [ %i.ex, %.lr.ph ], [ %i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ] ; 3 uses
  %i.et = load i8, ptr %.0110, align 1, !tbaa !72
  %i.eu = sext i8 %i.et to i32
  %i.ev = call i32 @toupper(i32 noundef %i.eu) #43
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %.0110, align 1, !tbaa !72
  %i.ex = getelementptr inbounds nuw i8, ptr %.0110, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.es
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1032

bb.aa:                                            ; preds = %bb.d
end_hunk_1
