Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fits_hdecompress?download=true
inline.NumInlined: 45
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@fits_hdecompress:bb.a
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.dq ; 3 uses
  %i.dr = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9
  %wide.load81 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !9
  %i.ds = mul nsw <4 x i32> %wide.load, %broadcast.splat
  %i.dt = mul nsw <4 x i32> %wide.load81, %broadcast.splat
  store <4 x i32> %i.ds, ptr %next.gep, align 4, !tbaa !9
  store <4 x i32> %i.dt, ptr %i.dr, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %undigitize.exit.loopexit, label %.lr.ph.i.preheader182

.lr.ph.i.preheader182:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader182, %.lr.ph.i
  %.011.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader182 ] ; 3 uses
  %i.dv = load i32, ptr %.011.i, align 4, !tbaa !9
  %i.dw = mul nsw i32 %i.dv, %i.cy
  store i32 %i.dw, ptr %.011.i, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i26 = icmp ugt ptr %i.dx, %i.dd
  br i1 %.not.i26, label %undigitize.exit.loopexit, label %.lr.ph.i, !llvm.loop !21

undigitize.exit.loopexit:                         ; preds = %.lr.ph.i, %middle.block
  %.pre = load i32, ptr %5, align 4, !tbaa !9
  %.pre42 = load i32, ptr %4, align 4, !tbaa !9
  %.pre44 = load i32, ptr %6, align 4, !tbaa !9
  br label %undigitize.exit

undigitize.exit:                                  ; preds = %undigitize.exit.loopexit, %bb.s, %.preheader.i
  %i.dy = phi i32 [ %.pre44, %undigitize.exit.loopexit ], [ %i.cy, %bb.s ], [ %i.cy, %.preheader.i ]
  %i.dz = phi i32 [ %.pre42, %undigitize.exit.loopexit ], [ %.pre43, %bb.s ], [ %.pre43, %.preheader.i ] ; 12 uses
  %i.ea = phi i32 [ %.pre, %undigitize.exit.loopexit ], [ %.pre41, %bb.s ], [ %.pre41, %.preheader.i ] ; 2 uses
  %i.eb = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 %i.dz) ; 3 uses
  %i.ec = sitofp i32 %i.eb to float
  %i.ed = fpext float %i.ec to double
  %i.ee = tail call double @log(double noundef %i.ed) #13
  %i.ef = add nsw i32 %i.eb, 1
  %i.eg = sdiv i32 %i.ef, 2
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 2
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.ei) #14 ; 9 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %undigitize.exit
  tail call void @ffpmsg(ptr noundef nonnull @.str) #13
  br label %hinv.exit

bb.u:                                             ; preds = %undigitize.exit
  %i.el = fdiv double %i.ee, f0x3FE62E42FEFA39EF
  %i.em = fadd double %i.el, 5.000000e-01
  %i.en = fptosi double %i.em to i32              ; 2 uses
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = icmp sgt i32 %i.eb, %i.eo
  %i.eq = zext i1 %i.ep to i32
  %spec.select.i = add nsw i32 %i.eq, %i.en       ; 3 uses
  %i.er = add nsw i32 %spec.select.i, -1          ; 4 uses
  %i.es = shl nuw i32 1, %i.er                    ; 3 uses
  %i.et = shl i32 4, %i.er
  %i.eu = sub nsw i32 0, %i.es                    ; 3 uses
  %i.ev = shl i32 %i.eu, 2
  %i.ew = ashr exact i32 %i.et, 1
  %i.ex = load i32, ptr %2, align 4, !tbaa !9     ; 2 uses
  %.lobit.i = ashr i32 %i.ex, 31
  %i.ey = add i32 %i.ex, %i.ew
  %i.ez = add i32 %i.ey, %.lobit.i
  %i.fa = and i32 %i.ez, %i.ev
  store i32 %i.fa, ptr %2, align 4, !tbaa !9
  %i.fb = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fb, label %.lr.ph361.i, label %._crit_edge362.i

.lr.ph361.i:                                      ; preds = %bb.u
  %i.fc = shl nuw i32 1, %spec.select.i
  %i.fd = shl i32 2, %i.er                        ; 2 uses
  %i.fe = ashr exact i32 %i.fd, 1                 ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  %i.fg = shl i32 %i.eu, 1
  %i.fh = sext i32 %i.dz to i64                   ; 11 uses
  %i.fi = sub nsw i64 0, %i.fh                    ; 9 uses
  %i.fj = shl i32 %i.dz, 1                        ; 10 uses
  %i.fk = sext i32 %i.fj to i64                   ; 13 uses
  %i.fl = sub nsw i64 0, %i.fk                    ; 9 uses
  %.not288.i = icmp eq i32 %1, 0
  %i.fm = ashr i32 %i.dy, 1                       ; 5 uses
  %i.fn = icmp slt i32 %i.fm, 1
  %i.fo = sub nsw i32 0, %i.fm                    ; 3 uses
  %i.fp = mul i32 %i.dz, 3                        ; 2 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %2, i64 %i.fk ; 2 uses
  %i.fq = add i32 %i.fj, 2
  %i.fr = add i32 %i.fp, 2
  %brmerge.i = or i1 %.not288.i, %i.fn
  %scevgep = getelementptr i8, ptr %2, i64 4
  %scevgep105 = getelementptr i8, ptr %2, i64 8
  %scevgep109 = getelementptr i8, ptr %2, i64 4
  %scevgep112 = getelementptr i8, ptr %2, i64 4
  %scevgep114 = getelementptr i8, ptr %2, i64 8
  %scevgep118 = getelementptr i8, ptr %2, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.as, %.lr.ph361.i
  %.0247359.in.i = phi i32 [ %i.es, %.lr.ph361.i ], [ %.0247359.i, %bb.as ]
  %.0243358.i = phi i32 [ %i.ff, %.lr.ph361.i ], [ %.1245.i, %bb.as ] ; 6 uses
  %.0246357.i = phi i32 [ %i.fe, %.lr.ph361.i ], [ %.0247359.i, %bb.as ] ; 6 uses
  %.0248356.i = phi i32 [ %i.fg, %.lr.ph361.i ], [ %.0249355.i, %bb.as ] ; 6 uses
  %.0249355.i = phi i32 [ %i.eu, %.lr.ph361.i ], [ %i.abb, %bb.as ] ; 4 uses
  %.0250354.i = phi i32 [ %i.fd, %.lr.ph361.i ], [ %.0251353.i, %bb.as ] ; 5 uses
  %.0251353.i = phi i32 [ %i.es, %.lr.ph361.i ], [ %i.aba, %bb.as ] ; 4 uses
  %.0252352.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1253.i, %bb.as ]
  %.0254351.i = phi i32 [ %i.fc, %.lr.ph361.i ], [ %i.fs, %bb.as ]
  %.0255350.i = phi i32 [ %i.dz, %.lr.ph361.i ], [ %.1256.i, %bb.as ] ; 2 uses
  %.0257349.i = phi i32 [ %i.ea, %.lr.ph361.i ], [ %.1258.i, %bb.as ] ; 2 uses
  %.0259348.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1260.i, %bb.as ]
  %.0261347.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1262.i, %bb.as ]
  %.0263346.i = phi i32 [ %i.er, %.lr.ph361.i ], [ %i.abc, %bb.as ] ; 3 uses
  %.0247359.i = ashr i32 %.0247359.in.i, 1        ; 5 uses
  %.0244.i = add nsw i32 %.0247359.i, -1
  %i.fs = ashr i32 %.0254351.i, 1                 ; 5 uses
  %i.ft = shl i32 %.0261347.i, 1                  ; 4 uses
  %i.fu = shl i32 %.0259348.i, 1                  ; 5 uses
  %.not.i27 = icmp sle i32 %.0257349.i, %i.fs     ; 2 uses
  %i.fv = sext i1 %.not.i27 to i32                ; 4 uses
  %.1262.i = add nsw i32 %i.ft, %i.fv             ; 12 uses
  %i.fw = select i1 %.not.i27, i32 0, i32 %i.fs
  %.1258.i = sub nsw i32 %.0257349.i, %i.fw
  %.not287.i = icmp sle i32 %.0255350.i, %i.fs    ; 2 uses
  %i.fx = sext i1 %.not287.i to i32               ; 5 uses
  %.1260.i = add i32 %i.fu, %i.fx                 ; 13 uses
  %i.fy = select i1 %.not287.i, i32 0, i32 %i.fs
  %.1256.i = sub nsw i32 %.0255350.i, %i.fy
  %i.fz = icmp eq i32 %.0263346.i, 0              ; 2 uses
  %.1253.i = select i1 %i.fz, i32 2, i32 %.0252352.i ; 12 uses
  %.1245.i = select i1 %i.fz, i32 0, i32 %.0244.i ; 3 uses
  %i.ga = icmp sgt i32 %.1262.i, 0                ; 2 uses
  br i1 %i.ga, label %.lr.ph.i31, label %.preheader.i28

