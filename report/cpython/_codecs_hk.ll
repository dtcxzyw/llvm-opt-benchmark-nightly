Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_codecs_hk?download=true
inline.NumInlined: 23
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@big5hkscs_encode:bb.a
  %i.x = and i32 %.0.i, 255                       ; 3 uses
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !62
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %.not103 = icmp samesign ult i32 %i.x, %i.aa
  br i1 %.not103, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %i.v, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !63
  %i.ad = zext i8 %i.ac to i32
  %.not104 = icmp samesign ugt i32 %i.x, %i.ad
  br i1 %.not104, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = sub nuw nsw i32 %i.x, %i.aa
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr [2 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !34 ; 2 uses
  switch i16 %i.ah, label %.thread123 [
    i16 -1, label %bb.u
    i16 -2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = sub i64 %5, %i.e
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ak = add nsw i64 %i.e, 1                     ; 3 uses
  switch i32 %2, label %bb.r [
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr i8, ptr %3, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  br label %PyUnicode_READ.exit117

bb.q:                                             ; preds = %bb.o
  %i.ao = getelementptr [2 x i8], ptr %3, i64 %i.ak
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !34
  %i.aq = zext i16 %i.ap to i32
  br label %PyUnicode_READ.exit117

bb.r:                                             ; preds = %bb.o
  %i.ar = getelementptr [4 x i8], ptr %3, i64 %i.ak
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  br label %PyUnicode_READ.exit117

PyUnicode_READ.exit117:                           ; preds = %bb.r, %bb.q, %bb.p
  %.0 = phi i32 [ %i.as, %bb.r ], [ %i.an, %bb.p ], [ %i.aq, %bb.q ] ; 2 uses
  %i.at = and i32 %.0.i, 65503
  %i.au = icmp eq i32 %i.at, 202
  %i.av = and i32 %.0, 65527
  %i.aw = icmp eq i32 %i.av, 772
  %or.cond113 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond113, label %bb.s, label %.thread

bb.s:                                             ; preds = %PyUnicode_READ.exit117
  %i.ax = lshr i32 %.0.i, 4
  %i.ay = lshr i32 %.0, 3
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = and i32 %i.az, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr [2 x i8], ptr @big5hkscs_pairenc_table, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !34
  br label %.thread123

bb.t:                                             ; preds = %bb.n
  br i1 %.not110, label %.thread129, label %.thread

.thread:                                          ; preds = %PyUnicode_READ.exit117, %bb.t
  %i.be = icmp eq i32 %.0.i, 202
  %. = select i1 %i.be, i16 -30618, i16 -30553
  br label %.thread123

bb.u:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.bg = getelementptr i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !64
  %i.bi = getelementptr [16 x i8], ptr %i.bh, i64 %i.u ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %.not106 = icmp eq ptr %i.bj, null
  br i1 %.not106, label %.thread129, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = and i32 %.0.i, 255                      ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !62
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %.not107 = icmp samesign ult i32 %i.bk, %i.bn
  br i1 %.not107, label %.thread129, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr i8, ptr %i.bi, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !63
  %i.bq = zext i8 %i.bp to i32
  %.not108 = icmp samesign ugt i32 %i.bk, %i.bq
  br i1 %.not108, label %.thread129, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = sub nuw nsw i32 %i.bk, %i.bn
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr [2 x i8], ptr %i.bj, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !34 ; 2 uses
  %.not109 = icmp eq i16 %i.bu, -1
  br i1 %.not109, label %.thread129, label %.thread123

bb.y:                                             ; preds = %bb.i
  %i.bv = and i32 %.0.i, -65536
  %or.cond115 = icmp eq i32 %i.bv, 131072
  br i1 %or.cond115, label %bb.z, label %.thread129

bb.z:                                             ; preds = %bb.y
  %i.bw = lshr i32 %.0.i, 8
  %i.bx = and i32 %i.bw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr [16 x i8], ptr @big5hkscs_nonbmp_encmap, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %.thread129, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = and i32 %.0.i, 255                      ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !62
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %.not99 = icmp samesign ult i32 %i.cb, %i.ce
  br i1 %.not99, label %.thread129, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr i8, ptr %i.bz, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !63
  %i.ch = zext i8 %i.cg to i32
  %.not100 = icmp samesign ugt i32 %i.cb, %i.ch
  br i1 %.not100, label %.thread129, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = sub nuw nsw i32 %i.cb, %i.ce
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr [2 x i8], ptr %i.ca, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !34 ; 2 uses
  %.not101 = icmp eq i16 %i.cl, -1
  br i1 %.not101, label %.thread129, label %.thread123

.thread123:                                       ; preds = %bb.s, %.thread, %bb.m, %bb.x, %bb.ac
  %.279 = phi i16 [ %i.cl, %bb.ac ], [ %i.ah, %bb.m ], [ %i.bu, %bb.x ], [ %., %.thread ], [ %i.bd, %bb.s ] ; 2 uses
  %.2 = phi i64 [ 1, %bb.ac ], [ 1, %bb.m ], [ 1, %bb.x ], [ 1, %.thread ], [ 2, %bb.s ]
  %i.cm = lshr i16 %.279, 8
  %i.cn = trunc nuw i16 %i.cm to i8
  %i.co = load ptr, ptr %6, align 8, !tbaa !30
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !28
  %i.cp = trunc i16 %.279 to i8
  %i.cq = load ptr, ptr %6, align 8, !tbaa !30
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !28
  br label %bb.ad

bb.ad:                                            ; preds = %.thread123, %bb.g
  %.2.sink = phi i64 [ %.2, %.thread123 ], [ 1, %bb.g ]
  %.sink174 = phi i64 [ 2, %.thread123 ], [ 1, %bb.g ]
  %.sink = phi i64 [ -2, %.thread123 ], [ -1, %bb.g ]
  %i.cs = load i64, ptr %4, align 8, !tbaa !59
  %i.ct = add i64 %i.cs, %.2.sink                 ; 3 uses
  store i64 %i.ct, ptr %4, align 8, !tbaa !59
  %i.cu = load ptr, ptr %6, align 8, !tbaa !30
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.sink174
  store ptr %i.cv, ptr %6, align 8, !tbaa !30
  %i.cw = add nsw i64 %.083133, %.sink
  %i.cx = icmp slt i64 %i.ct, %5
  br i1 %i.cx, label %bb.b, label %.thread129

.thread129:                                       ; preds = %bb.ad, %bb.z, %bb.f, %bb.aa, %bb.h, %bb.u, %bb.y, %bb.x, %bb.w, %bb.v, %bb.ac, %bb.ab, %bb.t, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ 1, %bb.z ], [ -2, %bb.t ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.u ], [ -1, %bb.h ], [ 1, %bb.aa ], [ -1, %bb.f ], [ 0, %bb.ad ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @big5hkscs_decode(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %.thread198

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 72
  %i.c = getelementptr i8, ptr %4, i64 20         ; 4 uses
  %i.d = getelementptr i8, ptr %4, i64 24         ; 4 uses
  %i.e = getelementptr i8, ptr %4, i64 32         ; 17 uses
  %i.f = getelementptr i8, ptr %4, i64 16         ; 8 uses
  %i.g = getelementptr i8, ptr %4, i64 8          ; 8 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bd
  %i.h = phi ptr [ %.pre, %.lr.ph ], [ %storemerge, %bb.bd ] ; 4 uses
  %.0155202 = phi i64 [ %3, %.lr.ph ], [ %.1156, %bb.bd ] ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28    ; 7 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp sgt i8 %i.i, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.j) #8
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread198, label %bb.bd, !llvm.loop !65

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %.0155202, 1
  br i1 %i.n, label %.thread198, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i8 %i.i, 55
  %or.cond = icmp ult i8 %i.o, -3
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ult i8 %i.i, -57
  br i1 %i.p, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.h, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = icmp ult i8 %i.r, -95
  br i1 %i.s, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = zext i8 %i.i to i64
  %i.x = getelementptr [16 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.h, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28   ; 3 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.x, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !69  ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %.not172 = icmp ult i8 %i.aa, %i.ad
  br i1 %.not172, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.x, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !70
  %.not173 = icmp ugt i8 %i.aa, %i.ag
  br i1 %.not173, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = sub nuw nsw i64 %i.ab, %i.ae
  %i.ai = getelementptr [2 x i8], ptr %i.y, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !34 ; 2 uses
  %.not174 = icmp eq i16 %i.aj, -2
  br i1 %.not174, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = zext i16 %i.aj to i32
  %i.al = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ak) #8
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread198, label %bb.bd, !llvm.loop !65

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.g, %bb.f
  %i.an = zext i8 %i.i to i64
  %i.ao = getelementptr [16 x i8], ptr @big5hkscs_decmap, i64 %i.an ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !68 ; 2 uses
  %.not175 = icmp eq ptr %i.ap, null
  %.phi.trans.insert = getelementptr i8, ptr %i.h, i64 1
  %.pre225 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !28 ; 4 uses
  br i1 %.not175, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = zext i8 %.pre225 to i32                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !69  ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %.not176 = icmp ult i8 %.pre225, %i.ar
  br i1 %.not176, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr i8, ptr %i.ao, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !70
  %.not177 = icmp ugt i8 %.pre225, %i.au
  br i1 %.not177, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = sub nuw nsw i32 %5, %i.as
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr [2 x i8], ptr %i.ap, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !34 ; 2 uses
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %.not178 = icmp eq i16 %i.ay, -2
  br i1 %.not178, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = mul nuw nsw i32 %i.j, 191
  %i.bb = add nuw nsw i32 %i.ba, %5               ; 3 uses
  %i.bc = add nsw i32 %i.bb, -25849               ; 2 uses
  %or.cond7 = icmp ult i32 %i.bc, 4966
  br i1 %or.cond7, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.bb, -37979               ; 2 uses
  %or.cond9 = icmp ult i32 %i.bd, 476
  br i1 %or.cond9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = add nsw i32 %i.bb, -47773               ; 2 uses
  %or.cond11 = icmp ult i32 %i.be, 996
  br i1 %or.cond11, label %bb.t, label %.thread198

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0147 = phi i32 [ %i.bd, %bb.r ], [ %i.bc, %bb.q ], [ %i.be, %bb.s ] ; 2 uses
  %.0 = phi ptr [ @big5hkscs_phint_12130, %bb.r ], [ @big5hkscs_phint_0, %bb.q ], [ @big5hkscs_phint_21924, %bb.s ]
  %i.bf = lshr i32 %.0147, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %.0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %.0147, 7
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bj
  %.not179 = icmp eq i32 %i.bm, 0
  br i1 %.not179, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = or disjoint i32 %i.az, 131072
  %i.bo = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bn) #8
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread198, label %bb.bd, !llvm.loop !65

bb.v:                                             ; preds = %bb.t
  %i.bq = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.az) #8
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.thread198, label %bb.bd, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.m, %bb.p, %bb.o, %bb.n
  %6 = zext i8 %.pre225 to i16
  %.tr = zext i8 %i.i to i16
  %7 = shl nuw i16 %.tr, 8
  %trunc = or disjoint i16 %7, %6
  switch i16 %trunc, label %.thread198 [
    i16 -30622, label %bb.w
    i16 -30620, label %bb.ae
    i16 -30557, label %bb.am
    i16 -30555, label %bb.au
  ]

bb.w:                                             ; preds = %._crit_edge
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !72
  %i.bt = icmp ugt i32 %i.bs, 771
  br i1 %i.bt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !73
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp sgt i64 %i.bw, 1
  br i1 %i.bx, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.by = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 2, i32 noundef 772) #8
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.thread198, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.y
  %.pre238 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.x
  %i.ca = phi i64 [ %.pre238, %..thread_crit_edge ], [ %i.bv, %bb.x ] ; 6 uses
  %i.cb = load i32, ptr %i.f, align 8, !tbaa !75
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !76  ; 5 uses
  switch i32 %i.cb, label %bb.aa [
    i32 1, label %bb.z
    i32 2, label %PyUnicode_WRITE.exit.thread
  ]

