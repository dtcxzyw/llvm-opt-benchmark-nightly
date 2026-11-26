Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed27AbstractSamsungDecompressorD2Ev:bb.a
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
  %.sroa.0.i.i.i149 = alloca i32, align 4         ; 5 uses
  %.sroa.0.i.i.i136 = alloca i32, align 4         ; 20 uses
  %.sroa.0.i.i.i123 = alloca i32, align 4         ; 20 uses
  %.sroa.0.i.i.i110 = alloca i32, align 4         ; 5 uses
  %.sroa.0.i.i.i88 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i75 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i62 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i49 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %2 = alloca %"struct.std::array.65", align 8    ; 5 uses
  %3 = alloca %"struct.std::array.66", align 8    ; 17 uses
  %.sroa.0 = alloca <16 x i16>, align 16          ; 15 uses
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
  %.sroa.0.28.gep.sroa_idx690 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.30.gep680.sroa_idx692 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
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
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 30
  %spec.select = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %spec.select644 = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select644
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select644
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select644
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select644 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %.not32.i.mask = and i32 %1, 1
  %spec.select645 = zext nneg i32 %.not32.i.mask to i64 ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select645
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select645
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select645
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select645 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %.not32.i.mask647 = and i32 %1, 1
  %spec.select646 = zext nneg i32 %.not32.i.mask647 to i64 ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select646
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select646
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select646
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select646 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %.sroa.0.24..sroa_idx687 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.28..sroa_idx691 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.16..sroa_idx685 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.26..sroa_idx689 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.26..sroa_idx688 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.30..sroa_idx693 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  %.sroa.0.16..sroa_idx684 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.24..sroa_idx686 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %.preheader
  %.pre = load i32, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %.pre514 = load i32, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %.pre522 = zext i32 %.pre to i64
  %i.bv = icmp samesign ult i32 %.sroa.30.10, 65
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp sgt i32 %.sroa.80203.10, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = and i32 %.sroa.80203.10, 3
  %i.by = icmp eq i32 %i.bx, 0
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = lshr i32 %.sroa.30.10, 3
  %i.ca = sub nsw i32 %.sroa.80203.10, %i.bz      ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %.pre522, %i.cb
  %i.cd = zext i32 %.pre514 to i64
  %.not.i.i45 = icmp samesign ugt i64 %i.cc, %i.cd
  br i1 %.not.i.i45, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit46

bb.f:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit46:      ; preds = %._crit_edge
  %i.ce = icmp sgt i32 %.pre514, -1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i32 %.pre, %i.ca            ; 2 uses
  %i.cg = icmp samesign ule i32 %i.cf, %.pre514
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp sgt i32 %i.ca, -1
  tail call void @llvm.assume(i1 %i.ch)
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !28
  ret void

bb.g:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv450 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next451, %.preheader ] ; 8 uses
  %i.ci = phi i32 [ %i.ad, %.lr.ph ], [ %i.xt, %.preheader ] ; 3 uses
  %.sroa.0166.0401 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0166.10, %.preheader ] ; 3 uses
  %.sroa.30.0400 = phi i32 [ 0, %.lr.ph ], [ %.sroa.30.10, %.preheader ] ; 6 uses
  %.sroa.80203.0399 = phi i32 [ 0, %.lr.ph ], [ %.sroa.80203.10, %.preheader ] ; 8 uses
  %5 = shl nuw i64 %indvars.iv450, 1
  %6 = add i64 %5, 8589934560
  %7 = and i64 %6, 8589934560
  %i.cj = load ptr, ptr %0, align 8, !tbaa !17    ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 568
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !145, !noalias !146 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 592
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !98, !noalias !146
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 608
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !147, !noalias !146
  %i.cq = mul nsw i32 %i.cp, %i.cn                ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 612
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !148, !noalias !146 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !149, !noalias !146
  %i.cv = ashr i32 %i.cu, 1                       ; 7 uses
  %i.cw = icmp ne i32 %i.cv, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp sge i32 %i.cv, %i.cq
  tail call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cy = load i8, ptr %i.ah, align 4, !tbaa !109, !noalias !150 ; 3 uses
  %i.cz = and i8 %i.cy, 4
  %.not315 = icmp eq i8 %i.cz, 0
  %i.da = and i64 %indvars.iv450, 48
  %i.db = icmp eq i64 %i.da, 0
  %or.cond66.i = and i1 %i.db, %.not315
  br i1 %or.cond66.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.dc = icmp samesign ult i32 %.sroa.30.0400, 65
  tail call void @llvm.assume(i1 %i.dc), !noalias !150
  %i.dd = icmp sgt i32 %.sroa.80203.0399, -1
  tail call void @llvm.assume(i1 %i.dd), !noalias !150
  %i.de = and i32 %.sroa.80203.0399, 3
  %i.df = icmp eq i32 %i.de, 0
  tail call void @llvm.assume(i1 %i.df), !noalias !150
  %.not.i.i48 = icmp samesign ult i32 %.sroa.30.0400, 2
  br i1 %.not.i.i48, label %bb.i, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dg = add nuw nsw i32 %.sroa.80203.0399, 4    ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.dg, %i.r
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !119

