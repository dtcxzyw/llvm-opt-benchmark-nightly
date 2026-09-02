Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZL9writeBitsP16LodePNGBitWriterjm:bb.a
  %i.v = zext nneg i8 %.pre-phi to i32
  %i.w = shl i32 %1, %i.v
  %i.x = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = trunc i32 %i.w to i8
  %i.af = or i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !35
  %i.ag = load i8, ptr %i.b, align 8, !tbaa !73
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.b, align 8, !tbaa !73
  br label %_ZL15ucvector_resizeP8ucvectorm.exit

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.ai = phi i8 [ %.pre, %.lr.ph ], [ %i.bq, %bb.k ]
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.k ] ; 2 uses
  %i.aj = and i8 %i.ai, 7                         ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !72    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !55
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.aq, 1
  %i.at = add i64 %i.as, %i.ao                    ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.av = tail call noalias noundef ptr @realloc(ptr noundef %i.au, i64 noundef %i.at) #32 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %.thread.i.i29

.thread.i.i29:                                    ; preds = %bb.i
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !56
  store ptr %i.av, ptr %i.al, align 8, !tbaa !54
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !72  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre38, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i29, %bb.h
  %i.aw = phi i64 [ %.pre39, %.thread.i.i29 ], [ %i.ao, %bb.h ]
  %i.ax = phi ptr [ %.pre38, %.thread.i.i29 ], [ %i.al, %bb.h ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !54
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 0, ptr %i.ba, align 1, !tbaa !35
  %.pre40 = load i8, ptr %i.a, align 8, !tbaa !73
  %.pre46 = and i8 %.pre40, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pre-phi47 = phi i8 [ %.pre46, %bb.j ], [ %i.aj, %bb.g ]
  %i.bb = trunc i64 %.036 to i32
  %i.bc = lshr i32 %1, %i.bb
  %i.bd = and i32 %i.bc, 1
  %i.be = zext nneg i8 %.pre-phi47 to i32
  %i.bf = shl nuw nsw i32 %i.bd, %i.be
  %i.bg = load ptr, ptr %0, align 8, !tbaa !72    ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !55
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.bn = trunc nuw i32 %i.bf to i8
  %i.bo = or i8 %i.bm, %i.bn
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !35
  %i.bp = load i8, ptr %i.a, align 8, !tbaa !73
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.a, align 8, !tbaa !73
  %i.br = add nuw nsw i64 %.036, 1                ; 2 uses
  %.not = icmp eq i64 %i.br, %2
  br i1 %.not, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %bb.g, !llvm.loop !856

_ZL15ucvector_resizeP8ucvectorm.exit:             ; preds = %bb.k, %bb.i, %bb.a, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 91) i32 @_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = icmp ugt i32 %5, 8191                    ; 2 uses
  %i.c = lshr i32 %5, 3
  %i.d = select i1 %i.b, i32 %5, i32 %i.c         ; 2 uses
  %i.e = select i1 %i.b, i32 258, i32 64
  %i.f = add i32 %5, -32769
  %or.cond = icmp ult i32 %i.f, -32768
  br i1 %or.cond, label %.thread283, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %5, -1
  %i.h = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %5)
  %.not = icmp samesign ult i32 %i.h, 2
  br i1 %.not, label %bb.c, label %.thread283

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %7, i32 258)
  %i.i = icmp ult i64 %3, %4
  br i1 %i.i, label %.lr.ph333, label %.thread283

