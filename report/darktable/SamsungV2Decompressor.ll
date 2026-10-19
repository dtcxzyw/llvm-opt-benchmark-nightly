Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed27AbstractSamsungDecompressorD2Ev:bb.a
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !119

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
  %3 = alloca %"struct.std::array.66", align 2    ; 13 uses
  %.sroa.0 = alloca <16 x i16>, align 2           ; 15 uses
  %4 = alloca %"struct.std::array.60", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28   ; 5 uses
  %i.f = icmp uge i32 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i32 %i.e, 15                         ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %.sroa.0.28.gep.sroa_idx696 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.30.gep688.sroa_idx698 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
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
  store i32 %i.n, ptr %i.d, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.a
  %i.p = phi i32 [ %i.n, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %i.e, %bb.a ] ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = sub nuw nsw i32 %i.c, %i.p               ; 47 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q ; 30 uses
  %i.u = icmp samesign ult i32 %i.r, 4
  br i1 %i.u, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 7, ptr %i.v, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i32 0, ptr %i.w, align 4, !tbaa !144
  %i.x = icmp ult i32 %1, 2                       ; 2 uses
  %i.y = select i1 %i.x, i32 7, i32 4             ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.z = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aa, ptr %.022.ptr, align 8, !tbaa !20
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !20
  store i32 %i.y, ptr %.022.ptr.2, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !107 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 15
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i32 %i.ad, 15
  %i.ag = icmp eq i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = add nuw nsw i32 %i.r, 8                 ; 15 uses
  %i.aj = icmp slt i32 %1, 2
  %i.ak = add nsw i32 %1, -2                      ; 2 uses
  %i.al = add nsw i32 %1, -1                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.not32.i = trunc i32 %1 to i1                  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 30
  %spec.select = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %spec.select652 = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.not32.i.mask = and i32 %1, 1
  %spec.select653 = zext nneg i32 %.not32.i.mask to i64 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %.not32.i.mask655 = and i32 %1, 1
  %spec.select654 = zext nneg i32 %.not32.i.mask655 to i64 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %.sroa.0.28..sroa_idx697 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.2..sroa_idx690 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.18..sroa_idx693 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 18
  %.sroa.0.26..sroa_idx695 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.2..sroa_idx691 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.30..sroa_idx699 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  %.sroa.0.4..sroa_idx692 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.20..sroa_idx694 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  br label %bb.g

._crit_edge:                                      ; preds = %.preheader
  %.pre = load i32, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %.pre522 = load i32, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %.pre530 = zext i32 %.pre to i64
  %i.bs = icmp samesign ult i32 %.sroa.30.10, 65
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp sgt i32 %.sroa.80211.10, -1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = and i32 %.sroa.80211.10, 3
  %i.bv = icmp eq i32 %i.bu, 0
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr i32 %.sroa.30.10, 3
  %i.bx = sub nsw i32 %.sroa.80211.10, %i.bw      ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %.pre530, %i.by
  %i.ca = zext i32 %.pre522 to i64
  %.not.i.i45 = icmp samesign ugt i64 %i.bz, %i.ca
  br i1 %.not.i.i45, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit46

bb.f:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit46:      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.pre522, -1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i32 %.pre, %i.bx            ; 2 uses
  %i.cd = icmp samesign ule i32 %i.cc, %.pre522
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp sgt i32 %i.bx, -1
  tail call void @llvm.assume(i1 %i.ce)
  store i32 %i.cc, ptr %i.d, align 8, !tbaa !28
  ret void

