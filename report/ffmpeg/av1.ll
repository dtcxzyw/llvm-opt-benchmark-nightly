inline.NumInlined: 106
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@parse_obu_header:bb.a
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.f, i32 11) ; 3 uses
  store i32 %i.q, ptr %5, align 4, !tbaa !9
  %i.s = lshr i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.u, align 1, !tbaa !15
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = and i32 %i.r, 3
  %i.y = shl i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 30
  %i.aa = add nuw nsw i32 %i.r, 2
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.aa)
  store i32 %i.z, ptr %6, align 4, !tbaa !9
  %i.ac = add nuw nsw i32 %i.ab, 3
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %6, align 4, !tbaa !9
  store i32 0, ptr %5, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.10.0 = phi i32 [ 8, %bb.e ], [ %i.ad, %bb.d ] ; 4 uses
  %i.ae = and i8 %i.k, 2
  %.not24 = icmp eq i8 %i.ae, 0
  br i1 %.not24, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i32 %.sroa.10.0, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !15
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %.sroa.10.0, 7
  %i.al = shl i32 %i.aj, %i.ak                    ; 2 uses
  %i.am = lshr i32 %i.al, 24
  %i.an = add nuw nsw i32 %.sroa.10.0, 8
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.an) ; 4 uses
  %i.ap = and i32 %i.am, 127                      ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %.not.i = icmp slt i32 %i.al, 0
  br i1 %.not.i, label %bb.h, label %get_leb128.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = lshr i32 %i.ao, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1, !tbaa !15
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = and i32 %i.ao, 7
  %i.ax = shl i32 %i.av, %i.aw                    ; 2 uses
  %i.ay = add nuw nsw i32 %i.ao, 8
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ay) ; 4 uses
  %i.ba = lshr i32 %i.ax, 17
  %i.bb = and i32 %i.ba, 16256
  %i.bc = or disjoint i32 %i.bb, %i.ap            ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %.not.1.i = icmp slt i32 %i.ax, 0
  br i1 %.not.1.i, label %bb.i, label %get_leb128.exit

bb.i:                                             ; preds = %bb.h
  %i.be = lshr i32 %i.az, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !15
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = and i32 %i.az, 7
  %i.bk = shl i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = add nuw nsw i32 %i.az, 8
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.bl) ; 4 uses
  %i.bn = lshr i32 %i.bk, 10
  %i.bo = and i32 %i.bn, 2080768
  %i.bp = or disjoint i32 %i.bo, %i.bc            ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %.not.2.i = icmp slt i32 %i.bk, 0
  br i1 %.not.2.i, label %bb.j, label %get_leb128.exit

bb.j:                                             ; preds = %bb.i
  %i.br = lshr i32 %i.bm, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !15
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bw = and i32 %i.bm, 7
  %i.bx = shl i32 %i.bv, %i.bw                    ; 2 uses
  %i.by = add nuw nsw i32 %i.bm, 8
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.by) ; 4 uses
  %i.ca = lshr i32 %i.bx, 3
  %i.cb = and i32 %i.ca, 266338304
  %i.cc = or disjoint i32 %i.cb, %i.bp
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %.not.3.i = icmp slt i32 %i.bx, 0
  br i1 %.not.3.i, label %bb.k, label %get_leb128.exit

bb.k:                                             ; preds = %bb.j
  %i.ce = lshr i32 %i.bz, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !15
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = and i32 %i.bz, 7
  %i.ck = shl i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 24
  %i.cm = add nuw nsw i32 %i.bz, 8
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cm) ; 4 uses
  %i.co = and i32 %i.cl, 127
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 28
  %i.cr = or disjoint i64 %i.cq, %i.cd            ; 2 uses
  %.not.4.i = icmp slt i32 %i.ck, 0
  br i1 %.not.4.i, label %bb.l, label %get_leb128.exit

bb.l:                                             ; preds = %bb.k
  %i.cs = lshr i32 %i.cn, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !15
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = and i32 %i.cn, 7
  %i.cy = shl i32 %i.cw, %i.cx                    ; 2 uses
  %i.cz = lshr i32 %i.cy, 24
  %i.da = add nuw nsw i32 %i.cn, 8
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.da) ; 4 uses
  %i.dc = and i32 %i.cz, 127
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 35
  %i.df = or disjoint i64 %i.de, %i.cr            ; 2 uses
  %.not.5.i = icmp slt i32 %i.cy, 0
  br i1 %.not.5.i, label %bb.m, label %get_leb128.exit

