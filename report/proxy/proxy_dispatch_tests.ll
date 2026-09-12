Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNKSt8__format15__formatter_intIcE6formatIiNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
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
  %i.bz = icmp eq i32 %1, 0
  br i1 %i.bz, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.045, i1 true)
  %i.cb = trunc nuw nsw i32 %i.ca to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 34, %i.cb
  %i.cc = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = icmp ugt i32 %.045, 63
  br i1 %i.ce, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.r
  %.zext.i.i = zext nneg i8 %i.cc to i32
  %i.cf = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cr, %.lr.ph.i38.i ], [ %i.cf, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i32 [ %i.cl, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 4 uses
  %3 = lshr i32 %.02830.i40.i, 3
  %i.cg = trunc i32 %.02830.i40.i to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = zext i32 %.031.i39.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !74
  %i.cl = lshr i32 %.02830.i40.i, 6               ; 2 uses
  %4 = trunc i32 %3 to i8
  %i.cm = and i8 %4, 7
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = add nsw i32 %.031.i39.i, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cp
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !74
  %i.cr = add nsw i32 %.031.i39.i, -2
  %i.cs = icmp ugt i32 %.02830.i40.i, 4095
  br i1 %i.cs, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !7

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.r
  %.028.lcssa.i30.i = phi i32 [ %.045, %bb.r ], [ %i.cl, %.lr.ph.i38.i ] ; 4 uses
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
  %.sink.i59.sink = phi i64 [ 1, %bb.q ], [ %i.cd, %bb.t ], [ 1, %bb.e ], [ 1, %bb.f ], [ %i.ak, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
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

bb.ac:                                            ; preds = %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIiEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIiEEcT_.exit ], [ %i.ex, %_ZNSt8__format10__put_signIiEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1, ptr %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %5 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %6 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i = alloca %union.anon.1198, align 16  ; 5 uses
  %7 = alloca %"struct.std::__format::_Optional_locale", align 8 ; 12 uses
  %8 = alloca %"class.std::locale", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load i16, ptr %0, align 4                ; 3 uses
  %i.c = lshr i16 %i.b, 7
  %i.d = and i16 %i.c, 3
  switch i16 %i.d, label %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

end_hunk_0
begin_hunk_1_@_ZNKSt8__format15__formatter_intIcE6formatINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorEbRS7_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !114 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !71
  %i.ac = invoke ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 %i.aa, ptr %i.ab, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(7) %0, i32 noundef 1)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.j
  %i.af = load i64, ptr %i.h, align 8, !tbaa !74
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.i
  %.pn20 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.k
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !74
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn20

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.c, %bb.b
  %.sroa.013.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  ret ptr %.sroa.013.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [11 x i8], align 1                ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i8 %1, -1
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1, !tbaa !74
  %i.g = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 16 uses
  %i.i = lshr i16 %i.c, 11
  %i.j = and i16 %i.i, 15
  switch i16 %i.j, label %bb.r [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 4, label %bb.j
    i16 5, label %bb.n
    i16 6, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.k, ptr @.str.314, ptr @.str.315 ; 3 uses
  %i.l = icmp eq i8 %1, 0
  br i1 %i.l, label %.loopexit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.m = zext i8 %1 to i32
  %i.n = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.m, i1 true) ; 4 uses
  %i.o = sub nuw nsw i32 32, %i.n
  %.not16.i.i = icmp eq i32 %i.n, 31
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i35.i

.lr.ph.preheader.i35.i:                           ; preds = %.preheader.i.i
  %.015.i.i = xor i32 %i.n, 31                    ; 2 uses
  %i.p = zext nneg i32 %.015.i.i to i64           ; 3 uses
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.i.prol.loopexit, label %.lr.ph.i36.i.prol

.lr.ph.i36.i.prol:                                ; preds = %.lr.ph.preheader.i35.i
  %i.q = and i8 %1, 1
  %i.r = or disjoint i8 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  store i8 %i.r, ptr %i.s, align 1, !tbaa !74
  %i.t = lshr i8 %1, 1
  %indvars.iv.next.i.i.prol = add nsw i64 %i.p, -1
  br label %.lr.ph.i36.i.prol.loopexit

.lr.ph.i36.i.prol.loopexit:                       ; preds = %.lr.ph.i36.i.prol, %.lr.ph.preheader.i35.i
  %indvars.iv.i.i.unr = phi i64 [ %i.p, %.lr.ph.preheader.i35.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i36.i.prol ]
  %.01317.i.i.unr = phi i8 [ %1, %.lr.ph.preheader.i35.i ], [ %i.t, %.lr.ph.i36.i.prol ]
  %i.u = icmp eq i32 %i.n, 30
  br i1 %i.u, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i36.i.prol.loopexit, %.lr.ph.i36.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i36.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i36.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i8 [ %i.ad, %.lr.ph.i36.i ], [ %.01317.i.i.unr, %.lr.ph.i36.i.prol.loopexit ] ; 3 uses
  %i.v = and i8 %.01317.i.i, 1
  %i.w = or disjoint i8 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !74
  %i.y = lshr i8 %.01317.i.i, 1
  %i.z = and i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr i8, ptr %i.h, i64 %indvars.iv.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !74
  %i.ad = lshr i8 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ae = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit, label %.lr.ph.i36.i, !llvm.loop !6

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit: ; preds = %.lr.ph.i36.i, %.lr.ph.i36.i.prol.loopexit
  %i.af = zext nneg i32 %i.o to i64
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.ag = icmp eq i8 %1, 0
  br i1 %i.ag, label %.thread91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ult i8 %1, 10
  %i.ai = icmp ult i8 %1, 100
  %i.aj = select i1 %i.ai, i64 2, i64 3
  %i.ak = select i1 %i.ah, i64 1, i64 %i.aj       ; 2 uses
  %i.al = icmp ugt i8 %1, 99
  br i1 %i.al, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.g
  %i.am = urem i8 %1, 100
  %i.an = shl nuw i8 %i.am, 1
  %i.ao = udiv i8 %1, 100
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !74
  %.sroa.gep108.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.as, ptr %.sroa.gep108.sroa.gep110, align 1, !tbaa !74
  %i.at = load i8, ptr %i.aq, align 2, !tbaa !74
  %.sroa.gep108.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.at, ptr %.sroa.gep108.sroa.gep, align 1, !tbaa !74
  br label %bb.i

._crit_edge.i.i.i:                                ; preds = %bb.g
  %i.au = icmp samesign ugt i8 %1, 9
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.av = shl nuw i8 %1, 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !74
  %i.bb = load i8, ptr %i.ax, align 2, !tbaa !74
  br label %.thread91

bb.i:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.0.lcssa.i.i79.i = phi i8 [ %i.ao, %._crit_edge.i.i.thread.i ], [ %1, %._crit_edge.i.i.i ]
  %i.bc = or disjoint i8 %.0.lcssa.i.i79.i, 48
  br label %.thread91

bb.j:                                             ; preds = %bb.d
  %.not48 = icmp eq i8 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %1, i1 true)
  %.lhs.trunc.i.i = sub nuw nsw i8 10, %i.bd
  %i.be = udiv i8 %.lhs.trunc.i.i, 3
  %i.bf = zext nneg i8 %i.be to i64               ; 3 uses
  %i.bg = icmp ugt i8 %1, 63
  br i1 %i.bg, label %._crit_edge.i.thread.i, label %._crit_edge.i.i

._crit_edge.i.thread.i:                           ; preds = %bb.k
  %3 = lshr i8 %1, 3
  %i.bh = and i8 %1, 7
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = getelementptr i8, ptr %i.h, i64 %i.bf
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !74
  %i.bl = lshr i8 %1, 6
  %i.bm = add nuw nsw i64 %i.bf, 4294967294
  %i.bn = and i64 %i.bm, 4294967295
  br label %.sink.split.i

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.bo = icmp samesign ugt i8 %1, 7
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bp = lshr i8 %1, 3
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %._crit_edge.i.thread.i
  %.sink88.i = phi i64 [ %i.bn, %._crit_edge.i.thread.i ], [ 1, %bb.l ]
  %.sink.in.in.i = phi i8 [ %3, %._crit_edge.i.thread.i ], [ %1, %bb.l ]
  %storemerge.in.in.i.ph.i = phi i8 [ %i.bl, %._crit_edge.i.thread.i ], [ %i.bp, %bb.l ]
  %.sink.in.i = and i8 %.sink.in.in.i, 7
  %.sink.i = or disjoint i8 %.sink.in.i, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink88.i
  store i8 %.sink.i, ptr %i.bq, align 1, !tbaa !74
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %._crit_edge.i.i
  %storemerge.in.in.i.i = phi i8 [ %1, %._crit_edge.i.i ], [ %storemerge.in.in.i.ph.i, %.sink.split.i ]
  %storemerge.i30.i = or disjoint i8 %storemerge.in.in.i.i, 48
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.d, %bb.d
  %i.br = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.br, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.bs = zext i8 %1 to i32                       ; 4 uses
  %i.bt = icmp eq i8 %1, 0
  br i1 %i.bt, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.bs, i1 true)
  %i.bv = sub nuw nsw i32 35, %i.bu
  %i.bw = lshr i32 %i.bv, 2
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = icmp ugt i8 %1, 15
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = and i32 %i.bs, 15
  %i.ca = lshr i32 %i.bs, 4
  %i.cb = zext nneg i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !74
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.in.i.i = phi i32 [ %i.ca, %bb.p ], [ %i.bs, %bb.o ]
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67: ; preds = %bb.q, %bb.n
  %.sink90.i68 = phi i8 [ %storemerge.i.i, %bb.q ], [ 48, %bb.n ]
  %.sink89.i69 = phi i64 [ %i.bx, %bb.q ], [ 1, %bb.n ]
  store i8 %.sink90.i68, ptr %i.h, align 1, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink89.i69 ; 3 uses
  %.not115 = icmp eq i16 %i.d, 12288
  br i1 %.not115, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67, %.lr.ph
  %.0106 = phi ptr [ %i.ck, %.lr.ph ], [ %i.h, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ] ; 3 uses
  %i.cg = load i8, ptr %.0106, align 1, !tbaa !74
  %i.ch = sext i8 %i.cg to i32
  %i.ci = call i32 @toupper(i32 noundef %i.ch) #35
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %.0106, align 1, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %.0106, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.cf
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !961

