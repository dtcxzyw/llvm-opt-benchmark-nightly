Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@whereLoopAddVirtual:bb.a
  %spec.select110 = select i1 %i.lt, i32 1, i32 %.188152
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.398 = phi i32 [ 0, %bb.bn ], [ %i.lp, %bb.bp ], [ %i.lp, %bb.bo ] ; 2 uses
  %.392 = phi i32 [ %.190151, %bb.bn ], [ 1, %bb.bp ], [ %.190151, %bb.bo ]
  %.3 = phi i32 [ %.188152, %bb.bn ], [ %spec.select110, %bb.bp ], [ %.188152, %bb.bo ]
  %i.lu = icmp eq i32 %.398, 0
  br i1 %i.lu, label %.preheader, label %.thread134

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.lv = icmp eq i32 %.190151, 0
  br i1 %i.lv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.thread
  %i.lw = call fastcc i32 @whereLoopAddVirtualOne(ptr noundef %0, i64 noundef %1, i64 noundef %1, i16 noundef zeroext 0, ptr noundef %.0.i.i.i, i16 noundef zeroext %.0174.lcssa.i, ptr noundef %i.a, ptr noundef null)
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !570
  %i.ly = icmp eq i32 %i.lx, 0
  %spec.select111 = select i1 %i.ly, i32 1, i32 %.188152
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.thread
  %.5100 = phi i32 [ 0, %._crit_edge.thread ], [ %i.lw, %bb.br ] ; 2 uses
  %.5 = phi i32 [ %.188152, %._crit_edge.thread ], [ %spec.select111, %bb.br ]
  %i.lz = icmp eq i32 %.5100, 0
  %i.ma = icmp eq i32 %.5, 0
  %or.cond5 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond5, label %bb.bt, label %.thread134

bb.bt:                                            ; preds = %bb.bs
  %i.mb = call fastcc i32 @whereLoopAddVirtualOne(ptr noundef %0, i64 noundef %1, i64 noundef %1, i16 noundef zeroext 1, ptr noundef %.0.i.i.i, i16 noundef zeroext %.0174.lcssa.i, ptr noundef %i.a, ptr noundef null)
  br label %.thread134

.thread134:                                       ; preds = %bb.bq, %bb.bl, %bb.bs, %bb.bt, %bb.bj, %bb.bi
  %.7 = phi i32 [ %.095, %bb.bi ], [ 0, %bb.bj ], [ %i.mb, %bb.bt ], [ %.5100, %bb.bs ], [ %i.ki, %bb.bl ], [ %.398, %bb.bq ]
  %i.mc = load ptr, ptr %i.d, align 8, !tbaa !980
  call fastcc void @freeIndexInfo(ptr noundef %i.mc, ptr noundef %.0.i.i.i)
  br label %bb.bu