.lr.ph333:                                        ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.not226298.not = icmp eq i32 %i.d, 0
  %i.q = zext nneg i32 %5 to i64
  %.not233 = icmp eq i32 %8, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.t = add i64 %4, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph333, %.loopexit
  %.0187331 = phi i32 [ 0, %.lr.ph333 ], [ %.1188, %.loopexit ] ; 3 uses
  %.0189330 = phi i32 [ 0, %.lr.ph333 ], [ %.1190, %.loopexit ] ; 4 uses
  %.0191329 = phi i32 [ 0, %.lr.ph333 ], [ %.2, %.loopexit ] ; 2 uses
  %.0200328 = phi i32 [ 0, %.lr.ph333 ], [ %.5, %.loopexit ] ; 4 uses
  %.0208327 = phi i64 [ %3, %.lr.ph333 ], [ %i.mx, %.loopexit ] ; 20 uses
  %i.u = and i64 %.0208327, %i.j                  ; 8 uses
  %i.v = add i64 %.0208327, 2                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %4
  br i1 %i.w, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 4
  %i.ae = xor i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = xor i32 %i.ae, %i.ai
  br label %_ZL7getHashPKhmm.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ak = sub nuw i64 %4, %.0208327               ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %.0208327 ; 5 uses
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %i.am = sub i64 %.0208327, %4
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ak, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.02535.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bn, %bb.f ] ; 5 uses
  %.02634.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.bm, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.ao = getelementptr i8, ptr %i.al, i64 %.02535.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %.02634.i, %i.aq
  %i.as = or disjoint i64 %.02535.i, 1            ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i32
  %.025.tr.i.1 = trunc i64 %i.as to i32
  %i.aw = shl i32 %.025.tr.i.1, 3
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = xor i32 %i.ax, %i.ar
  %i.az = or disjoint i64 %.02535.i, 2            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35
  %i.bc = zext i8 %i.bb to i32
  %.025.tr.i.2 = trunc i64 %i.az to i32
  %i.bd = shl i32 %.025.tr.i.2, 3
  %i.be = shl i32 %i.bc, %i.bd
  %i.bf = xor i32 %i.be, %i.ay
  %i.bg = or disjoint i64 %.02535.i, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  %i.bj = zext i8 %i.bi to i32
  %.025.tr.i.3 = trunc i64 %i.bg to i32
  %i.bk = shl i32 %.025.tr.i.3, 3
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = xor i32 %i.bl, %i.bf                    ; 3 uses
  %i.bn = add nuw i64 %.02535.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !857

_ZL7getHashPKhmm.exit.loopexit.unr-lcssa:         ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL7getHashPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.02535.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ]
  %.02634.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.bm, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod396)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.02535.i.epil = phi i64 [ %.02535.i.epil.init, %.epil.preheader ], [ %i.bu, %bb.g ] ; 3 uses
  %.02634.i.epil = phi i32 [ %.02634.i.epil.init, %.epil.preheader ], [ %i.bt, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bo = getelementptr i8, ptr %i.al, i64 %.02535.i.epil
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !35
  %i.bq = zext i8 %i.bp to i32
  %.025.tr.i.epil = trunc i64 %.02535.i.epil to i32
  %i.br = shl i32 %.025.tr.i.epil, 3
  %i.bs = shl i32 %i.bq, %i.br
  %i.bt = xor i32 %i.bs, %.02634.i.epil           ; 2 uses
  %i.bu = add nuw i64 %.02535.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL7getHashPKhmm.exit, label %bb.g, !llvm.loop !858

_ZL7getHashPKhmm.exit:                            ; preds = %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  %.2.i = phi i32 [ %i.aj, %bb.e ], [ %i.bm, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ], [ %i.bt, %bb.g ]
  %i.bv = and i32 %.2.i, 65535                    ; 4 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZL7getHashPKhmm.exit
  %i.bx = icmp eq i32 %.0200328, 0
  br i1 %i.bx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 258
  %i.ca = add nuw nsw i64 %.0208327, 258
  %i.cb = icmp samesign ugt i64 %i.ca, %4
  %spec.select.i = select i1 %i.cb, ptr %i.k, ptr %i.bz ; 3 uses
  %.not17.i = icmp eq ptr %i.by, %spec.select.i
  br i1 %.not17.i, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %bb.i, %bb.j
  %.01418.i = phi ptr [ %i.ce, %bb.j ], [ %i.by, %bb.i ] ; 3 uses
  %i.cc = load i8, ptr %.01418.i, align 1, !tbaa !35
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %_ZL10countZerosPKhmm.exit

bb.j:                                             ; preds = %.lr.ph.i241
  %i.ce = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i242 = icmp eq ptr %i.ce, %spec.select.i
  br i1 %.not.i242, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i241, !llvm.loop !859

_ZL10countZerosPKhmm.exit:                        ; preds = %.lr.ph.i241, %bb.j, %bb.i
  %.014.lcssa.i = phi ptr [ %i.by, %bb.i ], [ %.01418.i, %.lr.ph.i241 ], [ %spec.select.i, %bb.j ]
  %i.cf = ptrtoint ptr %.014.lcssa.i to i64
  %i.cg = ptrtoint ptr %i.by to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.cj = zext i32 %.0200328 to i64
  %i.ck = add i64 %.0208327, %i.cj                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %4
  br i1 %i.cl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr i8, ptr %2, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !35
  %.not225 = icmp eq i8 %i.co, 0
  br i1 %.not225, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cp = add i32 %.0200328, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZL7getHashPKhmm.exit, %_ZL10countZerosPKhmm.exit, %bb.m, %bb.l
  %.1201 = phi i32 [ %i.ci, %_ZL10countZerosPKhmm.exit ], [ %i.cp, %bb.m ], [ %.0200328, %bb.l ], [ 0, %_ZL7getHashPKhmm.exit ] ; 10 uses
  %i.cq = trunc i32 %.1201 to i16
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !78  ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.u
  store i32 %i.bv, ptr %i.cs, align 4, !tbaa !29
  %i.ct = load ptr, ptr %1, align 8, !tbaa !77
  %i.cu = zext nneg i32 %i.bv to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29 ; 2 uses
  %.not.i243 = icmp eq i32 %i.cw, -1
  br i1 %.not.i243, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.u
  store i16 %i.cx, ptr %i.cz, align 2, !tbaa !68
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = trunc nuw nsw i64 %i.u to i32           ; 2 uses
  store i32 %i.da, ptr %i.cv, align 4, !tbaa !29
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !80  ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.u
  store i16 %i.cq, ptr %i.dc, align 2, !tbaa !68
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !81  ; 2 uses
  %.mask = and i32 %.1201, 65535
  %i.de = zext nneg i32 %.mask to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29 ; 2 uses
  %.not24.i = icmp eq i32 %i.dg, -1
  br i1 %.not24.i, label %_ZL15updateHashChainP4Hashmjt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = trunc i32 %i.dg to i16
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.u
  store i16 %i.dh, ptr %i.dj, align 2, !tbaa !68
  br label %_ZL15updateHashChainP4Hashmjt.exit

_ZL15updateHashChainP4Hashmjt.exit:               ; preds = %bb.p, %bb.q
  store i32 %i.da, ptr %i.df, align 4, !tbaa !29
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !79  ; 2 uses
  %i.dl = add i64 %.0208327, 258
  %i.dm = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.dl) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm ; 3 uses
  br i1 %.not226298.not, label %._crit_edge, label %.lr.ph303