bb.r:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %bb.e, %.preheader.i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit, %bb.m, %bb.j
  %.sink90.i60.sink = phi i8 [ 48, %bb.j ], [ %storemerge.i30.i, %bb.m ], [ 48, %bb.e ], [ 49, %.preheader.i.i ], [ 49, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  %.sink89.i61.sink = phi i64 [ 1, %bb.j ], [ %i.bf, %bb.m ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.af, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.j ], [ @.str.112, %bb.m ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %.preheader.i.i ], [ %.str.314..str.315, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  %.sroa.080.1.ph = phi i64 [ 0, %bb.j ], [ 1, %bb.m ], [ 2, %bb.e ], [ 2, %.preheader.i.i ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i.loopexit ]
  store i8 %.sink90.i60.sink, ptr %i.h, align 1, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink89.i61.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.080.1 = phi i64 [ %.sroa.080.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.cl, %.loopexit.sink.split ], [ %i.cf, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.cm = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.cm, 0
  %.not50 = icmp eq i64 %.sroa.080.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread100, label %bb.s

.thread91:                                        ; preds = %bb.i, %bb.h, %bb.f
  %.sink90.i52 = phi i8 [ 48, %bb.f ], [ %i.bb, %bb.h ], [ %i.bc, %bb.i ]
  %.sink89.i53 = phi i64 [ 1, %bb.f ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ]
  store i8 %.sink90.i52, ptr %i.h, align 1, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink89.i53
  br label %.thread100

bb.s:                                             ; preds = %.loopexit
  %i.co = sub nsw i64 0, %.sroa.080.1
  %i.cp = getelementptr inbounds i8, ptr %i.h, i64 %i.co ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %.sroa.9.1, i64 %.sroa.080.1, i1 false)
  br label %.thread100

.thread100:                                       ; preds = %.thread91, %bb.s, %.loopexit
  %.sroa.033.099 = phi ptr [ %.sroa.033.0, %bb.s ], [ %i.cn, %.thread91 ], [ %.sroa.033.0, %.loopexit ]
  %.046 = phi ptr [ %i.cp, %bb.s ], [ %i.h, %.thread91 ], [ %i.h, %.loopexit ] ; 2 uses
  %i.cq = lshr i16 %i.c, 2
  %i.cr = and i16 %i.cq, 3
  %i.cs = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.cr, label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.t
  ]

bb.t:                                             ; preds = %.thread100
  br label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread100, %bb.t
  %.sink = phi i8 [ 32, %bb.t ], [ 43, %.thread100 ]
  store i8 %.sink, ptr %i.cs, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split, %.thread100
  %.0.i = phi ptr [ %.046, %.thread100 ], [ %i.cs, %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.033.099 to i64
  %i.cu = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ptrtoint ptr %i.h to i64
  %i.cx = sub i64 %i.cw, %i.cu
  %i.cy = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.cv, ptr nonnull %.0.i, i64 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.g, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIhEEcT_.exit ], [ %i.cy, %_ZNSt8__format10__put_signIhEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !71     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21 = icmp eq ptr %1, %0
  br i1 %.not21, label %bb.h, label %bb.c, !prof !135

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !74
  store i8 %i.j, ptr %i.a, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8, !tbaa !114  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !114
  %i.m = load ptr, ptr %0, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !74
  %.pre = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZNKSt8__format15__formatter_intIcE6formatIjNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.k = lshr i16 %i.c, 11
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.y [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.g
    i16 1, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.u
    i16 6, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.m, ptr @.str.314, ptr @.str.315 ; 3 uses
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 4 uses
  %i.p = sub nuw nsw i32 32, %i.o
  %.not16.i.i = icmp eq i32 %i.o, 31
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %bb.f
  %.015.i.i = xor i32 %i.o, 31                    ; 2 uses
  %i.q = zext nneg i32 %.015.i.i to i64           ; 3 uses
  %xtraiter = and i32 %.015.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.r = trunc i32 %1 to i8
  %i.s = and i8 %i.r, 1
  %i.t = or disjoint i8 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  store i8 %i.t, ptr %i.u, align 1, !tbaa !74
  %i.v = lshr i32 %1, 1
  %indvars.iv.next.i.i.prol = add nsw i64 %i.q, -1
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %i.q, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i32 [ %1, %.lr.ph.preheader.i41.i ], [ %i.v, %.lr.ph.i42.i.prol ]
  %i.w = icmp eq i32 %i.o, 30
  br i1 %i.w, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i32 [ %i.ah, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.x = trunc i32 %.01317.i.i to i8
  %i.y = and i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !74
  %i.ab = lshr i32 %.01317.i.i, 1
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = and i8 %i.ac, 1
  %i.ae = or disjoint i8 %i.ad, 48
  %i.af = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !74
  %i.ah = lshr i32 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ai = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.1, label %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, label %.lr.ph.i42.i, !llvm.loop !6

_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit: ; preds = %.lr.ph.i42.i, %.lr.ph.i42.i.prol.loopexit
  %i.aj = zext nneg i32 %i.p to i64
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ak = icmp eq i32 %1, 0
  br i1 %i.ak, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %1, 10
  br i1 %i.al, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.030.i.i.i = phi i32 [ %i.at, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.as, %bb.n ], [ %1, %bb.h ] ; 5 uses
  %i.am = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = udiv i32 %.02329.i.i.i, 10000
  %i.at = add i32 %.030.i.i.i, 4                  ; 2 uses
  %i.au = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.au, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.an, %bb.i ], [ %i.ap, %bb.k ], [ %i.at, %bb.n ] ; 4 uses
  %i.av = icmp ugt i32 %.022.i.i.i, 32
  br i1 %i.av, label %.thread97, label %bb.o, !prof !152

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.aw = icmp ugt i32 %1, 99
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.ax = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.ba, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bl, %.lr.ph.i9.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = urem i32 %.020.i.i.i, 100
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !74
  %i.bf = zext i32 %.01819.i.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !74
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !74
  %i.bi = add i32 %.01819.i.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !74
  %i.bl = add i32 %.01819.i.i.i, -2
  %i.bm = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i32 [ %1, %bb.o ], [ %i.ba, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bn = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.bn, label %bb.p, label %._crit_edge.i.i.i.thread

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bs, ptr %i.bt, align 4, !tbaa !74
  %i.bu = load i8, ptr %i.bq, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i128 = phi i32 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %1, %bb.h ]
  %.022.i.i.i122124127 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.h ]
  %i.bv = trunc nuw nsw i32 %.0.lcssa.i.i.i128 to i8
  %i.bw = or disjoint i8 %i.bv, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.p, %bb.g
  %.sink109.i51 = phi i8 [ 48, %bb.g ], [ %i.bu, %bb.p ], [ %i.bw, %._crit_edge.i.i.i.thread ]
  %.sink.i52.shrunk = phi i32 [ 1, %bb.g ], [ %.022.i.i.i, %bb.p ], [ %.022.i.i.i122124127, %._crit_edge.i.i.i.thread ]
  %.sink.i52 = zext nneg i32 %.sink.i52.shrunk to i64
  store i8 %.sink109.i51, ptr %i.i, align 1, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i52
  br label %.thread97

bb.q:                                             ; preds = %bb.d
  %.not48 = icmp eq i32 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 34, %i.bz
  %i.ca = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = icmp ugt i32 %1, 63
  br i1 %i.cc, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.r
  %.zext.i.i = zext nneg i8 %i.ca to i32
  %i.cd = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cp, %.lr.ph.i38.i ], [ %i.cd, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i32 [ %i.cj, %.lr.ph.i38.i ], [ %1, %.lr.ph.preheader.i37.i ] ; 4 uses
  %3 = lshr i32 %.02830.i40.i, 3
  %i.ce = trunc i32 %.02830.i40.i to i8
  %i.cf = and i8 %i.ce, 7
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = zext i32 %.031.i39.i to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !74
  %i.cj = lshr i32 %.02830.i40.i, 6               ; 2 uses
  %4 = trunc i32 %3 to i8
  %i.ck = and i8 %4, 7
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = add nsw i32 %.031.i39.i, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !74
  %i.cp = add nsw i32 %.031.i39.i, -2
  %i.cq = icmp ugt i32 %.02830.i40.i, 4095
  br i1 %i.cq, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !7

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.r
  %.028.lcssa.i30.i = phi i32 [ %1, %bb.r ], [ %i.cj, %.lr.ph.i38.i ] ; 4 uses
  %i.cr = icmp samesign ugt i32 %.028.lcssa.i30.i, 7
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i29.i
  %i.cs = lshr i32 %.028.lcssa.i30.i, 3
  %i.ct = trunc nuw nsw i32 %.028.lcssa.i30.i to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cv, ptr %i.cw, align 4, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i32 [ %i.cs, %bb.s ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i32 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.d, %bb.d
  %i.cx = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.cx, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.cy = icmp eq i32 %1, 0
  br i1 %i.cy, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.da = sub nuw nsw i32 35, %i.cz
  %i.db = lshr i32 %i.da, 2                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = icmp ugt i32 %1, 255
  br i1 %i.dd, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.de = add nsw i32 %i.db, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.du, %.lr.ph.i.i ], [ %i.de, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i32 [ %i.dn, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.df = and i32 %.02830.i.i, 15
  %i.dg = lshr i32 %.02830.i.i, 4
  %i.dh = zext nneg i32 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !74
  %i.dk = zext i32 %.031.i.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !74
  %i.dm = and i32 %i.dg, 15
  %i.dn = lshr i32 %.02830.i.i, 8                 ; 2 uses
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !74
  %i.dr = add nsw i32 %.031.i.i, -1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ds
  store i8 %i.dq, ptr %i.dt, align 1, !tbaa !74
  %i.du = add nsw i32 %.031.i.i, -2
  %i.dv = icmp ugt i32 %.02830.i.i, 65535
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.v
  %.028.lcssa.i.i = phi i32 [ %1, %bb.v ], [ %i.dn, %.lr.ph.i.i ] ; 4 uses
  %i.dw = icmp samesign ugt i32 %.028.lcssa.i.i, 15
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dx = and i32 %.028.lcssa.i.i, 15
  %i.dy = lshr i32 %.028.lcssa.i.i, 4
  %i.dz = zext nneg i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !74
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.eb, ptr %i.ec, align 4, !tbaa !74
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i
  %.pn.in.i.i = phi i32 [ %i.dy, %bb.w ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64: ; preds = %bb.x, %bb.u
  %.sink109.i65 = phi i8 [ %storemerge.i.i, %bb.x ], [ 48, %bb.u ]
  %.sink.i66 = phi i64 [ %i.dc, %bb.x ], [ 1, %bb.u ]
  store i8 %.sink109.i65, ptr %i.i, align 1, !tbaa !74
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i66 ; 3 uses
  %.not120 = icmp eq i16 %i.d, 12288
  br i1 %.not120, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, %.lr.ph
  %.0109 = phi ptr [ %i.ei, %.lr.ph ], [ %i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ] ; 3 uses
  %i.ee = load i8, ptr %.0109, align 1, !tbaa !74
  %i.ef = sext i8 %i.ee to i32
  %i.eg = call i32 @toupper(i32 noundef %i.ef) #35
  %i.eh = trunc i32 %i.eg to i8
  store i8 %i.eh, ptr %.0109, align 1, !tbaa !74
  %i.ei = getelementptr inbounds nuw i8, ptr %.0109, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ei, %i.ed
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !962

bb.y:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit, %bb.t, %bb.q
  %.sink109.i57.sink = phi i8 [ 48, %bb.q ], [ %storemerge.i32.i, %bb.t ], [ 48, %bb.e ], [ 49, %bb.f ], [ 49, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sink.i58.sink = phi i64 [ 1, %bb.q ], [ %i.cb, %bb.t ], [ 1, %bb.e ], [ 1, %bb.f ], [ %i.aj, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.q ], [ @.str.112, %bb.t ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %bb.f ], [ %.str.314..str.315, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  %.sroa.077.1.ph = phi i64 [ 0, %bb.q ], [ 1, %bb.t ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit.loopexit ]
  store i8 %.sink109.i57.sink, ptr %i.i, align 1, !tbaa !74
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i58.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.077.1 = phi i64 [ %.sroa.077.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ej, %.loopexit.sink.split ], [ %i.ed, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %i.ed, %.lr.ph ] ; 2 uses
  %i.ek = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.ek, 0
  %.not50 = icmp eq i64 %.sroa.077.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread97, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.el = sub nsw i64 0, %.sroa.077.1
  %i.em = getelementptr inbounds i8, ptr %i.i, i64 %i.el ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %.sroa.9.1, i64 %.sroa.077.1, i1 false)
  br label %.thread97

.thread97:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.z, %.loopexit
  %.sroa.033.096 = phi ptr [ %.sroa.033.0, %bb.z ], [ %.sroa.033.0, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.bx, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.em, %bb.z ], [ %i.i, %.loopexit ], [ %i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.i, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.en = lshr i16 %i.c, 2
  %i.eo = and i16 %i.en, 3
  %i.ep = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.eo, label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %.thread97
  br label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread97, %bb.aa
  %.sink = phi i8 [ 32, %bb.aa ], [ 43, %.thread97 ]
  store i8 %.sink, ptr %i.ep, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split, %.thread97
  %.0.i = phi ptr [ %.046, %.thread97 ], [ %i.ep, %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.033.096 to i64
  %i.er = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ptrtoint ptr %i.i to i64
  %i.eu = sub i64 %i.et, %i.er
  %i.ev = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.es, ptr nonnull %.0.i, i64 noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIjEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIjEEcT_.exit ], [ %i.ev, %_ZNSt8__format10__put_signIjEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [67 x i8], align 16               ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
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
end_hunk_2
begin_hunk_3_@_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
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
  %i.bw = icmp eq i64 %1, 0
  br i1 %i.bw, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.045, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 66, %i.by
  %i.bz = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = icmp ugt i64 %.045, 63
  br i1 %i.cb, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.q
  %.zext.i.i = zext nneg i8 %i.bz to i32
  %i.cc = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.co, %.lr.ph.i38.i ], [ %i.cc, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i64 [ %i.ci, %.lr.ph.i38.i ], [ %.045, %.lr.ph.preheader.i37.i ] ; 4 uses
  %3 = lshr i64 %.02830.i40.i, 3
  %i.cd = trunc i64 %.02830.i40.i to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = zext i32 %.031.i39.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !74
  %i.ci = lshr i64 %.02830.i40.i, 6               ; 2 uses
  %4 = trunc i64 %3 to i8
  %i.cj = and i8 %4, 7
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = add nsw i32 %.031.i39.i, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !74
  %i.co = add nsw i32 %.031.i39.i, -2
  %i.cp = icmp ugt i64 %.02830.i40.i, 4095
  br i1 %i.cp, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !20

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.q
  %.028.lcssa.i30.i = phi i64 [ %.045, %bb.q ], [ %i.ci, %.lr.ph.i38.i ] ; 4 uses
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
  %.sink.i62.sink = phi i64 [ 1, %bb.p ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.ca, %bb.s ], [ %i.q, %.lr.ph.i42.i ], [ %i.q, %.lr.ph.i42.i.prol.loopexit ]
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
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [67 x i8], align 16               ; 7 uses
  %i.c = load i16, ptr %0, align 4                ; 4 uses
  %i.d = and i16 %i.c, 30720                      ; 4 uses
  %i.e = icmp eq i16 %i.d, 14336
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %1, 128
  br i1 %i.f, label %_ZNSt8__format15__formatter_intIcE15_S_to_characterIyEEcT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIyEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.k = lshr i16 %i.c, 11
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.x [
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 0, label %bb.f
    i16 1, label %bb.f
    i16 4, label %bb.p
    i16 5, label %bb.t
    i16 6, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = icmp eq i16 %i.d, 4096
  %.str.314..str.315 = select i1 %i.m, ptr @.str.314, ptr @.str.315 ; 4 uses
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %.loopexit.sink.split, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true) ; 5 uses
  %i.p = sub nuw nsw i64 64, %i.o                 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.o, 63
  br i1 %.not16.i.i, label %.loopexit.sink.split, label %.lr.ph.preheader.i41.i

.lr.ph.preheader.i41.i:                           ; preds = %.preheader.i.i
  %.015.i.i = xor i64 %i.o, 63                    ; 3 uses
  %i.q = trunc nuw nsw i64 %.015.i.i to i32
  %xtraiter = and i32 %i.q, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.preheader.i41.i
  %i.r = trunc i64 %1 to i8
  %i.s = and i8 %i.r, 1
  %i.t = or disjoint i8 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.015.i.i
  store i8 %i.t, ptr %i.u, align 1, !tbaa !74
  %i.v = lshr i64 %1, 1
  %indvars.iv.next.i.i.prol = sub nsw i64 62, %i.o
  br label %.lr.ph.i42.i.prol.loopexit

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.preheader.i41.i
  %indvars.iv.i.i.unr = phi i64 [ %.015.i.i, %.lr.ph.preheader.i41.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i42.i.prol ]
  %.01317.i.i.unr = phi i64 [ %1, %.lr.ph.preheader.i41.i ], [ %i.v, %.lr.ph.i42.i.prol ]
  %i.w = icmp eq i64 %i.o, 62
  br i1 %i.w, label %.loopexit.sink.split, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i42.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %.01317.i.i = phi i64 [ %i.ah, %.lr.ph.i42.i ], [ %.01317.i.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 3 uses
  %i.x = trunc i64 %.01317.i.i to i8
  %i.y = and i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !74
  %i.ab = lshr i64 %.01317.i.i, 1
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = and i8 %i.ac, 1
  %i.ae = or disjoint i8 %i.ad, 48
  %i.af = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !74
  %i.ah = lshr i64 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ai = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i42.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.aj = icmp eq i64 %1, 0
  br i1 %i.aj, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp ult i64 %1, 10
  br i1 %i.ak, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.m
  %.029.i.i.i = phi i32 [ %i.as, %bb.m ], [ 1, %bb.g ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.ar, %bb.m ], [ %1, %bb.g ] ; 5 uses
  %i.al = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.an = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = udiv i64 %.02328.i.i.i, 10000
  %i.as = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.at = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.at, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  %.022.i.i.i = phi i32 [ %i.aq, %bb.l ], [ %i.am, %bb.h ], [ %i.ao, %bb.j ], [ %i.as, %bb.m ] ; 4 uses
  %i.au = icmp ugt i32 %.022.i.i.i, 64
  br i1 %i.au, label %.thread100, label %bb.n, !prof !152

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.av = icmp ugt i64 %1, 99
  br i1 %i.av, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.n
  %i.aw = add nsw i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.az, %.lr.ph.i9.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bj, %.lr.ph.i9.i.i ], [ %i.aw, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ax = urem i64 %.020.i.i.i, 100
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !74
  %i.bd = zext i32 %.01819.i.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !74
  %i.bf = load i8, ptr %i.ba, align 2, !tbaa !74
  %i.bg = add i32 %.01819.i.i.i, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !74
  %i.bj = add i32 %.01819.i.i.i, -2
  %i.bk = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.bk, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ %1, %bb.n ], [ %i.az, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bl = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.bl, label %bb.o, label %._crit_edge.i.i.i.thread

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bp, ptr %i.bq, align 4, !tbaa !74
  %i.br = load i8, ptr %i.bn, align 2, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51

._crit_edge.i.i.i.thread:                         ; preds = %bb.g, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i131 = phi i64 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %1, %bb.g ]
  %.022.i.i.i125127130 = phi i32 [ %.022.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.g ]
  %i.bs = trunc nuw nsw i64 %.0.lcssa.i.i.i131 to i8
  %i.bt = or disjoint i8 %i.bs, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51: ; preds = %._crit_edge.i.i.i.thread, %bb.o, %bb.f
  %.sink109.i52 = phi i8 [ 48, %bb.f ], [ %i.br, %bb.o ], [ %i.bt, %._crit_edge.i.i.i.thread ]
  %.sink.i53.shrunk = phi i32 [ 1, %bb.f ], [ %.022.i.i.i, %bb.o ], [ %.022.i.i.i125127130, %._crit_edge.i.i.i.thread ]
  %.sink.i53 = zext nneg i32 %.sink.i53.shrunk to i64
  store i8 %.sink109.i52, ptr %i.i, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i53
  br label %.thread100

bb.p:                                             ; preds = %bb.d
  %.not48 = icmp eq i64 %1, 0
  br i1 %.not48, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 66, %i.bw
  %i.bx = udiv i8 %.lhs.trunc.i.i, 3              ; 2 uses
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = icmp ugt i64 %1, 63
  br i1 %i.bz, label %.lr.ph.preheader.i37.i, label %._crit_edge.i29.i

.lr.ph.preheader.i37.i:                           ; preds = %bb.q
  %.zext.i.i = zext nneg i8 %i.bx to i32
  %i.ca = add nsw i32 %.zext.i.i, -1
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.preheader.i37.i
  %.031.i39.i = phi i32 [ %i.cm, %.lr.ph.i38.i ], [ %i.ca, %.lr.ph.preheader.i37.i ] ; 3 uses
  %.02830.i40.i = phi i64 [ %i.cg, %.lr.ph.i38.i ], [ %1, %.lr.ph.preheader.i37.i ] ; 4 uses
  %3 = lshr i64 %.02830.i40.i, 3
  %i.cb = trunc i64 %.02830.i40.i to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = or disjoint i8 %i.cc, 48
  %i.ce = zext i32 %.031.i39.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !74
  %i.cg = lshr i64 %.02830.i40.i, 6               ; 2 uses
  %4 = trunc i64 %3 to i8
  %i.ch = and i8 %4, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = add nsw i32 %.031.i39.i, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ck
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !74
  %i.cm = add nsw i32 %.031.i39.i, -2
  %i.cn = icmp ugt i64 %.02830.i40.i, 4095
  br i1 %i.cn, label %.lr.ph.i38.i, label %._crit_edge.i29.i, !llvm.loop !20

._crit_edge.i29.i:                                ; preds = %.lr.ph.i38.i, %bb.q
  %.028.lcssa.i30.i = phi i64 [ %1, %bb.q ], [ %i.cg, %.lr.ph.i38.i ] ; 4 uses
  %i.co = icmp samesign ugt i64 %.028.lcssa.i30.i, 7
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i29.i
  %i.cp = lshr i64 %.028.lcssa.i30.i, 3
  %i.cq = trunc nuw nsw i64 %.028.lcssa.i30.i to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.cs, ptr %i.ct, align 4, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i29.i
  %storemerge.in.in.i.i = phi i64 [ %i.cp, %bb.r ], [ %.028.lcssa.i30.i, %._crit_edge.i29.i ]
  %storemerge.in.i31.i = trunc nuw nsw i64 %storemerge.in.in.i.i to i8
  %storemerge.i32.i = or disjoint i8 %storemerge.in.i31.i, 48
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.d, %bb.d
  %i.cu = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.cu, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.cv = icmp eq i64 %1, 0
  br i1 %i.cv, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = sub nuw nsw i32 67, %i.cx
  %i.cz = lshr i32 %i.cy, 2                       ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = icmp ugt i64 %1, 255
  br i1 %i.db, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.dc = add nsw i32 %i.cz, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.dq, %.lr.ph.i.i ], [ %i.dc, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.dd = and i64 %.02830.i.i, 15
  %i.de = lshr i64 %.02830.i.i, 4
  %i.df = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !74
  %i.dh = zext i32 %.031.i.i to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dh
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !74
  %i.dj = and i64 %i.de, 15
  %i.dk = lshr i64 %.02830.i.i, 8                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !74
  %i.dn = add nsw i32 %.031.i.i, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1, !tbaa !74
  %i.dq = add nsw i32 %.031.i.i, -2
  %i.dr = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.dr, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.028.lcssa.i.i = phi i64 [ %1, %bb.u ], [ %i.dk, %.lr.ph.i.i ] ; 4 uses
  %i.ds = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.dt = and i64 %.028.lcssa.i.i, 15
  %i.du = lshr i64 %.028.lcssa.i.i, 4
  %i.dv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !74
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.dw, ptr %i.dx, align 4, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.du, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67: ; preds = %bb.w, %bb.t
  %.sink109.i68 = phi i8 [ %storemerge.i.i, %bb.w ], [ 48, %bb.t ]
  %.sink.i69 = phi i64 [ %i.da, %bb.w ], [ 1, %bb.t ]
  store i8 %.sink109.i68, ptr %i.i, align 1, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i69 ; 3 uses
  %.not123 = icmp eq i16 %i.d, 12288
  br i1 %.not123, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67, %.lr.ph
  %.0112 = phi ptr [ %i.ed, %.lr.ph ], [ %i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ] ; 3 uses
  %i.dz = load i8, ptr %.0112, align 1, !tbaa !74
  %i.ea = sext i8 %i.dz to i32
  %i.eb = call i32 @toupper(i32 noundef %i.ea) #35
  %i.ec = trunc i32 %i.eb to i8
  store i8 %i.ec, ptr %.0112, align 1, !tbaa !74
  %i.ed = getelementptr inbounds nuw i8, ptr %.0112, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ed, %i.dy
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !964

bb.x:                                             ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i, %bb.s, %bb.p, %bb.e, %.preheader.i.i
  %.sink109.i60.sink = phi i8 [ 48, %bb.p ], [ 48, %bb.e ], [ 49, %.preheader.i.i ], [ %storemerge.i32.i, %bb.s ], [ 49, %.lr.ph.i42.i ], [ 49, %.lr.ph.i42.i.prol.loopexit ]
  %.sink.i61.sink = phi i64 [ 1, %bb.p ], [ 1, %bb.e ], [ 1, %.preheader.i.i ], [ %i.by, %bb.s ], [ %i.p, %.lr.ph.i42.i ], [ %i.p, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.p ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %.preheader.i.i ], [ @.str.112, %bb.s ], [ %.str.314..str.315, %.lr.ph.i42.i ], [ %.str.314..str.315, %.lr.ph.i42.i.prol.loopexit ]
  %.sroa.080.1.ph = phi i64 [ 0, %bb.p ], [ 2, %bb.e ], [ 2, %.preheader.i.i ], [ 1, %bb.s ], [ 2, %.lr.ph.i42.i ], [ 2, %.lr.ph.i42.i.prol.loopexit ]
  store i8 %.sink109.i60.sink, ptr %i.i, align 1, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i61.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.080.1 = phi i64 [ %.sroa.080.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ee, %.loopexit.sink.split ], [ %i.dy, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i67 ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.ef = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.ef, 0
  %.not50 = icmp eq i64 %.sroa.080.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread100, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.eg = sub nsw i64 0, %.sroa.080.1
  %i.eh = getelementptr inbounds i8, ptr %i.i, i64 %i.eg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %.sroa.9.1, i64 %.sroa.080.1, i1 false)
  br label %.thread100

.thread100:                                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51, %bb.y, %.loopexit
  %.sroa.033.099 = phi ptr [ %.sroa.033.0, %bb.y ], [ %.sroa.033.0, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.bu, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51 ]
  %.046 = phi ptr [ %i.eh, %bb.y ], [ %i.i, %.loopexit ], [ %i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i51 ] ; 2 uses
  %i.ei = lshr i16 %i.c, 2
  %i.ej = and i16 %i.ei, 3
  %i.ek = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.ej, label %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.z
  ]

bb.z:                                             ; preds = %.thread100
  br label %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread100, %bb.z
  %.sink = phi i8 [ 32, %bb.z ], [ 43, %.thread100 ]
  store i8 %.sink, ptr %i.ek, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit.sink.split, %.thread100
  %.0.i = phi ptr [ %.046, %.thread100 ], [ %i.ek, %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.el = ptrtoint ptr %.sroa.033.099 to i64
  %i.em = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ptrtoint ptr %i.i to i64
  %i.ep = sub i64 %i.eo, %i.em
  %i.eq = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.en, ptr nonnull %.0.i, i64 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIyEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIyEEcT_.exit ], [ %i.eq, %_ZNSt8__format10__put_signIyEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.std::__format::_Spec", align 4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i16 0, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i16 0, ptr %i.c, align 4, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  store i8 32, ptr %i.d, align 2, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 13 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !146    ; 9 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !tbaa !74    ; 5 uses
  switch i8 %i.i, label %bb.c [
    i8 125, label %_ZZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcEENKUlvE0_clEv.exit.thread
    i8 123, label %_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.f to i64
end_hunk_3
begin_hunk_4_@_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:bb.a
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
  %.031.i43.i = phi i32 [ %i.db, %.lr.ph.i42.i ], [ %i.cp, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.cv, %.lr.ph.i42.i ], [ %.045, %.lr.ph.preheader.i41.i ] ; 4 uses
  %3 = lshr i128 %.02830.i44.i, 3
  %i.cq = trunc i128 %.02830.i44.i to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = zext i32 %.031.i43.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !74
  %i.cv = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %4 = trunc i128 %3 to i8
  %i.cw = and i8 %4, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = add nsw i32 %.031.i43.i, -1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cz
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !74
  %i.db = add nsw i32 %.031.i43.i, -2
  %i.dc = icmp ugt i128 %.02830.i44.i, 4095
  br i1 %i.dc, label %.lr.ph.i42.i, label %._crit_edge.i32.i, !llvm.loop !27

._crit_edge.i32.i:                                ; preds = %.lr.ph.i42.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.028.lcssa.i33.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i ], [ %i.cv, %.lr.ph.i42.i ] ; 3 uses
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
  %.031.i.i = phi i32 [ %i.ek, %.lr.ph.i.i ], [ %i.dw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.ed, %.lr.ph.i.i ], [ %.045, %.lr.ph.preheader.i.i ] ; 4 uses
  %5 = lshr i128 %.02830.i.i, 4
  %i.dx = trunc i128 %.02830.i.i to i64
  %i.dy = and i64 %i.dx, 15
  %i.dz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !74
  %i.eb = zext i32 %.031.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eb
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !74
  %i.ed = lshr i128 %.02830.i.i, 8                ; 2 uses
  %6 = trunc i128 %5 to i64
  %i.ee = and i64 %6, 15
  %i.ef = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !74
  %i.eh = add nsw i32 %.031.i.i, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !74
  %i.ek = add nsw i32 %.031.i.i, -2
  %i.el = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %.045, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.ed, %.lr.ph.i.i ] ; 3 uses
  %i.em = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.em, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.en = lshr i128 %.028.lcssa.i.i, 4
  %i.eo = and i64 %extract.t37.i.i, 15
  %i.ep = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.eq, ptr %i.er, align 4, !tbaa !74
  %extract.t.i.i = trunc i128 %i.en to i64
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
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i67 ; 3 uses
  %.not119 = icmp eq i16 %i.d, 12288
  br i1 %.not119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65, %.lr.ph
  %.0107 = phi ptr [ %i.ex, %.lr.ph ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ] ; 3 uses
  %i.et = load i8, ptr %.0107, align 1, !tbaa !74
  %i.eu = sext i8 %i.et to i32
  %i.ev = call i32 @toupper(i32 noundef %i.eu) #35
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %.0107, align 1, !tbaa !74
  %i.ex = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.es
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1067

bb.aa:                                            ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i, %._crit_edge.thread.i34.i, %bb.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, %bb.e
  %.sink120.i58.sink = phi i8 [ 48, %bb.q ], [ 48, %bb.e ], [ 49, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %storemerge.i35.i, %._crit_edge.thread.i34.i ], [ 49, %.lr.ph.i50.i ], [ 49, %.lr.ph.i50.i.prol.loopexit ]
  %.sink.i59.sink = phi i64 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %i.cn, %._crit_edge.thread.i34.i ], [ %i.x, %.lr.ph.i50.i ], [ %i.x, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ %spec.select, %bb.q ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select, %._crit_edge.thread.i34.i ], [ %.str.314..str.315, %.lr.ph.i50.i ], [ %.str.314..str.315, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.078.1.ph = phi i64 [ %spec.select99, %bb.q ], [ 2, %bb.e ], [ 2, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %spec.select99, %._crit_edge.thread.i34.i ], [ 2, %.lr.ph.i50.i ], [ 2, %.lr.ph.i50.i.prol.loopexit ]
  store i8 %.sink120.i58.sink, ptr %i.j, align 1, !tbaa !74
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.i59.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.078.1 = phi i64 [ %.sroa.078.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ey, %.loopexit.sink.split ], [ %i.es, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i65 ], [ %i.es, %.lr.ph ] ; 2 uses
  %i.ez = and i16 %i.c, 16
  %.not50 = icmp eq i16 %i.ez, 0
  %.not51 = icmp eq i64 %.sroa.078.1, 0
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %.thread94, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.fa = sub nsw i64 0, %.sroa.078.1
  %i.fb = getelementptr inbounds i8, ptr %i.j, i64 %i.fa ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr align 1 %.sroa.9.1, i64 %.sroa.078.1, i1 false)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.ab, %.loopexit
  %.sroa.033.093 = phi ptr [ %.sroa.033.0, %bb.ab ], [ %.sroa.033.0, %.loopexit ], [ %i.k, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.cc, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.fb, %bb.ab ], [ %i.j, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.j, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  br i1 %i.i, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %.thread94
  %i.fd = lshr i16 %i.c, 2
  %i.fe = and i16 %i.fd, 3
  switch i16 %i.fe, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %bb.ac, %.thread94, %bb.ad
  %.sink = phi i8 [ 32, %bb.ad ], [ 45, %.thread94 ], [ 43, %bb.ac ]
  store i8 %.sink, ptr %i.fc, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split, %bb.ac
  %.0.i = phi ptr [ %.046, %bb.ac ], [ %i.fc, %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.033.093 to i64
  %i.fg = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ptrtoint ptr %i.j to i64
  %i.fj = sub i64 %i.fi, %i.fg
  %i.fk = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.fh, ptr nonnull %.0.i, i64 noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterInEEcT_.exit ], [ %i.fk, %_ZNSt8__format10__put_signInEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i128 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
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
  tail call void @_ZSt20__throw_format_errorPKc(ptr noundef nonnull @.str.322) #33
  unreachable

_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit: ; preds = %bb.b
  %i.g = trunc nuw nsw i128 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !74
  %i.h = call ptr @_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE(i64 1, ptr nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
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
  %.str.314..str.315 = select i1 %i.m, ptr @.str.314, ptr @.str.315 ; 4 uses
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
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !74
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
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !74
  %i.aj = lshr i128 %.01317.i.i, 1
  %i.ak = trunc i128 %i.aj to i8
  %i.al = and i8 %i.ak, 1
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !74
  %i.ap = lshr i128 %.01317.i.i, 2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.aq = and i64 %indvars.iv.next.i.i.1, 4294967295
  %.not.i.i.1 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.1, label %.loopexit.sink.split, label %.lr.ph.i50.i, !llvm.loop !24

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
  br i1 %i.bb, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.022.i.i.i = phi i32 [ %i.ay, %bb.m ], [ %i.au, %bb.i ], [ %i.aw, %bb.k ], [ %i.ba, %bb.n ] ; 4 uses
  %i.bc = icmp ugt i32 %.022.i.i.i, 128
  br i1 %i.bc, label %.thread98, label %bb.o, !prof !152

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
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !74
  %i.bl = zext i32 %.01819.i.i.i to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !74
  %i.bn = load i8, ptr %i.bi, align 2, !tbaa !74
  %i.bo = add i32 %.01819.i.i.i, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !74
  %i.br = add i32 %.01819.i.i.i, -2
  %i.bs = icmp ugt i128 %.020.i.i.i, 9999
  br i1 %i.bs, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !26

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
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !74
  %i.bz = load i8, ptr %i.bv, align 2, !tbaa !74
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
  store i8 %.sink120.i51, ptr %i.i, align 1, !tbaa !74
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
  %.031.i43.i = phi i32 [ %i.cz, %.lr.ph.i42.i ], [ %i.cn, %.lr.ph.preheader.i41.i ] ; 3 uses
  %.02830.i44.i = phi i128 [ %i.ct, %.lr.ph.i42.i ], [ %1, %.lr.ph.preheader.i41.i ] ; 4 uses
  %3 = lshr i128 %.02830.i44.i, 3
  %i.co = trunc i128 %.02830.i44.i to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = zext i32 %.031.i43.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !74
  %i.ct = lshr i128 %.02830.i44.i, 6              ; 2 uses
  %4 = trunc i128 %3 to i8
  %i.cu = and i8 %4, 7
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = add nsw i32 %.031.i43.i, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cx
  store i8 %i.cv, ptr %i.cy, align 1, !tbaa !74
  %i.cz = add nsw i32 %.031.i43.i, -2
  %i.da = icmp ugt i128 %.02830.i44.i, 4095
  br i1 %i.da, label %.lr.ph.i42.i, label %._crit_edge.i32.i, !llvm.loop !27

._crit_edge.i32.i:                                ; preds = %.lr.ph.i42.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i
  %.028.lcssa.i33.i = phi i128 [ %1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i30.i ], [ %i.ct, %.lr.ph.i42.i ] ; 3 uses
  %i.db = icmp samesign ugt i128 %.028.lcssa.i33.i, 7
  %extract.t38.i.i = trunc i128 %.028.lcssa.i33.i to i8 ; 2 uses
  br i1 %i.db, label %bb.u, label %._crit_edge.thread.i34.i

bb.u:                                             ; preds = %._crit_edge.i32.i
  %i.dc = lshr i128 %.028.lcssa.i33.i, 3
  %i.dd = and i8 %extract.t38.i.i, 7
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.de, ptr %i.df, align 4, !tbaa !74
  %extract.t.i40.i = trunc i128 %i.dc to i8
  br label %._crit_edge.thread.i34.i

._crit_edge.thread.i34.i:                         ; preds = %bb.u, %._crit_edge.i32.i
  %.028.lcssa37.sink.off0.i.i = phi i8 [ %extract.t.i40.i, %bb.u ], [ %extract.t38.i.i, %._crit_edge.i32.i ]
  %storemerge.i35.i = or disjoint i8 %.028.lcssa37.sink.off0.i.i, 48
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.d, %bb.d
  %i.dg = icmp eq i16 %i.d, 10240
  %.str.316..str.317 = select i1 %i.dg, ptr @.str.316, ptr @.str.317 ; 2 uses
  %i.dh = icmp eq i128 %1, 0
  br i1 %i.dh, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = lshr i128 %1, 64                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i128 %i.di, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.dm = trunc nuw i128 %1 to i64
  %i.dn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = or disjoint i32 %i.do, 64
  br label %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i

_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i: ; preds = %bb.y, %bb.x
  %.1.i.i.i.i.i = phi i32 [ %i.dp, %bb.y ], [ %i.dl, %bb.x ]
  %i.dq = sub nuw nsw i32 131, %.1.i.i.i.i.i
  %i.dr = lshr i32 %i.dq, 2                       ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = icmp ugt i128 %1, 255
  br i1 %i.dt, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %i.du = add nsw i32 %i.dr, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.ei, %.lr.ph.i.i ], [ %i.du, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i128 [ %i.eb, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 4 uses
  %5 = lshr i128 %.02830.i.i, 4
  %i.dv = trunc i128 %.02830.i.i to i64
  %i.dw = and i64 %i.dv, 15
  %i.dx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !74
  %i.dz = zext i32 %.031.i.i to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dz
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !74
  %i.eb = lshr i128 %.02830.i.i, 8                ; 2 uses
  %6 = trunc i128 %5 to i64
  %i.ec = and i64 %6, 15
  %i.ed = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !74
  %i.ef = add nsw i32 %.031.i.i, -1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.eg
  store i8 %i.ee, ptr %i.eh, align 1, !tbaa !74
  %i.ei = add nsw i32 %.031.i.i, -2
  %i.ej = icmp ugt i128 %.02830.i.i, 65535
  br i1 %i.ej, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i
  %.028.lcssa.i.i = phi i128 [ %1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i.i ], [ %i.eb, %.lr.ph.i.i ] ; 3 uses
  %i.ek = icmp samesign ugt i128 %.028.lcssa.i.i, 15
  %extract.t37.i.i = trunc i128 %.028.lcssa.i.i to i64 ; 2 uses
  br i1 %i.ek, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.el = lshr i128 %.028.lcssa.i.i, 4
  %i.em = and i64 %extract.t37.i.i, 15
  %i.en = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.eo, ptr %i.ep, align 4, !tbaa !74
  %extract.t.i.i = trunc i128 %i.el to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %._crit_edge.i.i
  %.028.lcssa36.sink.off0.i.i = phi i64 [ %extract.t.i.i, %bb.z ], [ %extract.t37.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.lcssa36.sink.off0.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !74
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64: ; preds = %._crit_edge.thread.i.i, %bb.v
  %.sink120.i65 = phi i8 [ %storemerge.i.i, %._crit_edge.thread.i.i ], [ 48, %bb.v ]
  %.sink.i66 = phi i64 [ %i.ds, %._crit_edge.thread.i.i ], [ 1, %bb.v ]
  store i8 %.sink120.i65, ptr %i.i, align 1, !tbaa !74
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i66 ; 3 uses
  %.not123 = icmp eq i16 %i.d, 12288
  br i1 %.not123, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64, %.lr.ph
  %.0110 = phi ptr [ %i.ev, %.lr.ph ], [ %i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ] ; 3 uses
  %i.er = load i8, ptr %.0110, align 1, !tbaa !74
  %i.es = sext i8 %i.er to i32
  %i.et = call i32 @toupper(i32 noundef %i.es) #35
  %i.eu = trunc i32 %i.et to i8
  store i8 %i.eu, ptr %.0110, align 1, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %.0110, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ev, %i.eq
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1068

bb.aa:                                            ; preds = %bb.d
  unreachable

.loopexit.sink.split:                             ; preds = %.lr.ph.i50.i.prol.loopexit, %.lr.ph.i50.i, %._crit_edge.thread.i34.i, %bb.q, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i, %bb.e
  %.sink120.i57.sink = phi i8 [ 48, %bb.q ], [ 48, %bb.e ], [ 49, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %storemerge.i35.i, %._crit_edge.thread.i34.i ], [ 49, %.lr.ph.i50.i ], [ 49, %.lr.ph.i50.i.prol.loopexit ]
  %.sink.i58.sink = phi i64 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ %i.cl, %._crit_edge.thread.i34.i ], [ %i.w, %.lr.ph.i50.i ], [ %i.w, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.9.1.ph = phi ptr [ null, %bb.q ], [ %.str.314..str.315, %bb.e ], [ %.str.314..str.315, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ @.str.112, %._crit_edge.thread.i34.i ], [ %.str.314..str.315, %.lr.ph.i50.i ], [ %.str.314..str.315, %.lr.ph.i50.i.prol.loopexit ]
  %.sroa.077.1.ph = phi i64 [ 0, %bb.q ], [ 2, %bb.e ], [ 2, %_ZNSt8__detail16__to_chars_len_2IoEEjT_.exit.i47.i ], [ 1, %._crit_edge.thread.i34.i ], [ 2, %.lr.ph.i50.i ], [ 2, %.lr.ph.i50.i.prol.loopexit ]
  store i8 %.sink120.i57.sink, ptr %i.i, align 1, !tbaa !74
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i58.sink
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64
  %.sroa.9.1 = phi ptr [ %.sroa.9.1.ph, %.loopexit.sink.split ], [ %.str.316..str.317, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %.str.316..str.317, %.lr.ph ]
  %.sroa.077.1 = phi i64 [ %.sroa.077.1.ph, %.loopexit.sink.split ], [ 2, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ 2, %.lr.ph ] ; 3 uses
  %.sroa.033.0 = phi ptr [ %i.ew, %.loopexit.sink.split ], [ %i.eq, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i64 ], [ %i.eq, %.lr.ph ] ; 2 uses
  %i.ex = and i16 %i.c, 16
  %.not49 = icmp eq i16 %i.ex, 0
  %.not50 = icmp eq i64 %.sroa.077.1, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %.thread98, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.ey = sub nsw i64 0, %.sroa.077.1
  %i.ez = getelementptr inbounds i8, ptr %i.i, i64 %i.ey ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr align 1 %.sroa.9.1, i64 %.sroa.077.1, i1 false)
  br label %.thread98

.thread98:                                        ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %bb.ab, %.loopexit
  %.sroa.033.097 = phi ptr [ %.sroa.033.0, %bb.ab ], [ %.sroa.033.0, %.loopexit ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.cb, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %.046 = phi ptr [ %i.ez, %bb.ab ], [ %i.i, %.loopexit ], [ %i.i, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ] ; 2 uses
  %i.fa = lshr i16 %i.c, 2
  %i.fb = and i16 %i.fa, 3
  %i.fc = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  switch i16 %i.fb, label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit [
    i16 1, label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split
    i16 3, label %bb.ac
  ]

bb.ac:                                            ; preds = %.thread98
  br label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split

_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split: ; preds = %.thread98, %bb.ac
  %.sink = phi i8 [ 32, %bb.ac ], [ 43, %.thread98 ]
  store i8 %.sink, ptr %i.fc, align 1, !tbaa !74
  br label %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit

_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit: ; preds = %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split, %.thread98
  %.0.i = phi ptr [ %.046, %.thread98 ], [ %i.fc, %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit.sink.split ] ; 2 uses
  %i.fd = ptrtoint ptr %.sroa.033.097 to i64
  %i.fe = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ptrtoint ptr %i.i to i64
  %i.fh = sub i64 %i.fg, %i.fe
  %i.fi = call ptr @_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %i.ff, ptr nonnull %.0.i, i64 noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit
  %.sroa.044.0 = phi ptr [ %i.h, %_ZNSt8__format15__formatter_intIcE15_S_to_characterIoEEcT_.exit ], [ %i.fi, %_ZNSt8__format10__put_signIoEEPcT_NS_5_SignES1_.exit ]
  ret ptr %.sroa.044.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__format8_ScannerIcE23_M_on_replacement_fieldEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 9 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !74    ; 4 uses
  switch i8 %i.c, label %bb.f [
    i8 125, label %bb.b
    i8 58, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !148
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #33
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !151
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !148
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit15

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #33
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit15: ; preds = %bb.d
  store i32 2, ptr %i.j, align 8, !tbaa !148
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !151  ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.p, ptr %i.a, align 8, !tbaa !146
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !147  ; 4 uses
  %i.s = icmp ne ptr %i.b, %i.r
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i8 %i.c, 48
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.v = add i8 %i.c, -49
  %or.cond.i = icmp ult i8 %i.v, 9
  br i1 %or.cond.i, label %bb.i, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread26

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i8 %i.c to i16
  %i.x = add nsw i16 %i.w, -48                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.threadthread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !74   ; 2 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond14.i = icmp ult i8 %i.ab, 10
  br i1 %or.cond14.i, label %bb.k, label %_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = ptrtoaddr ptr %i.b to i64
  %i.ad = ptrtoaddr ptr %i.r to i64
  %i.ae = sub i64 %i.ad, %i.ac
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.ae
  br label %.lr.ph.i.i.i

end_hunk_4
