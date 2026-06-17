inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@binascii_b2a_uu:bb.a
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

bb.o:                                             ; preds = %bb.ar, %bb.n
  %.0118.i = phi i64 [ %i.aj, %bb.n ], [ %39, %bb.ar ] ; 6 uses
  %.0110.i = phi ptr [ %i.av, %bb.n ], [ %i.et, %bb.ar ] ; 3 uses
  %.0105.i = phi ptr [ %i.ak, %bb.n ], [ %38, %bb.ar ] ; 3 uses
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
  %.2120.i = phi i64 [ %.1119323.i, %base64_decode_fast.exit.thread.i ], [ %.0118.i, %bb.o ] ; 4 uses
  %.2112.i = phi ptr [ %.1111.i, %base64_decode_fast.exit.thread.i ], [ %.0110.i, %bb.o ] ; 4 uses
  %.2107.i = phi ptr [ %.1106.i, %base64_decode_fast.exit.thread.i ], [ %.0105.i, %bb.o ] ; 4 uses
  %.not133250.i = icmp eq i64 %.2120.i, 0
  br i1 %.not133250.i, label %ignorechar.exit.thread198.i, label %.lr.ph.jt0.i

.lr.ph.i:                                         ; preds = %40
  %6 = load i8, ptr %41, align 1, !tbaa !16       ; 3 uses
  %7 = icmp eq i8 %6, 61
  br i1 %7, label %bb.s, label %14

.lr.ph.jt0.i:                                     ; preds = %bb.r
  %8 = load i8, ptr %.2107.i, align 1, !tbaa !16  ; 3 uses
  %9 = icmp eq i8 %8, 61
  br i1 %9, label %bb.s, label %19

.lr.ph.jt2.i:                                     ; preds = %bb.as
  %10 = load i8, ptr %45, align 1, !tbaa !16      ; 3 uses
  %11 = icmp eq i8 %10, 61
  br i1 %11, label %bb.s, label %24

.lr.ph.jt1.i:                                     ; preds = %ignorechar.exit.i
  %12 = load i8, ptr %i.ez, align 1, !tbaa !16    ; 3 uses
  %13 = icmp eq i8 %12, 61
  br i1 %13, label %bb.s, label %29

.lr.ph.i.a:                                       ; preds = %bb.at
  %i.cr = load i8, ptr %i.fb, align 1, !tbaa !16  ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 61
  br i1 %i.cs, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %.lr.ph.i.a, %.lr.ph.jt1.i, %.lr.ph.jt2.i, %.lr.ph.jt0.i, %.lr.ph.i
  %.3121251346.i = phi i64 [ %.2120.i, %.lr.ph.jt0.i ], [ %46, %.lr.ph.jt2.i ], [ %i.fa, %.lr.ph.jt1.i ], [ %i.fc, %.lr.ph.i.a ], [ %42, %.lr.ph.i ] ; 4 uses
  %.3113252341.i = phi ptr [ %.2112.i, %.lr.ph.jt0.i ], [ %i.ex, %.lr.ph.jt2.i ], [ %.6.ph.jt1.i, %.lr.ph.jt1.i ], [ %51, %.lr.ph.i.a ], [ %.6.ph.i, %.lr.ph.i ] ; 6 uses
  %.3108253334.i = phi ptr [ %.2107.i, %.lr.ph.jt0.i ], [ %45, %.lr.ph.jt2.i ], [ %i.ez, %.lr.ph.jt1.i ], [ %i.fb, %.lr.ph.i.a ], [ %41, %.lr.ph.i ] ; 5 uses
  %.0101254331.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 2, %.lr.ph.jt2.i ], [ 1, %.lr.ph.jt1.i ], [ 3, %.lr.ph.i.a ], [ %.3104.ph.i, %.lr.ph.i ] ; 8 uses
  %.097255326.i = phi i8 [ 0, %.lr.ph.jt0.i ], [ %i.ey, %.lr.ph.jt2.i ], [ %.3100.ph.jt1.i, %.lr.ph.jt1.i ], [ %52, %.lr.ph.i.a ], [ %.3100.ph.i, %.lr.ph.i ] ; 4 uses
  %.095256323.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 0, %.lr.ph.jt2.i ], [ 0, %.lr.ph.jt1.i ], [ 0, %.lr.ph.i.a ], [ %.2.ph.i, %.lr.ph.i ]
  %i.ct = add i32 %.095256323.i, 1                ; 5 uses
  %i.cu = icmp sgt i32 %.0101254331.i, 1          ; 2 uses
  %i.cv = add i32 %i.ct, %.0101254331.i           ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cw = icmp slt i32 %i.cv, 5
  %or.cond144.i = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond144.i, label %40, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %or.cond49, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.cy = and i8 %i.cx, 32
  %.not.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i, label %bb.w, label %40