.lr.ph303:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.u
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !68
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 3 uses
  %i.dr = icmp ugt i32 %.1201, 2                  ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph303, %bb.ac
  %i.dt = phi i32 [ 1, %.lr.ph303 ], [ %i.fh, %bb.ac ] ; 2 uses
  %.0181.in302 = phi i16 [ %i.dp, %.lr.ph303 ], [ %.1.in, %bb.ac ] ; 2 uses
  %.0186301 = phi i32 [ 0, %.lr.ph303 ], [ %i.dy, %bb.ac ]
  %.0193300 = phi i32 [ 0, %.lr.ph303 ], [ %.1194, %bb.ac ] ; 4 uses
  %.0196299 = phi i32 [ 0, %.lr.ph303 ], [ %.1197, %bb.ac ] ; 3 uses
  %i.du = zext i16 %.0181.in302 to i64            ; 5 uses
  %.not227 = icmp samesign ult i64 %i.u, %i.du
  %i.dv = sub nsw i64 %i.u, %i.du
  %i.dw = select i1 %.not227, i64 %i.q, i64 0
  %i.dx = add nsw i64 %i.dw, %i.dv                ; 3 uses
  %i.dy = trunc nsw i64 %i.dx to i32              ; 4 uses
  %i.dz = icmp ugt i32 %.0186301, %i.dy
  br i1 %i.dz, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not228 = icmp eq i64 %i.dx, 0
  br i1 %.not228, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = and i64 %i.dx, 4294967295
  %i.eb = sub i64 %.0208327, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 2 uses
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.du
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !68
  %i.ef = zext i16 %i.ee to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.1201, i32 %i.ef)
  %i.eg = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.eg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0184 = phi ptr [ %i.ei, %bb.u ], [ %i.dq, %bb.t ] ; 4 uses
  %.0182 = phi ptr [ %i.eh, %bb.u ], [ %i.ec, %bb.t ]
  %.not229293 = icmp eq ptr %.0184, %i.dn
  br i1 %.not229293, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %.0184347 = ptrtoaddr ptr %.0184 to i64
  %scevgep = getelementptr i8, ptr %.0184, i64 %i.a
  %scevgep346 = getelementptr i8, ptr %scevgep, i64 %i.dm
  %i.ej = sub i64 0, %.0184347
  %scevgep348 = getelementptr i8, ptr %scevgep346, i64 %i.ej
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.1183295 = phi ptr [ %i.en, %bb.w ], [ %.0182, %.lr.ph.preheader ] ; 2 uses
  %.1185294 = phi ptr [ %i.eo, %bb.w ], [ %.0184, %.lr.ph.preheader ] ; 3 uses
  %i.ek = load i8, ptr %.1183295, align 1, !tbaa !35
  %i.el = load i8, ptr %.1185294, align 1, !tbaa !35
  %i.em = icmp eq i8 %i.ek, %i.el
  br i1 %i.em, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.1183295, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %.1185294, i64 1 ; 2 uses
  %.not229 = icmp eq ptr %i.eo, %i.dn
  br i1 %.not229, label %.critedge, label %.lr.ph, !llvm.loop !860

