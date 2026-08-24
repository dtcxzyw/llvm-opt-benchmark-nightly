Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/binascii?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@binascii_b2a_uu:bb.a
.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.22.i.ph = phi ptr [ %.19.i, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  %.1431.i.ph = phi i32 [ %i.cb, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.22.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1431.i = phi i32 [ %i.dh, %.lr.ph.i ], [ %.1431.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dh = add nsw i32 %.1431.i, -6                ; 3 uses
  %i.di = lshr i32 %.141.i, %i.dh                 ; 2 uses
  %i.dj = and i32 %i.di, 63
  %.not.i = icmp eq i32 %i.dj, 0
  %i.dk = trunc i32 %i.di to i8
  %i.dl = and i8 %i.dk, 63
  %i.dm = add nuw nsw i8 %i.dl, 32
  %spec.select.i = select i1 %.not.i, i8 96, i8 %i.dm
  %.3.i = getelementptr i8, ptr %.22.i, i64 1     ; 2 uses
  store i8 %spec.select.i, ptr %.22.i, align 1, !tbaa !16
  %i.dn = icmp samesign ugt i32 %.1431.i, 11
  br i1 %i.dn, label %.lr.ph.i, label %._crit_edge.split.i, !llvm.loop !40

._crit_edge.split.i:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o
  %.143.lcssa.i = phi i32 [ %i.cb, %bb.o ], [ %i.cx, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %i.dh, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.19.i, %bb.o ], [ %i.cu, %vec.epilog.middle.block ], [ %i.ch, %middle.block ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.do = add i64 %.0398.i, -1                    ; 2 uses
  %i.dp = getelementptr i8, ptr %.0445.i, i64 1
  %i.dq = icmp sgt i64 %i.do, 0                   ; 2 uses
  %i.dr = icmp ne i32 %.143.lcssa.i, 0
  %i.ds = or i1 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph11.split.i, label %._crit_edge12.i, !llvm.loop !35

._crit_edge12.i:                                  ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge.split.i ] ; 2 uses
  %i.dt = getelementptr i8, ptr %.1.lcssa.i, i64 1
  store i8 10, ptr %.1.lcssa.i, align 1, !tbaa !16
  %i.du = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.y, ptr noundef %i.dt) #6
  br label %binascii_b2a_uu_impl.exit

binascii_b2a_uu_impl.exit:                        ; preds = %._crit_edge12.i, %bb.j, %bb.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ], [ %i.du, %._crit_edge12.i ], [ null, %bb.j ]
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.dw, null
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
  %.0122157.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
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
  br i1 %.not33, label %bb.az, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.l, ptr noundef %4)
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.az, label %bb.e

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
  br i1 %i.t, label %bb.az, label %bb.h

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
  br i1 %.not38, label %bb.j, label %bb.az

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
  %.0123.i = phi i32 [ %i.ai, %bb.k ], [ %.0, %bb.j ], [ %i.s, %.thread44 ]
  %i.al = icmp ne i32 %.0123.i, 0                 ; 4 uses
  %.not46 = xor i1 %i.al, true
  %i.am = load ptr, ptr %5, align 8
  %i.an = icmp eq ptr %i.am, null
  %or.cond = select i1 %.not46, i1 true, i1 %i.an
  %i.ao = load i64, ptr %.0122157.i.sroa.gep, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond49 = select i1 %or.cond, i1 true, i1 %i.ap ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %or.cond49, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.m
  %.0122157.i.sroa.phi = phi ptr [ %.0122157.i.sroa.gep, %bb.m ], [ inttoptr (i64 16 to ptr), %bb.l ] ; 3 uses
  %.0122157.i = phi ptr [ %5, %bb.m ], [ null, %bb.l ] ; 3 uses
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
  %.0116.i = phi ptr [ %i.ak, %bb.n ], [ %i.fu, %ignorechar.exit.i ] ; 4 uses
  %.0110.i = phi i64 [ %i.aj, %bb.n ], [ %i.fv, %ignorechar.exit.i ] ; 6 uses
  %.0103.i = phi ptr [ %i.av, %bb.n ], [ %i.ft, %ignorechar.exit.i ] ; 3 uses
  %i.ax = icmp ugt i64 %.0110.i, 3
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = sdiv i64 %.0110.i, 4                    ; 2 uses
  %i.az = icmp sgt i64 %.0110.i, 3
  br i1 %i.az, label %.lr.ph.i.i, label %base64_decode_fast.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.03.i.i = phi i64 [ %i.ck, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ba = shl i64 %.03.i.i, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %.0116.i, i64 %i.ba ; 4 uses
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
  %i.bz = getelementptr i8, ptr %.0103.i, i64 %i.by ; 3 uses
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
  br i1 %exitcond.not.i.i, label %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !41

.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i: ; preds = %bb.q
  %.pre.i = shl nuw nsw i64 %i.ay, 2
  br label %base64_decode_fast.exit.i, !llvm.loop !41

base64_decode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i
  %.0.lcssa.i.i = phi i64 [ %.pre.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i ], [ %i.ba, %.lr.ph.i.i ]
  %.0.lcssa.i.fr.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.cl = icmp sgt i64 %.0.lcssa.i.fr.i, 0
  %i.cm = lshr exact i64 %.0.lcssa.i.fr.i, 2
  %i.cn = mul nuw nsw i64 %i.cm, 3
  %.1117.idx.i = call i64 @llvm.smax.i64(i64 %.0.lcssa.i.fr.i, i64 0) ; 2 uses
  %.1117.i = getelementptr i8, ptr %.0116.i, i64 %.1117.idx.i
  %.1111.i = sub nsw i64 %.0110.i, %.1117.idx.i
  %spec.select.i = select i1 %i.cl, i64 %i.cn, i64 0
  br label %base64_decode_fast.exit.thread.i

base64_decode_fast.exit.thread.i:                 ; preds = %base64_decode_fast.exit.i, %bb.p
  %.1111359.i = phi i64 [ %.0110.i, %bb.p ], [ %.1111.i, %base64_decode_fast.exit.i ]
  %.1117358.i = phi ptr [ %.0116.i, %bb.p ], [ %.1117.i, %base64_decode_fast.exit.i ]
  %i.co = phi i64 [ 0, %bb.p ], [ %spec.select.i, %base64_decode_fast.exit.i ]
  %.1104.i = getelementptr i8, ptr %.0103.i, i64 %i.co
  br label %bb.r

bb.r:                                             ; preds = %base64_decode_fast.exit.thread.i, %bb.o
  %.2118.i = phi ptr [ %.1117358.i, %base64_decode_fast.exit.thread.i ], [ %.0116.i, %bb.o ] ; 4 uses
  %.2112.i = phi i64 [ %.1111359.i, %base64_decode_fast.exit.thread.i ], [ %.0110.i, %bb.o ] ; 4 uses
  %.2105.i = phi ptr [ %.1104.i, %base64_decode_fast.exit.thread.i ], [ %.0103.i, %bb.o ] ; 4 uses
  %.not133250.i = icmp eq i64 %.2112.i, 0
  br i1 %.not133250.i, label %ignorechar.exit.thread198.i, label %.lr.ph.jt0.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.cp = load i8, ptr %i.fw, align 1, !tbaa !16  ; 3 uses
  %i.cq = icmp eq i8 %i.cp, 61
  br i1 %i.cq, label %bb.s, label %bb.ac

.lr.ph.jt0.i:                                     ; preds = %bb.r
  %i.cr = load i8, ptr %.2118.i, align 1, !tbaa !16 ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 61
  br i1 %i.cs, label %bb.s, label %bb.ad

.lr.ph.jt2.i:                                     ; preds = %ignorechar.exit154.jt1.i
  %i.ct = load i8, ptr %i.gf, align 1, !tbaa !16  ; 3 uses
  %i.cu = icmp eq i8 %i.ct, 61
  br i1 %i.cu, label %bb.s, label %bb.ae

.lr.ph.jt1.i:                                     ; preds = %ignorechar.exit154.jt0.i
  %i.cv = load i8, ptr %i.gh, align 1, !tbaa !16  ; 3 uses
  %i.cw = icmp eq i8 %i.cv, 61
  br i1 %i.cw, label %bb.s, label %bb.af

.lr.ph.jt3.i:                                     ; preds = %ignorechar.exit154.jt2.i
  %i.cx = load i8, ptr %i.gp, align 1, !tbaa !16  ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 61
  br i1 %i.cy, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %.lr.ph.jt3.i, %.lr.ph.jt1.i, %.lr.ph.jt2.i, %.lr.ph.jt0.i, %.lr.ph.i
  %.3119251346.i = phi ptr [ %.2118.i, %.lr.ph.jt0.i ], [ %i.gf, %.lr.ph.jt2.i ], [ %i.gh, %.lr.ph.jt1.i ], [ %i.gp, %.lr.ph.jt3.i ], [ %i.fw, %.lr.ph.i ] ; 5 uses
  %.3113252339.i = phi i64 [ %.2112.i, %.lr.ph.jt0.i ], [ %i.gg, %.lr.ph.jt2.i ], [ %i.gi, %.lr.ph.jt1.i ], [ %i.gq, %.lr.ph.jt3.i ], [ %i.fx, %.lr.ph.i ] ; 4 uses
  %.3106253334.i = phi ptr [ %.2105.i, %.lr.ph.jt0.i ], [ %i.gd, %.lr.ph.jt2.i ], [ %.6.ph.jt1.i, %.lr.ph.jt1.i ], [ %i.gn, %.lr.ph.jt3.i ], [ %.6.ph.i, %.lr.ph.i ] ; 6 uses
  %.099254331.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 2, %.lr.ph.jt2.i ], [ 1, %.lr.ph.jt1.i ], [ 3, %.lr.ph.jt3.i ], [ %.3102.ph.i, %.lr.ph.i ] ; 8 uses
  %.095255326.i = phi i8 [ 0, %.lr.ph.jt0.i ], [ %i.ge, %.lr.ph.jt2.i ], [ %.398.ph.jt1.i, %.lr.ph.jt1.i ], [ %i.go, %.lr.ph.jt3.i ], [ %.398.ph.i, %.lr.ph.i ] ; 4 uses
  %.093256323.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 0, %.lr.ph.jt2.i ], [ 0, %.lr.ph.jt1.i ], [ 0, %.lr.ph.jt3.i ], [ %.2.ph.i, %.lr.ph.i ]
  %i.cz = add i32 %.093256323.i, 1                ; 5 uses
  %i.da = icmp sgt i32 %.099254331.i, 1           ; 2 uses
  %i.db = add i32 %i.cz, %.099254331.i            ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.dc = icmp slt i32 %i.db, 5
  %or.cond144.i = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %or.cond144.i, label %bb.av, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %or.cond49, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = load i8, ptr %i.aw, align 1, !tbaa !16  ; 2 uses
  %i.de = and i8 %i.dd, 32
  %.not.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i, label %bb.w, label %bb.av

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %.0122157.i, align 8, !tbaa !17
  %i.dg = load i64, ptr %.0122157.i.sroa.phi, align 8, !tbaa !22
  %i.dh = call ptr @memchr(ptr noundef %i.df, i32 noundef 61, i64 noundef %i.dg) #7
  %.not11.i.i = icmp eq ptr %i.dh, null
  br i1 %.not11.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = or disjoint i8 %i.dd, 32
  store i8 %i.di, ptr %i.aw, align 1, !tbaa !16
  br label %bb.av

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.dj = icmp eq i32 %.099254331.i, 1
  br i1 %i.dj, label %.thread206.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not139.i = icmp eq ptr %i.dk, null
  br i1 %.not139.i, label %ignorechar.exit.thread182.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !10
  %i.dm = icmp eq i32 %.099254331.i, 0
  %i.dn = load ptr, ptr %4, align 8
  %i.do = icmp eq ptr %.3119251346.i, %i.dn
  %i.dp = select i1 %i.dm, i1 %i.do, i1 false
  %i.dq = select i1 %i.dp, ptr @.str.29, ptr @.str.30
  call void @PyErr_SetString(ptr noundef %i.dl, ptr noundef nonnull %i.dq) #6
  br label %ignorechar.exit.thread182.i

