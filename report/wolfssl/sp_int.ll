Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 78
begin_hunk_0_@sp_mul:bb.a
  %i.m = icmp eq i16 %i.d, 0
  %i.n = icmp eq i16 %i.f, 0
  %or.cond35 = or i1 %i.m, %i.n
  br i1 %or.cond35, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  store volatile i16 0, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store volatile i64 0, ptr %i.o, align 8, !tbaa !36
  br label %.thread29

bb.d:                                             ; preds = %.thread
  %i.p = icmp eq i16 %i.d, 4
  %i.q = icmp eq i16 %i.f, 4
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = zext i64 %i.t to i128                    ; 4 uses
  %i.v = load i64, ptr %i.r, align 8, !tbaa !36
  %i.w = zext i64 %i.v to i128                    ; 4 uses
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  %i.aa = zext i64 %i.z to i128                   ; 4 uses
  %i.ab = mul nuw i128 %i.aa, %i.u                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.ae = zext i64 %i.ad to i128                  ; 4 uses
  %i.af = mul nuw i128 %i.ae, %i.w                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = zext i64 %i.ah to i128                  ; 4 uses
  %i.aj = mul nuw i128 %i.ai, %i.u                ; 2 uses
  %i.ak = mul nuw i128 %i.ae, %i.aa               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !36
  %i.an = zext i64 %i.am to i128                  ; 4 uses
  %i.ao = mul nuw i128 %i.an, %i.w                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !36
  %i.ar = zext i64 %i.aq to i128                  ; 4 uses
  %i.as = mul nuw i128 %i.ar, %i.u                ; 2 uses
  %i.at = mul nuw i128 %i.ai, %i.ae               ; 2 uses
  %i.au = mul nuw i128 %i.an, %i.aa               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36
  %i.ax = zext i64 %i.aw to i128                  ; 4 uses
  %i.ay = mul nuw i128 %i.ax, %i.w                ; 2 uses
  %i.az = mul nuw i128 %i.ar, %i.ae               ; 2 uses
  %i.ba = mul nuw i128 %i.an, %i.ai               ; 2 uses
  %i.bb = mul nuw i128 %i.ax, %i.aa               ; 2 uses
  %i.bc = mul nuw i128 %i.ar, %i.an               ; 2 uses
  %i.bd = mul nuw i128 %i.ax, %i.ai               ; 2 uses
  %i.be = mul nuw i128 %i.ax, %i.ar               ; 2 uses
  %i.bf = trunc i128 %i.x to i64                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = lshr i128 %i.x, 64
  %i.bi = and i128 %i.ab, 18446744073709551615
  %i.bj = add nuw nsw i128 %i.bi, %i.bh
  %i.bk = and i128 %i.af, 18446744073709551615
  %i.bl = add nuw nsw i128 %i.bj, %i.bk           ; 2 uses
  %i.bm = trunc i128 %i.bl to i64                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !36
  %i.bo = lshr i128 %i.bl, 64
  %i.bp = lshr i128 %i.ab, 64
  %i.bq = lshr i128 %i.af, 64
  %i.br = and i128 %i.aj, 18446744073709551615
  %i.bs = and i128 %i.ak, 18446744073709551615
  %i.bt = and i128 %i.ao, 18446744073709551615
  %i.bu = add nuw nsw i128 %i.bq, %i.bp
  %i.bv = add nuw nsw i128 %i.bu, %i.bs
  %i.bw = add nuw nsw i128 %i.bv, %i.br
  %i.bx = add nuw nsw i128 %i.bw, %i.bo
  %i.by = add nuw nsw i128 %i.bx, %i.bt           ; 2 uses
  %i.bz = trunc i128 %i.by to i64                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !36
  %i.cb = lshr i128 %i.by, 64
  %i.cc = lshr i128 %i.aj, 64
  %i.cd = lshr i128 %i.ak, 64
  %i.ce = lshr i128 %i.ao, 64
  %i.cf = and i128 %i.as, 18446744073709551615
  %i.cg = and i128 %i.at, 18446744073709551615
  %i.ch = and i128 %i.au, 18446744073709551615
  %i.ci = and i128 %i.ay, 18446744073709551615
  %i.cj = add nuw nsw i128 %i.cc, %i.cd
  %i.ck = add nuw nsw i128 %i.cj, %i.cg
  %i.cl = add nuw nsw i128 %i.ck, %i.ce
  %i.cm = add nuw nsw i128 %i.cl, %i.ch
  %i.cn = add nuw nsw i128 %i.cm, %i.cf
  %i.co = add nuw nsw i128 %i.cn, %i.ci
  %i.cp = add nuw nsw i128 %i.co, %i.cb           ; 2 uses
  %i.cq = trunc i128 %i.cp to i64                 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !36
  %i.cs = lshr i128 %i.cp, 64
  %i.ct = lshr i128 %i.as, 64
  %i.cu = lshr i128 %i.at, 64
  %i.cv = lshr i128 %i.au, 64
  %i.cw = lshr i128 %i.ay, 64
  %i.cx = and i128 %i.az, 18446744073709551615
  %i.cy = and i128 %i.ba, 18446744073709551615
  %i.cz = and i128 %i.bb, 18446744073709551615
  %i.da = add nuw nsw i128 %i.cv, %i.cu
  %i.db = add nuw nsw i128 %i.da, %i.cy
  %i.dc = add nuw nsw i128 %i.db, %i.ct
  %i.dd = add nuw nsw i128 %i.dc, %i.cx
  %i.de = add nuw nsw i128 %i.dd, %i.cw
  %i.df = add nuw nsw i128 %i.de, %i.cz
  %i.dg = add nuw nsw i128 %i.df, %i.cs           ; 2 uses
  %i.dh = trunc i128 %i.dg to i64                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !36
  %i.dj = lshr i128 %i.dg, 64
  %i.dk = lshr i128 %i.az, 64
  %i.dl = lshr i128 %i.ba, 64
  %i.dm = lshr i128 %i.bb, 64
  %i.dn = and i128 %i.bc, 18446744073709551615
  %i.do = and i128 %i.bd, 18446744073709551615
  %i.dp = add nuw nsw i128 %i.dk, %i.dl
  %i.dq = add nuw nsw i128 %i.dp, %i.dn
  %i.dr = add nuw nsw i128 %i.dq, %i.dm
  %i.ds = add nuw nsw i128 %i.dr, %i.do
  %i.dt = add nuw nsw i128 %i.ds, %i.dj           ; 2 uses
  %i.du = trunc i128 %i.dt to i64                 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !36
  %i.dw = lshr i128 %i.dt, 64
  %i.dx = lshr i128 %i.bc, 64
  %i.dy = lshr i128 %i.bd, 64
  %i.dz = and i128 %i.be, 18446744073709551615
  %i.ea = add nuw nsw i128 %i.dy, %i.dx
  %i.eb = add nuw nsw i128 %i.ea, %i.dz
  %i.ec = add nuw nsw i128 %i.eb, %i.dw           ; 2 uses
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !36
  %i.ef = lshr i128 %i.ec, 64
  %i.eg = lshr i128 %i.be, 64
  %i.eh = add nuw nsw i128 %i.ef, %i.eg
  %i.ei = trunc i128 %i.eh to i64                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i, label %bb.f, label %_sp_mul_4.exit

