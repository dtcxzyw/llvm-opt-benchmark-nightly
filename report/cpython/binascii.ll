inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@binascii_b2a_uu:bb.a
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %bc.resume.val52, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction59 = add nsw <4 x i32> %broadcast.splat58, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind61 = phi <4 x i32> [ %induction59, %vec.epilog.ph ], [ %vec.ind.next64, %vec.epilog.vector.body ] ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.19.i, i64 %index60
  %i.cw = add nsw <4 x i32> %vec.ind61, splat (i32 -6)
  %i.cx = lshr <4 x i32> %broadcast.splat56, %i.cw ; 2 uses
  %i.cy = and <4 x i32> %i.cx, splat (i32 63)
  %i.cz = icmp eq <4 x i32> %i.cy, zeroinitializer
  %i.da = trunc <4 x i32> %i.cx to <4 x i8>
  %i.db = and <4 x i8> %i.da, splat (i8 63)
  %i.dc = add nuw nsw <4 x i8> %i.db, splat (i8 32)
  %i.dd = select <4 x i1> %i.cz, <4 x i8> splat (i8 96), <4 x i8> %i.dc
  store <4 x i8> %i.dd, ptr %next.gep62, align 1, !tbaa !16
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %vec.ind.next64 = add nsw <4 x i32> %vec.ind61, splat (i32 -24)
  %i.de = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %n.vec54, %i.ce
  br i1 %cmp.n65, label %._crit_edge.split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.22.i.ph = phi ptr [ %.19.i, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  %.1441.i.ph = phi i32 [ %i.ca, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.22.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1441.i = phi i32 [ %i.df, %.lr.ph.i ], [ %.1441.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.df = add nsw i32 %.1441.i, -6                ; 3 uses
  %i.dg = lshr i32 %.146.i, %i.df                 ; 2 uses
  %i.dh = and i32 %i.dg, 63
  %.not.i = icmp eq i32 %i.dh, 0
  %i.di = trunc i32 %i.dg to i8
  %i.dj = and i8 %i.di, 63
  %i.dk = add nuw nsw i8 %i.dj, 32
  %spec.select.i = select i1 %.not.i, i8 96, i8 %i.dk
  %.3.i = getelementptr i8, ptr %.22.i, i64 1     ; 2 uses
  store i8 %spec.select.i, ptr %.22.i, align 1, !tbaa !16
  %i.dl = icmp samesign ugt i32 %.1441.i, 11
  br i1 %i.dl, label %.lr.ph.i, label %._crit_edge.split.i, !llvm.loop !39

._crit_edge.split.i:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o
  %.144.lcssa.i = phi i32 [ %i.ca, %bb.o ], [ %i.cv, %vec.epilog.middle.block ], [ %i.ci, %middle.block ], [ %i.df, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.19.i, %bb.o ], [ %i.cs, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.dm = add i64 %.0427.i, -1                    ; 2 uses
  %i.dn = getelementptr i8, ptr %.0418.i, i64 1
  %i.do = icmp sgt i64 %i.dm, 0                   ; 2 uses
  %i.dp = icmp ne i32 %.144.lcssa.i, 0
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph11.split.i, label %._crit_edge12.i, !llvm.loop !35

._crit_edge12.i:                                  ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge.split.i ] ; 2 uses
  %i.dr = getelementptr i8, ptr %.1.lcssa.i, i64 1
  store i8 10, ptr %.1.lcssa.i, align 1, !tbaa !16
  %i.ds = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.y, ptr noundef %i.dr) #6
  br label %binascii_b2a_uu_impl.exit

binascii_b2a_uu_impl.exit:                        ; preds = %._crit_edge12.i, %bb.j, %bb.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ], [ %i.ds, %._crit_edge12.i ], [ null, %bb.j ]
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.du, null
  br i1 %.not31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %binascii_b2a_uu_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %binascii_b2a_uu_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_base64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 13 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %.094157.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_base64._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %bb.ay, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.l, ptr noundef %4)
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.ay, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %.thread42, label %bb.f

.thread42:                                        ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.r) #6 ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not37 = icmp eq i64 %i.f, 1
  br i1 %.not37, label %.thread44, label %bb.i

