inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@binascii_a2b_ascii85:bb.a
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %binascii_a2b_ascii85_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %.033, 1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0 = phi i32 [ %i.u, %bb.k ], [ 0, %bb.i ]
  %i.x = getelementptr i8, ptr %i.k, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @PyObject_GetBuffer(ptr noundef %i.y, ptr noundef nonnull %5, i32 noundef 0) #6
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.m, label %binascii_a2b_ascii85_impl.exit

.thread56:                                        ; preds = %bb.h, %bb.e
  %.132.ph = phi i32 [ 0, %bb.e ], [ %i.p, %bb.h ]
  %.val5359 = load ptr, ptr %4, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val5460 = load i64, ptr %i.aa, align 8, !tbaa !22
  br label %bb.w

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %.0, %bb.l ], [ %i.u, %bb.k ]
  %.val53 = load ptr, ptr %4, align 8, !tbaa !17  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val54 = load i64, ptr %i.ab, align 8, !tbaa !22 ; 6 uses
  %.not.i = icmp eq i32 %.1, 0
  br i1 %.not.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp slt i64 %.val54, 2
  br i1 %i.ac, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i64 %.val54, -2                 ; 3 uses
  %i.ae = getelementptr i8, ptr %.val53, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %.not127.i = icmp eq i8 %i.af, 126
  br i1 %.not127.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %.val53, i64 %.val54
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %.not128.i = icmp eq i8 %i.ai, 62
  br i1 %.not128.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.aj = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not134.i = icmp eq ptr %i.aj, null
  br i1 %.not134.i, label %binascii_a2b_ascii85_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.43) #6
  br label %binascii_a2b_ascii85_impl.exit

bb.s:                                             ; preds = %bb.p
  %i.al = icmp samesign ugt i64 %.val54, 3
  br i1 %i.al, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.am = load i8, ptr %.val53, align 1, !tbaa !16
  %i.an = icmp eq i8 %i.am, 60
  br i1 %i.an, label %bb.u, label %.thread50.i

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr i8, ptr %.val53, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = icmp eq i8 %i.ap, 126
  br i1 %i.aq, label %bb.v, label %.thread50.i

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr i8, ptr %.val53, i64 2
  %i.as = add nsw i64 %.val54, -4
  br label %bb.w

.thread50.i:                                      ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.lr.ph.preheader.i

bb.w:                                             ; preds = %.thread56, %bb.v, %bb.s, %bb.m
  %.13264 = phi i32 [ %.031, %bb.v ], [ %.031, %bb.s ], [ %.031, %bb.m ], [ %.132.ph, %.thread56 ] ; 2 uses
  %.0106.i = phi i64 [ %i.as, %bb.v ], [ %i.ad, %bb.s ], [ %.val54, %bb.m ], [ %.val5460, %.thread56 ] ; 3 uses
  %.0104.i = phi ptr [ %i.ar, %bb.v ], [ %.val53, %bb.s ], [ %.val53, %bb.m ], [ %.val5359, %.thread56 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.at = icmp sgt i64 %.0106.i, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.w, %.thread50.i
  %.13263 = phi i32 [ %.031, %.thread50.i ], [ %.13264, %bb.w ] ; 2 uses
  %.010455.i = phi ptr [ %.val53, %.thread50.i ], [ %.0104.i, %bb.w ] ; 4 uses
  %.010654.i = phi i64 [ %i.ad, %.thread50.i ], [ %.0106.i, %bb.w ] ; 6 uses
  %min.iters.check = icmp ult i64 %.010654.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %.010654.i, -4                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi90 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.au = getelementptr i8, ptr %.010455.i, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 2
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !tbaa !16
  %wide.load91 = load <2 x i8>, ptr %i.av, align 1, !tbaa !16
  %i.aw = add <2 x i8> %wide.load, splat (i8 -121)
  %i.ax = add <2 x i8> %wide.load91, splat (i8 -121)
  %i.ay = icmp ult <2 x i8> %i.aw, splat (i8 2)
  %i.az = icmp ult <2 x i8> %i.ax, splat (i8 2)
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = zext <2 x i1> %i.az to <2 x i64>
  %i.bc = add <2 x i64> %vec.phi, %i.ba           ; 2 uses
  %i.bd = add <2 x i64> %vec.phi90, %i.bb         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bd, %i.bc
  %i.bf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.010654.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.010827.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.010926.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.w
  %.13262 = phi i32 [ %.13264, %bb.w ], [ %.13263, %middle.block ], [ %.13263, %.lr.ph.i ]
  %i.bg = phi i1 [ false, %bb.w ], [ true, %middle.block ], [ true, %.lr.ph.i ]
  %.010456.i = phi ptr [ %.0104.i, %bb.w ], [ %.010455.i, %middle.block ], [ %.010455.i, %.lr.ph.i ]
  %.010653.i = phi i64 [ %.0106.i, %bb.w ], [ %.010654.i, %middle.block ], [ %.010654.i, %.lr.ph.i ] ; 2 uses
  %.0109.lcssa.i = phi i64 [ 0, %bb.w ], [ %i.bf, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.bh = add i64 %.010653.i, 4
  %i.bi = sub i64 %i.bh, %.0109.lcssa.i
  %i.bj = udiv i64 %i.bi, 5                       ; 2 uses
  %i.bk = shl nuw i64 %i.bj, 2
  %i.bl = sub i64 9223372036854775804, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = icmp ugt i64 %.0109.lcssa.i, %i.bm
  br i1 %i.bn, label %bb.x, label %bb.z

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.010827.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.010827.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.010926.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010926.i.ph, %.lr.ph.i.preheader ]
  %i.bo = getelementptr i8, ptr %.010455.i, i64 %.010827.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = add i8 %i.bp, -121
  %or.cond.i = icmp ult i8 %i.bq, 2
  %i.br = zext i1 %or.cond.i to i64
  %spec.select.i = add i64 %.010926.i, %i.br      ; 2 uses
  %i.bs = add nuw nsw i64 %.010827.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %.010654.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !48

bb.x:                                             ; preds = %._crit_edge.i
  %i.bt = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.bv, ptr noundef nonnull @.str.44) #6
  br label %bb.aq

bb.z:                                             ; preds = %._crit_edge.i
  %i.bw = add nuw nsw i64 %i.bj, %.0109.lcssa.i
  %i.bx = shl i64 %i.bw, 2
  %i.by = call ptr @PyBytesWriter_Create(i64 noundef %i.bx) #6 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.by) #6 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread16.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  br i1 %i.bg, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.preheader.i
  %i.cc = icmp ne i32 %.13262, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i, %.lr.ph38.i
  %i.ce = phi i1 [ false, %.lr.ph38.i ], [ %i.ee, %.loopexit.i ]
  %i.cf = phi i1 [ true, %.lr.ph38.i ], [ %i.ed, %.loopexit.i ]
  %.09537.i = phi i32 [ 0, %.lr.ph38.i ], [ %.297.i, %.loopexit.i ] ; 4 uses
  %.09836.i = phi i32 [ 0, %.lr.ph38.i ], [ %.2100.i, %.loopexit.i ] ; 5 uses
  %.010135.i = phi ptr [ %i.ca, %.lr.ph38.i ], [ %.2103.i, %.loopexit.i ] ; 9 uses
  %.110534.i = phi ptr [ %.010456.i, %.lr.ph38.i ], [ %i.ec, %.loopexit.i ] ; 2 uses
  %.110733.i = phi i64 [ %.010653.i, %.lr.ph38.i ], [ %i.eb, %.loopexit.i ] ; 4 uses
  %i.cg = call i64 @llvm.smax.i64(i64 %.110733.i, i64 -2)
  %i.ch = call i64 @llvm.smin.i64(i64 %i.cg, i64 1)
  br i1 %i.cf, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i8, ptr %.110534.i, align 1, !tbaa !16 ; 5 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr i8, ptr @table_a2b_base85_a85, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add i8 %i.ci, -33
  %i.co = icmp ult i8 %i.cn, 85
  br i1 %i.co, label %.thread.i, label %bb.ah