bb.f:                                             ; preds = %bb.e
  %.not.1.i = icmp eq i64 %i.ed, 0
  br i1 %.not.1.i, label %bb.g, label %_sp_mul_4.exit

bb.g:                                             ; preds = %bb.f
  %.not.2.i = icmp eq i64 %i.du, 0
  br i1 %.not.2.i, label %bb.h, label %_sp_mul_4.exit

bb.h:                                             ; preds = %bb.g
  %.not.3.i = icmp eq i64 %i.dh, 0
  br i1 %.not.3.i, label %bb.i, label %_sp_mul_4.exit

bb.i:                                             ; preds = %bb.h
  %.not.4.i = icmp eq i64 %i.cq, 0
  br i1 %.not.4.i, label %bb.j, label %_sp_mul_4.exit

bb.j:                                             ; preds = %bb.i
  %.not.5.i = icmp eq i64 %i.bz, 0
  br i1 %.not.5.i, label %bb.k, label %_sp_mul_4.exit

bb.k:                                             ; preds = %bb.j
  %.not.6.i = icmp eq i64 %i.bm, 0
  br i1 %.not.6.i, label %bb.l, label %_sp_mul_4.exit

bb.l:                                             ; preds = %bb.k
  %.not.7.i = icmp ne i64 %i.bf, 0
  %spec.select.i = zext i1 %.not.7.i to i16
  br label %_sp_mul_4.exit

_sp_mul_4.exit:                                   ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.lcssa.i = phi i16 [ 8, %bb.e ], [ 4, %bb.i ], [ 7, %bb.f ], [ %spec.select.i, %bb.l ], [ 6, %bb.g ], [ 3, %bb.j ], [ 5, %bb.h ], [ 2, %bb.k ]
  store i16 %.0.lcssa.i, ptr %2, align 8, !tbaa !40
  br label %.thread29