bb.j:                                             ; preds = %bb.i
  %i.dh = zext nneg i32 %.sroa.80203.0399 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.dj = icmp samesign ugt i32 %.sroa.80203.0399, %i.ai
  br i1 %i.dj, label %bb.l, label %bb.m, !prof !119

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.0.i.i.i, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.0399) ; 3 uses
  %i.dk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.dk)
  %i.dl = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.dm = icmp samesign ult i32 %i.dl, 5
  tail call void @llvm.assume(i1 %i.dm), !noalias !150
  %i.dn = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dn
  %i.dp = zext nneg i32 %i.dl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.do, i64 %i.dp, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.m ], [ %i.di, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.dr = or disjoint i32 %.sroa.30.0400, 32
  %i.ds = sub nuw nsw i32 32, %.sroa.30.0400
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 %i.dq, %i.dt
  %i.dv = or i64 %i.du, %.sroa.0166.0401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit: ; preds = %bb.h, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i
  %.sroa.80203.11 = phi i32 [ %i.dg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.80203.0399, %bb.h ] ; 7 uses
  %i.dw = phi i64 [ %i.dv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.0166.0401, %bb.h ] ; 2 uses
  %i.dx = phi i32 [ %i.dr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.30.0400, %bb.h ] ; 4 uses
  %i.dy = lshr i64 %i.dw, 62                      ; 2 uses
  %i.dz = add nsw i32 %i.dx, -2                   ; 2 uses
  %i.ea = shl i64 %i.dw, 2                        ; 3 uses
  %.not316 = icmp eq i64 %i.dy, 3
  br i1 %.not316, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.eb = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !150
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals, i64 %i.dy
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !20, !noalias !150
  %i.ee = add nsw i32 %i.ed, %i.eb
  br label %bb.u

bb.o:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.ef = and i32 %.sroa.80203.11, 3
  %i.eg = icmp eq i32 %i.ef, 0
  tail call void @llvm.assume(i1 %i.eg), !noalias !150
  %.not.i.i50 = icmp samesign ult i32 %i.dx, 14
  br i1 %.not.i.i50, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.eh = add nuw nsw i32 %.sroa.80203.11, 4      ; 2 uses
  %.not.i.i.i53 = icmp samesign ugt i32 %i.eh, %i.r
  br i1 %.not.i.i.i53, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  %i.ei = zext nneg i32 %.sroa.80203.11 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ei
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

bb.r:                                             ; preds = %bb.p
  %i.ek = icmp samesign ugt i32 %.sroa.80203.11, %i.ai
  br i1 %i.ek, label %bb.s, label %bb.t, !prof !119

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %.sroa.0.i.i.i49, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i59 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.11) ; 3 uses
  %i.el = add nuw nsw i32 %.sroa.speculated27.i.i.i.i59, 4
  %.sroa.speculated.i.i.i.i60 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.el)
  %i.em = sub nsw i32 %.sroa.speculated.i.i.i.i60, %.sroa.speculated27.i.i.i.i59 ; 2 uses
  %i.en = icmp samesign ult i32 %i.em, 5
  tail call void @llvm.assume(i1 %i.en), !noalias !150
  %i.eo = zext nneg i32 %.sroa.speculated27.i.i.i.i59 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.eo
  %i.eq = zext nneg i32 %i.em to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i49, ptr align 1 %i.ep, i64 %i.eq, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56 = phi ptr [ %.sroa.0.i.i.i49, %bb.t ], [ %i.ej, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.er = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 to i64
  %i.es = add nuw nsw i32 %i.dx, 30
  %i.et = sub nuw nsw i32 34, %i.dx
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw i64 %i.er, %i.eu
  %i.ew = or i64 %i.ev, %i.ea
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61: ; preds = %bb.o, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55
  %.sroa.80203.12 = phi i32 [ %i.eh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %.sroa.80203.11, %bb.o ]
  %i.ex = phi i64 [ %i.ew, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.ea, %bb.o ] ; 2 uses
  %i.ey = phi i32 [ %i.es, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.dz, %bb.o ]
  %i.ez = lshr i64 %i.ex, 52
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = add nsw i32 %i.ey, -12
  %i.fc = shl i64 %i.ex, 12
  br label %bb.u

bb.u:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61, %bb.n
  %.sroa.80203.3 = phi i32 [ %.sroa.80203.11, %bb.n ], [ %.sroa.80203.12, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61 ]
  %.sroa.30.3 = phi i32 [ %i.dz, %bb.n ], [ %i.fb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61 ]
  %.sroa.0166.3 = phi i64 [ %i.ea, %bb.n ], [ %i.fc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61 ]
  %i.fd = phi i32 [ %i.ee, %bb.n ], [ %i.fa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit61 ]
  store i32 %i.fd, ptr %i.w, align 4, !tbaa !144, !noalias !150
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.sroa.80203.1 = phi i32 [ %.sroa.80203.3, %bb.u ], [ %.sroa.80203.0399, %bb.g ] ; 17 uses
  %.sroa.30.1 = phi i32 [ %.sroa.30.3, %bb.u ], [ %.sroa.30.0400, %bb.g ] ; 7 uses
  %.sroa.0166.1 = phi i64 [ %.sroa.0166.3, %bb.u ], [ %.sroa.0166.0401, %bb.g ] ; 5 uses
  %i.fe = and i8 %i.cy, 2
  %.not317 = icmp eq i8 %i.fe, 0
  %i.ff = icmp samesign ult i32 %.sroa.30.1, 65
  tail call void @llvm.assume(i1 %i.ff), !noalias !150
  %i.fg = icmp sgt i32 %.sroa.80203.1, -1
  tail call void @llvm.assume(i1 %i.fg), !noalias !150
  %i.fh = and i32 %.sroa.80203.1, 3
  %i.fi = icmp eq i32 %i.fh, 0
  tail call void @llvm.assume(i1 %i.fi), !noalias !150
  %.not.i.i76 = icmp eq i32 %.sroa.30.1, 0        ; 2 uses
  br i1 %.not317, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i76, label %bb.x, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i62)
  %i.fj = add nuw nsw i32 %.sroa.80203.1, 4       ; 2 uses
  %.not.i.i.i66 = icmp samesign ugt i32 %i.fj, %i.r
  br i1 %.not.i.i.i66, label %bb.z, label %bb.y, !prof !119