.lr.ph.i31:                                       ; preds = %bb.v
  %i.gb = add nsw i32 %.1260.i, 1
  %i.gc = ashr i32 %i.gb, 1                       ; 7 uses
  %i.gd = icmp slt i32 %i.gc, %.1260.i
  %i.ge = sext i32 %i.gc to i64
  %i.gf = icmp sgt i32 %i.gc, 0
  %i.gg = add nsw i32 %i.gc, -1                   ; 4 uses
  %i.gh = shl nuw nsw i32 %i.gg, 1
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = zext nneg i32 %i.gg to i64
  %i.gk = icmp sgt i32 %.1260.i, 1
  %i.gl = xor i32 %i.gc, -1
  %i.gm = add i32 %.1260.i, %i.gl
  %i.gn = zext i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 2
  %i.gp = add nuw nsw i64 %i.go, 4
  %wide.trip.count.i = zext nneg i32 %.1262.i to i64
  %i.gq = add i32 %i.fu, -2
  %i.gr = add i32 %i.gq, %i.fx                    ; 2 uses
  %i.gs = lshr i32 %i.gr, 1
  %i.gt = add nuw i32 %i.gs, 1                    ; 2 uses
  %xtraiter = and i32 %i.gc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gu = icmp ult i32 %i.gc, 8
  %xtraiter183 = and i32 %i.gt, 7                 ; 3 uses
  %i.gv = icmp ult i32 %i.gr, 14
  %unroll_iter = and i32 %i.gt, -8
  %lcmp.mod184.not = icmp eq i32 %xtraiter183, 0
  %lcmp.mod185 = icmp ne i32 %xtraiter183, 0
  br label %bb.w

.preheader.i28:                                   ; preds = %unshuffle.exit.i, %bb.v
  %i.gw = icmp sgt i32 %.1260.i, 0                ; 2 uses
  br i1 %i.gw, label %.lr.ph327.i, label %._crit_edge.i

.lr.ph327.i:                                      ; preds = %.preheader.i28
  %i.gx = add nsw i32 %.1262.i, 1
  %i.gy = ashr i32 %i.gx, 1                       ; 10 uses
  %i.gz = icmp slt i32 %i.gy, %.1262.i
  %i.ha = mul nsw i32 %i.gy, %i.dz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp sgt i32 %i.gy, 0
  %i.hd = add nsw i32 %i.gy, -1                   ; 3 uses
  %i.he = mul nsw i32 %i.hd, %i.dz                ; 2 uses
  %i.hf = shl i32 %i.he, 1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = sext i32 %i.he to i64
  %i.hi = icmp sgt i32 %.1262.i, 1
  %wide.trip.count370.i = zext nneg i32 %.1260.i to i64
  %i.hj = add i32 %i.ft, %i.fv
  %i.hk = sub i32 %i.hj, %i.gy
  %i.hl = add i32 %i.ft, -1
  %i.hm = add nsw i32 %i.hl, %i.fv
  %i.hn = sub i32 %i.hm, %i.gy
  %i.ho = add i32 %i.ft, -2
  %i.hp = add i32 %i.ho, %i.fv                    ; 2 uses
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = add nuw i32 %i.hq, 1                    ; 2 uses
  %xtraiter188 = and i32 %i.hk, 7                 ; 2 uses
  %lcmp.mod189.not = icmp eq i32 %xtraiter188, 0
  %i.hs = icmp ult i32 %i.hn, 7
  %xtraiter193 = and i32 %i.gy, 7                 ; 2 uses
  %lcmp.mod194.not = icmp eq i32 %xtraiter193, 0
  %i.ht = icmp ult i32 %i.gy, 8
  %xtraiter197 = and i32 %i.hr, 7                 ; 3 uses
  %i.hu = icmp ult i32 %i.hp, 14
  %unroll_iter201 = and i32 %i.hr, -8
  %lcmp.mod199.not = icmp eq i32 %xtraiter197, 0
  %lcmp.mod200 = icmp ne i32 %xtraiter197, 0
  br label %bb.y

bb.w:                                             ; preds = %unshuffle.exit.i, %.lr.ph.i31
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i, %unshuffle.exit.i ] ; 2 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.hw = mul i32 %i.dz, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr [4 x i8], ptr %2, i64 %i.hx ; 4 uses
  br i1 %i.gd, label %.lr.ph.i.i, label %._crit_edge.i.i32

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ej, ptr noundef nonnull align 4 dereferenceable(1) %i.hz, i64 %i.gp, i1 false), !tbaa !9
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.lr.ph.i.i, %bb.w
  br i1 %i.gf, label %.lr.ph55.i.i, label %._crit_edge56.i.i

.lr.ph55.i.i:                                     ; preds = %._crit_edge.i.i32
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.gi ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.gj ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.i.i, %.prol.preheader
  %.04153.i.i.prol = phi ptr [ %i.id, %.prol.preheader ], [ %i.ib, %.lr.ph55.i.i ] ; 2 uses
  %.14352.i.i.prol = phi ptr [ %i.ie, %.prol.preheader ], [ %i.ia, %.lr.ph55.i.i ] ; 2 uses
  %.14551.i.i.prol = phi i32 [ %i.if, %.prol.preheader ], [ %i.gg, %.lr.ph55.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.i.i ]
  %i.ic = load i32, ptr %.04153.i.i.prol, align 4, !tbaa !9
  store i32 %i.ic, ptr %.14352.i.i.prol, align 4, !tbaa !9
  %i.id = getelementptr inbounds i8, ptr %.04153.i.i.prol, i64 -4 ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %.14352.i.i.prol, i64 -8 ; 2 uses
  %i.if = add nsw i32 %.14551.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !22

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.i.i
  %.04153.i.i.unr = phi ptr [ %i.ib, %.lr.ph55.i.i ], [ %i.id, %.prol.preheader ]
  %.14352.i.i.unr = phi ptr [ %i.ia, %.lr.ph55.i.i ], [ %i.ie, %.prol.preheader ]
  %.14551.i.i.unr = phi i32 [ %i.gg, %.lr.ph55.i.i ], [ %i.if, %.prol.preheader ]
  br i1 %i.gu, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new