bb.w:                                             ; preds = %bb.v
  %i.cz = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.da = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.db = call ptr @memchr(ptr noundef %i.cz, i32 noundef 61, i64 noundef %i.da) #7
  %.not11.i.i = icmp eq ptr %i.db, null
  br i1 %.not11.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = or disjoint i8 %i.cx, 32
  store i8 %i.dc, ptr %i.aw, align 1, !tbaa !16
  br label %40

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.dd = icmp eq i32 %.0101254331.i, 1
  br i1 %i.dd, label %.thread206.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not139.i = icmp eq ptr %i.de, null
  br i1 %.not139.i, label %ignorechar.exit.thread182.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !10
  %i.dg = icmp eq i32 %.0101254331.i, 0
  %i.dh = load ptr, ptr %4, align 8
  %i.di = icmp eq ptr %.3108253334.i, %i.dh
  %i.dj = select i1 %i.dg, i1 %i.di, i1 false
  %i.dk = select i1 %i.dj, ptr @.str.29, ptr @.str.30
  call void @PyErr_SetString(ptr noundef %i.df, ptr noundef nonnull %i.dk) #6
  br label %ignorechar.exit.thread182.i

bb.ab:                                            ; preds = %bb.s
  %i.dl = icmp sgt i32 %i.cv, 3
  %or.cond146.i = select i1 %i.cu, i1 %i.dl, i1 false
  br i1 %or.cond146.i, label %ignorechar.exit.thread198.i, label %40

14:                                               ; preds = %.lr.ph.i
  %15 = zext i8 %6 to i64
  %16 = getelementptr i8, ptr @table_a2b_base64, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !16      ; 5 uses
  %18 = icmp ugt i8 %17, 63
  br i1 %18, label %bb.ad, label %bb.ak

19:                                               ; preds = %.lr.ph.jt0.i
  %20 = zext i8 %8 to i64
  %21 = getelementptr i8, ptr @table_a2b_base64, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !16      ; 2 uses
  %23 = icmp ugt i8 %22, 63
  br i1 %23, label %bb.ad, label %ignorechar.exit.i

24:                                               ; preds = %.lr.ph.jt2.i
  %25 = zext i8 %10 to i64
  %26 = getelementptr i8, ptr @table_a2b_base64, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !16      ; 2 uses
  %28 = icmp ugt i8 %27, 63
  br i1 %28, label %bb.ad, label %bb.at

29:                                               ; preds = %.lr.ph.jt1.i
  %30 = zext i8 %12 to i64
  %31 = getelementptr i8, ptr @table_a2b_base64, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !16      ; 2 uses
  %33 = icmp ugt i8 %32, 63
  br i1 %33, label %bb.ad, label %bb.as

bb.ac:                                            ; preds = %.lr.ph.i.a
  %i.dm = zext i8 %i.cr to i64
  %i.dn = getelementptr i8, ptr @table_a2b_base64, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16  ; 2 uses
  %i.dp = icmp ugt i8 %i.do, 63
  br i1 %i.dp, label %bb.ad, label %bb.ar

