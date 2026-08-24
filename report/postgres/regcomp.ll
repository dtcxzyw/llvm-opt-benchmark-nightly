Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regcomp?download=true
inline.NumInlined: 319
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@subcoloronechr:bb.a
  %.017.i.i = phi i16 [ -1, %bb.d ], [ %i.h, %bb.c ], [ %i.u, %bb.e ], [ %i.n, %bb.b ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.f, label %subcolor.exit

bb.f:                                             ; preds = %newsub.exit.i
  %i.ah = icmp eq i16 %i.h, %.017.i.i
  br i1 %i.ah, label %subcolor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.i, align 8
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.k ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.an = sext i16 %.017.i.i to i64               ; 3 uses
  %i.ao = getelementptr inbounds [32 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 %1, ptr %i.ar, align 8
  %.pre.i = load ptr, ptr %i.i, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds [32 x i8], ptr %.pre.i, i64 %i.an
  %.pre21.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = phi i32 [ %.pre21.i, %bb.h ], [ %i.ap, %bb.g ]
  %i.at = phi ptr [ %.pre.i, %bb.h ], [ %i.am, %bb.g ]
  %i.au = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.an
  %i.av = add i32 %i.as, 1
  store i32 %i.av, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.f
  store i16 %.017.i.i, ptr %i.ax, align 2
  br label %subcolor.exit

subcolor.exit:                                    ; preds = %newsub.exit.i, %bb.f, %bb.i
  %.0.i = phi i16 [ %.017.i.i, %bb.i ], [ -1, %newsub.exit.i ], [ %i.h, %bb.f ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i32, ptr %i.ay, align 8
  %.not125 = icmp eq i32 %i.az, 0
  br i1 %.not125, label %bb.j, label %bb.al

bb.j:                                             ; preds = %subcolor.exit
  %i.ba = load i16, ptr %4, align 2
  %.not126 = icmp eq i16 %.0.i, %i.ba
  br i1 %.not126, label %bb.al, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load volatile i32, ptr @InterruptPending, align 4
  %.not.i127 = icmp eq i32 %i.bd, 0
  br i1 %.not.i127, label %bb.m, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void @ProcessInterrupts() #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  %.not24.i = icmp sgt i32 %i.bf, %i.bh
  br i1 %.not24.i, label %bb.q, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %.0.in30.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.031.i = load ptr, ptr %.0.in30.i, align 8     ; 2 uses
  %.not2632.i = icmp eq ptr %.031.i, null
  br i1 %.not2632.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.033.i = phi ptr [ %.0.i128, %bb.p ], [ %.031.i, %.preheader.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp eq ptr %i.bj, %3
  br i1 %i.bk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bm, %.0.i
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %.033.i, align 8
  %i.bp = icmp eq i32 %i.bo, 112
  br i1 %i.bp, label %newarc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph.i
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.033.i, i64 24
  %.0.i128 = load ptr, ptr %.0.in.i, align 8      ; 2 uses
  %.not26.i = icmp eq ptr %.0.i128, null
  br i1 %.not26.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !14

bb.q:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.134.i = load ptr, ptr %i.bq, align 8          ; 2 uses
  %.not2535.i = icmp eq ptr %.134.i, null
  br i1 %.not2535.i, label %.loopexit.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.q, %bb.t
  %.136.i = phi ptr [ %.1.i, %bb.t ], [ %.134.i, %bb.q ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.136.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, %2
  br i1 %i.bt, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph37.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.136.i, i64 4
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = icmp eq i16 %i.bv, %.0.i
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = load i32, ptr %.136.i, align 8
  %i.by = icmp eq i32 %i.bx, 112
  br i1 %i.by, label %newarc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph37.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.136.i, i64 40
  %.1.i = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %.1.i, null
  br i1 %.not25.i, label %.loopexit.i, label %.lr.ph37.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %bb.p, %bb.t, %bb.q, %.preheader.i
  tail call fastcc void @createarc(ptr noundef %i.bc, i32 noundef 112, i16 noundef signext %.0.i, ptr noundef %2, ptr noundef %3)
  br label %newarc.exit

newarc.exit:                                      ; preds = %bb.o, %bb.s, %.loopexit.i
  store i16 %.0.i, ptr %4, align 2
  br label %bb.al

bb.u:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 6 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = add i32 %i.cb, 2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call ptr @palloc_mul_extended(i64 noundef 12, i64 noundef %i.cd, i32 noundef 2) #17 ; 9 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  store i32 101, ptr %i.ci, align 4
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %.not124 = icmp eq i32 %i.cl, 0
  %spec.select = select i1 %.not124, i32 12, i32 %i.cl
  store i32 %spec.select, ptr %i.ck, align 8
  br label %bb.al

bb.w:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = load i32, ptr %i.ca, align 8
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.w ] ; 5 uses
  %.0110138 = phi ptr [ %i.ct, %bb.x ], [ %i.cn, %bb.w ] ; 13 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0110138, i64 4
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %.not = icmp ult i32 %i.cr, %1
  br i1 %.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) %.0110138, i64 12, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0110138, i64 12 ; 2 uses
  %i.cu = load i32, ptr %i.ca, align 8
  %i.cv = icmp sgt i32 %i.cu, %indvars
  br i1 %i.cv, label %.lr.ph, label %.loopexit, !llvm.loop !150

bb.y:                                             ; preds = %.lr.ph
  %indvars155.le = trunc i64 %indvars.iv to i32   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0110138, i64 4 ; 2 uses
  %i.cx = load i32, ptr %.0110138, align 4        ; 4 uses
  %i.cy = icmp ugt i32 %i.cx, %1
  br i1 %i.cy, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %bb.x, %bb.w, %bb.y
  %.0113136 = phi i32 [ %indvars155.le, %bb.y ], [ 0, %bb.w ], [ %indvars, %bb.x ] ; 3 uses
  %.0110134 = phi ptr [ %.0110138, %bb.y ], [ %i.cn, %bb.w ], [ %i.ct, %bb.x ]
  %5 = zext nneg i32 %.0113136 to i64
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %5 ; 3 uses
  store i32 %1, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %1, ptr %i.da, align 4
  %i.db = tail call fastcc i32 @newhicolorrow(ptr noundef %i.b, i32 noundef 0) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %i.db, ptr %i.dc, align 4
  %i.dd = add i32 %.0113136, 1
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.de = icmp eq i32 %i.cx, %i.cr
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = add i32 %indvars155.le, 1               ; 2 uses
  %6 = and i64 %indvars.iv, 4294967295
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dg, ptr noundef nonnull align 4 dereferenceable(12) %.0110138, i64 12, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0110138, i64 8
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.0110138, i64 12
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.dk = icmp ugt i32 %1, %i.cx
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %7 = and i64 %indvars.iv, 4294967295
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %7 ; 3 uses
  store i32 %i.cx, ptr %i.dl, align 4
  %i.dm = add i32 %1, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dm, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.0110138, i64 8
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dp, ptr %i.dq, align 4
  %i.dr = add i32 %indvars155.le, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1114 = phi i32 [ %i.dr, %bb.ac ], [ %indvars155.le, %bb.ab ] ; 3 uses
  %i.ds = sext i32 %.1114 to i64
  %i.dt = getelementptr inbounds [12 x i8], ptr %i.ce, i64 %i.ds ; 3 uses
  store i32 %1, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %1, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.0110138, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = tail call fastcc i32 @newhicolorrow(ptr noundef %i.b, i32 noundef %i.dw) ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.dx, ptr %i.dy, align 4
  %i.dz = add i32 %.1114, 1                       ; 2 uses
  %i.ea = load i32, ptr %i.cw, align 4
  %i.eb = icmp ult i32 %1, %i.ea
  br i1 %i.eb, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ec = add nuw i32 %1, 1
  %i.ed = sext i32 %i.dz to i64
  %i.ee = getelementptr inbounds [12 x i8], ptr %i.ce, i64 %i.ed ; 3 uses
  store i32 %i.ec, ptr %i.ee, align 4
  %i.ef = load i32, ptr %i.cw, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %i.ef, ptr %i.eg, align 4
  %i.eh = load i32, ptr %.0110138, align 4
  %i.ei = icmp ugt i32 %1, %i.eh
  %i.ej = load i32, ptr %i.dv, align 4            ; 2 uses
  br i1 %i.ei, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ek = tail call fastcc i32 @newhicolorrow(ptr noundef %i.b, i32 noundef %i.ej)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.el = phi i32 [ %i.ek, %bb.af ], [ %i.ej, %bb.ae ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.el, ptr %i.em, align 4
  %i.en = add i32 %.1114, 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.2115 = phi i32 [ %i.en, %bb.ag ], [ %i.dz, %bb.ad ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0110138, i64 12
  %i.ep = add nuw nsw i32 %indvars155.le, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aa, %bb.ah, %.loopexit
  %.3 = phi i32 [ %i.dd, %.loopexit ], [ %i.df, %bb.aa ], [ %.2115, %bb.ah ] ; 2 uses
  %.1111 = phi ptr [ %.0110134, %.loopexit ], [ %i.dj, %bb.aa ], [ %i.eo, %bb.ah ]
  %.1 = phi i32 [ %.0113136, %.loopexit ], [ %i.df, %bb.aa ], [ %i.ep, %bb.ah ] ; 2 uses
  %.0 = phi i32 [ %i.db, %.loopexit ], [ %i.di, %bb.aa ], [ %i.dx, %bb.ah ]
  tail call fastcc void @subcoloronerow(ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.eq = load i32, ptr %i.ca, align 8
  %i.er = icmp slt i32 %.1, %i.eq
  br i1 %i.er, label %.lr.ph145, label %._crit_edge

.lr.ph145:                                        ; preds = %bb.ai, %.lr.ph145
  %.2144 = phi i32 [ %i.ew, %.lr.ph145 ], [ %.1, %bb.ai ]
  %.2112143 = phi ptr [ %i.ev, %.lr.ph145 ], [ %.1111, %bb.ai ] ; 2 uses
  %.4142 = phi i32 [ %i.es, %.lr.ph145 ], [ %.3, %bb.ai ] ; 2 uses
  %i.es = add i32 %.4142, 1                       ; 2 uses
  %i.et = sext i32 %.4142 to i64
  %i.eu = getelementptr inbounds [12 x i8], ptr %i.ce, i64 %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eu, ptr noundef nonnull align 4 dereferenceable(12) %.2112143, i64 12, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.2112143, i64 12
  %i.ew = add nsw i32 %.2144, 1                   ; 2 uses
  %i.ex = load i32, ptr %i.ca, align 8
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph145, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph145, %bb.ai
  %.4.lcssa = phi i32 [ %.3, %bb.ai ], [ %i.es, %.lr.ph145 ]
  %i.ez = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not123 = icmp eq ptr %i.ez, null
  br i1 %.not123, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  tail call void @pfree(ptr noundef nonnull %i.ez) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  store ptr %i.ce, ptr %i.cm, align 8
  store i32 %.4.lcssa, ptr %i.ca, align 8
  br label %bb.al

bb.al:                                            ; preds = %subcolor.exit, %newarc.exit, %bb.j, %bb.ak, %bb.v
  ret void
}

declare ptr @palloc_mul_extended(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @newhicolorrow(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre49 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = sdiv i32 2147483647, %i.g
  %.not43 = icmp slt i32 %i.d, %i.h
  br i1 %.not43, label %bb.c, label %.critedge.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = shl i32 %i.d, 1
  %i.l = mul i32 %i.k, %i.f
  %i.m = sext i32 %i.l to i64
  %i.n = tail call ptr @repalloc_mul_extended(ptr noundef %i.j, i64 noundef 2, i64 noundef %i.m, i32 noundef 2) #17 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.i, align 8
  %i.p = load i32, ptr %i.c, align 8
  %i.q = shl i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 8
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %.pre49, %._crit_edge ] ; 2 uses
  %i.s = phi i32 [ %.pre, %bb.d ], [ %i.b, %._crit_edge ]
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8              ; 3 uses
  %i.w = mul i32 %i.v, %i.b
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.x ; 2 uses
  %i.z = mul i32 %i.v, %1
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.aa
  %i.ac = sext i32 %i.v to i64
  %i.ad = shl nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.y, ptr align 2 %i.ab, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.u, align 8
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sext i16 %i.aj to i64
  %i.al = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.u, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.f, label %.critedge, !llvm.loop !152

.critedge.sink.split:                             ; preds = %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  store i32 101, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %.not45 = icmp eq i32 %i.ax, 0
  %spec.select = select i1 %.not45, i32 12, i32 %i.ax
  store i32 %spec.select, ptr %i.aw, align 8
  br label %.critedge
end_hunk_0
