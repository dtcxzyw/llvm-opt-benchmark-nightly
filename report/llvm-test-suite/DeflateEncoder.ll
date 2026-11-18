Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/DeflateEncoder?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib:bb.a
  %i.ie = zext i8 %i.id to i32
  %i.if = sub nsw i32 9, %i.ie
  %i.ig = shl nuw nsw i32 1, %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !12
  %indvars.iv.next41.1 = or disjoint i64 %indvars.iv40, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41.1
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !92
  %i.ik = zext i8 %i.ij to i32
  %i.il = sub nsw i32 9, %i.ik
  %i.im = shl nuw nsw i32 1, %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41.1
  store i32 %i.im, ptr %i.in, align 8, !tbaa !12
  %indvars.iv.next41.2 = or disjoint i64 %indvars.iv40, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41.2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !92
  %i.iq = zext i8 %i.ip to i32
  %i.ir = sub nsw i32 9, %i.iq
  %i.is = shl nuw nsw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41.2
  store i32 %i.is, ptr %i.it, align 4, !tbaa !12
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next41.3, 288
  br i1 %exitcond.not.3, label %.preheader, label %bb.e, !llvm.loop !214

bb.f:                                             ; preds = %bb.c
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !70
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.iy = load i8, ptr %i.ix, align 4, !tbaa !126, !range !84, !noundef !85
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ja = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %.tr25.lcssa, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 2, i32 noundef 2)
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !122
  %i.jd = add i32 %i.jc, -257
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jd, i32 noundef 5)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !123
  %i.jg = add i32 %i.jf, -1
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jg, i32 noundef 5)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !124
  %i.jj = add i32 %i.ji, -4
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jj, i32 noundef 4)
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !124
  %.not = icmp eq i32 %i.jk, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1338
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4892 ; 3 uses
  %wide.load = load <4 x i32>, ptr %i.jm, align 8, !tbaa !12
  %i.jo = trunc <4 x i32> %wide.load to <4 x i16>
  %i.jp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.jo)
  %i.jq = zext <4 x i16> %i.jp to <4 x i32>
  %wide.load53 = load <4 x i8>, ptr %i.jn, align 4, !tbaa !92
  %i.jr = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.js = sub nsw <4 x i32> splat (i32 16), %i.jr
  %i.jt = lshr <4 x i32> %i.jq, %i.js
  store <4 x i32> %i.jt, ptr %i.jm, align 8, !tbaa !12
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.ju, align 8, !tbaa !12
  %i.jv = trunc <4 x i32> %wide.load.1 to <4 x i16>
  %i.jw = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.jv)
  %i.jx = zext <4 x i16> %i.jw to <4 x i32>
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4896
  %wide.load53.1 = load <4 x i8>, ptr %i.jy, align 8, !tbaa !92
  %i.jz = zext <4 x i8> %wide.load53.1 to <4 x i32>
  %i.ka = sub nsw <4 x i32> splat (i32 16), %i.jz
  %i.kb = lshr <4 x i32> %i.jx, %i.ka
  store <4 x i32> %i.kb, ptr %i.ju, align 8, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.kc, align 8, !tbaa !12
  %i.kd = trunc <4 x i32> %wide.load.2 to <4 x i16>
  %i.ke = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kd)
  %i.kf = zext <4 x i16> %i.ke to <4 x i32>
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4900
  %wide.load53.2 = load <4 x i8>, ptr %i.kg, align 4, !tbaa !92
  %i.kh = zext <4 x i8> %wide.load53.2 to <4 x i32>
  %i.ki = sub nsw <4 x i32> splat (i32 16), %i.kh
  %i.kj = lshr <4 x i32> %i.kf, %i.ki
  store <4 x i32> %i.kj, ptr %i.kc, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4864 ; 2 uses
  %wide.load.3 = load <4 x i32>, ptr %i.kk, align 8, !tbaa !12
  %i.kl = trunc <4 x i32> %wide.load.3 to <4 x i16>
  %i.km = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kl)
  %i.kn = zext <4 x i16> %i.km to <4 x i32>
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %wide.load53.3 = load <4 x i8>, ptr %i.ko, align 8, !tbaa !92
  %i.kp = zext <4 x i8> %wide.load53.3 to <4 x i32>
  %i.kq = sub nsw <4 x i32> splat (i32 16), %i.kp
  %i.kr = lshr <4 x i32> %i.kn, %i.kq
  store <4 x i32> %i.kr, ptr %i.kk, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4880 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !12
  %trunc.i = trunc i32 %i.kt to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.ku = zext i16 %rev.i to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 4908
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !92
  %i.kx = zext i8 %i.kw to i32
  %i.ky = sub nsw i32 16, %i.kx
  %i.kz = lshr i32 %i.ku, %i.ky
  store i32 %i.kz, ptr %i.ks, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 4884 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !12
  %trunc.i.1 = trunc i32 %i.lb to i16
  %rev.i.1 = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.1)
  %i.lc = zext i16 %rev.i.1 to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4909
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !92
  %i.lf = zext i8 %i.le to i32
  %i.lg = sub nsw i32 16, %i.lf
  %i.lh = lshr i32 %i.lc, %i.lg
  store i32 %i.lh, ptr %i.la, align 4, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4888 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !12
  %trunc.i.2 = trunc i32 %i.lj to i16
  %rev.i.2 = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.2)
  %i.lk = zext i16 %rev.i.2 to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4910
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !92
  %i.ln = zext i8 %i.lm to i32
  %i.lo = sub nsw i32 16, %i.ln
  %i.lp = lshr i32 %i.lk, %i.lo
  store i32 %i.lp, ptr %i.li, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.lr = load i32, ptr %i.jb, align 8, !tbaa !122
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull %i.lq, i32 noundef %i.lr, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jm)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.lt = load i32, ptr %i.je, align 4, !tbaa !123
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull %i.ls, i32 noundef %i.lt, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jm)
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph33, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jl, i64 %indvars.iv
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !92
  %i.lw = zext i8 %i.lv to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.lw, i32 noundef 3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lx = load i32, ptr %i.jh, align 8, !tbaa !124
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next, %i.ly
  br i1 %i.lz, label %bb.j, label %._crit_edge, !llvm.loop !215

