inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@unicode_expandtabs:bb.a
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.w = icmp sgt i32 %.0, 0                      ; 2 uses
  %i.x = zext i32 %.0 to i64                      ; 6 uses
  br i1 %i.w, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.q
  %.0102.us.i = phi i32 [ %.1.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 2 uses
  %.063101.us.i = phi i64 [ %i.aq, %bb.q ], [ 0, %.lr.ph.i ] ; 4 uses
  %.065100.us.i = phi i64 [ %.166.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 4 uses
  %.06799.us.i = phi i64 [ %.168.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 3 uses
  switch i32 %i.r, label %bb.k [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.y = getelementptr [2 x i8], ptr %.0.i.i, i64 %.063101.us.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !208
  %i.aa = zext i16 %i.z to i32
  br label %PyUnicode_READ.exit.us.i

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 %.063101.us.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = zext i8 %i.ac to i32
  br label %PyUnicode_READ.exit.us.i

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ae = getelementptr [4 x i8], ptr %.0.i.i, i64 %.063101.us.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.us.i

PyUnicode_READ.exit.us.i:                         ; preds = %bb.k, %bb.j, %bb.i
  %.0.i79.us.i = phi i32 [ %i.ad, %bb.j ], [ %i.aa, %bb.i ], [ %i.af, %bb.k ] ; 2 uses
  %i.ag = icmp eq i32 %.0.i79.us.i, 9
  br i1 %i.ag, label %bb.o, label %bb.l

bb.l:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.ah = icmp eq i64 %.065100.us.i, 9223372036854775807
  br i1 %i.ah, label %.split.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add i64 %.06799.us.i, 1
  %i.aj = add nsw i64 %.065100.us.i, 1            ; 2 uses
  switch i32 %.0.i79.us.i, label %bb.q [
    i32 13, label %bb.n
    i32 10, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %bb.q

bb.o:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.ak = srem i64 %.06799.us.i, %i.x
  %i.al = sub nsw i64 %i.x, %i.ak                 ; 3 uses
  %i.am = sub i64 9223372036854775807, %i.al
  %i.an = icmp sgt i64 %.065100.us.i, %i.am
  br i1 %i.an, label %.split.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i64 %i.al, %.06799.us.i
  %i.ap = add i64 %i.al, %.065100.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %.168.us.i = phi i64 [ %i.ao, %bb.p ], [ %i.ai, %bb.m ], [ 0, %bb.n ]
  %.166.us.i = phi i64 [ %i.ap, %bb.p ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %.1.us.i = phi i32 [ 1, %bb.p ], [ %.0102.us.i, %bb.m ], [ %.0102.us.i, %bb.n ] ; 2 uses
  %i.aq = add nuw nsw i64 %.063101.us.i, 1        ; 2 uses
  %exitcond146.not.i = icmp eq i64 %i.aq, %.val.i
  br i1 %exitcond146.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !904

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  switch i32 %i.r, label %PyUnicode_READ.exit.i [
    i32 1, label %PyUnicode_READ.exit.us109.i
    i32 2, label %PyUnicode_READ.exit.us123.i
  ]

PyUnicode_READ.exit.us109.i:                      ; preds = %.lr.ph.split.i, %bb.t
  %.0102.us105.i = phi i32 [ %.1.us113.i, %bb.t ], [ 0, %.lr.ph.split.i ]
  %.063101.us106.i = phi i64 [ %i.aw, %bb.t ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.us107.i = phi i64 [ %.166.us112.i, %bb.t ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.0.i.i, i64 %.063101.us106.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %i.at = icmp eq i8 %i.as, 9
  br i1 %i.at, label %bb.t, label %bb.r

bb.r:                                             ; preds = %PyUnicode_READ.exit.us109.i
  %i.au = icmp eq i64 %.065100.us107.i, 9223372036854775807
  br i1 %i.au, label %.split.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = add nsw i64 %.065100.us107.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %PyUnicode_READ.exit.us109.i
  %.166.us112.i = phi i64 [ %i.av, %bb.s ], [ %.065100.us107.i, %PyUnicode_READ.exit.us109.i ] ; 2 uses
  %.1.us113.i = phi i32 [ %.0102.us105.i, %bb.s ], [ 1, %PyUnicode_READ.exit.us109.i ] ; 2 uses
  %i.aw = add nuw nsw i64 %.063101.us106.i, 1     ; 2 uses
  %exitcond144.not.i = icmp eq i64 %i.aw, %.val.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us109.i, !llvm.loop !904

PyUnicode_READ.exit.us123.i:                      ; preds = %.lr.ph.split.i, %bb.w
  %.0102.us119.i = phi i32 [ %.1.us127.i, %bb.w ], [ 0, %.lr.ph.split.i ]
  %.063101.us120.i = phi i64 [ %i.bc, %bb.w ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.us121.i = phi i64 [ %.166.us126.i, %bb.w ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.ax = getelementptr [2 x i8], ptr %.0.i.i, i64 %.063101.us120.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !208
  %i.az = icmp eq i16 %i.ay, 9
  br i1 %i.az, label %bb.w, label %bb.u

bb.u:                                             ; preds = %PyUnicode_READ.exit.us123.i
  %i.ba = icmp eq i64 %.065100.us121.i, 9223372036854775807
  br i1 %i.ba, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = add nsw i64 %.065100.us121.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %PyUnicode_READ.exit.us123.i
  %.166.us126.i = phi i64 [ %i.bb, %bb.v ], [ %.065100.us121.i, %PyUnicode_READ.exit.us123.i ] ; 2 uses
  %.1.us127.i = phi i32 [ %.0102.us119.i, %bb.v ], [ 1, %PyUnicode_READ.exit.us123.i ] ; 2 uses
  %i.bc = add nuw nsw i64 %.063101.us120.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us123.i, !llvm.loop !904

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.split.i, %bb.z
  %.0102.i = phi i32 [ %.1.i, %bb.z ], [ 0, %.lr.ph.split.i ]
  %.063101.i = phi i64 [ %i.bi, %bb.z ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.i = phi i64 [ %.166.i, %bb.z ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %.0.i.i, i64 %.063101.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = icmp eq i32 %i.be, 9
  br i1 %i.bf, label %bb.z, label %bb.x

bb.x:                                             ; preds = %PyUnicode_READ.exit.i
  %i.bg = icmp eq i64 %.065100.i, 9223372036854775807
  br i1 %i.bg, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = add nsw i64 %.065100.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %PyUnicode_READ.exit.i
  %.166.i = phi i64 [ %i.bh, %bb.y ], [ %.065100.i, %PyUnicode_READ.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.0102.i, %bb.y ], [ 1, %PyUnicode_READ.exit.i ] ; 2 uses
  %i.bi = add nuw nsw i64 %.063101.i, 1           ; 2 uses
  %exitcond145.not.i = icmp eq i64 %i.bi, %.val.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.i, !llvm.loop !904

._crit_edge.i:                                    ; preds = %bb.w, %bb.t, %bb.z, %bb.q
  %.065.lcssa.i = phi i64 [ %.166.us.i, %bb.q ], [ %.166.us112.i, %bb.t ], [ %.166.i, %bb.z ], [ %.166.us126.i, %bb.w ]
  %.0.lcssa.i = phi i32 [ %.1.us.i, %bb.q ], [ %.1.us113.i, %bb.t ], [ %.1.i, %bb.z ], [ %.1.us127.i, %bb.w ]
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %PyUnicode_MAX_CHAR_VALUE.exit.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_PyUnicode_DATA.exit.i
  %i.bj = call fastcc ptr @unicode_result_unchanged(ptr noundef %0), !inline_history !905
  br label %unicode_expandtabs_impl.exit

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %._crit_edge.i
  %i.bk = and i32 %i.p, 64
  %.not.i80.i = icmp eq i32 %i.bk, 0
  %switch.selectcmp.i.i = icmp eq i32 %i.r, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.r, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  %.0.i81.i = select i1 %.not.i80.i, i32 %switch.select6.i.i, i32 127
  %i.bl = call ptr @PyUnicode_New(i64 noundef %.065.lcssa.i, i32 noundef %.0.i81.i), !inline_history !905 ; 16 uses
  %.not77.i = icmp eq ptr %i.bl, null
  br i1 %.not77.i, label %unicode_expandtabs_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 32     ; 2 uses
  %.val.i82.i = load i32, ptr %i.bm, align 8      ; 2 uses
  %i.bn = and i32 %.val.i82.i, 32
  %.not.i83.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i83.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = and i32 %.val.i82.i, 64
  %.not.i.i84.i = icmp eq i32 %i.bo, 0
  %.0.v.i.i85.i = select i1 %.not.i.i84.i, i64 56, i64 40
  %.0.i.i86.i = getelementptr i8, ptr %i.bl, i64 %.0.v.i.i85.i
  br label %_PyUnicode_DATA.exit89.i

bb.ac:                                            ; preds = %bb.aa
  %i.bp = getelementptr i8, ptr %i.bl, i64 56
  %.val4.i88.i = load ptr, ptr %i.bp, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit89.i

_PyUnicode_DATA.exit89.i:                         ; preds = %bb.ac, %bb.ab
  %.0.i87.i = phi ptr [ %.0.i.i86.i, %bb.ab ], [ %.val4.i88.i, %bb.ac ] ; 7 uses
  %.0.i87.i79 = ptrtoint ptr %.0.i87.i to i64     ; 6 uses
  %i.bq = xor i64 %.0.i87.i79, -1
  %i.br = shl nuw nsw i64 %i.x, 1
  %i.bs = add i64 %i.br, %.0.i87.i79
  %i.bt = add i64 %.0.i87.i79, 2
  %4 = xor i64 %.0.i87.i79, -1
  %i.bu = shl nuw nsw i64 %i.x, 2
  %5 = add i64 %i.bu, %.0.i87.i79
  %i.bv = add i64 %.0.i87.i79, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.as, %_PyUnicode_DATA.exit89.i
  %.164134.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %i.ef, %bb.as ] ; 4 uses
  %.2133.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.3.i, %bb.as ] ; 11 uses
  %.269132.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.370.i, %bb.as ] ; 4 uses
  switch i32 %i.r, label %bb.ag [
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bw = getelementptr i8, ptr %.0.i.i, i64 %.164134.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.by = zext i8 %i.bx to i32
  br label %PyUnicode_READ.exit91.i

bb.af:                                            ; preds = %bb.ad
  %i.bz = getelementptr [2 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !208
  %i.cb = zext i16 %i.ca to i32
  br label %PyUnicode_READ.exit91.i

bb.ag:                                            ; preds = %bb.ad
  %i.cc = getelementptr [4 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  br label %PyUnicode_READ.exit91.i

PyUnicode_READ.exit91.i:                          ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i90.i = phi i32 [ %i.by, %bb.ae ], [ %i.cb, %bb.af ], [ %i.cd, %bb.ag ] ; 5 uses
  %i.ce = icmp eq i32 %.0.i90.i, 9
  br i1 %i.ce, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %PyUnicode_READ.exit91.i
  br i1 %i.w, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.cf = srem i64 %.269132.i, %i.x               ; 3 uses
  %i.cg = sub nsw i64 %i.x, %i.cf                 ; 5 uses
  %i.ch = add i64 %i.cg, %.269132.i
  switch i32 %i.r, label %bb.am [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ci = getelementptr i8, ptr %.0.i87.i, i64 %.2133.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ci, i8 32, i64 %i.cg, i1 false)
  br label %_PyUnicode_Fill.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.cj = getelementptr [2 x i8], ptr %.0.i87.i, i64 %.2133.i ; 7 uses
  %i.ck = getelementptr [2 x i8], ptr %i.cj, i64 %i.cg ; 2 uses
  %i.cl = icmp ult ptr %i.cj, %i.ck
  br i1 %i.cl, label %iter.check, label %_PyUnicode_Fill.exit.i

iter.check:                                       ; preds = %bb.ak
  %i.cm = shl i64 %.2133.i, 1                     ; 3 uses
  %i.cn = add i64 %i.bs, %i.cm
  %i.co = shl i64 %i.cf, 1
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = add i64 %i.bt, %i.cm
  %umax = call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq)
  %i.cr = add i64 %umax, %i.bq
  %i.cs = sub i64 %i.cr, %i.cm                    ; 3 uses
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = add nuw i64 %i.ct, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cs, 6
  br i1 %min.iters.check, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i64 %i.cs, 30
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cu, 12
  %n.vec = and i64 %i.cu, -16                     ; 4 uses
  %i.cv = shl i64 %n.vec, 1
  %i.cw = getelementptr i8, ptr %i.cj, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !208
  store <8 x i16> splat (i16 32), ptr %i.cy, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.cu, -4                    ; 3 uses
  %i.da = shl i64 %n.vec82, 1
  %i.db = getelementptr i8, ptr %i.cj, i64 %i.da
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
  %i.dc = shl i64 %index83, 1
  %next.gep84 = getelementptr i8, ptr %i.cj, i64 %i.dc
  store <4 x i16> splat (i16 32), ptr %next.gep84, align 2, !tbaa !208
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.cu, %n.vec82
  br i1 %cmp.n86, label %_PyUnicode_Fill.exit.i, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.cj, %iter.check ], [ %i.cw, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.de, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.029.i.i, align 2, !tbaa !208
  %i.de = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.df = icmp ult ptr %i.de, %i.ck
  br i1 %i.df, label %.lr.ph30.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !908

bb.al:                                            ; preds = %bb.ai
  %i.dg = getelementptr [4 x i8], ptr %.0.i87.i, i64 %.2133.i ; 5 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.cg ; 2 uses
  %i.di = icmp ult ptr %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.preheader, label %_PyUnicode_Fill.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.al
  %i.dj = shl i64 %.2133.i, 2                     ; 3 uses
  %6 = add i64 %5, %i.dj
  %i.dk = shl i64 %i.cf, 2
  %i.dl = sub i64 %6, %i.dk
  %i.dm = add i64 %i.bv, %i.dj
  %umax88 = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dm)
  %i.dn = add i64 %umax88, %4
  %7 = sub i64 %i.dn, %i.dj                       ; 2 uses
  %i.do = lshr i64 %7, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %7, 28
  br i1 %min.iters.check89, label %.lr.ph.i.i.preheader99, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec92 = and i64 %i.dp, 9223372036854775800   ; 3 uses
  %i.dq = shl i64 %n.vec92, 2
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph90
  %index94 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body93 ] ; 2 uses
  %i.ds = shl i64 %index94, 2
  %next.gep95 = getelementptr i8, ptr %i.dg, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep95, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep95, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.dt, align 4, !tbaa !7
  %index.next96 = add nuw i64 %index94, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.du, label %middle.block97, label %vector.body93, !llvm.loop !909

middle.block97:                                   ; preds = %vector.body93
  %cmp.n98 = icmp eq i64 %i.dp, %n.vec92
  br i1 %cmp.n98, label %_PyUnicode_Fill.exit.i, label %.lr.ph.i.i.preheader99

.lr.ph.i.i.preheader99:                           ; preds = %.lr.ph.i.i.preheader, %middle.block97
  %.02628.i.i.ph = phi ptr [ %i.dg, %.lr.ph.i.i.preheader ], [ %i.dr, %middle.block97 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader99, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader99 ] ; 2 uses
  store i32 32, ptr %.02628.i.i, align 4, !tbaa !7
  %i.dv = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.dh
  br i1 %i.dw, label %.lr.ph.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !910

bb.am:                                            ; preds = %bb.ai
  unreachable

_PyUnicode_Fill.exit.i:                           ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block97, %middle.block, %vec.epilog.middle.block, %bb.al, %bb.ak, %bb.aj
  %i.dx = add i64 %i.cg, %.2133.i
  br label %bb.as

bb.an:                                            ; preds = %PyUnicode_READ.exit91.i
  %i.dy = add i64 %.269132.i, 1
  switch i32 %i.r, label %bb.aq [
    i32 1, label %bb.ao
    i32 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dz = trunc i32 %.0.i90.i to i8
  %i.ea = getelementptr i8, ptr %.0.i87.i, i64 %.2133.i
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.eb = trunc i32 %.0.i90.i to i16
  %i.ec = getelementptr [2 x i8], ptr %.0.i87.i, i64 %.2133.i
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.ed = getelementptr [4 x i8], ptr %.0.i87.i, i64 %.2133.i
  store i32 %.0.i90.i, ptr %i.ed, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i

PyUnicode_WRITE.exit.i:                           ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.ee = add i64 %.2133.i, 1                     ; 2 uses
  switch i32 %.0.i90.i, label %bb.as [
    i32 13, label %bb.ar
    i32 10, label %bb.ar
  ]

bb.ar:                                            ; preds = %PyUnicode_WRITE.exit.i, %PyUnicode_WRITE.exit.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %PyUnicode_WRITE.exit.i, %_PyUnicode_Fill.exit.i, %bb.ah
  %.370.i = phi i64 [ %i.ch, %_PyUnicode_Fill.exit.i ], [ %.269132.i, %bb.ah ], [ 0, %bb.ar ], [ %i.dy, %PyUnicode_WRITE.exit.i ]
  %.3.i = phi i64 [ %i.dx, %_PyUnicode_Fill.exit.i ], [ %.2133.i, %bb.ah ], [ %i.ee, %bb.ar ], [ %i.ee, %PyUnicode_WRITE.exit.i ]
  %i.ef = add nuw nsw i64 %.164134.i, 1           ; 2 uses
  %exitcond147.not.i = icmp eq i64 %i.ef, %.val.i
  br i1 %exitcond147.not.i, label %._crit_edge136.i, label %bb.ad, !llvm.loop !911

._crit_edge136.i:                                 ; preds = %bb.as
  %i.eg = getelementptr i8, ptr %i.bl, i64 16
  %.val.i92.i = load i64, ptr %i.eg, align 8, !tbaa !207
  switch i64 %.val.i92.i, label %unicode_expandtabs_impl.exit [
    i64 0, label %bb.at
    i64 1, label %bb.aw
  ]

bb.at:                                            ; preds = %._crit_edge136.i
  %.not26.i.i = icmp eq ptr %i.bl, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i.i, label %unicode_expandtabs_impl.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eh = load i32, ptr %i.bl, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i27.i.i, label %bb.av, label %unicode_expandtabs_impl.exit

bb.av:                                            ; preds = %bb.au
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.bl, align 8, !tbaa !205
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %Py_DECREF.exit28.sink.split.i.i, label %unicode_expandtabs_impl.exit

bb.aw:                                            ; preds = %._crit_edge136.i
  %i.ek = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.el = and i32 %i.ek, 28
  %.not25.i.i = icmp eq i32 %i.el, 4
  br i1 %.not25.i.i, label %bb.ax, label %unicode_expandtabs_impl.exit

bb.ax:                                            ; preds = %bb.aw
  %i.em = and i32 %i.ek, 32
  %.not.i30.i.i = icmp eq i32 %i.em, 0
  br i1 %.not.i30.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.en = and i32 %i.ek, 64
  %.not.i.i.i.i = icmp eq i32 %i.en, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.eo = getelementptr i8, ptr %i.bl, i64 56
  %.val4.i.i.i = load ptr, ptr %i.eo, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.az, %bb.ay
  %.0.i.i93.i = phi ptr [ %.0.i.i.i.i, %bb.ay ], [ %.val4.i.i.i, %bb.az ]
  %i.ep = load i8, ptr %.0.i.i93.i, align 1, !tbaa !205 ; 3 uses
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.eq
  %i.es = and i8 %i.ep, 127
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.et
  %i.ev = icmp slt i8 %i.ep, 0
  %i.ew = select i1 %i.ev, ptr %i.eu, ptr %i.er   ; 5 uses
  %.not.i94.i = icmp eq ptr %i.bl, %i.ew
  br i1 %.not.i94.i, label %unicode_expandtabs_impl.exit, label %bb.ba

bb.ba:                                            ; preds = %_PyUnicode_DATA.exit.i.i
  %i.ex = load i32, ptr %i.bl, align 8, !tbaa !205 ; 2 uses
  %.not.i.i95.i = icmp sgt i32 %i.ex, -1
  br i1 %.not.i.i95.i, label %bb.bb, label %unicode_expandtabs_impl.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.bl, align 8, !tbaa !205
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %Py_DECREF.exit28.sink.split.i.i, label %unicode_expandtabs_impl.exit

Py_DECREF.exit28.sink.split.i.i:                  ; preds = %bb.bb, %bb.av
  %.1.ph.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.av ], [ %i.ew, %bb.bb ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #33, !inline_history !905
  br label %unicode_expandtabs_impl.exit

.split.us.i:                                      ; preds = %bb.u, %bb.r, %bb.x, %bb.o, %bb.l
  %i.fa = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.fa, ptr noundef nonnull @.str.266) #33, !inline_history !905
  br label %unicode_expandtabs_impl.exit

unicode_expandtabs_impl.exit:                     ; preds = %.split.us.i, %Py_DECREF.exit28.sink.split.i.i, %bb.bb, %bb.ba, %_PyUnicode_DATA.exit.i.i, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge136.i, %PyUnicode_MAX_CHAR_VALUE.exit.i, %._crit_edge.thread.i, %bb.e, %bb.c
  %.022 = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ null, %.split.us.i ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit.i ], [ %i.bj, %._crit_edge.thread.i ], [ %i.bl, %._crit_edge136.i ], [ %i.ew, %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.av ], [ %i.bl, %bb.aw ], [ %i.ew, %_PyUnicode_DATA.exit.i.i ], [ %i.ew, %bb.bb ], [ %.1.ph.i.i, %Py_DECREF.exit28.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_find(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !193
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.212, i64 noundef %2, i64 noundef 1, i64 noundef 3) #33
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !194    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val20, 268435456
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.e) #33
  br label %bb.l

end_hunk_0
begin_hunk_1_@pad:bb.a
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i32 %.val, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.o, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.o, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %switch.select6.i, %bb.g ], [ 127, %bb.f ]
  %i.p = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 %3)
  %i.q = add i64 %i.h, %spec.store.select2
  %i.r = tail call ptr @PyUnicode_New(i64 noundef %i.q, i32 noundef %i.p) ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.u, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = and i32 %i.t, 32
  %.not.i44 = icmp eq i32 %i.w, 0
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.t, 64
  %.not.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.r, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.r, i64 56
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.i, %bb.j
  %.0.i45 = phi ptr [ %.0.i.i, %bb.i ], [ %.val4.i, %bb.j ] ; 17 uses
  %.0.i4567 = ptrtoint ptr %.0.i45 to i64         ; 12 uses
  br i1 %i.a, label %_PyUnicode_Fill.exit, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.v, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = trunc i32 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i45, i8 %i.z, i64 %spec.store.select, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = trunc i32 %3 to i16                     ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.ac = icmp ult ptr %.0.i45, %i.ab
  br i1 %i.ac, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.m
  %i.ad = shl nuw i64 %spec.store.select, 1
  %i.ae = add i64 %i.ad, %.0.i4567
  %i.af = add i64 %.0.i4567, 2
  %umax68 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = xor i64 %.0.i4567, -1
  %i.ah = add i64 %umax68, %i.ag                  ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 5 uses
  %min.iters.check70 = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check70, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check71 = icmp ult i64 %i.ah, 30
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph72

vector.ph72:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf73 = and i64 %i.aj, 12
  %n.vec74 = and i64 %i.aj, -16                   ; 4 uses
  %i.ak = shl i64 %n.vec74, 1
  %i.al = getelementptr i8, ptr %.0.i45, i64 %i.ak
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph72
  %index78 = phi i64 [ 0, %vector.ph72 ], [ %index.next80, %vector.body77 ] ; 2 uses
  %i.am = shl i64 %index78, 1
  %next.gep79 = getelementptr i8, ptr %.0.i45, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep79, i64 16
  store <8 x i16> %broadcast.splat76, ptr %next.gep79, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat76, ptr %i.an, align 2, !tbaa !208
  %index.next80 = add nuw i64 %index78, 16        ; 2 uses
  %i.ao = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.ao, label %middle.block81, label %vector.body77, !llvm.loop !968

middle.block81:                                   ; preds = %vector.body77
  %cmp.n82 = icmp eq i64 %i.aj, %n.vec74
  br i1 %cmp.n82, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block81
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf73, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec74, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.aj, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec85, 1
  %i.aq = getelementptr i8, ptr %.0.i45, i64 %i.ap
  %broadcast.splatinsert86 = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat87 = shufflevector <4 x i16> %broadcast.splatinsert86, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.0.i45, i64 %i.ar
  store <4 x i16> %broadcast.splat87, ptr %next.gep89, align 2, !tbaa !208
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.aj, %n.vec85
  br i1 %cmp.n91, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %.0.i45, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.at, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.aa, ptr %.029.i, align 2, !tbaa !208
  %i.at = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.ab
  br i1 %i.au, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !970

bb.n:                                             ; preds = %bb.k
  %i.av = getelementptr [4 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.aw = icmp ult ptr %.0.i45, %i.av
  br i1 %i.aw, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ax = shl i64 %spec.store.select, 2
  %i.ay = add i64 %i.ax, %.0.i4567
  %i.az = add i64 %.0.i4567, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %i.ba = xor i64 %.0.i4567, -1
  %i.bb = add i64 %umax, %i.ba                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %.0.i45, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i45, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader144

.lr.ph.i.preheader144:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %.0.i45, %.lr.ph.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader144, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader144 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bj = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.av
  br i1 %i.bk, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !972

bb.o:                                             ; preds = %bb.k
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block81, %vec.epilog.middle.block, %bb.n, %bb.m, %bb.l, %_PyUnicode_DATA.exit
  %.pre55 = load i64, ptr %i.d, align 8, !tbaa !207 ; 9 uses
  br i1 %i.b, label %_PyUnicode_Fill.exit50, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_Fill.exit
  %i.bl = add i64 %.pre55, %spec.store.select     ; 5 uses
  switch i32 %i.v, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = trunc i32 %3 to i8
  %i.bn = getelementptr i8, ptr %.0.i45, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 %i.bm, i64 %spec.store.select2, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !207
  br label %_PyUnicode_Fill.exit50

bb.r:                                             ; preds = %bb.p
  %i.bo = trunc i32 %3 to i16                     ; 3 uses
  %i.bp = getelementptr [2 x i8], ptr %.0.i45, i64 %i.bl ; 7 uses
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %spec.store.select2 ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.bq
  br i1 %i.br, label %iter.check126, label %_PyUnicode_Fill.exit50

iter.check126:                                    ; preds = %bb.r
  %i.bs = shl nuw i64 %spec.store.select2, 1
  %i.bt = add i64 %i.bs, %.0.i4567
  %i.bu = shl i64 %i.bl, 1                        ; 3 uses
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = add i64 %i.bu, %.0.i4567
  %i.bx = add i64 %i.bw, 2
  %umax108 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bx)
  %i.by = xor i64 %.0.i4567, -1
  %i.bz = add i64 %umax108, %i.by
  %i.ca = sub i64 %i.bz, %i.bu                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = add nuw i64 %i.cb, 1                    ; 5 uses
  %min.iters.check110 = icmp ult i64 %i.ca, 6
  br i1 %min.iters.check110, label %.lr.ph30.i48.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %iter.check126
  %min.iters.check112 = icmp ult i64 %i.ca, 30
  br i1 %min.iters.check112, label %vec.epilog.ph130, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %n.mod.vf114 = and i64 %i.cc, 12
  %n.vec115 = and i64 %i.cc, -16                  ; 4 uses
  %i.cd = shl i64 %n.vec115, 1
  %i.ce = getelementptr i8, ptr %i.bp, i64 %i.cd
  %broadcast.splatinsert116 = insertelement <8 x i16> poison, i16 %i.bo, i64 0
  %broadcast.splat117 = shufflevector <8 x i16> %broadcast.splatinsert116, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.cf = shl i64 %index119, 1
  %next.gep120 = getelementptr i8, ptr %i.bp, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep120, i64 16
  store <8 x i16> %broadcast.splat117, ptr %next.gep120, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat117, ptr %i.cg, align 2, !tbaa !208
  %index.next121 = add nuw i64 %index119, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.ch, label %middle.block122, label %vector.body118, !llvm.loop !973

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.cc, %n.vec115
  br i1 %cmp.n123, label %_PyUnicode_Fill.exit50, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block122
  %min.epilog.iters.check129 = icmp eq i64 %n.mod.vf114, 0
  br i1 %min.epilog.iters.check129, label %.lr.ph30.i48.preheader, label %vec.epilog.ph130, !prof !228

vec.epilog.ph130:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check128
  %vec.epilog.resume.val124 = phi i64 [ %n.vec115, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec132 = and i64 %i.cc, -4                   ; 3 uses
  %i.ci = shl i64 %n.vec132, 1
  %i.cj = getelementptr i8, ptr %i.bp, i64 %i.ci
  %broadcast.splatinsert133 = insertelement <4 x i16> poison, i16 %i.bo, i64 0
  %broadcast.splat134 = shufflevector <4 x i16> %broadcast.splatinsert133, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body135

vec.epilog.vector.body135:                        ; preds = %vec.epilog.vector.body135, %vec.epilog.ph130
  %index136 = phi i64 [ %vec.epilog.resume.val124, %vec.epilog.ph130 ], [ %index.next138, %vec.epilog.vector.body135 ] ; 2 uses
  %i.ck = shl i64 %index136, 1
  %next.gep137 = getelementptr i8, ptr %i.bp, i64 %i.ck
  store <4 x i16> %broadcast.splat134, ptr %next.gep137, align 2, !tbaa !208
  %index.next138 = add nuw i64 %index136, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.cl, label %vec.epilog.middle.block139, label %vec.epilog.vector.body135, !llvm.loop !974

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body135
  %cmp.n140 = icmp eq i64 %i.cc, %n.vec132
  br i1 %cmp.n140, label %_PyUnicode_Fill.exit50, label %.lr.ph30.i48.preheader

.lr.ph30.i48.preheader:                           ; preds = %iter.check126, %vec.epilog.iter.check128, %vec.epilog.middle.block139
  %.029.i49.ph = phi ptr [ %i.bp, %iter.check126 ], [ %i.ce, %vec.epilog.iter.check128 ], [ %i.cj, %vec.epilog.middle.block139 ]
  br label %.lr.ph30.i48

.lr.ph30.i48:                                     ; preds = %.lr.ph30.i48.preheader, %.lr.ph30.i48
  %.029.i49 = phi ptr [ %i.cm, %.lr.ph30.i48 ], [ %.029.i49.ph, %.lr.ph30.i48.preheader ] ; 2 uses
  store i16 %i.bo, ptr %.029.i49, align 2, !tbaa !208
  %i.cm = getelementptr i8, ptr %.029.i49, i64 2  ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.bq
  br i1 %i.cn, label %.lr.ph30.i48, label %_PyUnicode_Fill.exit50, !llvm.loop !975

bb.s:                                             ; preds = %bb.p
  %i.co = getelementptr [4 x i8], ptr %.0.i45, i64 %i.bl ; 5 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %spec.store.select2 ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.i46.preheader, label %_PyUnicode_Fill.exit50

.lr.ph.i46.preheader:                             ; preds = %bb.s
  %i.cr = shl i64 %spec.store.select2, 2
  %4 = add i64 %i.cr, %.0.i4567
  %5 = shl i64 %i.bl, 2                           ; 3 uses
  %i.cs = add i64 %4, %5
  %i.ct = add i64 %5, %.0.i4567
  %i.cu = add i64 %i.ct, 4
  %umax93 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cu)
  %6 = xor i64 %.0.i4567, -1
  %i.cv = add i64 %umax93, %6
  %7 = sub i64 %i.cv, %5                          ; 2 uses
  %i.cw = lshr i64 %7, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check95 = icmp ult i64 %7, 28
  br i1 %min.iters.check95, label %.lr.ph.i46.preheader142, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph.i46.preheader
  %n.vec98 = and i64 %i.cx, 9223372036854775800   ; 3 uses
  %i.cy = shl i64 %n.vec98, 2
  %i.cz = getelementptr i8, ptr %i.co, i64 %i.cy
  %broadcast.splatinsert99 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat100 = shufflevector <4 x i32> %broadcast.splatinsert99, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph96
  %index102 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body101 ] ; 2 uses
  %i.da = shl i64 %index102, 2
  %next.gep103 = getelementptr i8, ptr %i.co, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep103, i64 16
  store <4 x i32> %broadcast.splat100, ptr %next.gep103, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat100, ptr %i.db, align 4, !tbaa !7
  %index.next104 = add nuw i64 %index102, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next104, %n.vec98
  br i1 %i.dc, label %middle.block105, label %vector.body101, !llvm.loop !976

middle.block105:                                  ; preds = %vector.body101
  %cmp.n106 = icmp eq i64 %i.cx, %n.vec98
  br i1 %cmp.n106, label %_PyUnicode_Fill.exit50, label %.lr.ph.i46.preheader142

.lr.ph.i46.preheader142:                          ; preds = %.lr.ph.i46.preheader, %middle.block105
  %.02628.i47.ph = phi ptr [ %i.co, %.lr.ph.i46.preheader ], [ %i.cz, %middle.block105 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader142, %.lr.ph.i46
  %.02628.i47 = phi ptr [ %i.dd, %.lr.ph.i46 ], [ %.02628.i47.ph, %.lr.ph.i46.preheader142 ] ; 2 uses
  store i32 %3, ptr %.02628.i47, align 4, !tbaa !7
  %i.dd = getelementptr i8, ptr %.02628.i47, i64 4 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.cp
  br i1 %i.de, label %.lr.ph.i46, label %_PyUnicode_Fill.exit50, !llvm.loop !977

bb.t:                                             ; preds = %bb.p
  unreachable

_PyUnicode_Fill.exit50:                           ; preds = %.lr.ph.i46, %.lr.ph30.i48, %middle.block105, %middle.block122, %vec.epilog.middle.block139, %bb.s, %bb.r, %bb.q, %_PyUnicode_Fill.exit
  %i.df = phi i64 [ %.pre55, %middle.block122 ], [ %.pre55, %_PyUnicode_Fill.exit ], [ %.pre55, %bb.s ], [ %.pre55, %bb.r ], [ %.pre, %bb.q ], [ %.pre55, %middle.block105 ], [ %.pre55, %vec.epilog.middle.block139 ], [ %.pre55, %.lr.ph30.i48 ], [ %.pre55, %.lr.ph.i46 ]
  %i.dg = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.r, i64 noundef %spec.store.select, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.df, i32 noundef 0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %_PyUnicode_Fill.exit50, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.e ], [ %i.r, %_PyUnicode_Fill.exit50 ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit ]
  ret ptr %.0
}

declare i32 @_PyEval_SliceIndex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_lower(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph35.split.i, label %do_upper_or_lower.exit

.lr.ph35.split.i:                                 ; preds = %bb.a, %._crit_edge.i
  %.02533.i = phi i64 [ %i.ad, %._crit_edge.i ], [ 0, %bb.a ] ; 5 uses
  %.02632.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 3 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph35.split.i
  %i.c = getelementptr i8, ptr %1, i64 %.02533.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit.i

bb.c:                                             ; preds = %.lr.ph35.split.i
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02533.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit.i

bb.d:                                             ; preds = %.lr.ph35.split.i
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02533.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull readonly %1, i64 noundef %2, i64 noundef %.02533.i, i32 noundef %.0.i.i, ptr noundef %i.a) ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %PyUnicode_READ.exit.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.130.i = phi i64 [ %.02632.i, %.lr.ph.preheader.i.new ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.n = load i32, ptr %4, align 4, !tbaa !7
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %..i = call i32 @llvm.umax.i32(i32 %i.n, i32 %i.p)
  store i32 %..i, ptr %4, align 4, !tbaa !7
  %i.q = getelementptr [4 x i8], ptr %3, i64 %.130.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  %i.r = load i32, ptr %4, align 4, !tbaa !7
  %i.s = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 2 uses
  %..i.1 = call i32 @llvm.umax.i32(i32 %i.r, i32 %i.u)
  store i32 %..i.1, ptr %4, align 4, !tbaa !7
  %i.v = add i64 %.130.i, 2                       ; 3 uses
  %i.w = getelementptr [4 x i8], ptr %3, i64 %.130.i
  %i.x = getelementptr i8, ptr %i.w, i64 4
  store i32 %i.u, ptr %i.x, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !978

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.130.i.epil.init = phi i64 [ %.02632.i, %.lr.ph.preheader.i ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i32 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod7)
  %i.y = load i32, ptr %4, align 4, !tbaa !7
  %i.z = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  %..i.epil = call i32 @llvm.umax.i32(i32 %i.y, i32 %i.aa)
  store i32 %..i.epil, ptr %4, align 4, !tbaa !7
  %i.ab = add i64 %.130.i.epil.init, 1
  %i.ac = getelementptr [4 x i8], ptr %3, i64 %.130.i.epil.init
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %PyUnicode_READ.exit.i
  %.1.lcssa.i = phi i64 [ %.02632.i, %PyUnicode_READ.exit.i ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ad = add nuw nsw i64 %.02533.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond60.not.i, label %do_upper_or_lower.exit, label %.lr.ph35.split.i, !llvm.loop !979

do_upper_or_lower.exit:                           ; preds = %._crit_edge.i, %bb.a
  %.026.lcssa.i = phi i64 [ 0, %bb.a ], [ %.1.lcssa.i, %._crit_edge.i ]
  ret i64 %.026.lcssa.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @do_upper_or_lower(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 24 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph35.split.us, label %.lr.ph35.split

.lr.ph35.split.us:                                ; preds = %.lr.ph35
  switch i32 %0, label %PyUnicode_READ.exit.us [
    i32 1, label %PyUnicode_READ.exit.us.us
    i32 2, label %PyUnicode_READ.exit.us.us42
  ]

PyUnicode_READ.exit.us.us:                        ; preds = %.lr.ph35.split.us, %._crit_edge.us.us
  %.02533.us.us = phi i64 [ %i.n, %._crit_edge.us.us ], [ 0, %.lr.ph35.split.us ] ; 2 uses
  %.02632.us.us = phi i64 [ %.1.lcssa.us.us, %._crit_edge.us.us ], [ 0, %.lr.ph35.split.us ] ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 %.02533.us.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.f = call i32 @_PyUnicode_ToUpperFull(i32 noundef %i.e, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %._crit_edge.us.us

.lr.ph.us.us.preheader:                           ; preds = %PyUnicode_READ.exit.us.us
  %wide.trip.count70 = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter113 = and i64 %wide.trip.count70, 1
  %i.h = icmp eq i32 %i.f, 1
  br i1 %i.h, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us.preheader.new

.lr.ph.us.us.preheader.new:                       ; preds = %.lr.ph.us.us.preheader
  %unroll_iter117 = and i64 %wide.trip.count70, 2147483646
  br label %.lr.ph.us.us

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %.lr.ph.us.us
end_hunk_1