.lr.ph55.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph55.i.i.new
  %.04153.i.i = phi ptr [ %i.jc, %.lr.ph55.i.i.new ], [ %.04153.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.14352.i.i = phi ptr [ %i.jd, %.lr.ph55.i.i.new ], [ %.14352.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.14551.i.i = phi i32 [ %i.je, %.lr.ph55.i.i.new ], [ %.14551.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ig = load i32, ptr %.04153.i.i, align 4, !tbaa !9
  store i32 %i.ig, ptr %.14352.i.i, align 4, !tbaa !9
  %i.ih = getelementptr inbounds i8, ptr %.04153.i.i, i64 -4
  %i.ii = getelementptr inbounds i8, ptr %.14352.i.i, i64 -8
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !9
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !9
  %i.ik = getelementptr inbounds i8, ptr %.04153.i.i, i64 -8
  %i.il = getelementptr inbounds i8, ptr %.14352.i.i, i64 -16
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !9
  store i32 %i.im, ptr %i.il, align 4, !tbaa !9
  %i.in = getelementptr inbounds i8, ptr %.04153.i.i, i64 -12
  %i.io = getelementptr inbounds i8, ptr %.14352.i.i, i64 -24
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !9
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !9
  %i.iq = getelementptr inbounds i8, ptr %.04153.i.i, i64 -16
  %i.ir = getelementptr inbounds i8, ptr %.14352.i.i, i64 -32
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !9
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !9
  %i.it = getelementptr inbounds i8, ptr %.04153.i.i, i64 -20
  %i.iu = getelementptr inbounds i8, ptr %.14352.i.i, i64 -40
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !9
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !9
  %i.iw = getelementptr inbounds i8, ptr %.04153.i.i, i64 -24
  %i.ix = getelementptr inbounds i8, ptr %.14352.i.i, i64 -48
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !9
  store i32 %i.iy, ptr %i.ix, align 4, !tbaa !9
  %i.iz = getelementptr inbounds i8, ptr %.04153.i.i, i64 -28
  %i.ja = getelementptr inbounds i8, ptr %.14352.i.i, i64 -56
  %i.jb = load i32, ptr %i.iz, align 4, !tbaa !9
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !9
  %i.jc = getelementptr inbounds i8, ptr %.04153.i.i, i64 -32
  %i.jd = getelementptr inbounds i8, ptr %.14352.i.i, i64 -64
  %i.je = add nsw i32 %.14551.i.i, -8
  %.not.i.i33.7 = icmp eq i32 %.14551.i.i, 7
  br i1 %.not.i.i33.7, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new, !llvm.loop !23

._crit_edge56.i.i:                                ; preds = %.prol.loopexit, %.lr.ph55.i.i.new, %._crit_edge.i.i32
  br i1 %i.gk, label %.lr.ph61.i.i, label %unshuffle.exit.i

.lr.ph61.i.i:                                     ; preds = %._crit_edge56.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hy, i64 4 ; 2 uses
  br i1 %i.gv, label %.epil.preheader, label %.lr.ph61.i.i.new

.lr.ph61.i.i.new:                                 ; preds = %.lr.ph61.i.i, %.lr.ph61.i.i.new
  %.159.i.i = phi ptr [ %i.kd, %.lr.ph61.i.i.new ], [ %i.ej, %.lr.ph61.i.i ] ; 9 uses
  %.258.i.i = phi ptr [ %i.kc, %.lr.ph61.i.i.new ], [ %i.jf, %.lr.ph61.i.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph61.i.i.new ], [ 0, %.lr.ph61.i.i ]
  %i.jg = load i32, ptr %.159.i.i, align 4, !tbaa !9
  store i32 %i.jg, ptr %.258.i.i, align 4, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !9
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !9
  %i.jk = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 8
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !9
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !9
  %i.jn = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !9
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !9
  %i.jq = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 32
  %i.jr = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 16
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !9
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 40
  %i.ju = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 20
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !9
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !9
  %i.jw = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 48
  %i.jx = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 24
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 56
  %i.ka = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 28
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !9
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !9
  %i.kc = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 64 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 32 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %unshuffle.exit.i.loopexit.unr-lcssa, label %.lr.ph61.i.i.new, !llvm.loop !24

unshuffle.exit.i.loopexit.unr-lcssa:              ; preds = %.lr.ph61.i.i.new
  br i1 %lcmp.mod184.not, label %unshuffle.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %unshuffle.exit.i.loopexit.unr-lcssa, %.lr.ph61.i.i
  %.159.i.i.epil.init = phi ptr [ %i.ej, %.lr.ph61.i.i ], [ %i.kd, %unshuffle.exit.i.loopexit.unr-lcssa ]
  %.258.i.i.epil.init = phi ptr [ %i.jf, %.lr.ph61.i.i ], [ %i.kc, %unshuffle.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %.159.i.i.epil = phi ptr [ %.159.i.i.epil.init, %.epil.preheader ], [ %i.kg, %bb.x ] ; 2 uses
  %.258.i.i.epil = phi ptr [ %.258.i.i.epil.init, %.epil.preheader ], [ %i.kf, %bb.x ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.ke = load i32, ptr %.159.i.i.epil, align 4, !tbaa !9
  store i32 %i.ke, ptr %.258.i.i.epil, align 4, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %.258.i.i.epil, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.159.i.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %unshuffle.exit.i, label %bb.x, !llvm.loop !25

unshuffle.exit.i:                                 ; preds = %unshuffle.exit.i.loopexit.unr-lcssa, %bb.x, %._crit_edge56.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i28, label %bb.w, !llvm.loop !26

bb.y:                                             ; preds = %unshuffle.exit310.i, %.lr.ph327.i
  %indvars.iv367.i = phi i64 [ 0, %.lr.ph327.i ], [ %indvars.iv.next368.i, %unshuffle.exit310.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv367.i ; 4 uses
  br i1 %i.gz, label %.lr.ph.i305.i, label %._crit_edge.i294.i

.lr.ph.i305.i:                                    ; preds = %bb.y
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.hb ; 2 uses
  br i1 %lcmp.mod189.not, label %.prol.loopexit187, label %.prol.preheader186

.prol.preheader186:                               ; preds = %.lr.ph.i305.i, %.prol.preheader186
  %.050.i306.i.prol = phi ptr [ %i.kl, %.prol.preheader186 ], [ %i.ej, %.lr.ph.i305.i ] ; 2 uses
  %.04249.i307.i.prol = phi ptr [ %i.kk, %.prol.preheader186 ], [ %i.ki, %.lr.ph.i305.i ] ; 2 uses
  %.04448.i308.i.prol = phi i32 [ %i.km, %.prol.preheader186 ], [ %i.gy, %.lr.ph.i305.i ]
  %prol.iter190 = phi i32 [ %prol.iter190.next, %.prol.preheader186 ], [ 0, %.lr.ph.i305.i ]
  %i.kj = load i32, ptr %.04249.i307.i.prol, align 4, !tbaa !9
  store i32 %i.kj, ptr %.050.i306.i.prol, align 4, !tbaa !9
  %i.kk = getelementptr inbounds [4 x i8], ptr %.04249.i307.i.prol, i64 %i.fh ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.050.i306.i.prol, i64 4 ; 2 uses
  %i.km = add nsw i32 %.04448.i308.i.prol, 1      ; 2 uses
  %prol.iter190.next = add i32 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i32 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.prol.loopexit187, label %.prol.preheader186, !llvm.loop !27

.prol.loopexit187:                                ; preds = %.prol.preheader186, %.lr.ph.i305.i
  %.050.i306.i.unr = phi ptr [ %i.ej, %.lr.ph.i305.i ], [ %i.kl, %.prol.preheader186 ]
  %.04249.i307.i.unr = phi ptr [ %i.ki, %.lr.ph.i305.i ], [ %i.kk, %.prol.preheader186 ]
  %.04448.i308.i.unr = phi i32 [ %i.gy, %.lr.ph.i305.i ], [ %i.km, %.prol.preheader186 ]
  br i1 %i.hs, label %._crit_edge.i294.i, label %.lr.ph.i305.i.new
end_hunk_0
begin_hunk_1_@fits_hdecompress:bb.a
  %i.oy = icmp slt i32 %i.ou, 0
  %i.oz = select i1 %i.oy, i32 %i.ox, i32 %i.ov
  %i.pa = tail call i32 @llvm.smin.i32(i32 %i.oz, i32 %i.fm)
  %i.pb = tail call i32 @llvm.smax.i32(i32 %i.pa, i32 %i.fo)
  %i.pc = add nsw i32 %i.pb, %i.os
  store i32 %i.pc, ptr %i.or, align 4, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next433.i.i = add nsw i64 %indvars.iv432.i.i, 2
  %indvars.iv.next437.i.i = add nsw i64 %indvars.iv436.i.i, 2
  %i.pd = add nuw nsw i32 %.0348411.i.i, 2        ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %.1260.i
  br i1 %i.pe, label %bb.ab, label %._crit_edge.i312.i, !llvm.loop !32

._crit_edge.i312.i:                               ; preds = %bb.ad
  %i.pf = add nuw nsw i32 %.0351414.i.i, 2        ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.nt
  %indvars.iv.next.i.i30 = add i32 %indvars.iv.i.i29, %i.fj
  %indvars.iv.next435.i.i = add i32 %indvars.iv434.i.i, %i.fj
  br i1 %i.pg, label %.lr.ph.i311.i, label %.preheader410.i.i, !llvm.loop !33

.preheader.i.i:                                   ; preds = %._crit_edge421.i.i
  br i1 %i.nu, label %hsmooth.exit.i, label %.lr.ph428.i.i

.lr.ph420.i.i:                                    ; preds = %.lr.ph423.i.i, %._crit_edge421.i.i
  %indvars.iv441.i.i = phi i32 [ %indvars.iv.next442.i.i, %._crit_edge421.i.i ], [ 2, %.lr.ph423.i.i ] ; 2 uses
  %.1352422.i.i = phi i32 [ %i.qo, %._crit_edge421.i.i ], [ 0, %.lr.ph423.i.i ]
  %i.ph = sext i32 %indvars.iv441.i.i to i64      ; 2 uses
  %.phi.trans.insert.i.i = getelementptr [4 x i8], ptr %2, i64 %i.ph
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph420.i.i
  %i.pi = phi i32 [ %.pre.i.i, %.lr.ph420.i.i ], [ %i.pn, %bb.ag ] ; 2 uses
  %indvars.iv443.i.i = phi i64 [ %i.ph, %.lr.ph420.i.i ], [ %indvars.iv.next444.i.i, %bb.ag ] ; 2 uses
  %.1349417.i.i = phi i32 [ 2, %.lr.ph420.i.i ], [ %i.qm, %bb.ag ]
  %i.pj = getelementptr [4 x i8], ptr %2, i64 %indvars.iv443.i.i ; 2 uses
  %i.pk = getelementptr i8, ptr %i.pj, i64 -8
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !9  ; 2 uses
  %indvars.iv.next444.i.i = add nsw i64 %indvars.iv443.i.i, 2 ; 2 uses
  %i.pm = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next444.i.i
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !9  ; 3 uses
  %i.po = sub nsw i32 %i.pn, %i.pi                ; 2 uses
  %i.pp = sub nsw i32 %i.pi, %i.pl                ; 2 uses
  %.403.i.i = tail call i32 @llvm.smin.i32(i32 %i.po, i32 %i.pp)
  %i.pq = tail call i32 @llvm.smax.i32(i32 %.403.i.i, i32 0)
  %i.pr = shl i32 %i.pq, 2                        ; 2 uses
  %i.ps = tail call i32 @llvm.smax.i32(i32 %i.po, i32 %i.pp)
  %i.pt = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 0)
  %i.pu = shl i32 %i.pt, 2                        ; 3 uses
  %i.pv = icmp slt i32 %i.pu, %i.pr
  br i1 %i.pv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.pw = sub nsw i32 %i.pn, %i.pl                ; 2 uses
  %i.px = icmp sgt i32 %i.pw, %i.pu
  %i.py = tail call i32 @llvm.smin.i32(i32 %i.pw, i32 %i.pr)
  %i.pz = select i1 %i.px, i32 %i.py, i32 %i.pu
  %i.qa = getelementptr i8, ptr %i.pj, i64 4      ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !9  ; 2 uses
  %i.qc = shl i32 %i.qb, 3
  %i.qd = sub nsw i32 %i.pz, %i.qc                ; 3 uses
  %i.qe = lshr i32 %i.qd, 3
  %i.qf = add nsw i32 %i.qd, 7
  %i.qg = ashr i32 %i.qf, 3
  %i.qh = icmp slt i32 %i.qd, 0
  %i.qi = select i1 %i.qh, i32 %i.qg, i32 %i.qe
  %i.qj = tail call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.fm)
  %i.qk = tail call i32 @llvm.smax.i32(i32 %i.qj, i32 %i.fo)
  %i.ql = add nsw i32 %i.qk, %i.qb
  store i32 %i.ql, ptr %i.qa, align 4, !tbaa !9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.qm = add nuw nsw i32 %.1349417.i.i, 2        ; 2 uses
  %i.qn = icmp slt i32 %i.qm, %i.nv
  br i1 %i.qn, label %bb.ae, label %._crit_edge421.i.i, !llvm.loop !34

._crit_edge421.i.i:                               ; preds = %bb.ag
  %i.qo = add nuw nsw i32 %.1352422.i.i, 2        ; 2 uses
  %i.qp = icmp slt i32 %i.qo, %.1262.i
  %indvars.iv.next442.i.i = add i32 %indvars.iv441.i.i, %i.fj
  br i1 %i.qp, label %.lr.ph420.i.i, label %.preheader.i.i, !llvm.loop !35

.lr.ph428.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge429.i.i
  %indvars.iv450.i.i = phi i32 [ %indvars.iv.next451.i.i, %._crit_edge429.i.i ], [ %i.fr, %.preheader.i.i ] ; 2 uses
  %indvars.iv446.i.i = phi i32 [ %indvars.iv.next447.i.i, %._crit_edge429.i.i ], [ %i.fq, %.preheader.i.i ] ; 2 uses
  %.2353430.i.i = phi i32 [ %i.tj, %._crit_edge429.i.i ], [ 2, %.preheader.i.i ]
  %i.qq = sext i32 %indvars.iv446.i.i to i64
  %i.qr = sext i32 %indvars.iv450.i.i to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph428.i.i
  %indvars.iv452.i.i = phi i64 [ %i.qr, %.lr.ph428.i.i ], [ %indvars.iv.next453.i.i, %bb.aj ] ; 2 uses
  %indvars.iv448.i.i = phi i64 [ %i.qq, %.lr.ph428.i.i ], [ %indvars.iv.next449.i.i, %bb.aj ] ; 4 uses
  %.2350424.i.i = phi i32 [ 2, %.lr.ph428.i.i ], [ %i.th, %bb.aj ]
  %i.qs = sub nsw i64 %indvars.iv448.i.i, %i.fk
  %i.qt = getelementptr [4 x i8], ptr %2, i64 %i.qs ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qt, i64 -8
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !9  ; 2 uses
  %gep473.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv448.i.i ; 2 uses
  %i.qw = getelementptr i8, ptr %gep473.i.i, i64 -8
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !9  ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qt, i64 8
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !9  ; 2 uses
  %i.ra = getelementptr i8, ptr %gep473.i.i, i64 8
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !9  ; 2 uses
  %i.rc = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv448.i.i ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !9  ; 4 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv452.i.i ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !9
  %i.rg = shl i32 %i.rf, 1                        ; 7 uses
  %i.rh = getelementptr i8, ptr %i.rc, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !9
  %i.rj = shl i32 %i.ri, 1                        ; 5 uses
  %i.rk = sub nsw i32 %i.rb, %i.rd                ; 2 uses
  %i.rl = tail call i32 @llvm.smax.i32(i32 %i.rk, i32 0)
  %i.rm = add i32 %i.rj, %i.rg                    ; 2 uses
  %i.rn = sub i32 %i.rl, %i.rm
  %i.ro = sub nsw i32 %i.rd, %i.qx                ; 2 uses
  %i.rp = tail call i32 @llvm.smax.i32(i32 %i.ro, i32 0)
  %i.rq = add nsw i32 %i.rp, %i.rg
  %i.rr = sub i32 %i.rq, %i.rj
  %.406.i.i = tail call i32 @llvm.smin.i32(i32 %i.rn, i32 %i.rr)
  %i.rs = sub nsw i32 %i.rd, %i.qz                ; 2 uses
  %i.rt = tail call i32 @llvm.smax.i32(i32 %i.rs, i32 0)
  %i.ru = sub nsw i32 %i.rt, %i.rg
  %i.rv = sub nsw i32 %i.qv, %i.rd                ; 2 uses
  %i.rw = tail call i32 @llvm.smax.i32(i32 %i.rv, i32 0)
  %i.rx = add nsw i32 %i.rw, %i.rg
  %.pn.i.i = tail call i32 @llvm.smin.i32(i32 %i.ru, i32 %i.rx)
  %i.ry = add nsw i32 %.pn.i.i, %i.rj
  %i.rz = tail call i32 @llvm.smin.i32(i32 %.406.i.i, i32 %i.ry)
  %i.sa = shl i32 %i.rz, 4                        ; 2 uses
  %i.sb = tail call i32 @llvm.smin.i32(i32 %i.rk, i32 0)
  %i.sc = sub i32 %i.sb, %i.rm
  %i.sd = tail call i32 @llvm.smin.i32(i32 %i.ro, i32 0)
  %i.se = add nsw i32 %i.sd, %i.rg
  %i.sf = sub i32 %i.se, %i.rj
  %i.sg = tail call i32 @llvm.smax.i32(i32 %i.sc, i32 %i.sf)
  %i.sh = tail call i32 @llvm.smin.i32(i32 %i.rs, i32 0)
  %i.si = sub nsw i32 %i.sh, %i.rg
  %i.sj = tail call i32 @llvm.smin.i32(i32 %i.rv, i32 0)
  %i.sk = add nsw i32 %i.sj, %i.rg
  %.pn400.i.i = tail call i32 @llvm.smax.i32(i32 %i.si, i32 %i.sk)
  %i.sl = add nsw i32 %.pn400.i.i, %i.rj
  %i.sm = tail call i32 @llvm.smax.i32(i32 %i.sg, i32 %i.sl)
  %i.sn = shl i32 %i.sm, 4                        ; 3 uses
  %i.so = icmp slt i32 %i.sn, %i.sa
  br i1 %i.so, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.sp = add i32 %i.qx, %i.qz
  %i.sq = sub i32 %i.qv, %i.sp
  %i.sr = add i32 %i.sq, %i.rb                    ; 2 uses
  %i.ss = icmp sgt i32 %i.sr, %i.sn
  %i.st = tail call i32 @llvm.smin.i32(i32 %i.sr, i32 %i.sa)
  %i.su = select i1 %i.ss, i32 %i.st, i32 %i.sn
  %i.sv = getelementptr i8, ptr %i.re, i64 4      ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !9  ; 2 uses
  %i.sx = shl i32 %i.sw, 6
  %i.sy = sub nsw i32 %i.su, %i.sx                ; 3 uses
  %i.sz = lshr i32 %i.sy, 6
  %i.ta = add nsw i32 %i.sy, 63
  %i.tb = ashr i32 %i.ta, 6
  %i.tc = icmp slt i32 %i.sy, 0
  %i.td = select i1 %i.tc, i32 %i.tb, i32 %i.sz
  %i.te = tail call i32 @llvm.smin.i32(i32 %i.td, i32 %i.fm)
  %i.tf = tail call i32 @llvm.smax.i32(i32 %i.te, i32 %i.fo)
  %i.tg = add nsw i32 %i.tf, %i.sw
  store i32 %i.tg, ptr %i.sv, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next449.i.i = add nsw i64 %indvars.iv448.i.i, 2
  %indvars.iv.next453.i.i = add nsw i64 %indvars.iv452.i.i, 2
  %i.th = add nuw nsw i32 %.2350424.i.i, 2        ; 2 uses
  %i.ti = icmp slt i32 %i.th, %i.nv
  br i1 %i.ti, label %bb.ah, label %._crit_edge429.i.i, !llvm.loop !36

._crit_edge429.i.i:                               ; preds = %bb.aj
  %i.tj = add nuw nsw i32 %.2353430.i.i, 2        ; 2 uses
  %i.tk = icmp slt i32 %i.tj, %i.nt
  %indvars.iv.next447.i.i = add i32 %indvars.iv446.i.i, %i.fj
  %indvars.iv.next451.i.i = add i32 %indvars.iv450.i.i, %i.fj
  br i1 %i.tk, label %.lr.ph428.i.i, label %hsmooth.exit.i, !llvm.loop !37

hsmooth.exit.i:                                   ; preds = %._crit_edge429.i.i, %.preheader.i.i, %.lr.ph423.i.i, %.preheader410.i.i, %.lr.ph416.i.i, %._crit_edge.i
  %i.tl = srem i32 %.1262.i, 2                    ; 2 uses
  %i.tm = srem i32 %.1260.i, 2                    ; 7 uses
  %i.tn = sub nsw i32 %.1262.i, %i.tl             ; 2 uses
  %i.to = icmp sgt i32 %i.tn, 0
  br i1 %i.to, label %.lr.ph336.i, label %._crit_edge337.i

.lr.ph336.i:                                      ; preds = %hsmooth.exit.i
  %i.tp = sub nsw i32 %.1260.i, %i.tm             ; 2 uses
  %i.tq = icmp sgt i32 %i.tp, 0
  %.not291.i = icmp eq i32 %i.tm, 0
  %i.tr = add i32 %i.fu, -1
  %i.ts = add nsw i32 %i.tr, %i.fx
  %i.tt = sub i32 %i.ts, %i.tm
  %i.tu = lshr i32 %i.tt, 1
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl nuw nsw i64 %i.tv, 3                ; 4 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.tw
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.tw
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.tw
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.tw
  %i.tx = add i32 %i.fu, %i.fx
  %i.ty = xor i32 %i.tm, -1
  %i.tz = add i32 %i.tx, %i.ty                    ; 2 uses
  %i.ua = lshr i32 %i.tz, 1
  %narrow = add nuw i32 %i.ua, 1
  %i.ub = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check141 = icmp ult i32 %i.tz, 6
  %n.vec143 = and i64 %i.ub, 4294967292           ; 4 uses
  %i.uc = shl nuw nsw i64 %n.vec143, 1            ; 2 uses
  %i.ud = trunc nuw i64 %n.vec143 to i32
  %i.ue = shl i32 %i.ud, 1
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %.0243358.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %.0246357.i, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %.0248356.i, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x i32> poison, i32 %.1245.i, i64 0
  %broadcast.splat151 = shufflevector <4 x i32> %broadcast.splatinsert150, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %.0247359.i, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %.0249355.i, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <4 x i32> poison, i32 %.0251353.i, i64 0
  %broadcast.splat157 = shufflevector <4 x i32> %broadcast.splatinsert156, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %.0250354.i, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <4 x i32> poison, i32 %.1253.i, i64 0
  %broadcast.splat161 = shufflevector <4 x i32> %broadcast.splatinsert160, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n174 = icmp eq i64 %n.vec143, %i.ub
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ap, %.lr.ph336.i
  %indvars.iv376.i = phi i32 [ %i.dz, %.lr.ph336.i ], [ %indvars.iv.next377.i, %bb.ap ] ; 3 uses
  %indvars.iv372.i = phi i32 [ 0, %.lr.ph336.i ], [ %indvars.iv.next373.i, %bb.ap ] ; 3 uses
  %.1267335.i = phi i32 [ 0, %.lr.ph336.i ], [ %i.zb, %bb.ap ] ; 2 uses
  %i.uf = sext i32 %indvars.iv376.i to i64
  %i.ug = shl nsw i64 %i.uf, 2                    ; 4 uses
  %scevgep104 = getelementptr i8, ptr %scevgep, i64 %i.ug ; 3 uses
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.ug ; 3 uses
  %scevgep108 = getelementptr i8, ptr %2, i64 %i.ug ; 3 uses
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.ug ; 3 uses
  %i.uh = sext i32 %indvars.iv372.i to i64
  %i.ui = shl nsw i64 %i.uh, 2                    ; 4 uses
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.ui ; 3 uses
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.ui ; 3 uses
  %scevgep117 = getelementptr i8, ptr %2, i64 %i.ui ; 3 uses
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.ui ; 3 uses
  %i.uj = mul nsw i32 %.1267335.i, %i.dz          ; 2 uses
  %i.uk = add nsw i32 %i.uj, %i.dz
  br i1 %i.tq, label %.lr.ph332.preheader.i, label %._crit_edge333.i

.lr.ph332.preheader.i:                            ; preds = %bb.ak
  %i.ul = sext i32 %indvars.iv376.i to i64        ; 4 uses
  %i.um = sext i32 %indvars.iv372.i to i64        ; 4 uses
  br i1 %min.iters.check141, label %.lr.ph332.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph332.preheader.i
  %bound0 = icmp ult ptr %scevgep104, %scevgep111
  %bound1 = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  %bound0121 = icmp ult ptr %scevgep104, %scevgep116
  %bound1122 = icmp ult ptr %scevgep113, %scevgep107
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx = or i1 %found.conflict, %found.conflict123
  %bound0124 = icmp ult ptr %scevgep104, %scevgep120
  %bound1125 = icmp ult ptr %scevgep117, %scevgep107
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx, %found.conflict126
  %bound0128 = icmp ult ptr %scevgep108, %scevgep116
  %bound1129 = icmp ult ptr %scevgep113, %scevgep111
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %scevgep108, %scevgep120
  %bound1133 = icmp ult ptr %scevgep117, %scevgep111
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %scevgep113, %scevgep120
  %bound1137 = icmp ult ptr %scevgep117, %scevgep116
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph332.i.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck
  %i.un = add nsw i64 %i.uc, %i.ul                ; 2 uses
  %i.uo = add nsw i64 %i.uc, %i.um                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.um
  %invariant.gep219 = getelementptr [4 x i8], ptr %2, i64 %i.ul
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph142
  %index163 = phi i64 [ 0, %vector.ph142 ], [ %index.next172, %vector.body162 ] ; 2 uses
  %i.up = shl i64 %index163, 1                    ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.up ; 2 uses
  %wide.vec164 = load <8 x i32>, ptr %gep, align 4, !tbaa !9 ; 2 uses
  %strided.vec165 = shufflevector <8 x i32> %wide.vec164, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec166 = shufflevector <8 x i32> %wide.vec164, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %gep220 = getelementptr [4 x i8], ptr %invariant.gep219, i64 %i.up ; 2 uses
  %wide.vec167 = load <8 x i32>, ptr %gep220, align 4, !tbaa !9 ; 2 uses
  %strided.vec168 = shufflevector <8 x i32> %wide.vec167, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec169 = shufflevector <8 x i32> %wide.vec167, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.uq = icmp slt <4 x i32> %strided.vec168, zeroinitializer
  %i.ur = select <4 x i1> %i.uq, <4 x i32> %broadcast.splat145, <4 x i32> %broadcast.splat147
  %i.us = add nsw <4 x i32> %i.ur, %strided.vec168
  %i.ut = and <4 x i32> %i.us, %broadcast.splat149 ; 2 uses
  %i.uu = icmp slt <4 x i32> %strided.vec166, zeroinitializer
  %i.uv = select <4 x i1> %i.uu, <4 x i32> %broadcast.splat145, <4 x i32> %broadcast.splat147
  %i.uw = add nsw <4 x i32> %i.uv, %strided.vec166
  %i.ux = and <4 x i32> %i.uw, %broadcast.splat149 ; 2 uses
  %i.uy = icmp slt <4 x i32> %strided.vec169, zeroinitializer
  %i.uz = select <4 x i1> %i.uy, <4 x i32> %broadcast.splat151, <4 x i32> %broadcast.splat153
  %i.va = add nsw <4 x i32> %i.uz, %strided.vec169
  %i.vb = and <4 x i32> %i.va, %broadcast.splat155 ; 5 uses
  %i.vc = and <4 x i32> %i.vb, %broadcast.splat157 ; 6 uses
  %i.vd = icmp slt <4 x i32> %i.ut, zeroinitializer
  %i.ve = sub <4 x i32> zeroinitializer, %i.vc    ; 2 uses
  %i.vf = select <4 x i1> %i.vd, <4 x i32> %i.vc, <4 x i32> %i.ve
  %i.vg = add <4 x i32> %i.vf, %i.ut              ; 3 uses
  %i.vh = icmp slt <4 x i32> %i.ux, zeroinitializer
  %i.vi = select <4 x i1> %i.vh, <4 x i32> %i.vc, <4 x i32> %i.ve
  %i.vj = add <4 x i32> %i.vi, %i.ux              ; 4 uses
  %i.vk = xor <4 x i32> %i.vg, %i.vb
  %i.vl = xor <4 x i32> %i.vk, %i.vj
  %i.vm = and <4 x i32> %i.vl, %broadcast.splat159 ; 3 uses
  %i.vn = icmp eq <4 x i32> %i.vc, zeroinitializer
  %i.vo = sub nsw <4 x i32> %i.vc, %i.vm
  %i.vp = select <4 x i1> %i.vn, <4 x i32> %i.vm, <4 x i32> %i.vo
  %i.vq = add nsw <4 x i32> %i.vp, %strided.vec165
  %i.vr = add nsw <4 x i32> %i.vc, %strided.vec165
  %i.vs = sub <4 x i32> %i.vr, %i.vm
  %i.vt = icmp slt <4 x i32> %strided.vec165, zeroinitializer
  %predphi = select <4 x i1> %i.vt, <4 x i32> %i.vq, <4 x i32> %i.vs ; 2 uses
  %i.vu = add nsw <4 x i32> %predphi, %i.vg       ; 2 uses
  %i.vv = add <4 x i32> %i.vj, %i.vb              ; 2 uses
  %i.vw = add <4 x i32> %i.vu, %i.vv
  %i.vx = ashr <4 x i32> %i.vw, %broadcast.splat161
  %i.vy = sub <4 x i32> %i.vu, %i.vv
  %i.vz = ashr <4 x i32> %i.vy, %broadcast.splat161
  %interleaved.vec170 = shufflevector <4 x i32> %i.vz, <4 x i32> %i.vx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec170, ptr %gep220, align 4, !tbaa !9
  %i.wa = sub nsw <4 x i32> %predphi, %i.vg       ; 2 uses
  %i.wb = sub <4 x i32> %i.vj, %i.vb
  %i.wc = add <4 x i32> %i.wb, %i.wa
  %i.wd = ashr <4 x i32> %i.wc, %broadcast.splat161
  %i.we = sub <4 x i32> %i.vb, %i.vj
  %i.wf = add <4 x i32> %i.we, %i.wa
  %i.wg = ashr <4 x i32> %i.wf, %broadcast.splat161
  %interleaved.vec171 = shufflevector <4 x i32> %i.wg, <4 x i32> %i.wd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec171, ptr %gep, align 4, !tbaa !9
  %index.next172 = add nuw i64 %index163, 4       ; 2 uses
  %i.wh = icmp eq i64 %index.next172, %n.vec143
  br i1 %i.wh, label %middle.block173, label %vector.body162, !llvm.loop !38

middle.block173:                                  ; preds = %vector.body162
  br i1 %cmp.n174, label %._crit_edge333.loopexit.i, label %.lr.ph332.i.preheader

.lr.ph332.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph332.preheader.i, %middle.block173
  %indvars.iv378.i.ph = phi i64 [ %i.ul, %vector.memcheck ], [ %i.ul, %.lr.ph332.preheader.i ], [ %i.un, %middle.block173 ]
  %indvars.iv374.i.ph = phi i64 [ %i.um, %vector.memcheck ], [ %i.um, %.lr.ph332.preheader.i ], [ %i.uo, %middle.block173 ]
  %.1265328.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph332.preheader.i ], [ %i.ue, %middle.block173 ]
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %.lr.ph332.i.preheader, %bb.an
  %indvars.iv378.i = phi i64 [ %indvars.iv.next379.i, %bb.an ], [ %indvars.iv378.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %indvars.iv374.i = phi i64 [ %indvars.iv.next375.i, %bb.an ], [ %indvars.iv374.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %.1265328.i = phi i32 [ %i.yg, %bb.an ], [ %.1265328.i.ph, %.lr.ph332.i.preheader ]
  %i.wi = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv374.i ; 3 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !9  ; 3 uses
  %i.wk = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv378.i ; 3 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !9  ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wi, i64 4      ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !9  ; 2 uses
  %i.wo = getelementptr i8, ptr %i.wk, i64 4      ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !9  ; 2 uses
  %i.wq = icmp slt i32 %i.wl, 0
  %i.wr = select i1 %i.wq, i32 %.0243358.i, i32 %.0246357.i
  %i.ws = add nsw i32 %i.wr, %i.wl
  %i.wt = and i32 %i.ws, %.0248356.i              ; 2 uses
  %i.wu = icmp slt i32 %i.wn, 0
  %i.wv = select i1 %i.wu, i32 %.0243358.i, i32 %.0246357.i
  %i.ww = add nsw i32 %i.wv, %i.wn
  %i.wx = and i32 %i.ww, %.0248356.i              ; 2 uses
  %i.wy = icmp slt i32 %i.wp, 0
  %i.wz = select i1 %i.wy, i32 %.1245.i, i32 %.0247359.i
  %i.xa = add nsw i32 %i.wz, %i.wp
  %i.xb = and i32 %i.xa, %.0249355.i              ; 5 uses
  %i.xc = and i32 %i.xb, %.0251353.i              ; 6 uses
  %i.xd = icmp slt i32 %i.wt, 0
  %i.xe = sub i32 0, %i.xc                        ; 2 uses
  %.p316.i = select i1 %i.xd, i32 %i.xc, i32 %i.xe
  %i.xf = add i32 %.p316.i, %i.wt                 ; 3 uses
  %i.xg = icmp slt i32 %i.wx, 0
end_hunk_1
begin_hunk_2_@fits_hdecompress64:bb.a

bb.r:                                             ; preds = %bb.q, %input_bit.exit.i.i, %.lr.ph73.i.i
  %i.dg = phi i64 [ %i.cr, %.lr.ph73.i.i ], [ %i.da, %bb.q ], [ %i.da, %input_bit.exit.i.i ]
  %i.dh = phi i32 [ %i.cq, %.lr.ph73.i.i ], [ %i.db, %bb.q ], [ %i.db, %input_bit.exit.i.i ]
  %i.di = phi i32 [ %i.cp, %.lr.ph73.i.i ], [ %i.dc, %bb.q ], [ %i.dc, %input_bit.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %dodecode64.exit.i, label %.lr.ph73.i.i, !llvm.loop !44

dodecode64.exit.i:                                ; preds = %bb.r, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %._crit_edge.i.i
  %.058.i.i = phi i32 [ %i.cn, %bb.k ], [ %i.by, %._crit_edge.i.i ], [ %i.cd, %bb.i ], [ %i.ci, %bb.j ], [ 414, %bb.m ], [ 0, %bb.n ], [ 0, %bb.r ]
  store i64 %i.bo, ptr %2, align 8, !tbaa !18
  br label %decode64.exit

decode64.exit:                                    ; preds = %bb.c, %bb.e, %bb.g, %dodecode64.exit.i
  %.0.i = phi i32 [ 414, %bb.c ], [ 414, %bb.e ], [ 414, %bb.g ], [ %.058.i.i, %dodecode64.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.dj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @Fitsio_Lock) #13
  store i32 %i.dj, ptr @Fitsio_Pthread_Status, align 4, !tbaa !9
  store i32 %.0.i, ptr %7, align 4, !tbaa !9
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %decode64.exit
  %i.dk = load i32, ptr %5, align 4, !tbaa !9     ; 3 uses
  %i.dl = load i32, ptr %4, align 4, !tbaa !9     ; 13 uses
  %i.dm = load i32, ptr %6, align 4, !tbaa !9     ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %undigitize64.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = mul nsw i32 %i.dl, %i.dk
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %2, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8     ; 2 uses
  %.not11.i = icmp ugt ptr %2, %i.ds
  br i1 %.not11.i, label %undigitize64.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.012.i = phi ptr [ %i.dv, %.lr.ph.i ], [ %2, %bb.t ] ; 3 uses
  %i.dt = load i64, ptr %.012.i, align 8, !tbaa !18
  %i.du = mul nsw i64 %i.dt, %i.do
  store i64 %i.du, ptr %.012.i, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i37 = icmp ugt ptr %i.dv, %i.ds
  br i1 %.not.i37, label %undigitize64.exit, label %.lr.ph.i, !llvm.loop !45

undigitize64.exit:                                ; preds = %.lr.ph.i, %bb.s, %bb.t
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %i.dl) ; 3 uses
  %i.dx = sitofp i32 %i.dw to float
  %i.dy = fpext float %i.dx to double
  %i.dz = tail call double @log(double noundef %i.dy) #13
  %i.ea = add nsw i32 %i.dw, 1
  %i.eb = sdiv i32 %i.ea, 2
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 3
  %i.ee = tail call noalias ptr @malloc(i64 noundef %i.ed) #14 ; 9 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %undigitize64.exit
  tail call void @ffpmsg(ptr noundef nonnull @.str.1) #13
  br label %hinv64.exit

bb.v:                                             ; preds = %undigitize64.exit
  %i.eg = fdiv double %i.dz, f0x3FE62E42FEFA39EF
  %i.eh = fadd double %i.eg, 5.000000e-01
  %i.ei = fptosi double %i.eh to i32              ; 2 uses
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = icmp sgt i32 %i.dw, %i.ej
  %i.el = zext i1 %i.ek to i32
  %spec.select.i = add nsw i32 %i.el, %i.ei       ; 3 uses
  %i.em = add nsw i32 %spec.select.i, -1          ; 2 uses
  %i.en = zext nneg i32 %i.em to i64              ; 3 uses
  %i.eo = shl nuw i64 1, %i.en                    ; 3 uses
  %i.ep = shl i64 4, %i.en
  %i.eq = sub nsw i64 0, %i.eo                    ; 3 uses
  %i.er = shl i64 %i.eq, 2
  %i.es = ashr exact i64 %i.ep, 1
  %i.et = load i64, ptr %2, align 8, !tbaa !18    ; 2 uses
  %.lobit.i = ashr i64 %i.et, 63
  %i.eu = add i64 %i.et, %i.es
  %i.ev = add i64 %i.eu, %.lobit.i
  %i.ew = and i64 %i.ev, %i.er
  store i64 %i.ew, ptr %2, align 8, !tbaa !18
  %i.ex = icmp sgt i32 %spec.select.i, 0
  br i1 %i.ex, label %.lr.ph361.i, label %._crit_edge362.i

.lr.ph361.i:                                      ; preds = %bb.v
  %i.ey = shl nuw i32 1, %spec.select.i
  %i.ez = shl i64 2, %i.en                        ; 2 uses
  %i.fa = ashr exact i64 %i.ez, 1                 ; 2 uses
  %i.fb = add nsw i64 %i.fa, -1
  %i.fc = shl i64 %i.eq, 1
  %i.fd = sext i32 %i.dl to i64                   ; 11 uses
  %i.fe = sub nsw i64 0, %i.fd                    ; 9 uses
  %i.ff = shl i32 %i.dl, 1                        ; 10 uses
  %i.fg = sext i32 %i.ff to i64                   ; 13 uses
  %i.fh = sub nsw i64 0, %i.fg                    ; 9 uses
  %.not288.i = icmp eq i32 %1, 0
  %i.fi = ashr i32 %i.dm, 1                       ; 2 uses
  %i.fj = sext i32 %i.fi to i64                   ; 4 uses
  %i.fk = icmp slt i32 %i.fi, 1
  %i.fl = sub nsw i64 0, %i.fj                    ; 3 uses
  %i.fm = mul i32 %i.dl, 3                        ; 2 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %2, i64 %i.fg ; 2 uses
  %i.fn = add i32 %i.ff, 2
  %i.fo = add i32 %i.fm, 2
  %brmerge.i = or i1 %.not288.i, %i.fk
  br label %bb.w

bb.w:                                             ; preds = %bb.au, %.lr.ph361.i
  %.0249359.in.i = phi i64 [ %i.eo, %.lr.ph361.i ], [ %.0249359.i, %bb.au ]
  %.0243358.i = phi i64 [ %i.fb, %.lr.ph361.i ], [ %.1245.i, %bb.au ] ; 4 uses
  %.0246357.i = phi i64 [ %i.ez, %.lr.ph361.i ], [ %.0247356.i, %bb.au ] ; 3 uses
  %.0247356.i = phi i64 [ %i.eo, %.lr.ph361.i ], [ %i.xq, %bb.au ] ; 3 uses
  %.0248355.i = phi i64 [ %i.fa, %.lr.ph361.i ], [ %.0249359.i, %bb.au ] ; 4 uses
  %.0250354.i = phi i64 [ %i.fc, %.lr.ph361.i ], [ %.0251353.i, %bb.au ] ; 4 uses
  %.0251353.i = phi i64 [ %i.eq, %.lr.ph361.i ], [ %i.xr, %bb.au ] ; 3 uses
  %.0252352.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1253.i, %bb.au ]
  %.0254351.i = phi i32 [ %i.ey, %.lr.ph361.i ], [ %i.fp, %bb.au ]
  %.0255350.i = phi i32 [ %i.dl, %.lr.ph361.i ], [ %.1256.i, %bb.au ] ; 2 uses
  %.0257349.i = phi i32 [ %i.dk, %.lr.ph361.i ], [ %.1258.i, %bb.au ] ; 2 uses
  %.0259348.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1260.i, %bb.au ]
  %.0261347.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1262.i, %bb.au ]
  %.0263346.i = phi i32 [ %i.em, %.lr.ph361.i ], [ %i.xs, %bb.au ] ; 3 uses
  %.0249359.i = ashr i64 %.0249359.in.i, 1        ; 4 uses
  %.0244.i = add nsw i64 %.0249359.i, -1
  %i.fp = ashr i32 %.0254351.i, 1                 ; 5 uses
  %i.fq = shl i32 %.0261347.i, 1                  ; 4 uses
  %i.fr = shl i32 %.0259348.i, 1                  ; 2 uses
  %.not.i38 = icmp sle i32 %.0257349.i, %i.fp     ; 2 uses
  %i.fs = sext i1 %.not.i38 to i32                ; 4 uses
  %.1262.i = add nsw i32 %i.fq, %i.fs             ; 12 uses
  %i.ft = select i1 %.not.i38, i32 0, i32 %i.fp
  %.1258.i = sub nsw i32 %.0257349.i, %i.ft
  %.not287.i = icmp sle i32 %.0255350.i, %i.fp    ; 2 uses
  %i.fu = sext i1 %.not287.i to i32               ; 2 uses
  %.1260.i = add i32 %i.fr, %i.fu                 ; 13 uses
  %i.fv = select i1 %.not287.i, i32 0, i32 %i.fp
  %.1256.i = sub nsw i32 %.0255350.i, %i.fv
  %i.fw = icmp eq i32 %.0263346.i, 0              ; 2 uses
  %.1253.i = select i1 %i.fw, i32 2, i32 %.0252352.i ; 4 uses
  %.1245.i = select i1 %i.fw, i64 0, i64 %.0244.i ; 2 uses
  %i.fx = icmp sgt i32 %.1262.i, 0                ; 2 uses
  br i1 %i.fx, label %.lr.ph.i41, label %.preheader.i

.lr.ph.i41:                                       ; preds = %bb.w
  %i.fy = add nsw i32 %.1260.i, 1
  %i.fz = ashr i32 %i.fy, 1                       ; 7 uses
  %i.ga = icmp slt i32 %i.fz, %.1260.i
  %i.gb = sext i32 %i.fz to i64
  %i.gc = icmp sgt i32 %i.fz, 0
  %i.gd = add nsw i32 %i.fz, -1                   ; 4 uses
  %i.ge = shl nuw nsw i32 %i.gd, 1
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = zext nneg i32 %i.gd to i64
  %i.gh = icmp sgt i32 %.1260.i, 1
  %i.gi = xor i32 %i.fz, -1
  %i.gj = add i32 %.1260.i, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, 8
  %wide.trip.count.i = zext nneg i32 %.1262.i to i64
  %i.gn = add i32 %i.fr, -2
  %i.go = add i32 %i.gn, %i.fu                    ; 2 uses
  %i.gp = lshr i32 %i.go, 1
  %i.gq = add nuw i32 %i.gp, 1                    ; 2 uses
  %xtraiter = and i32 %i.fz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gr = icmp ult i32 %i.fz, 8
  %xtraiter89 = and i32 %i.gq, 7                  ; 3 uses
  %i.gs = icmp ult i32 %i.go, 14
  %unroll_iter = and i32 %i.gq, -8
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  %lcmp.mod91 = icmp ne i32 %xtraiter89, 0
  br label %bb.x

.preheader.i:                                     ; preds = %unshuffle64.exit.i, %bb.w
  %i.gt = icmp sgt i32 %.1260.i, 0                ; 2 uses
  br i1 %i.gt, label %.lr.ph327.i, label %._crit_edge.i

.lr.ph327.i:                                      ; preds = %.preheader.i
  %i.gu = add nsw i32 %.1262.i, 1
  %i.gv = ashr i32 %i.gu, 1                       ; 10 uses
  %i.gw = icmp slt i32 %i.gv, %.1262.i
  %i.gx = mul nsw i32 %i.gv, %i.dl
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp sgt i32 %i.gv, 0
  %i.ha = add nsw i32 %i.gv, -1                   ; 3 uses
  %i.hb = mul nsw i32 %i.ha, %i.dl                ; 2 uses
  %i.hc = shl i32 %i.hb, 1
  %i.hd = sext i32 %i.hc to i64
  %i.he = sext i32 %i.hb to i64
  %i.hf = icmp sgt i32 %.1262.i, 1
  %wide.trip.count370.i = zext nneg i32 %.1260.i to i64
  %i.hg = add i32 %i.fq, %i.fs
  %i.hh = sub i32 %i.hg, %i.gv
  %i.hi = add i32 %i.fq, -1
  %i.hj = add nsw i32 %i.hi, %i.fs
  %i.hk = sub i32 %i.hj, %i.gv
  %i.hl = add i32 %i.fq, -2
  %i.hm = add i32 %i.hl, %i.fs                    ; 2 uses
  %i.hn = lshr i32 %i.hm, 1
  %i.ho = add nuw i32 %i.hn, 1                    ; 2 uses
  %xtraiter94 = and i32 %i.hh, 7                  ; 2 uses
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  %i.hp = icmp ult i32 %i.hk, 7
  %xtraiter99 = and i32 %i.gv, 7                  ; 2 uses
  %lcmp.mod100.not = icmp eq i32 %xtraiter99, 0
  %i.hq = icmp ult i32 %i.gv, 8
  %xtraiter103 = and i32 %i.ho, 7                 ; 3 uses
  %i.hr = icmp ult i32 %i.hm, 14
  %unroll_iter107 = and i32 %i.ho, -8
  %lcmp.mod105.not = icmp eq i32 %xtraiter103, 0
  %lcmp.mod106 = icmp ne i32 %xtraiter103, 0
  br label %bb.z

bb.x:                                             ; preds = %unshuffle64.exit.i, %.lr.ph.i41
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i, %unshuffle64.exit.i ] ; 2 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ht = mul i32 %i.dl, %i.hs
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr %2, i64 %i.hu ; 4 uses
  br i1 %i.ga, label %.lr.ph.i.i, label %._crit_edge.i.i42

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %i.gb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.gm, i1 false), !tbaa !18
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.lr.ph.i.i, %bb.x
  br i1 %i.gc, label %.lr.ph55.i.i, label %._crit_edge56.i.i