.critedge:                                        ; preds = %.lr.ph, %bb.w, %bb.v
  %.1185.lcssa = phi ptr [ %i.dn, %bb.v ], [ %scevgep348, %bb.w ], [ %.1185294, %.lr.ph ]
  %i.ep = ptrtoint ptr %.1185.lcssa to i64
  %i.eq = sub i64 %i.ep, %i.ds
  %i.er = trunc i64 %i.eq to i32                  ; 4 uses
  %i.es = icmp ult i32 %.0193300, %i.er
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge
  %.not230 = icmp ugt i32 %spec.store.select, %i.er
  br i1 %.not230, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %.critedge, %bb.x, %bb.s
  %.1197 = phi i32 [ %i.dy, %bb.x ], [ %.0196299, %.critedge ], [ %.0196299, %bb.s ] ; 5 uses
  %.1194 = phi i32 [ %i.er, %bb.x ], [ %.0193300, %.critedge ], [ %.0193300, %bb.s ] ; 6 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.du
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !68 ; 3 uses
  %i.ev = icmp eq i16 %.0181.in302, %i.eu
  br i1 %i.ev, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj:bb.a
  store ptr %i.hi, ptr %0, align 8, !tbaa !87
  br label %_ZL18uivector_push_backP8uivectorj.exit251

_ZL18uivector_push_backP8uivectorj.exit251:       ; preds = %bb.as, %bb.au
  %i.hj = phi ptr [ %i.hi, %bb.au ], [ %.pre.i248, %bb.as ]
  store i64 %i.hc, ptr %i.r, align 8, !tbaa !88
  %i.hk = getelementptr [4 x i8], ptr %i.hj, i64 %i.hc
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.ar, %.preheader
  %.021.i.i = phi i64 [ %.1.i.i, %.preheader ], [ 28, %bb.ar ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %.preheader ], [ 1, %bb.ar ] ; 2 uses
  %i.hl = add i64 %.01620.i.i, %.021.i.i
  %i.hm = lshr i64 %i.hl, 1                       ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !29
  %.not19.i.i = icmp ugt i32 %.3, %i.ho           ; 2 uses
  %i.hp = add nsw i64 %i.hm, -1
  %i.hq = add nuw i64 %i.hm, 1
  %.117.i.i = select i1 %.not19.i.i, i64 %i.hq, i64 %.01620.i.i ; 6 uses
  %.1.i.i = select i1 %.not19.i.i, i64 %.021.i.i, i64 %i.hp ; 2 uses
  %.not.i.i = icmp ugt i64 %.117.i.i, %.1.i.i
  br i1 %.not.i.i, label %bb.av, label %.preheader, !llvm.loop !862

bb.av:                                            ; preds = %.preheader
  %.not18.i.i = icmp ult i64 %.117.i.i, 29
  br i1 %.not18.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %.117.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !29
  %i.ht = icmp ult i32 %.3, %i.hs
  br i1 %i.ht, label %bb.ax, label %_ZL15searchCodeIndexPKjmm.exit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hu = add i64 %.117.i.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit.i

_ZL15searchCodeIndexPKjmm.exit.i:                 ; preds = %bb.ax, %bb.aw
  %.2.i.i = phi i64 [ %i.hu, %bb.ax ], [ %.117.i.i, %bb.aw ] ; 2 uses
  %i.hv = and i64 %.2.i.i, 4294967295
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !29
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %_ZL15searchCodeIndexPKjmm.exit.i
  %.021.i21.i = phi i64 [ 29, %_ZL15searchCodeIndexPKjmm.exit.i ], [ %.1.i25.i, %bb.ay ] ; 2 uses
  %.01620.i22.i = phi i64 [ 1, %_ZL15searchCodeIndexPKjmm.exit.i ], [ %.117.i24.i, %bb.ay ] ; 2 uses
  %i.hy = add i64 %.01620.i22.i, %.021.i21.i
  %i.hz = lshr i64 %i.hy, 1                       ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !29
  %.not19.i23.i = icmp ugt i32 %.3199, %i.ib      ; 2 uses
  %i.ic = add nsw i64 %i.hz, -1
  %i.id = add nuw i64 %i.hz, 1
  %.117.i24.i = select i1 %.not19.i23.i, i64 %i.id, i64 %.01620.i22.i ; 6 uses
  %.1.i25.i = select i1 %.not19.i23.i, i64 %.021.i21.i, i64 %i.ic ; 2 uses
  %.not.i26.i = icmp ugt i64 %.117.i24.i, %.1.i25.i
  br i1 %.not.i26.i, label %bb.az, label %bb.ay, !llvm.loop !862

