Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_lz_kernel?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ZL_Lz_decode_u16Loop:bb.a
  %i.t = add i64 %i.a, 24
  %scevgep104 = getelementptr i8, ptr %0, i64 16  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0101.i = phi i64 [ %i.l, %bb.a ], [ %i.ae, %.loopexit ] ; 10 uses
  %.096.i = phi i64 [ %i.o, %bb.a ], [ %i.af, %.loopexit ] ; 5 uses
  %.093.i = phi i64 [ %i.s, %bb.a ], [ %i.ga, %.loopexit ] ; 7 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.h, i64 %.093.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !37   ; 2 uses
  %i.w = zext i16 %i.v to i64                     ; 9 uses
  %i.x = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.093.i
  %i.y = load i16, ptr %i.x, align 2, !tbaa !37   ; 4 uses
  %i.z = zext i16 %i.y to i64                     ; 5 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.093.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !37 ; 4 uses
  %i.ac = zext i16 %i.ab to i64                   ; 3 uses
  %i.ad = add i64 %.0101.i, %i.w                  ; 6 uses
  %i.ae = add nsw i64 %i.ad, %i.z                 ; 6 uses
  %i.af = add nsw i64 %.096.i, %i.w               ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %.0101.i ; 10 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %.096.i ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = icmp ugt i16 %i.v, 32
  br i1 %i.ai, label %bb.c, label %.loopexit52, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp sgt i64 %i.af, %i.q
  %i.ak = icmp sgt i64 %i.ae, %i.m
  %i.al = select i1 %i.aj, i1 true, i1 %i.ak, !prof !38
  br i1 %i.al, label %.critedge.i, label %.preheader51.preheader, !prof !38

.preheader51.preheader:                           ; preds = %bb.c
  %i.am = add nsw i64 %i.w, -33                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %xtraiter = and i64 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i64 %i.am, 224
  br i1 %i.ap, label %.preheader51.epil.preheader, label %.preheader51.preheader.new

.preheader51.preheader.new:                       ; preds = %.preheader51.preheader
  %unroll_iter = and i64 %i.ao, 1152921504606846968
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51, %.preheader51.preheader.new
  %.090.i = phi i64 [ 32, %.preheader51.preheader.new ], [ %i.bn, %.preheader51 ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader51.preheader.new ], [ %niter.next.7, %.preheader51 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.090.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aq, ptr noundef nonnull align 1 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.as = add nuw nsw i64 %.090.i, 32             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 1 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = add nuw nsw i64 %.090.i, 64             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aw, ptr noundef nonnull align 1 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ay = add nuw nsw i64 %.090.i, 96             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.az, ptr noundef nonnull align 1 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = add nuw nsw i64 %.090.i, 128            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 1 dereferenceable(32) %i.bd, i64 32, i1 false)
  %i.be = add nuw nsw i64 %.090.i, 160            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bf, ptr noundef nonnull align 1 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bh = add nuw nsw i64 %.090.i, 192            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bi, ptr noundef nonnull align 1 dereferenceable(32) %i.bj, i64 32, i1 false)
  %i.bk = add nuw nsw i64 %.090.i, 224            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 1 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.bn = add nuw nsw i64 %.090.i, 256            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.loopexit52.loopexit.unr-lcssa, label %.preheader51, !llvm.loop !0

.loopexit52.loopexit.unr-lcssa:                   ; preds = %.preheader51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit52, label %.preheader51.epil.preheader

