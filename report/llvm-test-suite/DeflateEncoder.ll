inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv:bb.a

bb.b:                                             ; preds = %bb.s, %bb.a
  %i.s = phi i32 [ %i.db, %bb.s ], [ 0, %bb.a ]
  %i.t = phi i32 [ %i.de, %bb.s ], [ 0, %bb.a ]   ; 2 uses
  %i.u = load i32, ptr %i.i, align 4, !tbaa !82
  %i.v = load i32, ptr %i.j, align 8, !tbaa !77
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.g, align 8, !tbaa !65
  %i.y = icmp ult i32 %i.x, 653286
  %.not = icmp ult i32 %i.t, %i.f
  %or.cond = select i1 %i.y, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.k, align 8, !tbaa !66, !range !51, !noundef !52
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !72
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !73
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !108
  %.not13 = icmp ult i32 %i.s, %i.ae
  br i1 %.not13, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.af = load i8, ptr %i.n, align 4, !tbaa !33, !range !51, !noundef !52
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !55  ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !67 ; 2 uses
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread, label %bb.i

_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread: ; preds = %bb.h
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.al = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !106
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.an
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i16 %i.ai to i64
  %i.aq = getelementptr [2 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !67
  %i.at = zext i16 %i.as to i32                   ; 3 uses
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !67
  %i.av = zext i16 %i.au to i32
  store i32 %i.av, ptr %i.a, align 4, !tbaa !4
  %i.aw = add nsw i32 %i.at, -1                   ; 4 uses
  %i.ax = load i8, ptr %i.k, align 8, !tbaa !66, !range !51, !noundef !52
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq i32 %i.aw, 0
  %or.cond.not.i.i = or i1 %i.az, %i.ay
  br i1 %or.cond.not.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.p, align 1, !tbaa !34, !range !51, !noundef !52
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @Bt3Zip_MatchFinder_Skip(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.aw)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @Hc3Zip_MatchFinder_Skip(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.aw)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load i32, ptr %i.q, align 4, !tbaa !76
  %i.bd = add i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.q, align 4, !tbaa !76
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit

bb.n:                                             ; preds = %bb.g
  %i.be = call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit: ; preds = %bb.m, %bb.i, %bb.n
  %.0 = phi i32 [ %i.be, %bb.n ], [ %i.at, %bb.m ], [ %i.at, %bb.i ] ; 4 uses
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.bh = add i32 %i.bg, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.d, align 4, !tbaa !106
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi ; 3 uses
  %i.bk = icmp ugt i32 %.0, 2
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
  %i.bl = add i32 %.0, -3                         ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bj, align 2, !tbaa !109
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1028 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !4   ; 4 uses
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !111
  %i.by = icmp ult i32 %i.bv, 512
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = zext i8 %i.cb to i64
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

bb.q:                                             ; preds = %bb.o
  %i.cd = lshr i32 %i.bv, 8
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %i.ch = zext i8 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 16
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit: ; preds = %bb.p, %bb.q
  %.0.i14 = phi i64 [ %i.cc, %bb.p ], [ %i.ci, %bb.q ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i14 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !4
  %.pre = load i32, ptr %i.q, align 4, !tbaa !76
  br label %bb.s

bb.r:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
  %i.cm = phi i32 [ %i.am, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %i.bh, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ]
  %i.cn = phi ptr [ %i.ao, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %i.bj, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ] ; 2 uses
  %.017 = phi i32 [ 1, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread ], [ %.0, %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit ]
  %i.co = load ptr, ptr %0, align 8, !tbaa !74
  %i.cp = load i32, ptr %i.q, align 4, !tbaa !76  ; 2 uses
  %i.cq = sub i32 0, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !62  ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !4
  store i16 -32768, ptr %i.cn, align 2, !tbaa !109
  %i.cy = zext i8 %i.ct to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !111
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
  %i.da = phi i32 [ %i.cp, %bb.r ], [ %.pre, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit ]
  %i.db = phi i32 [ %i.cm, %bb.r ], [ %i.bh, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit ]
  %.016 = phi i32 [ %.017, %bb.r ], [ %.0, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit ] ; 2 uses
  %i.dc = sub i32 %i.da, %.016
  store i32 %i.dc, ptr %i.q, align 4, !tbaa !76
  %i.dd = load i32, ptr %i.e, align 8, !tbaa !107
  %i.de = add i32 %i.dd, %.016                    ; 2 uses
  store i32 %i.de, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.b, !llvm.loop !112

bb.t:                                             ; preds = %bb.c, %bb.e, %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !4
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !4
  %i.di = load i32, ptr %i.q, align 4, !tbaa !76
  %i.dj = add i32 %i.di, %i.t
  store i32 %i.dj, ptr %i.q, align 4, !tbaa !76
  store i8 1, ptr %i.k, align 8, !tbaa !66
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(39764) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(320) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33, !range !51, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %2 = ptrtoaddr ptr %0 to i64
  %3 = ptrtoaddr ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 5 uses
  %i.e = sub i64 %2, %3
  %i.f = add i64 %i.e, 1391
  %diff.check = icmp ult i64 %i.f, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader27
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !62 ; 2 uses
  %wide.load41 = load <16 x i8>, ptr %i.g, align 1, !tbaa !62 ; 2 uses
  %i.h = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.i = icmp eq <16 x i8> %wide.load41, zeroinitializer
  %i.j = select <16 x i1> %i.h, <16 x i8> splat (i8 11), <16 x i8> %wide.load
  %i.k = select <16 x i1> %i.i, <16 x i8> splat (i8 11), <16 x i8> %wide.load41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store <16 x i8> %i.j, ptr %i.d, align 8, !tbaa !62
  store <16 x i8> %i.k, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.m, align 1, !tbaa !62 ; 2 uses
  %wide.load41.1 = load <16 x i8>, ptr %i.n, align 1, !tbaa !62 ; 2 uses
  %i.o = icmp eq <16 x i8> %wide.load.1, zeroinitializer
  %i.p = icmp eq <16 x i8> %wide.load41.1, zeroinitializer
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 11), <16 x i8> %wide.load.1
  %i.r = select <16 x i1> %i.p, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store <16 x i8> %i.q, ptr %i.s, align 8, !tbaa !62
  store <16 x i8> %i.r, ptr %i.t, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.u, align 1, !tbaa !62 ; 2 uses
  %wide.load41.2 = load <16 x i8>, ptr %i.v, align 1, !tbaa !62 ; 2 uses
  %i.w = icmp eq <16 x i8> %wide.load.2, zeroinitializer
  %i.x = icmp eq <16 x i8> %wide.load41.2, zeroinitializer
  %i.y = select <16 x i1> %i.w, <16 x i8> splat (i8 11), <16 x i8> %wide.load.2
  %i.z = select <16 x i1> %i.x, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store <16 x i8> %i.y, ptr %i.aa, align 8, !tbaa !62
  store <16 x i8> %i.z, ptr %i.ab, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !62 ; 2 uses
  %wide.load41.3 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !62 ; 2 uses
  %i.ae = icmp eq <16 x i8> %wide.load.3, zeroinitializer
  %i.af = icmp eq <16 x i8> %wide.load41.3, zeroinitializer
  %i.ag = select <16 x i1> %i.ae, <16 x i8> splat (i8 11), <16 x i8> %wide.load.3
  %i.ah = select <16 x i1> %i.af, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1504
  store <16 x i8> %i.ag, ptr %i.ai, align 8, !tbaa !62
  store <16 x i8> %i.ah, ptr %i.aj, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !62 ; 2 uses
  %wide.load41.4 = load <16 x i8>, ptr %i.al, align 1, !tbaa !62 ; 2 uses
  %i.am = icmp eq <16 x i8> %wide.load.4, zeroinitializer
  %i.an = icmp eq <16 x i8> %wide.load41.4, zeroinitializer
  %i.ao = select <16 x i1> %i.am, <16 x i8> splat (i8 11), <16 x i8> %wide.load.4
  %i.ap = select <16 x i1> %i.an, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store <16 x i8> %i.ao, ptr %i.aq, align 8, !tbaa !62
  store <16 x i8> %i.ap, ptr %i.ar, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.as, align 1, !tbaa !62 ; 2 uses
  %wide.load41.5 = load <16 x i8>, ptr %i.at, align 1, !tbaa !62 ; 2 uses
  %i.au = icmp eq <16 x i8> %wide.load.5, zeroinitializer
  %i.av = icmp eq <16 x i8> %wide.load41.5, zeroinitializer
  %i.aw = select <16 x i1> %i.au, <16 x i8> splat (i8 11), <16 x i8> %wide.load.5
  %i.ax = select <16 x i1> %i.av, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.5
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1568
  store <16 x i8> %i.aw, ptr %i.ay, align 8, !tbaa !62
  store <16 x i8> %i.ax, ptr %i.az, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !62 ; 2 uses
  %wide.load41.6 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !62 ; 2 uses
  %i.bc = icmp eq <16 x i8> %wide.load.6, zeroinitializer
  %i.bd = icmp eq <16 x i8> %wide.load41.6, zeroinitializer
  %i.be = select <16 x i1> %i.bc, <16 x i8> splat (i8 11), <16 x i8> %wide.load.6
  %i.bf = select <16 x i1> %i.bd, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store <16 x i8> %i.be, ptr %i.bg, align 8, !tbaa !62
  store <16 x i8> %i.bf, ptr %i.bh, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !62 ; 2 uses
  %wide.load41.7 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !62 ; 2 uses
  %i.bk = icmp eq <16 x i8> %wide.load.7, zeroinitializer
  %i.bl = icmp eq <16 x i8> %wide.load41.7, zeroinitializer
  %i.bm = select <16 x i1> %i.bk, <16 x i8> splat (i8 11), <16 x i8> %wide.load.7
  %i.bn = select <16 x i1> %i.bl, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.7
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store <16 x i8> %i.bm, ptr %i.bo, align 8, !tbaa !62
  store <16 x i8> %i.bn, ptr %i.bp, align 8, !tbaa !62
  br label %.preheader26

.preheader26:                                     ; preds = %scalar.ph, %vector.body
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42 ; 4 uses
  %.not31 = icmp eq i32 %i.br, 0
  br i1 %.not31, label %.preheader.a, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader26
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 3 uses
  %wide.trip.count = zext i32 %i.br to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i32 %i.br, 1
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %4

scalar.ph:                                        ; preds = %.preheader27, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %.preheader27 ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62  ; 2 uses
  %.not25 = icmp eq i8 %i.bx, 0
  %i.by = select i1 %.not25, i8 11, i8 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 4, !tbaa !62
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62  ; 2 uses
  %.not25.1 = icmp eq i8 %i.cb, 0
  %i.cc = select i1 %.not25.1, i8 11, i8 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !62
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !62  ; 2 uses
  %.not25.2 = icmp eq i8 %i.cf, 0
  %i.cg = select i1 %.not25.2, i8 11, i8 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.1
  store i8 %i.cg, ptr %i.ch, align 2, !tbaa !62
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !62  ; 2 uses
  %.not25.3 = icmp eq i8 %i.cj, 0
  %i.ck = select i1 %.not25.3, i8 11, i8 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.2
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !62
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.preheader26, label %scalar.ph, !llvm.loop !113

.preheader.loopexit.unr-lcssa:                    ; preds = %4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.a, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv33.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next34.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i32 %i.br to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.cm = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %indvars.iv33.epil.init
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 257
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !62  ; 2 uses
  %.not24.epil = icmp eq i8 %i.cr, 0
  %i.cs = select i1 %.not24.epil, i8 11, i8 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.co
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !62
  %i.cv = add i8 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv33.epil.init
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !62
  br label %.preheader.a

.preheader.a:                                     ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader26
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !62  ; 2 uses
  %.not = icmp eq i8 %i.cz, 0
  %i.da = select i1 %.not, i8 6, i8 %i.cz
  store i8 %i.da, ptr %i.cy, align 8, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !62  ; 2 uses
  %.not.1 = icmp eq i8 %i.dc, 0
  %i.dd = select i1 %.not.1, i8 6, i8 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1905
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !62
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !62  ; 2 uses
  %.not.2 = icmp eq i8 %i.dg, 0
  %i.dh = select i1 %.not.2, i8 6, i8 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1906
  store i8 %i.dh, ptr %i.di, align 2, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 291
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !62  ; 2 uses
  %.not.3 = icmp eq i8 %i.dk, 0
  %i.dl = select i1 %.not.3, i8 6, i8 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1907
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !62  ; 2 uses
  %.not.4 = icmp eq i8 %i.do, 0
  %i.dp = add i8 %i.do, 1
  %i.dq = select i1 %.not.4, i8 7, i8 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1908
  store i8 %i.dq, ptr %i.dr, align 4, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 293
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !62  ; 2 uses
  %.not.5 = icmp eq i8 %i.dt, 0
  %i.du = add i8 %i.dt, 1
  %i.dv = select i1 %.not.5, i8 7, i8 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1909
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !62
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 294
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62  ; 2 uses
  %.not.6 = icmp eq i8 %i.dy, 0
  %i.dz = add i8 %i.dy, 2
  %i.ea = select i1 %.not.6, i8 8, i8 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1910
  store i8 %i.ea, ptr %i.eb, align 2, !tbaa !62
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 295
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !62  ; 2 uses
  %.not.7 = icmp eq i8 %i.ed, 0
  %i.ee = add i8 %i.ed, 2
  %i.ef = select i1 %.not.7, i8 8, i8 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1911
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !62  ; 2 uses
  %.not.8 = icmp eq i8 %i.ei, 0
  %i.ej = add i8 %i.ei, 3
  %i.ek = select i1 %.not.8, i8 9, i8 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1912
  store i8 %i.ek, ptr %i.el, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.en = load i8, ptr %i.em, align 1, !tbaa !62  ; 2 uses
  %.not.9 = icmp eq i8 %i.en, 0
  %i.eo = add i8 %i.en, 3
  %i.ep = select i1 %.not.9, i8 9, i8 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1913
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 298
  %i.es = load i8, ptr %i.er, align 1, !tbaa !62  ; 2 uses
  %.not.10 = icmp eq i8 %i.es, 0
  %i.et = add i8 %i.es, 4
  %i.eu = select i1 %.not.10, i8 10, i8 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1914
  store i8 %i.eu, ptr %i.ev, align 2, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 299
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !62  ; 2 uses
  %.not.11 = icmp eq i8 %i.ex, 0
  %i.ey = add i8 %i.ex, 4
  %i.ez = select i1 %.not.11, i8 10, i8 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1915
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !62  ; 2 uses
  %.not.12 = icmp eq i8 %i.fc, 0
  %i.fd = add i8 %i.fc, 5
  %i.fe = select i1 %.not.12, i8 11, i8 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i8 %i.fe, ptr %i.ff, align 4, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 301
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !62  ; 2 uses
  %.not.13 = icmp eq i8 %i.fh, 0
  %i.fi = add i8 %i.fh, 5
  %i.fj = select i1 %.not.13, i8 11, i8 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1917
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 302
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !62  ; 2 uses
  %.not.14 = icmp eq i8 %i.fm, 0
  %i.fn = add i8 %i.fm, 6
  %i.fo = select i1 %.not.14, i8 12, i8 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1918
  store i8 %i.fo, ptr %i.fp, align 2, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 303
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !62  ; 2 uses
  %.not.15 = icmp eq i8 %i.fr, 0
  %i.fs = add i8 %i.fr, 6
  %i.ft = select i1 %.not.15, i8 12, i8 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1919
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !62  ; 2 uses
  %.not.16 = icmp eq i8 %i.fw, 0
  %i.fx = add i8 %i.fw, 7
  %i.fy = select i1 %.not.16, i8 13, i8 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1920
  store i8 %i.fy, ptr %i.fz, align 8, !tbaa !62
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 305
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !62  ; 2 uses
  %.not.17 = icmp eq i8 %i.gb, 0
  %i.gc = add i8 %i.gb, 7
  %i.gd = select i1 %.not.17, i8 13, i8 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !62
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !62  ; 2 uses
  %.not.18 = icmp eq i8 %i.gg, 0
  %i.gh = add i8 %i.gg, 8
  %i.gi = select i1 %.not.18, i8 14, i8 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 %i.gi, ptr %i.gj, align 2, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 307
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !62  ; 2 uses
  %.not.19 = icmp eq i8 %i.gl, 0
  %i.gm = add i8 %i.gl, 8
  %i.gn = select i1 %.not.19, i8 14, i8 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1923
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !62
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !62  ; 2 uses
  %.not.20 = icmp eq i8 %i.gq, 0
  %i.gr = add i8 %i.gq, 9
  %i.gs = select i1 %.not.20, i8 15, i8 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1924
  store i8 %i.gs, ptr %i.gt, align 4, !tbaa !62
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 309
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !62  ; 2 uses
  %.not.21 = icmp eq i8 %i.gv, 0
  %i.gw = add i8 %i.gv, 9
  %i.gx = select i1 %.not.21, i8 15, i8 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1925
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !62
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 310
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !62  ; 2 uses
  %.not.22 = icmp eq i8 %i.ha, 0
  %i.hb = add i8 %i.ha, 10
  %i.hc = select i1 %.not.22, i8 16, i8 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1926
  store i8 %i.hc, ptr %i.hd, align 2, !tbaa !62
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 311
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !62  ; 2 uses
  %.not.23 = icmp eq i8 %i.hf, 0
  %i.hg = add i8 %i.hf, 10
  %i.hh = select i1 %.not.23, i8 16, i8 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1927
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !62
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !62  ; 2 uses
  %.not.24 = icmp eq i8 %i.hk, 0
  %i.hl = add i8 %i.hk, 11
  %i.hm = select i1 %.not.24, i8 17, i8 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i8 %i.hm, ptr %i.hn, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 313
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !62  ; 2 uses
  %.not.25 = icmp eq i8 %i.hp, 0
  %i.hq = add i8 %i.hp, 11
  %i.hr = select i1 %.not.25, i8 17, i8 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1929
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 314
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !62  ; 2 uses
  %.not.26 = icmp eq i8 %i.hu, 0
  %i.hv = add i8 %i.hu, 12
  %i.hw = select i1 %.not.26, i8 18, i8 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1930
  store i8 %i.hw, ptr %i.hx, align 2, !tbaa !62
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 315
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !62  ; 2 uses
  %.not.27 = icmp eq i8 %i.hz, 0
  %i.ia = add i8 %i.hz, 12
  %i.ib = select i1 %.not.27, i8 18, i8 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1931
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !62
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !62  ; 2 uses
  %.not.28 = icmp eq i8 %i.ie, 0
  %i.if = add i8 %i.ie, 13
  %i.ig = select i1 %.not.28, i8 19, i8 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1932
  store i8 %i.ig, ptr %i.ih, align 4, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 317
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !62  ; 2 uses
  %.not.29 = icmp eq i8 %i.ij, 0
  %i.ik = add i8 %i.ij, 13
  %i.il = select i1 %.not.29, i8 19, i8 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1933
  store i8 %i.il, ptr %i.im, align 1, !tbaa !62
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 318
  %i.io = load i8, ptr %i.in, align 1, !tbaa !62  ; 2 uses
  %.not.30 = icmp eq i8 %i.io, 0
  %i.ip = add i8 %i.io, 14
  %i.iq = select i1 %.not.30, i8 20, i8 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1934
  store i8 %i.iq, ptr %i.ir, align 2, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 319
  %i.it = load i8, ptr %i.is, align 1, !tbaa !62  ; 2 uses
  %.not.31 = icmp eq i8 %i.it, 0
  %i.iu = add i8 %i.it, 14
  %i.iv = select i1 %.not.31, i8 20, i8 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1935
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !62
  br label %.loopexit

4:                                                ; preds = %4, %.lr.ph.new
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next34.1, %4 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %4 ]
  %5 = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %indvars.iv33
  %6 = load i8, ptr %5, align 2, !tbaa !62
  %7 = zext i8 %6 to i64                          ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 257
  %10 = load i8, ptr %9, align 1, !tbaa !62       ; 2 uses
  %.not24 = icmp eq i8 %10, 0
  %11 = select i1 %.not24, i8 11, i8 %10
  %12 = getelementptr inbounds nuw i8, ptr %i.bt, i64 %7
  %13 = load i8, ptr %12, align 1, !tbaa !62
  %14 = add i8 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv33
  store i8 %14, ptr %15, align 2, !tbaa !62
  %indvars.iv.next34 = or disjoint i64 %indvars.iv33, 1 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %indvars.iv.next34
  %17 = load i8, ptr %16, align 1, !tbaa !62
  %18 = zext i8 %17 to i64                        ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 257
  %21 = load i8, ptr %20, align 1, !tbaa !62      ; 2 uses
  %.not24.1 = icmp eq i8 %21, 0
  %22 = select i1 %.not24.1, i8 11, i8 %21
  %23 = getelementptr inbounds nuw i8, ptr %i.bt, i64 %18
  %24 = load i8, ptr %23, align 1, !tbaa !62
  %25 = add i8 %22, %24
  %26 = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next34
  store i8 %25, ptr %26, align 1, !tbaa !62
  %indvars.iv.next34.1 = add nuw nsw i64 %indvars.iv33, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %4, !llvm.loop !114

