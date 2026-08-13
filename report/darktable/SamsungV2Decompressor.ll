inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed27AbstractSamsungDecompressorD2Ev:bb.a
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !132

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i156 = alloca i32, align 4         ; 5 uses
  %.sroa.0.i.i.i142 = alloca i32, align 4         ; 20 uses
  %.sroa.0.i.i.i128 = alloca i32, align 4         ; 20 uses
  %.sroa.0.i.i.i114 = alloca i32, align 4         ; 5 uses
  %.sroa.0.i.i.i91 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i77 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i63 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i49 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %2 = alloca %"struct.std::array.65", align 8    ; 5 uses
  %3 = alloca %"struct.std::array.66", align 2    ; 19 uses
  %.sroa.0 = alloca <16 x i16>, align 32          ; 21 uses
  %4 = alloca %"struct.std::array.60", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 5 uses
  %i.f = icmp uge i32 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i32 %i.e, 15                         ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %.sroa.0.28.gep.sroa_idx706 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.30.gep688.sroa_idx708 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i32 16, %i.h                 ; 2 uses
  %i.j = zext i32 %i.e to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = add nuw nsw i64 %i.k, %i.j
  %i.m = zext nneg i32 %i.c to i64
  %.not.i.i = icmp samesign ugt i64 %i.l, %i.m
  br i1 %.not.i.i, label %bb.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.b
  %i.n = add nuw nsw i32 %i.i, %i.e               ; 3 uses
  %i.o = icmp samesign ule i32 %i.n, %i.c
  tail call void @llvm.assume(i1 %i.o)
  store i32 %i.n, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.a
  %i.p = phi i32 [ %i.n, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %i.e, %bb.a ] ; 2 uses
  %i.q = sub i32 %i.c, %i.p                       ; 48 uses
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 30 uses
  %i.u = icmp sgt i32 %i.q, -1
  tail call void @llvm.assume(i1 %i.u)
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
  %indvars.iv458 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next459, %.preheader ] ; 7 uses
  %i.cm = phi i32 [ %i.ae, %.lr.ph ], [ %i.xu, %.preheader ] ; 3 uses
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
  %i.cx = mul nsw i32 %i.cw, %i.cu                ; 5 uses
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
end_hunk_0
begin_hunk_1_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
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
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %indvars.iv458
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 32, !tbaa !145
  %i.xb = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  %i.xc = insertelement <16 x i32> poison, i32 %i.wv, i64 0
  %i.xd = shufflevector <16 x i32> %i.xc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xe = mul nsw <16 x i32> %i.xd, %i.xb
  %i.xf = insertelement <16 x i32> poison, i32 %i.wt, i64 0
  %i.xg = shufflevector <16 x i32> %i.xf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xh = add nsw <16 x i32> %i.xe, %i.xg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !148
  %i.xi = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %i.xj = icmp ult i32 %i.xi, 17
  tail call void @llvm.assume(i1 %i.xj)
  %notmask.i = shl nsw i32 -1, %i.xi
  %i.xk = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.ww)
  %i.xl = load <16 x i16>, ptr %4, align 2, !tbaa !145
  %i.xm = zext <16 x i16> %i.xl to <16 x i32>
  %i.xn = add nsw <16 x i32> %i.xh, %i.xm         ; 2 uses
  %i.xo = insertelement <16 x i32> poison, i32 %i.xk, i64 0
  %i.xp = shufflevector <16 x i32> %i.xo, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.xq = icmp sgt <16 x i32> %i.xn, %i.xp
  %i.xr = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.xn, <16 x i32> zeroinitializer)
  %i.xs = select <16 x i1> %i.xq, <16 x i32> %i.xp, <16 x i32> %i.xr
  %i.xt = trunc <16 x i32> %i.xs to <16 x i16>
  store <16 x i16> %i.xt, ptr %i.xa, align 2, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 16 ; 2 uses
  %i.xu = load i32, ptr %i.ad, align 4, !tbaa !109 ; 2 uses
  %i.xv = trunc nuw i64 %indvars.iv.next459 to i32
  %i.xw = icmp sgt i32 %i.xu, %i.xv
  br i1 %i.xw, label %bb.g, label %._crit_edge, !llvm.loop !152
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
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #17
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
end_hunk_1