bb.ad:                                            ; preds = %bb.ac, %29, %24, %19, %14
  %34 = phi i8 [ %8, %19 ], [ %10, %24 ], [ %12, %29 ], [ %i.cr, %bb.ac ], [ %6, %14 ]
  %.3121251347.i = phi i64 [ %.2120.i, %19 ], [ %46, %24 ], [ %i.fa, %29 ], [ %i.fc, %bb.ac ], [ %42, %14 ] ; 3 uses
  %.3113252342.i = phi ptr [ %.2112.i, %19 ], [ %i.ex, %24 ], [ %.6.ph.jt1.i, %29 ], [ %51, %bb.ac ], [ %.6.ph.i, %14 ] ; 3 uses
  %.3108253335.i = phi ptr [ %.2107.i, %19 ], [ %45, %24 ], [ %i.ez, %29 ], [ %i.fb, %bb.ac ], [ %41, %14 ] ; 3 uses
  %.0101254332.i = phi i32 [ 0, %19 ], [ 2, %24 ], [ 1, %29 ], [ 3, %bb.ac ], [ %.3104.ph.i, %14 ] ; 3 uses
  %.097255327.i = phi i8 [ 0, %19 ], [ %i.ey, %24 ], [ %.3100.ph.jt1.i, %29 ], [ %52, %bb.ac ], [ %.3100.ph.i, %14 ] ; 3 uses
  %.095256324.i = phi i32 [ 0, %19 ], [ 0, %24 ], [ 0, %29 ], [ 0, %bb.ac ], [ %.2.ph.i, %14 ] ; 3 uses
  br i1 %i.al, label %bb.ae, label %40

bb.ae:                                            ; preds = %bb.ad
  br i1 %or.cond49, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = zext i8 %34 to i32                      ; 3 uses
  %i.dr = lshr i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds   ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 2 uses
  %i.dv = zext i8 %i.du to i32
  %i.dw = and i32 %i.dq, 7
  %i.dx = shl nuw nsw i32 1, %i.dw                ; 2 uses
  %i.dy = and i32 %i.dx, %i.dv
  %.not.i147.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i147.i, label %bb.ag, label %40

bb.ag:                                            ; preds = %bb.af
  %i.dz = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.ea = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.eb = call ptr @memchr(ptr noundef %i.dz, i32 noundef %i.dq, i64 noundef %i.ea) #7
  %.not11.i149.i = icmp eq ptr %i.eb, null
  br i1 %.not11.i149.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = trunc nuw i32 %i.dx to i8
  %i.ed = or i8 %i.du, %i.ec
  store i8 %i.ed, ptr %i.dt, align 1, !tbaa !16
  br label %40

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %i.ee = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not137.i = icmp eq ptr %i.ee, null
  br i1 %.not137.i, label %ignorechar.exit.thread182.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ef, ptr noundef nonnull @.str.31) #6
  br label %ignorechar.exit.thread182.i

bb.ak:                                            ; preds = %14
  %i.eg = icmp ne i32 %.2.ph.i, 0
  %or.cond.i = and i1 %i.al, %i.eg
  br i1 %or.cond.i, label %bb.al, label %ignorechar.exit154.i

bb.al:                                            ; preds = %bb.ak
  br i1 %or.cond49, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.ei = and i8 %i.eh, 32
  %.not.i151.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i151.i, label %bb.an, label %ignorechar.exit154.i

bb.an:                                            ; preds = %bb.am
  %i.ej = load ptr, ptr %.094157.i, align 8, !tbaa !17
  %i.ek = load i64, ptr %.094157.i.sroa.phi, align 8, !tbaa !22
  %i.el = call ptr @memchr(ptr noundef %i.ej, i32 noundef 61, i64 noundef %i.ek) #7
  %.not11.i153.i = icmp eq ptr %i.el, null
  br i1 %.not11.i153.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.em = or disjoint i8 %i.eh, 32
  store i8 %i.em, ptr %i.aw, align 1, !tbaa !16
  br label %ignorechar.exit154.i