bb.y:                                             ; preds = %bb.x
  %i.fk = zext nneg i32 %.sroa.80203.1 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68

bb.z:                                             ; preds = %bb.x
  %i.fm = icmp samesign ugt i32 %.sroa.80203.1, %i.ai
  br i1 %i.fm, label %bb.aa, label %bb.ab, !prof !119

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %.sroa.0.i.i.i62, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.1) ; 3 uses
  %i.fn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i72, 4
  %.sroa.speculated.i.i.i.i73 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.fn)
  %i.fo = sub nsw i32 %.sroa.speculated.i.i.i.i73, %.sroa.speculated27.i.i.i.i72 ; 2 uses
  %i.fp = icmp samesign ult i32 %i.fo, 5
  tail call void @llvm.assume(i1 %i.fp), !noalias !150
  %i.fq = zext nneg i32 %.sroa.speculated27.i.i.i.i72 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fq
  %i.fs = zext nneg i32 %i.fo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i62, ptr align 1 %i.fr, i64 %i.fs, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68: ; preds = %bb.ab, %bb.y
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i69 = phi ptr [ %.sroa.0.i.i.i62, %bb.ab ], [ %i.fl, %bb.y ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i70 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i69, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i62)
  %i.ft = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i70 to i64
  %i.fu = shl nuw i64 %i.ft, 32
  %i.fv = or i64 %i.fu, %.sroa.0166.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74: ; preds = %bb.w, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68
  %.sroa.80203.13 = phi i32 [ %i.fj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68 ], [ %.sroa.80203.1, %bb.w ]
  %i.fw = phi i64 [ %i.fv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68 ], [ %.sroa.0166.1, %bb.w ] ; 2 uses
  %i.fx = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i68 ], [ %.sroa.30.1, %bb.w ]
  %i.fy = add nsw i32 %i.fx, -1
  %i.fz = shl i64 %i.fw, 1
  %.not57.i = icmp sgt i64 %i.fw, -1
  %i.ga = select i1 %.not57.i, i32 7, i32 3
  br label %.sink.split

bb.ac:                                            ; preds = %bb.v
  br i1 %.not.i.i76, label %bb.ad, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i75)
  %i.gb = add nuw nsw i32 %.sroa.80203.1, 4       ; 3 uses
  %.not.i.i.i79 = icmp samesign ugt i32 %i.gb, %i.r
  br i1 %.not.i.i.i79, label %bb.af, label %bb.ae, !prof !119

