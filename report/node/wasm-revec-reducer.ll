Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-revec-reducer?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1948
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE:bb.a
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, ptr noundef %i.j, i32 noundef %i.k, i32 noundef %i.m) #21
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ult i64 %i.y, 56
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft15ShufflePackNodeEJRPS1_RKNS4_9NodeGroupERNS5_12SpecificInfo4KindEEEEPT_DpOT0_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef 56) #21
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft15ShufflePackNodeEJRPS1_RKNS4_9NodeGroupERNS5_12SpecificInfo4KindEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft15ShufflePackNodeEJRPS1_RKNS4_9NodeGroupERNS5_12SpecificInfo4KindEEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 10 uses
  %i.ac = add i64 %i.aa, 56
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = load ptr, ptr %i.s, align 8
  %i.ae = load i64, ptr %1, align 4
  store i64 %i.ae, ptr %i.ab, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 -1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  store i8 2, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  store i32 0, ptr %i.ak, align 4
  store i32 %2, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.am = load i32, ptr %1, align 4
  store i32 %i.am, ptr %4, align 4
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_PNS4_8PackNodeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %4)
  store ptr %i.ab, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ao = load i32, ptr %.0.ptr.1, align 4
  store i32 %i.ao, ptr %4, align 4
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_PNS4_8PackNodeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %4)
  store ptr %i.ab, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree26Try256ShuffleMatchLoad8x8UERKNS2_9NodeGroupEPKhS8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 16 uses
  %i.b = alloca [16 x i8], align 16               ; 16 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.e, align 4
  %i.f = load ptr, ptr %0, align 8, !nonnull !13, !align !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = zext i32 %.sroa.0.0.copyload.i to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = zext i32 %.sroa.0.0.copyload.i67 to i64
  %i.n = add i64 %i.i, %i.m
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i8, ptr %i.p, align 4
  %.not = icmp eq i8 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.s = load i8, ptr %i.r, align 4
  %.not59 = icmp eq i8 %i.s, 3
  %or.cond64 = select i1 %.not, i1 %.not59, i1 false
  br i1 %or.cond64, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 3 uses
  %.sroa.0.0.copyload.i.i68 = load i32, ptr %i.u, align 4
  %i.v = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i68
  br i1 %i.v, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i69 = load i32, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 3 uses
  %.sroa.0.0.copyload.i.i70 = load i32, ptr %i.x, align 4
  %i.y = icmp eq i32 %.sroa.0.0.copyload.i.i69, %.sroa.0.0.copyload.i.i70
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.z = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %i.c, align 1, !range !12, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %. = select i1 %i.ac, ptr %i.u, ptr %i.t
  %.97 = select i1 %i.ac, ptr %i.t, ptr %i.u
  %.sroa.023.0 = load i32, ptr %.97, align 4
  %storemerge88 = load i32, ptr %., align 4       ; 2 uses
  call void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ad = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i8, ptr %i.c, align 1, !range !12, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  %.98 = select i1 %i.ag, ptr %i.x, ptr %i.w
  %.99 = select i1 %i.ag, ptr %i.w, ptr %i.x
  %.sroa.021.0 = load i32, ptr %.99, align 4
  %.sroa.022.092 = load i32, ptr %.98, align 4
  %.not94 = icmp eq i32 %storemerge88, %.sroa.022.092
  br i1 %.not94, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %0, align 8, !nonnull !13, !align !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.al = zext i32 %storemerge88 to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4
  %.not96 = icmp eq i8 %i.ao, 46
  br i1 %.not96, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ap = zext i32 %.sroa.023.0 to i64
  %i.aq = add i64 %i.ak, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = icmp eq i8 %i.as, 35
  %i.au = zext i32 %.sroa.021.0 to i64
  %i.av = add i64 %i.ak, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 35
  %or.cond = and i1 %i.at, %i.ay
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ba = load i128, ptr %i.az, align 1
  %i.bb = icmp ne i128 0, %i.ba
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bf = load i128, ptr %i.be, align 1
  %i.bg = icmp ne i128 0, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp ne i8 %i.bk, 11
  %i.bm = load i8, ptr %i.a, align 16
  %.not61 = icmp ne i8 %i.bm, 0
  %i.bn = load i8, ptr %i.b, align 16
  %.not62 = icmp ne i8 %i.bn, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp ult i8 %i.bp, 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bt = load <2 x i8>, ptr %i.br, align 2
  %i.bu = load <2 x i8>, ptr %i.bs, align 1
  %i.bv = shufflevector <2 x i8> %i.bt, <2 x i8> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i8> %i.bv
  %i.bw = icmp ult <4 x i8> %.fr, splat (i8 16)
  %i.bx = bitcast <4 x i1> %i.bw to i4
  %i.by = icmp ne i4 %i.bx, 0
  %i.bz = select i1 %i.by, i1 true, i1 %i.bl
  %op.rdx246.a = select i1 %i.bz, i1 true, i1 %.not61
  %op.rdx246 = select i1 %op.rdx246.a, i1 true, i1 %.not62
  %op.rdx247 = select i1 %op.rdx246, i1 true, i1 %i.bq
  br i1 %op.rdx247, label %.loopexit, label %bb.l