bb.k:                                             ; preds = %._crit_edge, %.preheader
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ma = getelementptr inbounds nuw i8, ptr %.lcssa, i64 324
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !119
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !102
  %i.me = sub i32 %i.md, %i.mb
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 !guid !217 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %2, align 8, !tbaa !218
  %spec.select5 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 2147483648)
  %spec.select = trunc nuw i64 %spec.select5 to i32 ; 2 uses
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1, i32 noundef %spec.select, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !12
  %i.j = zext i32 %i.i to i64
  store i64 %i.j, ptr %2, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1300, 1302)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !221 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %"class.NCompress::NDeflate::NEncoder::CCoder::CCoderReleaser", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69
  %.not = icmp ne i32 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ne i32 %i.f, 1
  %i.h = select i1 %.not, i1 true, i1 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.j = zext i1 %i.h to i8                       ; 2 uses
  store i8 %i.j, ptr %i.i, align 4, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1301
  store i8 %i.j, ptr %i.k, align 1, !tbaa !83
  %i.l = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv(ptr noundef nonnull align 8 dereferenceable(39764) %0) ; 2 uses
  %.not28.not = icmp eq i32 %i.l, 0
  br i1 %.not28.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.e, align 8, !tbaa !70
  %i.n = shl nsw i32 %i.m, 12
  %i.o = add nsw i32 %i.n, 7168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 %i.o, ptr %i.p, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !222
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !219 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !79   ; 3 uses
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !219 ; 0 uses
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.d, %bb.e
  store ptr %1, ptr %i.r, align 8, !tbaa !79
  store ptr @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm, ptr %i.q, align 8, !tbaa !223
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.q, ptr %i.ab, align 8, !tbaa !224
  tail call void @MatchFinder_Init(ptr noundef nonnull %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 6 uses
  tail call void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(61) %i.ac, ptr noundef %2)
  tail call void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 4 uses
  store i32 8, ptr %i.ad, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 3 uses
  store i8 0, ptr %i.ae, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %0, ptr %6, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 0, ptr %i.af, align 4, !tbaa !107
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 0, ptr %i.ag, align 8, !tbaa !103
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 332
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 660
  store i32 0, ptr %i.ak, align 4, !tbaa !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(332) %i.aj, i8 8, i64 256, i1 false), !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 588
  store i8 13, ptr %i.al, align 4, !tbaa !92
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 589
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %scevgep.i, i8 5, i64 63, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 0, ptr %i.am, align 4, !tbaa !102
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 656 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not29 = icmp eq ptr %5, null
  br i1 %.not29, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.g
  %i.ar = phi i64 [ %i.bb, %bb.g ], [ 0, %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit ] ; 2 uses
  store i32 60923, ptr %i.an, align 4, !tbaa !119
  store i8 0, ptr %i.ao, align 8, !tbaa !95
  %i.as = load i32, ptr %i.e, align 8, !tbaa !70
  %i.at = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef %i.as)
          to label %bb.f unwind label %.loopexit.split.us ; 0 uses