bb.ae:                                            ; preds = %bb.ad
  %i.gc = zext nneg i32 %.sroa.80203.1 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gc
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread

bb.af:                                            ; preds = %bb.ad
  %i.ge = icmp samesign ugt i32 %.sroa.80203.1, %i.ai
  br i1 %i.ge, label %bb.ag, label %bb.ah, !prof !119

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %.sroa.0.i.i.i75, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i85 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.1) ; 3 uses
  %i.gf = add nuw nsw i32 %.sroa.speculated27.i.i.i.i85, 4
  %.sroa.speculated.i.i.i.i86 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gf)
  %i.gg = sub nsw i32 %.sroa.speculated.i.i.i.i86, %.sroa.speculated27.i.i.i.i85 ; 2 uses
  %i.gh = icmp samesign ult i32 %i.gg, 5
  tail call void @llvm.assume(i1 %i.gh), !noalias !150
  %i.gi = zext nneg i32 %.sroa.speculated27.i.i.i.i85 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gi
  %i.gk = zext nneg i32 %i.gg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i75, ptr align 1 %i.gj, i64 %i.gk, i1 false), !noalias !150
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87: ; preds = %bb.ac
  %i.gl = add nsw i32 %.sroa.30.1, -1             ; 2 uses
  %i.gm = shl i64 %.sroa.0166.1, 1                ; 3 uses
  %.not.i = icmp sgt i64 %.sroa.0166.1, -1
  br i1 %.not.i, label %bb.ai, label %bb.ao

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread: ; preds = %bb.ae, %bb.ah
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i82 = phi ptr [ %.sroa.0.i.i.i75, %bb.ah ], [ %i.gd, %bb.ae ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i83 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i82, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i75)
  %i.gn = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i83 to i64
  %i.go = shl nuw i64 %i.gn, 32
  %i.gp = or i64 %i.go, %.sroa.0166.1             ; 2 uses
  %i.gq = shl i64 %i.gp, 1                        ; 2 uses
  %.not.i568 = icmp sgt i64 %i.gp, -1
  br i1 %.not.i568, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100, label %bb.ao

bb.ai:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87
  %.not.i.i89 = icmp samesign ult i32 %.sroa.30.1, 4
  br i1 %.not.i.i89, label %bb.aj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i88)
  %i.gr = add nuw nsw i32 %.sroa.80203.1, 4       ; 2 uses
  %.not.i.i.i92 = icmp samesign ugt i32 %i.gr, %i.r
  br i1 %.not.i.i.i92, label %bb.al, label %bb.ak, !prof !119

bb.ak:                                            ; preds = %bb.aj
  %i.gs = zext nneg i32 %.sroa.80203.1 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94

bb.al:                                            ; preds = %bb.aj
  %i.gu = icmp samesign ugt i32 %.sroa.80203.1, %i.ai
  br i1 %i.gu, label %bb.am, label %bb.an, !prof !119

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.0.i.i.i88, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i98 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.1) ; 3 uses
  %i.gv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i98, 4
  %.sroa.speculated.i.i.i.i99 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gv)
  %i.gw = sub nsw i32 %.sroa.speculated.i.i.i.i99, %.sroa.speculated27.i.i.i.i98 ; 2 uses
  %i.gx = icmp samesign ult i32 %i.gw, 5
  tail call void @llvm.assume(i1 %i.gx), !noalias !150
  %i.gy = zext nneg i32 %.sroa.speculated27.i.i.i.i98 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gy
  %i.ha = zext nneg i32 %i.gw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i88, ptr align 1 %i.gz, i64 %i.ha, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94: ; preds = %bb.an, %bb.ak
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i95 = phi ptr [ %.sroa.0.i.i.i88, %bb.an ], [ %i.gt, %bb.ak ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i96 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i95, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i88)
  %i.hb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i96 to i64
  %i.hc = add nuw nsw i32 %.sroa.30.1, 31
  %i.hd = sub nuw nsw i32 33, %.sroa.30.1
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl nuw i64 %i.hb, %i.he
  %i.hg = or i64 %i.hf, %i.gm
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread, %bb.ai, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94
  %.sroa.80203.15 = phi i32 [ %i.gr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94 ], [ %.sroa.80203.1, %bb.ai ], [ %i.gb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread ]
  %i.hh = phi i64 [ %i.hg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94 ], [ %i.gm, %bb.ai ], [ %i.gq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread ] ; 2 uses
  %i.hi = phi i32 [ %i.hc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i94 ], [ %i.gl, %bb.ai ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread ]
  %i.hj = lshr i64 %i.hh, 61
  %i.hk = trunc nuw nsw i64 %i.hj to i32
  %i.hl = add nsw i32 %i.hi, -3
  %i.hm = shl i64 %i.hh, 3
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100
  %.sink = phi i32 [ %i.hk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100 ], [ %i.ga, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74 ]
  %.sroa.80203.2.ph = phi i32 [ %.sroa.80203.15, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100 ], [ %.sroa.80203.13, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74 ]
  %.sroa.30.2.ph = phi i32 [ %i.hl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100 ], [ %i.fy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74 ]
  %.sroa.0166.2.ph = phi i64 [ %i.hm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit100 ], [ %i.fz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit74 ]
  store i32 %.sink, ptr %i.v, align 8, !tbaa !143, !noalias !150
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87
  %.sroa.80203.2 = phi i32 [ %.sroa.80203.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87 ], [ %i.gb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread ], [ %.sroa.80203.2.ph, %.sink.split ] ; 7 uses
  %.sroa.30.2 = phi i32 [ %i.gl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87 ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread ], [ %.sroa.30.2.ph, %.sink.split ] ; 4 uses
  %.sroa.0166.2 = phi i64 [ %i.gm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87 ], [ %i.gq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit87.thread ], [ %.sroa.0166.2.ph, %.sink.split ] ; 3 uses
  %i.hn = load i32, ptr %i.v, align 8, !tbaa !143, !noalias !150 ; 8 uses
  %.not58.i = icmp eq i32 %i.hn, 7                ; 2 uses
  br i1 %i.x, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !150
  unreachable