.preheader51.epil.preheader:                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.preheader
  %.090.i.epil.init = phi i64 [ 32, %.preheader51.preheader ], [ %i.bn, %.loopexit52.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.preheader51.epil

.preheader51.epil:                                ; preds = %.preheader51.epil, %.preheader51.epil.preheader
  %.090.i.epil = phi i64 [ %i.bq, %.preheader51.epil ], [ %.090.i.epil.init, %.preheader51.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader51.epil ], [ 0, %.preheader51.epil.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i.epil
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.090.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bo, ptr noundef nonnull align 1 dereferenceable(32) %i.bp, i64 32, i1 false)
  %i.bq = add nuw nsw i64 %.090.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit52, label %.preheader51.epil, !llvm.loop !52

.loopexit52:                                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.epil, %bb.b
  %i.br = sub nsw i64 %i.ad, %i.ac                ; 3 uses
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %ZL_Lz_decode_fastLoop.exit, label %bb.d, !prof !38

bb.d:                                             ; preds = %.loopexit52
  %i.bt = icmp ult i16 %i.ab, %i.y
  br i1 %i.bt, label %bb.e, label %bb.k, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp sgt i64 %i.ae, %i.m
  br i1 %i.bu, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr i8, ptr %0, i64 %i.ad     ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.z ; 2 uses
  %i.by = icmp ult i16 %i.ab, 16
  br i1 %i.by, label %bb.g, label %.preheader47

bb.g:                                             ; preds = %bb.f
  %i.bz = icmp samesign ult i16 %i.ab, 8
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.ac
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !41
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !41
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.ac
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.bw, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.val = load i32, ptr %i.cp, align 1
  store i32 %.val, ptr %i.cq, align 1
  %i.cr = sext i32 %i.cb to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  br label %ZS_overlapCopy8.exit

bb.i:                                             ; preds = %bb.g
  %.val4 = load i64, ptr %i.bw, align 1
  store i64 %.val4, ptr %i.bv, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.h, %bb.i
  %.2 = phi ptr [ %i.ct, %bb.h ], [ %i.bw, %bb.i ] ; 9 uses
  %.not12.i = icmp ugt i16 %i.y, 8
  br i1 %.not12.i, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %ZS_overlapCopy8.exit
  %i.cu = getelementptr i8, ptr %i.bv, i64 8      ; 8 uses
  %i.cv = add i64 %.0101.i, %i.a                  ; 2 uses
  %i.cw = add i64 %i.cv, %i.z
  %i.cx = add i64 %i.cw, %i.w
  %i.cy = add i64 %i.cv, %i.w
  %i.cz = add i64 %i.cy, 24
  %i.da = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.cz)
  %i.db = add i64 %i.da, -9
  %i.dc = add i64 %.0101.i, %i.a
  %i.dd = add i64 %i.dc, %i.w
  %i.de = sub i64 %i.db, %i.dd                    ; 2 uses
  %i.df = lshr i64 %i.de, 4
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 464
  br i1 %min.iters.check, label %.preheader.preheader125, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.dh = add i64 %.0101.i, %i.a
  %i.di = add i64 %i.dh, %i.z
  %i.dj = add i64 %i.di, %i.w
  %i.dk = add i64 %i.t, %i.ad
  %i.dl = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dk)
  %i.dm = add i64 %.0101.i, %i.w
  %i.dn = add i64 %i.dm, %i.a
  %reass.sub = sub i64 %i.dl, %i.dn
  %i.do = add i64 %reass.sub, -9
  %i.dp = and i64 %i.do, -16                      ; 3 uses
  %i.dq = add i64 %.0101.i, %i.dp
  %i.dr = add i64 %i.dq, %i.w                     ; 2 uses
  %i.ds = getelementptr i8, ptr %scevgep104, i64 %i.dr ; 3 uses
  %i.dt = getelementptr i8, ptr %scevgep104, i64 %i.ad ; 3 uses
  %i.du = getelementptr i8, ptr %scevgep, i64 %i.dr ; 3 uses
  %3 = getelementptr i8, ptr %.2, i64 8           ; 2 uses
  %4 = getelementptr i8, ptr %.2, i64 %i.dp
  %5 = getelementptr i8, ptr %4, i64 16           ; 2 uses
  %i.dv = getelementptr i8, ptr %.2, i64 16       ; 2 uses
  %i.dw = getelementptr i8, ptr %.2, i64 %i.dp
  %i.dx = getelementptr i8, ptr %i.dw, i64 24     ; 2 uses
  %bound0.a = icmp ult ptr %i.cu, %i.du
  %bound1.a = icmp ult ptr %i.dt, %i.ds
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0105 = icmp ult ptr %i.cu, %5
  %bound1106 = icmp ult ptr %3, %i.ds
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict107
  %bound0108 = icmp ult ptr %i.cu, %i.dx
  %bound1109 = icmp ult ptr %i.dv, %i.ds
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx, %found.conflict110
  %bound0112 = icmp ult ptr %i.dt, %5
  %bound1113 = icmp ult ptr %3, %i.du
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %i.dt, %i.dx
  %bound1117 = icmp ult ptr %i.dv, %i.du
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  br i1 %conflict.rdx119, label %.preheader.preheader125, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 2305843009213693950     ; 3 uses
  %i.dy = shl i64 %n.vec, 4                       ; 2 uses
  %i.dz = getelementptr i8, ptr %.2, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.cu, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 4                       ; 3 uses
  %i.ec = or disjoint i64 %i.eb, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.2, i64 %i.eb
  %next.gep120 = getelementptr i8, ptr %.2, i64 %i.ec
  %next.gep121 = getelementptr i8, ptr %i.cu, i64 %i.eb
  %next.gep122 = getelementptr i8, ptr %i.cu, i64 %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep120, i64 8
  %wide.load = load <2 x i64>, ptr %i.ed, align 1
  %wide.load123 = load <2 x i64>, ptr %i.ee, align 1
  store <2 x i64> %wide.load, ptr %next.gep121, align 1
  store <2 x i64> %wide.load123, ptr %next.gep122, align 1
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader125