bb.ap:                                            ; preds = %bb.an, %bb.al
  %i.en = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not135.i = icmp eq ptr %i.en, null
  br i1 %.not135.i, label %ignorechar.exit.thread182.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !10
  %i.ep = add i32 %.2.ph.i, %.3104.ph.i
  %i.eq = icmp eq i32 %i.ep, 4
  %i.er = select i1 %i.eq, ptr @.str.32, ptr @.str.33
  call void @PyErr_SetString(ptr noundef %i.eo, ptr noundef nonnull %i.er) #6
  br label %ignorechar.exit.thread182.i

ignorechar.exit154.i:                             ; preds = %bb.ao, %bb.am, %bb.ak
  switch i32 %.3104.ph.i, label %default.unreachable [
    i32 0, label %ignorechar.exit.i
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 3, label %bb.ar
  ]

default.unreachable:                              ; preds = %ignorechar.exit154.i
  unreachable

bb.ar:                                            ; preds = %ignorechar.exit154.i, %bb.ac
  %35 = phi i8 [ %17, %ignorechar.exit154.i ], [ %i.do, %bb.ac ]
  %.3121251348.i = phi i64 [ %42, %ignorechar.exit154.i ], [ %i.fc, %bb.ac ]
  %.3113252343.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %51, %bb.ac ] ; 2 uses
  %36 = phi ptr [ %.3108253340.i, %ignorechar.exit154.i ], [ %.3108253337.i, %bb.ac ]
  %.097255328.i = phi i8 [ %.3100.ph.i, %ignorechar.exit154.i ], [ %52, %bb.ac ]
  %37 = shl i8 %.097255328.i, 6
  %i.es = or disjoint i8 %37, %35
  %i.et = getelementptr i8, ptr %.3113252343.i, i64 1
  store i8 %i.es, ptr %.3113252343.i, align 1, !tbaa !16
  %38 = getelementptr i8, ptr %36, i64 2
  %39 = add i64 %.3121251348.i, -1
  br label %bb.o

40:                                               ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.x, %bb.v, %bb.t
  %.3121251352.i = phi i64 [ %.3121251346.i, %bb.ab ], [ %.3121251346.i, %bb.t ], [ %.3121251347.i, %bb.ad ], [ %.3121251346.i, %bb.x ], [ %.3121251346.i, %bb.v ], [ %.3121251347.i, %bb.af ], [ %.3121251347.i, %bb.ah ]
  %.3108253340.i = phi ptr [ %.3108253334.i, %bb.ab ], [ %.3108253334.i, %bb.t ], [ %.3108253335.i, %bb.ad ], [ %.3108253334.i, %bb.x ], [ %.3108253334.i, %bb.v ], [ %.3108253335.i, %bb.af ], [ %.3108253335.i, %bb.ah ] ; 3 uses
  %.6.ph.i = phi ptr [ %.3113252341.i, %bb.ab ], [ %.3113252341.i, %bb.t ], [ %.3113252342.i, %bb.ad ], [ %.3113252341.i, %bb.x ], [ %.3113252341.i, %bb.v ], [ %.3113252342.i, %bb.af ], [ %.3113252342.i, %bb.ah ] ; 9 uses
  %.3104.ph.i = phi i32 [ %.0101254331.i, %bb.ab ], [ %.0101254331.i, %bb.t ], [ %.0101254332.i, %bb.ad ], [ %.0101254331.i, %bb.x ], [ %.0101254331.i, %bb.v ], [ %.0101254332.i, %bb.af ], [ %.0101254332.i, %bb.ah ] ; 6 uses
  %.3100.ph.i = phi i8 [ %.097255326.i, %bb.ab ], [ %.097255326.i, %bb.t ], [ %.097255327.i, %bb.ad ], [ %.097255326.i, %bb.x ], [ %.097255326.i, %bb.v ], [ %.097255327.i, %bb.af ], [ %.097255327.i, %bb.ah ] ; 5 uses
  %.2.ph.i = phi i32 [ %i.ct, %bb.ab ], [ %i.ct, %bb.t ], [ %.095256324.i, %bb.ad ], [ %i.ct, %bb.x ], [ %i.ct, %bb.v ], [ %.095256324.i, %bb.af ], [ %.095256324.i, %bb.ah ] ; 5 uses
  %41 = getelementptr i8, ptr %.3108253340.i, i64 1 ; 5 uses
  %42 = add i64 %.3121251352.i, -1                ; 7 uses
  %.not133.i = icmp eq i64 %42, 0
  br i1 %.not133.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