.loopexit:                                        ; preds = %.preheader.a, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep18 = getelementptr i8, ptr %1, i64 %wide.trip.count
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !4, !alias.scope !115, !noalias !118
  %i.c = trunc <4 x i32> %wide.load to <4 x i16>
  %i.d = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.c)
  %i.e = zext <4 x i16> %i.d to <4 x i32>
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load19 = load <4 x i8>, ptr %i.f, align 1, !tbaa !62, !alias.scope !118
  %i.g = zext <4 x i8> %wide.load19 to <4 x i32>
  %i.h = sub nsw <4 x i32> splat (i32 16), %i.g
  %i.i = lshr <4 x i32> %i.e, %i.h
  store <4 x i32> %i.i, ptr %i.b, align 4, !tbaa !4, !alias.scope !115, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader20 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %trunc = trunc i32 %i.l to i16
  %rev = tail call i16 @llvm.bitreverse.i16(i16 %trunc)
  %i.m = zext i16 %rev to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !62
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 16, %i.p
  %i.r = lshr i32 %i.m, %i.q
  store i32 %i.r, ptr %i.k, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0) local_unnamed_addr #0 align 2 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 8, !tbaa !4
  %i.d = trunc <4 x i32> %wide.load to <4 x i16>
  %i.e = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.d)
  %i.f = zext <4 x i16> %i.e to <4 x i32>
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %wide.load258 = load <4 x i8>, ptr %i.g, align 4, !tbaa !62
  %i.h = zext <4 x i8> %wide.load258 to <4 x i32>
  %i.i = sub nsw <4 x i32> splat (i32 16), %i.h
  %i.j = lshr <4 x i32> %i.f, %i.i
  store <4 x i32> %i.j, ptr %i.c, align 8, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, 288
  br i1 %i.k, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit, label %vector.body, !llvm.loop !122