bb.ar:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.as

.thread:                                          ; preds = %bb.ap, %bb.ar
  %i.ho = icmp eq i64 %indvars.iv450, 0
  br i1 %i.ho, label %8, label %.preheader320.preheader

8:                                                ; preds = %.thread
  %9 = load <1 x i16>, ptr %i.am, align 2
  %10 = shufflevector <1 x i16> %9, <1 x i16> poison, <16 x i32> zeroinitializer
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

.preheader320.preheader:                          ; preds = %.thread
  %i.hp = icmp samesign ult i32 %1, %i.cs
  tail call void @llvm.assume(i1 %i.hp), !noalias !150
  %i.hq = mul nuw nsw i32 %i.cv, %1
  %i.hr = zext nneg i32 %i.hq to i64
  %scevgep = getelementptr i8, ptr %i.cl, i64 28
  %11 = shl nuw nsw i64 %i.hr, 1
  %12 = getelementptr i8, ptr %scevgep, i64 %7
  %scevgep424 = getelementptr i8, ptr %12, i64 %11
  %i.hs = load <2 x i16>, ptr %scevgep424, align 2, !tbaa !151, !noalias !150
  %i.ht = shufflevector <2 x i16> %i.hs, <2 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

bb.as:                                            ; preds = %bb.ar
  br i1 %i.aj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !150
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hu = sext i32 %i.hn to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !20, !noalias !150 ; 2 uses
  %i.hx = icmp ne i32 %i.hn, 2
  %i.hy = icmp ne i32 %i.hn, 4
  %.not62.i = and i1 %i.hx, %i.hy
  %.not62.i.fr = freeze i1 %.not62.i
  br i1 %.not62.i.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.au, %bb.az
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %bb.az ], [ 0, %bb.au ] ; 5 uses
  %i.hz = or disjoint i64 %indvars.iv420, %indvars.iv450
  %i.ia = trunc i64 %indvars.iv420 to i32
  %i.ib = add i32 %1, %i.ia
  %i.ic = and i32 %i.ib, 1
  %.not59.i.us = icmp eq i32 %i.ic, 0             ; 2 uses
  %i.id = and i64 %indvars.iv420, 1
  %.not60.i.us = icmp eq i64 %i.id, 0
  %i.ie = select i1 %.not60.i.us, i32 1, i32 -1
  %.048.i.us = select i1 %.not59.i.us, i32 %i.al, i32 %i.ak ; 4 uses
  %i.if = select i1 %.not59.i.us, i32 %i.ie, i32 0
  %i.ig = trunc i64 %i.hz to i32
  %i.ih = add i32 %i.hw, %i.ig
  %.0.i25.us = add nsw i32 %i.ih, %i.if           ; 6 uses
  %i.ii = icmp slt i32 %.0.i25.us, 0
  br i1 %i.ii, label %.split376.us, label %bb.av

bb.av:                                            ; preds = %.split.us
  %.not61.i.us = icmp slt i32 %.0.i25.us, %i.ci
  br i1 %.not61.i.us, label %bb.aw, label %.split378.us

