Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_ext?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL18ucnv_extMatchFromUPKiiPKDsiS2_iPjaa:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bs = sub nsw i32 -2, %i.bq
  br label %bb.ad

bb.p:                                             ; preds = %bb.l, %bb.j
  %.075.sink = phi i32 [ %.075, %bb.l ], [ %.077, %bb.j ]
  %.sink = phi ptr [ %4, %bb.l ], [ %2, %bb.j ]
  %.178 = phi i32 [ %.077, %bb.l ], [ %i.bn, %bb.j ] ; 2 uses
  %.176 = phi i32 [ %i.bp, %bb.l ], [ %.075, %bb.j ] ; 2 uses
  %i.bt = sext i32 %.075.sink to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %.sink, i64 %i.bt
  %.0 = load i16, ptr %i.bu, align 2, !tbaa !42   ; 5 uses
  %i.bv = icmp ult i16 %i.bd, 2
  br i1 %i.bv, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.v
  %i.bw = phi i32 [ %i.cr, %bb.v ], [ %i.be, %bb.p ]
  %.045.i = phi i32 [ %..0.i, %bb.v ], [ %i.be, %bb.p ] ; 7 uses
  %.03244.i = phi i32 [ %.032..i, %bb.v ], [ 0, %bb.p ] ; 7 uses
  %i.bx = icmp samesign ult i32 %i.bw, 5
  br i1 %i.bx, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph.i
  %i.by = sext i32 %.03244.i to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !42
  %.not.i = icmp ugt i16 %.0, %i.ca
  br i1 %.not.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q
  %i.cb = add nsw i32 %.03244.i, 1                ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !42
  %.not39.i = icmp ugt i16 %.0, %i.ce
  br i1 %.not39.i, label %bb.s, label %.loopexit.i

bb.s:                                             ; preds = %bb.r
  %i.cf = add nsw i32 %.03244.i, 2                ; 3 uses
  %i.cg = icmp slt i32 %i.cf, %.045.i
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !42
  %.not40.i = icmp ugt i16 %.0, %i.cj
  br i1 %.not40.i, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = add nsw i32 %.03244.i, 3
  br label %.loopexit.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.cl = add nsw i32 %.03244.i, %.045.i
  %i.cm = sdiv i32 %i.cl, 2                       ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !42
  %i.cq = icmp ult i16 %.0, %i.cp                 ; 2 uses
  %.032..i = select i1 %i.cq, i32 %.03244.i, i32 %i.cm ; 3 uses
  %..0.i = select i1 %i.cq, i32 %i.cm, i32 %.045.i ; 3 uses
  %i.cr = sub nsw i32 %..0.i, %.032..i            ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 2
  br i1 %i.cs, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !75

.loopexit.i:                                      ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p
  %.042.i = phi i32 [ %.045.i, %bb.u ], [ %.045.i, %bb.q ], [ %.045.i, %bb.r ], [ %.045.i, %bb.t ], [ %i.be, %bb.p ], [ %..0.i, %bb.v ]
  %.2.i = phi i32 [ %i.ck, %bb.u ], [ %.03244.i, %bb.q ], [ %i.cb, %bb.r ], [ %i.cf, %bb.t ], [ 0, %bb.p ], [ %.032..i, %bb.v ] ; 4 uses
  %i.ct = icmp slt i32 %.2.i, %.042.i
  br i1 %i.ct, label %bb.w, label %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread

bb.w:                                             ; preds = %.loopexit.i
  %i.cu = sext i32 %.2.i to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !42
  %i.cx = icmp ne i16 %.0, %i.cw
  %i.cy = icmp slt i32 %.2.i, 0
  %or.cond = or i1 %i.cy, %i.cx
  br i1 %or.cond, label %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = zext nneg i32 %.2.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8  ; 5 uses
  %i.dc = icmp ult i32 %i.db, 16777216
  br i1 %i.dc, label %bb.f, label %bb.y, !llvm.loop !76

bb.y:                                             ; preds = %bb.x
  %i.dd = icmp ult i32 %i.db, 1073741824
  %or.cond.i95.not127 = and i1 %i.au, %i.dd
  %or.cond7.i96.not124 = and i1 %i.aw, %or.cond.i95.not127
  %or.cond9.i97.not122 = and i1 %i.ay, %or.cond7.i96.not124
  %i.de = and i32 %i.db, 536870912
  %i.df = icmp ne i32 %i.de, 0
  %narrow.i98.not = or i1 %i.df, %or.cond9.i97.not122
  br i1 %narrow.i98.not, label %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = add nsw i32 %.178, 2
  %i.dh = add nsw i32 %i.dg, %.176
  br label %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread

_ZL17ucnv_extFindFromUPKDsiDs.exit.thread:        ; preds = %bb.w, %.loopexit.i, %bb.z, %bb.y, %bb.m, %bb.n
  %.281 = phi i32 [ %.180, %bb.n ], [ %i.db, %bb.z ], [ %.180, %bb.y ], [ %.180, %bb.m ], [ %.180, %.loopexit.i ], [ %.180, %bb.w ]
  %.2 = phi i32 [ %.1, %bb.n ], [ %i.dh, %bb.z ], [ %.1, %bb.y ], [ %.1, %bb.m ], [ %.1, %.loopexit.i ], [ %.1, %bb.w ] ; 2 uses
  %i.di = icmp eq i32 %.2, 0
  br i1 %i.di, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %bb.d
  %i.dj = icmp ult i32 %i.aj, 1073741824
  %i.dk = icmp eq i8 %7, 0
  %or.cond.i99.not111 = and i1 %i.dk, %i.dj
  %i.dl = add i32 %1, -63744
  %i.dm = icmp ult i32 %i.dl, -6400
  %or.cond7.i100.not108 = and i1 %i.dm, %or.cond.i99.not111
  %i.dn = add i32 %1, -1114112
  %i.do = icmp ult i32 %i.dn, -131072
  %or.cond9.i101.not106 = and i1 %i.do, %or.cond7.i100.not108
  %i.dp = and i32 %i.aj, 536870912
  %i.dq = icmp ne i32 %i.dp, 0
  %narrow.i102.not = or i1 %i.dq, %or.cond9.i101.not106
  br i1 %narrow.i102.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread
  %.382 = phi i32 [ %.281, %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread ], [ %i.aj, %bb.aa ] ; 2 uses
  %.3 = phi i32 [ %.2, %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread ], [ 2, %bb.aa ]
  %i.dr = icmp eq i32 %.382, -2147483647
  br i1 %i.dr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %.382, ptr %6, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread, %bb.c, %bb.b, %bb.a, %bb.ac, %bb.o
  %.083 = phi i32 [ 0, %_ZL17ucnv_extFindFromUPKDsiDs.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.aa ], [ %.3, %bb.ac ], [ %i.bs, %bb.o ], [ 1, %bb.ab ]
  ret i32 %.083
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -3, 4) i32 @ucnv_extSimpleMatchFromU_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i8 noundef signext %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call fastcc noundef i32 @_ZL18ucnv_extMatchFromUPKiiPKDsiS2_iPjaa(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %i.a, i8 noundef signext %3, i8 noundef signext 1)
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.e = lshr i32 %i.d, 24
  %i.f = and i32 %i.e, 31                         ; 3 uses
  %i.g = icmp samesign ugt i32 %i.f, 3
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.d, 16777215
  store i32 %i.h, ptr %2, align 4, !tbaa !8
  %i.i = sub nsw i32 0, %i.f
  %.not12 = icmp slt i32 %i.d, 0
  %i.j = select i1 %.not12, i32 %i.f, i32 %i.i
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define void @ucnv_extContinueMatchFromU_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 281 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !43    ; 3 uses
  %i.m = sext i8 %i.l to i32                      ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81   ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 1
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.x = load i8, ptr %i.w, align 1, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = load i8, ptr %i.y, align 2, !tbaa !83
  %i.aa = call fastcc noundef i32 @_ZL18ucnv_extMatchFromUPKiiPKDsiS2_iPjaa(ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.j, i32 noundef %i.m, ptr noundef %i.o, i32 noundef %i.v, ptr noundef %i.c, i8 noundef signext %i.x, i8 noundef signext %i.z) ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.ac = add nsw i32 %i.aa, -2                   ; 4 uses
  %.not = icmp slt i32 %i.ac, %i.m
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = sub nsw i32 %i.ac, %i.m
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ae
  store ptr %i.af, ptr %i.n, align 8, !tbaa !81
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = sub nuw nsw i32 %i.m, %i.ac             ; 2 uses
  %i.ah = zext nneg i32 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ah
  %i.aj = tail call ptr @u_memmove_78(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ai, i32 noundef %i.ag) ; 0 uses
  %i.ak = trunc nuw nsw i32 %i.ag to i8
  %i.al = sub nsw i8 0, %i.ak
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 288
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi ptr [ %.pre64, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %storemerge = phi i8 [ %i.al, %bb.d ], [ 0, %bb.c ]
  store i8 %storemerge, ptr %i.k, align 1, !tbaa !43
  store i32 -1, ptr %i.h, align 8, !tbaa !41
  %i.an = load i32, ptr %i.c, align 4, !tbaa !8   ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.as = lshr i32 %i.an, 24
  %i.at = and i32 %i.as, 31                       ; 8 uses
  %i.au = icmp samesign ult i32 %i.at, 4
  br i1 %i.au, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  switch i32 %i.at, label %bb.k [
    i32 3, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i32 %i.an, 16
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.036.i = phi ptr [ %i.ay, %bb.g ], [ %i.av, %bb.f ] ; 2 uses
  %i.az = lshr i32 %i.an, 8
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.036.i, i64 1
  store i8 %i.ba, ptr %.036.i, align 1, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1.i = phi ptr [ %i.bb, %bb.h ], [ %i.av, %bb.f ]
  %i.bc = trunc i32 %i.an to i8
  store i8 %i.bc, ptr %.1.i, align 1, !tbaa !25
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bd = and i32 %i.an, 16777215
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.am, i64 %i.bg
  %i.bi = zext nneg i32 %i.bd to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %.039.i = phi ptr [ %i.bj, %bb.j ], [ %i.av, %bb.f ], [ %i.av, %bb.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !40 ; 3 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %_ZL18ucnv_extWriteFromUP10UConverterPKijPPcPKcPPiiP10UErrorCode.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp sgt i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.at, 1
  %or.cond.i = and i1 %i.bn, %i.bm
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = icmp eq i32 %i.bl, 1
  %i.bp = icmp samesign ugt i32 %i.at, 1
  %or.cond3.i = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond3.i, label %bb.n, label %_ZL18ucnv_extWriteFromUP10UConverterPKijPPcPKcPPiiP10UErrorCode.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i = phi i32 [ 1, %bb.l ], [ 2, %bb.m ]
  %.0.i = phi i8 [ 15, %bb.l ], [ 14, %bb.m ]
  store i32 %storemerge.i, ptr %i.bk, align 8, !tbaa !40
  store i8 %.0.i, ptr %i.b, align 16, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not45.i = icmp eq ptr %.039.i, %i.bq
  br i1 %.not45.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = zext nneg i32 %i.at to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %.039.i, i64 %i.br, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = add nuw nsw i32 %i.at, 1
  br label %_ZL18ucnv_extWriteFromUP10UConverterPKijPPcPKcPPiiP10UErrorCode.exit

_ZL18ucnv_extWriteFromUP10UConverterPKijPPcPKcPPiiP10UErrorCode.exit: ; preds = %bb.k, %bb.m, %bb.p
  %.2.i = phi ptr [ %.039.i, %bb.k ], [ %i.b, %bb.p ], [ %.039.i, %bb.m ]
  %.138.i = phi i32 [ %i.at, %bb.k ], [ %i.bs, %bb.p ], [ %i.at, %bb.m ]
  call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %0, ptr noundef nonnull %.2.i, i32 noundef %.138.i, ptr noundef nonnull %i.ao, ptr noundef %i.aq, ptr noundef nonnull %i.ar, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.bt = icmp slt i32 %i.aa, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = sub nsw i32 -2, %i.aa                   ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, %i.m
  br i1 %i.bv, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.r
  %i.bw = sext i8 %i.l to i64                     ; 8 uses
  %wide.trip.count = sext i32 %i.bu to i64        ; 2 uses
  %i.bx = sub nsw i64 %wide.trip.count, %i.bw     ; 7 uses
  %min.iters.check = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.by = shl nsw i64 %i.bw, 1
  %i.bz = add i64 %i.by, %i.a
  %i.ca = sub i64 %i.bz, %i.s
  %i.cb = add i64 %i.ca, 211
  %diff.check = icmp ult i64 %i.cb, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check73 = icmp ult i64 %i.bx, 16
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.bx, 12
  %n.vec = and i64 %i.bx, -16                     ; 5 uses
  %i.cd = add nsw i64 %n.vec, %i.bw
  %i.ce = shl nsw i64 %n.vec, 1
  %i.cf = getelementptr i8, ptr %i.o, i64 %i.ce   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.j, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !42
  %wide.load74 = load <8 x i16>, ptr %i.ch, align 2, !tbaa !42
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %wide.load, ptr %gep, align 2, !tbaa !42
  store <8 x i16> %wide.load74, ptr %i.ci, align 2, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %i.bx, -4                    ; 4 uses
  %i.ck = add nsw i64 %n.vec76, %i.bw
  %i.cl = shl nsw i64 %n.vec76, 1
  %i.cm = getelementptr i8, ptr %i.o, i64 %i.cl   ; 2 uses
  %invariant.gep84 = getelementptr [2 x i8], ptr %i.j, i64 %i.bw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.cn = shl i64 %index77, 1
  %next.gep78 = getelementptr i8, ptr %i.o, i64 %i.cn
  %wide.load79 = load <4 x i16>, ptr %next.gep78, align 2, !tbaa !42
  %gep85 = getelementptr [2 x i8], ptr %invariant.gep84, i64 %index77
  store <4 x i16> %wide.load79, ptr %gep85, align 2, !tbaa !42
  %index.next80 = add nuw i64 %index77, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next80, %n.vec76
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %i.bx, %n.vec76
  br i1 %cmp.n81, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bw, %iter.check ], [ %i.bw, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  %.05461.ph = phi ptr [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.05461 = phi ptr [ %i.cp, %.lr.ph ], [ %.05461.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05461, i64 2 ; 2 uses
  %i.cq = load i16, ptr %.05461, align 2, !tbaa !42
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !42
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.r
  %.054.lcssa = phi ptr [ %i.o, %bb.r ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %i.cp, %.lr.ph ]
  store ptr %.054.lcssa, ptr %i.n, align 8, !tbaa !81
  %i.cs = trunc i32 %i.bu to i8
  store i8 %i.cs, ptr %i.k, align 1, !tbaa !43
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ct = icmp eq i32 %i.aa, 1
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 1, ptr %i.cu, align 1, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.i, ptr %i.cv, align 4, !tbaa !85
  store i32 -1, ptr %i.h, align 8, !tbaa !41
  %i.cw = sub i8 0, %i.l
  store i8 %i.cw, ptr %i.k, align 1, !tbaa !43
  store i32 10, ptr %3, align 4, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u, %_ZL18ucnv_extWriteFromUP10UConverterPKijPPcPKcPPiiP10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

declare ptr @u_memmove_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @ucnv_extGetUnicodeSet_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [19 x i16], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit91, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8    ; 3 uses
  %i.s = icmp eq i32 %3, 2
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.u = load i8, ptr %i.t, align 4, !tbaa !22
  %i.v = icmp eq i8 %i.u, -37
  %i.w = icmp ne i32 %3, 0
  %or.cond = or i1 %i.w, %i.v
  %. = select i1 %or.cond, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.071 = phi i32 [ 3, %bb.b ], [ %., %bb.c ]     ; 3 uses
  %i.x = icmp sgt i32 %i.r, 0
  br i1 %i.x, label %.lr.ph, label %.loopexit91

.lr.ph:                                           ; preds = %bb.d
  %i.y = icmp eq i32 %2, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.loopexit90
  %indvars.iv97 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next98, %.loopexit90 ] ; 2 uses
  %.07095 = phi i32 [ 0, %.lr.ph ], [ %.4, %.loopexit90 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv97
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !45 ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = icmp slt i32 %i.r, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.af = zext i16 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.af
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.193 = phi i32 [ %.07095, %bb.f ], [ %.3, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !45 ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i16 %i.ai to i64
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  br label %bb.i

bb.i:                                             ; preds = %_ZL16extSetUseMapping20UConverterUnicodeSetij.exit.thread, %bb.h
  %.074 = phi ptr [ %i.ak, %bb.h ], [ %i.al, %_ZL16extSetUseMapping20UConverterUnicodeSetij.exit.thread ] ; 2 uses
  %.2 = phi i32 [ %.193, %bb.h ], [ %i.ce, %_ZL16extSetUseMapping20UConverterUnicodeSetij.exit.thread ] ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.074, i64 2
end_hunk_0