_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit: ; preds = %vector.body
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit
  %index261 = phi i64 [ 0, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit ], [ %index.next264, %vector.body260 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index261 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %i.n, align 8, !tbaa !4
  %i.o = trunc <4 x i32> %wide.load262 to <4 x i16>
  %i.p = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.o)
  %i.q = zext <4 x i16> %i.p to <4 x i32>
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %index261
  %wide.load263 = load <4 x i8>, ptr %i.r, align 4, !tbaa !62
  %i.s = zext <4 x i8> %wide.load263 to <4 x i32>
  %i.t = sub nsw <4 x i32> splat (i32 16), %i.s
  %i.u = lshr <4 x i32> %i.q, %i.t
  store <4 x i32> %i.u, ptr %i.n, align 8, !tbaa !4
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next264, 32
  br i1 %i.v, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader, label %vector.body260, !llvm.loop !123

_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader: ; preds = %vector.body260
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !106
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 20 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 29 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 20 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 30 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1320
  br label %bb.e

_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge: ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit36, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !62  ; 2 uses
  %.not13.i = icmp eq i8 %i.ai, 0
  br i1 %.not13.i, label %_ZN12CBitlEncoder9WriteBitsEjj.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge
  %i.aj = zext i8 %i.ai to i32                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !91 ; 4 uses
  %i.aq = icmp ugt i32 %.pre.i, %i.aj
  %.pre148 = load i8, ptr %i.an, align 4, !tbaa !92 ; 2 uses
  br i1 %i.aq, label %.loopexit143, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i27
  %i.ar = sub nuw nsw i32 %i.aj, %.pre.i          ; 4 uses
  %i.as = sub nsw i32 8, %.pre.i
  %i.at = shl i32 %i.al, %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = or i8 %.pre148, %i.au
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !16
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  store i8 %i.av, ptr %i.ba, align 1, !tbaa !62
  %i.bb = load i32, ptr %i.ao, align 8, !tbaa !16
  %i.bc = load i32, ptr %i.ap, align 4, !tbaa !93
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.b, label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ag)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