bb.aw:                                            ; preds = %bb.av
  switch i32 %i.hn, label %bb.ay [
    i32 4, label %bb.ax
    i32 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.ij = add nuw nsw i32 %.0.i25.us, 2           ; 2 uses
  %i.ik = icmp samesign ult i32 %.048.i.us, %i.cs
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = mul nuw nsw i32 %.048.i.us, %i.cv
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.im ; 2 uses
  %i.io = zext nneg i32 %.0.i25.us to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !151
  %i.ir = zext i16 %i.iq to i32
  %i.is = icmp samesign ult i32 %i.ij, %i.cq
  tail call void @llvm.assume(i1 %i.is)
  %i.it = zext nneg i32 %i.ij to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !151
  %i.iw = zext i16 %i.iv to i32
  %i.ix = add nuw nsw i32 %i.ir, 1
  %i.iy = add nuw nsw i32 %i.ix, %i.iw
  %i.iz = lshr i32 %i.iy, 1
  %i.ja = trunc nuw i32 %i.iz to i16
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.jb = icmp samesign ult i32 %.0.i25.us, %i.cq
  tail call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp samesign ult i32 %.048.i.us, %i.cs
  tail call void @llvm.assume(i1 %i.jc)
  %i.jd = mul nuw nsw i32 %.048.i.us, %i.cv
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.je
  %i.jg = zext nneg i32 %.0.i25.us to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !151
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink624 = phi i16 [ %i.ji, %bb.ay ], [ %i.ja, %bb.ax ]
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv420
  store i16 %.sink624, ptr %i.jj, align 2, !tbaa !151
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next421, 16
  br i1 %exitcond423.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !138

.split:                                           ; preds = %bb.au, %bb.be
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.be ], [ 0, %bb.au ] ; 5 uses
  %i.jk = or disjoint i64 %indvars.iv, %indvars.iv450
  %i.jl = trunc i64 %indvars.iv to i32
  %i.jm = add i32 %1, %i.jl
  %i.jn = and i32 %i.jm, 1
  %.not59.i = icmp eq i32 %i.jn, 0                ; 2 uses
  %i.jo = and i64 %indvars.iv, 1
  %.not60.i = icmp eq i64 %i.jo, 0
  %i.jp = select i1 %.not60.i, i32 1, i32 -1
  %.048.i = select i1 %.not59.i, i32 %i.al, i32 %i.ak ; 2 uses
  %i.jq = select i1 %.not59.i, i32 %i.jp, i32 0
  %i.jr = trunc i64 %i.jk to i32
  %i.js = add i32 %i.hw, %i.jr
  %.0.i25 = add nsw i32 %i.js, %i.jq              ; 5 uses
  %i.jt = icmp slt i32 %.0.i25, 0
  br i1 %i.jt, label %.split376.us, label %bb.ba

.split376.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.ba:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.ci
  br i1 %.not61.i, label %bb.bb, label %.split378.us

bb.bb:                                            ; preds = %bb.ba
  %i.ju = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.ju, %i.ci
  br i1 %.not63.i, label %bb.bc, label %.split378.us

.split378.us:                                     ; preds = %bb.ba, %bb.bb, %bb.av
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.jv = icmp samesign ult i32 %.0.i25, %i.cq
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ult i32 %.048.i, %i.cs
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = mul nuw nsw i32 %.048.i, %i.cv
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.jy ; 2 uses
  %i.ka = zext nneg i32 %.0.i25 to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !151 ; 2 uses
  switch i32 %i.hn, label %bb.be [
    i32 4, label %bb.bd
    i32 2, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  %i.kd = zext i16 %i.kc to i32
  %i.ke = icmp samesign ult i32 %i.ju, %i.cq
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = zext nneg i32 %i.ju to i64
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !151
  %i.ki = zext i16 %i.kh to i32
  %i.kj = add nuw nsw i32 %i.kd, 1
  %i.kk = add nuw nsw i32 %i.kj, %i.ki
  %i.kl = lshr i32 %i.kk, 1
  %i.km = trunc nuw i32 %i.kl to i16
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.sink626 = phi i16 [ %i.km, %bb.bd ], [ %i.kc, %bb.bc ]
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink626, ptr %i.kn, align 2, !tbaa !151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !138

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader320.preheader, %8
  %i.ko = phi <16 x i16> [ %10, %8 ], [ %i.ht, %.preheader320.preheader ]
  store <16 x i16> %i.ko, ptr %4, align 2, !tbaa !151
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.be, %bb.az, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !152
  %i.kp = and i8 %i.cy, 1
  %.not318 = icmp eq i8 %i.kp, 0
  br i1 %.not318, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.kq = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.kq), !noalias !152
  %i.kr = and i32 %.sroa.80203.2, 3
  %i.ks = icmp eq i32 %i.kr, 0
  tail call void @llvm.assume(i1 %i.ks), !noalias !152
  %.not.i.i111 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i111, label %bb.bg, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i110)
  %i.kt = add nuw nsw i32 %.sroa.80203.2, 4       ; 2 uses
  %.not.i.i.i114 = icmp samesign ugt i32 %i.kt, %i.r
  br i1 %.not.i.i.i114, label %bb.bi, label %bb.bh, !prof !119