.thread.i:                                        ; preds = %bb.ac, %bb.ab
  %.0946.i = phi i32 [ %i.cm, %bb.ac ], [ 84, %bb.ab ] ; 3 uses
  %i.cp = icmp eq i32 %.09537.i, 4
  br i1 %i.cp, label %bb.ad, label %ignorechar.exit.thread.i

bb.ad:                                            ; preds = %.thread.i
  %i.cq = icmp ugt i32 %.09836.i, 50529027
  br i1 %i.cq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = mul nuw i32 %.09836.i, 85               ; 2 uses
  %i.cs = xor i32 %.0946.i, -1
  %i.ct = icmp ugt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.af, label %ignorechar.exit.thread.thread60.i

ignorechar.exit.thread.thread60.i:                ; preds = %bb.ae
  %i.cu = add i32 %.0946.i, %i.cr
  br label %bb.ap

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cv = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not133.i = icmp eq ptr %i.cv, null
  br i1 %.not133.i, label %.thread16.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.cw, ptr noundef nonnull @.str.45) #6
  br label %.thread16.i

bb.ah:                                            ; preds = %bb.ac
  %i.cx = zext i8 %i.ci to i32                    ; 5 uses
  %i.cy = icmp eq i8 %i.ci, 121                   ; 2 uses
  %or.cond4.i = and i1 %i.cc, %i.cy
  %i.cz = icmp eq i8 %i.ci, 122
  %or.cond7.i = or i1 %i.cz, %or.cond4.i
  br i1 %or.cond7.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ce, label %bb.aj, label %.thread9.i

bb.aj:                                            ; preds = %bb.ai
  %i.da = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not131.i = icmp eq ptr %i.da, null
  br i1 %.not131.i, label %.thread16.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !10
  %i.dc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.db, ptr noundef nonnull @.str.46, i32 noundef %i.cx) #6 ; 0 uses
  br label %.thread16.i

.thread9.i:                                       ; preds = %bb.ai
  %i.dd = select i1 %i.cy, i32 538976288, i32 0
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.de = lshr i32 %i.cx, 3
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.a, i64 %i.df   ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = and i32 %i.cx, 7
  %i.dk = shl nuw nsw i32 1, %i.dj                ; 2 uses
  %i.dl = and i32 %i.dk, %i.di
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %bb.am, label %.loopexit.i

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %5, align 8, !tbaa !17
  %i.dn = load i64, ptr %i.cd, align 8, !tbaa !22
  %i.do = call ptr @memchr(ptr noundef %i.dm, i32 noundef %i.cx, i64 noundef %i.dn) #7
  %.not11.i.i = icmp eq ptr %i.do, null
  br i1 %.not11.i.i, label %ignorechar.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = trunc nuw i32 %i.dk to i8
  %i.dq = or i8 %i.dh, %i.dp
  store i8 %i.dq, ptr %i.dg, align 1, !tbaa !16
  br label %.loopexit.i

ignorechar.exit.i:                                ; preds = %bb.am
  %i.dr = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not130.i = icmp eq ptr %i.dr, null
  br i1 %.not130.i, label %.thread16.i, label %bb.ao

bb.ao:                                            ; preds = %ignorechar.exit.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.dt = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ds, ptr noundef nonnull @.str.47, i32 noundef %i.cx) #6 ; 0 uses
  br label %.thread16.i

ignorechar.exit.thread.i:                         ; preds = %.thread.i
  %.pre.i = mul i32 %.09836.i, 85
  %i.du = add i32 %.0946.i, %.pre.i
  %i.dv = add i32 %.09537.i, 1
  br label %.loopexit.i

bb.ap:                                            ; preds = %.thread9.i, %ignorechar.exit.thread.thread60.i
  %.19915.i = phi i32 [ %i.dd, %.thread9.i ], [ %i.cu, %ignorechar.exit.thread.thread60.i ] ; 4 uses
  %i.dw = icmp sgt i64 %.110733.i, -3
  br i1 %i.dw, label %.lr.ph31.preheader.i, label %.loopexit.i

.lr.ph31.preheader.i:                             ; preds = %bb.ap
  %6 = add nsw i64 %i.ch, 2                       ; 2 uses
  %7 = lshr i32 %.19915.i, 24
  %8 = trunc nuw i32 %7 to i8
  %9 = getelementptr i8, ptr %.010135.i, i64 1    ; 2 uses
  store i8 %8, ptr %.010135.i, align 1, !tbaa !16
  %exitcond.not.a = icmp eq i64 %6, 0
  br i1 %exitcond.not.a, label %.loopexit.i, label %.lr.ph31.i.1

.lr.ph31.i.1:                                     ; preds = %.lr.ph31.preheader.i
  %10 = lshr i32 %.19915.i, 16
  %11 = trunc i32 %10 to i8
  %i.dx = getelementptr i8, ptr %.010135.i, i64 2 ; 2 uses
  store i8 %11, ptr %9, align 1, !tbaa !16
  %exitcond.not.1 = icmp eq i64 %6, 1
  br i1 %exitcond.not.1, label %.loopexit.i, label %.lr.ph31.i.2

.lr.ph31.i.2:                                     ; preds = %.lr.ph31.i.1
  %12 = lshr i32 %.19915.i, 8
  %13 = trunc i32 %12 to i8
  %i.dy = getelementptr i8, ptr %.010135.i, i64 3 ; 2 uses
  store i8 %13, ptr %i.dx, align 1, !tbaa !16
  %exitcond.not.2 = icmp eq i64 %.110733.i, 0
  br i1 %exitcond.not.2, label %.loopexit.i, label %.lr.ph31.i.3

.lr.ph31.i.3:                                     ; preds = %.lr.ph31.i.2
  %i.dz = trunc i32 %.19915.i to i8
  %i.ea = getelementptr i8, ptr %.010135.i, i64 4
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph31.preheader.i, %.lr.ph31.i.1, %.lr.ph31.i.2, %.lr.ph31.i.3, %bb.ap, %ignorechar.exit.thread.i, %bb.an, %bb.al
  %.2103.i = phi ptr [ %.010135.i, %ignorechar.exit.thread.i ], [ %.010135.i, %bb.ap ], [ %.010135.i, %bb.an ], [ %.010135.i, %bb.al ], [ %9, %.lr.ph31.preheader.i ], [ %i.dx, %.lr.ph31.i.1 ], [ %i.dy, %.lr.ph31.i.2 ], [ %i.ea, %.lr.ph31.i.3 ] ; 2 uses
  %.2100.i = phi i32 [ %i.du, %ignorechar.exit.thread.i ], [ 0, %bb.ap ], [ %.09836.i, %bb.an ], [ %.09836.i, %bb.al ], [ 0, %.lr.ph31.i.3 ], [ 0, %.lr.ph31.i.2 ], [ 0, %.lr.ph31.i.1 ], [ 0, %.lr.ph31.preheader.i ]
  %.297.i = phi i32 [ %i.dv, %ignorechar.exit.thread.i ], [ 0, %bb.ap ], [ %.09537.i, %bb.an ], [ %.09537.i, %bb.al ], [ 0, %.lr.ph31.i.3 ], [ 0, %.lr.ph31.i.2 ], [ 0, %.lr.ph31.i.1 ], [ 0, %.lr.ph31.preheader.i ] ; 2 uses
  %i.eb = add i64 %.110733.i, -1                  ; 2 uses
  %i.ec = getelementptr i8, ptr %.110534.i, i64 1
  %i.ed = icmp sgt i64 %i.eb, 0                   ; 2 uses
  %i.ee = icmp ne i32 %.297.i, 0                  ; 2 uses
  %i.ef = or i1 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ab, label %._crit_edge39.i, !llvm.loop !49