bb.m:                                             ; preds = %bb.d
  tail call fastcc void @_sp_mul(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %.thread29

.thread29:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.m, %_sp_mul_4.exit
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %_sp_mul_4.exit ], [ 0, %bb.m ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_sp_mul(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = load i16, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.d = zext i16 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, %i.b
  %i.f = alloca i64, i64 %i.e, align 16           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  %i.i = zext i64 %i.h to i128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw i128 %i.l, %i.i                  ; 2 uses
  %i.n = trunc i128 %i.m to i64
  store i64 %i.n, ptr %i.f, align 16, !tbaa !36
  %i.o = lshr i128 %i.m, 64                       ; 2 uses
  %i.p = zext i16 %i.a to i32
  %i.q = add nsw i32 %i.p, -1
  %i.r = zext i16 %i.c to i32
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  %i.t = add nsw i32 %i.q, %i.s                   ; 2 uses
  %.not67 = icmp slt i32 %i.t, 1
  %extract.t = trunc nuw i128 %i.o to i64
  br i1 %.not67, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.u = trunc i32 %i.s to i16
  %3 = sub i16 2, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %._crit_edge
  %indvars.iv = phi i16 [ %3, %.lr.ph72 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.v = phi i32 [ 1, %.lr.ph72 ], [ %i.az, %._crit_edge ]
  %.05170 = phi i128 [ 0, %.lr.ph72 ], [ %i.ax, %._crit_edge ] ; 2 uses
  %.05269 = phi i128 [ %i.o, %.lr.ph72 ], [ %i.aw, %._crit_edge ] ; 2 uses
  %.05568 = phi i16 [ 1, %.lr.ph72 ], [ %i.ay, %._crit_edge ] ; 4 uses
  %i.w = sub i16 %.05568, %i.u
  %i.x = tail call i16 @llvm.smax.i16(i16 %i.w, i16 0) ; 2 uses
  %i.y = zext nneg i16 %i.x to i32
  %i.z = icmp ult i16 %i.x, %i.a
  %4 = icmp samesign uge i32 %i.v, %i.y
  %i.aa = select i1 %i.z, i1 %4, i1 false
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %smax = tail call i16 @llvm.smax.i16(i16 %indvars.iv, i16 0) ; 2 uses
  %5 = zext i16 %.05568 to i64
  %i.ab = zext nneg i16 %smax to i64
  %6 = sub nsw i64 %5, %i.ab
  %7 = and i64 %6, 4294967295
  %i.ac = zext nneg i16 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv81 = phi i64 [ %7, %.lr.ph.preheader ], [ %indvars.iv.next82, %.lr.ph ] ; 3 uses
  %indvars.iv79 = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next80.a, %.lr.ph ] ; 2 uses
  %.165 = phi i128 [ %.05170, %.lr.ph.preheader ], [ %i.an, %.lr.ph ]
  %.15364 = phi i128 [ %.05269, %.lr.ph.preheader ], [ %i.al, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv79
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.af = zext i64 %i.ae to i128
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv81
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = zext i64 %i.ah to i128
  %i.aj = mul nuw i128 %i.ai, %i.af               ; 2 uses
  %i.ak = and i128 %i.aj, 18446744073709551615
  %i.al = add i128 %i.ak, %.15364                 ; 2 uses
  %i.am = lshr i128 %i.aj, 64
  %i.an = add i128 %i.am, %.165                   ; 2 uses
  %indvars.iv.next80.a = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  %i.ao = icmp samesign ult i64 %indvars.iv.next80.a, %i.b
  %i.ap = icmp ne i64 %indvars.iv81, 0
  %i.aq = and i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.153.lcssa = phi i128 [ %.05269, %bb.b ], [ %i.al, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i128 [ %.05170, %bb.b ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ar = trunc i128 %.153.lcssa to i64
  %i.as = zext i16 %.05568 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.as
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !36
  %i.au = lshr i128 %.153.lcssa, 64
  %i.av = and i128 %.1.lcssa, 18446744073709551615
  %i.aw = add nuw nsw i128 %i.av, %i.au           ; 2 uses
  %i.ax = lshr i128 %.1.lcssa, 64
  %i.ay = add i16 %.05568, 1                      ; 3 uses
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %.not = icmp samesign ult i32 %i.t, %i.az
  %indvars.iv.next = add i16 %indvars.iv, 1
  br i1 %.not, label %._crit_edge73.loopexit, label %bb.b, !llvm.loop !122

._crit_edge73.loopexit:                           ; preds = %._crit_edge
  %extract.t76 = trunc i128 %i.aw to i64
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit, %bb.a
  %.055.lcssa = phi i16 [ 1, %bb.a ], [ %i.ay, %._crit_edge73.loopexit ] ; 2 uses
  %.052.lcssa.off0 = phi i64 [ %extract.t, %bb.a ], [ %extract.t76, %._crit_edge73.loopexit ]
  %i.ba = zext i16 %.055.lcssa to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ba
  store i64 %.052.lcssa.off0, ptr %i.bb, align 8, !tbaa !36
  %i.bc = add i16 %.055.lcssa, 1                  ; 3 uses
  store i16 %i.bc, ptr %2, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = zext i16 %i.bc to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 16 %i.f, i64 %i.bf, i1 false)
  %.not60 = icmp eq i16 %i.bc, 0
  br i1 %.not60, label %bb.d, label %.preheader

bb.c:                                             ; preds = %.preheader
  %indvars.iv.next85 = add nsw i64 %indvars.iv845, -1
  %i.bg = icmp sgt i64 %indvars.iv845, 1
  br i1 %i.bg, label %.preheader, label %.split.loop.exit91, !llvm.loop !123

.preheader:                                       ; preds = %._crit_edge73, %bb.c
  %indvars.iv845 = phi i64 [ %indvars.iv.next85, %bb.c ], [ %i.be, %._crit_edge73 ] ; 4 uses
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv845
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %.not61 = icmp eq i64 %i.bi, 0
  br i1 %.not61, label %bb.c, label %.split.loop.exit, !llvm.loop !123

.split.loop.exit:                                 ; preds = %.preheader
  %i.bj = trunc i64 %indvars.iv845 to i16
  br label %.split.loop.exit91

.split.loop.exit91:                               ; preds = %bb.c, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.bj, %.split.loop.exit ], [ 0, %bb.c ]
  store i16 %.0.in.lcssa, ptr %2, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge73, %.split.loop.exit91
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_mulmod(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, 0
  br i1 %i.g, label %bb.b, label %_sp_mulmod.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, %2
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %0, align 8, !tbaa !40
  %i.i = zext i16 %i.h to i32
  %i.j = load i16, ptr %1, align 8, !tbaa !40
  %i.k = zext i16 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !39
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ugt i32 %i.l, %i.o
  br i1 %i.p, label %_sp_mulmod.exit, label %.thread

.thread:                                          ; preds = %bb.c
  %i.q = tail call i32 @sp_mul(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %3) ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %_sp_mulmod.exit

bb.d:                                             ; preds = %.thread
  %i.s = load i16, ptr %3, align 8, !tbaa !40
  %i.t = icmp ult i16 %i.s, 129
  br i1 %i.t, label %bb.e, label %_sp_mulmod.exit

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @sp_div(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %3)
  br label %_sp_mulmod.exit

bb.f:                                             ; preds = %bb.b
  %i.v = tail call fastcc i32 @_sp_mulmod_tmp(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, ptr noundef nonnull %3)
  br label %_sp_mulmod.exit

_sp_mulmod.exit:                                  ; preds = %bb.a, %bb.c, %bb.f, %bb.e, %bb.d, %.thread
  %.2 = phi i32 [ -98, %bb.a ], [ -98, %bb.c ], [ %i.v, %bb.f ], [ %i.q, %.thread ], [ %i.u, %bb.e ], [ -98, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -98, 1) i32 @sp_invmod(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not79 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %i.d = icmp ne ptr %2, %1
  %.not76 = and i1 %or.cond.not79, %i.d
  %or.cond39.not = and i1 %i.c, %.not76
  br i1 %or.cond39.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = zext i16 %i.i to i32
  %i.k = icmp samesign ugt i32 %i.g, %i.j
  br i1 %i.k, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.b
  %i.l = load i16, ptr %0, align 8, !tbaa !40     ; 7 uses
  %i.m = icmp ugt i16 %i.l, %i.e
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.n = icmp ult i16 %i.l, %i.e
  br i1 %i.n, label %_sp_cmp_abs.exit.thread55, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i
  %i.o = zext i16 %i.l to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next.i90 = add nsw i64 %indvars.iv.i89, -1
  %i.p = icmp sgt i64 %indvars.iv.i89, 1
  br i1 %i.p, label %bb.e, label %.loopexit, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i89 = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next.i90, %bb.d ] ; 4 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i89
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i89
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ult i64 %i.r, %i.t
  br i1 %i.v, label %_sp_cmp_abs.exit.thread55, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.d, %bb.e, %.preheader.i, %.thread
  %i.w = icmp ult i16 %i.l, 129
  br i1 %i.w, label %_sp_cmp_abs.exit, label %.critedge

_sp_cmp_abs.exit:                                 ; preds = %.loopexit
  %i.x = tail call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef null, ptr noundef nonnull %2) ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_sp_cmp_abs.exit._sp_cmp_abs.exit.thread55thread-pre-split_crit_edge, label %.critedge

_sp_cmp_abs.exit._sp_cmp_abs.exit.thread55thread-pre-split_crit_edge: ; preds = %_sp_cmp_abs.exit
  %.pr71.pre = load i16, ptr %2, align 8, !tbaa !40
  br label %_sp_cmp_abs.exit.thread55

_sp_cmp_abs.exit.thread55:                        ; preds = %bb.f, %_sp_cmp_abs.exit._sp_cmp_abs.exit.thread55thread-pre-split_crit_edge, %bb.c
  %.pr = phi i16 [ %i.l, %bb.c ], [ %.pr71.pre, %_sp_cmp_abs.exit._sp_cmp_abs.exit.thread55thread-pre-split_crit_edge ], [ %i.l, %bb.f ] ; 2 uses
  %.03458 = phi ptr [ %0, %bb.c ], [ %2, %_sp_cmp_abs.exit._sp_cmp_abs.exit.thread55thread-pre-split_crit_edge ], [ %0, %bb.f ] ; 2 uses
  %i.z = icmp eq i16 %.pr, 0
  br i1 %i.z, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_sp_cmp_abs.exit.thread55
  %i.aa = load i16, ptr %1, align 8, !tbaa !40
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.03458, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.ae = and i64 %i.ad, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = icmp eq i16 %.pr, 1
  %i.al = icmp eq i64 %i.ad, 1
  %or.cond = and i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.k, label %.thread70

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@sp_sqr:bb.a
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = icmp samesign ugt i32 %i.e, %i.h
  br i1 %i.i, label %.thread17, label %.thread

.thread:                                          ; preds = %bb.b
  switch i16 %i.c, label %bb.l [
    i16 0, label %bb.c
    i16 4, label %bb.d
  ]

bb.c:                                             ; preds = %.thread
  store volatile i16 0, ptr %1, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store volatile i64 0, ptr %i.j, align 8, !tbaa !36
  br label %.thread17

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = zext i64 %i.l to i128                    ; 5 uses
  %i.n = mul nuw i128 %i.m, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = zext i64 %i.p to i128                    ; 5 uses
  %i.r = mul nuw i128 %i.q, %i.m                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = zext i64 %i.t to i128                    ; 5 uses
  %i.v = mul nuw i128 %i.u, %i.m                  ; 2 uses
  %i.w = mul nuw i128 %i.q, %i.q                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = zext i64 %i.y to i128                    ; 5 uses
  %i.aa = mul nuw i128 %i.z, %i.m                 ; 2 uses
  %i.ab = mul nuw i128 %i.u, %i.q                 ; 2 uses
  %i.ac = mul nuw i128 %i.z, %i.q                 ; 2 uses
  %i.ad = mul nuw i128 %i.u, %i.u                 ; 2 uses
  %i.ae = mul nuw i128 %i.z, %i.u                 ; 2 uses
  %i.af = mul nuw i128 %i.z, %i.z                 ; 2 uses
  %i.ag = trunc i128 %i.n to i64                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = lshr i128 %i.n, 64
  %i.aj = shl i128 %i.r, 1
  %reass.add.i = and i128 %i.aj, 36893488147419103230
  %i.ak = add nuw nsw i128 %reass.add.i, %i.ai    ; 2 uses
  %i.al = trunc i128 %i.ak to i64                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !36
  %i.an = lshr i128 %i.ak, 64
  %i.ao = lshr i128 %i.r, 63
  %reass.add113.i = and i128 %i.ao, 36893488147419103230
  %i.ap = shl i128 %i.v, 1
  %reass.add114.i = and i128 %i.ap, 36893488147419103230
  %i.aq = and i128 %i.w, 18446744073709551615
  %i.ar = add nuw nsw i128 %reass.add113.i, %i.aq
  %i.as = add nuw nsw i128 %i.ar, %reass.add114.i
  %i.at = add nuw nsw i128 %i.as, %i.an           ; 2 uses
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !36
  %i.aw = lshr i128 %i.at, 64
  %i.ax = lshr i128 %i.v, 63
  %reass.add115.i = and i128 %i.ax, 36893488147419103230
  %i.ay = lshr i128 %i.w, 64
  %i.az = shl i128 %i.aa, 1
  %reass.add116.i = and i128 %i.az, 36893488147419103230
  %i.ba = shl i128 %i.ab, 1
  %reass.add117.i = and i128 %i.ba, 36893488147419103230
  %i.bb = add nuw nsw i128 %reass.add115.i, %i.ay
  %i.bc = add nuw nsw i128 %i.bb, %reass.add117.i
  %i.bd = add nuw nsw i128 %i.bc, %reass.add116.i
  %i.be = add nuw nsw i128 %i.bd, %i.aw           ; 2 uses
  %i.bf = trunc i128 %i.be to i64                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = lshr i128 %i.be, 64
  %i.bi = lshr i128 %i.aa, 63
  %reass.add118.i = and i128 %i.bi, 36893488147419103230
  %i.bj = lshr i128 %i.ab, 63
  %reass.add119.i = and i128 %i.bj, 36893488147419103230
  %i.bk = shl i128 %i.ac, 1
  %reass.add120.i = and i128 %i.bk, 36893488147419103230
  %i.bl = and i128 %i.ad, 18446744073709551615
  %i.bm = add nuw nsw i128 %reass.add119.i, %i.bl
  %i.bn = add nuw nsw i128 %i.bm, %reass.add118.i
  %i.bo = add nuw nsw i128 %i.bn, %reass.add120.i
  %i.bp = add nuw nsw i128 %i.bo, %i.bh           ; 2 uses
  %i.bq = trunc i128 %i.bp to i64                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %i.bs = lshr i128 %i.bp, 64
  %i.bt = lshr i128 %i.ac, 63
  %reass.add121.i = and i128 %i.bt, 36893488147419103230
  %i.bu = lshr i128 %i.ad, 64
  %i.bv = shl i128 %i.ae, 1
  %reass.add122.i = and i128 %i.bv, 36893488147419103230
  %i.bw = add nuw nsw i128 %reass.add121.i, %i.bu
  %i.bx = add nuw nsw i128 %i.bw, %reass.add122.i
  %i.by = add nuw nsw i128 %i.bx, %i.bs           ; 2 uses
  %i.bz = trunc i128 %i.by to i64                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !36
  %i.cb = lshr i128 %i.by, 64
  %i.cc = lshr i128 %i.ae, 63
  %reass.add123.i = and i128 %i.cc, 36893488147419103230
  %i.cd = and i128 %i.af, 18446744073709551615
  %i.ce = add nuw nsw i128 %reass.add123.i, %i.cd
  %i.cf = add nuw nsw i128 %i.ce, %i.cb           ; 2 uses
  %i.cg = trunc i128 %i.cf to i64                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !36
  %i.ci = lshr i128 %i.cf, 64
  %i.cj = lshr i128 %i.af, 64
  %i.ck = add nuw nsw i128 %i.ci, %i.cj
  %i.cl = trunc i128 %i.ck to i64                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %bb.e, label %_sp_sqr_4.exit

bb.e:                                             ; preds = %bb.d
  %.not.1.i = icmp eq i64 %i.cg, 0
  br i1 %.not.1.i, label %bb.f, label %_sp_sqr_4.exit

bb.f:                                             ; preds = %bb.e
  %.not.2.i = icmp eq i64 %i.bz, 0
  br i1 %.not.2.i, label %bb.g, label %_sp_sqr_4.exit

bb.g:                                             ; preds = %bb.f
  %.not.3.i = icmp eq i64 %i.bq, 0
  br i1 %.not.3.i, label %bb.h, label %_sp_sqr_4.exit

bb.h:                                             ; preds = %bb.g
  %.not.4.i = icmp eq i64 %i.bf, 0
  br i1 %.not.4.i, label %bb.i, label %_sp_sqr_4.exit

bb.i:                                             ; preds = %bb.h
  %.not.5.i = icmp eq i64 %i.au, 0
  br i1 %.not.5.i, label %bb.j, label %_sp_sqr_4.exit

bb.j:                                             ; preds = %bb.i
  %.not.6.i = icmp eq i64 %i.al, 0
  br i1 %.not.6.i, label %bb.k, label %_sp_sqr_4.exit

bb.k:                                             ; preds = %bb.j
  %.not.7.i = icmp ne i64 %i.ag, 0
  %spec.select.i = zext i1 %.not.7.i to i16
  br label %_sp_sqr_4.exit

_sp_sqr_4.exit:                                   ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.lcssa.i = phi i16 [ 8, %bb.d ], [ 4, %bb.h ], [ 7, %bb.e ], [ %spec.select.i, %bb.k ], [ 6, %bb.f ], [ 3, %bb.i ], [ 5, %bb.g ], [ 2, %bb.j ]
  store i16 %.0.lcssa.i, ptr %1, align 8, !tbaa !40
  br label %.thread17

bb.l:                                             ; preds = %.thread
  tail call fastcc void @_sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %.thread17

.thread17:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.l, %_sp_sqr_4.exit
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %_sp_sqr_4.exit ], [ 0, %bb.l ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_sp_sqr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = alloca i64, i64 %i.c, align 16           ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36
  %i.g = zext i64 %i.f to i128                    ; 2 uses
  %i.h = mul nuw i128 %i.g, %i.g                  ; 2 uses
  %i.i = trunc i128 %i.h to i64
  store i64 %i.i, ptr %i.d, align 16, !tbaa !36
  %i.j = lshr i128 %i.h, 64                       ; 2 uses
  %i.k = shl i16 %i.a, 1                          ; 2 uses
  %i.l = icmp eq i16 %i.k, 2
  %extract.t109.a = trunc nuw i128 %i.j to i64
  br i1 %i.l, label %._crit_edge88, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %bb.a
  %i.m = add i16 %i.k, -1
  %umax = tail call i16 @llvm.umax.i16(i16 %i.m, i16 2) ; 2 uses
  %wide.trip.count = zext i16 %umax to i64
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %._crit_edge
  %indvars.iv96 = phi i32 [ 1, %.lr.ph87.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 3 uses
  %indvars.iv.a = phi i64 [ 1, %.lr.ph87.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %.06285 = phi i128 [ 0, %.lr.ph87.preheader ], [ %i.ba, %._crit_edge ] ; 2 uses
  %.06384 = phi i128 [ %i.j, %.lr.ph87.preheader ], [ %i.az, %._crit_edge ] ; 2 uses
  %2 = lshr i64 %indvars.iv.a, 1
  %3 = add nuw nsw i64 %2, 1
  %4 = lshr i32 %indvars.iv96, 1
  %5 = sub nsw i32 %indvars.iv96, %4
  %6 = zext i32 %5 to i64
  %i.n = trunc nuw i64 %indvars.iv.a to i32       ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.a to i16
  %i.p = lshr i16 %i.o, 1                         ; 3 uses
  %i.q = zext nneg i16 %i.p to i32                ; 3 uses
  %i.r = sub nuw nsw i32 %i.n, %i.q
  %i.s = icmp eq i32 %i.r, %i.q
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph87
  %i.t = zext nneg i16 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !36
  %i.w = zext i64 %i.v to i128                    ; 2 uses
  %i.x = mul nuw i128 %i.w, %i.w                  ; 2 uses
  %i.y = and i128 %i.x, 18446744073709551615
  %i.z = add nuw nsw i128 %i.y, %.06384
  %i.aa = lshr i128 %i.x, 64
  %i.ab = add nuw nsw i128 %i.aa, %.06285
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph87
  %.164 = phi i128 [ %i.z, %bb.b ], [ %.06384, %.lr.ph87 ] ; 2 uses
  %.1 = phi i128 [ %i.ab, %bb.b ], [ %.06285, %.lr.ph87 ] ; 2 uses
  %.06676 = add nuw i16 %i.p, 1
  %i.ac = icmp ult i16 %.06676, %i.a
  %i.ad = icmp ne i32 %i.n, %i.q
  %i.ae = and i1 %i.ad, %i.ac
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv98 = phi i64 [ %i.af, %.lr.ph ], [ %6, %bb.c ] ; 3 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.lr.ph ], [ %3, %bb.c ] ; 2 uses
  %.279 = phi i128 [ %i.aq, %.lr.ph ], [ %.1, %bb.c ]
  %.26578 = phi i128 [ %i.ao, %.lr.ph ], [ %.164, %bb.c ]
  %i.af = add nsw i64 %indvars.iv98, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv94
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = zext i64 %i.ah to i128
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %indvars.iv98
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.al = zext i64 %i.ak to i128
  %i.am = mul nuw i128 %i.al, %i.ai               ; 2 uses
  %i.an = shl i128 %i.am, 1
  %reass.add = and i128 %i.an, 36893488147419103230
  %i.ao = add i128 %reass.add, %.26578            ; 2 uses
  %i.ap = lshr i128 %i.am, 63
  %reass.add75 = and i128 %i.ap, 36893488147419103230
  %i.aq = add i128 %reass.add75, %.279            ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next95, %i.b
  %i.as = trunc nuw i64 %indvars.iv98 to i32
  %i.at = icmp sgt i32 %i.as, 1
  %i.au = and i1 %i.at, %i.ar
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.265.lcssa = phi i128 [ %.164, %bb.c ], [ %i.ao, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi i128 [ %.1, %bb.c ], [ %i.aq, %.lr.ph ] ; 2 uses
  %i.av = trunc i128 %.265.lcssa to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.a
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !36
  %i.ax = lshr i128 %.265.lcssa, 64
  %i.ay = and i128 %.2.lcssa, 18446744073709551615
  %i.az = add nuw nsw i128 %i.ay, %i.ax           ; 2 uses
  %i.ba = lshr i128 %.2.lcssa, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i32 %indvars.iv96, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !164

._crit_edge88.loopexit:                           ; preds = %._crit_edge
  %extract.t110 = trunc i128 %i.az to i64
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %bb.a
  %.sink.off0 = phi i64 [ %extract.t109.a, %bb.a ], [ %extract.t110, %._crit_edge88.loopexit ]
  %.067.lcssa = phi i16 [ 1, %bb.a ], [ %umax, %._crit_edge88.loopexit ] ; 2 uses
  %i.bb = zext i16 %.067.lcssa to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bb
  store i64 %.sink.off0, ptr %i.bc, align 8, !tbaa !36
  %i.bd = add i16 %.067.lcssa, 1                  ; 3 uses
  store i16 %i.bd, ptr %1, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = zext i16 %i.bd to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 16 %i.d, i64 %i.bg, i1 false)
  %.not73 = icmp eq i16 %i.bd, 0
  br i1 %.not73, label %bb.e, label %.preheader

bb.d:                                             ; preds = %.preheader
  %indvars.iv.next103 = add nsw i64 %indvars.iv1023, -1
  %i.bh = icmp sgt i64 %indvars.iv1023, 1
  br i1 %i.bh, label %.preheader, label %.split.loop.exit107, !llvm.loop !165

.preheader:                                       ; preds = %._crit_edge88, %bb.d
  %indvars.iv1023 = phi i64 [ %indvars.iv.next103, %bb.d ], [ %i.bf, %._crit_edge88 ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv1023
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %.not74 = icmp eq i64 %i.bj, 0
  br i1 %.not74, label %bb.d, label %.split.loop.exit, !llvm.loop !165

.split.loop.exit:                                 ; preds = %.preheader
  %i.bk = trunc i64 %indvars.iv1023 to i16
  br label %.split.loop.exit107

.split.loop.exit107:                              ; preds = %bb.d, %.split.loop.exit
  %.0.in.lcssa = phi i16 [ %i.bk, %.split.loop.exit ], [ 0, %bb.d ]
  store i16 %.0.in.lcssa, ptr %1, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge88, %.split.loop.exit107
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_sqrmod(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %or.cond.not34 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null                     ; 2 uses
  %or.cond3.not = and i1 %or.cond.not34, %i.c
  br i1 %or.cond3.not, label %bb.b, label %sp_mod.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, %1
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !39
  %i.i = zext i16 %i.h to i32
  %i.j = icmp samesign ugt i32 %i.f, %i.i
  br i1 %i.j, label %sp_mod.exit, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i16 %i.d, 64
  %spec.select37 = select i1 %i.k, i32 -98, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.2 = phi i32 [ 0, %bb.c ], [ %spec.select37, %bb.d ] ; 2 uses
  %i.l = icmp ne i32 %.2, 0                       ; 2 uses
  %.not35 = icmp eq ptr %2, %1
  %or.cond = or i1 %.not35, %i.l
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = tail call i32 @sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %sp_mod.exit

bb.f:                                             ; preds = %bb.e
  %or.cond.i.demorgan = and i1 %i.b, %i.c
  br i1 %or.cond.i.demorgan, label %bb.g, label %sp_mod.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load i16, ptr %2, align 8, !tbaa !40
  %i.p = icmp ult i16 %i.o, 129
  br i1 %i.p, label %bb.h, label %sp_mod.exit

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @sp_div(ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %1, ptr noundef null, ptr noundef nonnull %2)
  br label %sp_mod.exit

bb.i:                                             ; preds = %.thread
  br i1 %i.l, label %sp_mod.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc i32 @_sp_sqrmod(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.a, %bb.c, %bb.h, %bb.g, %bb.f, %bb.i, %bb.j, %bb.e
  %.3 = phi i32 [ %.2, %bb.i ], [ %i.m, %bb.e ], [ %i.r, %bb.j ], [ %i.q, %bb.h ], [ -98, %bb.g ], [ -98, %bb.f ], [ -98, %bb.c ], [ -98, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_sqrmod(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address) %2) unnamed_addr #13 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i16 0, ptr %2, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store volatile i64 0, ptr %i.c, align 8, !tbaa !36
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = zext i16 %i.a to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %i.g = and i64 %i.f, 4294967295
  %i.h = add nuw nsw i64 %i.g, 2
  %i.i = tail call ptr @llvm.stacksave.p0()
  %i.j = alloca i64, i64 %i.h, align 16           ; 6 uses
  %i.k = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.l = add i16 %i.k, -65
  %or.cond = icmp ult i16 %i.l, -64
  br i1 %or.cond, label %sp_mod.exit, label %sp_init_size.exit

sp_init_size.exit:                                ; preds = %bb.c
  %i.m = shl nuw nsw i16 %i.k, 1
  store volatile i16 0, ptr %i.j, align 16, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store volatile i64 0, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store volatile i16 %i.m, ptr %i.o, align 2, !tbaa !37
  %i.p = call i32 @sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %i.j) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %sp_mod.exit

bb.d:                                             ; preds = %sp_init_size.exit
  %i.r = icmp eq ptr %1, null
  %i.s = icmp eq ptr %2, null
  %or.cond3.i = or i1 %i.r, %i.s
  br i1 %or.cond3.i, label %sp_mod.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i16, ptr %i.j, align 16, !tbaa !40
  %i.u = icmp ult i16 %i.t, 129
  br i1 %i.u, label %bb.f, label %sp_mod.exit

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @sp_div(ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %1, ptr noundef null, ptr noundef nonnull %2)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %sp_init_size.exit
  %.3 = phi i32 [ -98, %bb.d ], [ %i.p, %sp_init_size.exit ], [ %i.v, %bb.f ], [ -98, %bb.e ], [ -98, %bb.c ]
  call void @llvm.stackrestore.p0(ptr %i.i)
  br label %bb.g

bb.g:                                             ; preds = %sp_mod.exit, %bb.b
  %.4 = phi i32 [ 0, %bb.b ], [ %.3, %sp_mod.exit ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mont_red_ex(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.c to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw nsw i32 %i.e, 1
  %.not = icmp samesign ult i32 %i.i, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.e
end_hunk_1