bb.f:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !99
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !100
  %i.aw = icmp eq i32 %i.au, %i.av
  invoke void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i1 noundef zeroext %i.aw)
          to label %bb.g unwind label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 656
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = zext i32 %i.az to i64
  %i.bb = add i64 %i.ar, %i.ba                    ; 2 uses
  %i.bc = load i32, ptr %i.ap, align 8, !tbaa !99
  %i.bd = load i32, ptr %i.aq, align 8, !tbaa !100
  %.not32.us = icmp eq i32 %i.bc, %i.bd
  br i1 %.not32.us, label %.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us, !llvm.loop !220

.loopexit.split.us:                               ; preds = %bb.f, %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ar, ptr %i.a, align 8
  br label %.loopexit.split

.split.us:                                        ; preds = %bb.g
  store i64 %i.bb, ptr %i.a, align 8
  br label %.split.us.a

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.m
  store i32 60923, ptr %i.an, align 4, !tbaa !119
  store i8 0, ptr %i.ao, align 8, !tbaa !95
  %i.be = load i32, ptr %i.e, align 8, !tbaa !70
  %i.bf = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef %i.be)
          to label %bb.h unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !99
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !100
  %i.bi = icmp eq i32 %i.bg, %i.bh
  invoke void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i1 noundef zeroext %i.bi)
          to label %bb.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 656
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !119
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !222
  %i.bo = add i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bp = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.ad, align 8, !tbaa !108
  %i.br = sub i32 15, %i.bq
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !222
  %i.bv = load ptr, ptr %5, align 8, !tbaa !81
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not31 = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not31, label %bb.m, label %_ZN12CBitlEncoder5FlushEv.exit

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split, %bb.h, %bb.p, %_ZN12CBitlEncoder9FlushByteEv.exit.i
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.loopexit.split

bb.m:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.ap, align 8, !tbaa !99
  %i.cb = load i32, ptr %i.aq, align 8, !tbaa !100
  %.not32 = icmp eq i32 %i.ca, %i.cb
  br i1 %.not32, label %.split.us.a, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split, !llvm.loop !220

.split.us.a:                                      ; preds = %bb.m, %.split.us
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !225 ; 2 uses
  %.not33 = icmp eq i32 %i.cd, 0
  br i1 %.not33, label %bb.n, label %_ZN12CBitlEncoder5FlushEv.exit