bb.ab:                                            ; preds = %bb.s
  %i.dr = icmp sgt i32 %i.db, 3
  %or.cond146.i = select i1 %i.da, i1 %i.dr, i1 false
  br i1 %or.cond146.i, label %ignorechar.exit.thread198.i, label %bb.av

bb.ac:                                            ; preds = %.lr.ph.i
  %i.ds = zext i8 %i.cp to i64
  %i.dt = getelementptr i8, ptr @table_a2b_base64, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 5 uses
  %i.dv = icmp ugt i8 %i.du, 63
  br i1 %i.dv, label %bb.ah, label %bb.ao

bb.ad:                                            ; preds = %.lr.ph.jt0.i
  %i.dw = zext i8 %i.cr to i64
  %i.dx = getelementptr i8, ptr @table_a2b_base64, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16  ; 2 uses
  %i.dz = icmp ugt i8 %i.dy, 63
  br i1 %i.dz, label %bb.ah, label %ignorechar.exit154.jt0.i

bb.ae:                                            ; preds = %.lr.ph.jt2.i
  %i.ea = zext i8 %i.ct to i64
  %i.eb = getelementptr i8, ptr @table_a2b_base64, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16  ; 2 uses
  %i.ed = icmp ugt i8 %i.ec, 63
  br i1 %i.ed, label %bb.ah, label %ignorechar.exit154.jt2.i

bb.af:                                            ; preds = %.lr.ph.jt1.i
  %i.ee = zext i8 %i.cv to i64
  %i.ef = getelementptr i8, ptr @table_a2b_base64, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16  ; 2 uses
  %i.eh = icmp ugt i8 %i.eg, 63
  br i1 %i.eh, label %bb.ah, label %ignorechar.exit154.jt1.i

bb.ag:                                            ; preds = %.lr.ph.jt3.i
  %i.ei = zext i8 %i.cx to i64
  %i.ej = getelementptr i8, ptr @table_a2b_base64, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16  ; 2 uses
  %i.el = icmp ugt i8 %i.ek, 63
  br i1 %i.el, label %bb.ah, label %ignorechar.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.em = phi i8 [ %i.cr, %bb.ad ], [ %i.ct, %bb.ae ], [ %i.cv, %bb.af ], [ %i.cx, %bb.ag ], [ %i.cp, %bb.ac ]
end_hunk_0