bb.as:                                            ; preds = %ignorechar.exit154.i, %29
  %43 = phi i8 [ %17, %ignorechar.exit154.i ], [ %32, %29 ] ; 2 uses
  %.3121251350.i = phi i64 [ %42, %ignorechar.exit154.i ], [ %i.fa, %29 ]
  %.3113252345.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %.6.ph.jt1.i, %29 ] ; 2 uses
  %44 = phi ptr [ %.3108253340.i, %ignorechar.exit154.i ], [ %.3108253339.i, %29 ]
  %.097255330.i = phi i8 [ %.3100.ph.i, %ignorechar.exit154.i ], [ %.3100.ph.jt1.i, %29 ]
  %i.eu = shl nuw i8 %.097255330.i, 2
  %i.ev = lshr i8 %43, 4
  %i.ew = or disjoint i8 %i.eu, %i.ev
  %i.ex = getelementptr i8, ptr %.3113252345.i, i64 1 ; 4 uses
  store i8 %i.ew, ptr %.3113252345.i, align 1, !tbaa !16
  %i.ey = and i8 %43, 15                          ; 3 uses
  %45 = getelementptr i8, ptr %44, i64 2          ; 4 uses
  %46 = add i64 %.3121251350.i, -1                ; 4 uses
  %.not133.jt2.i = icmp eq i64 %46, 0
  br i1 %.not133.jt2.i, label %bb.av, label %.lr.ph.jt2.i, !llvm.loop !41

ignorechar.exit.i:                                ; preds = %ignorechar.exit154.i, %19
  %.3121251351.i = phi i64 [ %42, %ignorechar.exit154.i ], [ %.2120.i, %19 ]
  %.3108253339.i = phi ptr [ %41, %ignorechar.exit154.i ], [ %.2107.i, %19 ] ; 2 uses
  %.6.ph.jt1.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %.2112.i, %19 ] ; 4 uses
  %.3100.ph.jt1.i = phi i8 [ %17, %ignorechar.exit154.i ], [ %22, %19 ] ; 3 uses
  %i.ez = getelementptr i8, ptr %.3108253339.i, i64 1 ; 3 uses
  %i.fa = add i64 %.3121251351.i, -1              ; 4 uses
  %.not133.jt1.i = icmp eq i64 %i.fa, 0
  br i1 %.not133.jt1.i, label %.thread206.i, label %.lr.ph.jt1.i, !llvm.loop !41

bb.at:                                            ; preds = %ignorechar.exit154.i, %24
  %47 = phi i8 [ %17, %ignorechar.exit154.i ], [ %27, %24 ] ; 2 uses
  %.3121251349.i = phi i64 [ %42, %ignorechar.exit154.i ], [ %46, %24 ]
  %.3113252344.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %i.ex, %24 ] ; 2 uses
  %.3108253337.i = phi ptr [ %41, %ignorechar.exit154.i ], [ %45, %24 ] ; 2 uses
  %.097255329.i = phi i8 [ %.3100.ph.i, %ignorechar.exit154.i ], [ %i.ey, %24 ]
  %48 = shl i8 %.097255329.i, 4
  %49 = lshr i8 %47, 2
  %50 = or disjoint i8 %48, %49
  %51 = getelementptr i8, ptr %.3113252344.i, i64 1 ; 4 uses
  store i8 %50, ptr %.3113252344.i, align 1, !tbaa !16
  %52 = and i8 %47, 3                             ; 3 uses
  %i.fb = getelementptr i8, ptr %.3108253337.i, i64 1 ; 3 uses
  %i.fc = add i64 %.3121251349.i, -1              ; 4 uses
  %.not133.i.a = icmp eq i64 %i.fc, 0
  br i1 %.not133.i.a, label %bb.av, label %.lr.ph.i.a, !llvm.loop !41