.critedge66:                                      ; preds = %bb.l
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp ult i8 %i.cd, 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cg = load i8, ptr %i.cf, align 4
  %.not61.1 = icmp ne i8 %i.cg, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ci = load i8, ptr %i.ch, align 4
  %.not62.1 = icmp ne i8 %i.ci, 5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp ult i8 %i.ck, 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.co = load <2 x i8>, ptr %i.cm, align 2
  %i.cp = load <2 x i8>, ptr %i.cn, align 1
  %i.cq = shufflevector <2 x i8> %i.co, <2 x i8> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr250.a = freeze <4 x i8> %i.cq
  %i.cr = icmp ult <4 x i8> %.fr250.a, splat (i8 16)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = icmp ult i8 %i.ct, 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = load i8, ptr %i.cv, align 8
  %.not61.2 = icmp ne i8 %i.cw, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cy = load i8, ptr %i.cx, align 8
  %.not62.2 = icmp ne i8 %i.cy, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp ult i8 %i.da, 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.de = load <2 x i8>, ptr %i.dc, align 2
  %i.df = load <2 x i8>, ptr %i.dd, align 1
  %i.dg = shufflevector <2 x i8> %i.de, <2 x i8> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr251 = freeze <4 x i8> %i.dg
  %i.dh = icmp ult <4 x i8> %.fr251, splat (i8 16)
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = icmp ult i8 %i.dj, 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dm = load i8, ptr %i.dl, align 4
  %.not61.3 = icmp ne i8 %i.dm, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.do = load i8, ptr %i.dn, align 4
  %.not62.3 = icmp ne i8 %i.do, 7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp ult i8 %i.dq, 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.du = load <2 x i8>, ptr %i.ds, align 2
  %i.dv = load <2 x i8>, ptr %i.dt, align 1
  %i.dw = shufflevector <2 x i8> %i.du, <2 x i8> %i.dv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr252 = freeze <4 x i8> %i.dw
  %i.dx = icmp ult <4 x i8> %.fr252, splat (i8 16)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp ult i8 %i.dz, 16
  %rdx.op = or <4 x i1> %i.cr, %i.dh
  %rdx.op231 = or <4 x i1> %rdx.op, %i.dx
  %i.eb = bitcast <4 x i1> %rdx.op231 to i4
  %i.ec = icmp ne i4 %i.eb, 0
  %op.rdx = select i1 %i.ec, i1 true, i1 %i.ce
  %4 = select i1 %op.rdx, i1 true, i1 %.not61.1
  %op.rdx238 = select i1 %4, i1 true, i1 %.not62.1
  %op.rdx238.a = select i1 %op.rdx238, i1 true, i1 %i.cl
  %5 = select i1 %op.rdx238.a, i1 true, i1 %i.cu
  %6 = select i1 %5, i1 true, i1 %.not61.2
  %op.rdx241 = select i1 %6, i1 true, i1 %.not62.2
  %7 = select i1 %op.rdx241, i1 true, i1 %i.db
  %8 = select i1 %7, i1 true, i1 %i.dk
  %9 = select i1 %8, i1 true, i1 %.not61.3
  %10 = select i1 %9, i1 true, i1 %.not62.3
  %11 = select i1 %10, i1 true, i1 %i.dr
  %op.rdx243 = select i1 %11, i1 true, i1 %i.ea
  br i1 %op.rdx243, label %.loopexit, label %.critedge66