bb.m:                                             ; preds = %bb.l
  %i.dg = lshr i32 %i.db, 3
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 1, !tbaa !15
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dl = and i32 %i.db, 7
  %i.dm = shl i32 %i.dk, %i.dl                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 24
  %i.do = add nuw nsw i32 %i.db, 8
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.do) ; 4 uses
  %i.dq = and i32 %i.dn, 127
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 42
  %i.dt = or disjoint i64 %i.ds, %i.df            ; 2 uses
  %.not.6.i = icmp slt i32 %i.dm, 0
  br i1 %.not.6.i, label %bb.n, label %get_leb128.exit

bb.n:                                             ; preds = %bb.m
  %i.du = lshr i32 %i.dp, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !15
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = and i32 %i.dp, 7
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 24
  %i.ec = add nuw nsw i32 %i.dp, 8
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ec)
  %i.ee = and i32 %i.eb, 127
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 49
  %i.eh = or i64 %i.eg, %i.dt
  br label %get_leb128.exit

bb.o:                                             ; preds = %bb.f
  %i.ei = xor i8 %i.m, -1
  %i.ej = sext i8 %i.ei to i32
  %i.ek = add i32 %1, %i.ej
  %i.el = sext i32 %i.ek to i64
  br label %get_leb128.exit

get_leb128.exit:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.o
  %.sroa.10.1 = phi i32 [ %.sroa.10.0, %bb.o ], [ %i.ed, %bb.n ], [ %i.dp, %bb.m ], [ %i.db, %bb.l ], [ %i.cn, %bb.k ], [ %i.bz, %bb.j ], [ %i.bm, %bb.i ], [ %i.az, %bb.h ], [ %i.ao, %bb.g ] ; 2 uses
  %i.em = phi i64 [ %i.el, %bb.o ], [ %i.eh, %bb.n ], [ %i.dt, %bb.m ], [ %i.df, %bb.l ], [ %i.cr, %bb.k ], [ %i.cd, %bb.j ], [ %i.bq, %bb.i ], [ %i.bd, %bb.h ], [ %i.aq, %bb.g ] ; 2 uses
  store i64 %i.em, ptr %2, align 8, !tbaa !28
  %i.en = icmp samesign ult i32 %i.c, %.sroa.10.1
  br i1 %i.en, label %bb.q, label %bb.p