bb.z:                                             ; preds = %.thread
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca
  store i8 -54, ptr %i.cd, align 1, !tbaa !28
  %.pre239 = load ptr, ptr %i.g, align 8, !tbaa !76
  %.pre240 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit.thread:                      ; preds = %.thread
  %i.ce = getelementptr [2 x i8], ptr %i.cc, i64 %i.ca
  store i16 202, ptr %i.ce, align 2, !tbaa !34
  %i.cf = add i64 %i.ca, 1
  br label %bb.ac

bb.aa:                                            ; preds = %.thread
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.ca
  store i32 202, ptr %i.cg, align 4, !tbaa !9
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.z, %bb.aa
  %.ph = phi i64 [ %i.ca, %bb.aa ], [ %.pre240, %bb.z ] ; 3 uses
  %.ph253.a = phi ptr [ %i.cc, %bb.aa ], [ %.pre239, %bb.z ] ; 3 uses
  %.pr = load i32, ptr %i.f, align 8, !tbaa !75
  %i.ch = add i64 %.ph, 1                         ; 3 uses
  switch i32 %.pr, label %bb.ad [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %PyUnicode_WRITE.exit
  %i.ci = getelementptr i8, ptr %.ph253.a, i64 %i.ch
  store i8 4, ptr %i.ci, align 1, !tbaa !28
  %.pre241 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %bb.bc

bb.ac:                                            ; preds = %PyUnicode_WRITE.exit.thread, %PyUnicode_WRITE.exit
  %i.cj = phi i64 [ %i.cf, %PyUnicode_WRITE.exit.thread ], [ %i.ch, %PyUnicode_WRITE.exit ]
  %i.ck = phi ptr [ %i.cc, %PyUnicode_WRITE.exit.thread ], [ %.ph253.a, %PyUnicode_WRITE.exit ]
  %i.cl = phi i64 [ %i.ca, %PyUnicode_WRITE.exit.thread ], [ %.ph, %PyUnicode_WRITE.exit ]
  %i.cm = getelementptr [2 x i8], ptr %i.ck, i64 %i.cj
  store i16 772, ptr %i.cm, align 2, !tbaa !34
  br label %bb.bc

bb.ad:                                            ; preds = %PyUnicode_WRITE.exit
  %i.cn = getelementptr [4 x i8], ptr %.ph253.a, i64 %i.ch
  store i32 772, ptr %i.cn, align 4, !tbaa !9
  br label %bb.bc

bb.ae:                                            ; preds = %._crit_edge
  %i.co = load i32, ptr %i.c, align 4, !tbaa !72
  %i.cp = icmp ugt i32 %i.co, 779
  br i1 %i.cp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !73
  %i.cr = load i64, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp sgt i64 %i.cs, 1
  br i1 %i.ct, label %.thread189, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cu = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 2, i32 noundef 780) #8
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread198, label %..thread189_crit_edge