bb.bu:                                            ; preds = %allocateIndexInfo.exit.thread, %.thread134, %whereLoopResize.exit
  %.0101 = phi i32 [ %.7, %.thread134 ], [ 7, %whereLoopResize.exit ], [ 7, %allocateIndexInfo.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0101
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtree(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Walker, align 8             ; 8 uses
  %3 = alloca %struct.IdxCover, align 8           ; 6 uses
  %4 = alloca %struct.Index, align 8              ; 14 uses
  %i.a = alloca [2 x i16], align 2                ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i16 -1, ptr %i.b, align 2, !tbaa !783
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2285 ; 28 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2283   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2318
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.l ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1825 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2284 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 25 ; 4 uses
  %i.t = load i16, ptr %i.s, align 1              ; 3 uses
  %i.u = and i16 %i.t, 2
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !733
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1083
  %i.z = and i32 %i.y, 128
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1255
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 94
  store i16 1, ptr %i.ad, align 2, !tbaa !1159
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i16 1, ptr %i.ae, align 8, !tbaa !1778
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.af, align 8, !tbaa !1160
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !1813
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 98
  store i8 5, ptr %i.ah, align 2, !tbaa !1815
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.o, ptr %i.ai, align 8, !tbaa !1256
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i16 3, ptr %i.aj, align 4, !tbaa !1876
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 99
  store i16 3, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.am = load i16, ptr %i.al, align 2, !tbaa !1814
  store i16 %i.am, ptr %i.a, align 2, !tbaa !783
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !783
  %i.ao = and i16 %i.t, 1
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1255
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1756
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0204 = phi ptr [ %i.w, %bb.b ], [ %i.ac, %bb.d ], [ %4, %bb.f ], [ %4, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !1814 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2418
  %.not212 = icmp eq ptr %i.aw, null
  br i1 %.not212, label %bb.h, label %.loopexit279

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !783
  %i.az = and i16 %i.ay, 4128
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.i, label %.loopexit279

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !1106
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !980
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !917
  %i.bf = and i64 %i.be, 32768
  %.not213 = icmp ne i64 %i.bf, 0
  %i.bg = and i16 %i.t, 147
  %or.cond247 = icmp eq i16 %i.bg, 0
  %or.cond345 = and i1 %.not213, %or.cond247
  br i1 %or.cond345, label %bb.j, label %.loopexit279

bb.j:                                             ; preds = %bb.i
  %i.bh = load i8, ptr %i.r, align 8, !tbaa !2009
  %i.bi = and i8 %i.bh, 16
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %.loopexit279

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1285 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1284 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %.idx = mul nsw i64 %i.bo, 56
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %.idx
  %i.bq = call fastcc signext i16 @estLog(i16 noundef signext %i.au) ; 10 uses
  %i.br = icmp sgt i32 %i.bn, 0
  br i1 %i.br, label %.lr.ph, label %.loopexit279

.lr.ph:                                           ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bz = add i16 %i.bq, %i.au                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 63
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cd = add i16 %i.bz, 28
  %i.ce = add i16 %i.bz, -25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.not.i249 = icmp slt i16 %i.bq, 43
  %i.cg = icmp samesign ult i16 %i.bq, 93
  %i.ch = icmp samesign ugt i16 %i.bq, 74
  %i.ci = zext nneg i16 %i.bq to i64
  %i.cj = getelementptr i8, ptr @sqlite3LogEstAdd.x, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -43
  %i.cl = icmp slt i16 %i.bq, -6
  %i.cm = icmp slt i16 %i.bq, 12
  %narrow = sub nsw i16 43, %i.bq
  %5 = sext i16 %narrow to i64
  %i.cn = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %5
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cq = zext i1 %i.cg to i16
  %.mux303 = add nuw nsw i16 %i.bq, %i.cq
  %.mux = select i1 %i.cl, i16 43, i16 44
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %termCanDriveIndex.exit.thread
  %.0198284 = phi ptr [ %i.bl, %.lr.ph ], [ %i.eo, %termCanDriveIndex.exit.thread ] ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0198284, i64 40 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !2308
  %i.ct = load i64, ptr %i.bs, align 8, !tbaa !2315
  %i.cu = and i64 %i.ct, %i.cs
  %.not218 = icmp eq i64 %i.cu, 0
  br i1 %.not218, label %bb.m, label %termCanDriveIndex.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %.0198284, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !2387 ; 2 uses
  %i.cx = load i32, ptr %i.bt, align 4, !tbaa !2056
  %.not.i = icmp eq i32 %i.cw, %i.cx
  br i1 %.not.i, label %bb.n, label %termCanDriveIndex.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %.0198284, i64 20
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !2397
  %i.da = and i16 %i.cz, 130
  %i.db = icmp eq i16 %i.da, 0
  br i1 %i.db, label %termCanDriveIndex.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load i8, ptr %i.r, align 8, !tbaa !2009 ; 2 uses
  %i.dd = and i8 %i.dc, 88
  %.not17.i = icmp eq i8 %i.dd, 0
  br i1 %.not17.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i = load ptr, ptr %.0198284, align 8, !tbaa !1287 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !795 ; 2 uses
  %i.dg = and i32 %i.df, 3
  %.not.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i, label %termCanDriveIndex.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !733
  %.not5.i.i = icmp eq i32 %i.di, %i.cw
  br i1 %.not5.i.i, label %constraintCompatibleWithOuterJoin.exit.i, label %termCanDriveIndex.exit.thread

constraintCompatibleWithOuterJoin.exit.i:         ; preds = %bb.q
  %i.dj = and i8 %i.dc, 24
  %.not6.i.i = icmp ne i8 %i.dj, 0
  %i.dk = and i32 %i.df, 2
  %.not7.i.i = icmp ne i32 %i.dk, 0
  %or.cond.i.not.i = and i1 %.not6.i.i, %.not7.i.i
  br i1 %or.cond.i.not.i, label %termCanDriveIndex.exit.thread, label %bb.r

bb.r:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.i, %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.0198284, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !733 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %termCanDriveIndex.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.n, align 8, !tbaa !1825
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1149
  %i.dr = zext nneg i32 %i.dm to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 9
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !1716
  %i.dv = load ptr, ptr %.0198284, align 8, !tbaa !1287
  %i.dw = call fastcc i32 @sqlite3IndexAffinityOk(ptr noundef %i.dv, i8 noundef signext %i.du)
  %.not20.i = icmp eq i32 %i.dw, 0
  br i1 %.not20.i, label %termCanDriveIndex.exit.thread, label %termCanDriveIndex.exit

termCanDriveIndex.exit:                           ; preds = %bb.s
  %i.dx = load ptr, ptr %i.n, align 8, !tbaa !1825
  %i.dy = call fastcc i32 @columnIsGoodIndexCandidate(ptr noundef %i.dx, i32 noundef %i.dm)
  %.not219 = icmp eq i32 %i.dy, 0
  br i1 %.not219, label %termCanDriveIndex.exit.thread, label %bb.t

bb.t:                                             ; preds = %termCanDriveIndex.exit
  store i16 1, ptr %i.bu, align 8, !tbaa !733
  store i16 0, ptr %i.bv, align 2, !tbaa !2299
  store ptr null, ptr %i.bw, align 8, !tbaa !733
  store i16 1, ptr %i.bx, align 4, !tbaa !2289
  %i.dz = load ptr, ptr %i.by, align 8, !tbaa !2288
  store ptr %.0198284, ptr %i.dz, align 8, !tbaa !2309
  %i.ea = load i8, ptr %i.cb, align 1, !tbaa !1146
  %i.eb = icmp eq i8 %i.ea, 2
  br i1 %i.eb, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = load i32, ptr %i.cc, align 8, !tbaa !1083
  %i.ed = and i32 %i.ec, 16384
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge = phi i16 [ %i.ce, %bb.v ], [ %i.cd, %bb.u ]
  %spec.select = call i16 @llvm.smax.i16(i16 %storemerge, i16 0)
  store i16 %spec.select, ptr %i.ca, align 2, !tbaa !2395
  store i16 43, ptr %i.cf, align 2, !tbaa !2313
  br i1 %.not.i249, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ch, label %sqlite3LogEstAdd.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = load i8, ptr %i.ck, align 1, !tbaa !733
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add nuw nsw i16 %i.bq, %i.eg
  br label %sqlite3LogEstAdd.exit

bb.z:                                             ; preds = %bb.w
  br i1 %i.cm, label %sqlite3LogEstAdd.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i8, ptr %i.cn, align 1, !tbaa !733
  %i.ej = zext i8 %i.ei to i16
  %i.ek = add nuw nsw i16 %i.ej, 43
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.x, %bb.z, %bb.y, %bb.aa
  %.0.i250 = phi i16 [ %i.ek, %bb.aa ], [ %.mux, %bb.z ], [ %i.eh, %bb.y ], [ %.mux303, %bb.x ]
  store i16 %.0.i250, ptr %i.co, align 4, !tbaa !2312
  store i32 16384, ptr %i.cp, align 8, !tbaa !2291
  %i.el = load i64, ptr %i.cr, align 8, !tbaa !2308
  %i.em = or i64 %i.el, %1
  store i64 %i.em, ptr %i.e, align 8, !tbaa !2391
  %i.en = call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.e)
  br label %termCanDriveIndex.exit.thread

termCanDriveIndex.exit.thread:                    ; preds = %bb.p, %bb.s, %bb.r, %bb.q, %constraintCompatibleWithOuterJoin.exit.i, %bb.m, %bb.n, %termCanDriveIndex.exit, %sqlite3LogEstAdd.exit, %bb.l
  %.1201 = phi i32 [ 0, %bb.l ], [ %i.en, %sqlite3LogEstAdd.exit ], [ 0, %termCanDriveIndex.exit ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %constraintCompatibleWithOuterJoin.exit.i ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0198284, i64 56 ; 2 uses
  %i.ep = icmp eq i32 %.1201, 0
  %i.eq = icmp ult ptr %i.eo, %i.bp
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %i.er, label %bb.l, label %.loopexit279, !llvm.loop !5309

.loopexit279:                                     ; preds = %termCanDriveIndex.exit.thread, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.2202 = phi i32 [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.1201, %termCanDriveIndex.exit.thread ] ; 2 uses
  %i.es = icmp eq i32 %.2202, 0
  %i.et = icmp ne ptr %.0204, null
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %.lr.ph298, label %.loopexit

.lr.ph298:                                        ; preds = %.loopexit279
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 17 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  %i.fh = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 60 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 124 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 27 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph298, %bb.cv
  %.0199295 = phi i32 [ 1, %.lr.ph298 ], [ %i.oh, %bb.cv ] ; 3 uses
  %.1205290 = phi ptr [ %.0204, %.lr.ph298 ], [ %i.og, %bb.cv ] ; 16 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.1205290, i64 72 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1757 ; 2 uses
  %.not221 = icmp eq ptr %i.fu, null
  br i1 %.not221, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load i32, ptr %i.ev, align 4, !tbaa !2056
  %i.fw = load i8, ptr %i.r, align 8, !tbaa !2009
  %i.fx = call fastcc i32 @whereUsablePartialIndex(i32 noundef %i.fv, i8 noundef zeroext %i.fw, ptr noundef %i.q, ptr noundef nonnull %i.fu)
  %.not222 = icmp eq i32 %i.fx, 0
  br i1 %.not222, label %bb.cu, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %.1205290, i64 99 ; 5 uses
  %i.fz = load i16, ptr %i.fy, align 1
  %i.ga = and i16 %i.fz, 256
end_hunk_0