bb.p:                                             ; preds = %get_leb128.exit
  %i.eo = lshr i32 %.sroa.10.1, 3                 ; 2 uses
  store i32 %i.eo, ptr %3, align 4, !tbaa !9
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = add nsw i64 %i.em, %i.ep                ; 2 uses
  %i.er = sext i32 %1 to i64
  %i.es = icmp sgt i64 %i.eq, %i.er
  %i.et = trunc i64 %i.eq to i32
  %spec.select = select i1 %i.es, i32 -1094995529, i32 %i.et
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %get_leb128.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.p ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %get_leb128.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @parse_sequence_header(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02129.i = phi i32 [ %4, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %3 = zext nneg i32 %.02129.i to i64
  %i.b = getelementptr i8, ptr %1, i64 %3
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15    ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %4 = add nsw i32 %.02129.i, -1
  %i.f = icmp sgt i32 %.02129.i, 1
  br i1 %i.f, label %.lr.ph.i, label %get_obu_bit_length.exit.thread195, !llvm.loop !31

.critedge.i:                                      ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %get_obu_bit_length.exit.thread195, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = icmp samesign ugt i32 %.02129.i, 268435455
  br i1 %i.g, label %get_obu_bit_length.exit.thread, label %.thread36.i

.thread36.i:                                      ; preds = %bb.c
  %i.h = shl nuw nsw i32 %.02129.i, 3
  br label %get_obu_bit_length.exit

bb.d:                                             ; preds = %.critedge.i
  %i.i = sext i32 %2 to i64
  %.pn.phi.trans.insert.i = getelementptr i8, ptr %1, i64 %i.i
  %.in.phi.trans.insert.i = getelementptr i8, ptr %.pn.phi.trans.insert.i, i64 -1
  %.pre.i = load i8, ptr %.in.phi.trans.insert.i, align 1, !tbaa !15 ; 2 uses
  %i.j = shl nsw i32 %2, 3                        ; 2 uses
  %.not24.i = icmp eq i8 %.pre.i, 0
  br i1 %.not24.i, label %get_obu_bit_length.exit.thread, label %get_obu_bit_length.exit

get_obu_bit_length.exit:                          ; preds = %.thread36.i, %bb.d
  %i.k = phi i32 [ %i.h, %.thread36.i ], [ %i.j, %bb.d ]
  %i.l = phi i8 [ %i.d, %.thread36.i ], [ %.pre.i, %bb.d ]
  %i.m = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.l, i1 true)
  %i.n = xor i8 %i.m, -1
  %.neg.i = sext i8 %i.n to i32
  %i.o = add i32 %i.k, %.neg.i                    ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %get_obu_bit_length.exit.thread, label %get_obu_bit_length.exit.thread195

get_obu_bit_length.exit.thread195:                ; preds = %bb.b, %.critedge.i, %get_obu_bit_length.exit
  %.0.i197 = phi i32 [ %i.o, %get_obu_bit_length.exit ], [ 0, %.critedge.i ], [ 0, %bb.b ] ; 5 uses
  %or.cond.i = icmp samesign ult i32 %.0.i197, 2147483135
  %i.q = icmp ne ptr %1, null
  %or.cond3.i = and i1 %i.q, %or.cond.i           ; 2 uses
  %.013.i = select i1 %or.cond3.i, i32 %.0.i197, i32 0 ; 4 uses
  %i.r = add nuw nsw i32 %.013.i, 8               ; 57 uses
  br i1 %or.cond3.i, label %bb.e, label %get_obu_bit_length.exit.thread

bb.e:                                             ; preds = %get_obu_bit_length.exit.thread195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false)
  %i.s = load i32, ptr %1, align 1, !tbaa !15
  %i.t = trunc i32 %i.s to i8
  %i.u = lshr i8 %i.t, 5                          ; 4 uses
  store i8 %i.u, ptr %0, align 1, !tbaa !16
  %i.v = load i8, ptr %1, align 1, !tbaa !15      ; 2 uses
  %i.w = and i8 %i.v, 8
  %.not = icmp eq i8 %i.w, 0                      ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %1, align 1, !tbaa !15
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = lshr i32 %i.y, 22
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.r, i32 10)
  %i.ab = trunc i32 %i.z to i8
  %i.ac = and i8 %i.ab, 31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.ae, align 1, !tbaa !19
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.af = and i8 %i.v, 4
  %.not44 = icmp eq i8 %i.af, 0
  br i1 %.not44, label %.peel.begin, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i32 @llvm.umin.i32(i32 %.0.i197, i32 30) ; 3 uses
  %i.ah = add nuw nsw i32 %i.ag, 8
  %i.ai = sub nsw i32 %.0.i197, %i.ag
  %..i.i63 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 32) ; 2 uses
  %i.aj = add nsw i32 %i.ah, %..i.i63             ; 4 uses
  %i.ak = lshr i32 %i.aj, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  %i.ao = icmp slt i32 %i.aj, %i.r
  %i.ap = zext i1 %i.ao to i32                    ; 2 uses
  %spec.select.i65 = add nsw i32 %i.aj, %i.ap     ; 3 uses
  %i.aq = zext i8 %i.an to i32
  %i.ar = and i32 %i.aj, 7
  %i.as = lshr exact i32 128, %i.ar
  %i.at = and i32 %i.as, %i.aq
  %.not45 = icmp eq i32 %i.at, 0
  br i1 %.not45, label %uvlc.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %smax = tail call i32 @llvm.smax.i32(i32 %.0.i197, i32 %spec.select.i65) ; 2 uses
  %i.au = add nsw i32 %..i.i63, %i.ag
  %i.av = add nsw i32 %i.au, %i.ap
  %i.aw = add nsw i32 %i.av, 40
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %.preheader.preheader
  %.011.i = phi i32 [ 0, %.preheader.preheader ], [ %i.bn, %bb.k ] ; 5 uses
  %spec.select.i910.i = phi i32 [ %spec.select.i65, %.preheader.preheader ], [ %spec.select.i.i.1, %bb.k ] ; 5 uses
  %.not7.i = icmp sgt i32 %.013.i, %spec.select.i910.i
  br i1 %.not7.i, label %bb.i, label %.split.loop.exit228

bb.i:                                             ; preds = %.preheader
  %i.ax = lshr i32 %spec.select.i910.i, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %spec.select.i.i = add nsw i32 %spec.select.i910.i, 1 ; 4 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = and i32 %spec.select.i910.i, 7
  %i.bd = lshr exact i32 128, %i.bc
  %i.be = and i32 %i.bd, %i.bb
  %.not.i66 = icmp eq i32 %i.be, 0
  br i1 %.not.i66, label %.preheader.1, label %.split.loop.exit228

.preheader.1:                                     ; preds = %bb.i
  %.not7.i.1 = icmp sgt i32 %.013.i, %spec.select.i.i
  br i1 %.not7.i.1, label %bb.j, label %.split.loop.exit225