.preheader.preheader125:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.2.pn.ph = phi ptr [ %.2, %vector.memcheck ], [ %.2, %.preheader.preheader ], [ %i.dz, %middle.block ]
  %.1.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.preheader.preheader ], [ %i.ea, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader125, %.preheader
  %.2.pn = phi ptr [ %i.ei, %.preheader ], [ %.2.pn.ph, %.preheader.preheader125 ] ; 2 uses
  %.1 = phi ptr [ %i.ek, %.preheader ], [ %.1.ph, %.preheader.preheader125 ] ; 3 uses
  %.136 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 8
  %i.eg = load i64, ptr %.136, align 1
  store i64 %i.eg, ptr %.1, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.2.pn, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 1
  store i64 %i.ej, ptr %i.eh, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.el = icmp ult ptr %i.ek, %i.bx
  br i1 %i.el, label %.preheader, label %.loopexit, !llvm.loop !54

.preheader47:                                     ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bv, ptr noundef nonnull align 1 dereferenceable(16) %i.bw, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.preheader47, %bb.j
  %.pn = phi ptr [ %i.eo, %bb.j ], [ %i.bw, %.preheader47 ] ; 2 uses
  %.0 = phi ptr [ %i.ep, %bb.j ], [ %i.em, %.preheader47 ] ; 3 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0, ptr noundef nonnull align 1 dereferenceable(16) %.035, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.en, ptr noundef nonnull align 1 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %i.bx
  br i1 %i.eq, label %bb.j, label %.loopexit, !llvm.loop !1

bb.k:                                             ; preds = %bb.d
  %i.er = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.er, ptr noundef nonnull align 1 dereferenceable(32) %i.es, i64 32, i1 false)
  %i.et = icmp ugt i16 %i.y, 32
  br i1 %i.et, label %bb.l, label %.loopexit, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.eu = icmp sgt i64 %i.ae, %i.m
  br i1 %i.eu, label %.critedge.i, label %.preheader49.preheader, !prof !38

.preheader49.preheader:                           ; preds = %bb.l
  %i.ev = add nsw i64 %i.z, -33                   ; 2 uses
  %i.ew = lshr i64 %i.ev, 5
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %xtraiter129 = and i64 %i.ex, 7                 ; 3 uses
  %i.ey = icmp ult i64 %i.ev, 224
  br i1 %i.ey, label %.preheader49.epil.preheader, label %.preheader49.preheader.new

.preheader49.preheader.new:                       ; preds = %.preheader49.preheader
  %unroll_iter133 = and i64 %i.ex, 1152921504606846968
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49, %.preheader49.preheader.new
  %.0.i = phi i64 [ 32, %.preheader49.preheader.new ], [ %i.fw, %.preheader49 ] ; 10 uses
  %niter134 = phi i64 [ 0, %.preheader49.preheader.new ], [ %niter134.next.7, %.preheader49 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ez, ptr noundef nonnull align 1 dereferenceable(32) %i.fa, i64 32, i1 false)
  %i.fb = add nuw nsw i64 %.0.i, 32               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fc, ptr noundef nonnull align 1 dereferenceable(32) %i.fd, i64 32, i1 false)
  %i.fe = add nuw nsw i64 %.0.i, 64               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fe
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ff, ptr noundef nonnull align 1 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fh = add nuw nsw i64 %.0.i, 96               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fi, ptr noundef nonnull align 1 dereferenceable(32) %i.fj, i64 32, i1 false)
  %i.fk = add nuw nsw i64 %.0.i, 128              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fl, ptr noundef nonnull align 1 dereferenceable(32) %i.fm, i64 32, i1 false)
  %i.fn = add nuw nsw i64 %.0.i, 160              ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fo, ptr noundef nonnull align 1 dereferenceable(32) %i.fp, i64 32, i1 false)
  %i.fq = add nuw nsw i64 %.0.i, 192              ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fr, ptr noundef nonnull align 1 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.ft = add nuw nsw i64 %.0.i, 224              ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ft
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fu, ptr noundef nonnull align 1 dereferenceable(32) %i.fv, i64 32, i1 false)
  %i.fw = add nuw nsw i64 %.0.i, 256              ; 2 uses
  %niter134.next.7 = add i64 %niter134, 8         ; 2 uses
  %niter134.ncmp.7.not = icmp eq i64 %niter134.next.7, %unroll_iter133
  br i1 %niter134.ncmp.7.not, label %.loopexit.loopexit127.unr-lcssa, label %.preheader49, !llvm.loop !2

