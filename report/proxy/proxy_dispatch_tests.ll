Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNKSt8__format15__formatter_intIcE6formatIiNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  %or.cond.i = icmp ult i32 %i.f, 256
  br i1 %or.cond.i, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIiEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIiEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nsw i32 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = icmp slt i32 %1, 0
  %.045 = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.l = lshr i16 %i.c, 11
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.y [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.u
    i16 6, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.n, ptr @.str.314, ptr @.str.315 ; 3 uses
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true) ; 4 uses
  %i.q = sub nuw nsw i32 32, %i.p
  %.not16.i.i = icmp eq i32 %i.p, 31
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %bb.f
  %.015.i.i = xor i32 %i.p, 31                    ; 2 uses
  %i.r = zext nneg i32 %.015.i.i to i64           ; 3 uses
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.s = trunc i32 %.045 to i8
  %i.t = and i8 %i.s, 1
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  store i8 %i.u, ptr %i.v, align 1, !tbaa !74
  %i.w = lshr i32 %.045, 1
  %indvars.iv.next.i.i.prol = add nsw i64 %i.r, -1
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %i.r, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i32 [ %.045, %.lr.ph.preheader.i41.i ], [ %i.w, %.lr.ph.i42.i.prol ]
  %i.x = icmp eq i32 %i.p, 30
  br i1 %i.x, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i32 [ %i.ai, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.y = trunc i32 %.01317.i.i to i8
  %i.z = and i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !74
  %i.ac = lshr i32 %.01317.i.i, 1
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !74
  %i.ai = lshr i32 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.aj = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.1, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i, !llvm.loop !6

_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit: ; preds = %.lr.ph.i42.i, %.lr.ph.i42.i.prol.loopexit
  %i.ak = zext nneg i32 %i.q to i64
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.al = icmp eq i32 %1, 0
  br i1 %i.al, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ult i32 %.045, 10
  br i1 %i.am, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.030.i.i.i = phi i32 [ %i.au, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.at, %bb.n ], [ %.045, %bb.h ] ; 5 uses
  %i.an = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = udiv i32 %.02329.i.i.i, 10000
  %i.au = add i32 %.030.i.i.i, 4                  ; 2 uses
  %i.av = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.av, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.as, %bb.m ], [ %i.ao, %bb.i ], [ %i.aq, %bb.k ], [ %i.au, %bb.n ] ; 4 uses
  %i.aw = icmp ugt i32 %.022.i.i.i, 32
  br i1 %i.aw, label %.thread91, label %bb.o, !prof !152

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.ax = icmp ugt i32 %.045, 99
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.ay = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.bb, %.lr.ph.i9.i.i ], [ %.045, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bm, %.lr.ph.i9.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = urem i32 %.020.i.i.i, 100
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !74
  %i.bg = zext i32 %.01819.i.i.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !74
  %i.bi = load i8, ptr %i.bd, align 2, !tbaa !74
  %i.bj = add i32 %.01819.i.i.i, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !74
  %i.bm = add i32 %.01819.i.i.i, -2
  %i.bn = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.bn, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i32 [ %.045, %bb.o ], [ %i.bb, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bo = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.bo, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bt, ptr %i.bu, align 4, !tbaa !74
  %i.bv = load i8, ptr %i.br, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i122 = phi i32 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.045, %bb.h ]
  %.022.i.i.i116118121 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.bw = trunc nuw nsw i32 %.0.lcssa.i.i.i122 to i8
  %i.bx = or disjoint i8 %i.bw, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink109.i52 = phi i8 [ 48, %bb.g ], [ %i.bv, %bb.p ], [ %i.bx, %._crit_edge.i.i.i.thread ]
  %.sink.i53.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i116118121, %._crit_edge.i.i.i.thread ]
  %.sink.i53 = zext nneg i32 %.sink.i53.shrunk to i64
  store i8 %.sink109.i52, ptr %i.j, align 1, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i53
  br label %.thread91