bb.g:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv458 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next459, %.preheader ] ; 8 uses
  %i.cf = phi i32 [ %i.ad, %.lr.ph ], [ %i.xk, %.preheader ] ; 3 uses
  %.sroa.0174.0409 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0174.10, %.preheader ] ; 3 uses
  %.sroa.30.0408 = phi i32 [ 0, %.lr.ph ], [ %.sroa.30.10, %.preheader ] ; 6 uses
  %.sroa.80211.0407 = phi i32 [ 0, %.lr.ph ], [ %.sroa.80211.10, %.preheader ] ; 8 uses
  %5 = shl nuw i64 %indvars.iv458, 1
  %6 = add i64 %5, 8589934560
  %7 = and i64 %6, 8589934560
  %i.cg = load ptr, ptr %0, align 8, !tbaa !17    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 568
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !145, !noalias !146 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 592
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !98, !noalias !146
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 608
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !147, !noalias !146
  %i.cn = mul nsw i32 %i.cm, %i.ck                ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 612
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !148, !noalias !146 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !149, !noalias !146
  %i.cs = ashr i32 %i.cr, 1                       ; 7 uses
  %i.ct = icmp ne i32 %i.cs, 0
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp sge i32 %i.cs, %i.cn
  tail call void @llvm.assume(i1 %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cv = load i8, ptr %i.ah, align 4, !tbaa !109, !noalias !150 ; 3 uses
  %i.cw = and i8 %i.cv, 4
  %.not323 = icmp eq i8 %i.cw, 0
  %i.cx = and i64 %indvars.iv458, 48
  %i.cy = icmp eq i64 %i.cx, 0
  %or.cond66.i = and i1 %i.cy, %.not323
  br i1 %or.cond66.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.cz = icmp samesign ult i32 %.sroa.30.0408, 65
  tail call void @llvm.assume(i1 %i.cz), !noalias !150
  %i.da = icmp sgt i32 %.sroa.80211.0407, -1
  tail call void @llvm.assume(i1 %i.da), !noalias !150
  %i.db = and i32 %.sroa.80211.0407, 3
  %i.dc = icmp eq i32 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc), !noalias !150
  %.not.i.i48 = icmp samesign ult i32 %.sroa.30.0408, 2
  br i1 %.not.i.i48, label %bb.i, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dd = add nuw nsw i32 %.sroa.80211.0407, 4    ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.dd, %i.r
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !119