.lr.ph55.i.i:                                     ; preds = %._crit_edge.i.i42
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.gf ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.gg ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.i.i, %.prol.preheader
  %.04153.i.i.prol = phi ptr [ %i.ia, %.prol.preheader ], [ %i.hy, %.lr.ph55.i.i ] ; 2 uses
  %.14352.i.i.prol = phi ptr [ %i.ib, %.prol.preheader ], [ %i.hx, %.lr.ph55.i.i ] ; 2 uses
  %.14551.i.i.prol = phi i32 [ %i.ic, %.prol.preheader ], [ %i.gd, %.lr.ph55.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.i.i ]
  %i.hz = load i64, ptr %.04153.i.i.prol, align 8, !tbaa !18
  store i64 %i.hz, ptr %.14352.i.i.prol, align 8, !tbaa !18
  %i.ia = getelementptr inbounds i8, ptr %.04153.i.i.prol, i64 -8 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.14352.i.i.prol, i64 -16 ; 2 uses
  %i.ic = add nsw i32 %.14551.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !46

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.i.i
  %.04153.i.i.unr = phi ptr [ %i.hy, %.lr.ph55.i.i ], [ %i.ia, %.prol.preheader ]
  %.14352.i.i.unr = phi ptr [ %i.hx, %.lr.ph55.i.i ], [ %i.ib, %.prol.preheader ]
  %.14551.i.i.unr = phi i32 [ %i.gd, %.lr.ph55.i.i ], [ %i.ic, %.prol.preheader ]
  br i1 %i.gr, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new