bb.j:                                             ; preds = %.preheader.1
  %i.bf = lshr i32 %spec.select.i.i, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %spec.select.i.i.1 = add nsw i32 %spec.select.i910.i, 2 ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %spec.select.i.i, 7
  %i.bl = lshr exact i32 128, %i.bk
  %i.bm = and i32 %i.bl, %i.bj
  %.not.i66.1 = icmp eq i32 %i.bm, 0
  br i1 %.not.i66.1, label %bb.k, label %.split.loop.exit

bb.k:                                             ; preds = %bb.j
  %i.bn = add nuw nsw i32 %.011.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.bn, 32
  br i1 %exitcond.not.i.1, label %uvlc.exit, label %.preheader, !llvm.loop !32

.split.loop.exit:                                 ; preds = %bb.j
  %i.bo = or disjoint i32 %.011.i, 1
  br label %.split.loop.exit228

.split.loop.exit225:                              ; preds = %.preheader.1
  %i.bp = or disjoint i32 %.011.i, 1
  br label %.split.loop.exit228

.split.loop.exit228:                              ; preds = %.preheader, %bb.i, %.split.loop.exit225, %.split.loop.exit
  %.011.i.lcssa = phi i32 [ %i.bp, %.split.loop.exit225 ], [ %.011.i, %bb.i ], [ %i.bo, %.split.loop.exit ], [ %.011.i, %.preheader ] ; 2 uses
  %i.bq = phi i32 [ %smax, %.split.loop.exit225 ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i.1, %.split.loop.exit ], [ %smax, %.preheader ] ; 3 uses
  %i.br = sub nsw i32 0, %i.bq                    ; 2 uses
  %i.bs = sub nsw i32 %i.r, %i.bq
  %i.bt = icmp slt i32 %.011.i.lcssa, %i.br
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %.011.i.lcssa, i32 %i.bs)
  %.0.i.i.i = select i1 %i.bt, i32 %i.br, i32 %..i.i.i
  %i.bu = add nsw i32 %.0.i.i.i, %i.bq
  br label %uvlc.exit

uvlc.exit:                                        ; preds = %bb.k, %.split.loop.exit228, %bb.h
  %.sroa.25.0 = phi i32 [ %spec.select.i65, %bb.h ], [ %i.bu, %.split.loop.exit228 ], [ %i.aw, %bb.k ] ; 4 uses
  %i.bv = lshr i32 %.sroa.25.0, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.bz = icmp slt i32 %.sroa.25.0, %i.r
  %i.ca = zext i1 %i.bz to i32
  %spec.select.i67 = add i32 %.sroa.25.0, %i.ca   ; 4 uses
  %i.cb = zext i8 %i.by to i32
  %i.cc = and i32 %.sroa.25.0, 7
  %i.cd = lshr exact i32 128, %i.cc
  %i.ce = and i32 %i.cd, %i.cb
  %.not46 = icmp eq i32 %i.ce, 0
  br i1 %.not46, label %.peel.begin, label %bb.l

bb.l:                                             ; preds = %uvlc.exit
  %i.cf = lshr i32 %spec.select.i67, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !15
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.ck = and i32 %spec.select.i67, 7
  %i.cl = shl i32 %i.cj, %i.ck
  %i.cm = lshr i32 %i.cl, 27
  %i.cn = add i32 %spec.select.i67, 5
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.cn) ; 2 uses
  %i.cp = sub nsw i32 %i.r, %i.co
  %..i.i68 = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 32)
  %i.cq = add nuw i32 %i.co, 10
  %i.cr = add i32 %i.cq, %..i.i68
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.cr)
  %i.ct = add nuw nsw i32 %i.cm, 1
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.g, %uvlc.exit, %bb.l
  %.sroa.25.1 = phi i32 [ 6, %bb.g ], [ %spec.select.i67, %uvlc.exit ], [ %i.cs, %bb.l ] ; 4 uses
  %.not48 = phi i1 [ true, %bb.g ], [ true, %uvlc.exit ], [ false, %bb.l ] ; 2 uses
  %.037 = phi i32 [ undef, %bb.g ], [ undef, %uvlc.exit ], [ %i.ct, %bb.l ] ; 8 uses
  %i.cu = lshr i32 %.sroa.25.1, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = icmp slt i32 %.sroa.25.1, %i.r
  %i.cz = zext i1 %i.cy to i32
  %spec.select.i70 = add i32 %.sroa.25.1, %i.cz   ; 3 uses
  %i.da = zext i8 %i.cx to i32
  %i.db = and i32 %.sroa.25.1, 7
  %i.dc = lshr i32 %spec.select.i70, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 1, !tbaa !15
  %i.dg = tail call i32 @llvm.bswap.i32(i32 %i.df)
  %i.dh = and i32 %spec.select.i70, 7
end_hunk_0