bb.j:                                             ; preds = %bb.i
  %i.de = zext nneg i32 %.sroa.80211.0407 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.de
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.dg = icmp samesign ugt i32 %.sroa.80211.0407, %i.ai
  br i1 %i.dg, label %bb.l, label %bb.m, !prof !119

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.0.i.i.i, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.0407) ; 3 uses
  %i.dh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.dh)
  %i.di = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.dj = icmp samesign ult i32 %i.di, 5
  tail call void @llvm.assume(i1 %i.dj), !noalias !150
  %i.dk = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dk
  %i.dm = zext nneg i32 %i.di to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.dl, i64 %i.dm, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.m ], [ %i.df, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dn = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.do = or disjoint i32 %.sroa.30.0408, 32
  %i.dp = sub nuw nsw i32 32, %.sroa.30.0408
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw i64 %i.dn, %i.dq
  %i.ds = or i64 %i.dr, %.sroa.0174.0409
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit: ; preds = %bb.h, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i
  %.sroa.80211.11 = phi i32 [ %i.dd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.80211.0407, %bb.h ] ; 7 uses
  %i.dt = phi i64 [ %i.ds, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.0174.0409, %bb.h ] ; 2 uses
  %i.du = phi i32 [ %i.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.30.0408, %bb.h ] ; 4 uses
  %i.dv = lshr i64 %i.dt, 62                      ; 2 uses
  %i.dw = add nsw i32 %i.du, -2                   ; 2 uses
  %i.dx = shl i64 %i.dt, 2                        ; 3 uses
  %.not324 = icmp eq i64 %i.dv, 3
  br i1 %.not324, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.dy = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !150
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals, i64 %i.dv
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !20, !noalias !150
  %i.eb = add nsw i32 %i.ea, %i.dy
  br label %bb.u

bb.o:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.ec = and i32 %.sroa.80211.11, 3
  %i.ed = icmp eq i32 %i.ec, 0
  tail call void @llvm.assume(i1 %i.ed), !noalias !150
  %.not.i.i50 = icmp samesign ult i32 %i.du, 14
  br i1 %.not.i.i50, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.ee = add nuw nsw i32 %.sroa.80211.11, 4      ; 2 uses
  %.not.i.i.i53 = icmp samesign ugt i32 %i.ee, %i.r
  br i1 %.not.i.i.i53, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  %i.ef = zext nneg i32 %.sroa.80211.11 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ef
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

bb.r:                                             ; preds = %bb.p
  %i.eh = icmp samesign ugt i32 %.sroa.80211.11, %i.ai
  br i1 %i.eh, label %bb.s, label %bb.t, !prof !119

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %.sroa.0.i.i.i49, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i60 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.11) ; 3 uses
  %i.ei = add nuw nsw i32 %.sroa.speculated27.i.i.i.i60, 4
  %.sroa.speculated.i.i.i.i61 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ei)
  %i.ej = sub nsw i32 %.sroa.speculated.i.i.i.i61, %.sroa.speculated27.i.i.i.i60 ; 2 uses
  %i.ek = icmp samesign ult i32 %i.ej, 5
  tail call void @llvm.assume(i1 %i.ek), !noalias !150
  %i.el = zext nneg i32 %.sroa.speculated27.i.i.i.i60 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.el
  %i.en = zext nneg i32 %i.ej to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i49, ptr align 1 %i.em, i64 %i.en, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56 = phi ptr [ %.sroa.0.i.i.i49, %bb.t ], [ %i.eg, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.eo = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 to i64
  %i.ep = add nuw nsw i32 %i.du, 30
  %i.eq = sub nuw nsw i32 34, %i.du
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl nuw i64 %i.eo, %i.er
  %i.et = or i64 %i.es, %i.dx
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62: ; preds = %bb.o, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55
  %.sroa.80211.12 = phi i32 [ %i.ee, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %.sroa.80211.11, %bb.o ]
  %i.eu = phi i64 [ %i.et, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.dx, %bb.o ] ; 2 uses
  %i.ev = phi i32 [ %i.ep, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.dw, %bb.o ]
  %i.ew = lshr i64 %i.eu, 52
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = add nsw i32 %i.ev, -12
  %i.ez = shl i64 %i.eu, 12
  br label %bb.u

bb.u:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62, %bb.n
  %.sroa.80211.3 = phi i32 [ %.sroa.80211.11, %bb.n ], [ %.sroa.80211.12, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %.sroa.30.3 = phi i32 [ %i.dw, %bb.n ], [ %i.ey, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %.sroa.0174.3 = phi i64 [ %i.dx, %bb.n ], [ %i.ez, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %i.fa = phi i32 [ %i.eb, %bb.n ], [ %i.ex, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  store i32 %i.fa, ptr %i.w, align 4, !tbaa !144, !noalias !150
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.sroa.80211.1 = phi i32 [ %.sroa.80211.3, %bb.u ], [ %.sroa.80211.0407, %bb.g ] ; 17 uses
  %.sroa.30.1 = phi i32 [ %.sroa.30.3, %bb.u ], [ %.sroa.30.0408, %bb.g ] ; 7 uses
  %.sroa.0174.1 = phi i64 [ %.sroa.0174.3, %bb.u ], [ %.sroa.0174.0409, %bb.g ] ; 5 uses
  %i.fb = and i8 %i.cv, 2
  %.not325 = icmp eq i8 %i.fb, 0
  %i.fc = icmp samesign ult i32 %.sroa.30.1, 65
  tail call void @llvm.assume(i1 %i.fc), !noalias !150
  %i.fd = icmp sgt i32 %.sroa.80211.1, -1
  tail call void @llvm.assume(i1 %i.fd), !noalias !150
  %i.fe = and i32 %.sroa.80211.1, 3
  %i.ff = icmp eq i32 %i.fe, 0
  tail call void @llvm.assume(i1 %i.ff), !noalias !150
  %.not.i.i78 = icmp eq i32 %.sroa.30.1, 0        ; 2 uses
  br i1 %.not325, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.x, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.fg = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i67 = icmp samesign ugt i32 %i.fg, %i.r
  br i1 %.not.i.i.i67, label %bb.z, label %bb.y, !prof !119

bb.y:                                             ; preds = %bb.x
  %i.fh = zext nneg i32 %.sroa.80211.1 to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

bb.z:                                             ; preds = %bb.x
  %i.fj = icmp samesign ugt i32 %.sroa.80211.1, %i.ai
  br i1 %i.fj, label %bb.aa, label %bb.ab, !prof !119

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %.sroa.0.i.i.i63, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i74 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.1) ; 3 uses
  %i.fk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i74, 4
  %.sroa.speculated.i.i.i.i75 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.fk)
  %i.fl = sub nsw i32 %.sroa.speculated.i.i.i.i75, %.sroa.speculated27.i.i.i.i74 ; 2 uses
  %i.fm = icmp samesign ult i32 %i.fl, 5
  tail call void @llvm.assume(i1 %i.fm), !noalias !150
  %i.fn = zext nneg i32 %.sroa.speculated27.i.i.i.i74 to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fn
  %i.fp = zext nneg i32 %i.fl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i63, ptr align 1 %i.fo, i64 %i.fp, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69: ; preds = %bb.ab, %bb.y
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i70 = phi ptr [ %.sroa.0.i.i.i63, %bb.ab ], [ %i.fi, %bb.y ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i71 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i70, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.fq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i71 to i64
  %i.fr = shl nuw i64 %i.fq, 32
  %i.fs = or i64 %i.fr, %.sroa.0174.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76: ; preds = %bb.w, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69
  %.sroa.80211.13 = phi i32 [ %i.fg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.80211.1, %bb.w ]
  %i.ft = phi i64 [ %i.fs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.0174.1, %bb.w ] ; 2 uses
  %i.fu = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.30.1, %bb.w ]
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = shl i64 %i.ft, 1
  %.not57.i = icmp sgt i64 %i.ft, -1
  %i.fx = select i1 %.not57.i, i32 7, i32 3
  br label %.sink.split

bb.ac:                                            ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.ad, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.fy = add nuw nsw i32 %.sroa.80211.1, 4       ; 3 uses
  %.not.i.i.i81 = icmp samesign ugt i32 %i.fy, %i.r
  br i1 %.not.i.i.i81, label %bb.af, label %bb.ae, !prof !119

bb.ae:                                            ; preds = %bb.ad
  %i.fz = zext nneg i32 %.sroa.80211.1 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fz
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread

bb.af:                                            ; preds = %bb.ad
  %i.gb = icmp samesign ugt i32 %.sroa.80211.1, %i.ai
  br i1 %i.gb, label %bb.ag, label %bb.ah, !prof !119

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %.sroa.0.i.i.i77, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i88 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.1) ; 3 uses
  %i.gc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i88, 4
  %.sroa.speculated.i.i.i.i89 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gc)
  %i.gd = sub nsw i32 %.sroa.speculated.i.i.i.i89, %.sroa.speculated27.i.i.i.i88 ; 2 uses
  %i.ge = icmp samesign ult i32 %i.gd, 5
  tail call void @llvm.assume(i1 %i.ge), !noalias !150
  %i.gf = zext nneg i32 %.sroa.speculated27.i.i.i.i88 to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gf
  %i.gh = zext nneg i32 %i.gd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i77, ptr align 1 %i.gg, i64 %i.gh, i1 false), !noalias !150
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90: ; preds = %bb.ac
  %i.gi = add nsw i32 %.sroa.30.1, -1             ; 2 uses
  %i.gj = shl i64 %.sroa.0174.1, 1                ; 3 uses
  %.not.i = icmp sgt i64 %.sroa.0174.1, -1
  br i1 %.not.i, label %bb.ai, label %bb.ao

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread: ; preds = %bb.ae, %bb.ah
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84 = phi ptr [ %.sroa.0.i.i.i77, %bb.ah ], [ %i.ga, %bb.ae ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.gk = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 to i64
  %i.gl = shl nuw i64 %i.gk, 32
  %i.gm = or i64 %i.gl, %.sroa.0174.1             ; 2 uses
  %i.gn = shl i64 %i.gm, 1                        ; 2 uses
  %.not.i576 = icmp sgt i64 %i.gm, -1
  br i1 %.not.i576, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104, label %bb.ao

bb.ai:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.not.i.i92 = icmp samesign ult i32 %.sroa.30.1, 4
  br i1 %.not.i.i92, label %bb.aj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.go = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i95 = icmp samesign ugt i32 %i.go, %i.r
  br i1 %.not.i.i.i95, label %bb.al, label %bb.ak, !prof !119

bb.ak:                                            ; preds = %bb.aj
  %i.gp = zext nneg i32 %.sroa.80211.1 to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

bb.al:                                            ; preds = %bb.aj
  %i.gr = icmp samesign ugt i32 %.sroa.80211.1, %i.ai
  br i1 %i.gr, label %bb.am, label %bb.an, !prof !119

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.0.i.i.i91, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i102 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.1) ; 3 uses
  %i.gs = add nuw nsw i32 %.sroa.speculated27.i.i.i.i102, 4
  %.sroa.speculated.i.i.i.i103 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gs)
  %i.gt = sub nsw i32 %.sroa.speculated.i.i.i.i103, %.sroa.speculated27.i.i.i.i102 ; 2 uses
  %i.gu = icmp samesign ult i32 %i.gt, 5
  tail call void @llvm.assume(i1 %i.gu), !noalias !150
  %i.gv = zext nneg i32 %.sroa.speculated27.i.i.i.i102 to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gv
  %i.gx = zext nneg i32 %i.gt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i91, ptr align 1 %i.gw, i64 %i.gx, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97: ; preds = %bb.an, %bb.ak
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98 = phi ptr [ %.sroa.0.i.i.i91, %bb.an ], [ %i.gq, %bb.ak ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.gy = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 to i64
  %i.gz = add nuw nsw i32 %.sroa.30.1, 31
  %i.ha = sub nuw nsw i32 33, %.sroa.30.1
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl nuw i64 %i.gy, %i.hb
  %i.hd = or i64 %i.hc, %i.gj
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %bb.ai, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97
  %.sroa.80211.15 = phi i32 [ %i.go, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %.sroa.80211.1, %bb.ai ], [ %i.fy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.he = phi i64 [ %i.hd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gj, %bb.ai ], [ %i.gn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ] ; 2 uses
  %i.hf = phi i32 [ %i.gz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gi, %bb.ai ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.hg = lshr i64 %i.he, 61
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = add nsw i32 %i.hf, -3
  %i.hj = shl i64 %i.he, 3
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104
  %.sink = phi i32 [ %i.hh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.fx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.80211.2.ph = phi i32 [ %.sroa.80211.15, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %.sroa.80211.13, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.30.2.ph = phi i32 [ %i.hi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.fv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.0174.2.ph = phi i64 [ %i.hj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.fw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  store i32 %.sink, ptr %i.v, align 8, !tbaa !143, !noalias !150
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.sroa.80211.2 = phi i32 [ %.sroa.80211.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.fy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.80211.2.ph, %.sink.split ] ; 7 uses
  %.sroa.30.2 = phi i32 [ %i.gi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.30.2.ph, %.sink.split ] ; 4 uses
  %.sroa.0174.2 = phi i64 [ %i.gj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.0174.2.ph, %.sink.split ] ; 3 uses
  %i.hk = load i32, ptr %i.v, align 8, !tbaa !143, !noalias !150 ; 8 uses
  %.not58.i = icmp eq i32 %i.hk, 7                ; 2 uses
  br i1 %i.x, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !150
  unreachable

bb.ar:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.as

.thread:                                          ; preds = %bb.ap, %bb.ar
  %i.hl = icmp eq i64 %indvars.iv458, 0
  br i1 %i.hl, label %8, label %.preheader328.preheader

8:                                                ; preds = %.thread
  %9 = load <1 x i16>, ptr %i.am, align 2
  %10 = shufflevector <1 x i16> %9, <1 x i16> poison, <16 x i32> zeroinitializer
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

.preheader328.preheader:                          ; preds = %.thread
  %i.hm = icmp samesign ult i32 %1, %i.cp
  tail call void @llvm.assume(i1 %i.hm), !noalias !150
  %i.hn = mul nuw nsw i32 %i.cs, %1
  %i.ho = zext nneg i32 %i.hn to i64
  %scevgep = getelementptr i8, ptr %i.ci, i64 28
  %11 = shl nuw nsw i64 %i.ho, 1
  %12 = getelementptr i8, ptr %scevgep, i64 %7
  %scevgep432 = getelementptr i8, ptr %12, i64 %11
  %i.hp = load <2 x i16>, ptr %scevgep432, align 2, !tbaa !151, !noalias !150
  %i.hq = shufflevector <2 x i16> %i.hp, <2 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

bb.as:                                            ; preds = %bb.ar
  br i1 %i.aj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !150
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hr = sext i32 %i.hk to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !20, !noalias !150 ; 2 uses
  %i.hu = icmp ne i32 %i.hk, 2
  %i.hv = icmp ne i32 %i.hk, 4
  %.not62.i = and i1 %i.hu, %i.hv
  %.not62.i.fr = freeze i1 %.not62.i
  br i1 %.not62.i.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.au, %bb.az
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %bb.az ], [ 0, %bb.au ] ; 5 uses
  %i.hw = or disjoint i64 %indvars.iv428, %indvars.iv458
  %i.hx = trunc i64 %indvars.iv428 to i32
  %i.hy = add i32 %1, %i.hx
  %i.hz = and i32 %i.hy, 1
  %.not59.i.us = icmp eq i32 %i.hz, 0             ; 2 uses
  %i.ia = and i64 %indvars.iv428, 1
  %.not60.i.us = icmp eq i64 %i.ia, 0
  %i.ib = select i1 %.not60.i.us, i32 1, i32 -1
  %.048.i.us = select i1 %.not59.i.us, i32 %i.al, i32 %i.ak ; 4 uses
  %i.ic = select i1 %.not59.i.us, i32 %i.ib, i32 0
  %i.id = trunc i64 %i.hw to i32
  %i.ie = add i32 %i.ht, %i.id
  %.0.i25.us = add nsw i32 %i.ie, %i.ic           ; 6 uses
  %i.if = icmp slt i32 %.0.i25.us, 0
  br i1 %i.if, label %.split384.us, label %bb.av

bb.av:                                            ; preds = %.split.us
  %.not61.i.us = icmp slt i32 %.0.i25.us, %i.cf
  br i1 %.not61.i.us, label %bb.aw, label %.split386.us

bb.aw:                                            ; preds = %bb.av
  switch i32 %i.hk, label %bb.ay [
    i32 4, label %bb.ax
    i32 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.ig = add nuw nsw i32 %.0.i25.us, 2           ; 2 uses
  %i.ih = icmp samesign ult i32 %.048.i.us, %i.cp
  tail call void @llvm.assume(i1 %i.ih)
  %i.ii = mul nuw nsw i32 %.048.i.us, %i.cs
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.ij ; 2 uses
  %i.il = zext nneg i32 %.0.i25.us to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !151
  %i.io = zext i16 %i.in to i32
  %i.ip = icmp samesign ult i32 %i.ig, %i.cn
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = zext nneg i32 %i.ig to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !151
  %i.it = zext i16 %i.is to i32
  %i.iu = add nuw nsw i32 %i.io, 1
  %i.iv = add nuw nsw i32 %i.iu, %i.it
  %i.iw = lshr i32 %i.iv, 1
  %i.ix = trunc nuw i32 %i.iw to i16
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.iy = icmp samesign ult i32 %.0.i25.us, %i.cn
  tail call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp samesign ult i32 %.048.i.us, %i.cp
  tail call void @llvm.assume(i1 %i.iz)
  %i.ja = mul nuw nsw i32 %.048.i.us, %i.cs
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.jb
  %i.jd = zext nneg i32 %.0.i25.us to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !151
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink632 = phi i16 [ %i.jf, %bb.ay ], [ %i.ix, %bb.ax ]
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv428
  store i16 %.sink632, ptr %i.jg, align 2, !tbaa !151
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, 16
  br i1 %exitcond431.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !138

.split:                                           ; preds = %bb.au, %bb.be
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.be ], [ 0, %bb.au ] ; 5 uses
  %i.jh = or disjoint i64 %indvars.iv, %indvars.iv458
  %i.ji = trunc i64 %indvars.iv to i32
  %i.jj = add i32 %1, %i.ji
  %i.jk = and i32 %i.jj, 1
  %.not59.i = icmp eq i32 %i.jk, 0                ; 2 uses
  %i.jl = and i64 %indvars.iv, 1
  %.not60.i = icmp eq i64 %i.jl, 0
  %i.jm = select i1 %.not60.i, i32 1, i32 -1
  %.048.i = select i1 %.not59.i, i32 %i.al, i32 %i.ak ; 2 uses
  %i.jn = select i1 %.not59.i, i32 %i.jm, i32 0
  %i.jo = trunc i64 %i.jh to i32
  %i.jp = add i32 %i.ht, %i.jo
  %.0.i25 = add nsw i32 %i.jp, %i.jn              ; 5 uses
  %i.jq = icmp slt i32 %.0.i25, 0
  br i1 %i.jq, label %.split384.us, label %bb.ba

.split384.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hk) #11
  unreachable

bb.ba:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.cf
  br i1 %.not61.i, label %bb.bb, label %.split386.us

bb.bb:                                            ; preds = %bb.ba
  %i.jr = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.jr, %i.cf
  br i1 %.not63.i, label %bb.bc, label %.split386.us

.split386.us:                                     ; preds = %bb.ba, %bb.bb, %bb.av
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hk) #11
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.js = icmp samesign ult i32 %.0.i25, %i.cn
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = icmp samesign ult i32 %.048.i, %i.cp
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = mul nuw nsw i32 %.048.i, %i.cs
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.jv ; 2 uses
  %i.jx = zext nneg i32 %.0.i25 to i64
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !151 ; 2 uses
  switch i32 %i.hk, label %bb.be [
    i32 4, label %bb.bd
    i32 2, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  %i.ka = zext i16 %i.jz to i32
  %i.kb = icmp samesign ult i32 %i.jr, %i.cn
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = zext nneg i32 %i.jr to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !151
  %i.kf = zext i16 %i.ke to i32
  %i.kg = add nuw nsw i32 %i.ka, 1
  %i.kh = add nuw nsw i32 %i.kg, %i.kf
  %i.ki = lshr i32 %i.kh, 1
  %i.kj = trunc nuw i32 %i.ki to i16
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.sink634 = phi i16 [ %i.kj, %bb.bd ], [ %i.jz, %bb.bc ]
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink634, ptr %i.kk, align 2, !tbaa !151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !138

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader328.preheader, %8
  %i.kl = phi <16 x i16> [ %10, %8 ], [ %i.hq, %.preheader328.preheader ]
  store <16 x i16> %i.kl, ptr %4, align 2, !tbaa !151
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.be, %bb.az, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !152
  %i.km = and i8 %i.cv, 1
  %.not326 = icmp eq i8 %i.km, 0
  br i1 %.not326, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.kn = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.kn), !noalias !152
  %i.ko = and i32 %.sroa.80211.2, 3
  %i.kp = icmp eq i32 %i.ko, 0
  tail call void @llvm.assume(i1 %i.kp), !noalias !152
  %.not.i.i115 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i115, label %bb.bg, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.kq = add nuw nsw i32 %.sroa.80211.2, 4       ; 2 uses
  %.not.i.i.i118 = icmp samesign ugt i32 %i.kq, %i.r
  br i1 %.not.i.i.i118, label %bb.bi, label %bb.bh, !prof !119

bb.bh:                                            ; preds = %bb.bg
  %i.kr = zext nneg i32 %.sroa.80211.2 to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.kr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

bb.bi:                                            ; preds = %bb.bg
  %i.kt = icmp samesign ugt i32 %.sroa.80211.2, %i.ai
  br i1 %i.kt, label %bb.bj, label %bb.bk, !prof !119

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.bk:                                            ; preds = %bb.bi
  store i32 0, ptr %.sroa.0.i.i.i114, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i125 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.2) ; 3 uses
  %i.ku = add nuw nsw i32 %.sroa.speculated27.i.i.i.i125, 4
  %.sroa.speculated.i.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ku)
  %i.kv = sub nsw i32 %.sroa.speculated.i.i.i.i126, %.sroa.speculated27.i.i.i.i125 ; 2 uses
  %i.kw = icmp samesign ult i32 %i.kv, 5
  tail call void @llvm.assume(i1 %i.kw), !noalias !152
  %i.kx = zext nneg i32 %.sroa.speculated27.i.i.i.i125 to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.kx
  %i.kz = zext nneg i32 %i.kv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i114, ptr align 1 %i.ky, i64 %i.kz, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120: ; preds = %bb.bk, %bb.bh
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121 = phi ptr [ %.sroa.0.i.i.i114, %bb.bk ], [ %i.ks, %bb.bh ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.la = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 to i64
  %i.lb = shl nuw i64 %i.la, 32
  %i.lc = or i64 %i.lb, %.sroa.0174.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127: ; preds = %bb.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120
  %.sroa.80211.16 = phi i32 [ %i.kq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.80211.2, %bb.bf ] ; 2 uses
  %i.ld = phi i64 [ %i.lc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.0174.2, %bb.bf ] ; 2 uses
  %i.le = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.30.2, %bb.bf ]
  %i.lf = add nsw i32 %i.le, -1                   ; 2 uses
  %i.lg = shl i64 %i.ld, 1                        ; 2 uses
  %.not.i40 = icmp sgt i64 %i.ld, -1
  br i1 %.not.i40, label %bb.bl, label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.bl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %.sroa.80211.5 = phi i32 [ %.sroa.80211.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 17 uses
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 14 uses
  %.sroa.0174.5 = phi i64 [ %.sroa.0174.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 5 uses
  %i.lh = icmp samesign ult i32 %.sroa.30.5, 65
  tail call void @llvm.assume(i1 %i.lh), !noalias !152
  %.not.i.i129 = icmp samesign ult i32 %.sroa.30.5, 2
  br i1 %.not.i.i129, label %bb.bm, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.li = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132 = icmp samesign ugt i32 %i.li, %i.r
  br i1 %.not.i.i.i132, label %bb.bo, label %bb.bn, !prof !119

bb.bn:                                            ; preds = %bb.bm
  %i.lj = zext nneg i32 %.sroa.80211.5 to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lj
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

bb.bo:                                            ; preds = %bb.bm
  %i.ll = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.ll, label %bb.bp, label %bb.bq, !prof !119

bb.bp:                                            ; preds = %bb.cb, %bb.bx, %bb.bt, %bb.bo
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.bq:                                            ; preds = %bb.bo
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.lm = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139, 4
  %.sroa.speculated.i.i.i.i140 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.lm)
  %i.ln = sub nsw i32 %.sroa.speculated.i.i.i.i140, %.sroa.speculated27.i.i.i.i139 ; 2 uses
  %i.lo = icmp samesign ult i32 %i.ln, 5
  tail call void @llvm.assume(i1 %i.lo), !noalias !152
  %i.lp = zext nneg i32 %.sroa.speculated27.i.i.i.i139 to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lp
  %i.lr = zext nneg i32 %i.ln to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.lq, i64 %i.lr, i1 false), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread: ; preds = %bb.bn, %bb.bq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135 = phi ptr [ %.sroa.0.i.i.i128, %bb.bq ], [ %i.lk, %bb.bn ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.ls = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 to i64
  %i.lt = sub nuw nsw i32 32, %.sroa.30.5
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = shl nuw i64 %i.ls, %i.lu
  %i.lw = or i64 %i.lv, %.sroa.0174.5             ; 2 uses
  %i.lx = lshr i64 %i.lw, 62
  %i.ly = trunc nuw nsw i64 %i.lx to i32
  %i.lz = or disjoint i32 %.sroa.30.5, 30
  %i.ma = shl i64 %i.lw, 2
  %i.mb = icmp ult i32 %.sroa.30.5, 35
  tail call void @llvm.assume(i1 %i.mb), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141: ; preds = %bb.bl
  %i.mc = lshr i64 %.sroa.0174.5, 62
  %i.md = trunc nuw nsw i64 %i.mc to i32          ; 4 uses
  %i.me = add nsw i32 %.sroa.30.5, -2
  %i.mf = shl i64 %.sroa.0174.5, 2                ; 2 uses
  %.not.i.i129.1 = icmp samesign ult i32 %.sroa.30.5, 4
  br i1 %.not.i.i129.1, label %bb.br, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1

bb.br:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mg = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.1 = icmp samesign ugt i32 %i.mg, %i.r
  br i1 %.not.i.i.i132.1, label %bb.bt, label %bb.bs, !prof !119

bb.bs:                                            ; preds = %bb.br
  %i.mh = zext nneg i32 %.sroa.80211.5 to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

bb.bt:                                            ; preds = %bb.br
  %i.mj = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.mj, label %bb.bp, label %bb.bu, !prof !119

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.mk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.1, 4
  %.sroa.speculated.i.i.i.i140.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.mk)
  %i.ml = sub nsw i32 %.sroa.speculated.i.i.i.i140.1, %.sroa.speculated27.i.i.i.i139.1 ; 2 uses
  %i.mm = icmp samesign ult i32 %i.ml, 5
  tail call void @llvm.assume(i1 %i.mm), !noalias !152
  %i.mn = zext nneg i32 %.sroa.speculated27.i.i.i.i139.1 to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mn
  %i.mp = zext nneg i32 %i.ml to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.mo, i64 %i.mp, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1: ; preds = %bb.bu, %bb.bs
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1 = phi ptr [ %.sroa.0.i.i.i128, %bb.bu ], [ %i.mi, %bb.bs ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 to i64
  %i.mr = or disjoint i32 %i.me, 32
  %i.ms = sub nuw nsw i32 34, %.sroa.30.5
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = shl nuw i64 %i.mq, %i.mt
  %i.mv = or i64 %i.mu, %i.mf
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread
  %.ph = phi i32 [ %i.ly, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.md, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.sroa.80211.17.1.ph = phi i32 [ %i.li, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.ph583.a = phi i64 [ %i.ma, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %.ph584.a = phi i32 [ %i.lz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %i.mw = lshr i64 %.ph583.a, 62
  %i.mx = trunc nuw nsw i64 %i.mw to i32
  %i.my = add nsw i32 %.ph584.a, -2
  %i.mz = shl i64 %.ph583.a, 2
  %i.na = icmp samesign ult i32 %.ph584.a, 67
  tail call void @llvm.assume(i1 %i.na), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  %i.nb = lshr i64 %i.mf, 62
  %i.nc = trunc nuw nsw i64 %i.nb to i32          ; 3 uses
  %i.nd = add nsw i32 %.sroa.30.5, -4
  %i.ne = shl i64 %.sroa.0174.5, 4                ; 3 uses
  %.not.i.i129.2 = icmp samesign ult i32 %.sroa.30.5, 6
  br i1 %.not.i.i129.2, label %bb.bv, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2

bb.bv:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
end_hunk_0