..thread189_crit_edge:                            ; preds = %bb.ag
  %.pre234 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %.thread189

.thread189:                                       ; preds = %..thread189_crit_edge, %bb.af
  %i.cw = phi i64 [ %.pre234, %..thread189_crit_edge ], [ %i.cr, %bb.af ] ; 6 uses
  %i.cx = load i32, ptr %i.f, align 8, !tbaa !75
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !76  ; 5 uses
  switch i32 %i.cx, label %bb.ai [
    i32 1, label %bb.ah
    i32 2, label %PyUnicode_WRITE.exit181.thread
  ]

bb.ah:                                            ; preds = %.thread189
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  store i8 -54, ptr %i.cz, align 1, !tbaa !28
  %.pre235 = load ptr, ptr %i.g, align 8, !tbaa !76
  %.pre236 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %PyUnicode_WRITE.exit181

PyUnicode_WRITE.exit181.thread:                   ; preds = %.thread189
  %i.da = getelementptr [2 x i8], ptr %i.cy, i64 %i.cw
  store i16 202, ptr %i.da, align 2, !tbaa !34
  %i.db = add i64 %i.cw, 1
  br label %bb.ak

bb.ai:                                            ; preds = %.thread189
  %i.dc = getelementptr [4 x i8], ptr %i.cy, i64 %i.cw
  store i32 202, ptr %i.dc, align 4, !tbaa !9
  br label %PyUnicode_WRITE.exit181