._crit_edge.i:                                    ; preds = %40
  switch i32 %.3104.ph.i, label %bb.av [
    i32 1, label %.thread206.i
    i32 0, label %ignorechar.exit.thread198.i
  ]

.thread206.i:                                     ; preds = %ignorechar.exit.i, %._crit_edge.i, %bb.y
  %.3113243.i = phi ptr [ %.3113252341.i, %bb.y ], [ %.6.ph.i, %._crit_edge.i ], [ %.6.ph.jt1.i, %ignorechar.exit.i ]
  %i.fd = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not142.i = icmp eq ptr %i.fd, null
  br i1 %.not142.i, label %ignorechar.exit.thread182.i, label %bb.au

bb.au:                                            ; preds = %.thread206.i
  %i.fe = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.at) #6
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !10
  %i.fg = ptrtoint ptr %.3113243.i to i64
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv i64 %i.fi, 3
  %i.fk = shl i64 %i.fj, 2
  %i.fl = or disjoint i64 %i.fk, 1
  %i.fm = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ff, ptr noundef nonnull @.str.34, i64 noundef %i.fl) #6 ; 0 uses
  br label %ignorechar.exit.thread182.i

bb.av:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i
  %.095.lcssa362.i = phi i32 [ %.2.ph.i, %._crit_edge.i ], [ 0, %bb.as ], [ 0, %bb.at ]
  %.0101.lcssa361.i = phi i32 [ %.3104.ph.i, %._crit_edge.i ], [ 3, %bb.at ], [ 2, %bb.as ]
  %.3113.lcssa360.i = phi ptr [ %.6.ph.i, %._crit_edge.i ], [ %51, %bb.at ], [ %i.ex, %bb.as ]
  %i.fn = add i32 %.0101.lcssa361.i, %.095.lcssa362.i
  %i.fo = icmp slt i32 %i.fn, 4
  br i1 %i.fo, label %bb.aw, label %ignorechar.exit.thread198.i

bb.aw:                                            ; preds = %bb.av
  %i.fp = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not141.i = icmp eq ptr %i.fp, null
  br i1 %.not141.i, label %ignorechar.exit.thread182.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.fq, ptr noundef nonnull @.str.35) #6
  br label %ignorechar.exit.thread182.i

ignorechar.exit.thread198.i:                      ; preds = %bb.ab, %bb.r, %bb.av, %._crit_edge.i
  %.3113242.i = phi ptr [ %.3113.lcssa360.i, %bb.av ], [ %.6.ph.i, %._crit_edge.i ], [ %.3113252341.i, %bb.ab ], [ %.2112.i, %bb.r ]
  %i.fr = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.at, ptr noundef %.3113242.i) #6
  br label %binascii_a2b_base64_impl.exit

ignorechar.exit.thread182.i:                      ; preds = %bb.ax, %bb.aw, %bb.au, %.thread206.i, %bb.aq, %bb.ap, %bb.aj, %bb.ai, %bb.aa, %bb.z
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.at) #6
  br label %binascii_a2b_base64_impl.exit