bb.n:                                             ; preds = %.split.us.a
  %i.ce = load i32, ptr %i.ad, align 8, !tbaa !108
  %i.cf = icmp ult i32 %i.ce, 8
  br i1 %i.cf, label %bb.o, label %_ZN12CBitlEncoder9FlushByteEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cg = load i8, ptr %i.ae, align 4, !tbaa !109
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !51 ; 2 uses
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !51
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cl
  store i8 %i.cg, ptr %i.cm, align 1, !tbaa !92
  %i.cn = load i32, ptr %i.ci, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !110
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.p, label %_ZN12CBitlEncoder9FlushByteEv.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %_ZN12CBitlEncoder9FlushByteEv.exit.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12CBitlEncoder9FlushByteEv.exit.i:             ; preds = %bb.p, %bb.o, %bb.n
  store i32 8, ptr %i.ad, align 8, !tbaa !108
  store i8 0, ptr %i.ae, align 4, !tbaa !109
  %i.cr = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %_ZN12CBitlEncoder5FlushEv.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12CBitlEncoder5FlushEv.exit:                   ; preds = %bb.k, %_ZN12CBitlEncoder9FlushByteEv.exit.i, %.split.us.a
  %.4 = phi i32 [ %i.cr, %_ZN12CBitlEncoder9FlushByteEv.exit.i ], [ %i.cd, %.split.us.a ], [ %i.by, %bb.k ]
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !79  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN12CBitlEncoder5FlushEv.exit
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %.noexc.i unwind label %bb.s, !inline_history !4 ; 0 uses

.noexc.i:                                         ; preds = %bb.q
  store ptr null, ptr %i.r, align 8, !tbaa !79
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i: ; preds = %.noexc.i, %_ZN12CBitlEncoder5FlushEv.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i32 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %.noexc1.i unwind label %bb.s, !inline_history !4 ; 0 uses

.noexc1.i:                                        ; preds = %bb.r
  store ptr null, ptr %i.cx, align 8, !tbaa !52
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #22
  unreachable

_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.t

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split.us, %bb.l
  %.pn34 = phi { ptr, i32 } [ %i.bz, %bb.l ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp58, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn34

bb.t:                                             ; preds = %bb.a, %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit
  %.5 = phi i32 [ %.4, %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit ], [ %i.l, %bb.a ]
  ret i32 %.5
}

declare void @MatchFinder_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !226 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1240 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d, !inline_history !4 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !79
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d, !inline_history !4 ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !52
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit: ; preds = %.noexc1, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1300, 1302)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !227 {
bb.a:
  %i.a = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr poison, ptr noundef %5)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #23
  br i1 %i.f, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !133
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ %i.h, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39788) initializes((1324, 1326)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !228 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %i.a, ptr noundef %1, ptr noundef %2, ptr readnone poison, ptr readnone poison, ptr noundef %5)
          to label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  %i.f = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.g = icmp eq i32 %i.e, %i.f
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.d) #23
  br i1 %i.g, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !133
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.0.ph.i = phi i32 [ %i.i, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit: ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ %i.b, %bb.a ], [ %.0.ph.i, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(39788) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 !guid !229 {
bb.a:
  %.not44.i = icmp eq i32 %3, 0
  br i1 %.not44.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39784
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.f = load i32, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1316 ; 3 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  switch i32 %i.k, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit [
    i32 11, label %bb.c
    i32 8, label %bb.i
    i32 10, label %bb.k
    i32 12, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.i, align 8, !tbaa !91
  %.not26.i = icmp eq i16 %i.l, 19
  br i1 %.not26.i, label %bb.d, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 3 uses
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !70
  %i.o = icmp ult i32 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 4, !tbaa !69
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.p = icmp slt i32 %spec.select.i, 11
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.h, align 4, !tbaa !69
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = add nsw i32 %spec.select.i, -8
  store i32 %i.q, ptr %i.h, align 4, !tbaa !69
  store i32 10, ptr %i.g, align 8, !tbaa !70
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.i, align 8, !tbaa !91
  %.not25.i = icmp eq i16 %i.r, 19
  br i1 %.not25.i, label %bb.j, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92   ; 3 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !66
  %i.u = icmp ult i32 %i.t, 3
  %i.v = icmp ugt i32 %i.t, %i.f
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit, label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.w = load i16, ptr %i.i, align 8, !tbaa !91
end_hunk_0