.loopexit.loopexit127.unr-lcssa:                  ; preds = %.preheader49
  %lcmp.mod131.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod131.not, label %.loopexit, label %.preheader49.epil.preheader

.preheader49.epil.preheader:                      ; preds = %.loopexit.loopexit127.unr-lcssa, %.preheader49.preheader
  %.0.i.epil.init = phi i64 [ 32, %.preheader49.preheader ], [ %i.fw, %.loopexit.loopexit127.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter129, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.preheader49.epil

.preheader49.epil:                                ; preds = %.preheader49.epil, %.preheader49.epil.preheader
  %.0.i.epil = phi i64 [ %i.fz, %.preheader49.epil ], [ %.0.i.epil.init, %.preheader49.epil.preheader ] ; 3 uses
  %epil.iter130 = phi i64 [ %epil.iter130.next, %.preheader49.epil ], [ 0, %.preheader49.epil.preheader ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0.i.epil
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fx, ptr noundef nonnull align 1 dereferenceable(32) %i.fy, i64 32, i1 false)
  %i.fz = add nuw nsw i64 %.0.i.epil, 32
  %epil.iter130.next = add i64 %epil.iter130, 1   ; 2 uses
  %epil.iter130.cmp.not = icmp eq i64 %epil.iter130.next, %xtraiter129
  br i1 %epil.iter130.cmp.not, label %.loopexit, label %.preheader49.epil, !llvm.loop !55

.loopexit:                                        ; preds = %.loopexit.loopexit127.unr-lcssa, %.preheader49.epil, %bb.j, %.preheader, %middle.block, %bb.k, %ZS_overlapCopy8.exit
  %i.ga = add nsw i64 %.093.i, 1                  ; 3 uses
  %.not.not.i = icmp sge i64 %i.ga, %i.c
  %.not.i = icmp sgt i64 %i.ae, %i.m
  %or.cond.i = select i1 %.not.not.i, i1 true, i1 %.not.i
  %.not115.i = icmp sgt i64 %i.af, %i.q
  %or.cond116.i = select i1 %or.cond.i, i1 true, i1 %.not115.i
  br i1 %or.cond116.i, label %.critedge.i, label %bb.b, !llvm.loop !3

.critedge.i:                                      ; preds = %.loopexit, %bb.c, %bb.e, %bb.l
  %.1102.i62 = phi i64 [ %.0101.i, %bb.c ], [ %.0101.i, %bb.l ], [ %.0101.i, %bb.e ], [ %i.ae, %.loopexit ]
  %.197.i59 = phi i64 [ %.096.i, %bb.c ], [ %.096.i, %bb.l ], [ %.096.i, %bb.e ], [ %i.af, %.loopexit ]
  %.194.i56 = phi i64 [ %.093.i, %bb.c ], [ %.093.i, %bb.l ], [ %.093.i, %bb.e ], [ %i.ga, %.loopexit ]
  store i64 %.194.i56, ptr %i.r, align 8, !tbaa !32
  store i64 %.1102.i62, ptr %i.k, align 8, !tbaa !31
  store i64 %.197.i59, ptr %i.n, align 8, !tbaa !29
  br label %ZL_Lz_decode_fastLoop.exit

ZL_Lz_decode_fastLoop.exit:                       ; preds = %.loopexit52, %.critedge.i
  %.5.i = phi i32 [ 0, %.critedge.i ], [ 4, %.loopexit52 ]
  ret i32 %.5.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @ZL_Lz_decode_u32Loop(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = load ptr, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = add nsw i64 %1, -64                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %scevgep = getelementptr i8, ptr %0, i64 24
  %i.t = add i64 %i.a, 24
  %scevgep105 = getelementptr i8, ptr %0, i64 16  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0101.i = phi i64 [ %i.l, %bb.a ], [ %i.ae, %.loopexit ] ; 10 uses
  %.096.i = phi i64 [ %i.o, %bb.a ], [ %i.af, %.loopexit ] ; 5 uses
  %.093.i = phi i64 [ %i.s, %bb.a ], [ %i.ga, %.loopexit ] ; 7 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.h, i64 %.093.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !37   ; 2 uses
  %i.w = zext i16 %i.v to i64                     ; 9 uses
  %i.x = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.093.i
  %i.y = load i16, ptr %i.x, align 2, !tbaa !37   ; 3 uses
  %i.z = zext i16 %i.y to i64                     ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.093.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40 ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = add i64 %.0101.i, %i.w                  ; 6 uses
  %i.ae = add nsw i64 %i.ad, %i.z                 ; 6 uses
  %i.af = add nsw i64 %.096.i, %i.w               ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %.0101.i ; 10 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %.096.i ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = icmp ugt i16 %i.v, 32
  br i1 %i.ai, label %bb.c, label %.loopexit52, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp sgt i64 %i.af, %i.q
  %i.ak = icmp sgt i64 %i.ae, %i.m
  %i.al = select i1 %i.aj, i1 true, i1 %i.ak, !prof !38
  br i1 %i.al, label %.critedge.i, label %.preheader51.preheader, !prof !38

.preheader51.preheader:                           ; preds = %bb.c
  %i.am = add nsw i64 %i.w, -33                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %xtraiter = and i64 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i64 %i.am, 224
  br i1 %i.ap, label %.preheader51.epil.preheader, label %.preheader51.preheader.new

.preheader51.preheader.new:                       ; preds = %.preheader51.preheader
  %unroll_iter = and i64 %i.ao, 1152921504606846968
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51, %.preheader51.preheader.new
  %.090.i = phi i64 [ 32, %.preheader51.preheader.new ], [ %i.bn, %.preheader51 ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader51.preheader.new ], [ %niter.next.7, %.preheader51 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.090.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aq, ptr noundef nonnull align 1 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.as = add nuw nsw i64 %.090.i, 32             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 1 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = add nuw nsw i64 %.090.i, 64             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aw, ptr noundef nonnull align 1 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ay = add nuw nsw i64 %.090.i, 96             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.az, ptr noundef nonnull align 1 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = add nuw nsw i64 %.090.i, 128            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 1 dereferenceable(32) %i.bd, i64 32, i1 false)
  %i.be = add nuw nsw i64 %.090.i, 160            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bf, ptr noundef nonnull align 1 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bh = add nuw nsw i64 %.090.i, 192            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bi, ptr noundef nonnull align 1 dereferenceable(32) %i.bj, i64 32, i1 false)
  %i.bk = add nuw nsw i64 %.090.i, 224            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 1 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.bn = add nuw nsw i64 %.090.i, 256            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.loopexit52.loopexit.unr-lcssa, label %.preheader51, !llvm.loop !0

.loopexit52.loopexit.unr-lcssa:                   ; preds = %.preheader51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit52, label %.preheader51.epil.preheader

.preheader51.epil.preheader:                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.preheader
  %.090.i.epil.init = phi i64 [ 32, %.preheader51.preheader ], [ %i.bn, %.loopexit52.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %.preheader51.epil

.preheader51.epil:                                ; preds = %.preheader51.epil, %.preheader51.epil.preheader
  %.090.i.epil = phi i64 [ %i.bq, %.preheader51.epil ], [ %.090.i.epil.init, %.preheader51.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader51.epil ], [ 0, %.preheader51.epil.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i.epil
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.090.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bo, ptr noundef nonnull align 1 dereferenceable(32) %i.bp, i64 32, i1 false)
  %i.bq = add nuw nsw i64 %.090.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit52, label %.preheader51.epil, !llvm.loop !56

.loopexit52:                                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.epil, %bb.b
  %i.br = sub nsw i64 %i.ad, %i.ac                ; 3 uses
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %ZL_Lz_decode_fastLoop.exit, label %bb.d, !prof !38

bb.d:                                             ; preds = %.loopexit52
  %i.bt = icmp samesign ult i64 %i.ac, %i.z
  br i1 %i.bt, label %bb.e, label %bb.k, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp sgt i64 %i.ae, %i.m
  br i1 %i.bu, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr i8, ptr %0, i64 %i.ad     ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.z ; 2 uses
  %i.by = icmp ult i32 %i.ab, 16
  br i1 %i.by, label %bb.g, label %.preheader47

bb.g:                                             ; preds = %bb.f
  %i.bz = icmp samesign ult i32 %i.ab, 8
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.ac
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !41
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !41
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.ac
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.bw, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.val = load i32, ptr %i.cp, align 1
  store i32 %.val, ptr %i.cq, align 1
  %i.cr = sext i32 %i.cb to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  br label %ZS_overlapCopy8.exit

bb.i:                                             ; preds = %bb.g
  %.val4 = load i64, ptr %i.bw, align 1
  store i64 %.val4, ptr %i.bv, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.h, %bb.i
  %.2 = phi ptr [ %i.ct, %bb.h ], [ %i.bw, %bb.i ] ; 9 uses
  %.not12.i = icmp ugt i16 %i.y, 8
  br i1 %.not12.i, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %ZS_overlapCopy8.exit
  %i.cu = getelementptr i8, ptr %i.bv, i64 8      ; 8 uses
  %i.cv = add i64 %.0101.i, %i.a                  ; 2 uses
  %i.cw = add i64 %i.cv, %i.z
  %i.cx = add i64 %i.cw, %i.w
  %i.cy = add i64 %i.cv, %i.w
  %i.cz = add i64 %i.cy, 24
  %i.da = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.cz)
  %i.db = add i64 %i.da, -9
  %i.dc = add i64 %.0101.i, %i.a
  %i.dd = add i64 %i.dc, %i.w
  %i.de = sub i64 %i.db, %i.dd                    ; 2 uses
  %i.df = lshr i64 %i.de, 4
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 464
  br i1 %min.iters.check, label %.preheader.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.dh = add i64 %.0101.i, %i.a
  %i.di = add i64 %i.dh, %i.z
  %i.dj = add i64 %i.di, %i.w
  %i.dk = add i64 %i.t, %i.ad
  %i.dl = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dk)
  %i.dm = add i64 %.0101.i, %i.w
  %i.dn = add i64 %i.dm, %i.a
  %reass.sub = sub i64 %i.dl, %i.dn
  %i.do = add i64 %reass.sub, -9
  %i.dp = and i64 %i.do, -16                      ; 3 uses
  %i.dq = add i64 %.0101.i, %i.dp
  %i.dr = add i64 %i.dq, %i.w                     ; 2 uses
  %i.ds = getelementptr i8, ptr %scevgep105, i64 %i.dr ; 3 uses
  %i.dt = getelementptr i8, ptr %scevgep105, i64 %i.ad ; 3 uses
  %i.du = getelementptr i8, ptr %scevgep, i64 %i.dr ; 3 uses
  %3 = getelementptr i8, ptr %.2, i64 8           ; 2 uses
  %4 = getelementptr i8, ptr %.2, i64 %i.dp
  %5 = getelementptr i8, ptr %4, i64 16           ; 2 uses
  %i.dv = getelementptr i8, ptr %.2, i64 16       ; 2 uses
  %i.dw = getelementptr i8, ptr %.2, i64 %i.dp
  %i.dx = getelementptr i8, ptr %i.dw, i64 24     ; 2 uses
  %bound0.a = icmp ult ptr %i.cu, %i.du
  %bound1.a = icmp ult ptr %i.dt, %i.ds
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0106 = icmp ult ptr %i.cu, %5
  %bound1107 = icmp ult ptr %3, %i.ds
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict108
  %bound0109 = icmp ult ptr %i.cu, %i.dx
  %bound1110 = icmp ult ptr %i.dv, %i.ds
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  %bound0113 = icmp ult ptr %i.dt, %5
  %bound1114 = icmp ult ptr %3, %i.du
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %i.dt, %i.dx
  %bound1118 = icmp ult ptr %i.dv, %i.du
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  br i1 %conflict.rdx120, label %.preheader.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 2305843009213693950     ; 3 uses
  %i.dy = shl i64 %n.vec, 4                       ; 2 uses
  %i.dz = getelementptr i8, ptr %.2, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.cu, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 4                       ; 3 uses
  %i.ec = or disjoint i64 %i.eb, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.2, i64 %i.eb
  %next.gep121 = getelementptr i8, ptr %.2, i64 %i.ec
  %next.gep122 = getelementptr i8, ptr %i.cu, i64 %i.eb
  %next.gep123 = getelementptr i8, ptr %i.cu, i64 %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep121, i64 8
  %wide.load = load <2 x i64>, ptr %i.ed, align 1
  %wide.load124 = load <2 x i64>, ptr %i.ee, align 1
  store <2 x i64> %wide.load, ptr %next.gep122, align 1
  store <2 x i64> %wide.load124, ptr %next.gep123, align 1
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader126

