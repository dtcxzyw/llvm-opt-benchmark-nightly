inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  %i.v = icmp samesign ult i32 %i.q, 4
  br i1 %i.v, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 7, ptr %i.w, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = icmp ult i32 %1, 2                       ; 2 uses
  %i.z = select i1 %i.y, i32 7, i32 4             ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.aa = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ab, ptr %.022.ptr, align 8, !tbaa !19
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !19
  store i32 %i.z, ptr %.022.ptr.2, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !109 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 15
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = and i32 %i.ae, 15
  %i.ah = icmp eq i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = add nuw nsw i32 %i.q, 8                 ; 15 uses
  %i.ak = icmp slt i32 %1, 2
  %i.al = add nsw i32 %1, -2                      ; 2 uses
  %i.am = add nsw i32 %1, -1                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.not32.i = trunc i32 %1 to i1                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 30
  %spec.select = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %spec.select652 = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not32.i.mask = and i32 %1, 1
  %spec.select653 = zext nneg i32 %.not32.i.mask to i64 ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %.not32.i.mask655 = and i32 %1, 1
  %spec.select654 = zext nneg i32 %.not32.i.mask655 to i64 ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %.sroa.0.20..sroa_idx699 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %.sroa.0.24..sroa_idx703 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.28..sroa_idx707 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.2..sroa_idx694 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.18..sroa_idx697 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 18
  %.sroa.0.22..sroa_idx701 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 22
  %.sroa.0.26..sroa_idx705 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.2..sroa_idx695 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.22..sroa_idx700 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 22
  %.sroa.0.26..sroa_idx704 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.30..sroa_idx709 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  %.sroa.0.4..sroa_idx696 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.20..sroa_idx698 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %.sroa.0.24..sroa_idx702 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %.preheader
  %.pre = load i32, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.pre522 = load i32, ptr %i.b, align 8, !tbaa !23 ; 3 uses
  %.pre530 = zext i32 %.pre to i64
  %i.bz = icmp samesign ult i32 %.sroa.30.10, 65
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp sgt i32 %.sroa.80211.10, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = and i32 %.sroa.80211.10, 3
  %i.cc = icmp eq i32 %i.cb, 0
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = lshr i32 %.sroa.30.10, 3
  %i.ce = sub nsw i32 %.sroa.80211.10, %i.cd      ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add nuw nsw i64 %.pre530, %i.cf
  %i.ch = zext i32 %.pre522 to i64
  %.not.i.i45 = icmp samesign ugt i64 %i.cg, %i.ch
  br i1 %.not.i.i45, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit46

bb.f:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit46:      ; preds = %._crit_edge
  %i.ci = icmp sgt i32 %.pre522, -1
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i32 %.pre, %i.ce            ; 2 uses
  %i.ck = icmp samesign ule i32 %i.cj, %.pre522
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp sgt i32 %i.ce, -1
  tail call void @llvm.assume(i1 %i.cl)
  store i32 %i.cj, ptr %i.d, align 8, !tbaa !27
  ret void