bb.bh:                                            ; preds = %bb.bg
  %i.ku = zext nneg i32 %.sroa.80203.2 to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ku
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116

bb.bi:                                            ; preds = %bb.bg
  %i.kw = icmp samesign ugt i32 %.sroa.80203.2, %i.ai
  br i1 %i.kw, label %bb.bj, label %bb.bk, !prof !119

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.bk:                                            ; preds = %bb.bi
  store i32 0, ptr %.sroa.0.i.i.i110, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i120 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.2) ; 3 uses
  %i.kx = add nuw nsw i32 %.sroa.speculated27.i.i.i.i120, 4
  %.sroa.speculated.i.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.kx)
  %i.ky = sub nsw i32 %.sroa.speculated.i.i.i.i121, %.sroa.speculated27.i.i.i.i120 ; 2 uses
  %i.kz = icmp samesign ult i32 %i.ky, 5
  tail call void @llvm.assume(i1 %i.kz), !noalias !152
  %i.la = zext nneg i32 %.sroa.speculated27.i.i.i.i120 to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.la
  %i.lc = zext nneg i32 %i.ky to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i110, ptr align 1 %i.lb, i64 %i.lc, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116: ; preds = %bb.bk, %bb.bh
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i117 = phi ptr [ %.sroa.0.i.i.i110, %bb.bk ], [ %i.kv, %bb.bh ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i118 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i117, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i110)
  %i.ld = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i118 to i64
  %i.le = shl nuw i64 %i.ld, 32
  %i.lf = or i64 %i.le, %.sroa.0166.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122: ; preds = %bb.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116
  %.sroa.80203.16 = phi i32 [ %i.kt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116 ], [ %.sroa.80203.2, %bb.bf ] ; 2 uses
  %i.lg = phi i64 [ %i.lf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116 ], [ %.sroa.0166.2, %bb.bf ] ; 2 uses
  %i.lh = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i116 ], [ %.sroa.30.2, %bb.bf ]
  %i.li = add nsw i32 %i.lh, -1                   ; 2 uses
  %i.lj = shl i64 %i.lg, 1                        ; 2 uses
  %.not.i40 = icmp sgt i64 %i.lg, -1
  br i1 %.not.i40, label %bb.bl, label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.bl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %.sroa.80203.5 = phi i32 [ %.sroa.80203.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %.sroa.80203.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122 ] ; 17 uses
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.li, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122 ] ; 14 uses
  %.sroa.0166.5 = phi i64 [ %.sroa.0166.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit122 ] ; 5 uses
  %i.lk = icmp samesign ult i32 %.sroa.30.5, 65
  tail call void @llvm.assume(i1 %i.lk), !noalias !152
  %.not.i.i124 = icmp samesign ult i32 %.sroa.30.5, 2
  br i1 %.not.i.i124, label %bb.bm, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i123)
  %i.ll = add nuw nsw i32 %.sroa.80203.5, 4       ; 2 uses
  %.not.i.i.i127 = icmp samesign ugt i32 %i.ll, %i.r
  br i1 %.not.i.i.i127, label %bb.bo, label %bb.bn, !prof !119

bb.bn:                                            ; preds = %bb.bm
  %i.lm = zext nneg i32 %.sroa.80203.5 to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lm
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread

bb.bo:                                            ; preds = %bb.bm
  %i.lo = icmp samesign ugt i32 %.sroa.80203.5, %i.ai
  br i1 %i.lo, label %bb.bp, label %bb.bq, !prof !119