.preheader.preheader126:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.2.pn.ph = phi ptr [ %.2, %vector.memcheck ], [ %.2, %.preheader.preheader ], [ %i.dz, %middle.block ]
  %.1.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.preheader.preheader ], [ %i.ea, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader126, %.preheader
  %.2.pn = phi ptr [ %i.ei, %.preheader ], [ %.2.pn.ph, %.preheader.preheader126 ] ; 2 uses
  %.1 = phi ptr [ %i.ek, %.preheader ], [ %.1.ph, %.preheader.preheader126 ] ; 3 uses
  %.136 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 8
  %i.eg = load i64, ptr %.136, align 1
  store i64 %i.eg, ptr %.1, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.2.pn, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 1
  store i64 %i.ej, ptr %i.eh, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.el = icmp ult ptr %i.ek, %i.bx
  br i1 %i.el, label %.preheader, label %.loopexit, !llvm.loop !58

.preheader47:                                     ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bv, ptr noundef nonnull align 1 dereferenceable(16) %i.bw, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.preheader47, %bb.j
  %.pn = phi ptr [ %i.eo, %bb.j ], [ %i.bw, %.preheader47 ] ; 2 uses
  %.0 = phi ptr [ %i.ep, %bb.j ], [ %i.em, %.preheader47 ] ; 3 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0, ptr noundef nonnull align 1 dereferenceable(16) %.035, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.en, ptr noundef nonnull align 1 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %i.bx
  br i1 %i.eq, label %bb.j, label %.loopexit, !llvm.loop !1

bb.k:                                             ; preds = %bb.d
  %i.er = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.er, ptr noundef nonnull align 1 dereferenceable(32) %i.es, i64 32, i1 false)
  %i.et = icmp ugt i16 %i.y, 32
  br i1 %i.et, label %bb.l, label %.loopexit, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.eu = icmp sgt i64 %i.ae, %i.m
  br i1 %i.eu, label %.critedge.i, label %.preheader49.preheader, !prof !38