bb.g:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv458 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next459, %.preheader ] ; 8 uses
  %i.cm = phi i32 [ %i.ae, %.lr.ph ], [ %i.xw, %.preheader ] ; 3 uses
  %.sroa.80211.0409 = phi i32 [ 0, %.lr.ph ], [ %.sroa.80211.10, %.preheader ] ; 8 uses
  %.sroa.30.0408 = phi i32 [ 0, %.lr.ph ], [ %.sroa.30.10, %.preheader ] ; 6 uses
  %.sroa.0174.0407 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0174.10, %.preheader ] ; 3 uses
  %i.cn = shl nuw i64 %indvars.iv458, 1
  %i.co = add i64 %i.cn, 8589934560
  %i.cp = and i64 %i.co, 8589934560
  %i.cq = load ptr, ptr %0, align 8, !tbaa !11    ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 568
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !135, !noalias !136 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 592
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !29, !noalias !136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 608
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !139, !noalias !136
  %i.cx = mul nsw i32 %i.cw, %i.cu                ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 612
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !140, !noalias !136 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.db = load i32, ptr %i.da, align 8, !tbaa !141, !noalias !136
  %i.dc = ashr i32 %i.db, 1                       ; 7 uses
  %i.dd = icmp ne i32 %i.dc, 0
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = icmp sge i32 %i.dc, %i.cx
  tail call void @llvm.assume(i1 %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.df = load i8, ptr %i.ai, align 4, !tbaa !111, !noalias !142 ; 3 uses
  %i.dg = and i8 %i.df, 4
  %.not323 = icmp eq i8 %i.dg, 0
  %i.dh = and i64 %indvars.iv458, 48
  %i.di = icmp eq i64 %i.dh, 0
  %or.cond66.i = and i1 %i.di, %.not323
  br i1 %or.cond66.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.dj = icmp samesign ult i32 %.sroa.30.0408, 65
  tail call void @llvm.assume(i1 %i.dj), !noalias !142
  %i.dk = icmp sgt i32 %.sroa.80211.0409, -1
  tail call void @llvm.assume(i1 %i.dk), !noalias !142
  %i.dl = and i32 %.sroa.80211.0409, 3
  %i.dm = icmp eq i32 %i.dl, 0
  tail call void @llvm.assume(i1 %i.dm), !noalias !142
  %.not.i.i48 = icmp samesign ult i32 %.sroa.30.0408, 2
  br i1 %.not.i.i48, label %bb.i, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dn = add nuw nsw i32 %.sroa.80211.0409, 4    ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.dn, %i.q
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !132

bb.j:                                             ; preds = %bb.i
  %i.do = zext nneg i32 %.sroa.80211.0409 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.do
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.dq = icmp samesign ugt i32 %.sroa.80211.0409, %i.aj
  br i1 %i.dq, label %bb.l, label %bb.m, !prof !132

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.0.i.i.i, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.0409) ; 3 uses
  %i.dr = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.dr)
  %i.ds = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.dt = icmp samesign ult i32 %i.ds, 5
  tail call void @llvm.assume(i1 %i.dt), !noalias !142
  %i.du = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.du
  %i.dw = zext nneg i32 %i.ds to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.dv, i64 %i.dw, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.m ], [ %i.dp, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dx = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.dy = or disjoint i32 %.sroa.30.0408, 32
  %i.dz = sub nuw nsw i32 32, %.sroa.30.0408
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 %i.dx, %i.ea
  %i.ec = or i64 %i.eb, %.sroa.0174.0407
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit: ; preds = %bb.h, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i
  %.sroa.80211.11 = phi i32 [ %i.dn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.80211.0409, %bb.h ] ; 7 uses
  %i.ed = phi i64 [ %i.ec, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.0174.0407, %bb.h ] ; 2 uses
  %i.ee = phi i32 [ %i.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.30.0408, %bb.h ] ; 4 uses
  %i.ef = lshr i64 %i.ed, 62                      ; 2 uses
  %i.eg = add nsw i32 %i.ee, -2                   ; 2 uses
  %i.eh = shl i64 %i.ed, 2                        ; 3 uses
  %.not324 = icmp eq i64 %i.ef, 3
  br i1 %.not324, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.ei = load i32, ptr %i.x, align 4, !tbaa !134, !noalias !142
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals, i64 %i.ef
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !19, !noalias !142
  %i.el = add nsw i32 %i.ek, %i.ei
  br label %bb.u

bb.o:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.em = and i32 %.sroa.80211.11, 3
  %i.en = icmp eq i32 %i.em, 0
  tail call void @llvm.assume(i1 %i.en), !noalias !142
  %.not.i.i50 = icmp samesign ult i32 %i.ee, 14
  br i1 %.not.i.i50, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.eo = add nuw nsw i32 %.sroa.80211.11, 4      ; 2 uses
  %.not.i.i.i53 = icmp samesign ugt i32 %i.eo, %i.q
  br i1 %.not.i.i.i53, label %bb.r, label %bb.q, !prof !132

bb.q:                                             ; preds = %bb.p
  %i.ep = zext nneg i32 %.sroa.80211.11 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ep
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

bb.r:                                             ; preds = %bb.p
  %i.er = icmp samesign ugt i32 %.sroa.80211.11, %i.aj
  br i1 %i.er, label %bb.s, label %bb.t, !prof !132

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %.sroa.0.i.i.i49, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i60 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.11) ; 3 uses
  %i.es = add nuw nsw i32 %.sroa.speculated27.i.i.i.i60, 4
  %.sroa.speculated.i.i.i.i61 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.es)
  %i.et = sub nsw i32 %.sroa.speculated.i.i.i.i61, %.sroa.speculated27.i.i.i.i60 ; 2 uses
  %i.eu = icmp samesign ult i32 %i.et, 5
  tail call void @llvm.assume(i1 %i.eu), !noalias !142
  %i.ev = zext nneg i32 %.sroa.speculated27.i.i.i.i60 to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ev
  %i.ex = zext nneg i32 %i.et to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i49, ptr align 1 %i.ew, i64 %i.ex, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56 = phi ptr [ %.sroa.0.i.i.i49, %bb.t ], [ %i.eq, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.ey = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 to i64
  %i.ez = add nuw nsw i32 %i.ee, 30
  %i.fa = sub nuw nsw i32 34, %i.ee
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 %i.ey, %i.fb
  %i.fd = or i64 %i.fc, %i.eh
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62: ; preds = %bb.o, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55
  %.sroa.80211.12 = phi i32 [ %i.eo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %.sroa.80211.11, %bb.o ]
  %i.fe = phi i64 [ %i.fd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.eh, %bb.o ] ; 2 uses
  %i.ff = phi i32 [ %i.ez, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.eg, %bb.o ]
  %i.fg = lshr i64 %i.fe, 52
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = add nsw i32 %i.ff, -12
  %i.fj = shl i64 %i.fe, 12
  br label %bb.u

bb.u:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62, %bb.n
  %.sroa.0174.3 = phi i64 [ %i.eh, %bb.n ], [ %i.fj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %.sroa.30.3 = phi i32 [ %i.eg, %bb.n ], [ %i.fi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %.sroa.80211.3 = phi i32 [ %.sroa.80211.11, %bb.n ], [ %.sroa.80211.12, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %i.fk = phi i32 [ %i.el, %bb.n ], [ %i.fh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  store i32 %i.fk, ptr %i.x, align 4, !tbaa !134, !noalias !142
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.sroa.0174.1 = phi i64 [ %.sroa.0174.3, %bb.u ], [ %.sroa.0174.0407, %bb.g ] ; 5 uses
  %.sroa.30.1 = phi i32 [ %.sroa.30.3, %bb.u ], [ %.sroa.30.0408, %bb.g ] ; 7 uses
  %.sroa.80211.1 = phi i32 [ %.sroa.80211.3, %bb.u ], [ %.sroa.80211.0409, %bb.g ] ; 17 uses
  %i.fl = and i8 %i.df, 2
  %.not325 = icmp eq i8 %i.fl, 0
  %i.fm = icmp samesign ult i32 %.sroa.30.1, 65
  tail call void @llvm.assume(i1 %i.fm), !noalias !142
  %i.fn = icmp sgt i32 %.sroa.80211.1, -1
  tail call void @llvm.assume(i1 %i.fn), !noalias !142
  %i.fo = and i32 %.sroa.80211.1, 3
  %i.fp = icmp eq i32 %i.fo, 0
  tail call void @llvm.assume(i1 %i.fp), !noalias !142
  %.not.i.i78 = icmp eq i32 %.sroa.30.1, 0        ; 2 uses
  br i1 %.not325, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.x, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.fq = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i67 = icmp samesign ugt i32 %i.fq, %i.q
  br i1 %.not.i.i.i67, label %bb.z, label %bb.y, !prof !132

bb.y:                                             ; preds = %bb.x
  %i.fr = zext nneg i32 %.sroa.80211.1 to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

bb.z:                                             ; preds = %bb.x
  %i.ft = icmp samesign ugt i32 %.sroa.80211.1, %i.aj
  br i1 %i.ft, label %bb.aa, label %bb.ab, !prof !132

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %.sroa.0.i.i.i63, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i74 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.1) ; 3 uses
  %i.fu = add nuw nsw i32 %.sroa.speculated27.i.i.i.i74, 4
  %.sroa.speculated.i.i.i.i75 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.fu)
  %i.fv = sub nsw i32 %.sroa.speculated.i.i.i.i75, %.sroa.speculated27.i.i.i.i74 ; 2 uses
  %i.fw = icmp samesign ult i32 %i.fv, 5
  tail call void @llvm.assume(i1 %i.fw), !noalias !142
  %i.fx = zext nneg i32 %.sroa.speculated27.i.i.i.i74 to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fx
  %i.fz = zext nneg i32 %i.fv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i63, ptr align 1 %i.fy, i64 %i.fz, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69: ; preds = %bb.ab, %bb.y
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i70 = phi ptr [ %.sroa.0.i.i.i63, %bb.ab ], [ %i.fs, %bb.y ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i71 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i70, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.ga = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i71 to i64
  %i.gb = shl nuw i64 %i.ga, 32
  %i.gc = or i64 %i.gb, %.sroa.0174.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76: ; preds = %bb.w, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69
  %.sroa.80211.13 = phi i32 [ %i.fq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.80211.1, %bb.w ]
  %i.gd = phi i64 [ %i.gc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.0174.1, %bb.w ] ; 2 uses
  %i.ge = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.30.1, %bb.w ]
  %i.gf = add nsw i32 %i.ge, -1
  %i.gg = shl i64 %i.gd, 1
  %.not57.i = icmp sgt i64 %i.gd, -1
  %i.gh = select i1 %.not57.i, i32 7, i32 3
  br label %.sink.split

bb.ac:                                            ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.ad, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.gi = add nuw nsw i32 %.sroa.80211.1, 4       ; 3 uses
  %.not.i.i.i81 = icmp samesign ugt i32 %i.gi, %i.q
  br i1 %.not.i.i.i81, label %bb.af, label %bb.ae, !prof !132

bb.ae:                                            ; preds = %bb.ad
  %i.gj = zext nneg i32 %.sroa.80211.1 to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gj
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread

bb.af:                                            ; preds = %bb.ad
  %i.gl = icmp samesign ugt i32 %.sroa.80211.1, %i.aj
  br i1 %i.gl, label %bb.ag, label %bb.ah, !prof !132

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %.sroa.0.i.i.i77, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i88 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.1) ; 3 uses
  %i.gm = add nuw nsw i32 %.sroa.speculated27.i.i.i.i88, 4
  %.sroa.speculated.i.i.i.i89 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.gm)
  %i.gn = sub nsw i32 %.sroa.speculated.i.i.i.i89, %.sroa.speculated27.i.i.i.i88 ; 2 uses
  %i.go = icmp samesign ult i32 %i.gn, 5
  tail call void @llvm.assume(i1 %i.go), !noalias !142
  %i.gp = zext nneg i32 %.sroa.speculated27.i.i.i.i88 to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gp
  %i.gr = zext nneg i32 %i.gn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i77, ptr align 1 %i.gq, i64 %i.gr, i1 false), !noalias !142
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90: ; preds = %bb.ac
  %i.gs = add nsw i32 %.sroa.30.1, -1             ; 2 uses
  %i.gt = shl i64 %.sroa.0174.1, 1                ; 3 uses
  %.not.i = icmp sgt i64 %.sroa.0174.1, -1
  br i1 %.not.i, label %bb.ai, label %bb.ao

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread: ; preds = %bb.ae, %bb.ah
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84 = phi ptr [ %.sroa.0.i.i.i77, %bb.ah ], [ %i.gk, %bb.ae ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.gu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 to i64
  %i.gv = shl nuw i64 %i.gu, 32
  %i.gw = or i64 %i.gv, %.sroa.0174.1             ; 2 uses
  %i.gx = shl i64 %i.gw, 1                        ; 2 uses
  %.not.i576 = icmp sgt i64 %i.gw, -1
  br i1 %.not.i576, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104, label %bb.ao

bb.ai:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.not.i.i92 = icmp samesign ult i32 %.sroa.30.1, 4
  br i1 %.not.i.i92, label %bb.aj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.gy = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i95 = icmp samesign ugt i32 %i.gy, %i.q
  br i1 %.not.i.i.i95, label %bb.al, label %bb.ak, !prof !132

bb.ak:                                            ; preds = %bb.aj
  %i.gz = zext nneg i32 %.sroa.80211.1 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

bb.al:                                            ; preds = %bb.aj
  %i.hb = icmp samesign ugt i32 %.sroa.80211.1, %i.aj
  br i1 %i.hb, label %bb.am, label %bb.an, !prof !132

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.0.i.i.i91, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i102 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.1) ; 3 uses
  %i.hc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i102, 4
  %.sroa.speculated.i.i.i.i103 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.hc)
  %i.hd = sub nsw i32 %.sroa.speculated.i.i.i.i103, %.sroa.speculated27.i.i.i.i102 ; 2 uses
  %i.he = icmp samesign ult i32 %i.hd, 5
  tail call void @llvm.assume(i1 %i.he), !noalias !142
  %i.hf = zext nneg i32 %.sroa.speculated27.i.i.i.i102 to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.hf
  %i.hh = zext nneg i32 %i.hd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i91, ptr align 1 %i.hg, i64 %i.hh, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97: ; preds = %bb.an, %bb.ak
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98 = phi ptr [ %.sroa.0.i.i.i91, %bb.an ], [ %i.ha, %bb.ak ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.hi = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 to i64
  %i.hj = add nuw nsw i32 %.sroa.30.1, 31
  %i.hk = sub nuw nsw i32 33, %.sroa.30.1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw i64 %i.hi, %i.hl
  %i.hn = or i64 %i.hm, %i.gt
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %bb.ai, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97
  %.sroa.80211.15 = phi i32 [ %i.gy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %.sroa.80211.1, %bb.ai ], [ %i.gi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.ho = phi i64 [ %i.hn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gt, %bb.ai ], [ %i.gx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ] ; 2 uses
  %i.hp = phi i32 [ %i.hj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gs, %bb.ai ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.hq = lshr i64 %i.ho, 61
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = add nsw i32 %i.hp, -3
  %i.ht = shl i64 %i.ho, 3
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104
  %.sink = phi i32 [ %i.hr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.gh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.0174.2.ph = phi i64 [ %i.ht, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.gg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.30.2.ph = phi i32 [ %i.hs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.gf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.80211.2.ph = phi i32 [ %.sroa.80211.15, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %.sroa.80211.13, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  store i32 %.sink, ptr %i.w, align 8, !tbaa !133, !noalias !142
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.sroa.0174.2 = phi i64 [ %i.gt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.0174.2.ph, %.sink.split ] ; 3 uses
  %.sroa.30.2 = phi i32 [ %i.gs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.30.2.ph, %.sink.split ] ; 4 uses
  %.sroa.80211.2 = phi i32 [ %.sroa.80211.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.80211.2.ph, %.sink.split ] ; 7 uses
  %i.hu = load i32, ptr %i.w, align 8, !tbaa !133, !noalias !142 ; 8 uses
  %.not58.i = icmp eq i32 %i.hu, 7                ; 2 uses
  br i1 %i.y, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !142
  unreachable

bb.ar:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.at

.thread:                                          ; preds = %bb.ap, %bb.ar
  %i.hv = icmp eq i64 %indvars.iv458, 0
  br i1 %i.hv, label %bb.as, label %.preheader328.preheader

bb.as:                                            ; preds = %.thread
  %i.hw = load i16, ptr %i.an, align 2, !tbaa !145
  %i.hx = insertelement <16 x i16> poison, i16 %i.hw, i64 0
  %i.hy = shufflevector <16 x i16> %i.hx, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

.preheader328.preheader:                          ; preds = %.thread
  %i.hz = icmp samesign ult i32 %1, %i.cz
  tail call void @llvm.assume(i1 %i.hz), !noalias !142
  %i.ia = mul nuw nsw i32 %i.dc, %1
  %i.ib = zext nneg i32 %i.ia to i64
  %scevgep = getelementptr i8, ptr %i.cs, i64 28
  %i.ic = shl nuw nsw i64 %i.ib, 1
  %i.id = getelementptr i8, ptr %scevgep, i64 %i.cp
  %scevgep432 = getelementptr i8, ptr %i.id, i64 %i.ic
  %i.ie = load <2 x i16>, ptr %scevgep432, align 2, !tbaa !145, !noalias !142
  %i.if = shufflevector <2 x i16> %i.ie, <2 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

bb.at:                                            ; preds = %bb.ar
  br i1 %i.ak, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !142
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ig = sext i32 %i.hu to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !19, !noalias !142 ; 2 uses
  %i.ij = icmp ne i32 %i.hu, 2
  %i.ik = icmp ne i32 %i.hu, 4
  %.not62.i = and i1 %i.ij, %i.ik
  %.not62.i.fr = freeze i1 %.not62.i
  br i1 %.not62.i.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.av, %bb.ba
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %bb.ba ], [ 0, %bb.av ] ; 5 uses
  %i.il = or disjoint i64 %indvars.iv428, %indvars.iv458
  %i.im = trunc i64 %indvars.iv428 to i32
  %i.in = add i32 %1, %i.im
  %i.io = and i32 %i.in, 1
  %.not59.i.us = icmp eq i32 %i.io, 0             ; 2 uses
  %i.ip = and i64 %indvars.iv428, 1
  %.not60.i.us = icmp eq i64 %i.ip, 0
  %i.iq = select i1 %.not60.i.us, i32 1, i32 -1
  %.048.i.us = select i1 %.not59.i.us, i32 %i.am, i32 %i.al ; 4 uses
  %i.ir = select i1 %.not59.i.us, i32 %i.iq, i32 0
  %i.is = trunc i64 %i.il to i32
  %i.it = add i32 %i.ii, %i.is
  %.0.i25.us = add nsw i32 %i.it, %i.ir           ; 6 uses
  %i.iu = icmp slt i32 %.0.i25.us, 0
  br i1 %i.iu, label %.split384.us, label %bb.aw

bb.aw:                                            ; preds = %.split.us
  %.not61.i.us = icmp slt i32 %.0.i25.us, %i.cm
  br i1 %.not61.i.us, label %bb.ax, label %.split386.us

bb.ax:                                            ; preds = %bb.aw
  switch i32 %i.hu, label %bb.az [
    i32 4, label %bb.ay
    i32 2, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  %i.iv = add nuw nsw i32 %.0.i25.us, 2           ; 2 uses
  %i.iw = icmp samesign ult i32 %.048.i.us, %i.cz
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = mul nuw nsw i32 %.048.i.us, %i.dc
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.iy ; 2 uses
  %i.ja = zext nneg i32 %.0.i25.us to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !145
  %i.jd = zext i16 %i.jc to i32
  %i.je = icmp samesign ult i32 %i.iv, %i.cx
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = zext nneg i32 %i.iv to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !145
  %i.ji = zext i16 %i.jh to i32
  %i.jj = add nuw nsw i32 %i.jd, 1
  %i.jk = add nuw nsw i32 %i.jj, %i.ji
  %i.jl = lshr i32 %i.jk, 1
  %i.jm = trunc nuw i32 %i.jl to i16
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jn = icmp samesign ult i32 %.0.i25.us, %i.cx
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = icmp samesign ult i32 %.048.i.us, %i.cz
  tail call void @llvm.assume(i1 %i.jo)
  %i.jp = mul nuw nsw i32 %.048.i.us, %i.dc
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.jq
  %i.js = zext nneg i32 %.0.i25.us to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !145
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sink632 = phi i16 [ %i.ju, %bb.az ], [ %i.jm, %bb.ay ]
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv428
  store i16 %.sink632, ptr %i.jv, align 2, !tbaa !145
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, 16
  br i1 %exitcond431.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !146

.split:                                           ; preds = %bb.av, %bb.bf
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bf ], [ 0, %bb.av ] ; 5 uses
  %i.jw = or disjoint i64 %indvars.iv, %indvars.iv458
  %i.jx = trunc i64 %indvars.iv to i32
  %i.jy = add i32 %1, %i.jx
  %i.jz = and i32 %i.jy, 1
  %.not59.i = icmp eq i32 %i.jz, 0                ; 2 uses
  %i.ka = and i64 %indvars.iv, 1
  %.not60.i = icmp eq i64 %i.ka, 0
  %i.kb = select i1 %.not60.i, i32 1, i32 -1
  %.048.i = select i1 %.not59.i, i32 %i.am, i32 %i.al ; 2 uses
  %i.kc = select i1 %.not59.i, i32 %i.kb, i32 0
  %i.kd = trunc i64 %i.jw to i32
  %i.ke = add i32 %i.ii, %i.kd
  %.0.i25 = add nsw i32 %i.ke, %i.kc              ; 5 uses
  %i.kf = icmp slt i32 %.0.i25, 0
  br i1 %i.kf, label %.split384.us, label %bb.bb

.split384.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hu) #11
  unreachable

bb.bb:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.cm
  br i1 %.not61.i, label %bb.bc, label %.split386.us

bb.bc:                                            ; preds = %bb.bb
  %i.kg = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.kg, %i.cm
  br i1 %.not63.i, label %bb.bd, label %.split386.us

.split386.us:                                     ; preds = %bb.bb, %bb.bc, %bb.aw
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hu) #11
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.kh = icmp samesign ult i32 %.0.i25, %i.cx
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = icmp samesign ult i32 %.048.i, %i.cz
  tail call void @llvm.assume(i1 %i.ki)
  %i.kj = mul nuw nsw i32 %.048.i, %i.dc
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.kk ; 2 uses
  %i.km = zext nneg i32 %.0.i25 to i64
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !145 ; 2 uses
  switch i32 %i.hu, label %bb.bf [
    i32 4, label %bb.be
    i32 2, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %i.kp = zext i16 %i.ko to i32
  %i.kq = icmp samesign ult i32 %i.kg, %i.cx
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = zext nneg i32 %i.kg to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.kr
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !145
  %i.ku = zext i16 %i.kt to i32
  %i.kv = add nuw nsw i32 %i.kp, 1
  %i.kw = add nuw nsw i32 %i.kv, %i.ku
  %i.kx = lshr i32 %i.kw, 1
  %i.ky = trunc nuw i32 %i.kx to i16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink634 = phi i16 [ %i.ky, %bb.be ], [ %i.ko, %bb.bd ]
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink634, ptr %i.kz, align 2, !tbaa !145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !146

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader328.preheader, %bb.as
  %i.la = phi <16 x i16> [ %i.hy, %bb.as ], [ %i.if, %.preheader328.preheader ]
  store <16 x i16> %i.la, ptr %4, align 2, !tbaa !145
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.bf, %bb.ba, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !148
  %i.lb = and i8 %i.df, 1
  %.not326 = icmp eq i8 %i.lb, 0
  br i1 %.not326, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.lc = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.lc), !noalias !148
  %i.ld = and i32 %.sroa.80211.2, 3
  %i.le = icmp eq i32 %i.ld, 0
  tail call void @llvm.assume(i1 %i.le), !noalias !148
  %.not.i.i115 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i115, label %bb.bh, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.lf = add nuw nsw i32 %.sroa.80211.2, 4       ; 2 uses
  %.not.i.i.i118 = icmp samesign ugt i32 %i.lf, %i.q
  br i1 %.not.i.i.i118, label %bb.bj, label %bb.bi, !prof !132

bb.bi:                                            ; preds = %bb.bh
  %i.lg = zext nneg i32 %.sroa.80211.2 to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

bb.bj:                                            ; preds = %bb.bh
  %i.li = icmp samesign ugt i32 %.sroa.80211.2, %i.aj
  br i1 %i.li, label %bb.bk, label %bb.bl, !prof !132

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.bl:                                            ; preds = %bb.bj
  store i32 0, ptr %.sroa.0.i.i.i114, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i125 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.2) ; 3 uses
  %i.lj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i125, 4
  %.sroa.speculated.i.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.lj)
  %i.lk = sub nsw i32 %.sroa.speculated.i.i.i.i126, %.sroa.speculated27.i.i.i.i125 ; 2 uses
  %i.ll = icmp samesign ult i32 %i.lk, 5
  tail call void @llvm.assume(i1 %i.ll), !noalias !148
  %i.lm = zext nneg i32 %.sroa.speculated27.i.i.i.i125 to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lm
  %i.lo = zext nneg i32 %i.lk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i114, ptr align 1 %i.ln, i64 %i.lo, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120: ; preds = %bb.bl, %bb.bi
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121 = phi ptr [ %.sroa.0.i.i.i114, %bb.bl ], [ %i.lh, %bb.bi ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.lp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 to i64
  %i.lq = shl nuw i64 %i.lp, 32
  %i.lr = or i64 %i.lq, %.sroa.0174.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127: ; preds = %bb.bg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120
  %.sroa.80211.16 = phi i32 [ %i.lf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.80211.2, %bb.bg ] ; 2 uses
  %i.ls = phi i64 [ %i.lr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.0174.2, %bb.bg ] ; 2 uses
  %i.lt = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.30.2, %bb.bg ]
  %i.lu = add nsw i32 %i.lt, -1                   ; 2 uses
  %i.lv = shl i64 %i.ls, 1                        ; 2 uses
  %.not.i40 = icmp sgt i64 %i.ls, -1
  br i1 %.not.i40, label %bb.bm, label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.bm:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %.sroa.0174.5 = phi i64 [ %.sroa.0174.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 5 uses
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 13 uses
  %.sroa.80211.5 = phi i32 [ %.sroa.80211.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 17 uses
  %i.lw = icmp samesign ult i32 %.sroa.30.5, 65
  tail call void @llvm.assume(i1 %i.lw), !noalias !148
  %.not.i.i129 = icmp samesign ult i32 %.sroa.30.5, 2
  br i1 %.not.i.i129, label %bb.bn, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.lx = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132 = icmp samesign ugt i32 %i.lx, %i.q
  br i1 %.not.i.i.i132, label %bb.bp, label %bb.bo, !prof !132

bb.bo:                                            ; preds = %bb.bn
  %i.ly = zext nneg i32 %.sroa.80211.5 to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ly
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

bb.bp:                                            ; preds = %bb.bn
  %i.ma = icmp samesign ugt i32 %.sroa.80211.5, %i.aj
  br i1 %i.ma, label %bb.bq, label %bb.br, !prof !132

bb.bq:                                            ; preds = %bb.cc, %bb.by, %bb.bu, %bb.bp
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.br:                                            ; preds = %bb.bp
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i139 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.5) ; 3 uses
  %i.mb = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139, 4
  %.sroa.speculated.i.i.i.i140 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.mb)
  %i.mc = sub nsw i32 %.sroa.speculated.i.i.i.i140, %.sroa.speculated27.i.i.i.i139 ; 2 uses
  %i.md = icmp samesign ult i32 %i.mc, 5
  tail call void @llvm.assume(i1 %i.md), !noalias !148
  %i.me = zext nneg i32 %.sroa.speculated27.i.i.i.i139 to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.me
  %i.mg = zext nneg i32 %i.mc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.mf, i64 %i.mg, i1 false), !noalias !148
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread: ; preds = %bb.bo, %bb.br
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135 = phi ptr [ %.sroa.0.i.i.i128, %bb.br ], [ %i.lz, %bb.bo ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mh = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 to i64
  %i.mi = sub nuw nsw i32 32, %.sroa.30.5
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = shl nuw i64 %i.mh, %i.mj
  %i.ml = or i64 %i.mk, %.sroa.0174.5             ; 2 uses
  %i.mm = lshr i64 %i.ml, 62
  %i.mn = trunc nuw nsw i64 %i.mm to i32
  %i.mo = or disjoint i32 %.sroa.30.5, 30
  %i.mp = shl i64 %i.ml, 2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141: ; preds = %bb.bm
  %i.mq = lshr i64 %.sroa.0174.5, 62
  %i.mr = trunc nuw nsw i64 %i.mq to i32          ; 4 uses
  %i.ms = add nsw i32 %.sroa.30.5, -2
  %i.mt = shl i64 %.sroa.0174.5, 2                ; 2 uses
  %.not.i.i129.1 = icmp samesign ult i32 %.sroa.30.5, 4
  br i1 %.not.i.i129.1, label %bb.bs, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1

bb.bs:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mu = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.1 = icmp samesign ugt i32 %i.mu, %i.q
  br i1 %.not.i.i.i132.1, label %bb.bu, label %bb.bt, !prof !132

bb.bt:                                            ; preds = %bb.bs
  %i.mv = zext nneg i32 %.sroa.80211.5 to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

bb.bu:                                            ; preds = %bb.bs
  %i.mx = icmp samesign ugt i32 %.sroa.80211.5, %i.aj
  br i1 %i.mx, label %bb.bq, label %bb.bv, !prof !132

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i139.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.5) ; 3 uses
  %i.my = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.1, 4
  %.sroa.speculated.i.i.i.i140.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.my)
  %i.mz = sub nsw i32 %.sroa.speculated.i.i.i.i140.1, %.sroa.speculated27.i.i.i.i139.1 ; 2 uses
  %i.na = icmp samesign ult i32 %i.mz, 5
  tail call void @llvm.assume(i1 %i.na), !noalias !148
  %i.nb = zext nneg i32 %.sroa.speculated27.i.i.i.i139.1 to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nb
  %i.nd = zext nneg i32 %i.mz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.nc, i64 %i.nd, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1: ; preds = %bb.bv, %bb.bt
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1 = phi ptr [ %.sroa.0.i.i.i128, %bb.bv ], [ %i.mw, %bb.bt ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.ne = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 to i64
  %i.nf = or disjoint i32 %i.ms, 32
  %i.ng = sub nuw nsw i32 34, %.sroa.30.5
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl nuw i64 %i.ne, %i.nh
  %i.nj = or i64 %i.ni, %i.mt
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread
  %.ph = phi i32 [ %i.mn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.sroa.80211.17.1.ph = phi i32 [ %i.lx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.ph583 = phi i64 [ %i.mp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.nj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %.ph584 = phi i32 [ %i.mo, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.nf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %i.nk = lshr i64 %.ph583, 62
  %i.nl = trunc nuw nsw i64 %i.nk to i32
  %i.nm = add nsw i32 %.ph584, -2
  %i.nn = shl i64 %.ph583, 2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  %i.no = lshr i64 %i.mt, 62
  %i.np = trunc nuw nsw i64 %i.no to i32          ; 3 uses
  %i.nq = add nsw i32 %.sroa.30.5, -4
  %i.nr = shl i64 %.sroa.0174.5, 4                ; 3 uses
  %.not.i.i129.2 = icmp samesign ult i32 %.sroa.30.5, 6
  br i1 %.not.i.i129.2, label %bb.bw, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2

bb.bw:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.ns = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.2 = icmp samesign ugt i32 %i.ns, %i.q
  br i1 %.not.i.i.i132.2, label %bb.by, label %bb.bx, !prof !132

bb.bx:                                            ; preds = %bb.bw
  %i.nt = zext nneg i32 %.sroa.80211.5 to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2

bb.by:                                            ; preds = %bb.bw
  %i.nv = icmp samesign ugt i32 %.sroa.80211.5, %i.aj
  br i1 %i.nv, label %bb.bq, label %bb.bz, !prof !132

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i139.2 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.5) ; 3 uses
  %i.nw = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.2, 4
  %.sroa.speculated.i.i.i.i140.2 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.nw)
  %i.nx = sub nsw i32 %.sroa.speculated.i.i.i.i140.2, %.sroa.speculated27.i.i.i.i139.2 ; 2 uses
  %i.ny = icmp samesign ult i32 %i.nx, 5
  tail call void @llvm.assume(i1 %i.ny), !noalias !148
  %i.nz = zext nneg i32 %.sroa.speculated27.i.i.i.i139.2 to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nz
  %i.ob = zext nneg i32 %i.nx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.oa, i64 %i.ob, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2: ; preds = %bb.bz, %bb.bx
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.2 = phi ptr [ %.sroa.0.i.i.i128, %bb.bz ], [ %i.nu, %bb.bx ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.2, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.oc = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.2 to i64
  %i.od = or disjoint i32 %i.nq, 32
  %i.oe = sub nuw nsw i32 36, %.sroa.30.5
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = shl nuw i64 %i.oc, %i.of
  %i.oh = or i64 %i.og, %i.nr
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread
  %.ph587 = phi i32 [ %i.nl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.np, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.ph588 = phi i32 [ %.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.mr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.sroa.80211.17.2.ph = phi i32 [ %.sroa.80211.17.1.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.ns, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.ph589 = phi i64 [ %i.nn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.oh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ] ; 2 uses
  %.ph590 = phi i32 [ %i.nm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.od, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %i.oi = add nsw i32 %.ph590, -2
  %i.oj = shl i64 %.ph589, 2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  %i.ok = add nsw i32 %.sroa.30.5, -6             ; 2 uses
  %i.ol = shl i64 %.sroa.0174.5, 6                ; 2 uses
  %.not.i.i129.3 = icmp samesign ult i32 %.sroa.30.5, 8
  br i1 %.not.i.i129.3, label %bb.ca, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

bb.ca:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.om = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.3 = icmp samesign ugt i32 %i.om, %i.q
  br i1 %.not.i.i.i132.3, label %bb.cc, label %bb.cb, !prof !132

bb.cb:                                            ; preds = %bb.ca
  %i.on = zext nneg i32 %.sroa.80211.5 to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.on
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3

bb.cc:                                            ; preds = %bb.ca
  %i.op = icmp samesign ugt i32 %.sroa.80211.5, %i.aj
  br i1 %i.op, label %bb.bq, label %bb.cd, !prof !132

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i139.3 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.5) ; 3 uses
  %i.oq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.3, 4
  %.sroa.speculated.i.i.i.i140.3 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.oq)
  %i.or = sub nsw i32 %.sroa.speculated.i.i.i.i140.3, %.sroa.speculated27.i.i.i.i139.3 ; 2 uses
  %i.os = icmp samesign ult i32 %i.or, 5
  tail call void @llvm.assume(i1 %i.os), !noalias !148
  %i.ot = zext nneg i32 %.sroa.speculated27.i.i.i.i139.3 to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ot
  %i.ov = zext nneg i32 %i.or to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.ou, i64 %i.ov, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3: ; preds = %bb.cd, %bb.cb
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.3 = phi ptr [ %.sroa.0.i.i.i128, %bb.cd ], [ %i.oo, %bb.cb ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.3, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.ow = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.3 to i64
  %i.ox = or disjoint i32 %i.ok, 32
  %i.oy = sub nuw nsw i32 38, %.sroa.30.5
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = shl nuw i64 %i.ow, %i.oz
  %i.pb = or i64 %i.pa, %i.ol
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  %.in.in = phi i64 [ %i.nr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.nr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph589, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.pc = phi i32 [ %i.mr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.mr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph588, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.pd = phi i32 [ %i.np, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.np, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph587, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %.sroa.80211.17.3 = phi i32 [ %i.om, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %.sroa.80211.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.sroa.80211.17.2.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 10 uses
  %i.pe = phi i64 [ %i.pb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ol, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.oj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 2 uses
  %i.pf = phi i32 [ %i.ox, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ok, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.oi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 3 uses
  %.in = lshr i64 %.in.in, 62
  %i.pg = trunc nuw nsw i64 %.in to i32
  %i.ph = lshr i64 %i.pe, 62
  %i.pi = trunc nuw nsw i64 %i.ph to i32
  %i.pj = add nsw i32 %i.pf, -2                   ; 5 uses
  %i.pk = shl i64 %i.pe, 2                        ; 5 uses
  switch i32 %i.pc, label %default.unreachable [
    i32 0, label %bb.dj
    i32 1, label %bb.dk
    i32 2, label %bb.dl
    i32 3, label %bb.do
  ]

.preheader327.1:                                  ; preds = %bb.du
  switch i32 %i.pd, label %default.unreachable [
    i32 0, label %bb.cm
    i32 1, label %bb.cl
    i32 2, label %bb.cj
    i32 3, label %bb.ce
  ]

bb.ce:                                            ; preds = %.preheader327.1
  %i.pl = icmp sgt i32 %.sroa.80211.8, -1
  tail call void @llvm.assume(i1 %i.pl), !noalias !148
  %i.pm = and i32 %.sroa.80211.8, 3
  %i.pn = icmp eq i32 %i.pm, 0
  tail call void @llvm.assume(i1 %i.pn), !noalias !148
  %.not.i.i143.1 = icmp samesign ult i32 %.sroa.30.8, 4
  br i1 %.not.i.i143.1, label %bb.cf, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.po = add nuw nsw i32 %.sroa.80211.8, 4       ; 2 uses
  %.not.i.i.i146.1 = icmp samesign ugt i32 %i.po, %i.q
  br i1 %.not.i.i.i146.1, label %bb.ch, label %bb.cg, !prof !132

bb.cg:                                            ; preds = %bb.cf
  %i.pp = zext nneg i32 %.sroa.80211.8 to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.pp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1

bb.ch:                                            ; preds = %bb.cf
  %i.pr = icmp samesign ugt i32 %.sroa.80211.8, %i.aj
  br i1 %i.pr, label %bb.ds, label %bb.ci, !prof !132

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.8) ; 3 uses
  %i.ps = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.1, 4
  %.sroa.speculated.i.i.i.i154.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ps)
  %i.pt = sub nsw i32 %.sroa.speculated.i.i.i.i154.1, %.sroa.speculated27.i.i.i.i153.1 ; 2 uses
  %i.pu = icmp samesign ult i32 %i.pt, 5
  tail call void @llvm.assume(i1 %i.pu), !noalias !148
  %i.pv = zext nneg i32 %.sroa.speculated27.i.i.i.i153.1 to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.pv
  %i.px = zext nneg i32 %i.pt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.pw, i64 %i.px, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1: ; preds = %bb.ci, %bb.cg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.1 = phi ptr [ %.sroa.0.i.i.i142, %bb.ci ], [ %i.pq, %bb.cg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.1, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.py = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.1 to i64
  %i.pz = or disjoint i32 %.sroa.30.8, 32
  %i.qa = sub nuw nsw i32 32, %.sroa.30.8
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = shl nuw i64 %i.py, %i.qb
  %i.qd = or i64 %i.qc, %.sroa.0174.8
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1, %bb.ce
  %.sroa.80211.18.1 = phi i32 [ %i.po, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.80211.8, %bb.ce ]
  %i.qe = phi i64 [ %i.qd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.0174.8, %bb.ce ] ; 2 uses
  %i.qf = phi i32 [ %i.pz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.30.8, %bb.ce ]
  %i.qg = lshr i64 %i.qe, 60
  %i.qh = trunc nuw nsw i64 %i.qg to i32
  %i.qi = add nsw i32 %i.qf, -4
  %i.qj = shl i64 %i.qe, 4
  br label %bb.cn

bb.cj:                                            ; preds = %.preheader327.1
  %i.qk = load i32, ptr %i.bk, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.dm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qm = add nsw i32 %i.qk, -1
  br label %bb.cn

bb.cl:                                            ; preds = %.preheader327.1
  %i.qn = load i32, ptr %i.bl, align 8, !tbaa !19, !noalias !148
  %i.qo = add nsw i32 %i.qn, 1
  br label %bb.cn

bb.cm:                                            ; preds = %.preheader327.1
  %i.qp = load i32, ptr %i.bm, align 8, !tbaa !19, !noalias !148
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1
  %.sroa.0486.sroa.9.1 = phi i32 [ %i.qp, %bb.cm ], [ %i.qo, %bb.cl ], [ %i.qm, %bb.ck ], [ %i.qh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 4 uses
  %.sroa.0174.8.1 = phi i64 [ %.sroa.0174.8, %bb.cm ], [ %.sroa.0174.8, %bb.cl ], [ %.sroa.0174.8, %bb.ck ], [ %i.qj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 5 uses
  %.sroa.30.8.1 = phi i32 [ %.sroa.30.8, %bb.cm ], [ %.sroa.30.8, %bb.cl ], [ %.sroa.30.8, %bb.ck ], [ %i.qi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 7 uses
  %.sroa.80211.8.1 = phi i32 [ %.sroa.80211.8, %bb.cm ], [ %.sroa.80211.8, %bb.cl ], [ %.sroa.80211.8, %bb.ck ], [ %.sroa.80211.18.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 10 uses
  %i.qq = load i32, ptr %i.bo, align 4, !tbaa !19, !noalias !148
  store i32 %i.qq, ptr %i.bn, align 8, !tbaa !19, !noalias !148
  store i32 %.sroa.0486.sroa.9.1, ptr %i.bo, align 4, !tbaa !19, !noalias !148
  %i.qr = icmp ugt i32 %.sroa.0486.sroa.9.1, %i.up
  br i1 %i.qr, label %bb.dv, label %.preheader327.2

.preheader327.2:                                  ; preds = %bb.cn
  switch i32 %i.pg, label %default.unreachable [
    i32 0, label %bb.cw
    i32 1, label %bb.cv
    i32 2, label %bb.ct
    i32 3, label %bb.co
  ]

bb.co:                                            ; preds = %.preheader327.2
  %i.qs = icmp sgt i32 %.sroa.80211.8.1, -1
  tail call void @llvm.assume(i1 %i.qs), !noalias !148
  %i.qt = and i32 %.sroa.80211.8.1, 3
  %i.qu = icmp eq i32 %i.qt, 0
  tail call void @llvm.assume(i1 %i.qu), !noalias !148
  %.not.i.i143.2 = icmp samesign ult i32 %.sroa.30.8.1, 4
  br i1 %.not.i.i143.2, label %bb.cp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qv = add nuw nsw i32 %.sroa.80211.8.1, 4     ; 2 uses
  %.not.i.i.i146.2 = icmp samesign ugt i32 %i.qv, %i.q
  br i1 %.not.i.i.i146.2, label %bb.cr, label %bb.cq, !prof !132

bb.cq:                                            ; preds = %bb.cp
  %i.qw = zext nneg i32 %.sroa.80211.8.1 to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

bb.cr:                                            ; preds = %bb.cp
  %i.qy = icmp samesign ugt i32 %.sroa.80211.8.1, %i.aj
  br i1 %i.qy, label %bb.ds, label %bb.cs, !prof !132

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153.2 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.8.1) ; 3 uses
  %i.qz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.2, 4
  %.sroa.speculated.i.i.i.i154.2 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.qz)
  %i.ra = sub nsw i32 %.sroa.speculated.i.i.i.i154.2, %.sroa.speculated27.i.i.i.i153.2 ; 2 uses
  %i.rb = icmp samesign ult i32 %i.ra, 5
  tail call void @llvm.assume(i1 %i.rb), !noalias !148
  %i.rc = zext nneg i32 %.sroa.speculated27.i.i.i.i153.2 to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.rc
  %i.re = zext nneg i32 %i.ra to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.rd, i64 %i.re, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2: ; preds = %bb.cs, %bb.cq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2 = phi ptr [ %.sroa.0.i.i.i142, %bb.cs ], [ %i.qx, %bb.cq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.rf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 to i64
  %i.rg = or disjoint i32 %.sroa.30.8.1, 32
  %i.rh = sub nuw nsw i32 32, %.sroa.30.8.1
  %i.ri = zext nneg i32 %i.rh to i64
  %i.rj = shl nuw i64 %i.rf, %i.ri
  %i.rk = or i64 %i.rj, %.sroa.0174.8.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2, %bb.co
  %.sroa.80211.18.2 = phi i32 [ %i.qv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.80211.8.1, %bb.co ]
  %i.rl = phi i64 [ %i.rk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.0174.8.1, %bb.co ] ; 2 uses
  %i.rm = phi i32 [ %i.rg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.30.8.1, %bb.co ]
  %i.rn = lshr i64 %i.rl, 60
  %i.ro = add nsw i32 %i.rm, -4
  %i.rp = shl i64 %i.rl, 4
  br label %bb.cx

bb.ct:                                            ; preds = %.preheader327.2
  %i.rq = load i32, ptr %i.bp, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %bb.dm, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rs = add nsw i32 %i.rq, -1
  %.sroa.14491.8.insert.ext493 = zext i32 %i.rs to i64
  br label %bb.cx

bb.cv:                                            ; preds = %.preheader327.2
  %i.rt = load i32, ptr %i.bq, align 8, !tbaa !19, !noalias !148
  %i.ru = add nsw i32 %i.rt, 1
  %.sroa.14491.8.insert.ext497 = zext i32 %i.ru to i64
  br label %bb.cx

bb.cw:                                            ; preds = %.preheader327.2
  %i.rv = load i32, ptr %i.br, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.8.insert.ext501 = zext i32 %i.rv to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2
  %.sroa.14491.2 = phi i64 [ %.sroa.14491.8.insert.ext501, %bb.cw ], [ %.sroa.14491.8.insert.ext497, %bb.cv ], [ %.sroa.14491.8.insert.ext493, %bb.cu ], [ %i.rn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 2 uses
  %.sroa.0174.8.2 = phi i64 [ %.sroa.0174.8.1, %bb.cw ], [ %.sroa.0174.8.1, %bb.cv ], [ %.sroa.0174.8.1, %bb.cu ], [ %i.rp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 5 uses
  %.sroa.30.8.2 = phi i32 [ %.sroa.30.8.1, %bb.cw ], [ %.sroa.30.8.1, %bb.cv ], [ %.sroa.30.8.1, %bb.cu ], [ %i.ro, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 7 uses
  %.sroa.80211.8.2 = phi i32 [ %.sroa.80211.8.1, %bb.cw ], [ %.sroa.80211.8.1, %bb.cv ], [ %.sroa.80211.8.1, %bb.cu ], [ %.sroa.80211.18.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 10 uses
  %i.rw = load i32, ptr %i.bt, align 4, !tbaa !19, !noalias !148
  store i32 %i.rw, ptr %i.bs, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.8.extract.trunc = trunc nuw i64 %.sroa.14491.2 to i32 ; 3 uses
  store i32 %.sroa.14491.8.extract.trunc, ptr %i.bt, align 4, !tbaa !19, !noalias !148
  %i.rx = icmp ult i32 %i.up, %.sroa.14491.8.extract.trunc
  br i1 %i.rx, label %bb.dv, label %.preheader327.3

.preheader327.3:                                  ; preds = %bb.cx
  switch i32 %i.pi, label %default.unreachable [
    i32 0, label %bb.dg
    i32 1, label %bb.df
    i32 2, label %bb.dd
    i32 3, label %bb.cy
  ]

bb.cy:                                            ; preds = %.preheader327.3
  %i.ry = icmp sgt i32 %.sroa.80211.8.2, -1
  tail call void @llvm.assume(i1 %i.ry), !noalias !148
  %i.rz = and i32 %.sroa.80211.8.2, 3
  %i.sa = icmp eq i32 %i.rz, 0
  tail call void @llvm.assume(i1 %i.sa), !noalias !148
  %.not.i.i143.3 = icmp samesign ult i32 %.sroa.30.8.2, 4
  br i1 %.not.i.i143.3, label %bb.cz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.sb = add nuw nsw i32 %.sroa.80211.8.2, 4     ; 2 uses
  %.not.i.i.i146.3 = icmp samesign ugt i32 %i.sb, %i.q
  br i1 %.not.i.i.i146.3, label %bb.db, label %bb.da, !prof !132

bb.da:                                            ; preds = %bb.cz
  %i.sc = zext nneg i32 %.sroa.80211.8.2 to i64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sc
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

bb.db:                                            ; preds = %bb.cz
  %i.se = icmp samesign ugt i32 %.sroa.80211.8.2, %i.aj
  br i1 %i.se, label %bb.ds, label %bb.dc, !prof !132

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153.3 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.8.2) ; 3 uses
  %i.sf = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.3, 4
  %.sroa.speculated.i.i.i.i154.3 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.sf)
  %i.sg = sub nsw i32 %.sroa.speculated.i.i.i.i154.3, %.sroa.speculated27.i.i.i.i153.3 ; 2 uses
  %i.sh = icmp samesign ult i32 %i.sg, 5
  tail call void @llvm.assume(i1 %i.sh), !noalias !148
  %i.si = zext nneg i32 %.sroa.speculated27.i.i.i.i153.3 to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.si
  %i.sk = zext nneg i32 %i.sg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.sj, i64 %i.sk, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3: ; preds = %bb.dc, %bb.da
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3 = phi ptr [ %.sroa.0.i.i.i142, %bb.dc ], [ %i.sd, %bb.da ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.sl = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 to i64
  %i.sm = or disjoint i32 %.sroa.30.8.2, 32
  %i.sn = sub nuw nsw i32 32, %.sroa.30.8.2
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl nuw i64 %i.sl, %i.so
  %i.sq = or i64 %i.sp, %.sroa.0174.8.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3, %bb.cy
  %.sroa.80211.18.3 = phi i32 [ %i.sb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.80211.8.2, %bb.cy ]
  %i.sr = phi i64 [ %i.sq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.0174.8.2, %bb.cy ] ; 2 uses
  %i.ss = phi i32 [ %i.sm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.30.8.2, %bb.cy ]
  %i.st = add nsw i32 %i.ss, -4
  %i.su = shl i64 %i.sr, 4
  %i.sv = lshr i64 %i.sr, 28
  %.sroa.14491.12.insert.shift = and i64 %i.sv, 64424509440
  br label %bb.dh

bb.dd:                                            ; preds = %.preheader327.3
  %i.sw = load i32, ptr %i.bu, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.sx = icmp eq i32 %i.sw, 0
  br i1 %i.sx, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sy = add nsw i32 %i.sw, -1
  %.sroa.14491.12.insert.ext506 = zext i32 %i.sy to i64
  %.sroa.14491.12.insert.shift507 = shl nuw i64 %.sroa.14491.12.insert.ext506, 32
  br label %bb.dh

bb.df:                                            ; preds = %.preheader327.3
  %i.sz = load i32, ptr %i.bv, align 8, !tbaa !19, !noalias !148
  %i.ta = add nsw i32 %i.sz, 1
  %.sroa.14491.12.insert.ext511 = zext i32 %i.ta to i64
  %.sroa.14491.12.insert.shift512 = shl nuw i64 %.sroa.14491.12.insert.ext511, 32
  br label %bb.dh

bb.dg:                                            ; preds = %.preheader327.3
  %i.tb = load i32, ptr %i.bw, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.12.insert.ext516 = zext i32 %i.tb to i64
  %.sroa.14491.12.insert.shift517 = shl nuw i64 %.sroa.14491.12.insert.ext516, 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3
  %.sroa.14491.12.insert.shift517.pn = phi i64 [ %.sroa.14491.12.insert.shift517, %bb.dg ], [ %.sroa.14491.12.insert.shift512, %bb.df ], [ %.sroa.14491.12.insert.shift507, %bb.de ], [ %.sroa.14491.12.insert.shift, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ] ; 2 uses
  %.sroa.0174.8.3 = phi i64 [ %.sroa.0174.8.2, %bb.dg ], [ %.sroa.0174.8.2, %bb.df ], [ %.sroa.0174.8.2, %bb.de ], [ %i.su, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.30.8.3 = phi i32 [ %.sroa.30.8.2, %bb.dg ], [ %.sroa.30.8.2, %bb.df ], [ %.sroa.30.8.2, %bb.de ], [ %i.st, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.80211.8.3 = phi i32 [ %.sroa.80211.8.2, %bb.dg ], [ %.sroa.80211.8.2, %bb.df ], [ %.sroa.80211.8.2, %bb.de ], [ %.sroa.80211.18.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %i.tc = load i32, ptr %i.by, align 4, !tbaa !19, !noalias !148
  store i32 %i.tc, ptr %i.bx, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.12.extract.shift = lshr exact i64 %.sroa.14491.12.insert.shift517.pn, 32
  %.sroa.14491.12.extract.trunc = trunc nuw i64 %.sroa.14491.12.extract.shift to i32 ; 3 uses
  store i32 %.sroa.14491.12.extract.trunc, ptr %i.by, align 4, !tbaa !19, !noalias !148
  %i.td = icmp ult i32 %i.up, %.sroa.14491.12.extract.trunc
  br i1 %i.td, label %bb.dv, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.14491.3 = or disjoint i64 %.sroa.14491.2, %.sroa.14491.12.insert.shift517.pn
  %i.te = zext i32 %.sroa.0486.sroa.9.1 to i64
  %i.tf = shl nuw i64 %i.te, 32
  %i.tg = zext i32 %.sroa.0486.sroa.0.0 to i64
  %i.th = or disjoint i64 %i.tf, %i.tg
  br label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.dj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.ti = load i32, ptr %i.bh, align 8, !tbaa !19, !noalias !148
  br label %bb.du

bb.dk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tj = load i32, ptr %i.bg, align 8, !tbaa !19, !noalias !148
  %i.tk = add nsw i32 %i.tj, 1
  br label %bb.du

bb.dl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tl = load i32, ptr %i.bf, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.tm = icmp eq i32 %i.tl, 0
  br i1 %i.tm, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dd, %bb.ct, %bb.cj, %bb.dl
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei) #11, !noalias !148
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.tn = add nsw i32 %i.tl, -1
  br label %bb.du

bb.do:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.to = icmp sgt i32 %.sroa.80211.17.3, -1
  tail call void @llvm.assume(i1 %i.to), !noalias !148
  %i.tp = and i32 %.sroa.80211.17.3, 3
  %i.tq = icmp eq i32 %i.tp, 0
  tail call void @llvm.assume(i1 %i.tq), !noalias !148
  %.not.i.i143 = icmp samesign ult i32 %i.pf, 6
  br i1 %.not.i.i143, label %bb.dp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tr = add nuw nsw i32 %.sroa.80211.17.3, 4    ; 2 uses
  %.not.i.i.i146 = icmp samesign ugt i32 %i.tr, %i.q
  br i1 %.not.i.i.i146, label %bb.dr, label %bb.dq, !prof !132

bb.dq:                                            ; preds = %bb.dp
  %i.ts = zext nneg i32 %.sroa.80211.17.3 to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ts
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

bb.dr:                                            ; preds = %bb.dp
  %i.tu = icmp samesign ugt i32 %.sroa.80211.17.3, %i.aj
  br i1 %i.tu, label %bb.ds, label %bb.dt, !prof !132

bb.ds:                                            ; preds = %bb.db, %bb.cr, %bb.ch, %bb.dr
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.17.3) ; 3 uses
  %i.tv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153, 4
  %.sroa.speculated.i.i.i.i154 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.tv)
  %i.tw = sub nsw i32 %.sroa.speculated.i.i.i.i154, %.sroa.speculated27.i.i.i.i153 ; 2 uses
  %i.tx = icmp samesign ult i32 %i.tw, 5
  tail call void @llvm.assume(i1 %i.tx), !noalias !148
  %i.ty = zext nneg i32 %.sroa.speculated27.i.i.i.i153 to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ty
  %i.ua = zext nneg i32 %i.tw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.tz, i64 %i.ua, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.tt, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.ub = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 to i64
  %i.uc = or disjoint i32 %i.pj, 32
  %i.ud = sub nuw nsw i32 34, %i.pf
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = shl nuw i64 %i.ub, %i.ue
  %i.ug = or i64 %i.uf, %i.pk
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155: ; preds = %bb.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148
  %.sroa.80211.18 = phi i32 [ %i.tr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %.sroa.80211.17.3, %bb.do ]
  %i.uh = phi i64 [ %i.ug, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pk, %bb.do ] ; 2 uses
  %i.ui = phi i32 [ %i.uc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pj, %bb.do ]
  %i.uj = lshr i64 %i.uh, 60
  %i.uk = trunc nuw nsw i64 %i.uj to i32
  %i.ul = add nsw i32 %i.ui, -4
  %i.um = shl i64 %i.uh, 4
  br label %bb.du

default.unreachable:                              ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3, %.preheader327.3, %.preheader327.2, %.preheader327.1
  unreachable

bb.du:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155, %bb.dn, %bb.dk, %bb.dj
  %.sroa.0486.sroa.0.0 = phi i32 [ %i.ti, %bb.dj ], [ %i.tk, %bb.dk ], [ %i.tn, %bb.dn ], [ %i.uk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 4 uses
  %.sroa.0174.8 = phi i64 [ %i.pk, %bb.dj ], [ %i.pk, %bb.dk ], [ %i.pk, %bb.dn ], [ %i.um, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 5 uses
  %.sroa.30.8 = phi i32 [ %i.pj, %bb.dj ], [ %i.pj, %bb.dk ], [ %i.pj, %bb.dn ], [ %i.ul, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 7 uses
  %.sroa.80211.8 = phi i32 [ %.sroa.80211.17.3, %bb.dj ], [ %.sroa.80211.17.3, %bb.dk ], [ %.sroa.80211.17.3, %bb.dn ], [ %.sroa.80211.18, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 10 uses
  %i.un = load i32, ptr %i.bj, align 4, !tbaa !19, !noalias !148
  store i32 %i.un, ptr %i.bi, align 8, !tbaa !19, !noalias !148
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bj, align 4, !tbaa !19, !noalias !148
  %i.uo = load i32, ptr %i.ao, align 8, !tbaa !101, !noalias !148
  %i.up = add i32 %i.uo, 1                        ; 4 uses
  %i.uq = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.up
  br i1 %i.uq, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !148
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.1 = phi i64 [ %.sroa.14491.3, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.lv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.lu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.th, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !148
  store i64 %.sroa.14491.1, ptr %i.ap, align 8, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !148
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ur = load i16, ptr %3, align 2, !tbaa !145, !noalias !148 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.80211.4401 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.0174.4399 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %i.us = lshr i64 %indvars.iv444, 2
  %i.ut = and i64 %i.us, 1073741823
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !19, !noalias !148 ; 6 uses
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ux = icmp ult i32 %i.uv, 16
  tail call void @llvm.assume(i1 %i.ux), !noalias !148
  %i.uy = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.uy), !noalias !148
  %i.uz = icmp sgt i32 %.sroa.80211.4401, -1
  tail call void @llvm.assume(i1 %i.uz), !noalias !148
  %i.va = and i32 %.sroa.80211.4401, 3
  %i.vb = icmp eq i32 %i.va, 0
  tail call void @llvm.assume(i1 %i.vb), !noalias !148
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.uv
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vc = add nuw nsw i32 %.sroa.80211.4401, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.vc, %i.q
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !132

bb.ea:                                            ; preds = %bb.dz
  %i.vd = zext nneg i32 %.sroa.80211.4401 to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vd
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.vf = icmp samesign ugt i32 %.sroa.80211.4401, %i.aj
  br i1 %i.vf, label %bb.ec, label %bb.ed, !prof !132

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.4401) ; 3 uses
  %i.vg = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.vg)
  %i.vh = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vi = icmp samesign ult i32 %i.vh, 5
  tail call void @llvm.assume(i1 %i.vi), !noalias !148
  %i.vj = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vj
  %i.vl = zext nneg i32 %i.vh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.vk, i64 %i.vl, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.ve, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vm = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vn = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vo = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = shl nuw i64 %i.vm, %i.vp
  %i.vr = or i64 %i.vq, %.sroa.0174.4399
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.vc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4401, %bb.dy ]
  %i.vs = phi i64 [ %i.vr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4399, %bb.dy ] ; 2 uses
  %i.vt = phi i32 [ %i.vn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.vu = sub nuw nsw i32 64, %i.uv
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = sub nsw i32 %i.vt, %i.uv
  %i.vx = zext nneg i32 %i.uv to i64
  %i.vy = shl i64 %i.vs, %i.vx
  %i.vz = ashr i64 %i.vs, %i.vv
  %i.wa = trunc nsw i64 %i.vz to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4399, %bb.dx ], [ %i.vy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.vw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4401, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.wa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.wb, align 2, !tbaa !145, !noalias !148
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !151

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.ur, ptr %.sroa.0.2..sroa_idx695, align 2, !tbaa !145, !noalias !148
  %i.wc = load i16, ptr %i.ar, align 2, !tbaa !145, !noalias !148
  store i16 %i.wc, ptr %.sroa.0.22..sroa_idx700, align 2, !tbaa !145, !noalias !148
  %i.wd = load i16, ptr %i.as, align 2, !tbaa !145, !noalias !148
  store i16 %i.wd, ptr %.sroa.0.26..sroa_idx704, align 2, !tbaa !145, !noalias !148
  %i.we = load i16, ptr %i.at, align 2, !tbaa !145, !noalias !148
  store i16 %i.we, ptr %.sroa.0.30..sroa_idx709, align 2, !tbaa !145, !noalias !148
  %i.wf = load i16, ptr %i.au, align 2, !tbaa !145, !noalias !148
  store i16 %i.wf, ptr %.sroa.0, align 32, !tbaa !145, !noalias !148
  %i.wg = load <12 x i16>, ptr %i.aq, align 2, !tbaa !145, !noalias !148
  %i.wh = shufflevector <12 x i16> %i.wg, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.wh, ptr %.sroa.0.4..sroa_idx696, align 4, !tbaa !145, !noalias !148
  %i.wi = load i16, ptr %i.av, align 2, !tbaa !145, !noalias !148
  store i16 %i.wi, ptr %.sroa.0.20..sroa_idx698, align 4, !tbaa !145, !noalias !148
  %i.wj = load i16, ptr %i.aw, align 2, !tbaa !145, !noalias !148
  store i16 %i.wj, ptr %.sroa.0.24..sroa_idx702, align 8, !tbaa !145, !noalias !148
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.ur, ptr %.sroa.0, align 32, !tbaa !145, !noalias !148
  %i.wk = load i16, ptr %i.ay, align 2, !tbaa !145, !noalias !148
  store i16 %i.wk, ptr %.sroa.0.20..sroa_idx699, align 4, !tbaa !145, !noalias !148
  %i.wl = load i16, ptr %i.az, align 2, !tbaa !145, !noalias !148
  store i16 %i.wl, ptr %.sroa.0.24..sroa_idx703, align 8, !tbaa !145, !noalias !148
  %i.wm = load i16, ptr %i.ba, align 2, !tbaa !145, !noalias !148
  store i16 %i.wm, ptr %.sroa.0.28..sroa_idx707, align 4, !tbaa !145, !noalias !148
  %i.wn = load <11 x i16>, ptr %i.ax, align 2, !tbaa !145, !noalias !148
  %i.wo = shufflevector <11 x i16> %i.wn, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.wo, ptr %.sroa.0.2..sroa_idx694, align 2, !tbaa !145, !noalias !148
  %i.wp = load i16, ptr %i.bb, align 2, !tbaa !145, !noalias !148
  store i16 %i.wp, ptr %.sroa.0.18..sroa_idx697, align 2, !tbaa !145, !noalias !148
  %i.wq = load i16, ptr %i.bc, align 2, !tbaa !145, !noalias !148
  store i16 %i.wq, ptr %.sroa.0.22..sroa_idx701, align 2, !tbaa !145, !noalias !148
  %i.wr = load i16, ptr %i.bd, align 2, !tbaa !145, !noalias !148
  store i16 %i.wr, ptr %.sroa.0.26..sroa_idx705, align 2, !tbaa !145, !noalias !148
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx706, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx708, %bb.ef ]
  %i.ws = load i16, ptr %i.be, align 2, !tbaa !145, !noalias !148
  store i16 %i.ws, ptr %.024.i.15.sroa.phi, align 2, !tbaa !145, !noalias !148
  %i.wt = load i32, ptr %i.x, align 4, !tbaa !134, !noalias !148 ; 2 uses
  %i.wu = shl nsw i32 %i.wt, 1
  %i.wv = or disjoint i32 %i.wu, 1
  %i.ww = icmp samesign ult i32 %1, %i.cz
  %i.wx = mul nuw nsw i32 %i.dc, %1
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.wy
  %i.xa = zext nneg i32 %i.cx to i64
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.xc = icmp samesign ult i64 %indvars.iv.next461.14, %i.xa
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 32, !tbaa !145
  %i.xd = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  %i.xe = insertelement <16 x i32> poison, i32 %i.wv, i64 0
  %i.xf = shufflevector <16 x i32> %i.xe, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xg = mul nsw <16 x i32> %i.xf, %i.xd
  %i.xh = insertelement <16 x i32> poison, i32 %i.wt, i64 0
  %i.xi = shufflevector <16 x i32> %i.xh, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xj = add nsw <16 x i32> %i.xg, %i.xi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !148
  %i.xk = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %i.xl = icmp ult i32 %i.xk, 17
  tail call void @llvm.assume(i1 %i.xl)
  %notmask.i = shl nsw i32 -1, %i.xk
  %i.xm = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.ww)
  %i.xn = load <16 x i16>, ptr %4, align 2, !tbaa !145
  %i.xo = zext <16 x i16> %i.xn to <16 x i32>
  %i.xp = add nsw <16 x i32> %i.xj, %i.xo         ; 2 uses
  %i.xq = insertelement <16 x i32> poison, i32 %i.xm, i64 0
  %i.xr = shufflevector <16 x i32> %i.xq, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.xs = icmp sgt <16 x i32> %i.xp, %i.xr
  %i.xt = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.xp, <16 x i32> zeroinitializer)
  %i.xu = select <16 x i1> %i.xs, <16 x i32> %i.xr, <16 x i32> %i.xt
  %i.xv = trunc <16 x i32> %i.xu to <16 x i16>
  tail call void @llvm.assume(i1 %i.xc)
  store <16 x i16> %i.xv, ptr %i.xb, align 2, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 16 ; 2 uses
  %i.xw = load i32, ptr %i.ad, align 4, !tbaa !109 ; 2 uses
  %i.xx = trunc nuw i64 %indvars.iv.next459 to i32
  %i.xy = icmp sgt i32 %i.xw, %i.xx
  br i1 %i.xy, label %bb.g, label %._crit_edge, !llvm.loop !152
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2Decompressor10decompressEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.03)
  %i.d = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !110
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !153
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !123, !inline_history !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !131, !inline_history !154
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a)
end_hunk_0