.lr.ph55.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph55.i.i.new
  %.04153.i.i = phi ptr [ %i.iz, %.lr.ph55.i.i.new ], [ %.04153.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.14352.i.i = phi ptr [ %i.ja, %.lr.ph55.i.i.new ], [ %.14352.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.14551.i.i = phi i32 [ %i.jb, %.lr.ph55.i.i.new ], [ %.14551.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.id = load i64, ptr %.04153.i.i, align 8, !tbaa !18
  store i64 %i.id, ptr %.14352.i.i, align 8, !tbaa !18
  %i.ie = getelementptr inbounds i8, ptr %.04153.i.i, i64 -8
  %i.if = getelementptr inbounds i8, ptr %.14352.i.i, i64 -16
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !18
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !18
  %i.ih = getelementptr inbounds i8, ptr %.04153.i.i, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %.14352.i.i, i64 -32
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !18
  store i64 %i.ij, ptr %i.ii, align 8, !tbaa !18
  %i.ik = getelementptr inbounds i8, ptr %.04153.i.i, i64 -24
  %i.il = getelementptr inbounds i8, ptr %.14352.i.i, i64 -48
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !18
  store i64 %i.im, ptr %i.il, align 8, !tbaa !18
  %i.in = getelementptr inbounds i8, ptr %.04153.i.i, i64 -32
  %i.io = getelementptr inbounds i8, ptr %.14352.i.i, i64 -64
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !18
  store i64 %i.ip, ptr %i.io, align 8, !tbaa !18
  %i.iq = getelementptr inbounds i8, ptr %.04153.i.i, i64 -40
  %i.ir = getelementptr inbounds i8, ptr %.14352.i.i, i64 -80
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !18
  store i64 %i.is, ptr %i.ir, align 8, !tbaa !18
  %i.it = getelementptr inbounds i8, ptr %.04153.i.i, i64 -48
  %i.iu = getelementptr inbounds i8, ptr %.14352.i.i, i64 -96
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !18
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !18
  %i.iw = getelementptr inbounds i8, ptr %.04153.i.i, i64 -56
  %i.ix = getelementptr inbounds i8, ptr %.14352.i.i, i64 -112
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !18
  store i64 %i.iy, ptr %i.ix, align 8, !tbaa !18
  %i.iz = getelementptr inbounds i8, ptr %.04153.i.i, i64 -64
  %i.ja = getelementptr inbounds i8, ptr %.14352.i.i, i64 -128
  %i.jb = add nsw i32 %.14551.i.i, -8
  %.not.i.i43.7 = icmp eq i32 %.14551.i.i, 7
  br i1 %.not.i.i43.7, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new, !llvm.loop !47

._crit_edge56.i.i:                                ; preds = %.prol.loopexit, %.lr.ph55.i.i.new, %._crit_edge.i.i42
  br i1 %i.gh, label %.lr.ph61.i.i, label %unshuffle64.exit.i

.lr.ph61.i.i:                                     ; preds = %._crit_edge56.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph61.i.i.new

.lr.ph61.i.i.new:                                 ; preds = %.lr.ph61.i.i, %.lr.ph61.i.i.new
  %.159.i.i = phi ptr [ %i.ka, %.lr.ph61.i.i.new ], [ %i.ee, %.lr.ph61.i.i ] ; 9 uses
  %.258.i.i = phi ptr [ %i.jz, %.lr.ph61.i.i.new ], [ %i.jc, %.lr.ph61.i.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph61.i.i.new ], [ 0, %.lr.ph61.i.i ]
  %i.jd = load i64, ptr %.159.i.i, align 8, !tbaa !18
  store i64 %i.jd, ptr %.258.i.i, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !18
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !18
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 24
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !18
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 64
  %i.jo = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 32
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !18
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 80
  %i.jr = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !18
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 96
  %i.ju = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 48
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !18
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 112
  %i.jx = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 56
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !18
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 128 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 64 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %unshuffle64.exit.i.loopexit.unr-lcssa, label %.lr.ph61.i.i.new, !llvm.loop !48

unshuffle64.exit.i.loopexit.unr-lcssa:            ; preds = %.lr.ph61.i.i.new
  br i1 %lcmp.mod90.not, label %unshuffle64.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %unshuffle64.exit.i.loopexit.unr-lcssa, %.lr.ph61.i.i
  %.159.i.i.epil.init = phi ptr [ %i.ee, %.lr.ph61.i.i ], [ %i.ka, %unshuffle64.exit.i.loopexit.unr-lcssa ]
  %.258.i.i.epil.init = phi ptr [ %i.jc, %.lr.ph61.i.i ], [ %i.jz, %unshuffle64.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.159.i.i.epil = phi ptr [ %.159.i.i.epil.init, %.epil.preheader ], [ %i.kd, %bb.y ] ; 2 uses
  %.258.i.i.epil = phi ptr [ %.258.i.i.epil.init, %.epil.preheader ], [ %i.kc, %bb.y ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.kb = load i64, ptr %.159.i.i.epil, align 8, !tbaa !18
  store i64 %i.kb, ptr %.258.i.i.epil, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.258.i.i.epil, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %.159.i.i.epil, i64 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %unshuffle64.exit.i, label %bb.y, !llvm.loop !49

unshuffle64.exit.i:                               ; preds = %unshuffle64.exit.i.loopexit.unr-lcssa, %bb.y, %._crit_edge56.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.x, !llvm.loop !50

bb.z:                                             ; preds = %unshuffle64.exit310.i, %.lr.ph327.i
  %indvars.iv367.i = phi i64 [ 0, %.lr.ph327.i ], [ %indvars.iv.next368.i, %unshuffle64.exit310.i ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv367.i ; 4 uses
  br i1 %i.gw, label %.lr.ph.i305.i, label %._crit_edge.i294.i

.lr.ph.i305.i:                                    ; preds = %bb.z
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.gy ; 2 uses
  br i1 %lcmp.mod95.not, label %.prol.loopexit93, label %.prol.preheader92

.prol.preheader92:                                ; preds = %.lr.ph.i305.i, %.prol.preheader92
  %.050.i306.i.prol = phi ptr [ %i.ki, %.prol.preheader92 ], [ %i.ee, %.lr.ph.i305.i ] ; 2 uses
  %.04249.i307.i.prol = phi ptr [ %i.kh, %.prol.preheader92 ], [ %i.kf, %.lr.ph.i305.i ] ; 2 uses
  %.04448.i308.i.prol = phi i32 [ %i.kj, %.prol.preheader92 ], [ %i.gv, %.lr.ph.i305.i ]
  %prol.iter96 = phi i32 [ %prol.iter96.next, %.prol.preheader92 ], [ 0, %.lr.ph.i305.i ]
  %i.kg = load i64, ptr %.04249.i307.i.prol, align 8, !tbaa !18
  store i64 %i.kg, ptr %.050.i306.i.prol, align 8, !tbaa !18
  %i.kh = getelementptr inbounds [8 x i8], ptr %.04249.i307.i.prol, i64 %i.fd ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.050.i306.i.prol, i64 8 ; 2 uses
  %i.kj = add nsw i32 %.04448.i308.i.prol, 1      ; 2 uses
  %prol.iter96.next = add i32 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i32 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.prol.loopexit93, label %.prol.preheader92, !llvm.loop !51

.prol.loopexit93:                                 ; preds = %.prol.preheader92, %.lr.ph.i305.i
  %.050.i306.i.unr = phi ptr [ %i.ee, %.lr.ph.i305.i ], [ %i.ki, %.prol.preheader92 ]
  %.04249.i307.i.unr = phi ptr [ %i.kf, %.lr.ph.i305.i ], [ %i.kh, %.prol.preheader92 ]
  %.04448.i308.i.unr = phi i32 [ %i.gv, %.lr.ph.i305.i ], [ %i.kj, %.prol.preheader92 ]
  br i1 %i.hp, label %._crit_edge.i294.i, label %.lr.ph.i305.i.new
end_hunk_2