.preheader49.preheader:                           ; preds = %bb.l
  %i.ev = add nsw i64 %i.z, -33                   ; 2 uses
  %i.ew = lshr i64 %i.ev, 5
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %xtraiter130 = and i64 %i.ex, 7                 ; 3 uses
  %i.ey = icmp ult i64 %i.ev, 224
  br i1 %i.ey, label %.preheader49.epil.preheader, label %.preheader49.preheader.new

.preheader49.preheader.new:                       ; preds = %.preheader49.preheader
  %unroll_iter134 = and i64 %i.ex, 1152921504606846968
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49, %.preheader49.preheader.new
  %.0.i = phi i64 [ 32, %.preheader49.preheader.new ], [ %i.fw, %.preheader49 ] ; 10 uses
  %niter135 = phi i64 [ 0, %.preheader49.preheader.new ], [ %niter135.next.7, %.preheader49 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ez, ptr noundef nonnull align 1 dereferenceable(32) %i.fa, i64 32, i1 false)
  %i.fb = add nuw nsw i64 %.0.i, 32               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fc, ptr noundef nonnull align 1 dereferenceable(32) %i.fd, i64 32, i1 false)
  %i.fe = add nuw nsw i64 %.0.i, 64               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fe
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ff, ptr noundef nonnull align 1 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fh = add nuw nsw i64 %.0.i, 96               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fi, ptr noundef nonnull align 1 dereferenceable(32) %i.fj, i64 32, i1 false)
  %i.fk = add nuw nsw i64 %.0.i, 128              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fl, ptr noundef nonnull align 1 dereferenceable(32) %i.fm, i64 32, i1 false)
  %i.fn = add nuw nsw i64 %.0.i, 160              ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fo, ptr noundef nonnull align 1 dereferenceable(32) %i.fp, i64 32, i1 false)
  %i.fq = add nuw nsw i64 %.0.i, 192              ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fr, ptr noundef nonnull align 1 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.ft = add nuw nsw i64 %.0.i, 224              ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ft
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fu, ptr noundef nonnull align 1 dereferenceable(32) %i.fv, i64 32, i1 false)
  %i.fw = add nuw nsw i64 %.0.i, 256              ; 2 uses
  %niter135.next.7 = add i64 %niter135, 8         ; 2 uses
  %niter135.ncmp.7.not = icmp eq i64 %niter135.next.7, %unroll_iter134
  br i1 %niter135.ncmp.7.not, label %.loopexit.loopexit128.unr-lcssa, label %.preheader49, !llvm.loop !2