bb.m:                                             ; preds = %.critedge66
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree26Try256ShuffleMatchLoad8x8UERKNS2_9NodeGroupEPKhS8_, i32 noundef 599) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.12) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge66
  %i.ed = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.e, %bb.g, %bb.k, %bb.h, %bb.i, %bb.j, %bb.n, %bb.f, %bb.d
  %.5 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ %i.ed, %bb.n ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a, %.loopexit
  %.6 = phi ptr [ %.5, %.loopexit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm11SimdShuffle19CanonicalizeShuffleILi16ELi16EEEvbPhPbS5_QaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i8 0, ptr %2, align 1
  br i1 %0, label %.preheader.preheader.sink.split, label %.preheader35.preheader

.preheader35.preheader:                           ; preds = %bb.a
  %i.a = load <16 x i8>, ptr %1, align 1
  %.fr = freeze <16 x i8> %i.a
  %i.b = icmp ult <16 x i8> %.fr, splat (i8 16)   ; 2 uses
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %.preheader.preheader.sink.split, label %bb.b

bb.b:                                             ; preds = %.preheader35.preheader
  %i.e = bitcast <16 x i1> %i.b to i16
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1
  br label %.preheader.preheader.sink.split

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1
  %i.f = load i8, ptr %1, align 1
  %i.g = icmp ugt i8 %i.f, 15
  br i1 %i.g, label %.loopexit34, label %.loopexit

.loopexit34:                                      ; preds = %bb.d
  store i8 1, ptr %2, align 1
  %i.h = load <16 x i8>, ptr %1, align 1
  %i.i = xor <16 x i8> %i.h, splat (i8 16)
  store <16 x i8> %i.i, ptr %1, align 1
  %.pre = load i8, ptr %3, align 1, !range !12
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader.sink.split:                  ; preds = %.preheader35.preheader, %bb.a, %bb.c
  store i8 1, ptr %3, align 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.sink.split, %.loopexit34
  %i.k = load <16 x i8>, ptr %1, align 1
  %i.l = and <16 x i8> %i.k, splat (i8 15)
  store <16 x i8> %i.l, ptr %1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader.preheader, %.loopexit34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21X64TryMatch256ShuffleERKNS2_9NodeGroupEPKhS8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca [8 x i8], align 1                 ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [8 x i8], align 1                 ; 6 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i86 = load i32, ptr %i.g, align 4
  %i.h = load ptr, ptr %0, align 8, !nonnull !13, !align !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = zext i32 %.sroa.0.0.copyload.i to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = zext i32 %.sroa.0.0.copyload.i86 to i64
  %i.p = add i64 %i.k, %i.o
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load i8, ptr %i.r, align 4
  %.not = icmp eq i8 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i8, ptr %i.t, align 4
  %.not83 = icmp eq i8 %i.u, 3
  %or.cond = select i1 %.not, i1 %.not83, i1 false
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.sroa.0.0.copyload.i.i87 = load i32, ptr %i.w, align 4
  %i.x = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i87
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i88 = load i32, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.0.0.copyload.i.i89 = load i32, ptr %i.z, align 4
  %i.aa = icmp eq i32 %.sroa.0.0.copyload.i.i88, %.sroa.0.0.copyload.i.i89 ; 2 uses
  br i1 %i.x, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  br i1 %i.aa, label %.preheader.preheader, label %.critedge6

.preheader.preheader:                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load <16 x i8>, ptr %2, align 1
  %i.ad = and <16 x i8> %i.ac, splat (i8 15)
  store <16 x i8> %i.ad, ptr %i.a, align 16
  %i.ae = load <16 x i8>, ptr %3, align 1
  %i.af = and <16 x i8> %i.ae, splat (i8 15)
  %i.ag = or disjoint <16 x i8> %i.af, splat (i8 16)
  store <16 x i8> %i.ag, ptr %i.ab, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ah = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x8ShuffleEPKhPh(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  br i1 %i.ah, label %bb.d, label %.thread

.thread:                                          ; preds = %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge6

bb.d:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ai = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle15TryMatchVpshufdEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #21
  br i1 %i.ai, label %bb.e, label %.thread99

.thread99:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge6

bb.e:                                             ; preds = %bb.d
  %i.aj = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree18NewShufflePackNodeERKNS2_9NodeGroupENS2_15ShufflePackNode12SpecificInfo4KindE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 3) ; 2 uses
  %i.ak = load i8, ptr %i.c, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  store i8 %i.ak, ptr %i.al, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge6

.critedge:                                        ; preds = %bb.b
  br i1 %i.aa, label %.critedge6, label %vector.body

vector.body:                                      ; preds = %.critedge
  %wide.load = load <16 x i8>, ptr %2, align 1    ; 3 uses
  %i.am = icmp ult <16 x i8> %wide.load, splat (i8 16)
  %i.an = add <16 x i8> %wide.load, splat (i8 16)
  %i.ao = select <16 x i1> %i.am, <16 x i8> %wide.load, <16 x i8> %i.an
  store <16 x i8> %i.ao, ptr %i.a, align 16
  %wide.load124 = load <16 x i8>, ptr %3, align 1 ; 3 uses
  %i.ap = icmp ult <16 x i8> %wide.load124, splat (i8 16)
  %i.aq = or disjoint <16 x i8> %wide.load124, splat (i8 16)
  %i.ar = add <16 x i8> %wide.load124, splat (i8 32)
  %i.as = select <16 x i1> %i.ap, <16 x i8> %i.aq, <16 x i8> %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %i.as, ptr %i.at, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.au = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatchArchShuffleILi32EEEbPKhbPPKNS1_12ShuffleEntryIXT_ENSt9enable_ifIXooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEEvE4typeEEEQooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEE(ptr noundef nonnull %i.a, i1 noundef zeroext false, ptr noundef nonnull %i.d)
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %vector.body
  %i.av = load ptr, ptr %i.d, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 4
  switch i32 %i.ax, label %bb.g [
    i32 458, label %.thread102
    i32 463, label %.split
  ]

.split:                                           ; preds = %bb.f
  br label %.thread102

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #23
  unreachable

bb.h:                                             ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.ay = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x8ShuffleEPKhPh(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #21
  br i1 %i.ay, label %bb.i, label %.thread105
end_hunk_0