binascii_a2b_base64_impl.exit:                    ; preds = %.thread.i, %ignorechar.exit.thread198.i, %ignorechar.exit.thread182.i
  %.1.i = phi ptr [ null, %.thread.i ], [ %i.fr, %ignorechar.exit.thread198.i ], [ null, %ignorechar.exit.thread182.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ay

bb.ay:                                            ; preds = %bb.i, %bb.g, %.thread, %bb.d, %binascii_a2b_base64_impl.exit
  %.026 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ %.1.i, %binascii_a2b_base64_impl.exit ], [ null, %.thread ], [ null, %bb.d ]
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !25
  %.not39 = icmp eq ptr %i.ft, null
  br i1 %.not39, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !25
  %.not40 = icmp eq ptr %i.fv, null
  br i1 %.not40, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @PyBuffer_Release(ptr noundef nonnull %5) #6
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_base64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !42
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_base64._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %binascii_b2a_base64_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.e, label %binascii_b2a_base64_impl.exit

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @_PyLong_Size_t_Converter(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b) #6
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %binascii_b2a_base64_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not38 = icmp eq i64 %i.f, 1
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = call i32 @PyObject_IsTrue(ptr noundef %i.r) #6 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %binascii_b2a_base64_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ %i.s, %bb.i ], [ 1, %bb.h ], [ 1, %bb.e ]
  %i.u = load i64, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %.val40 = load ptr, ptr %4, align 8, !tbaa !17  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.v, align 8, !tbaa !22 ; 4 uses
  %i.w = add i64 %.val41, 2
  %i.x = udiv i64 %i.w, 3
  %i.y = shl i64 %i.x, 2                          ; 4 uses
  %i.z = icmp ne i64 %i.u, 0
  %i.aa = icmp ne i64 %i.y, 0
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i64 @llvm.umax.i64(i64 %i.u, i64 4)
  %i.ac = and i64 %i.ab, -4                       ; 2 uses
  %i.ad = add i64 %i.y, -1
  %i.ae = udiv i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.062.i = phi i64 [ %i.af, %bb.k ], [ %i.y, %bb.j ]
  %.058.i = phi i64 [ %i.ac, %bb.k ], [ %i.u, %bb.j ] ; 7 uses
  %.not.i = icmp ne i32 %.0, 0                    ; 2 uses
  %i.ag = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.062.i, %i.ag         ; 2 uses
  %i.ah = icmp slt i64 %spec.select.i, 0
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %binascii_b2a_base64_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.38) #6
  br label %binascii_b2a_base64_impl.exit

bb.o:                                             ; preds = %bb.l
  %i.al = call ptr @PyBytesWriter_Create(i64 noundef %spec.select.i) #6 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %binascii_b2a_base64_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.al) #6 ; 2 uses
  %i.ao = srem i64 %.val41, 3                     ; 2 uses
  %i.ap = sdiv i64 %.val41, 3
  %i.aq = sub nsw i64 %.val41, %i.ao
  %i.ar = getelementptr i8, ptr %.val40, i64 %i.aq ; 5 uses
  %i.as = icmp ult ptr %.val40, %i.ar
  br i1 %i.as, label %.lr.ph.i.i, label %base64_encode_fast.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.val40, %bb.p ] ; 4 uses
  %.0101.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %i.an, %bb.p ] ; 5 uses
  %i.at = load i8, ptr %.02.i.i, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = getelementptr i8, ptr %.02.i.i, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8                ; 2 uses
  %i.ba = getelementptr i8, ptr %.02.i.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = or disjoint i32 %i.az, %i.bc
  %i.be = or disjoint i32 %i.az, %i.av
  %i.bf = lshr i32 %i.au, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr @table_b2a_base64, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  store i8 %i.bi, ptr %.0101.i.i, align 1, !tbaa !16
  %i.bj = lshr i32 %i.be, 12
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr @table_b2a_base64, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = getelementptr i8, ptr %.0101.i.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  %i.bp = lshr i32 %i.bd, 6
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr @table_b2a_base64, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr i8, ptr %.0101.i.i, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = and i32 %i.bc, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr @table_b2a_base64, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
end_hunk_0