_ZN10COutBuffer9WriteByteEh.exit.i.peel:          ; preds = %bb.b, %bb.a
  %i.be = load i32, ptr %i.am, align 8, !tbaa !91
  store i32 8, ptr %i.am, align 8, !tbaa !91
  store i8 0, ptr %i.an, align 4, !tbaa !92
  %.not.i.peel = icmp eq i32 %i.ar, 0
  br i1 %.not.i.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit, label %.peel.next141

.peel.next141:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i.peel
  %i.bf = lshr i32 %i.al, %i.be                   ; 2 uses
  %i.bg = icmp samesign ult i32 %i.ar, 8
  br i1 %i.bg, label %.loopexit143, label %.lr.ph255

bb.c:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i
  %i.bh = lshr i32 %.0814.i254, %i.cb             ; 2 uses
  %i.bi = icmp ult i32 %i.br, 8
  br i1 %i.bi, label %.loopexit143, label %.lr.ph255, !llvm.loop !124

.loopexit143:                                     ; preds = %bb.c, %.peel.next141, %.lr.ph.i27
  %i.bj = phi i8 [ %.pre148, %.lr.ph.i27 ], [ 0, %.peel.next141 ], [ 0, %bb.c ]
  %.lcssa = phi i32 [ %.pre.i, %.lr.ph.i27 ], [ 8, %.peel.next141 ], [ 8, %bb.c ] ; 2 uses
  %.015.i.lcssa = phi i32 [ %i.aj, %.lr.ph.i27 ], [ %i.ar, %.peel.next141 ], [ %i.br, %bb.c ] ; 2 uses
  %.0814.i.lcssa = phi i32 [ %i.al, %.lr.ph.i27 ], [ %i.bf, %.peel.next141 ], [ %i.bh, %bb.c ]
  %notmask.i = shl nsw i32 -1, %.015.i.lcssa
end_hunk_0