bb.q:                                             ; preds = %bb.d
  %.not49 = icmp ne i32 %1, 0                     ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select96 = zext i1 %.not49 to i64         ; 2 uses
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true)
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 34, %i.ca
  %i.cb = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = icmp ugt i32 %.045, 63
  br i1 %i.cd, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.r
  %.zext.i.i = zext nneg i8 %i.cb to i32
  %i.ce = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cr, %.lr.ph.i38.i ], [ %i.ce, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i32 [ %i.ck, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.cf = trunc i32 %.02830.i40.i to i8           ; 2 uses
  %i.cg = and i8 %i.cf, 7
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = zext i32 %.031.i39.i to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ci
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !74
  %i.ck = lshr i32 %.02830.i40.i, 6               ; 2 uses
  %i.cl = lshr i8 %i.cf, 3
  %i.cm = and i8 %i.cl, 7
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = add nsw i32 %.031.i39.i, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cp
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !74
  %i.cr = add nsw i32 %.031.i39.i, -2
  %i.cs = icmp ugt i32 %.02830.i40.i, 4095
  br i1 %i.cs, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !7

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.r
  %.028.lcssa.i30.i = phi i32 [ %.045, %bb.r ], [ %i.ck, %.lr.ph.i38.i ] ; 4 uses
  %i.ct = icmp samesign ugt i32 %.028.lcssa.i30.i, 7
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i29.i
  %i.cu = lshr i32 %.028.lcssa.i30.i, 3
  %i.cv = trunc nuw nsw i32 %.028.lcssa.i30.i to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cx, ptr %i.cy, align 4, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i32 [ %i.cu, %bb.s ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i32 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.d, %bb.d
  %i.cz = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.cz, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.da = icmp eq i32 %1, 0
  br i1 %i.da, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true)
  %i.dc = sub nuw nsw i32 35, %i.db
  %i.dd = lshr i32 %i.dc, 2                       ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = icmp ugt i32 %.045, 255
  br i1 %i.df, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.dg = add nsw i32 %i.dd, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.dw, %.lr.ph.i.i ], [ %i.dg, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i32 [ %i.dp, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.dh = and i32 %.02830.i.i, 15
  %i.di = lshr i32 %.02830.i.i, 4
  %i.dj = zext nneg i32 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !74
  %i.dm = zext i32 %.031.i.i to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dm
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !74
  %i.do = and i32 %i.di, 15
  %i.dp = lshr i32 %.02830.i.i, 8                 ; 2 uses
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !74
  %i.dt = add nsw i32 %.031.i.i, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.du
  store i8 %i.ds, ptr %i.dv, align 1, !tbaa !74
  %i.dw = add nsw i32 %.031.i.i, -2
  %i.dx = icmp ugt i32 %.02830.i.i, 65535
  br i1 %i.dx, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.v
  %.028.lcssa.i.i = phi i32 [ %.045, %bb.v ], [ %i.dp, %.lr.ph.i.i ] ; 4 uses
  %i.dy = icmp samesign ugt i32 %.028.lcssa.i.i, 15
  br i1 %i.dy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dz = and i32 %.028.lcssa.i.i, 15
  %i.ea = lshr i32 %.028.lcssa.i.i, 4
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ed, ptr %i.ee, align 4, !tbaa !74
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i
  %.pn.in.i.i = phi i32 [ %i.ea, %bb.w ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65: ; preds = %bb.x, %bb.u
  %.sink109.i66 = phi i8 [ %storemerge.i.i, %bb.x ], [ 48, %bb.u ]
  %.sink.i67 = phi i64 [ %i.de, %bb.x ], [ 1, %bb.u ]
  store i8 %.sink109.i66, ptr %i.j, align 1, !tbaa !74
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i67 ; 3 uses
  %.not114 = icmp eq i16 %i.d, 12288
  br i1 %.not114, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, %.lr.ph
  %.0104 = phi ptr [ %i.ek, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ] ; 3 uses
  %i.eg = load i8, ptr %.0104, align 1, !tbaa !74
  %i.eh = sext i8 %i.eg to i32
  %i.ei = call i32 @toupper(i32 noundef %i.eh) #35
  %i.ej = trunc i32 %i.ei to i8
  store i8 %i.ej, ptr %.0104, align 1, !tbaa !74
  %i.ek = getelementptr inbounds nuw i8, ptr %.0104, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ek, %i.ef
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !855

bb.y:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, %bb.q, %bb.t
  %.sink109.i58.sink = phi i8 [ 48, %bb.q ], [ %storemerge.i32.i, %bb.t ], [ 48, %bb.e ], [ 49, %bb.f ], [ 49, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sink.i59.sink = phi i64 [ 1, %bb.q ], [ %i.cc, %bb.t ], [ 1, %bb.e ], [ 1, %bb.f ], [ %i.ak, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.q ], [ %spec.select, %bb.t ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %bb.f ], [ %.str.314..str.315, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sroa.078.1.ph = phi i64 [ %spec.select96, %bb.q ], [ %spec.select96, %bb.t ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  store i8 %.sink109.i58.sink, ptr %i.j, align 1, !tbaa !74
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i59.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.078.1 = phi i64 [ %.sroa.078.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.el, %.loopexit.sink.split ], [ %i.ef, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %i.ef, %.lr.ph ] ; 2 uses
  %i.em = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.em, 0
  %.not51 = icmp eq i64 %.sroa.078.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread91, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.en = sub nsw i64 0, %.sroa.078.1
  %i.eo = getelementptr inbounds i8, ptr %i.j, i64 %i.en ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr align 1 %.sroa.9.1, i64 %.sroa.078.1, i1 false)
  br label %.thread91

.thread91:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.z, %.loopexit
  %.sroa.033.090 = phi ptr [ %.sroa.033.0, %bb.z ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.by, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.eo, %bb.z ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %.thread91
  %i.eq = lshr i16 %i.c, 2
  %i.er = and i16 %i.eq, 3
  switch i16 %i.er, label %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.aa, %.thread91, %bb.ab
  %.sink = phi i8 [ 32, %bb.ab ], [ 45, %.thread91 ], [ 43, %bb.aa ]
  store i8 %.sink, ptr %i.ep, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit.sink.split, %bb.aa
  %.0.i = phi ptr [ %.046, %bb.aa ], [ %i.ep, %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.es = ptrtoint ptr %.sroa.033.090 to i64
  %i.et = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ptrtoint ptr %i.j to i64
  %i.ew = sub i64 %i.ev, %i.et
  %i.ex = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.eu, ptr nonnull %.0.i, i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ac

end_hunk_0
begin_hunk_1_@_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 128
  %or.cond.i = icmp ult i64 %i.f, 256
  br i1 %or.cond.i, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nsw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = icmp slt i64 %1, 0
  %.045 = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.l = lshr i16 %i.c, 11
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.x [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 4, label %bb.p
    i16 5, label %bb.t
    i16 6, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.n, ptr @.str.314, ptr @.str.315 ; 4 uses
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %.loopexit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true) ; 5 uses
  %i.q = sub nuw nsw i64 64, %i.p                 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.p, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %.preheader.i.i
  %.015.i.i = xor i64 %i.p, 63                    ; 3 uses
  %i.r = trunc nuw nsw i64 %.015.i.i to i32
  %xtraiter = and i32 %i.r, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.s = trunc i64 %.045 to i8
  %i.t = and i8 %i.s, 1
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015.i.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !74
  %i.w = lshr i64 %.045, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 62, %i.p
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i64 [ %.045, %.lr.ph.preheader.i41.i ], [ %i.w, %.lr.ph.i42.i.prol ]
  %i.x = icmp eq i64 %i.p, 62
  br i1 %i.x, label %.loopexit.sink.split, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i64 [ %i.ai, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.y = trunc i64 %.01317.i.i to i8
  %i.z = and i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !74
  %i.ac = lshr i64 %.01317.i.i, 1
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !74
  %i.ai = lshr i64 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.aj = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i42.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.ak = icmp eq i64 %1, 0
  br i1 %i.ak, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp ult i64 %.045, 10
  br i1 %i.al, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.m
  %.029.i.i.i = phi i32 [ %i.at, %bb.m ], [ 1, %bb.g ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.as, %bb.m ], [ %.045, %bb.g ] ; 5 uses
  %i.am = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.as = udiv i64 %.02328.i.i.i, 10000
  %i.at = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.au = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.au, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  %.022.i.i.i = phi i32 [ %i.ar, %bb.l ], [ %i.an, %bb.h ], [ %i.ap, %bb.j ], [ %i.at, %bb.m ] ; 4 uses
  %i.av = icmp ugt i32 %.022.i.i.i, 64
  br i1 %i.av, label %.thread94, label %bb.n, !prof !152

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.aw = icmp ugt i64 %.045, 99
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.n
  %i.ax = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.ba, %.lr.ph.i9.i.i ], [ %.045, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bk, %.lr.ph.i9.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = urem i64 %.020.i.i.i, 100
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !74
  %i.be = zext i32 %.01819.i.i.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !74
  %i.bg = load i8, ptr %i.bb, align 2, !tbaa !74
  %i.bh = add i32 %.01819.i.i.i, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !74
  %i.bk = add i32 %.01819.i.i.i, -2
  %i.bl = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.bl, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ %.045, %bb.n ], [ %i.ba, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bm = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.bm, label %bb.o, label %._crit_edge.i.i.i.thread

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.bo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !74
  %i.bs = load i8, ptr %i.bo, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52

._crit_edge.i.i.i.thread:                         ; preds = %bb.g, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i125 = phi i64 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.045, %bb.g ]
  %.022.i.i.i119121124 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.g ]
  %i.bt = trunc nuw nsw i64 %.0.lcssa.i.i.i125 to i8
  %i.bu = or disjoint i8 %i.bt, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52: ; preds = %._crit_edge.i.i.i.thread, %bb.o, %bb.f
  %.sink109.i53 = phi i8 [ 48, %bb.f ], [ %i.bs, %bb.o ], [ %i.bu, %._crit_edge.i.i.i.thread ]
  %.sink.i54.shrunk = phi i32 [ 1, %bb.f ], [ %.022.i.i.i, %bb.o ], [ %.022.i.i.i119121124, %._crit_edge.i.i.i.thread ]
  %.sink.i54 = zext nneg i32 %.sink.i54.shrunk to i64
  store i8 %.sink109.i53, ptr %i.j, align 1, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i54
  br label %.thread94

bb.p:                                             ; preds = %bb.d
  %.not49 = icmp ne i64 %1, 0                     ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 66, %i.bx
  %i.by = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = icmp ugt i64 %.045, 63
  br i1 %i.ca, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.q
  %.zext.i.i = zext nneg i8 %i.by to i32
  %i.cb = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.co, %.lr.ph.i38.i ], [ %i.cb, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i64 [ %i.ch, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 3 uses
  %i.cc = trunc i64 %.02830.i40.i to i8           ; 2 uses
  %i.cd = and i8 %i.cc, 7
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = zext i32 %.031.i39.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !74
  %i.ch = lshr i64 %.02830.i40.i, 6               ; 2 uses
  %i.ci = lshr i8 %i.cc, 3
  %i.cj = and i8 %i.ci, 7
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = add nsw i32 %.031.i39.i, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !74
  %i.co = add nsw i32 %.031.i39.i, -2
  %i.cp = icmp ugt i64 %.02830.i40.i, 4095
  br i1 %i.cp, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !20

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.q
  %.028.lcssa.i30.i = phi i64 [ %.045, %bb.q ], [ %i.ch, %.lr.ph.i38.i ] ; 4 uses
  %i.cq = icmp samesign ugt i64 %.028.lcssa.i30.i, 7
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i29.i
  %i.cr = lshr i64 %.028.lcssa.i30.i, 3
  %i.cs = trunc nuw nsw i64 %.028.lcssa.i30.i to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cu, ptr %i.cv, align 4, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i64 [ %i.cr, %bb.r ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i64 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.d, %bb.d
  %i.cw = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.cw, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.cx = icmp eq i64 %1, 0
  br i1 %i.cx, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = sub nuw nsw i32 67, %i.cz
  %i.db = lshr i32 %i.da, 2                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = icmp ugt i64 %.045, 255
  br i1 %i.dd, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.de = add nsw i32 %i.db, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.ds, %.lr.ph.i.i ], [ %i.de, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.df = and i64 %.02830.i.i, 15
  %i.dg = lshr i64 %.02830.i.i, 4
  %i.dh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.df
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !74
  %i.dj = zext i32 %.031.i.i to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dj
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !74
  %i.dl = and i64 %i.dg, 15
  %i.dm = lshr i64 %.02830.i.i, 8                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dl
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !74
  %i.dp = add nsw i32 %.031.i.i, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dq
  store i8 %i.do, ptr %i.dr, align 1, !tbaa !74
  %i.ds = add nsw i32 %.031.i.i, -2
  %i.dt = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.dt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.028.lcssa.i.i = phi i64 [ %.045, %bb.u ], [ %i.dm, %.lr.ph.i.i ] ; 4 uses
  %i.du = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.dv = and i64 %.028.lcssa.i.i, 15
  %i.dw = lshr i64 %.028.lcssa.i.i, 4
  %i.dx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.dy, ptr %i.dz, align 4, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.dw, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68: ; preds = %bb.w, %bb.t
  %.sink109.i69 = phi i8 [ %storemerge.i.i, %bb.w ], [ 48, %bb.t ]
  %.sink.i70 = phi i64 [ %i.dc, %bb.w ], [ 1, %bb.t ]
  store i8 %.sink109.i69, ptr %i.j, align 1, !tbaa !74
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i70 ; 3 uses
  %.not117 = icmp eq i16 %i.d, 12288
  br i1 %.not117, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68, %.lr.ph
  %.0107 = phi ptr [ %i.ef, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ] ; 3 uses
  %i.eb = load i8, ptr %.0107, align 1, !tbaa !74
  %i.ec = sext i8 %i.eb to i32
  %i.ed = call i32 @toupper(i32 noundef %i.ec) #35
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %.0107, align 1, !tbaa !74
  %i.ef = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ef, %i.ea
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !963

bb.x:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i, %bb.p, %bb.s, %bb.e, %.preheader.i.i
  %.sink109.i61.sink = phi i8 [ 48, %bb.p ], [ 48, %bb.e ], [ 49, %.preheader.i.i ], [ %storemerge.i32.i, %bb.s ], [ 49, %.lr.ph.i42.i ], [ 49, %.lr.ph.i42.i.prol.loopexit ]
  %.sink.i62.sink = phi i64 [ 1, %bb.p ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.bz, %bb.s ], [ %i.q, %.lr.ph.i42.i ], [ %i.q, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.p ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %.preheader.i.i ], [ %spec.select, %bb.s ], [ %.str.314..str.315, %.lr.ph.i42.i ], [ %.str.314..str.315, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.081.1.ph = phi i64 [ %spec.select99, %bb.p ], [ 2, %bb.e ], [ 2, %.preheader.i.i ], [ %spec.select99, %bb.s ], [ 2, %.lr.ph.i42.i ], [ 2, %.lr.ph.i42.i.prol.loopexit ]
  store i8 %.sink109.i61.sink, ptr %i.j, align 1, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i62.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.081.1 = phi i64 [ %.sroa.081.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.eg, %.loopexit.sink.split ], [ %i.ea, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i68 ], [ %i.ea, %.lr.ph ] ; 2 uses
  %i.eh = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.eh, 0
  %.not51 = icmp eq i64 %.sroa.081.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.ei = sub nsw i64 0, %.sroa.081.1
  %i.ej = getelementptr inbounds i8, ptr %i.j, i64 %i.ei ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr align 1 %.sroa.9.1, i64 %.sroa.081.1, i1 false)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52, %bb.y, %.loopexit
  %.sroa.033.093 = phi ptr [ %.sroa.033.0, %bb.y ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.bv, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52 ]
  %.046 = phi ptr [ %i.ej, %bb.y ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i52 ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %.thread94
  %i.el = lshr i16 %i.c, 2
  %i.em = and i16 %i.el, 3
  switch i16 %i.em, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.z, %.thread94, %bb.aa
  %.sink = phi i8 [ 32, %bb.aa ], [ 45, %.thread94 ], [ 43, %bb.z ]
  store i8 %.sink, ptr %i.ek, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split, %bb.z
  %.0.i = phi ptr [ %.046, %bb.z ], [ %i.ek, %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.en = ptrtoint ptr %.sroa.033.093 to i64
  %i.eo = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ptrtoint ptr %i.j to i64
  %i.er = sub i64 %i.eq, %i.eo
  %i.es = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.ep, ptr nonnull %.0.i, i64 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIxEEcT_.exit ], [ %i.es, %_ZNSt8__format10__put_signIxEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
end_hunk_1
begin_hunk_2_@_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
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
  %.str.314..str.315 = select i1 %i.n, ptr @.str.314, ptr @.str.315 ; 4 uses
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
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !74
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
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !74
  %i.ak = lshr i128 %.01317.i.i, 1
  %i.al = trunc i128 %i.ak to i8
  %i.am = and i8 %i.al, 1
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = getelementptr i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !74
  %i.aq = lshr i128 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ar = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i50.i, !llvm.loop !24

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
  br i1 %i.bc, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.av, %bb.i ], [ %i.ax, %bb.k ], [ %i.bb, %bb.n ] ; 4 uses
  %i.bd = icmp ugt i32 %.022.i.i.i, 128
  br i1 %i.bd, label %.thread94, label %bb.o, !prof !152

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
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !74
  %i.bm = zext i32 %.01819.i.i.i to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bm
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !74
  %i.bo = load i8, ptr %i.bj, align 2, !tbaa !74
  %i.bp = add i32 %.01819.i.i.i, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bq
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !74
  %i.bs = add i32 %.01819.i.i.i, -2
  %i.bt = icmp ugt i128 %.020.i.i.i, 9999
  br i1 %i.bt, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !26

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
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.by, ptr %i.bz, align 4, !tbaa !74
  %i.ca = load i8, ptr %i.bw, align 2, !tbaa !74
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
  store i8 %.sink120.i52, ptr %i.j, align 1, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i53
  br label %.thread94

bb.q:                                             ; preds = %bb.d
  %.not49 = icmp ne i128 %1, 0                    ; 2 uses
  %spec.select = select i1 %.not49, ptr @.str.112, ptr null ; 2 uses
  %spec.select99 = zext i1 %.not49 to i64         ; 2 uses
  %3 = icmp eq i128 %1, 0
  br i1 %3, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = lshr i128 %.045, 64                     ; 2 uses
  %.not.i.i.i.i29.i = icmp eq i128 %i.cd, 0
  br i1 %.not.i.i.i.i29.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = trunc nuw i128 %i.cd to i64
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i8
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

bb.t:                                             ; preds = %bb.r
  %i.ch = trunc nuw i128 %.045 to i64
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  %i.ck = or disjoint i8 %i.cj, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i: ; preds = %bb.t, %bb.s
  %.1.i.i.i.i31.i = phi i8 [ %i.ck, %bb.t ], [ %i.cg, %bb.s ]
  %.lhs.trunc.i.i = sub nuw i8 -126, %.1.i.i.i.i31.i
  %i.cl = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = icmp ugt i128 %.045, 63
  br i1 %i.cn, label %.lr.ph.preheader.i41.i, label %._crit_edge.i32.i

.lr.ph.preheader.i41.i:                           ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.zext.i.i = zext nneg i8 %i.cl to i32
  %i.co = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i, %.lr.ph.preheader.i41.i
  %.031.i43.i = phi i32 [ %i.db, %.lr.ph.i42.i ], [ %i.co, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.cu, %.lr.ph.i42.i ], [ %.045, %.lr.ph.preheader.i41.i ] ; 3 uses
  %i.cp = trunc i128 %.02830.i44.i to i8          ; 2 uses
  %i.cq = and i8 %i.cp, 7
  %i.cr = or disjoint i8 %i.cq, 48
  %i.cs = zext i32 %.031.i43.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cs
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !74
  %i.cu = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %i.cv = lshr i8 %i.cp, 3
  %i.cw = and i8 %i.cv, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = add nsw i32 %.031.i43.i, -1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cz
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !74
  %i.db = add nsw i32 %.031.i43.i, -2
  %i.dc = icmp ugt i128 %.02830.i44.i, 4095
  br i1 %i.dc, label %.lr.ph.i42.i, label %._crit_edge.i32.i, !llvm.loop !27

._crit_edge.i32.i:                                ; preds = %.lr.ph.i42.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.028.lcssa.i33.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i ], [ %i.cu, %.lr.ph.i42.i ] ; 3 uses
  %i.dd = icmp samesign ugt i128 %.028.lcssa.i33.i, 7
  %extract.t38.i.i = trunc i128 %.028.lcssa.i33.i to i8 ; 2 uses
  br i1 %i.dd, label %bb.u, label %._crit_edge.thread.i34.i

bb.u:                                             ; preds = %._crit_edge.i32.i
  %i.de = lshr i128 %.028.lcssa.i33.i, 3
  %i.df = and i8 %extract.t38.i.i, 7
  %i.dg = or disjoint i8 %i.df, 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.dg, ptr %i.dh, align 4, !tbaa !74
  %extract.t.i40.i = trunc i128 %i.de to i8
  br label %._crit_edge.thread.i34.i

._crit_edge.thread.i34.i:                         ; preds = %bb.u, %._crit_edge.i32.i
  %.028.lcssa37.sink.off0.i.i = phi i8 [ %extract.t.i40.i, %bb.u ], [ %extract.t38.i.i, %._crit_edge.i32.i ]
  %storemerge.i35.i = or disjoint i8 %.028.lcssa37.sink.off0.i.i, 48
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.d, %bb.d
  %i.di = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.di, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.dj = icmp eq i128 %1, 0
  br i1 %i.dj, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = lshr i128 %.045, 64                     ; 2 uses
  %.not.i.i.i.i.i = icmp eq i128 %i.dk, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = trunc nuw i128 %i.dk to i64
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.do = trunc nuw i128 %.045 to i64
  %i.dp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = or disjoint i32 %i.dq, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i: ; preds = %bb.y, %bb.x
  %.1.i.i.i.i.i = phi i32 [ %i.dr, %bb.y ], [ %i.dn, %bb.x ]
  %i.ds = sub nuw nsw i32 131, %.1.i.i.i.i.i
  %i.dt = lshr i32 %i.ds, 2                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = icmp ugt i128 %.045, 255
  br i1 %i.dv, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %i.dw = add nsw i32 %i.dt, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.el, %.lr.ph.i.i ], [ %i.dw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.ed, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dx = trunc i128 %.02830.i.i to i64           ; 2 uses
  %i.dy = and i64 %i.dx, 15
  %i.dz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !74
  %i.eb = zext i32 %.031.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eb
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !74
  %i.ed = lshr i128 %.02830.i.i, 8                ; 2 uses
  %i.ee = lshr i64 %i.dx, 4
  %i.ef = and i64 %i.ee, 15
  %i.eg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !74
  %i.ei = add nsw i32 %.031.i.i, -1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ej
  store i8 %i.eh, ptr %i.ek, align 1, !tbaa !74
  %i.el = add nsw i32 %.031.i.i, -2
  %i.em = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.em, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.ed, %.lr.ph.i.i ] ; 3 uses
  %i.en = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.en, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.eo = lshr i128 %.028.lcssa.i.i, 4
  %i.ep = and i64 %extract.t37.i.i, 15
  %i.eq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !74
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.er, ptr %i.es, align 4, !tbaa !74
  %extract.t.i.i = trunc i128 %i.eo to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i66 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i67 = phi i64 [ %i.du, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i66, ptr %i.j, align 1, !tbaa !74
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i67 ; 3 uses
  %.not119 = icmp eq i16 %i.d, 12288
  br i1 %.not119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, %.lr.ph
  %.0107 = phi ptr [ %i.ey, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ] ; 3 uses
  %i.eu = load i8, ptr %.0107, align 1, !tbaa !74
  %i.ev = sext i8 %i.eu to i32
  %i.ew = call i32 @toupper(i32 noundef %i.ev) #35
  %i.ex = trunc i32 %i.ew to i8
  store i8 %i.ex, ptr %.0107, align 1, !tbaa !74
  %i.ey = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ey, %i.et
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1067

bb.aa:                                            ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i, %._crit_edge.thread.i34.i, %bb.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, %bb.e
  %.sink120.i58.sink = phi i8 [ 48, %bb.q ], [ 48, %bb.e ], [ 49, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %storemerge.i35.i, %._crit_edge.thread.i34.i ], [ 49, %.lr.ph.i50.i ], [ 49, %.lr.ph.i50.i.prol.loopexit ]
  %.sink.i59.sink = phi i64 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %i.cm, %._crit_edge.thread.i34.i ], [ %i.x, %.lr.ph.i50.i ], [ %i.x, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.q ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select, %._crit_edge.thread.i34.i ], [ %.str.314..str.315, %.lr.ph.i50.i ], [ %.str.314..str.315, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.078.1.ph = phi i64 [ %spec.select99, %bb.q ], [ 2, %bb.e ], [ 2, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select99, %._crit_edge.thread.i34.i ], [ 2, %.lr.ph.i50.i ], [ 2, %.lr.ph.i50.i.prol.loopexit ]
  store i8 %.sink120.i58.sink, ptr %i.j, align 1, !tbaa !74
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i59.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.078.1 = phi i64 [ %.sroa.078.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ez, %.loopexit.sink.split ], [ %i.et, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %i.et, %.lr.ph ] ; 2 uses
  %i.fa = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.fa, 0
  %.not51 = icmp eq i64 %.sroa.078.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.fb = sub nsw i64 0, %.sroa.078.1
  %i.fc = getelementptr inbounds i8, ptr %i.j, i64 %i.fb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %.sroa.9.1, i64 %.sroa.078.1, i1 false)
  br label %.thread94
end_hunk_2
