Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/apply?download=true
inline.NumInlined: 449
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ws_fix_copy

; Function Attrs: nounwind uwtable
define internal fastcc void @update_pre_post_images(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.image, align 8              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  call void @strbuf_release(ptr noundef nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  call void @free(ptr noundef %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  %i.c = add i64 %3, 1
  call void @strbuf_attach(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %3, i64 noundef %i.c) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  %.not28.i = icmp eq i64 %i.g, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  br i1 %.not28.i, label %.image_prepare.exit_crit_edge, label %.preheader.i.preheader

.image_prepare.exit_crit_edge:                    ; preds = %bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159
  br label %image_prepare.exit

.preheader.i.preheader:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %image_add_line.exit
  %.02327.i = phi ptr [ %spec.select.i, %image_add_line.exit ], [ %i.e, %.preheader.i.preheader ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.026.i = phi ptr [ %.02327.i, %.preheader.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.j = load i8, ptr %.026.i, align 1, !tbaa !63
  %.not25.i = icmp eq i8 %i.j, 10                 ; 3 uses
  br i1 %.not25.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.026.i, i64 1 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.h
  br i1 %i.l, label %bb.b, label %.critedge.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %.0.lcssa.i = phi ptr [ %i.k, %bb.c ], [ %.026.i, %bb.b ] ; 2 uses
  %.0.lcssa.i125 = ptrtoaddr ptr %.0.lcssa.i to i64
  %spec.select.idx.i.neg = sext i1 %.not25.i to i64
  %spec.select.idx.i = zext i1 %.not25.i to i64
  %spec.select.i = getelementptr i8, ptr %.0.lcssa.i, i64 %spec.select.idx.i ; 4 uses
  %i.m = ptrtoint ptr %spec.select.i to i64
  %i.n = ptrtoint ptr %.02327.i to i64            ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159 ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  %i.r = load i64, ptr %i.i, align 8, !tbaa !160  ; 2 uses
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !156
  br label %bb.f

bb.d:                                             ; preds = %.critedge.i
  %i.t = mul i64 %i.r, 3
  %i.u = add i64 %i.t, 48
  %i.v = lshr i64 %i.u, 1
  %..i = call i64 @llvm.umax.i64(i64 %i.v, i64 %i.q) ; 4 uses
  store i64 %..i, ptr %i.i, align 8, !tbaa !160
  %i.w = icmp ugt i64 %..i, 1152921504606846975
  br i1 %i.w, label %bb.e, label %st_mult.exit.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i) #25
  unreachable

st_mult.exit.i:                                   ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.y = shl nuw i64 %..i, 4
  %i.z = call ptr @xrealloc(ptr noundef %i.x, i64 noundef %i.y) #21 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !156
  %.pre23.i = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %st_mult.exit.i, %._crit_edge.i
  %i.aa = phi i64 [ %i.p, %._crit_edge.i ], [ %.pre23.i, %st_mult.exit.i ]
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %st_mult.exit.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  store i64 %i.o, ptr %i.ac, align 8, !tbaa !162
  %.not11.i.i = icmp eq ptr %spec.select.i, %.02327.i
  br i1 %.not11.i.i, label %image_add_line.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ad = xor i64 %i.n, -1
  %i.ae = add i64 %i.ad, %.0.lcssa.i125
  %xtraiter = and i64 %i.o, 1
  %i.af = icmp eq i64 %i.ae, %spec.select.idx.i.neg
  br i1 %i.af, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.1.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.089.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.az, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.02327.i, i64 %.089.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !63  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !63
  %i.al = and i8 %i.ak, 1
  %.not.i.i = icmp eq i8 %i.al, 0
  %i.am = mul i32 %.010.i.i, 3
  %i.an = zext i8 %i.ah to i32
  %i.ao = add i32 %i.am, %i.an
  %.1.i.i = select i1 %.not.i.i, i32 %i.ao, i32 %.010.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02327.i, i64 %.089.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !63  ; 2 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !63
  %i.av = and i8 %i.au, 1
  %.not.i.i.1 = icmp eq i8 %i.av, 0
  %i.aw = mul i32 %.1.i.i, 3
  %i.ax = zext i8 %i.ar to i32
  %i.ay = add i32 %i.aw, %i.ax
  %.1.i.i.1 = select i1 %.not.i.i.1, i32 %i.ay, i32 %.1.i.i ; 3 uses
  %i.az = add nuw i64 %.089.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash_line.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !4

hash_line.exit.loopexit.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash_line.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %hash_line.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.1.i.i.1, %hash_line.exit.loopexit.i.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.az, %hash_line.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod127 = trunc i64 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod127)
  %i.ba = getelementptr inbounds nuw i8, ptr %.02327.i, i64 %.089.i.i.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !63  ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !63
  %i.bf = and i8 %i.be, 1
  %.not.i.i.epil = icmp eq i8 %i.bf, 0
  %i.bg = mul i32 %.010.i.i.epil.init, 3
  %i.bh = zext i8 %i.bb to i32
  %i.bi = add i32 %i.bg, %i.bh
  %.1.i.i.epil = select i1 %.not.i.i.epil, i32 %i.bi, i32 %.010.i.i.epil.init
  br label %hash_line.exit.loopexit.i

hash_line.exit.loopexit.i:                        ; preds = %hash_line.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %hash_line.exit.loopexit.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.bj = and i32 %.1.i.i.lcssa, 16777215
  br label %image_add_line.exit

image_add_line.exit:                              ; preds = %bb.f, %hash_line.exit.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.bj, %hash_line.exit.loopexit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = and i32 %i.bl, -16777216
  %i.bn = or disjoint i32 %i.bm, %.0.lcssa.i.i
  store i32 %i.bn, ptr %i.bk, align 8
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.bp = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 16777215
  store i32 %i.bt, ptr %i.br, align 8
  %i.bu = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bv, ptr %.phi.trans.insert, align 8, !tbaa !159
  %i.bw = icmp ult ptr %spec.select.i, %i.h
  br i1 %i.bw, label %.preheader.i, label %image_prepare.exit, !llvm.loop !5

image_prepare.exit:                               ; preds = %image_add_line.exit, %.image_prepare.exit_crit_edge
  %i.bx = phi i64 [ %.pre, %.image_prepare.exit_crit_edge ], [ %i.bv, %image_add_line.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.not82 = icmp eq i64 %i.bx, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %image_prepare.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !156
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvars.iv
  %5 = lshr i32 %i.cd, 24
  %6 = trunc nuw i32 %5 to i8
  %7 = getelementptr i8, ptr %i.cf, i64 11
  store i8 %6, ptr %7, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i64, ptr %i.by, align 8, !tbaa !159
  %i.ch = icmp ugt i64 %i.cg, %indvars.iv.next
  br i1 %i.ch, label %bb.g, label %._crit_edge, !llvm.loop !278

._crit_edge:                                      ; preds = %bb.g, %image_prepare.exit
  call void @strbuf_release(ptr noundef nonnull %0) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !156
  call void @free(ptr noundef %i.cj) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !282
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !159 ; 2 uses
  %.not83 = icmp eq i64 %i.cl, 0
  br i1 %.not83, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !157
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre98 = load ptr, ptr %i.co, align 8, !tbaa !156
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.m
  %i.cq = phi i64 [ %i.cl, %.lr.ph78 ], [ %i.dt, %bb.m ] ; 2 uses
  %i.cr = phi ptr [ %.pre98, %.lr.ph78 ], [ %i.du, %bb.m ] ; 3 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next96, %bb.m ] ; 3 uses
  %.076 = phi ptr [ %i.cn, %.lr.ph78 ], [ %.2, %bb.m ] ; 3 uses
  %.04775 = phi i32 [ 0, %.lr.ph78 ], [ %.148, %bb.m ] ; 3 uses
  %.04974 = phi i32 [ 0, %.lr.ph78 ], [ %.251, %bb.m ] ; 3 uses
  %.05472 = phi i64 [ 0, %.lr.ph78 ], [ %.155, %bb.m ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv95 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = and i32 %i.cu, 16777216
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.cw = load i64, ptr %i.cp, align 8, !tbaa !159 ; 2 uses
  %i.cx = sext i32 %.04974 to i64                 ; 2 uses
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph70, label %.critedge

.lr.ph70:                                         ; preds = %.preheader
  %i.cz = load ptr, ptr %i.ci, align 8, !tbaa !156
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load i64, ptr %i.cs, align 8, !tbaa !162
  %i.db = add i64 %i.da, %.05472
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph70, %bb.k
  %indvars.iv92 = phi i64 [ %i.cx, %.lr.ph70 ], [ %indvars.iv.next93, %bb.k ] ; 3 uses
  %.169 = phi ptr [ %.076, %.lr.ph70 ], [ %i.dh, %bb.k ] ; 3 uses
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %indvars.iv92 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = and i32 %i.de, 16777216
  %.not61 = icmp eq i32 %i.df, 0
  br i1 %.not61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !162
  %i.dh = getelementptr inbounds nuw i8, ptr %.169, i64 %i.dg ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 3 uses
  %i.di = icmp ugt i64 %i.cw, %indvars.iv.next93
  br i1 %i.di, label %bb.j, label %.critedge.loopexit, !llvm.loop !279

.critedge.loopexit:                               ; preds = %bb.k
  %i.dj = trunc nsw i64 %indvars.iv.next93 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.150.lcssa = phi i32 [ %.04974, %.preheader ], [ %i.dj, %.critedge.loopexit ]
  %.1.lcssa = phi ptr [ %.076, %.preheader ], [ %i.dh, %.critedge.loopexit ]
  %i.dk = add nsw i32 %.04775, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dl = trunc nsw i64 %indvars.iv92 to i32
  %i.dm = load i64, ptr %i.dc, align 8, !tbaa !162 ; 4 uses
  %i.dn = load i64, ptr %i.cs, align 8, !tbaa !162
  call void @strbuf_splice(ptr noundef nonnull %1, i64 noundef %.05472, i64 noundef %i.dn, ptr noundef %.169, i64 noundef %i.dm) #21
  %i.do = add i64 %i.dm, %.05472
  %i.dp = getelementptr inbounds nuw i8, ptr %.169, i64 %i.dm
  %i.dq = load ptr, ptr %i.co, align 8, !tbaa !156 ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv95
  store i64 %i.dm, ptr %i.dr, align 8, !tbaa !162
  %i.ds = add nsw i32 %i.dl, 1
  %.pre99 = load i64, ptr %i.ck, align 8, !tbaa !159
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge, %bb.i
  %i.dt = phi i64 [ %i.cq, %.critedge ], [ %.pre99, %bb.l ], [ %i.cq, %bb.i ] ; 3 uses
  %i.du = phi ptr [ %i.cr, %.critedge ], [ %i.dq, %bb.l ], [ %i.cr, %bb.i ]
  %.155 = phi i64 [ %.05472, %.critedge ], [ %i.do, %bb.l ], [ %i.db, %bb.i ]
  %.251 = phi i32 [ %.150.lcssa, %.critedge ], [ %i.ds, %bb.l ], [ %.04974, %bb.i ]
  %.148 = phi i32 [ %i.dk, %.critedge ], [ %.04775, %bb.l ], [ %.04775, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1.lcssa, %.critedge ], [ %i.dp, %bb.l ], [ %.076, %bb.i ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.dv = icmp ugt i64 %i.dt, %indvars.iv.next96
  br i1 %i.dv, label %bb.h, label %._crit_edge79.loopexit, !llvm.loop !280

._crit_edge79.loopexit:                           ; preds = %bb.m
  %i.dw = sext i32 %.148 to i64
  %i.dx = sub nsw i64 %i.dt, %i.dw
  br label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit, %._crit_edge
  %i.dy = phi i64 [ 0, %._crit_edge ], [ %i.dx, %._crit_edge79.loopexit ]
  store i64 %i.dy, ptr %i.ck, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare void @strbuf_splice(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #18

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @string_list_sort(ptr noundef) local_unnamed_addr #2

declare i32 @repo_rerere(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @remove_file(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = tail call i32 @remove_file_from_index(ptr noundef %i.h, ptr noundef %i.j) #21
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.237, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ @.str.237, %bb.d ]
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.p = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %i.o) #21 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58
  %.not12 = icmp eq i32 %i.r, 0
  br i1 %.not12, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = tail call i32 @remove_or_warn(i32 noundef %i.t, ptr noundef %i.v) #21
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ne i32 %2, 0
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.aa = tail call i32 @remove_path(ptr noundef %i.z) #21 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %_.exit
  %.0 = phi i32 [ -1, %_.exit ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
end_hunk_0