bb.az:                                            ; preds = %bb.ay
  %.not18.i27.i = icmp ult i64 %.117.i24.i, 30
  br i1 %.not18.i27.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %.117.i24.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !29
  %i.ig = icmp ult i32 %.3199, %i.if
  br i1 %i.ig, label %bb.bb, label %_ZL15searchCodeIndexPKjmm.exit29.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ih = add i64 %.117.i24.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit29.i

_ZL15searchCodeIndexPKjmm.exit29.i:               ; preds = %bb.bb, %bb.ba
  %.2.i28.i = phi i64 [ %i.ih, %bb.bb ], [ %.117.i24.i, %bb.ba ] ; 2 uses
  %i.ii = and i64 %.2.i28.i, 4294967295
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !29
  %i.il = load i64, ptr %i.r, align 8, !tbaa !88  ; 2 uses
  %i.im = add i64 %i.il, 4                        ; 2 uses
  %i.in = shl i64 %i.im, 2                        ; 2 uses
  %i.io = load i64, ptr %i.s, align 8, !tbaa !89  ; 2 uses
  %i.ip = icmp ugt i64 %i.in, %i.io
  %.pre.i252 = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  br i1 %i.ip, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.iq = lshr i64 %i.io, 1
  %i.ir = add i64 %i.iq, %i.in                    ; 2 uses
  %i.is = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i252, i64 noundef %i.ir) #32 ; 3 uses
  %.not.not.i.i253 = icmp eq ptr %i.is, null
  br i1 %.not.not.i.i253, label %.lr.ph324, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.ir, ptr %i.s, align 8, !tbaa !89
  store ptr %i.is, ptr %0, align 8, !tbaa !87
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.it = phi ptr [ %i.is, %bb.bd ], [ %.pre.i252, %_ZL15searchCodeIndexPKjmm.exit29.i ]
  store i64 %i.im, ptr %i.r, align 8, !tbaa !88
  %i.iu = sub i32 %.3199, %i.ik
  %i.iv = trunc i64 %.2.i28.i to i32
  %i.iw = sub i32 %.3, %i.hx
  %i.ix = trunc i64 %.2.i.i to i32
  %i.iy = add i32 %i.ix, 257
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.il ; 4 uses
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !29
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  store i32 %i.iw, ptr %i.ja, align 4, !tbaa !29
  %i.jb = getelementptr i8, ptr %i.iz, i64 8
  store i32 %i.iv, ptr %i.jb, align 4, !tbaa !29
  %i.jc = getelementptr i8, ptr %i.iz, i64 12
  store i32 %i.iu, ptr %i.jc, align 4, !tbaa !29
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.be, %bb.bc
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.je = load ptr, ptr %1, align 8, !tbaa !77
  %i.jf = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.jg = load ptr, ptr %i.o, align 8, !tbaa !81
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph324, %_ZL15updateHashChainP4Hashmjt.exit273
  %indvar = phi i64 [ 0, %.lr.ph324 ], [ %indvar.next, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 2 uses
  %.2202323 = phi i32 [ %.1201, %.lr.ph324 ], [ %.3203, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 4 uses
  %.0207322 = phi i32 [ 1, %.lr.ph324 ], [ %i.mv, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.2210321 = phi i64 [ %.1209, %.lr.ph324 ], [ %i.jj, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 4 uses
  %i.jh = add i64 %.1209, %indvar
  %i.ji = sub i64 %i.t, %i.jh
  %i.jj = add i64 %.2210321, 1                    ; 9 uses
  %i.jk = and i64 %i.jj, %i.j                     ; 5 uses
  %i.jl = add i64 %.2210321, 3                    ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %4
  br i1 %i.jm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !35
  %i.jp = zext i8 %i.jo to i32
  %i.jq = getelementptr i8, ptr %i.jn, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !35
  %i.js = zext i8 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 4
  %i.ju = xor i32 %i.jt, %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.jl
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !35
  %i.jx = zext i8 %i.jw to i32
  %i.jy = shl nuw nsw i32 %i.jx, 8
  %i.jz = xor i32 %i.ju, %i.jy
  br label %_ZL7getHashPKhmm.exit263

bb.bh:                                            ; preds = %bb.bf
  %.not.i254 = icmp ult i64 %i.jj, %4
  br i1 %.not.i254, label %.lr.ph.i256, label %_ZL7getHashPKhmm.exit263.thread

.lr.ph.i256:                                      ; preds = %bb.bh
  %i.ka = sub nuw i64 %4, %i.jj                   ; 2 uses
  %i.kb = getelementptr i8, ptr %2, i64 %i.jj     ; 5 uses
  %xtraiter398 = and i64 %i.ka, 3                 ; 3 uses
  %i.kc = icmp ult i64 %i.ji, 3
  br i1 %i.kc, label %.epil.preheader397, label %.lr.ph.i256.new

.lr.ph.i256.new:                                  ; preds = %.lr.ph.i256
  %unroll_iter403 = and i64 %i.ka, -4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i256.new
  %.02535.i257 = phi i64 [ 0, %.lr.ph.i256.new ], [ %i.lc, %bb.bi ] ; 5 uses
  %.02634.i258 = phi i32 [ 0, %.lr.ph.i256.new ], [ %i.lb, %bb.bi ]
  %niter404 = phi i64 [ 0, %.lr.ph.i256.new ], [ %niter404.next.3, %bb.bi ]
  %i.kd = getelementptr i8, ptr %i.kb, i64 %.02535.i257
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !35
  %i.kf = zext i8 %i.ke to i32
  %i.kg = xor i32 %.02634.i258, %i.kf
  %i.kh = or disjoint i64 %.02535.i257, 1         ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kb, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !35
  %i.kk = zext i8 %i.kj to i32
  %.025.tr.i259.1 = trunc i64 %i.kh to i32
  %i.kl = shl i32 %.025.tr.i259.1, 3
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = xor i32 %i.km, %i.kg
  %i.ko = or disjoint i64 %.02535.i257, 2         ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kb, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !35
  %i.kr = zext i8 %i.kq to i32
  %.025.tr.i259.2 = trunc i64 %i.ko to i32
  %i.ks = shl i32 %.025.tr.i259.2, 3
  %i.kt = shl i32 %i.kr, %i.ks
  %i.ku = xor i32 %i.kt, %i.kn
  %i.kv = or disjoint i64 %.02535.i257, 3         ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kb, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !35
  %i.ky = zext i8 %i.kx to i32
  %.025.tr.i259.3 = trunc i64 %i.kv to i32
  %i.kz = shl i32 %.025.tr.i259.3, 3
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = xor i32 %i.la, %i.ku                    ; 3 uses
  %i.lc = add nuw i64 %.02535.i257, 4             ; 2 uses
  %niter404.next.3 = add i64 %niter404, 4         ; 2 uses
  %niter404.ncmp.3 = icmp eq i64 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !857

_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa:      ; preds = %bb.bi
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %_ZL7getHashPKhmm.exit263, label %.epil.preheader397

.epil.preheader397:                               ; preds = %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, %.lr.ph.i256
  %.02535.i257.epil.init = phi i64 [ 0, %.lr.ph.i256 ], [ %i.lc, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ]
  %.02634.i258.epil.init = phi i32 [ 0, %.lr.ph.i256 ], [ %i.lb, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter398, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader397
  %.02535.i257.epil = phi i64 [ %.02535.i257.epil.init, %.epil.preheader397 ], [ %i.lj, %bb.bj ] ; 3 uses
  %.02634.i258.epil = phi i32 [ %.02634.i258.epil.init, %.epil.preheader397 ], [ %i.li, %bb.bj ]
  %epil.iter399 = phi i64 [ 0, %.epil.preheader397 ], [ %epil.iter399.next, %bb.bj ]
  %i.ld = getelementptr i8, ptr %i.kb, i64 %.02535.i257.epil
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !35
  %i.lf = zext i8 %i.le to i32
  %.025.tr.i259.epil = trunc i64 %.02535.i257.epil to i32
  %i.lg = shl i32 %.025.tr.i259.epil, 3
  %i.lh = shl i32 %i.lf, %i.lg
  %i.li = xor i32 %i.lh, %.02634.i258.epil        ; 2 uses
  %i.lj = add nuw i64 %.02535.i257.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %_ZL7getHashPKhmm.exit263, label %bb.bj, !llvm.loop !863

_ZL7getHashPKhmm.exit263:                         ; preds = %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, %bb.bj, %bb.bg
  %.2.i262 = phi i32 [ %i.jz, %bb.bg ], [ %i.lb, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ], [ %i.li, %bb.bj ]
  %i.lk = and i32 %.2.i262, 65535                 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %_ZL7getHashPKhmm.exit263.thread, label %bb.bp

_ZL7getHashPKhmm.exit263.thread:                  ; preds = %bb.bh, %_ZL7getHashPKhmm.exit263
  %i.lm = icmp eq i32 %.2202323, 0
  br i1 %i.lm, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZL7getHashPKhmm.exit263.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj ; 5 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 258
  %i.lp = add i64 %.2210321, 259
  %i.lq = icmp samesign ugt i64 %i.lp, %4
  %spec.select.i264 = select i1 %i.lq, ptr %i.k, ptr %i.lo ; 3 uses
  %.not17.i265 = icmp eq ptr %i.ln, %spec.select.i264
  br i1 %.not17.i265, label %_ZL10countZerosPKhmm.exit270, label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %bb.bk, %bb.bl
  %.01418.i267 = phi ptr [ %i.lt, %bb.bl ], [ %i.ln, %bb.bk ] ; 3 uses
  %i.lr = load i8, ptr %.01418.i267, align 1, !tbaa !35
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %bb.bl, label %_ZL10countZerosPKhmm.exit270

bb.bl:                                            ; preds = %.lr.ph.i266
  %i.lt = getelementptr inbounds nuw i8, ptr %.01418.i267, i64 1 ; 2 uses
  %.not.i269 = icmp eq ptr %i.lt, %spec.select.i264
  br i1 %.not.i269, label %_ZL10countZerosPKhmm.exit270, label %.lr.ph.i266, !llvm.loop !859

_ZL10countZerosPKhmm.exit270:                     ; preds = %.lr.ph.i266, %bb.bl, %bb.bk
  %.014.lcssa.i268 = phi ptr [ %i.ln, %bb.bk ], [ %.01418.i267, %.lr.ph.i266 ], [ %spec.select.i264, %bb.bl ]
  %i.lu = ptrtoint ptr %.014.lcssa.i268 to i64
  %i.lv = ptrtoint ptr %i.ln to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = trunc i64 %i.lw to i32
  br label %bb.bp

bb.bm:                                            ; preds = %_ZL7getHashPKhmm.exit263.thread
  %i.ly = zext i32 %.2202323 to i64               ; 2 uses
  %i.lz = add i64 %i.jj, %i.ly
  %i.ma = icmp ugt i64 %i.lz, %4
  br i1 %i.ma, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mb = getelementptr i8, ptr %2, i64 %.2210321
  %i.mc = getelementptr i8, ptr %i.mb, i64 %i.ly
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !35
  %.not236 = icmp eq i8 %i.md, 0
  br i1 %.not236, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.me = add i32 %.2202323, -1
  br label %bb.bp

bb.bp:                                            ; preds = %_ZL7getHashPKhmm.exit263, %_ZL10countZerosPKhmm.exit270, %bb.bo, %bb.bn
  %.128.i255281 = phi i32 [ 0, %_ZL10countZerosPKhmm.exit270 ], [ 0, %bb.bo ], [ 0, %bb.bn ], [ %i.lk, %_ZL7getHashPKhmm.exit263 ] ; 2 uses
  %.3203 = phi i32 [ %i.lx, %_ZL10countZerosPKhmm.exit270 ], [ %i.me, %bb.bo ], [ %.2202323, %bb.bn ], [ 0, %_ZL7getHashPKhmm.exit263 ] ; 4 uses
  %i.mf = trunc i32 %.3203 to i16
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jk
  store i32 %.128.i255281, ptr %i.mg, align 4, !tbaa !29
  %i.mh = zext nneg i32 %.128.i255281 to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.mh ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !29 ; 2 uses
  %.not.i271 = icmp eq i32 %i.mj, -1
  br i1 %.not.i271, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.jk
  store i16 %i.mk, ptr %i.mm, align 2, !tbaa !68
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mn = trunc nuw nsw i64 %i.jk to i32          ; 2 uses
  store i32 %i.mn, ptr %i.mi, align 4, !tbaa !29
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jk
  store i16 %i.mf, ptr %i.mo, align 2, !tbaa !68
  %.mask291 = and i32 %.3203, 65535
  %i.mp = zext nneg i32 %.mask291 to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !29 ; 2 uses
  %.not24.i272 = icmp eq i32 %i.mr, -1
  br i1 %.not24.i272, label %_ZL15updateHashChainP4Hashmjt.exit273, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ms = trunc i32 %i.mr to i16
  %i.mt = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.jk
  store i16 %i.ms, ptr %i.mu, align 2, !tbaa !68
  br label %_ZL15updateHashChainP4Hashmjt.exit273

_ZL15updateHashChainP4Hashmjt.exit273:            ; preds = %bb.br, %bb.bs
  store i32 %i.mn, ptr %i.mq, align 4, !tbaa !29
  %i.mv = add nuw i32 %.0207322, 1                ; 2 uses
  %exitcond349.not = icmp eq i32 %i.mv, %.3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond349.not, label %.loopexit, label %bb.bf, !llvm.loop !864

.loopexit.sink.split:                             ; preds = %_ZL18uivector_push_backP8uivectorj.exit247, %_ZL18uivector_push_backP8uivectorj.exit251
  %.sink390 = phi ptr [ %i.hk, %_ZL18uivector_push_backP8uivectorj.exit251 ], [ %i.gv, %_ZL18uivector_push_backP8uivectorj.exit247 ]
  %.sink.in = phi i8 [ %i.ha, %_ZL18uivector_push_backP8uivectorj.exit251 ], [ %i.gl, %_ZL18uivector_push_backP8uivectorj.exit247 ]
  %.sink = zext i8 %.sink.in to i32
  %i.mw = getelementptr i8, ptr %.sink390, i64 -4
  store i32 %.sink, ptr %i.mw, align 4, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit273, %.loopexit.sink.split, %bb.ae
  %.4212 = phi i64 [ %.1209, %.loopexit.sink.split ], [ %.0208327, %bb.ae ], [ %i.jj, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.5 = phi i32 [ %.1201, %.loopexit.sink.split ], [ %.1201, %bb.ae ], [ %.3203, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.2 = phi i32 [ %.1192, %.loopexit.sink.split ], [ 1, %bb.ae ], [ %.1192, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.1190 = phi i32 [ %.0189330, %.loopexit.sink.split ], [ %.2195, %bb.ae ], [ %.0189330, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.1188 = phi i32 [ %.0187331, %.loopexit.sink.split ], [ %.2198, %bb.ae ], [ %.0187331, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %i.mx = add i64 %.4212, 1                       ; 2 uses
  %i.my = icmp ult i64 %i.mx, %4
  br i1 %i.my, label %bb.d, label %.thread283, !llvm.loop !865

.thread283:                                       ; preds = %.loopexit, %bb.ag, %.thread, %bb.aj, %bb.ao, %bb.at, %bb.c, %bb.b, %bb.a
  %.0213 = phi i32 [ 90, %bb.b ], [ 60, %bb.a ], [ 0, %bb.c ], [ 83, %bb.ao ], [ 0, %.loopexit ], [ 83, %bb.aj ], [ 81, %bb.ag ], [ 86, %.thread ], [ 83, %bb.at ]
  ret i32 %.0213
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL13writeLZ77dataP16LodePNGBitWriterPK8uivectorPK11HuffmanTreeS6_(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %.not46 = icmp eq i64 %i.b, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.do, %bb.n ] ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.047
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !69
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29   ; 3 uses
  %i.p = zext i32 %i.o to i64
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %_ZL17writeBitsReversedP16LodePNGBitWriterjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.q = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.ba, %bb.g ]
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %bb.g ] ; 2 uses
  %i.r = and i8 %i.q, 7                           ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !72     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !55
  %i.w = add i64 %i.v, 1                          ; 4 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i64 %i.y, 1
  %i.ab = add i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.ad = tail call noalias noundef ptr @realloc(ptr noundef %i.ac, i64 noundef %i.ab) #32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZL17writeBitsReversedP16LodePNGBitWriterjm.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.e
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !56
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !54
  %.pre21.i = load ptr, ptr %0, align 8, !tbaa !72 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre21.i, i64 8
  %.pre22.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i, %bb.d
  %i.ae = phi i64 [ %.pre22.i, %.thread.i.i.i ], [ %i.w, %bb.d ]
  %i.af = phi ptr [ %.pre21.i, %.thread.i.i.i ], [ %i.t, %bb.d ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ae
end_hunk_1