.loopexit.loopexit128.unr-lcssa:                  ; preds = %.preheader49
  %lcmp.mod132.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod132.not, label %.loopexit, label %.preheader49.epil.preheader

.preheader49.epil.preheader:                      ; preds = %.loopexit.loopexit128.unr-lcssa, %.preheader49.preheader
  %.0.i.epil.init = phi i64 [ 32, %.preheader49.preheader ], [ %i.fw, %.loopexit.loopexit128.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter130, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.preheader49.epil

.preheader49.epil:                                ; preds = %.preheader49.epil, %.preheader49.epil.preheader
  %.0.i.epil = phi i64 [ %i.fz, %.preheader49.epil ], [ %.0.i.epil.init, %.preheader49.epil.preheader ] ; 3 uses
  %epil.iter131 = phi i64 [ %epil.iter131.next, %.preheader49.epil ], [ 0, %.preheader49.epil.preheader ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0.i.epil
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fx, ptr noundef nonnull align 1 dereferenceable(32) %i.fy, i64 32, i1 false)
  %i.fz = add nuw nsw i64 %.0.i.epil, 32
  %epil.iter131.next = add i64 %epil.iter131, 1   ; 2 uses
  %epil.iter131.cmp.not = icmp eq i64 %epil.iter131.next, %xtraiter130
  br i1 %epil.iter131.cmp.not, label %.loopexit, label %.preheader49.epil, !llvm.loop !59

.loopexit:                                        ; preds = %.loopexit.loopexit128.unr-lcssa, %.preheader49.epil, %bb.j, %.preheader, %middle.block, %bb.k, %ZS_overlapCopy8.exit
  %i.ga = add nsw i64 %.093.i, 1                  ; 3 uses
  %.not.not.i = icmp sge i64 %i.ga, %i.c
  %.not.i = icmp sgt i64 %i.ae, %i.m
  %or.cond.i = select i1 %.not.not.i, i1 true, i1 %.not.i
  %.not115.i = icmp sgt i64 %i.af, %i.q
  %or.cond116.i = select i1 %or.cond.i, i1 true, i1 %.not115.i
  br i1 %or.cond116.i, label %.critedge.i, label %bb.b, !llvm.loop !3

.critedge.i:                                      ; preds = %.loopexit, %bb.c, %bb.e, %bb.l
  %.1102.i62 = phi i64 [ %.0101.i, %bb.c ], [ %.0101.i, %bb.l ], [ %.0101.i, %bb.e ], [ %i.ae, %.loopexit ]
  %.197.i59 = phi i64 [ %.096.i, %bb.c ], [ %.096.i, %bb.l ], [ %.096.i, %bb.e ], [ %i.af, %.loopexit ]
  %.194.i56 = phi i64 [ %.093.i, %bb.c ], [ %.093.i, %bb.l ], [ %.093.i, %bb.e ], [ %i.ga, %.loopexit ]
  store i64 %.194.i56, ptr %i.r, align 8, !tbaa !32
  store i64 %.1102.i62, ptr %i.k, align 8, !tbaa !31
  store i64 %.197.i59, ptr %i.n, align 8, !tbaa !29
  br label %ZL_Lz_decode_fastLoop.exit

ZL_Lz_decode_fastLoop.exit:                       ; preds = %.loopexit52, %.critedge.i
  %.5.i = phi i32 [ 0, %.critedge.i ], [ 4, %.loopexit52 ]
  ret i32 %.5.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 6) i32 @ZL_Lz_decode_sequence(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
end_hunk_0