bb.bp:                                            ; preds = %bb.cb, %bb.bx, %bb.bt, %bb.bo
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.bq:                                            ; preds = %bb.bo
  store i32 0, ptr %.sroa.0.i.i.i123, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i133 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.5) ; 3 uses
  %i.lp = add nuw nsw i32 %.sroa.speculated27.i.i.i.i133, 4
  %.sroa.speculated.i.i.i.i134 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.lp)
  %i.lq = sub nsw i32 %.sroa.speculated.i.i.i.i134, %.sroa.speculated27.i.i.i.i133 ; 2 uses
  %i.lr = icmp samesign ult i32 %i.lq, 5
  tail call void @llvm.assume(i1 %i.lr), !noalias !152
  %i.ls = zext nneg i32 %.sroa.speculated27.i.i.i.i133 to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ls
  %i.lu = zext nneg i32 %i.lq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i123, ptr align 1 %i.lt, i64 %i.lu, i1 false), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread: ; preds = %bb.bn, %bb.bq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i130 = phi ptr [ %.sroa.0.i.i.i123, %bb.bq ], [ %i.ln, %bb.bn ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i131 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i130, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i123)
  %i.lv = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i131 to i64
  %i.lw = sub nuw nsw i32 32, %.sroa.30.5
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl nuw i64 %i.lv, %i.lx
  %i.lz = or i64 %i.ly, %.sroa.0166.5             ; 2 uses
  %i.ma = lshr i64 %i.lz, 62
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %.sroa.30.5, 30
  %i.md = shl i64 %i.lz, 2
  %i.me = icmp ult i32 %.sroa.30.5, 35
  tail call void @llvm.assume(i1 %i.me), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135: ; preds = %bb.bl
  %i.mf = lshr i64 %.sroa.0166.5, 62
  %i.mg = trunc nuw nsw i64 %i.mf to i32          ; 4 uses
  %i.mh = add nsw i32 %.sroa.30.5, -2
  %i.mi = shl i64 %.sroa.0166.5, 2                ; 2 uses
  %.not.i.i124.1 = icmp samesign ult i32 %.sroa.30.5, 4
  br i1 %.not.i.i124.1, label %bb.br, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.1

bb.br:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i123)
  %i.mj = add nuw nsw i32 %.sroa.80203.5, 4       ; 2 uses
  %.not.i.i.i127.1 = icmp samesign ugt i32 %i.mj, %i.r
  br i1 %.not.i.i.i127.1, label %bb.bt, label %bb.bs, !prof !119

bb.bs:                                            ; preds = %bb.br
  %i.mk = zext nneg i32 %.sroa.80203.5 to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1

bb.bt:                                            ; preds = %bb.br
  %i.mm = icmp samesign ugt i32 %.sroa.80203.5, %i.ai
  br i1 %i.mm, label %bb.bp, label %bb.bu, !prof !119

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %.sroa.0.i.i.i123, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i133.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80203.5) ; 3 uses
  %i.mn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i133.1, 4
  %.sroa.speculated.i.i.i.i134.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.mn)
  %i.mo = sub nsw i32 %.sroa.speculated.i.i.i.i134.1, %.sroa.speculated27.i.i.i.i133.1 ; 2 uses
  %i.mp = icmp samesign ult i32 %i.mo, 5
  tail call void @llvm.assume(i1 %i.mp), !noalias !152
  %i.mq = zext nneg i32 %.sroa.speculated27.i.i.i.i133.1 to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mq
  %i.ms = zext nneg i32 %i.mo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i123, ptr align 1 %i.mr, i64 %i.ms, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1: ; preds = %bb.bu, %bb.bs
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i130.1 = phi ptr [ %.sroa.0.i.i.i123, %bb.bu ], [ %i.ml, %bb.bs ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i131.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i130.1, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i123)
  %i.mt = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i131.1 to i64
  %i.mu = or disjoint i32 %i.mh, 32
  %i.mv = sub nuw nsw i32 34, %.sroa.30.5
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 %i.mt, %i.mw
  %i.my = or i64 %i.mx, %i.mi
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread
  %.ph = phi i32 [ %i.mb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread ], [ %i.mg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1 ]
  %.sroa.80203.17.1.ph = phi i32 [ %i.ll, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread ], [ %i.mj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1 ]
  %.ph575.a = phi i64 [ %i.md, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread ], [ %i.my, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1 ] ; 2 uses
  %.ph576.a = phi i32 [ %i.mc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.thread ], [ %i.mu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i129.1 ] ; 2 uses
  %i.mz = lshr i64 %.ph575.a, 62
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = add nsw i32 %.ph576.a, -2
  %i.nc = shl i64 %.ph575.a, 2
  %i.nd = icmp samesign ult i32 %.ph576.a, 67
  tail call void @llvm.assume(i1 %i.nd), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135
  %i.ne = lshr i64 %i.mi, 62
  %i.nf = trunc nuw nsw i64 %i.ne to i32          ; 3 uses
  %i.ng = add nsw i32 %.sroa.30.5, -4
  %i.nh = shl i64 %.sroa.0166.5, 4                ; 3 uses
  %.not.i.i124.2 = icmp samesign ult i32 %.sroa.30.5, 6
  br i1 %.not.i.i124.2, label %bb.bv, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.2

bb.bv:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit135.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i123)
end_hunk_0