PyUnicode_WRITE.exit181:                          ; preds = %bb.ah, %bb.ai
  %.ph254.a = phi i64 [ %i.cw, %bb.ai ], [ %.pre236, %bb.ah ] ; 3 uses
  %.ph255 = phi ptr [ %i.cy, %bb.ai ], [ %.pre235, %bb.ah ] ; 3 uses
  %.pr256 = load i32, ptr %i.f, align 8, !tbaa !75
  %i.dd = add i64 %.ph254.a, 1                    ; 3 uses
  switch i32 %.pr256, label %bb.al [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %PyUnicode_WRITE.exit181
  %i.de = getelementptr i8, ptr %.ph255, i64 %i.dd
  store i8 12, ptr %i.de, align 1, !tbaa !28
  %.pre237 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %bb.bc

bb.ak:                                            ; preds = %PyUnicode_WRITE.exit181.thread, %PyUnicode_WRITE.exit181
  %i.df = phi i64 [ %i.db, %PyUnicode_WRITE.exit181.thread ], [ %i.dd, %PyUnicode_WRITE.exit181 ]
  %i.dg = phi ptr [ %i.cy, %PyUnicode_WRITE.exit181.thread ], [ %.ph255, %PyUnicode_WRITE.exit181 ]
  %i.dh = phi i64 [ %i.cw, %PyUnicode_WRITE.exit181.thread ], [ %.ph254.a, %PyUnicode_WRITE.exit181 ]
  %i.di = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 780, ptr %i.di, align 2, !tbaa !34
  br label %bb.bc

bb.al:                                            ; preds = %PyUnicode_WRITE.exit181
  %i.dj = getelementptr [4 x i8], ptr %.ph255, i64 %i.dd
  store i32 780, ptr %i.dj, align 4, !tbaa !9
  br label %bb.bc

bb.am:                                            ; preds = %._crit_edge
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !72
  %i.dl = icmp ugt i32 %i.dk, 771
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = load i64, ptr %i.d, align 8, !tbaa !73
  %i.dn = load i64, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp sgt i64 %i.do, 1
  br i1 %i.dp, label %.thread192, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.dq = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 2, i32 noundef 772) #8
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %.thread198, label %..thread192_crit_edge

..thread192_crit_edge:                            ; preds = %bb.ao
  %.pre230 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %.thread192

.thread192:                                       ; preds = %..thread192_crit_edge, %bb.an
  %i.ds = phi i64 [ %.pre230, %..thread192_crit_edge ], [ %i.dn, %bb.an ] ; 6 uses
  %i.dt = load i32, ptr %i.f, align 8, !tbaa !75
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !76  ; 5 uses
  switch i32 %i.dt, label %bb.aq [
    i32 1, label %bb.ap
    i32 2, label %PyUnicode_WRITE.exit183.thread
  ]

bb.ap:                                            ; preds = %.thread192
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.ds
  store i8 -22, ptr %i.dv, align 1, !tbaa !28
  %.pre231 = load ptr, ptr %i.g, align 8, !tbaa !76
  %.pre232 = load i64, ptr %i.e, align 8, !tbaa !74
  br label %PyUnicode_WRITE.exit183

PyUnicode_WRITE.exit183.thread:                   ; preds = %.thread192
  %i.dw = getelementptr [2 x i8], ptr %i.du, i64 %i.ds
end_hunk_0