._crit_edge39.i:                                  ; preds = %.loopexit.i, %.preheader.i
  %.0101.lcssa.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2103.i, %.loopexit.i ]
  %i.eg = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.by, ptr noundef %.0101.lcssa.i) #6
  br label %bb.aq

.thread16.i:                                      ; preds = %bb.ao, %ignorechar.exit.i, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.aa
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.by) #6
  br label %bb.aq

bb.aq:                                            ; preds = %.thread16.i, %._crit_edge39.i, %bb.z, %bb.y, %bb.x
  %.3.i = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.z ], [ null, %.thread16.i ], [ %i.eg, %._crit_edge39.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %binascii_a2b_ascii85_impl.exit

binascii_a2b_ascii85_impl.exit:                   ; preds = %bb.aq, %bb.r, %bb.q, %bb.l, %bb.j, %bb.g, %.thread, %bb.d
  %.034 = phi ptr [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.d ], [ null, %.thread ], [ %.3.i, %bb.aq ], [ null, %bb.r ], [ null, %bb.q ]
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !25
  %.not51 = icmp eq ptr %i.ei, null
  br i1 %.not51, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %binascii_a2b_ascii85_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %binascii_a2b_ascii85_impl.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !25
  %.not52 = icmp eq ptr %i.ek, null
  br i1 %.not52, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @PyBuffer_Release(ptr noundef nonnull %5) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_base85(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @base85_decode_impl(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @table_a2b_base85, ptr noundef nonnull @.str.48)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_base85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_base85._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = call i32 @PyObject_IsTrue(ptr noundef %i.m) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !22
  %i.q = call fastcc ptr @base85_encode_impl(ptr noundef %0, ptr readonly %.val32, i64 %.val33, i32 noundef range(i32 0, -2147483648) %.0, ptr noundef nonnull @table_b2a_base85, ptr noundef nonnull @.str.48)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread, %bb.d, %bb.g
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ %i.q, %bb.g ], [ null, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_z85(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @base85_decode_impl(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @table_a2b_base85_z85, ptr noundef nonnull @.str.52)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_z85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d
end_hunk_0
begin_hunk_1_@binascii_b2a_hex:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_hexlify(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_hexlify._parser, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = call i32 @PyObject_GetBuffer(ptr noundef %i.k, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.thread
  %.not38 = icmp eq i64 %i.e, 0
  br i1 %.not38, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 4 uses
  %.not39 = icmp ne ptr %i.n, null
  %.not40 = icmp eq i64 %i.e, 1
  %or.cond = select i1 %.not39, i1 %.not40, i1 false
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = call i32 @PyLong_AsInt(ptr noundef %i.p) #6 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @PyErr_Occurred() #6
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %.1 = phi ptr [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ null, %bb.e ]
  %.0 = phi i32 [ -1, %bb.h ], [ %i.q, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  %.val43 = load ptr, ptr %4, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val44 = load i64, ptr %i.t, align 8, !tbaa !22
  %i.u = call ptr @_Py_strhex_bytes_with_sep(ptr noundef %.val43, i64 noundef %.val44, ptr noundef %.1, i32 noundef %.0) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread, %bb.d, %bb.i
  %.028 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ %i.u, %bb.i ], [ null, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_unhexlify(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !22
  %i.c = call fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr readonly %.val, i64 %.val4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_crc_hqx(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.15, i64 noundef %2, i64 noundef 2, i64 noundef 2) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 0) #6
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = call i64 @PyLong_AsNativeBytes(ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 23) #6 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ugt i64 %i.g, 4
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !15
  %i.k = call i32 @PyErr_WarnEx(ptr noundef %i.j, ptr noundef nonnull @.str.58, i64 noundef 1) #6
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = load i32, ptr %i.a, align 4, !tbaa !6
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val17 = load i64, ptr %i.n, align 8, !tbaa !22 ; 5 uses
  %i.o = and i32 %i.m, 65535                      ; 4 uses
  %i.p = icmp sgt i64 %.val17, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %binascii_crc_hqx_impl.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %.val = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %xtraiter = and i64 %.val17, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.q = add nsw i64 %.val17, -1
  %i.r = shl nuw nsw i32 %i.o, 8
  %i.s = and i32 %i.r, 65280
  %i.t = lshr i32 %i.o, 8
  %i.u = getelementptr i8, ptr %.val, i64 1
  %i.v = load i8, ptr %.val, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.t, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.s, %i.ab                     ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi i64 [ %.val17, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.072.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %.081.i.unr = phi i32 [ %i.o, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp eq i64 %.val17, 1
  br i1 %i.ad, label %binascii_crc_hqx_impl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.072.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.072.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.081.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.081.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ae = shl nuw nsw i32 %.081.i, 8
  %i.af = and i32 %i.ae, 65280
  %i.ag = lshr i32 %.081.i, 8
  %i.ah = getelementptr i8, ptr %.072.i, i64 1
  %i.ai = load i8, ptr %.072.i, align 1, !tbaa !16
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 %i.ag, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !50
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = xor i32 %i.af, %i.ao
  %i.aq = add nsw i64 %.03.i, -2
  %i.ar = shl nuw nsw i32 %i.ao, 8
  %i.as = and i32 %i.ar, 65280
  %i.at = lshr i32 %i.ap, 8
  %i.au = getelementptr i8, ptr %.072.i, i64 2
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.at, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !50
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.as, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %.03.i, 2
  br i1 %i.bd, label %.lr.ph.i, label %binascii_crc_hqx_impl.exit, !llvm.loop !52

binascii_crc_hqx_impl.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %.08.lcssa.i = phi i32 [ %i.o, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bc, %.lr.ph.i ]
  %i.be = zext nneg i32 %.08.lcssa.i to i64
  %i.bf = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.be) #6
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %binascii_crc_hqx_impl.exit
  %.012 = phi ptr [ null, %bb.c ], [ %i.bf, %binascii_crc_hqx_impl.exit ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  %.not15 = icmp eq ptr %i.bh, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  call void @PyBuffer_Release(ptr noundef nonnull %3) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_crc32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !6
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.16, i64 noundef %2, i64 noundef 1, i64 noundef 2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = call i32 @PyObject_GetBuffer(ptr noundef %i.d, ptr noundef nonnull %3, i32 noundef 0) #6
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = call i64 @PyLong_AsNativeBytes(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 23) #6 ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i64 %i.i, 4
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !15
  %i.m = call i32 @PyErr_WarnEx(ptr noundef %i.l, ptr noundef nonnull @.str.58, i64 noundef 1) #6
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.o = load i32, ptr %i.a, align 4, !tbaa !6    ; 3 uses
  %.val = load ptr, ptr %3, align 8               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val21 = load i64, ptr %i.p, align 8, !tbaa !22 ; 5 uses
  %i.q = icmp sgt i64 %.val21, 5120
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @PyEval_SaveThread() #6
  %i.s = icmp samesign ugt i64 %.val21, 1073741824
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.03.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.o, %bb.i ]
  %.0152.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.val21, %bb.i ]
  %.0161.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.val, %bb.i ] ; 2 uses
  %i.t = zext i32 %.03.i to i64
  %i.u = call i64 @crc32(i64 noundef %i.t, ptr noundef %.0161.i, i32 noundef 1073741824) #6
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr i8, ptr %.0161.i, i64 1073741824 ; 2 uses
  %i.x = add nsw i64 %.0152.i, -1073741824        ; 3 uses
  %i.y = icmp ugt i64 %i.x, 1073741824
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.016.lcssa.i = phi ptr [ %.val, %bb.i ], [ %i.w, %.lr.ph.i ]
  %.015.lcssa.i = phi i64 [ %.val21, %bb.i ], [ %i.x, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.o, %bb.i ], [ %i.v, %.lr.ph.i ]
  %i.z = zext i32 %.0.lcssa.i to i64
  %i.aa = trunc nuw nsw i64 %.015.lcssa.i to i32
  %i.ab = call i64 @crc32(i64 noundef %i.z, ptr noundef %.016.lcssa.i, i32 noundef %i.aa) #6
  call void @PyEval_RestoreThread(ptr noundef %i.r) #6
  br label %binascii_crc32_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = zext i32 %i.o to i64
  %i.ad = trunc i64 %.val21 to i32
  %i.ae = call i64 @crc32(i64 noundef %i.ac, ptr noundef %.val, i32 noundef %i.ad) #6
  br label %binascii_crc32_impl.exit

binascii_crc32_impl.exit:                         ; preds = %._crit_edge.i, %bb.j
  %.1.in.i = phi i64 [ %i.ab, %._crit_edge.i ], [ %i.ae, %bb.j ]
  %i.af = and i64 %.1.in.i, 4294967295            ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967295
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %binascii_crc32_impl.exit
  %i.ah = call ptr @PyErr_Occurred() #6
  %.not18 = icmp eq ptr %i.ah, null
  br i1 %.not18, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %binascii_crc32_impl.exit
  %i.ai = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.af) #6
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.k, %bb.c, %bb.b, %bb.l
  %.015 = phi ptr [ null, %bb.c ], [ null, %bb.k ], [ %i.ai, %bb.l ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %.not19 = icmp eq ptr %i.ak, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  call void @PyBuffer_Release(ptr noundef nonnull %3) #6
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_qp(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = add i64 %2, -1
  %i.f = icmp ult i64 %i.e, 2
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_qp._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %binascii_a2b_qp_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.k, ptr noundef %4)
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %binascii_a2b_qp_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = call i32 @PyObject_IsTrue(ptr noundef %i.n) #6 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %binascii_a2b_qp_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !17  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.q, align 8, !tbaa !22 ; 8 uses
  %i.r = call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef %.val33) #6 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.g
  %i.t = icmp sgt i64 %.val33, 0
  br i1 %i.t, label %.lr.ph12.i, label %._crit_edge.i

.lr.ph12.i:                                       ; preds = %.preheader6.i
  %.not.i = icmp ne i32 %.0, 0
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = call ptr @PyErr_NoMemory() #6            ; 0 uses
  br label %binascii_a2b_qp_impl.exit

bb.i:                                             ; preds = %bb.v, %.lr.ph12.i
  %.08411.i = phi i64 [ 0, %.lr.ph12.i ], [ %.3.i, %bb.v ] ; 7 uses
  %.08510.i = phi i64 [ 0, %.lr.ph12.i ], [ %.186.i, %bb.v ] ; 12 uses
  %i.v = getelementptr i8, ptr %.val32, i64 %.08411.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16    ; 3 uses
  %i.x = icmp eq i8 %i.w, 61
  br i1 %i.x, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i64 %.08411.i, 1                 ; 5 uses
  %.not98.i = icmp slt i64 %i.y, %.val33
  br i1 %.not98.i, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.val32, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 4 uses
  switch i8 %i.aa, label %bb.n [
    i8 61, label %bb.m
    i8 10, label %.critedge.i
    i8 13, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.17.i = phi i64 [ %i.ad, %bb.l ], [ %i.y, %bb.k ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.val32, i64 %.17.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %.not100.i = icmp eq i8 %i.ac, 10
  br i1 %.not100.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nsw i64 %.17.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %.val33
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !54

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %bb.k
  %.2.i = phi i64 [ %i.y, %bb.k ], [ %.17.i, %.lr.ph.i ], [ %.val33, %bb.l ] ; 2 uses
  %i.ae = icmp slt i64 %.2.i, %.val33
  %i.af = zext i1 %i.ae to i64
  %spec.select.i = add i64 %.2.i, %i.af
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.ag = add i64 %.08510.i, 1
  %i.ah = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 61, ptr %i.ah, align 1, !tbaa !16
  %i.ai = add nsw i64 %.08411.i, 2
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.aj = add nsw i64 %.08411.i, 2                ; 2 uses
  %i.ak = icmp slt i64 %i.aj, %.val33
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = add i8 %i.aa, -48
  %or.cond102.i = icmp ult i8 %i.al, 10
  br i1 %or.cond102.i, label %bb.p, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.o
  switch i8 %i.aa, label %bb.r [
    i8 102, label %bb.p
    i8 101, label %bb.p
    i8 100, label %bb.p
    i8 99, label %bb.p
    i8 98, label %bb.p
    i8 97, label %bb.p
    i8 70, label %bb.p
    i8 69, label %bb.p
    i8 68, label %bb.p
    i8 67, label %bb.p
    i8 66, label %bb.p
    i8 65, label %bb.p
  ]

bb.p:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.o
  %i.am = getelementptr i8, ptr %.val32, i64 %i.aj
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %.fr16.i = freeze i8 %i.an                      ; 3 uses
  %i.ao = add i8 %.fr16.i, -48
  %or.cond105.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond105.i, label %bb.q, label %switch.early.test5.i

switch.early.test5.i:                             ; preds = %bb.p
  switch i8 %.fr16.i, label %bb.r [
    i8 102, label %bb.q
    i8 101, label %bb.q
    i8 100, label %bb.q
    i8 99, label %bb.q
    i8 98, label %bb.q
    i8 97, label %bb.q
    i8 70, label %bb.q
    i8 69, label %bb.q
    i8 68, label %bb.q
    i8 67, label %bb.q
    i8 66, label %bb.q
    i8 65, label %bb.q
  ]

bb.q:                                             ; preds = %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %bb.p
  %i.ap = zext nneg i8 %i.aa to i64
  %i.aq = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = shl i8 %i.ar, 4
  %i.at = zext nneg i8 %.fr16.i to i64
  %i.au = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = or i8 %i.as, %i.av
  %i.ax = add nsw i64 %.08411.i, 3
  %i.ay = add i64 %.08510.i, 1
  %i.az = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !16
  br label %bb.v

bb.r:                                             ; preds = %switch.early.test5.i, %switch.early.test.i, %bb.n
  %i.ba = add i64 %.08510.i, 1
  %i.bb = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 61, ptr %i.bb, align 1, !tbaa !16
  br label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.bc = icmp eq i8 %i.w, 95
  %or.cond106.i = and i1 %.not.i, %i.bc
  br i1 %or.cond106.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = add i64 %.08510.i, 1
  %i.be = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 32, ptr %i.be, align 1, !tbaa !16
  %i.bf = add nsw i64 %.08411.i, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bg = getelementptr i8, ptr %i.r, i64 %.08510.i
  store i8 %i.w, ptr %i.bg, align 1, !tbaa !16
  %i.bh = add nsw i64 %.08411.i, 1
  %i.bi = add i64 %.08510.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.m, %.critedge.i
  %.186.i = phi i64 [ %i.bi, %bb.u ], [ %.08510.i, %.critedge.i ], [ %i.ag, %bb.m ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bd, %bb.t ] ; 2 uses
  %.3.i = phi i64 [ %i.bh, %bb.u ], [ %spec.select.i, %.critedge.i ], [ %i.ai, %bb.m ], [ %i.ax, %bb.q ], [ %i.y, %bb.r ], [ %i.bf, %bb.t ] ; 2 uses
  %i.bj = icmp slt i64 %.3.i, %.val33
  br i1 %i.bj, label %bb.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.v, %bb.j, %.preheader6.i
  %.085.lcssa.i = phi i64 [ 0, %.preheader6.i ], [ %.186.i, %bb.v ], [ %.08510.i, %bb.j ]
  %i.bk = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.r, i64 noundef %.085.lcssa.i) #6
  call void @PyMem_Free(ptr noundef nonnull %i.r) #6
  br label %binascii_a2b_qp_impl.exit

binascii_a2b_qp_impl.exit:                        ; preds = %._crit_edge.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ null, %.thread ], [ null, %bb.h ], [ %i.bk, %._crit_edge.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.bm, null
  br i1 %.not31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %binascii_a2b_qp_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %binascii_a2b_qp_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_qp(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2                         ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = add i64 %2, -1
  %i.g = icmp ult i64 %i.f, 4
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_qp._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not48 = icmp eq ptr %i.j, null
  br i1 %.not48, label %binascii_b2a_qp_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %bb.e, label %binascii_b2a_qp_impl.exit

bb.e:                                             ; preds = %.thread
  %.not50 = icmp eq i64 %i.e, 0
  br i1 %.not50, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not51 = icmp eq ptr %i.o, null
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %binascii_b2a_qp_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.d, -2                         ; 2 uses
  %.not52 = icmp eq i64 %i.r, 0
  br i1 %.not52, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.036 = phi i64 [ %i.r, %bb.h ], [ %i.e, %bb.f ]
  %.034 = phi i32 [ %i.p, %bb.h ], [ 0, %bb.f ]   ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.t) #6 ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %binascii_b2a_qp_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %.036, 1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.033 = phi i32 [ %i.u, %bb.k ], [ 1, %bb.i ]
  %i.x = getelementptr i8, ptr %i.k, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @PyObject_IsTrue(ptr noundef %i.y) #6 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %binascii_b2a_qp_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.e
  %.135 = phi i32 [ %.034, %bb.l ], [ %.034, %bb.k ], [ %i.p, %bb.h ], [ 0, %bb.e ]
  %.1 = phi i32 [ %.033, %bb.l ], [ %i.u, %bb.k ], [ 1, %bb.h ], [ 1, %bb.e ]
  %.0 = phi i32 [ %i.z, %bb.l ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.val55 = load ptr, ptr %4, align 8, !tbaa !17  ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val56 = load i64, ptr %i.ab, align 8, !tbaa !22 ; 12 uses
  %i.ac = call ptr @memchr(ptr noundef readonly %.val55, i32 noundef 10, i64 noundef %.val56) #7 ; 2 uses
  %i.ad = icmp ugt ptr %i.ac, %.val55
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %i.ac, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = icmp ne i8 %i.af, 13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not274.i = phi i1 [ true, %bb.m ], [ %i.ag, %bb.n ] ; 6 uses
  %i.ah = icmp sgt i64 %.val56, 0
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.o
  %.not278.i = icmp ne i32 %.0, 0                 ; 3 uses
  %.not279.i = icmp eq i32 %.1, 0                 ; 4 uses
  %.not282.i = icmp eq i32 %.135, 0               ; 2 uses
  %.300.i = select i1 %.not274.i, i64 3, i64 4
  %..i = select i1 %.not274.i, i64 5, i64 6
  br label %bb.q

bb.p:                                             ; preds = %bb.ao
  %i.ai = add i64 %.4.i, %.02396.i                ; 2 uses
  %i.aj = icmp slt i64 %.1223.i, %.val56
  br i1 %i.aj, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.02228.i = phi i64 [ 0, %.lr.ph.i ], [ %.1223.i, %bb.p ] ; 9 uses
  %.02267.i = phi i32 [ 0, %.lr.ph.i ], [ %.3229.i, %bb.p ] ; 6 uses
  %.02396.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.p ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.val55, i64 %.02228.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16  ; 12 uses
  %i.am = icmp ugt i8 %i.al, 126
  %i.an = icmp eq i8 %i.al, 61
  %or.cond293.i = or i1 %i.am, %i.an
  %i.ao = icmp eq i8 %i.al, 95
  %or.cond294.i = and i1 %.not278.i, %i.ao
  %or.cond16.i = or i1 %or.cond293.i, %or.cond294.i
  br i1 %or.cond16.i, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = icmp eq i8 %i.al, 46
  %i.aq = icmp eq i32 %.02267.i, 0
  %or.cond.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i64 %.02228.i, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %.val56
  br i1 %i.as, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr i8, ptr %.val55, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  switch i8 %i.au, label %bb.u [
    i8 10, label %bb.ab
    i8 13, label %bb.ab
    i8 0, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t, %bb.r
  br i1 %.not279.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  switch i8 %i.al, label %bb.y [
    i8 13, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.x
    i8 32, label %bb.x
  ]

bb.w:                                             ; preds = %bb.u
  switch i8 %i.al, label %bb.y [
    i8 9, label %bb.x
    i8 32, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.v, %bb.v
  %i.av = add nsw i64 %.02228.i, 1
  %i.aw = icmp eq i64 %i.av, %.val56
  br i1 %i.aw, label %bb.ab, label %switch.early.test.i

bb.y:                                             ; preds = %bb.w, %bb.v
end_hunk_1
begin_hunk_2_@binascii_b2a_qp:bb.a
    i8 13, label %bb.be
    i8 10, label %bb.be
  ]

bb.ay:                                            ; preds = %switch.early.test310.i
  br i1 %.not282.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  switch i8 %i.cf, label %bb.ba [
    i8 9, label %bb.be
    i8 32, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.au, %bb.au, %.preheader.i
  %i.cs = add i32 %.423011.i, -73
  %i.ct = icmp ult i32 %i.cs, -76
  br i1 %i.ct, label %bb.bb, label %.thread4.i

bb.bb:                                            ; preds = %bb.ba
  %i.cu = add i64 %.02319.i, 1                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bz, i64 %.02319.i
  store i8 61, ptr %i.cv, align 1, !tbaa !16
  br i1 %.not274.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = add i64 %.02319.i, 2
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cu
  store i8 13, ptr %i.cx, align 1, !tbaa !16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1232.i = phi i64 [ %i.cw, %bb.bc ], [ %i.cu, %bb.bb ] ; 2 uses
  %i.cy = add i64 %.1232.i, 1
  %i.cz = getelementptr i8, ptr %i.bz, i64 %.1232.i
  store i8 10, ptr %i.cz, align 1, !tbaa !16
  br label %.thread4.i

.thread4.i:                                       ; preds = %bb.bd, %bb.ba, %bb.as, %bb.as, %bb.as, %bb.ar
  %.2233.i = phi i64 [ %i.cy, %bb.bd ], [ %.02319.i, %bb.ba ], [ %.02319.i, %bb.as ], [ %.02319.i, %bb.as ], [ %.02319.i, %bb.as ], [ %.02319.i, %bb.ar ] ; 2 uses
  %.5.i = phi i32 [ 0, %bb.bd ], [ %.423011.i, %bb.ba ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.ar ]
  %i.da = getelementptr i8, ptr %i.bz, i64 %.2233.i ; 3 uses
  store i8 61, ptr %i.da, align 1, !tbaa !16
  %i.db = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.dc = getelementptr i8, ptr %i.da, i64 1
  %i.dd = zext i8 %i.db to i32                    ; 2 uses
  %i.de = and i32 %i.dd, 15
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr @.str.62, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.di = getelementptr i8, ptr %i.da, i64 2
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !16
  %i.dj = lshr i32 %i.dd, 4
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr @.str.62, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16
  store i8 %i.dm, ptr %i.dc, align 1, !tbaa !16
  %i.dn = add i64 %.2233.i, 3
  %i.do = add nsw i64 %.222412.i, 1
  %i.dp = add nsw i32 %.5.i, 3
  br label %bb.by

bb.be:                                            ; preds = %bb.az, %bb.az, %switch.early.test310.i, %switch.early.test310.i, %bb.ax
  br i1 %.not279.i, label %._crit_edge20.i, label %bb.bf

._crit_edge20.i:                                  ; preds = %bb.be
  %.pre21.i = add nsw i64 %.222412.i, 1
  br label %bb.bq

bb.bf:                                            ; preds = %bb.be
  %i.dq = icmp eq i8 %i.cf, 10
  br i1 %i.dq, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dr = add nsw i64 %.222412.i, 1               ; 4 uses
  %i.ds = icmp slt i64 %i.dr, %.val56
  %i.dt = icmp eq i8 %i.cf, 13
  %or.cond305.i = and i1 %i.ds, %i.dt
  br i1 %or.cond305.i, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.du = getelementptr i8, ptr %.val55, i64 %i.dr
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %i.dw = icmp eq i8 %i.dv, 10
  br i1 %i.dw, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.not275.i = icmp eq i64 %.02319.i, 0
  br i1 %.not275.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dx = getelementptr i8, ptr %i.bz, i64 %.02319.i ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1     ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.dz, label %bb.bl [
    i8 32, label %bb.bk
    i8 9, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  store i8 61, ptr %i.dy, align 1, !tbaa !16
  %i.ea = zext nneg i8 %i.dz to i32               ; 2 uses
  %i.eb = and i32 %i.ea, 15
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr @.str.62, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ef = getelementptr i8, ptr %i.dx, i64 1
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !16
  %i.eg = lshr i32 %i.ea, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr @.str.62, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !16
  store i8 %i.ej, ptr %i.dx, align 1, !tbaa !16
  %i.ek = add i64 %.02319.i, 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.3234.i = phi i64 [ %i.ek, %bb.bk ], [ %.02319.i, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  br i1 %.not274.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.el = add i64 %.3234.i, 1
  %i.em = getelementptr i8, ptr %i.bz, i64 %.3234.i
  store i8 13, ptr %i.em, align 1, !tbaa !16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.4235.i = phi i64 [ %i.el, %bb.bm ], [ %.3234.i, %bb.bl ] ; 2 uses
  %i.en = add i64 %.4235.i, 1                     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.bz, i64 %.4235.i
  store i8 10, ptr %i.eo, align 1, !tbaa !16
  %i.ep = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.eq = icmp eq i8 %i.ep, 13
  br i1 %i.eq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.er = add i64 %.222412.i, 2
  br label %bb.by

bb.bp:                                            ; preds = %bb.bn
  %i.es = add nsw i64 %.222412.i, 1
  br label %bb.by

bb.bq:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge20.i
  %.pre-phi.i = phi i64 [ %.pre21.i, %._crit_edge20.i ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bg ] ; 4 uses
  %.not272.i = icmp eq i64 %.pre-phi.i, %.val56
  br i1 %.not272.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.et = getelementptr i8, ptr %.val55, i64 %.pre-phi.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %.not273.i = icmp ne i8 %i.eu, 10
  %i.ev = add i32 %.423011.i, -75
  %i.ew = icmp ult i32 %i.ev, -76
  %or.cond307.i = select i1 %.not273.i, i1 %i.ew, i1 false
  br i1 %or.cond307.i, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.ex = add i64 %.02319.i, 1                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.bz, i64 %.02319.i
  store i8 61, ptr %i.ey, align 1, !tbaa !16
  br i1 %.not274.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ez = add i64 %.02319.i, 2
  %i.fa = getelementptr i8, ptr %i.bz, i64 %i.ex
  store i8 13, ptr %i.fa, align 1, !tbaa !16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.5236.i = phi i64 [ %i.ez, %bb.bt ], [ %i.ex, %bb.bs ] ; 2 uses
  %i.fb = add i64 %.5236.i, 1
  %i.fc = getelementptr i8, ptr %i.bz, i64 %.5236.i
  store i8 10, ptr %i.fc, align 1, !tbaa !16
  %.pre.pre.i = load i8, ptr %i.ce, align 1, !tbaa !16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br, %bb.bq
  %.pre.i = phi i8 [ %.pre.pre.i, %bb.bu ], [ %i.cf, %bb.bq ], [ %i.cf, %bb.br ] ; 2 uses
  %.6237.i = phi i64 [ %i.fb, %bb.bu ], [ %.02319.i, %bb.bq ], [ %.02319.i, %bb.br ] ; 2 uses
  %.6.i = phi i32 [ 0, %bb.bu ], [ %.423011.i, %bb.bq ], [ %.423011.i, %bb.br ]
  %i.fd = add i32 %.6.i, 1                        ; 2 uses
  %i.fe = icmp eq i8 %.pre.i, 32
  %or.cond32.i = select i1 %.not278.i, i1 %i.fe, i1 false
  %i.ff = add i64 %.6237.i, 1                     ; 2 uses
  %i.fg = getelementptr i8, ptr %i.bz, i64 %.6237.i ; 2 uses
  br i1 %or.cond32.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 95, ptr %i.fg, align 1, !tbaa !16
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i8 %.pre.i, ptr %i.fg, align 1, !tbaa !16
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bp, %bb.bo, %.thread4.i
  %.7238.i = phi i64 [ %i.dn, %.thread4.i ], [ %i.en, %bb.bo ], [ %i.en, %bb.bp ], [ %i.ff, %bb.bw ], [ %i.ff, %bb.bx ] ; 2 uses
  %.7.i = phi i32 [ %i.dp, %.thread4.i ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ %i.fd, %bb.bw ], [ %i.fd, %bb.bx ]
  %.3225.i = phi i64 [ %i.do, %.thread4.i ], [ %i.er, %bb.bo ], [ %i.es, %bb.bp ], [ %.pre-phi.i, %bb.bw ], [ %.pre-phi.i, %bb.bx ] ; 2 uses
  %i.fh = icmp slt i64 %.3225.i, %.val56
  br i1 %i.fh, label %.preheader.i, label %._crit_edge14.i, !llvm.loop !56

._crit_edge14.i:                                  ; preds = %bb.by, %._crit_edge.thread.i
  %i.fi = phi ptr [ %i.cb, %._crit_edge.thread.i ], [ %i.bz, %bb.by ] ; 2 uses
  %.0231.lcssa.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.7238.i, %bb.by ]
  %i.fj = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.fi, i64 noundef %.0231.lcssa.i) #6
  call void @PyMem_Free(ptr noundef nonnull %i.fi) #6
  br label %binascii_b2a_qp_impl.exit

binascii_b2a_qp_impl.exit:                        ; preds = %._crit_edge14.i, %bb.ap, %.thread1.i, %bb.l, %bb.j, %bb.g, %.thread, %bb.d
  %.037 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.d ], [ null, %.thread1.i ], [ null, %bb.ap ], [ %i.fj, %._crit_edge14.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !25
  %.not54 = icmp eq ptr %i.fl, null
  br i1 %.not54, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %binascii_b2a_qp_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %binascii_b2a_qp_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 131073) i32 @ascii_buffer_converter(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @PyBuffer_Release(ptr noundef nonnull %1) #6
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %.val15, i64 168
  %.val16 = load i64, ptr %i.c, align 8, !tbaa !58
  %i.d = and i64 %.val16, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val17 = load i32, ptr %i.e, align 8           ; 2 uses
  %i.f = and i32 %.val17, 64
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.20) #6
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = and i32 %.val17, 32
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !16
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  store ptr %.0.i, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr i8, ptr %1, i64 16
  store i64 %.val18, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %1, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !25
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.m = tail call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #6
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !15
  %.val = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.21, ptr noundef %i.p) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_PyUnicode_DATA.exit, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %_PyUnicode_DATA.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 131072, %bb.i ]
  ret i32 %.0
}

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyLong_Size_t_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_decode_impl(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.d = add i64 %i.c, 4
  %i.e = udiv i64 %i.d, 5
  %i.f = shl nuw i64 %i.e, 2
  %i.g = tail call ptr @PyBytesWriter_Create(i64 noundef %i.f) #6 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.j = icmp sgt i64 %i.c, 0
  br i1 %i.j, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %bb.b, %.loopexit
  %i.k = phi i1 [ %i.bb, %.loopexit ], [ true, %bb.b ]
  %.04885 = phi ptr [ %i.ba, %.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %.05084 = phi i32 [ %.151, %.loopexit ], [ 0, %bb.b ] ; 2 uses
  %.05283 = phi i32 [ %.153, %.loopexit ], [ 0, %bb.b ] ; 3 uses
  %.05482 = phi ptr [ %.2, %.loopexit ], [ %i.i, %bb.b ] ; 7 uses
  %.05781 = phi i64 [ %i.az, %.loopexit ], [ %i.c, %bb.b ] ; 7 uses
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph86
  %i.l = load i8, ptr %.04885, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16    ; 2 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp ult i8 %i.o, 85
  br i1 %i.q, label %.thread, label %bb.i

.thread:                                          ; preds = %.lr.ph86, %bb.c
  %.04967 = phi i32 [ %i.p, %bb.c ], [ 84, %.lr.ph86 ] ; 3 uses
  %i.r = icmp eq i32 %.05084, 4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread
  %i.s = icmp ugt i32 %.05283, 50529027
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul nuw i32 %.05283, 85                  ; 2 uses
  %i.u = xor i32 %.04967, -1
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not64 = icmp eq ptr %i.w, null
  br i1 %.not64, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = load i64, ptr %i.b, align 8, !tbaa !22
  %i.z = sub i64 %i.y, %.05781
  %.fr = freeze i64 %i.z                          ; 2 uses
  %i.aa = srem i64 %.fr, 5
  %i.ab = sub nsw i64 %.fr, %i.aa
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.49, ptr noundef %3, i64 noundef %i.ab) #6 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ad = mul i32 %.05283, 85
  %i.ae = add i32 %.04967, %i.ad
  %i.af = add i32 %.05084, 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %i.ag = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !22
  %i.aj = sub i64 %i.ai, %.05781
  %i.ak = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ah, ptr noundef nonnull @.str.50, ptr noundef %3, i64 noundef %i.aj) #6 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.al = add i32 %.04967, %i.t                   ; 4 uses
  %i.am = icmp sgt i64 %.05781, -3
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.an = lshr i32 %i.al, 24
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr i8, ptr %.05482, i64 1    ; 2 uses
  store i8 %i.ao, ptr %.05482, align 1, !tbaa !16
  %.not100 = icmp eq i64 %.05781, -2
  br i1 %.not100, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aq = lshr i32 %i.al, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr i8, ptr %.05482, i64 2    ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !16
  %i.at = icmp sgt i64 %.05781, -1
  br i1 %i.at, label %.lr.ph.2, label %.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.au = lshr i32 %i.al, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr i8, ptr %.05482, i64 3    ; 2 uses
  store i8 %i.av, ptr %i.as, align 1, !tbaa !16
  %.not101 = icmp eq i64 %.05781, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ax = trunc i32 %i.al to i8
  %i.ay = getelementptr i8, ptr %.05482, i64 4
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.k, %bb.h
  %.2 = phi ptr [ %.05482, %bb.h ], [ %.05482, %bb.k ], [ %i.ap, %.lr.ph ], [ %i.as, %.lr.ph.1 ], [ %i.aw, %.lr.ph.2 ], [ %i.ay, %.lr.ph.3 ] ; 2 uses
  %.153 = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ]
  %.151 = phi i32 [ %i.af, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = add i64 %.05781, -1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %.04885, i64 1
  %i.bb = icmp sgt i64 %i.az, 0                   ; 2 uses
  %i.bc = icmp ne i32 %.151, 0
  %i.bd = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %i.bd, label %.lr.ph86, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.054.lcssa = phi ptr [ %i.i, %bb.b ], [ %.2, %.loopexit ]
  %i.be = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.g, ptr noundef %.054.lcssa) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.j
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.be, %._crit_edge ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_encode_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.16.val, 3
  %i.b = lshr i64 %i.a, 2
  %i.c = mul i64 %i.b, 5                          ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = srem i64 %.16.val, 4                     ; 2 uses
  %.not80 = icmp eq i64 %i.d, 0
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nsw i64 %i.d, -4
  %i.e = add i64 %.neg, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.076 = phi i64 [ %i.c, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = icmp slt i64 %.076, 0
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.51, ptr noundef %3) #6 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyBytesWriter_Create(i64 noundef %.076) #6 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.n = icmp sgt i64 %.16.val, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0703 = phi ptr [ %i.bi, %.lr.ph ], [ %.0.val, %bb.h ] ; 5 uses
  %.0732 = phi ptr [ %i.bg, %.lr.ph ], [ %i.m, %bb.h ] ; 6 uses
  %.0751 = phi i64 [ %i.bh, %.lr.ph ], [ %.16.val, %bb.h ] ; 2 uses
  %i.o = load i8, ptr %.0703, align 1, !tbaa !16
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw i32 %i.p, 24
  %i.r = getelementptr i8, ptr %.0703, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = getelementptr i8, ptr %.0703, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr i8, ptr %.0703, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad            ; 5 uses
  %i.af = urem i32 %i.ae, 85
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = getelementptr i8, ptr %.0732, i64 4
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !16
  %i.ak = udiv i32 %i.ae, 85
  %i.al = urem i32 %i.ak, 85
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = getelementptr i8, ptr %.0732, i64 3
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !16
  %i.aq = udiv i32 %i.ae, 7225
  %i.ar = urem i32 %i.aq, 85
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = getelementptr i8, ptr %.0732, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !16
  %i.aw = udiv i32 %i.ae, 614125
  %.lhs.trunc = trunc nuw nsw i32 %i.aw to i16
  %i.ax = urem i16 %.lhs.trunc, 85
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = getelementptr i8, ptr %.0732, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !16
  %i.bc = udiv i32 %i.ae, 52200625
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  store i8 %i.bf, ptr %.0732, align 1, !tbaa !16
  %i.bg = getelementptr i8, ptr %.0732, i64 5     ; 2 uses
  %i.bh = add nsw i64 %.0751, -4                  ; 2 uses
  %i.bi = getelementptr i8, ptr %.0703, i64 4     ; 2 uses
  %i.bj = icmp samesign ugt i64 %.0751, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.075.lcssa = phi i64 [ %.16.val, %bb.h ], [ %i.bh, %.lr.ph ] ; 4 uses
  %.073.lcssa = phi ptr [ %i.m, %bb.h ], [ %i.bg, %.lr.ph ] ; 7 uses
  %.070.lcssa = phi ptr [ %.0.val, %bb.h ], [ %i.bi, %.lr.ph ] ; 3 uses
  %i.bk = icmp sgt i64 %.075.lcssa, 0
  br i1 %i.bk, label %.preheader.1, label %bb.o

.preheader.1:                                     ; preds = %._crit_edge
  %i.bl = load i8, ptr %.070.lcssa, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.not15 = icmp eq i64 %.075.lcssa, 1
  br i1 %.not15, label %.preheader.2.thread, label %.preheader.2

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.bn = shl nuw nsw i32 %i.bm, 16
  br label %bb.j

.preheader.2:                                     ; preds = %.preheader.1
  %i.bo = getelementptr i8, ptr %.070.lcssa, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bm, 16
  %i.bs = shl nuw nsw i32 %i.bq, 8
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %.075.lcssa, 2
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.2
  %i.bv = getelementptr i8, ptr %.070.lcssa, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bt, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %.preheader.2, %bb.i, %.preheader.2.thread
  %.168.2 = phi i32 [ %i.by, %bb.i ], [ %i.bt, %.preheader.2 ], [ %i.bn, %.preheader.2.thread ]
  %i.bz = shl nuw i32 %.168.2, 8                  ; 5 uses
  %i.ca = add nuw nsw i64 %.075.lcssa, 1
  %i.cb = select i1 %.not, i64 %i.ca, i64 5       ; 4 uses
  %i.cc = icmp samesign ugt i64 %i.cb, 4
  br i1 %i.cc, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.cd = urem i32 %i.bz, 85
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = getelementptr i8, ptr %.073.lcssa, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !16
  br label %.thread18

bb.k:                                             ; preds = %bb.j
  %i.ci = icmp eq i64 %i.cb, 4
  br i1 %i.ci, label %.thread18, label %bb.l

.thread18:                                        ; preds = %bb.k, %.thread
  %i.cj = udiv i32 %i.bz, 85
  %i.ck = urem i32 %i.cj, 85
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = getelementptr i8, ptr %.073.lcssa, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %i.cb, 2
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread18, %bb.l
  %i.cq = udiv i32 %i.bz, 7225
  %i.cr = urem i32 %i.cq, 85
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = getelementptr i8, ptr %.073.lcssa, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = udiv i32 %i.bz, 614125
  %.lhs.trunc19 = trunc nuw nsw i32 %i.cw to i16
  %i.cx = urem i16 %.lhs.trunc19, 85
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.db = getelementptr i8, ptr %.073.lcssa, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !16
  %i.dc = udiv i32 %i.bz, 52200625
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  store i8 %i.df, ptr %.073.lcssa, align 1, !tbaa !16
  %i.dg = getelementptr i8, ptr %.073.lcssa, i64 %i.cb
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.174 = phi ptr [ %i.dg, %bb.n ], [ %.073.lcssa, %._crit_edge ]
  %i.dh = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.k, ptr noundef %.174) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e
  %.2 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.dh, %bb.o ], [ null, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.16.val, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.53) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = ashr exact i64 %.16.val, 1
  %i.f = tail call ptr @PyBytesWriter_Create(i64 noundef %i.e) #6 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.f) #6
  %i.i = icmp sgt i64 %.16.val, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.0294 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.0303 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 %.0294 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16    ; 2 uses
  %i.t = icmp ugt i8 %i.n, 15
  %i.u = icmp ugt i8 %i.s, 15
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = shl nuw i8 %i.n, 4
  %i.z = or disjoint i8 %i.s, %i.y
  %i.aa = add i64 %.0303, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %.0303
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !16
  %i.ac = add i64 %.0294, 2                       ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %.16.val
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.c
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ae, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.2
}

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @_Py_strhex_bytes_with_sep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @binascii_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  %i.d = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.64, ptr noundef %i.c, ptr noundef null) #6 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %i.g) #6
  %.lobit = ashr i32 %i.i, 31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.c ]
  ret i32 %.0
}

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"binascii_state", !12, i64 0, !12, i64 8}
!12 = !{!"p1 _ZTS7_object", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!12, !12, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"", !13, i64 0, !12, i64 8, !19, i64 16, !19, i64 24, !7, i64 32, !7, i64 36, !20, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !13, i64 72}
!19 = !{!"long", !8, i64 0}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!"p1 long", !13, i64 0}
!22 = !{!18, !19, i64 16}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!18, !12, i64 8}
!26 = !{!27, !19, i64 16}
!27 = !{!"PyVarObject", !28, i64 0, !19, i64 16}
!28 = !{!"_object", !8, i64 0, !29, i64 8}
!29 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!30 = distinct !{!30, !24, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !24, !31, !32}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24, !32, !31}
!37 = distinct !{!37, !24, !31, !32}
!38 = distinct !{!38, !24, !31, !32}
!39 = distinct !{!39, !24, !32, !31}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = !{!19, !19, i64 0}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24, !31, !32}
!48 = distinct !{!48, !24, !32, !31}
!49 = distinct !{!49, !24}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !8, i64 0}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = !{!28, !29, i64 8}
!58 = !{!59, !19, i64 168}
!59 = !{!"_typeobject", !27, i64 0, !20, i64 24, !19, i64 32, !19, i64 40, !13, i64 48, !19, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !19, i64 168, !20, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !19, i64 208, !13, i64 216, !13, i64 224, !60, i64 232, !61, i64 240, !62, i64 248, !29, i64 256, !12, i64 264, !13, i64 272, !13, i64 280, !19, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !13, i64 360, !12, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !51, i64 410}
!60 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!61 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!62 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!63 = !{!64, !19, i64 16}
!64 = !{!"", !28, i64 0, !19, i64 16, !19, i64 24, !65, i64 32}
!65 = !{!"_PyUnicodeObject_state", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!66 = !{!59, !20, i64 24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
end_hunk_2