.thread44:                                        ; preds = %bb.h
  %i.u = load ptr, ptr %4, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  br label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi i32 [ %i.s, %bb.h ], [ -1, %bb.f ]    ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = call i32 @PyObject_GetBuffer(ptr noundef %i.y, ptr noundef nonnull %5, i32 noundef 0) #6
  %.not38 = icmp eq i32 %i.z, 0
  br i1 %.not38, label %bb.j, label %bb.ay

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = icmp eq i32 %.0, -1
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread42, %bb.j
  %i.ae = phi i64 [ %i.p, %.thread42 ], [ %i.ac, %bb.j ]
  %i.af = phi ptr [ %i.n, %.thread42 ], [ %i.aa, %bb.j ]
  %i.ag = load ptr, ptr %5, align 8, !tbaa !17
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = zext i1 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %.thread44, %bb.k, %bb.j
  %i.aj = phi i64 [ %i.ae, %bb.k ], [ %i.ac, %bb.j ], [ %i.w, %.thread44 ] ; 2 uses
  %i.ak = phi ptr [ %i.af, %bb.k ], [ %i.aa, %bb.j ], [ %i.u, %.thread44 ]
  %.093.i = phi i32 [ %i.ai, %bb.k ], [ %.0, %bb.j ], [ %i.s, %.thread44 ]
  %i.al = icmp ne i32 %.093.i, 0                  ; 4 uses
  %.not46 = xor i1 %i.al, true
  %i.am = load ptr, ptr %5, align 8
  %i.an = icmp eq ptr %i.am, null
  %or.cond = select i1 %.not46, i1 true, i1 %i.an
  %i.ao = load i64, ptr %.094157.i.sroa.gep, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond49 = select i1 %or.cond, i1 true, i1 %i.ap ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %or.cond49, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.m
  %.094157.i.sroa.phi = phi ptr [ %.094157.i.sroa.gep, %bb.m ], [ inttoptr (i64 16 to ptr), %bb.l ] ; 3 uses
  %.094157.i = phi ptr [ %5, %bb.m ], [ null, %bb.l ] ; 3 uses
  %i.aq = add i64 %i.aj, 3
  %i.ar = lshr i64 %i.aq, 2
  %i.as = mul nuw i64 %i.ar, 3
  %i.at = call ptr @PyBytesWriter_Create(i64 noundef %i.as) #6 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %binascii_a2b_base64_impl.exit, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.av = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.at) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %ignorechar.exit.i, %bb.n
  %.0118.i = phi i64 [ %i.aj, %bb.n ], [ %i.fg, %ignorechar.exit.i ] ; 6 uses
  %.0110.i = phi ptr [ %i.av, %bb.n ], [ %i.fe, %ignorechar.exit.i ] ; 3 uses
  %.0105.i = phi ptr [ %i.ak, %bb.n ], [ %i.ff, %ignorechar.exit.i ] ; 3 uses
  %i.ax = icmp ugt i64 %.0118.i, 3
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = sdiv i64 %.0118.i, 4                    ; 2 uses
  %i.az = icmp sgt i64 %.0118.i, 3
  br i1 %i.az, label %.lr.ph.i.i, label %base64_decode_fast.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.03.i.i = phi i64 [ %i.ck, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ba = shl i64 %.03.i.i, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %.0105.i, i64 %i.ba ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr i8, ptr @table_a2b_base64, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @table_a2b_base64, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16  ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr @table_a2b_base64, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16  ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bb, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr i8, ptr @table_a2b_base64, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16  ; 2 uses
  %i.bv = or i8 %i.bk, %i.bf
  %i.bw = or i8 %i.bv, %i.bp
  %i.bx = or i8 %i.bw, %i.bu
  %.not.i.i.i = icmp ult i8 %i.bx, 64
  br i1 %.not.i.i.i, label %bb.q, label %base64_decode_fast.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.by = mul nuw nsw i64 %.03.i.i, 3
  %i.bz = getelementptr i8, ptr %.0110.i, i64 %i.by ; 3 uses
  %i.ca = shl i8 %i.bf, 2
  %i.cb = lshr i8 %i.bk, 4
  %i.cc = or i8 %i.cb, %i.ca
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !16
  %i.cd = shl i8 %i.bk, 4
  %i.ce = lshr i8 %i.bp, 2
  %i.cf = or i8 %i.ce, %i.cd
  %i.cg = getelementptr i8, ptr %i.bz, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = shl i8 %i.bp, 6
  %i.ci = or disjoint i8 %i.bu, %i.ch
  %i.cj = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  %i.ck = add nuw nsw i64 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.ay
  br i1 %exitcond.not.i.i, label %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !40

.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i: ; preds = %bb.q
  %.pre.i = shl nuw nsw i64 %i.ay, 2
  br label %base64_decode_fast.exit.i, !llvm.loop !40

base64_decode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i
  %.0.lcssa.i.i = phi i64 [ %.pre.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i ], [ %i.ba, %.lr.ph.i.i ]
  %.0.lcssa.i.fr.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.cl = icmp sgt i64 %.0.lcssa.i.fr.i, 0
  %i.cm = lshr exact i64 %.0.lcssa.i.fr.i, 2
  %i.cn = mul nuw nsw i64 %i.cm, 3
  %i.co = call i64 @llvm.smax.i64(i64 %.0.lcssa.i.fr.i, i64 0) ; 2 uses
  %.1119.i = sub nsw i64 %.0118.i, %i.co
  %spec.select.i = select i1 %i.cl, i64 %i.cn, i64 0
  br label %base64_decode_fast.exit.thread.i

base64_decode_fast.exit.thread.i:                 ; preds = %base64_decode_fast.exit.i, %bb.p
  %.1119323.i = phi i64 [ %.0118.i, %bb.p ], [ %.1119.i, %base64_decode_fast.exit.i ]
  %i.cp = phi i64 [ 0, %bb.p ], [ %i.co, %base64_decode_fast.exit.i ]
  %i.cq = phi i64 [ 0, %bb.p ], [ %spec.select.i, %base64_decode_fast.exit.i ]
  %.1111.i = getelementptr i8, ptr %.0110.i, i64 %i.cq
  %.1106.i = getelementptr i8, ptr %.0105.i, i64 %i.cp
  br label %bb.r

bb.r:                                             ; preds = %base64_decode_fast.exit.thread.i, %bb.o
  %.2120.i = phi i64 [ %.1119323.i, %base64_decode_fast.exit.thread.i ], [ %.0118.i, %bb.o ] ; 2 uses
  %.2112.i = phi ptr [ %.1111.i, %base64_decode_fast.exit.thread.i ], [ %.0110.i, %bb.o ] ; 2 uses
  %.2107.i = phi ptr [ %.1106.i, %base64_decode_fast.exit.thread.i ], [ %.0105.i, %bb.o ]
  %.not133250.i = icmp eq i64 %.2120.i, 0
  br i1 %.not133250.i, label %ignorechar.exit.thread198.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.at
  %.095256.i = phi i32 [ %.2.ph.i, %bb.at ], [ 0, %bb.r ] ; 6 uses
  %.097255.i = phi i8 [ %.3100.ph.i, %bb.at ], [ 0, %bb.r ] ; 10 uses
  %.0101254.i = phi i32 [ %.3104.ph.i, %bb.at ], [ 0, %bb.r ] ; 14 uses
  %.3108253.i = phi ptr [ %i.fh, %bb.at ], [ %.2107.i, %bb.r ] ; 4 uses
  %.3113252.i = phi ptr [ %.6.ph.i, %bb.at ], [ %.2112.i, %bb.r ] ; 16 uses
  %.3121251.i = phi i64 [ %i.fi, %bb.at ], [ %.2120.i, %bb.r ] ; 2 uses
  %i.cr = load i8, ptr %.3108253.i, align 1, !tbaa !16 ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 61
  br i1 %i.cs, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %.lr.ph.i
  %i.ct = add i32 %.095256.i, 1                   ; 5 uses
  %i.cu = icmp sgt i32 %.0101254.i, 1             ; 2 uses
  %i.cv = add i32 %.0101254.i, %i.ct              ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cw = icmp slt i32 %i.cv, 5
  %or.cond144.i = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond144.i, label %bb.at, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %or.cond49, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.cy = and i8 %i.cx, 32
  %.not.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.cz = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.da = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.db = call ptr @memchr(ptr noundef %i.cz, i32 noundef 61, i64 noundef %i.da) #7
  %.not11.i.i = icmp eq ptr %i.db, null
  br i1 %.not11.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = or disjoint i8 %i.cx, 32
  store i8 %i.dc, ptr %i.aw, align 1, !tbaa !16
  br label %bb.at

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.dd = icmp eq i32 %.0101254.i, 1
  br i1 %i.dd, label %.thread206.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not139.i = icmp eq ptr %i.de, null
  br i1 %.not139.i, label %ignorechar.exit.thread182.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !10
  %i.dg = icmp eq i32 %.0101254.i, 0
  %i.dh = load ptr, ptr %4, align 8
  %i.di = icmp eq ptr %.3108253.i, %i.dh
  %i.dj = select i1 %i.dg, i1 %i.di, i1 false
  %i.dk = select i1 %i.dj, ptr @.str.29, ptr @.str.30
  call void @PyErr_SetString(ptr noundef %i.df, ptr noundef nonnull %i.dk) #6
  br label %ignorechar.exit.thread182.i

bb.ab:                                            ; preds = %bb.s
  %i.dl = icmp sgt i32 %i.cv, 3
  %or.cond146.i = select i1 %i.cu, i1 %i.dl, i1 false
  br i1 %or.cond146.i, label %ignorechar.exit.thread198.i, label %bb.at

bb.ac:                                            ; preds = %.lr.ph.i
  %i.dm = zext i8 %i.cr to i64
  %i.dn = getelementptr i8, ptr @table_a2b_base64, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16  ; 7 uses
  %i.dp = icmp ugt i8 %i.do, 63
  br i1 %i.dp, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.al, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  br i1 %or.cond49, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = zext i8 %i.cr to i32                    ; 3 uses
  %i.dr = lshr i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds   ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 2 uses
  %i.dv = zext i8 %i.du to i32
  %i.dw = and i32 %i.dq, 7
  %i.dx = shl nuw nsw i32 1, %i.dw                ; 2 uses
  %i.dy = and i32 %i.dx, %i.dv
  %.not.i147.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i147.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.dz = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.ea = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
end_hunk_0
