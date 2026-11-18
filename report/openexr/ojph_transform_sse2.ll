Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_sse2?download=true
inline.NumInlined: 33
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4ojph5local18sse2_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %i.ei = add <4 x i32> %i.eh, %i.ef
  store <4 x i32> %i.ei, ptr %.253.i, align 16, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %.253.i, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.214852.i, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.215651.i, i64 16
  %i.em = load <4 x i32>, ptr %i.ek, align 16, !tbaa !11
  %i.en = load <4 x i32>, ptr %i.el, align 16, !tbaa !11
  %i.eo = load <4 x i32>, ptr %i.ej, align 16, !tbaa !11
  %i.ep = add <4 x i32> %i.en, %i.em
  %i.eq = ashr <4 x i32> %i.ep, splat (i32 1)
  %i.er = add <4 x i32> %i.eq, %i.eo
  store <4 x i32> %i.er, ptr %i.ej, align 16, !tbaa !11
  %i.es = add nsw i32 %.016450.i, -8
  %i.et = getelementptr inbounds nuw i8, ptr %.253.i, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.214852.i, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.215651.i, i64 32
  %i.ew = icmp sgt i32 %.016450.i, 8
  br i1 %i.ew, label %.lr.ph54.i, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !27

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %.348.i = phi ptr [ %i.fn, %.lr.ph49.i ], [ %.348.i.unr, %.lr.ph49.i.prol.loopexit ] ; 4 uses
  %.314947.i = phi ptr [ %i.fo, %.lr.ph49.i ], [ %.314947.i.unr, %.lr.ph49.i.prol.loopexit ] ; 3 uses
  %.315746.i = phi ptr [ %i.fp, %.lr.ph49.i ], [ %.315746.i.unr, %.lr.ph49.i.prol.loopexit ] ; 3 uses
  %.116545.i = phi i32 [ %i.fm, %.lr.ph49.i ], [ %.116545.i.unr, %.lr.ph49.i.prol.loopexit ] ; 2 uses
  %i.ex = load <4 x i32>, ptr %.314947.i, align 16, !tbaa !11
  %i.ey = load <4 x i32>, ptr %.315746.i, align 16, !tbaa !11
  %i.ez = load <4 x i32>, ptr %.348.i, align 16, !tbaa !11
  %i.fa = add <4 x i32> %i.ey, %i.ex
  %i.fb = ashr <4 x i32> %i.fa, splat (i32 1)
  %i.fc = sub <4 x i32> %i.ez, %i.fb
  store <4 x i32> %i.fc, ptr %.348.i, align 16, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %.348.i, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.314947.i, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.315746.i, i64 16
  %i.fg = load <4 x i32>, ptr %i.fe, align 16, !tbaa !11
  %i.fh = load <4 x i32>, ptr %i.ff, align 16, !tbaa !11
  %i.fi = load <4 x i32>, ptr %i.fd, align 16, !tbaa !11
  %i.fj = add <4 x i32> %i.fh, %i.fg
  %i.fk = ashr <4 x i32> %i.fj, splat (i32 1)
  %i.fl = sub <4 x i32> %i.fi, %i.fk
  store <4 x i32> %i.fl, ptr %i.fd, align 16, !tbaa !11
  %i.fm = add nsw i32 %.116545.i, -8
  %i.fn = getelementptr inbounds nuw i8, ptr %.348.i, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.314947.i, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %.315746.i, i64 32
  %i.fq = icmp sgt i32 %.116545.i, 8
  br i1 %i.fq, label %.lr.ph49.i, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !28

bb.k:                                             ; preds = %bb.i
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fr = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %5, label %.preheader16.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %bb.l
  br i1 %i.fr, label %.lr.ph39.i.preheader, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph39.i.preheader:                             ; preds = %.preheader18.i
  %i.fs = add nsw i32 %4, -1                      ; 2 uses
  %i.ft = and i32 %i.fs, 4
  %lcmp.mod150.not.not = icmp eq i32 %i.ft, 0
  br i1 %lcmp.mod150.not.not, label %.lr.ph39.i.prol, label %.lr.ph39.i.prol.loopexit

.lr.ph39.i.prol:                                  ; preds = %.lr.ph39.i.preheader
  %i.fu = load <4 x i32>, ptr %.val30, align 16, !tbaa !11
  %i.fv = load <4 x i32>, ptr %.val31, align 16, !tbaa !11
  %i.fw = load <4 x i32>, ptr %.val32, align 16, !tbaa !11
  %i.fx = add <4 x i32> %i.fu, %i.fv
  %i.fy = sub <4 x i32> %i.z, %i.fx
  %i.fz = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.fy, i32 range(i32 0, 256) %i.da)
  %i.ga = add <4 x i32> %i.fz, %i.fw
  store <4 x i32> %i.ga, ptr %.val32, align 16, !tbaa !11
  %i.gb = add nsw i32 %4, -4
  %i.gc = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %.val31, i64 16
  br label %.lr.ph39.i.prol.loopexit

.lr.ph39.i.prol.loopexit:                         ; preds = %.lr.ph39.i.prol, %.lr.ph39.i.preheader
  %.538.i.unr = phi ptr [ %.val32, %.lr.ph39.i.preheader ], [ %i.gc, %.lr.ph39.i.prol ]
  %.515137.i.unr = phi ptr [ %.val30, %.lr.ph39.i.preheader ], [ %i.gd, %.lr.ph39.i.prol ]
  %.515936.i.unr = phi ptr [ %.val31, %.lr.ph39.i.preheader ], [ %i.ge, %.lr.ph39.i.prol ]
  %.116735.i.unr = phi i32 [ %4, %.lr.ph39.i.preheader ], [ %i.gb, %.lr.ph39.i.prol ]
  %i.gf = icmp ult i32 %i.fs, 4
  br i1 %i.gf, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph39.i

.preheader16.i:                                   ; preds = %bb.l
  br i1 %i.fr, label %.lr.ph44.i.preheader, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit

.lr.ph44.i.preheader:                             ; preds = %.preheader16.i
  %i.gg = add nsw i32 %4, -1                      ; 2 uses
  %i.gh = and i32 %i.gg, 4
  %lcmp.mod152.not.not = icmp eq i32 %i.gh, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph44.i.prol, label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.gi = load <4 x i32>, ptr %.val30, align 16, !tbaa !11
  %i.gj = load <4 x i32>, ptr %.val31, align 16, !tbaa !11
  %i.gk = load <4 x i32>, ptr %.val32, align 16, !tbaa !11
  %i.gl = add <4 x i32> %i.gi, %i.gj
  %i.gm = sub <4 x i32> %i.z, %i.gl
  %i.gn = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.gm, i32 range(i32 0, 256) %i.da)
  %i.go = sub <4 x i32> %i.gk, %i.gn
  store <4 x i32> %i.go, ptr %.val32, align 16, !tbaa !11
  %i.gp = add nsw i32 %4, -4
  %i.gq = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.val31, i64 16
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %.443.i.unr = phi ptr [ %.val32, %.lr.ph44.i.preheader ], [ %i.gq, %.lr.ph44.i.prol ]
  %.415042.i.unr = phi ptr [ %.val30, %.lr.ph44.i.preheader ], [ %i.gr, %.lr.ph44.i.prol ]
  %.415841.i.unr = phi ptr [ %.val31, %.lr.ph44.i.preheader ], [ %i.gs, %.lr.ph44.i.prol ]
  %.016640.i.unr = phi i32 [ %4, %.lr.ph44.i.preheader ], [ %i.gp, %.lr.ph44.i.prol ]
  %i.gt = icmp ult i32 %i.gg, 4
  br i1 %i.gt, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %.443.i = phi ptr [ %i.hm, %.lr.ph44.i ], [ %.443.i.unr, %.lr.ph44.i.prol.loopexit ] ; 4 uses
  %.415042.i = phi ptr [ %i.hn, %.lr.ph44.i ], [ %.415042.i.unr, %.lr.ph44.i.prol.loopexit ] ; 3 uses
  %.415841.i = phi ptr [ %i.ho, %.lr.ph44.i ], [ %.415841.i.unr, %.lr.ph44.i.prol.loopexit ] ; 3 uses
  %.016640.i = phi i32 [ %i.hl, %.lr.ph44.i ], [ %.016640.i.unr, %.lr.ph44.i.prol.loopexit ] ; 2 uses
  %i.gu = load <4 x i32>, ptr %.415042.i, align 16, !tbaa !11
  %i.gv = load <4 x i32>, ptr %.415841.i, align 16, !tbaa !11
  %i.gw = load <4 x i32>, ptr %.443.i, align 16, !tbaa !11
  %i.gx = add <4 x i32> %i.gu, %i.gv
  %i.gy = sub <4 x i32> %i.z, %i.gx
  %i.gz = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.gy, i32 range(i32 0, 256) %i.da)
  %i.ha = sub <4 x i32> %i.gw, %i.gz
  store <4 x i32> %i.ha, ptr %.443.i, align 16, !tbaa !11
  %i.hb = getelementptr inbounds nuw i8, ptr %.443.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.415042.i, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.415841.i, i64 16
  %i.he = load <4 x i32>, ptr %i.hc, align 16, !tbaa !11
  %i.hf = load <4 x i32>, ptr %i.hd, align 16, !tbaa !11
  %i.hg = load <4 x i32>, ptr %i.hb, align 16, !tbaa !11
  %i.hh = add <4 x i32> %i.he, %i.hf
  %i.hi = sub <4 x i32> %i.z, %i.hh
  %i.hj = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.hi, i32 range(i32 0, 256) %i.da)
  %i.hk = sub <4 x i32> %i.hg, %i.hj
  store <4 x i32> %i.hk, ptr %i.hb, align 16, !tbaa !11
  %i.hl = add nsw i32 %.016640.i, -8
  %i.hm = getelementptr inbounds nuw i8, ptr %.443.i, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %.415042.i, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %.415841.i, i64 32
  %i.hp = icmp sgt i32 %.016640.i, 8
  br i1 %i.hp, label %.lr.ph44.i, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !29

.lr.ph39.i:                                       ; preds = %.lr.ph39.i.prol.loopexit, %.lr.ph39.i
  %.538.i = phi ptr [ %i.ii, %.lr.ph39.i ], [ %.538.i.unr, %.lr.ph39.i.prol.loopexit ] ; 4 uses
  %.515137.i = phi ptr [ %i.ij, %.lr.ph39.i ], [ %.515137.i.unr, %.lr.ph39.i.prol.loopexit ] ; 3 uses
  %.515936.i = phi ptr [ %i.ik, %.lr.ph39.i ], [ %.515936.i.unr, %.lr.ph39.i.prol.loopexit ] ; 3 uses
  %.116735.i = phi i32 [ %i.ih, %.lr.ph39.i ], [ %.116735.i.unr, %.lr.ph39.i.prol.loopexit ] ; 2 uses
  %i.hq = load <4 x i32>, ptr %.515137.i, align 16, !tbaa !11
  %i.hr = load <4 x i32>, ptr %.515936.i, align 16, !tbaa !11
  %i.hs = load <4 x i32>, ptr %.538.i, align 16, !tbaa !11
  %i.ht = add <4 x i32> %i.hq, %i.hr
  %i.hu = sub <4 x i32> %i.z, %i.ht
  %i.hv = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.hu, i32 range(i32 0, 256) %i.da)
  %i.hw = add <4 x i32> %i.hv, %i.hs
  store <4 x i32> %i.hw, ptr %.538.i, align 16, !tbaa !11
  %i.hx = getelementptr inbounds nuw i8, ptr %.538.i, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.515137.i, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %.515936.i, i64 16
  %i.ia = load <4 x i32>, ptr %i.hy, align 16, !tbaa !11
  %i.ib = load <4 x i32>, ptr %i.hz, align 16, !tbaa !11
  %i.ic = load <4 x i32>, ptr %i.hx, align 16, !tbaa !11
  %i.id = add <4 x i32> %i.ia, %i.ib
  %i.ie = sub <4 x i32> %i.z, %i.id
  %i.if = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.ie, i32 range(i32 0, 256) %i.da)
  %i.ig = add <4 x i32> %i.if, %i.ic
  store <4 x i32> %i.ig, ptr %i.hx, align 16, !tbaa !11
  %i.ih = add nsw i32 %.116735.i, -8
  %i.ii = getelementptr inbounds nuw i8, ptr %.538.i, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %.515137.i, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %.515936.i, i64 32
  %i.il = icmp sgt i32 %.116735.i, 8
  br i1 %i.il, label %.lr.ph39.i, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, !llvm.loop !30

bb.m:                                             ; preds = %bb.k
  %.not17029.i = icmp eq i32 %4, 0                ; 2 uses
  br i1 %5, label %.preheader20.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.m
  br i1 %.not17029.i, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader22.i
  %i.im = zext i32 %4 to i64                      ; 2 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader145, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.in = add i32 %4, -1
  %i.io = zext i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 2
  %i.iq = add nuw nsw i64 %i.ip, 4                ; 3 uses
  %i.ir = getelementptr i8, ptr %.val32, i64 %i.iq ; 2 uses
  %i.is = getelementptr i8, ptr %.val30, i64 %i.iq
  %6 = getelementptr i8, ptr %.val31, i64 %i.iq
  %bound0.a = icmp ult ptr %.val32, %i.is
  %bound1 = icmp ult ptr %.val30, %i.ir
  %found.conflict = and i1 %bound0.a, %bound1
  %bound075 = icmp ult ptr %.val32, %6
  %bound176 = icmp ult ptr %.val31, %i.ir
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  br i1 %conflict.rdx, label %.lr.ph.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.im, 4294967288              ; 4 uses
  %i.it = trunc nuw i64 %n.vec to i32
  %i.iu = sub i32 %4, %i.it
  %i.iv = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %i.iw = getelementptr i8, ptr %.val32, i64 %i.iv
  %i.ix = getelementptr i8, ptr %.val30, i64 %i.iv
  %i.iy = getelementptr i8, ptr %.val31, i64 %i.iv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iz = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.val32, i64 %i.iz ; 3 uses
  %next.gep82 = getelementptr i8, ptr %.val30, i64 %i.iz ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.val31, i64 %i.iz ; 2 uses
  %i.ja = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep82, align 4, !tbaa !13, !alias.scope !43
  %wide.load84 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !13, !alias.scope !43
  %i.jb = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !13, !alias.scope !44
  %wide.load86 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !13, !alias.scope !44
  %i.jc = add nsw <4 x i32> %wide.load85, %wide.load
  %i.jd = add nsw <4 x i32> %wide.load86, %wide.load84
  %i.je = mul nsw <4 x i32> %i.jc, %broadcast.splat
  %i.jf = mul nsw <4 x i32> %i.jd, %broadcast.splat
  %i.jg = add nsw <4 x i32> %i.je, %broadcast.splat79
  %i.jh = add nsw <4 x i32> %i.jf, %broadcast.splat79
  %i.ji = ashr <4 x i32> %i.jg, %broadcast.splat81
  %i.jj = ashr <4 x i32> %i.jh, %broadcast.splat81
  %i.jk = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load87 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !13, !alias.scope !45, !noalias !46
  %wide.load88 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !13, !alias.scope !45, !noalias !46
  %i.jl = add nsw <4 x i32> %i.ji, %wide.load87
  %i.jm = add nsw <4 x i32> %i.jj, %wide.load88
  store <4 x i32> %i.jl, ptr %next.gep, align 4, !tbaa !13, !alias.scope !45, !noalias !46
  store <4 x i32> %i.jm, ptr %i.jk, align 4, !tbaa !13, !alias.scope !45, !noalias !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.im
  br i1 %cmp.n, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i.preheader145

.lr.ph.i.preheader145:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.028.i.ph = phi i32 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.preheader ], [ %i.iu, %middle.block ] ; 4 uses
  %.727.i.ph = phi ptr [ %.val32, %vector.memcheck ], [ %.val32, %.lr.ph.i.preheader ], [ %i.iw, %middle.block ] ; 4 uses
  %.715326.i.ph = phi ptr [ %.val30, %vector.memcheck ], [ %.val30, %.lr.ph.i.preheader ], [ %i.ix, %middle.block ] ; 3 uses
  %.716125.i.ph = phi ptr [ %.val31, %vector.memcheck ], [ %.val31, %.lr.ph.i.preheader ], [ %i.iy, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.028.i.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader145
  %i.jo = getelementptr inbounds nuw i8, ptr %.715326.i.ph, i64 4
  %i.jp = load i32, ptr %.715326.i.ph, align 4, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.716125.i.ph, i64 4
  %i.jr = load i32, ptr %.716125.i.ph, align 4, !tbaa !13
  %i.js = add nsw i32 %i.jr, %i.jp
  %i.jt = mul nsw i32 %i.js, %i.t
  %i.ju = add nsw i32 %i.jt, %i.w
  %i.jv = ashr i32 %i.ju, %i.da
  %i.jw = getelementptr inbounds nuw i8, ptr %.727.i.ph, i64 4
  %i.jx = load i32, ptr %.727.i.ph, align 4, !tbaa !13
  %i.jy = add nsw i32 %i.jv, %i.jx
  store i32 %i.jy, ptr %.727.i.ph, align 4, !tbaa !13
  %i.jz = add nsw i32 %.028.i.ph, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader145
  %.028.i.unr = phi i32 [ %.028.i.ph, %.lr.ph.i.preheader145 ], [ %i.jz, %.lr.ph.i.prol ]
  %.727.i.unr = phi ptr [ %.727.i.ph, %.lr.ph.i.preheader145 ], [ %i.jw, %.lr.ph.i.prol ]
  %.715326.i.unr = phi ptr [ %.715326.i.ph, %.lr.ph.i.preheader145 ], [ %i.jo, %.lr.ph.i.prol ]
  %.716125.i.unr = phi ptr [ %.716125.i.ph, %.lr.ph.i.preheader145 ], [ %i.jq, %.lr.ph.i.prol ]
  %i.ka = icmp eq i32 %.028.i.ph, 1
  br i1 %i.ka, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i

.preheader20.i:                                   ; preds = %bb.m
  br i1 %.not17029.i, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %.preheader20.i
  %i.kb = zext i32 %4 to i64                      ; 2 uses
  %min.iters.check103 = icmp ult i32 %4, 12
  br i1 %min.iters.check103, label %.lr.ph34.i.preheader143, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph34.i.preheader
  %i.kc = add i32 %4, -1
  %i.kd = zext i32 %i.kc to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2
  %i.kf = add nuw nsw i64 %i.ke, 4                ; 3 uses
  %i.kg = getelementptr i8, ptr %.val32, i64 %i.kf ; 2 uses
  %i.kh = getelementptr i8, ptr %.val30, i64 %i.kf
  %7 = getelementptr i8, ptr %.val31, i64 %i.kf
  %bound0105.a = icmp ult ptr %.val32, %i.kh
  %bound1106 = icmp ult ptr %.val30, %i.kg
  %found.conflict107 = and i1 %bound0105.a, %bound1106
  %bound0108 = icmp ult ptr %.val32, %7
  %bound1109 = icmp ult ptr %.val31, %i.kg
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %found.conflict107, %found.conflict110
  br i1 %conflict.rdx111, label %.lr.ph34.i.preheader143, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck104
  %n.vec113 = and i64 %i.kb, 4294967288           ; 4 uses
  %i.ki = trunc nuw i64 %n.vec113 to i32
  %i.kj = sub i32 %4, %i.ki
  %i.kk = shl nuw nsw i64 %n.vec113, 2            ; 3 uses
  %i.kl = getelementptr i8, ptr %.val32, i64 %i.kk
  %i.km = getelementptr i8, ptr %.val30, i64 %i.kk
  %i.kn = getelementptr i8, ptr %.val31, i64 %i.kk
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph112
  %index121 = phi i64 [ 0, %vector.ph112 ], [ %index.next131, %vector.body120 ] ; 2 uses
  %i.ko = shl i64 %index121, 2                    ; 3 uses
  %next.gep122 = getelementptr i8, ptr %.val32, i64 %i.ko ; 3 uses
  %next.gep123 = getelementptr i8, ptr %.val30, i64 %i.ko ; 2 uses
  %next.gep124 = getelementptr i8, ptr %.val31, i64 %i.ko ; 2 uses
  %i.kp = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load125 = load <4 x i32>, ptr %next.gep123, align 4, !tbaa !13, !alias.scope !47
  %wide.load126 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !13, !alias.scope !47
  %i.kq = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load127 = load <4 x i32>, ptr %next.gep124, align 4, !tbaa !13, !alias.scope !48
  %wide.load128 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !13, !alias.scope !48
  %i.kr = add nsw <4 x i32> %wide.load127, %wide.load125
  %i.ks = add nsw <4 x i32> %wide.load128, %wide.load126
  %i.kt = mul nsw <4 x i32> %i.kr, %broadcast.splat115
  %i.ku = mul nsw <4 x i32> %i.ks, %broadcast.splat115
  %i.kv = add nsw <4 x i32> %i.kt, %broadcast.splat117
  %i.kw = add nsw <4 x i32> %i.ku, %broadcast.splat117
  %i.kx = ashr <4 x i32> %i.kv, %broadcast.splat119
  %i.ky = ashr <4 x i32> %i.kw, %broadcast.splat119
  %i.kz = getelementptr i8, ptr %next.gep122, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !13, !alias.scope !49, !noalias !50
  %wide.load130 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !13, !alias.scope !49, !noalias !50
  %i.la = sub nsw <4 x i32> %wide.load129, %i.kx
  %i.lb = sub nsw <4 x i32> %wide.load130, %i.ky
  store <4 x i32> %i.la, ptr %next.gep122, align 4, !tbaa !13, !alias.scope !49, !noalias !50
  store <4 x i32> %i.lb, ptr %i.kz, align 4, !tbaa !13, !alias.scope !49, !noalias !50
  %index.next131 = add nuw i64 %index121, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next131, %n.vec113
  br i1 %i.lc, label %middle.block132, label %vector.body120, !llvm.loop !40

middle.block132:                                  ; preds = %vector.body120
  %cmp.n133 = icmp eq i64 %n.vec113, %i.kb
  br i1 %cmp.n133, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i.preheader143

.lr.ph34.i.preheader143:                          ; preds = %vector.memcheck104, %.lr.ph34.i.preheader, %middle.block132
  %.014433.i.ph = phi i32 [ %4, %vector.memcheck104 ], [ %4, %.lr.ph34.i.preheader ], [ %i.kj, %middle.block132 ] ; 4 uses
  %.632.i.ph = phi ptr [ %.val32, %vector.memcheck104 ], [ %.val32, %.lr.ph34.i.preheader ], [ %i.kl, %middle.block132 ] ; 4 uses
  %.615231.i.ph = phi ptr [ %.val30, %vector.memcheck104 ], [ %.val30, %.lr.ph34.i.preheader ], [ %i.km, %middle.block132 ] ; 3 uses
  %.616030.i.ph = phi ptr [ %.val31, %vector.memcheck104 ], [ %.val31, %.lr.ph34.i.preheader ], [ %i.kn, %middle.block132 ] ; 3 uses
  %xtraiter147 = and i32 %.014433.i.ph, 1
  %lcmp.mod148.not = icmp eq i32 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol

.lr.ph34.i.prol:                                  ; preds = %.lr.ph34.i.preheader143
  %i.ld = getelementptr inbounds nuw i8, ptr %.615231.i.ph, i64 4
  %i.le = load i32, ptr %.615231.i.ph, align 4, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %.616030.i.ph, i64 4
  %i.lg = load i32, ptr %.616030.i.ph, align 4, !tbaa !13
  %i.lh = add nsw i32 %i.lg, %i.le
  %i.li = mul nsw i32 %i.lh, %i.t
  %i.lj = add nsw i32 %i.li, %i.w
  %i.lk = ashr i32 %i.lj, %i.da
  %i.ll = getelementptr inbounds nuw i8, ptr %.632.i.ph, i64 4
  %i.lm = load i32, ptr %.632.i.ph, align 4, !tbaa !13
  %i.ln = sub nsw i32 %i.lm, %i.lk
  store i32 %i.ln, ptr %.632.i.ph, align 4, !tbaa !13
  %i.lo = add nsw i32 %.014433.i.ph, -1
  br label %.lr.ph34.i.prol.loopexit

.lr.ph34.i.prol.loopexit:                         ; preds = %.lr.ph34.i.prol, %.lr.ph34.i.preheader143
  %.014433.i.unr = phi i32 [ %.014433.i.ph, %.lr.ph34.i.preheader143 ], [ %i.lo, %.lr.ph34.i.prol ]
  %.632.i.unr = phi ptr [ %.632.i.ph, %.lr.ph34.i.preheader143 ], [ %i.ll, %.lr.ph34.i.prol ]
  %.615231.i.unr = phi ptr [ %.615231.i.ph, %.lr.ph34.i.preheader143 ], [ %i.ld, %.lr.ph34.i.prol ]
  %.616030.i.unr = phi ptr [ %.616030.i.ph, %.lr.ph34.i.preheader143 ], [ %i.lf, %.lr.ph34.i.prol ]
  %i.lp = icmp eq i32 %.014433.i.ph, 1
  br i1 %i.lp, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i
  %.014433.i = phi i32 [ %i.mm, %.lr.ph34.i ], [ %.014433.i.unr, %.lr.ph34.i.prol.loopexit ]
  %.632.i = phi ptr [ %i.mj, %.lr.ph34.i ], [ %.632.i.unr, %.lr.ph34.i.prol.loopexit ] ; 4 uses
  %.615231.i = phi ptr [ %i.mb, %.lr.ph34.i ], [ %.615231.i.unr, %.lr.ph34.i.prol.loopexit ] ; 3 uses
  %.616030.i = phi ptr [ %i.md, %.lr.ph34.i ], [ %.616030.i.unr, %.lr.ph34.i.prol.loopexit ] ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.615231.i, i64 4
  %i.lr = load i32, ptr %.615231.i, align 4, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %.616030.i, i64 4
  %i.lt = load i32, ptr %.616030.i, align 4, !tbaa !13
  %i.lu = add nsw i32 %i.lt, %i.lr
  %i.lv = mul nsw i32 %i.lu, %i.t
  %i.lw = add nsw i32 %i.lv, %i.w
  %i.lx = ashr i32 %i.lw, %i.da
  %i.ly = getelementptr inbounds nuw i8, ptr %.632.i, i64 4 ; 2 uses
  %i.lz = load i32, ptr %.632.i, align 4, !tbaa !13
  %i.ma = sub nsw i32 %i.lz, %i.lx
  store i32 %i.ma, ptr %.632.i, align 4, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %.615231.i, i64 8
  %i.mc = load i32, ptr %i.lq, align 4, !tbaa !13
  %i.md = getelementptr inbounds nuw i8, ptr %.616030.i, i64 8
  %i.me = load i32, ptr %i.ls, align 4, !tbaa !13
  %i.mf = add nsw i32 %i.me, %i.mc
  %i.mg = mul nsw i32 %i.mf, %i.t
  %i.mh = add nsw i32 %i.mg, %i.w
  %i.mi = ashr i32 %i.mh, %i.da
  %i.mj = getelementptr inbounds nuw i8, ptr %.632.i, i64 8
  %i.mk = load i32, ptr %i.ly, align 4, !tbaa !13
  %i.ml = sub nsw i32 %i.mk, %i.mi
  store i32 %i.ml, ptr %i.ly, align 4, !tbaa !13
  %i.mm = add i32 %.014433.i, -2                  ; 2 uses
  %.not170.i.1 = icmp eq i32 %i.mm, 0
  br i1 %.not170.i.1, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i, !llvm.loop !41

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.028.i = phi i32 [ %i.nj, %.lr.ph.i ], [ %.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %.727.i = phi ptr [ %i.ng, %.lr.ph.i ], [ %.727.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.715326.i = phi ptr [ %i.my, %.lr.ph.i ], [ %.715326.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.716125.i = phi ptr [ %i.na, %.lr.ph.i ], [ %.716125.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.715326.i, i64 4
  %i.mo = load i32, ptr %.715326.i, align 4, !tbaa !13
  %i.mp = getelementptr inbounds nuw i8, ptr %.716125.i, i64 4
  %i.mq = load i32, ptr %.716125.i, align 4, !tbaa !13
  %i.mr = add nsw i32 %i.mq, %i.mo
  %i.ms = mul nsw i32 %i.mr, %i.t
  %i.mt = add nsw i32 %i.ms, %i.w
  %i.mu = ashr i32 %i.mt, %i.da
  %i.mv = getelementptr inbounds nuw i8, ptr %.727.i, i64 4 ; 2 uses
  %i.mw = load i32, ptr %.727.i, align 4, !tbaa !13
  %i.mx = add nsw i32 %i.mu, %i.mw
  store i32 %i.mx, ptr %.727.i, align 4, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %.715326.i, i64 8
  %i.mz = load i32, ptr %i.mn, align 4, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %.716125.i, i64 8
  %i.nb = load i32, ptr %i.mp, align 4, !tbaa !13
  %i.nc = add nsw i32 %i.nb, %i.mz
  %i.nd = mul nsw i32 %i.nc, %i.t
  %i.ne = add nsw i32 %i.nd, %i.w
  %i.nf = ashr i32 %i.ne, %i.da
  %i.ng = getelementptr inbounds nuw i8, ptr %.727.i, i64 8
  %i.nh = load i32, ptr %i.mv, align 4, !tbaa !13
  %i.ni = add nsw i32 %i.nf, %i.nh
  store i32 %i.ni, ptr %i.mv, align 4, !tbaa !13
  %i.nj = add i32 %.028.i, -2                     ; 2 uses
  %.not.i.1 = icmp eq i32 %i.nj, 0
  br i1 %.not.i.1, label %_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i, !llvm.loop !42

_ZN4ojph5localL20sse2_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %.lr.ph39.i.prol.loopexit, %.lr.ph39.i, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %.lr.ph54.i.prol.loopexit, %.lr.ph54.i, %.prol.loopexit, %.lr.ph59.i.new, %.prol.loopexit160, %.lr.ph64.i.new, %middle.block, %middle.block132, %.preheader20.i, %.preheader22.i, %.preheader16.i, %.preheader18.i, %.preheader12.i, %.preheader14.i, %.preheader.i, %.preheader10.i, %.split, %.split17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL20sse2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %.16.val, ptr nofree readonly captures(none) %.16.val1, ptr nofree captures(none) %.16.val3, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !tbaa !11   ; 3 uses
  %i.c = sext i16 %i.b to i64                     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !11   ; 2 uses
  %i.f = sext i16 %i.e to i64                     ; 9 uses
  %i.g = load i8, ptr %0, align 4, !tbaa !11      ; 4 uses
  %i.h = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.j = zext i8 %i.g to i32                      ; 13 uses
  %i.k = sub nsw i32 63, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer ; 36 uses
  %i.p = icmp eq i16 %i.b, 1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %2, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %bb.b
  br i1 %i.q, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %.preheader17
  %i.r = add nsw i32 %1, -1                       ; 2 uses
  %i.s = and i32 %i.r, 2
  %lcmp.mod174.not.not = icmp eq i32 %i.s, 0
  br i1 %lcmp.mod174.not.not, label %.lr.ph66.prol, label %.lr.ph66.prol.loopexit

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader
  %i.t = load <2 x i64>, ptr %.16.val, align 16, !tbaa !11
  %i.u = load <2 x i64>, ptr %.16.val1, align 16, !tbaa !11
  %i.v = load <2 x i64>, ptr %.16.val3, align 16, !tbaa !11
  %i.w = add <2 x i64> %i.t, %i.i
  %i.x = add <2 x i64> %i.w, %i.u
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL20sse2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  br i1 %i.ey, label %.lr.ph61, label %.loopexit, !llvm.loop !53

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.355 = phi ptr [ %i.fr, %.lr.ph56 ], [ %.355.unr, %.lr.ph56.prol.loopexit ] ; 4 uses
  %.315654 = phi ptr [ %i.fs, %.lr.ph56 ], [ %.315654.unr, %.lr.ph56.prol.loopexit ] ; 3 uses
  %.316453 = phi ptr [ %i.ft, %.lr.ph56 ], [ %.316453.unr, %.lr.ph56.prol.loopexit ] ; 3 uses
  %.117252 = phi i32 [ %i.fq, %.lr.ph56 ], [ %.117252.unr, %.lr.ph56.prol.loopexit ] ; 2 uses
  %i.ez = load <2 x i64>, ptr %.315654, align 16, !tbaa !11
  %i.fa = load <2 x i64>, ptr %.316453, align 16, !tbaa !11
  %i.fb = load <2 x i64>, ptr %.355, align 16, !tbaa !11
  %i.fc = add <2 x i64> %i.fa, %i.ez
  %i.fd = lshr <2 x i64> %i.fc, splat (i64 1)
  %i.fe = xor <2 x i64> %i.fd, %i.o
  %.neg5 = add <2 x i64> %i.fb, %i.o
  %i.ff = sub <2 x i64> %.neg5, %i.fe
  store <2 x i64> %i.ff, ptr %.355, align 16, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %.355, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.315654, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.316453, i64 16
  %i.fj = load <2 x i64>, ptr %i.fh, align 16, !tbaa !11
  %i.fk = load <2 x i64>, ptr %i.fi, align 16, !tbaa !11
  %i.fl = load <2 x i64>, ptr %i.fg, align 16, !tbaa !11
  %i.fm = add <2 x i64> %i.fk, %i.fj
  %i.fn = lshr <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %i.o
  %.neg5.1 = add <2 x i64> %i.fl, %i.o
  %i.fp = sub <2 x i64> %.neg5.1, %i.fo
  store <2 x i64> %i.fp, ptr %i.fg, align 16, !tbaa !11
  %i.fq = add nsw i32 %.117252, -4
  %i.fr = getelementptr inbounds nuw i8, ptr %.355, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.315654, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %.316453, i64 32
  %i.fu = icmp sgt i32 %.117252, 4
  br i1 %i.fu, label %.lr.ph56, label %.loopexit, !llvm.loop !54

bb.e:                                             ; preds = %bb.c
  br i1 %i.cu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fv = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %2, label %.preheader23, label %.preheader25

.preheader25:                                     ; preds = %bb.f
  br i1 %i.fv, label %.lr.ph46.preheader, label %.loopexit

.lr.ph46.preheader:                               ; preds = %.preheader25
  %i.fw = add nsw i32 %1, -1                      ; 2 uses
  %i.fx = and i32 %i.fw, 2
  %lcmp.mod166.not.not = icmp eq i32 %i.fx, 0
  br i1 %lcmp.mod166.not.not, label %.lr.ph46.prol, label %.lr.ph46.prol.loopexit

.lr.ph46.prol:                                    ; preds = %.lr.ph46.preheader
  %i.fy = load <2 x i64>, ptr %.16.val, align 16, !tbaa !11
  %i.fz = load <2 x i64>, ptr %.16.val1, align 16, !tbaa !11
  %i.ga = load <2 x i64>, ptr %.16.val3, align 16, !tbaa !11
  %i.gb = add <2 x i64> %i.fy, %i.fz
  %i.gc = sub <2 x i64> %i.i, %i.gb
  %i.gd = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.gc, i32 range(i32 0, 256) %i.j)
  %i.ge = xor <2 x i64> %i.gd, %i.o
  %i.gf = sub <2 x i64> %i.ga, %i.o
  %i.gg = add <2 x i64> %i.gf, %i.ge
  store <2 x i64> %i.gg, ptr %.16.val3, align 16, !tbaa !11
  %i.gh = add nsw i32 %1, -2
  %i.gi = getelementptr inbounds nuw i8, ptr %.16.val3, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.16.val1, i64 16
  br label %.lr.ph46.prol.loopexit

.lr.ph46.prol.loopexit:                           ; preds = %.lr.ph46.prol, %.lr.ph46.preheader
  %.545.unr = phi ptr [ %.16.val3, %.lr.ph46.preheader ], [ %i.gi, %.lr.ph46.prol ]
  %.515844.unr = phi ptr [ %.16.val, %.lr.ph46.preheader ], [ %i.gj, %.lr.ph46.prol ]
  %.516643.unr = phi ptr [ %.16.val1, %.lr.ph46.preheader ], [ %i.gk, %.lr.ph46.prol ]
  %.117442.unr = phi i32 [ %1, %.lr.ph46.preheader ], [ %i.gh, %.lr.ph46.prol ]
  %i.gl = icmp ult i32 %i.fw, 2
  br i1 %i.gl, label %.loopexit, label %.lr.ph46

.preheader23:                                     ; preds = %bb.f
  br i1 %i.fv, label %.lr.ph51.preheader, label %.loopexit

.lr.ph51.preheader:                               ; preds = %.preheader23
  %i.gm = add nsw i32 %1, -1                      ; 2 uses
  %i.gn = and i32 %i.gm, 2
  %lcmp.mod168.not.not = icmp eq i32 %i.gn, 0
  br i1 %lcmp.mod168.not.not, label %.lr.ph51.prol, label %.lr.ph51.prol.loopexit

.lr.ph51.prol:                                    ; preds = %.lr.ph51.preheader
  %i.go = load <2 x i64>, ptr %.16.val, align 16, !tbaa !11
  %i.gp = load <2 x i64>, ptr %.16.val1, align 16, !tbaa !11
  %i.gq = load <2 x i64>, ptr %.16.val3, align 16, !tbaa !11
  %i.gr = add <2 x i64> %i.go, %i.gp
  %i.gs = sub <2 x i64> %i.i, %i.gr
  %i.gt = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.gs, i32 range(i32 0, 256) %i.j)
  %i.gu = xor <2 x i64> %i.gt, %i.o
  %.neg.prol = add <2 x i64> %i.gq, %i.o
  %i.gv = sub <2 x i64> %.neg.prol, %i.gu
  store <2 x i64> %i.gv, ptr %.16.val3, align 16, !tbaa !11
  %i.gw = add nsw i32 %1, -2
  %i.gx = getelementptr inbounds nuw i8, ptr %.16.val3, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.16.val1, i64 16
  br label %.lr.ph51.prol.loopexit

.lr.ph51.prol.loopexit:                           ; preds = %.lr.ph51.prol, %.lr.ph51.preheader
  %.450.unr = phi ptr [ %.16.val3, %.lr.ph51.preheader ], [ %i.gx, %.lr.ph51.prol ]
  %.415749.unr = phi ptr [ %.16.val, %.lr.ph51.preheader ], [ %i.gy, %.lr.ph51.prol ]
  %.416548.unr = phi ptr [ %.16.val1, %.lr.ph51.preheader ], [ %i.gz, %.lr.ph51.prol ]
  %.017347.unr = phi i32 [ %1, %.lr.ph51.preheader ], [ %i.gw, %.lr.ph51.prol ]
  %i.ha = icmp ult i32 %i.gm, 2
  br i1 %i.ha, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.prol.loopexit, %.lr.ph51
  %.450 = phi ptr [ %i.hv, %.lr.ph51 ], [ %.450.unr, %.lr.ph51.prol.loopexit ] ; 4 uses
  %.415749 = phi ptr [ %i.hw, %.lr.ph51 ], [ %.415749.unr, %.lr.ph51.prol.loopexit ] ; 3 uses
  %.416548 = phi ptr [ %i.hx, %.lr.ph51 ], [ %.416548.unr, %.lr.ph51.prol.loopexit ] ; 3 uses
  %.017347 = phi i32 [ %i.hu, %.lr.ph51 ], [ %.017347.unr, %.lr.ph51.prol.loopexit ] ; 2 uses
  %i.hb = load <2 x i64>, ptr %.415749, align 16, !tbaa !11
  %i.hc = load <2 x i64>, ptr %.416548, align 16, !tbaa !11
  %i.hd = load <2 x i64>, ptr %.450, align 16, !tbaa !11
  %i.he = add <2 x i64> %i.hb, %i.hc
  %i.hf = sub <2 x i64> %i.i, %i.he
  %i.hg = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.hf, i32 range(i32 0, 256) %i.j)
  %i.hh = xor <2 x i64> %i.hg, %i.o
  %.neg = add <2 x i64> %i.hd, %i.o
  %i.hi = sub <2 x i64> %.neg, %i.hh
  store <2 x i64> %i.hi, ptr %.450, align 16, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %.450, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.415749, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.416548, i64 16
  %i.hm = load <2 x i64>, ptr %i.hk, align 16, !tbaa !11
  %i.hn = load <2 x i64>, ptr %i.hl, align 16, !tbaa !11
  %i.ho = load <2 x i64>, ptr %i.hj, align 16, !tbaa !11
  %i.hp = add <2 x i64> %i.hm, %i.hn
  %i.hq = sub <2 x i64> %i.i, %i.hp
  %i.hr = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.hq, i32 range(i32 0, 256) %i.j)
  %i.hs = xor <2 x i64> %i.hr, %i.o
  %.neg.1 = add <2 x i64> %i.ho, %i.o
  %i.ht = sub <2 x i64> %.neg.1, %i.hs
  store <2 x i64> %i.ht, ptr %i.hj, align 16, !tbaa !11
  %i.hu = add nsw i32 %.017347, -4
  %i.hv = getelementptr inbounds nuw i8, ptr %.450, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %.415749, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %.416548, i64 32
  %i.hy = icmp sgt i32 %.017347, 4
  br i1 %i.hy, label %.lr.ph51, label %.loopexit, !llvm.loop !55

.lr.ph46:                                         ; preds = %.lr.ph46.prol.loopexit, %.lr.ph46
  %.545 = phi ptr [ %i.iv, %.lr.ph46 ], [ %.545.unr, %.lr.ph46.prol.loopexit ] ; 4 uses
  %.515844 = phi ptr [ %i.iw, %.lr.ph46 ], [ %.515844.unr, %.lr.ph46.prol.loopexit ] ; 3 uses
  %.516643 = phi ptr [ %i.ix, %.lr.ph46 ], [ %.516643.unr, %.lr.ph46.prol.loopexit ] ; 3 uses
  %.117442 = phi i32 [ %i.iu, %.lr.ph46 ], [ %.117442.unr, %.lr.ph46.prol.loopexit ] ; 2 uses
  %i.hz = load <2 x i64>, ptr %.515844, align 16, !tbaa !11
  %i.ia = load <2 x i64>, ptr %.516643, align 16, !tbaa !11
  %i.ib = load <2 x i64>, ptr %.545, align 16, !tbaa !11
  %i.ic = add <2 x i64> %i.hz, %i.ia
  %i.id = sub <2 x i64> %i.i, %i.ic
  %i.ie = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.id, i32 range(i32 0, 256) %i.j)
  %i.if = xor <2 x i64> %i.ie, %i.o
  %i.ig = sub <2 x i64> %i.ib, %i.o
  %i.ih = add <2 x i64> %i.ig, %i.if
  store <2 x i64> %i.ih, ptr %.545, align 16, !tbaa !11
  %i.ii = getelementptr inbounds nuw i8, ptr %.545, i64 16 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.515844, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %.516643, i64 16
  %i.il = load <2 x i64>, ptr %i.ij, align 16, !tbaa !11
  %i.im = load <2 x i64>, ptr %i.ik, align 16, !tbaa !11
  %i.in = load <2 x i64>, ptr %i.ii, align 16, !tbaa !11
  %i.io = add <2 x i64> %i.il, %i.im
  %i.ip = sub <2 x i64> %i.i, %i.io
  %i.iq = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.ip, i32 range(i32 0, 256) %i.j)
  %i.ir = xor <2 x i64> %i.iq, %i.o
  %i.is = sub <2 x i64> %i.in, %i.o
  %i.it = add <2 x i64> %i.is, %i.ir
  store <2 x i64> %i.it, ptr %i.ii, align 16, !tbaa !11
  %i.iu = add nsw i32 %.117442, -4
  %i.iv = getelementptr inbounds nuw i8, ptr %.545, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %.515844, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %.516643, i64 32
  %i.iy = icmp sgt i32 %.117442, 4
  br i1 %i.iy, label %.lr.ph46, label %.loopexit, !llvm.loop !56

bb.g:                                             ; preds = %bb.e
  %.not17736 = icmp eq i32 %1, 0                  ; 2 uses
  br i1 %2, label %.preheader27, label %.preheader29

.preheader29:                                     ; preds = %bb.g
  br i1 %.not17736, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader29
  %i.iz = zext nneg i8 %i.g to i64                ; 4 uses
  %i.ja = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check = icmp ult i32 %1, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jb = add i32 %1, -1
  %i.jc = zext i32 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 3
  %i.je = add nuw nsw i64 %i.jd, 8                ; 3 uses
  %i.jf = getelementptr i8, ptr %.16.val3, i64 %i.je ; 2 uses
  %i.jg = getelementptr i8, ptr %.16.val, i64 %i.je
  %3 = getelementptr i8, ptr %.16.val1, i64 %i.je
  %bound0.a = icmp ult ptr %.16.val3, %i.jg
  %bound1 = icmp ult ptr %.16.val, %i.jf
  %found.conflict = and i1 %bound0.a, %bound1
  %bound099 = icmp ult ptr %.16.val3, %3
  %bound1100 = icmp ult ptr %.16.val1, %i.jf
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ja, 4294967294              ; 4 uses
  %i.jh = trunc nuw i64 %n.vec to i32
  %i.ji = sub i32 %1, %i.jh
  %i.jj = shl nuw nsw i64 %n.vec, 3               ; 3 uses
  %i.jk = getelementptr i8, ptr %.16.val3, i64 %i.jj
  %i.jl = getelementptr i8, ptr %.16.val, i64 %i.jj
  %i.jm = getelementptr i8, ptr %.16.val1, i64 %i.jj
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat103 = shufflevector <2 x i64> %broadcast.splatinsert102, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat105 = shufflevector <2 x i64> %broadcast.splatinsert104, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jn = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.16.val3, i64 %i.jn ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.16.val, i64 %i.jn
  %next.gep107 = getelementptr i8, ptr %.16.val1, i64 %i.jn
  %wide.load = load <2 x i64>, ptr %next.gep106, align 8, !tbaa !16, !alias.scope !69
  %wide.load108 = load <2 x i64>, ptr %next.gep107, align 8, !tbaa !16, !alias.scope !70
  %i.jo = add nsw <2 x i64> %wide.load108, %wide.load
  %i.jp = mul nsw <2 x i64> %i.jo, %broadcast.splat103
  %i.jq = add nsw <2 x i64> %i.jp, %broadcast.splat105
  %i.jr = ashr <2 x i64> %i.jq, %broadcast.splat
  %wide.load109 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !16, !alias.scope !71, !noalias !72
  %i.js = add nsw <2 x i64> %i.jr, %wide.load109
  store <2 x i64> %i.js, ptr %next.gep, align 8, !tbaa !16, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ja
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.035.ph = phi i32 [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.ji, %middle.block ] ; 4 uses
  %.734.ph = phi ptr [ %.16.val3, %vector.memcheck ], [ %.16.val3, %.lr.ph ], [ %i.jk, %middle.block ] ; 4 uses
  %.716033.ph = phi ptr [ %.16.val, %vector.memcheck ], [ %.16.val, %.lr.ph ], [ %i.jl, %middle.block ] ; 3 uses
  %.716832.ph = phi ptr [ %.16.val1, %vector.memcheck ], [ %.16.val1, %.lr.ph ], [ %i.jm, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.035.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ju = getelementptr inbounds nuw i8, ptr %.716033.ph, i64 8
  %i.jv = load i64, ptr %.716033.ph, align 8, !tbaa !16
  %i.jw = getelementptr inbounds nuw i8, ptr %.716832.ph, i64 8
  %i.jx = load i64, ptr %.716832.ph, align 8, !tbaa !16
  %i.jy = add nsw i64 %i.jx, %i.jv
  %i.jz = mul nsw i64 %i.jy, %i.c
  %i.ka = add nsw i64 %i.jz, %i.f
  %i.kb = ashr i64 %i.ka, %i.iz
  %i.kc = getelementptr inbounds nuw i8, ptr %.734.ph, i64 8
  %i.kd = load i64, ptr %.734.ph, align 8, !tbaa !16
  %i.ke = add nsw i64 %i.kb, %i.kd
  store i64 %i.ke, ptr %.734.ph, align 8, !tbaa !16
  %i.kf = add nsw i32 %.035.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.035.unr = phi i32 [ %.035.ph, %scalar.ph.preheader ], [ %i.kf, %scalar.ph.prol ]
  %.734.unr = phi ptr [ %.734.ph, %scalar.ph.preheader ], [ %i.kc, %scalar.ph.prol ]
  %.716033.unr = phi ptr [ %.716033.ph, %scalar.ph.preheader ], [ %i.ju, %scalar.ph.prol ]
  %.716832.unr = phi ptr [ %.716832.ph, %scalar.ph.preheader ], [ %i.jw, %scalar.ph.prol ]
  %i.kg = icmp eq i32 %.035.ph, 1
  br i1 %i.kg, label %.loopexit, label %scalar.ph

.preheader27:                                     ; preds = %bb.g
  br i1 %.not17736, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %.preheader27
  %i.kh = zext nneg i8 %i.g to i64                ; 4 uses
  %i.ki = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check124 = icmp ult i32 %1, 12
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph41
  %i.kj = add i32 %1, -1
  %i.kk = zext i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %i.km = add nuw nsw i64 %i.kl, 8                ; 3 uses
  %i.kn = getelementptr i8, ptr %.16.val3, i64 %i.km ; 2 uses
  %i.ko = getelementptr i8, ptr %.16.val, i64 %i.km
  %4 = getelementptr i8, ptr %.16.val1, i64 %i.km
  %bound0126.a = icmp ult ptr %.16.val3, %i.ko
  %bound1127 = icmp ult ptr %.16.val, %i.kn
  %found.conflict128 = and i1 %bound0126.a, %bound1127
  %bound0129 = icmp ult ptr %.16.val3, %4
  %bound1130 = icmp ult ptr %.16.val1, %i.kn
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %found.conflict128, %found.conflict131
  br i1 %conflict.rdx132, label %scalar.ph123.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck125
  %n.vec134 = and i64 %i.ki, 4294967294           ; 4 uses
  %i.kp = trunc nuw i64 %n.vec134 to i32
  %i.kq = sub i32 %1, %i.kp
  %i.kr = shl nuw nsw i64 %n.vec134, 3            ; 3 uses
  %i.ks = getelementptr i8, ptr %.16.val3, i64 %i.kr
  %i.kt = getelementptr i8, ptr %.16.val, i64 %i.kr
  %i.ku = getelementptr i8, ptr %.16.val1, i64 %i.kr
  %broadcast.splatinsert135 = insertelement <2 x i64> poison, i64 %i.kh, i64 0
  %broadcast.splat136 = shufflevector <2 x i64> %broadcast.splatinsert135, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat138 = shufflevector <2 x i64> %broadcast.splatinsert137, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat140 = shufflevector <2 x i64> %broadcast.splatinsert139, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph133
  %index142 = phi i64 [ 0, %vector.ph133 ], [ %index.next149, %vector.body141 ] ; 2 uses
  %i.kv = shl i64 %index142, 3                    ; 3 uses
  %next.gep143 = getelementptr i8, ptr %.16.val3, i64 %i.kv ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.16.val, i64 %i.kv
  %next.gep145 = getelementptr i8, ptr %.16.val1, i64 %i.kv
  %wide.load146 = load <2 x i64>, ptr %next.gep144, align 8, !tbaa !16, !alias.scope !73
  %wide.load147 = load <2 x i64>, ptr %next.gep145, align 8, !tbaa !16, !alias.scope !74
  %i.kw = add nsw <2 x i64> %wide.load147, %wide.load146
  %i.kx = mul nsw <2 x i64> %i.kw, %broadcast.splat138
  %i.ky = add nsw <2 x i64> %i.kx, %broadcast.splat140
  %i.kz = ashr <2 x i64> %i.ky, %broadcast.splat136
  %wide.load148 = load <2 x i64>, ptr %next.gep143, align 8, !tbaa !16, !alias.scope !75, !noalias !76
  %i.la = sub nsw <2 x i64> %wide.load148, %i.kz
  store <2 x i64> %i.la, ptr %next.gep143, align 8, !tbaa !16, !alias.scope !75, !noalias !76
  %index.next149 = add nuw i64 %index142, 2       ; 2 uses
  %i.lb = icmp eq i64 %index.next149, %n.vec134
  br i1 %i.lb, label %middle.block150, label %vector.body141, !llvm.loop !66

middle.block150:                                  ; preds = %vector.body141
  %cmp.n151 = icmp eq i64 %n.vec134, %i.ki
  br i1 %cmp.n151, label %.loopexit, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %vector.memcheck125, %.lr.ph41, %middle.block150
  %.015140.ph = phi i32 [ %1, %vector.memcheck125 ], [ %1, %.lr.ph41 ], [ %i.kq, %middle.block150 ] ; 4 uses
  %.639.ph = phi ptr [ %.16.val3, %vector.memcheck125 ], [ %.16.val3, %.lr.ph41 ], [ %i.ks, %middle.block150 ] ; 4 uses
  %.615938.ph = phi ptr [ %.16.val, %vector.memcheck125 ], [ %.16.val, %.lr.ph41 ], [ %i.kt, %middle.block150 ] ; 3 uses
  %.616737.ph = phi ptr [ %.16.val1, %vector.memcheck125 ], [ %.16.val1, %.lr.ph41 ], [ %i.ku, %middle.block150 ] ; 3 uses
  %xtraiter163 = and i32 %.015140.ph, 1
  %lcmp.mod164.not = icmp eq i32 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph123.prol.loopexit, label %scalar.ph123.prol

scalar.ph123.prol:                                ; preds = %scalar.ph123.preheader
  %i.lc = getelementptr inbounds nuw i8, ptr %.615938.ph, i64 8
  %i.ld = load i64, ptr %.615938.ph, align 8, !tbaa !16
  %i.le = getelementptr inbounds nuw i8, ptr %.616737.ph, i64 8
  %i.lf = load i64, ptr %.616737.ph, align 8, !tbaa !16
  %i.lg = add nsw i64 %i.lf, %i.ld
  %i.lh = mul nsw i64 %i.lg, %i.c
  %i.li = add nsw i64 %i.lh, %i.f
  %i.lj = ashr i64 %i.li, %i.kh
  %i.lk = getelementptr inbounds nuw i8, ptr %.639.ph, i64 8
  %i.ll = load i64, ptr %.639.ph, align 8, !tbaa !16
  %i.lm = sub nsw i64 %i.ll, %i.lj
  store i64 %i.lm, ptr %.639.ph, align 8, !tbaa !16
  %i.ln = add nsw i32 %.015140.ph, -1
  br label %scalar.ph123.prol.loopexit

scalar.ph123.prol.loopexit:                       ; preds = %scalar.ph123.prol, %scalar.ph123.preheader
  %.015140.unr = phi i32 [ %.015140.ph, %scalar.ph123.preheader ], [ %i.ln, %scalar.ph123.prol ]
  %.639.unr = phi ptr [ %.639.ph, %scalar.ph123.preheader ], [ %i.lk, %scalar.ph123.prol ]
  %.615938.unr = phi ptr [ %.615938.ph, %scalar.ph123.preheader ], [ %i.lc, %scalar.ph123.prol ]
  %.616737.unr = phi ptr [ %.616737.ph, %scalar.ph123.preheader ], [ %i.le, %scalar.ph123.prol ]
  %i.lo = icmp eq i32 %.015140.ph, 1
  br i1 %i.lo, label %.loopexit, label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.prol.loopexit, %scalar.ph123
  %.015140 = phi i32 [ %i.ml, %scalar.ph123 ], [ %.015140.unr, %scalar.ph123.prol.loopexit ]
  %.639 = phi ptr [ %i.mi, %scalar.ph123 ], [ %.639.unr, %scalar.ph123.prol.loopexit ] ; 4 uses
  %.615938 = phi ptr [ %i.ma, %scalar.ph123 ], [ %.615938.unr, %scalar.ph123.prol.loopexit ] ; 3 uses
  %.616737 = phi ptr [ %i.mc, %scalar.ph123 ], [ %.616737.unr, %scalar.ph123.prol.loopexit ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.615938, i64 8
  %i.lq = load i64, ptr %.615938, align 8, !tbaa !16
  %i.lr = getelementptr inbounds nuw i8, ptr %.616737, i64 8
  %i.ls = load i64, ptr %.616737, align 8, !tbaa !16
  %i.lt = add nsw i64 %i.ls, %i.lq
  %i.lu = mul nsw i64 %i.lt, %i.c
  %i.lv = add nsw i64 %i.lu, %i.f
  %i.lw = ashr i64 %i.lv, %i.kh
  %i.lx = getelementptr inbounds nuw i8, ptr %.639, i64 8 ; 2 uses
  %i.ly = load i64, ptr %.639, align 8, !tbaa !16
  %i.lz = sub nsw i64 %i.ly, %i.lw
  store i64 %i.lz, ptr %.639, align 8, !tbaa !16
  %i.ma = getelementptr inbounds nuw i8, ptr %.615938, i64 16
  %i.mb = load i64, ptr %i.lp, align 8, !tbaa !16
  %i.mc = getelementptr inbounds nuw i8, ptr %.616737, i64 16
  %i.md = load i64, ptr %i.lr, align 8, !tbaa !16
  %i.me = add nsw i64 %i.md, %i.mb
  %i.mf = mul nsw i64 %i.me, %i.c
  %i.mg = add nsw i64 %i.mf, %i.f
  %i.mh = ashr i64 %i.mg, %i.kh
  %i.mi = getelementptr inbounds nuw i8, ptr %.639, i64 16
  %i.mj = load i64, ptr %i.lx, align 8, !tbaa !16
  %i.mk = sub nsw i64 %i.mj, %i.mh
  store i64 %i.mk, ptr %i.lx, align 8, !tbaa !16
  %i.ml = add i32 %.015140, -2                    ; 2 uses
  %.not177.1 = icmp eq i32 %i.ml, 0
  br i1 %.not177.1, label %.loopexit, label %scalar.ph123, !llvm.loop !67

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.035 = phi i32 [ %i.ni, %scalar.ph ], [ %.035.unr, %scalar.ph.prol.loopexit ]
  %.734 = phi ptr [ %i.nf, %scalar.ph ], [ %.734.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.716033 = phi ptr [ %i.mx, %scalar.ph ], [ %.716033.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.716832 = phi ptr [ %i.mz, %scalar.ph ], [ %.716832.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.716033, i64 8
  %i.mn = load i64, ptr %.716033, align 8, !tbaa !16
  %i.mo = getelementptr inbounds nuw i8, ptr %.716832, i64 8
  %i.mp = load i64, ptr %.716832, align 8, !tbaa !16
  %i.mq = add nsw i64 %i.mp, %i.mn
  %i.mr = mul nsw i64 %i.mq, %i.c
  %i.ms = add nsw i64 %i.mr, %i.f
  %i.mt = ashr i64 %i.ms, %i.iz
  %i.mu = getelementptr inbounds nuw i8, ptr %.734, i64 8 ; 2 uses
  %i.mv = load i64, ptr %.734, align 8, !tbaa !16
  %i.mw = add nsw i64 %i.mt, %i.mv
  store i64 %i.mw, ptr %.734, align 8, !tbaa !16
  %i.mx = getelementptr inbounds nuw i8, ptr %.716033, i64 16
  %i.my = load i64, ptr %i.mm, align 8, !tbaa !16
  %i.mz = getelementptr inbounds nuw i8, ptr %.716832, i64 16
  %i.na = load i64, ptr %i.mo, align 8, !tbaa !16
  %i.nb = add nsw i64 %i.na, %i.my
  %i.nc = mul nsw i64 %i.nb, %i.c
  %i.nd = add nsw i64 %i.nc, %i.f
  %i.ne = ashr i64 %i.nd, %i.iz
  %i.nf = getelementptr inbounds nuw i8, ptr %.734, i64 16
  %i.ng = load i64, ptr %i.mu, align 8, !tbaa !16
  %i.nh = add nsw i64 %i.ne, %i.ng
  store i64 %i.nh, ptr %i.mu, align 8, !tbaa !16
  %i.ni = add i32 %.035, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.ni, 0
  br i1 %.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !68

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph123.prol.loopexit, %scalar.ph123, %.lr.ph46.prol.loopexit, %.lr.ph46, %.lr.ph51.prol.loopexit, %.lr.ph51, %.lr.ph56.prol.loopexit, %.lr.ph56, %.lr.ph61.prol.loopexit, %.lr.ph61, %.lr.ph66.prol.loopexit, %.lr.ph66, %.lr.ph71.prol.loopexit, %.lr.ph71, %middle.block, %middle.block150, %.preheader29, %.preheader27, %.preheader25, %.preheader23, %.preheader21, %.preheader19, %.preheader17, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17sse2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp ugt i32 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %.loopexit232.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.i.preheader.i, label %_ZN4ojph5localL19sse2_deinterleave32EPfS1_S1_i.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %.pn210.i = select i1 %5, ptr %2, ptr %1
  %.in209.i = getelementptr inbounds nuw i8, ptr %.pn210.i, i64 16
  %i.h = load ptr, ptr %.in209.i, align 8, !tbaa !11 ; 2 uses
  %..i = select i1 %5, ptr %1, ptr %2
  %.in.i = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.i = load ptr, ptr %.in.i, align 8, !tbaa !11 ; 2 uses
  %i.j = add nsw i32 %4, -1
  %i.k = lshr i32 %i.j, 3
  %i.l = add nuw nsw i32 %i.k, 1
  %xtraiter = and i32 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01419.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %i.h, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01518.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.prol ], [ %i.g, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01617.i.i.prol = phi i32 [ %i.p, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.m = load <8 x float>, ptr %.01518.i.i.prol, align 16, !tbaa !11 ; 2 uses
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.o = shufflevector <8 x float> %i.m, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %i.n, ptr %.020.i.i.prol, align 16, !tbaa !11
  store <4 x float> %i.o, ptr %.01419.i.i.prol, align 16, !tbaa !11
  %i.p = add nsw i32 %.01617.i.i.prol, -8         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01518.i.i.prol, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.020.i.i.prol, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01419.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !77

end_hunk_1
begin_hunk_2_@_ZN4ojph5local17sse2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.bn = sext i16 %i.bm to i32                   ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !11 ; 2 uses
  %i.bq = sext i16 %i.bp to i32                   ; 9 uses
  %i.br = load i8, ptr %i.bk, align 4, !tbaa !11  ; 4 uses
  %i.bs = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bt = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bu = load i32, ptr %.0187270.i, align 4, !tbaa !13
  %i.bv = getelementptr inbounds i8, ptr %.0187270.i, i64 -4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !13
  %i.bw = add nsw i32 %.0188269.i, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0187270.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ca = zext nneg i32 %.0188269.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0187270.i, i64 %i.ca
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !13
  %i.cc = icmp eq i16 %i.bm, 1
  br i1 %i.cc, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not279.i = icmp eq i32 %.0189268.i, 0         ; 2 uses
  br i1 %.0.in272.i, label %.preheader.i, label %.preheader218.i

.preheader218.i:                                  ; preds = %bb.e
  br i1 %.not279.i, label %.loopexit.i, label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.preheader218.i
  %i.cd = zext i8 %i.br to i32
  br label %bb.g

.preheader.i:                                     ; preds = %bb.e
  br i1 %.not279.i, label %.loopexit.i, label %.lr.ph265.i

.lr.ph265.i:                                      ; preds = %.preheader.i
  %i.ce = zext i8 %i.br to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph265.i
  %.0192264.i = phi ptr [ %.0187270.i, %.lr.ph265.i ], [ %i.co, %bb.f ] ; 3 uses
  %.0194263.i = phi ptr [ %.0186271.i, %.lr.ph265.i ], [ %i.cp, %bb.f ] ; 3 uses
  %.0202262.i = phi i32 [ %.0189268.i, %.lr.ph265.i ], [ %i.cn, %bb.f ] ; 2 uses
  %i.cf = load <4 x i32>, ptr %.0192264.i, align 16, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %.0192264.i, i64 4
  %i.ch = load <4 x i32>, ptr %i.cg, align 4, !tbaa !11
  %i.ci = load <4 x i32>, ptr %.0194263.i, align 16, !tbaa !11
  %i.cj = add <4 x i32> %i.cf, %i.bt
  %i.ck = add <4 x i32> %i.cj, %i.ch
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.ck, i32 range(i32 0, 256) %i.ce)
  %i.cm = add <4 x i32> %i.cl, %i.ci
  store <4 x i32> %i.cm, ptr %.0194263.i, align 16, !tbaa !11
  %i.cn = add nsw i32 %.0202262.i, -4
  %i.co = getelementptr inbounds nuw i8, ptr %.0192264.i, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0194263.i, i64 16
  %i.cq = icmp sgt i32 %.0202262.i, 4
  br i1 %i.cq, label %bb.f, label %.loopexit.i, !llvm.loop !79

bb.g:                                             ; preds = %bb.g, %.lr.ph261.i
  %.1193260.i = phi ptr [ %.0187270.i, %.lr.ph261.i ], [ %i.da, %bb.g ] ; 3 uses
  %.1195259.i = phi ptr [ %.0186271.i, %.lr.ph261.i ], [ %i.db, %bb.g ] ; 3 uses
  %.1203258.i = phi i32 [ %.0189268.i, %.lr.ph261.i ], [ %i.cz, %bb.g ] ; 2 uses
  %i.cr = load <4 x i32>, ptr %.1193260.i, align 16, !tbaa !11
  %i.cs = getelementptr inbounds i8, ptr %.1193260.i, i64 -4
  %i.ct = load <4 x i32>, ptr %i.cs, align 4, !tbaa !11
  %i.cu = load <4 x i32>, ptr %.1195259.i, align 16, !tbaa !11
  %i.cv = add <4 x i32> %i.cr, %i.bt
  %i.cw = add <4 x i32> %i.cv, %i.ct
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.cw, i32 range(i32 0, 256) %i.cd)
  %i.cy = add <4 x i32> %i.cx, %i.cu
  store <4 x i32> %i.cy, ptr %.1195259.i, align 16, !tbaa !11
  %i.cz = add nsw i32 %.1203258.i, -4
  %i.da = getelementptr inbounds nuw i8, ptr %.1193260.i, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.1195259.i, i64 16
  %i.dc = icmp sgt i32 %.1203258.i, 4
  br i1 %i.dc, label %bb.g, label %.loopexit.i, !llvm.loop !80

bb.h:                                             ; preds = %bb.d
  %i.dd = icmp eq i16 %i.bm, -1                   ; 2 uses
  %i.de = icmp eq i16 %i.bp, 1
  %or.cond.i = and i1 %i.dd, %i.de
  %i.df = zext i8 %i.br to i32                    ; 10 uses
  %i.dg = icmp eq i8 %i.br, 1
  %or.cond4.i = select i1 %or.cond.i, i1 %i.dg, i1 false
  %.not277.i = icmp eq i32 %.0189268.i, 0         ; 6 uses
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.0.in272.i, label %.preheader220.i, label %.preheader222.i

.preheader222.i:                                  ; preds = %bb.i
  br i1 %.not277.i, label %.loopexit.i, label %.lr.ph253.i

.preheader220.i:                                  ; preds = %bb.i
  br i1 %.not277.i, label %.loopexit.i, label %.lr.ph257.i

.lr.ph257.i:                                      ; preds = %.preheader220.i, %.lr.ph257.i
  %.2256.i = phi ptr [ %i.dp, %.lr.ph257.i ], [ %.0187270.i, %.preheader220.i ] ; 3 uses
  %.2196255.i = phi ptr [ %i.dq, %.lr.ph257.i ], [ %.0186271.i, %.preheader220.i ] ; 3 uses
  %.0204254.i = phi i32 [ %i.do, %.lr.ph257.i ], [ %.0189268.i, %.preheader220.i ] ; 2 uses
  %i.dh = load <4 x i32>, ptr %.2256.i, align 16, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %.2256.i, i64 4
  %i.dj = load <4 x i32>, ptr %i.di, align 4, !tbaa !11
  %i.dk = load <4 x i32>, ptr %.2196255.i, align 16, !tbaa !11
  %i.dl = add <4 x i32> %i.dj, %i.dh
  %i.dm = ashr <4 x i32> %i.dl, splat (i32 1)
  %i.dn = sub <4 x i32> %i.dk, %i.dm
  store <4 x i32> %i.dn, ptr %.2196255.i, align 16, !tbaa !11
  %i.do = add nsw i32 %.0204254.i, -4
  %i.dp = getelementptr inbounds nuw i8, ptr %.2256.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.2196255.i, i64 16
  %i.dr = icmp sgt i32 %.0204254.i, 4
  br i1 %i.dr, label %.lr.ph257.i, label %.loopexit.i, !llvm.loop !81

.lr.ph253.i:                                      ; preds = %.preheader222.i, %.lr.ph253.i
  %.3252.i = phi ptr [ %i.ea, %.lr.ph253.i ], [ %.0187270.i, %.preheader222.i ] ; 3 uses
  %.3197251.i = phi ptr [ %i.eb, %.lr.ph253.i ], [ %.0186271.i, %.preheader222.i ] ; 3 uses
  %.1205250.i = phi i32 [ %i.dz, %.lr.ph253.i ], [ %.0189268.i, %.preheader222.i ] ; 2 uses
  %i.ds = load <4 x i32>, ptr %.3252.i, align 16, !tbaa !11
  %i.dt = getelementptr inbounds i8, ptr %.3252.i, i64 -4
  %i.du = load <4 x i32>, ptr %i.dt, align 4, !tbaa !11
  %i.dv = load <4 x i32>, ptr %.3197251.i, align 16, !tbaa !11
  %i.dw = add <4 x i32> %i.du, %i.ds
  %i.dx = ashr <4 x i32> %i.dw, splat (i32 1)
  %i.dy = sub <4 x i32> %i.dv, %i.dx
  store <4 x i32> %i.dy, ptr %.3197251.i, align 16, !tbaa !11
  %i.dz = add nsw i32 %.1205250.i, -4
  %i.ea = getelementptr inbounds nuw i8, ptr %.3252.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.3197251.i, i64 16
  %i.ec = icmp sgt i32 %.1205250.i, 4
  br i1 %i.ec, label %.lr.ph253.i, label %.loopexit.i, !llvm.loop !82

bb.j:                                             ; preds = %bb.h
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.0.in272.i, label %.preheader224.i, label %.preheader226.i

.preheader226.i:                                  ; preds = %bb.k
  br i1 %.not277.i, label %.loopexit.i, label %.lr.ph245.i

.preheader224.i:                                  ; preds = %bb.k
  br i1 %.not277.i, label %.loopexit.i, label %.lr.ph249.i

.lr.ph249.i:                                      ; preds = %.preheader224.i, %.lr.ph249.i
  %.0191248.i = phi i32 [ %i.el, %.lr.ph249.i ], [ %.0189268.i, %.preheader224.i ] ; 2 uses
  %.4247.i = phi ptr [ %i.em, %.lr.ph249.i ], [ %.0187270.i, %.preheader224.i ] ; 3 uses
  %.4198246.i = phi ptr [ %i.en, %.lr.ph249.i ], [ %.0186271.i, %.preheader224.i ] ; 3 uses
  %i.ed = load <4 x i32>, ptr %.4247.i, align 16, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %.4247.i, i64 4
  %i.ef = load <4 x i32>, ptr %i.ee, align 4, !tbaa !11
  %i.eg = load <4 x i32>, ptr %.4198246.i, align 16, !tbaa !11
  %i.eh = add <4 x i32> %i.ed, %i.ef
  %i.ei = sub <4 x i32> %i.bt, %i.eh
  %i.ej = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.ei, i32 range(i32 0, 256) %i.df)
  %i.ek = add <4 x i32> %i.ej, %i.eg
  store <4 x i32> %i.ek, ptr %.4198246.i, align 16, !tbaa !11
  %i.el = add nsw i32 %.0191248.i, -4
  %i.em = getelementptr inbounds nuw i8, ptr %.4247.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.4198246.i, i64 16
  %i.eo = icmp sgt i32 %.0191248.i, 4
  br i1 %i.eo, label %.lr.ph249.i, label %.loopexit.i, !llvm.loop !83

.lr.ph245.i:                                      ; preds = %.preheader226.i, %.lr.ph245.i
  %.1244.i = phi i32 [ %i.ex, %.lr.ph245.i ], [ %.0189268.i, %.preheader226.i ] ; 2 uses
  %.5243.i = phi ptr [ %i.ey, %.lr.ph245.i ], [ %.0187270.i, %.preheader226.i ] ; 3 uses
  %.5199242.i = phi ptr [ %i.ez, %.lr.ph245.i ], [ %.0186271.i, %.preheader226.i ] ; 3 uses
  %i.ep = load <4 x i32>, ptr %.5243.i, align 16, !tbaa !11
  %i.eq = getelementptr inbounds i8, ptr %.5243.i, i64 -4
  %i.er = load <4 x i32>, ptr %i.eq, align 4, !tbaa !11
  %i.es = load <4 x i32>, ptr %.5199242.i, align 16, !tbaa !11
  %i.et = add <4 x i32> %i.ep, %i.er
  %i.eu = sub <4 x i32> %i.bt, %i.et
  %i.ev = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.eu, i32 range(i32 0, 256) %i.df)
  %i.ew = add <4 x i32> %i.ev, %i.es
  store <4 x i32> %i.ew, ptr %.5199242.i, align 16, !tbaa !11
  %i.ex = add nsw i32 %.1244.i, -4
  %i.ey = getelementptr inbounds nuw i8, ptr %.5243.i, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %.5199242.i, i64 16
  %i.fa = icmp sgt i32 %.1244.i, 4
  br i1 %i.fa, label %.lr.ph245.i, label %.loopexit.i, !llvm.loop !84

bb.l:                                             ; preds = %bb.j
  br i1 %.0.in272.i, label %.preheader228.i, label %.preheader230.i

.preheader230.i:                                  ; preds = %bb.l
  br i1 %.not277.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader230.i
  %i.fb = zext nneg i32 %.0189268.i to i64        ; 2 uses
  %min.iters.check153 = icmp samesign ult i32 %.0189268.i, 8
  br i1 %min.iters.check153, label %.lr.ph.i.preheader288, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph.i.preheader
  %i.fc = add nsw i32 %.0189268.i, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 4                ; 2 uses
  %i.fg = getelementptr i8, ptr %.0186271.i, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %.0187270.i, i64 -4
  %i.fi = getelementptr i8, ptr %.0187270.i, i64 %i.fe
  %6 = getelementptr i8, ptr %.0187270.i, i64 %i.ff
  %bound0155.a = icmp ult ptr %.0186271.i, %i.fi
  %bound1156 = icmp ult ptr %i.fh, %i.fg
  %found.conflict157 = and i1 %bound0155.a, %bound1156
  %bound0158 = icmp ult ptr %.0186271.i, %6
  %bound1159 = icmp ult ptr %.0187270.i, %i.fg
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %found.conflict157, %found.conflict160
  br i1 %conflict.rdx161, label %.lr.ph.i.preheader288, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck154
  %n.vec163 = and i64 %i.fb, 2147483640           ; 4 uses
  %i.fj = trunc nuw nsw i64 %n.vec163 to i32
  %i.fk = sub nsw i32 %.0189268.i, %i.fj
  %i.fl = shl nuw nsw i64 %n.vec163, 2            ; 2 uses
  %i.fm = getelementptr i8, ptr %.0187270.i, i64 %i.fl
  %i.fn = getelementptr i8, ptr %.0186271.i, i64 %i.fl
  %broadcast.splatinsert164 = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat165 = shufflevector <4 x i32> %broadcast.splatinsert164, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph162
  %index171 = phi i64 [ 0, %vector.ph162 ], [ %index.next180, %vector.body170 ] ; 2 uses
  %i.fo = shl i64 %index171, 2                    ; 2 uses
  %next.gep172 = getelementptr i8, ptr %.0187270.i, i64 %i.fo ; 4 uses
  %next.gep173 = getelementptr i8, ptr %.0186271.i, i64 %i.fo ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %next.gep172, i64 -4
  %i.fq = getelementptr inbounds nuw i8, ptr %next.gep172, i64 12
  %wide.load174 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !13, !alias.scope !120
  %wide.load175 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !13, !alias.scope !120
  %i.fr = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load176 = load <4 x i32>, ptr %next.gep172, align 4, !tbaa !13, !alias.scope !121
  %wide.load177 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !13, !alias.scope !121
  %i.fs = add nsw <4 x i32> %wide.load176, %wide.load174
  %i.ft = add nsw <4 x i32> %wide.load177, %wide.load175
  %i.fu = mul nsw <4 x i32> %i.fs, %broadcast.splat165
  %i.fv = mul nsw <4 x i32> %i.ft, %broadcast.splat165
  %i.fw = add nsw <4 x i32> %i.fu, %broadcast.splat167
  %i.fx = add nsw <4 x i32> %i.fv, %broadcast.splat167
  %i.fy = ashr <4 x i32> %i.fw, %broadcast.splat169
  %i.fz = ashr <4 x i32> %i.fx, %broadcast.splat169
  %i.ga = getelementptr i8, ptr %next.gep173, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !13, !alias.scope !122, !noalias !123
  %wide.load179 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !13, !alias.scope !122, !noalias !123
  %i.gb = add nsw <4 x i32> %i.fy, %wide.load178
  %i.gc = add nsw <4 x i32> %i.fz, %wide.load179
  store <4 x i32> %i.gb, ptr %next.gep173, align 4, !tbaa !13, !alias.scope !122, !noalias !123
  store <4 x i32> %i.gc, ptr %i.ga, align 4, !tbaa !13, !alias.scope !122, !noalias !123
  %index.next180 = add nuw i64 %index171, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next180, %n.vec163
  br i1 %i.gd, label %middle.block181, label %vector.body170, !llvm.loop !89

middle.block181:                                  ; preds = %vector.body170
  %cmp.n182 = icmp eq i64 %n.vec163, %i.fb
  br i1 %cmp.n182, label %.loopexit.i, label %.lr.ph.i.preheader288

.lr.ph.i.preheader288:                            ; preds = %vector.memcheck154, %.lr.ph.i.preheader, %middle.block181
  %.0184236.i.ph = phi i32 [ %.0189268.i, %vector.memcheck154 ], [ %.0189268.i, %.lr.ph.i.preheader ], [ %i.fk, %middle.block181 ] ; 4 uses
  %.7235.i.ph = phi ptr [ %.0187270.i, %vector.memcheck154 ], [ %.0187270.i, %.lr.ph.i.preheader ], [ %i.fm, %middle.block181 ] ; 4 uses
  %.7201234.i.ph = phi ptr [ %.0186271.i, %vector.memcheck154 ], [ %.0186271.i, %.lr.ph.i.preheader ], [ %i.fn, %middle.block181 ] ; 4 uses
  %xtraiter291 = and i32 %.0184236.i.ph, 1
  %lcmp.mod292.not = icmp eq i32 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader288
  %i.ge = getelementptr inbounds i8, ptr %.7235.i.ph, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !13
  %i.gg = load i32, ptr %.7235.i.ph, align 4, !tbaa !13
  %i.gh = add nsw i32 %i.gg, %i.gf
  %i.gi = mul nsw i32 %i.gh, %i.bn
  %i.gj = add nsw i32 %i.gi, %i.bq
  %i.gk = ashr i32 %i.gj, %i.df
  %i.gl = load i32, ptr %.7201234.i.ph, align 4, !tbaa !13
  %i.gm = add nsw i32 %i.gk, %i.gl
  store i32 %i.gm, ptr %.7201234.i.ph, align 4, !tbaa !13
  %i.gn = add nsw i32 %.0184236.i.ph, -1
  %i.go = getelementptr inbounds nuw i8, ptr %.7235.i.ph, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.7201234.i.ph, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader288
  %.0184236.i.unr = phi i32 [ %.0184236.i.ph, %.lr.ph.i.preheader288 ], [ %i.gn, %.lr.ph.i.prol ]
  %.7235.i.unr = phi ptr [ %.7235.i.ph, %.lr.ph.i.preheader288 ], [ %i.go, %.lr.ph.i.prol ]
  %.7201234.i.unr = phi ptr [ %.7201234.i.ph, %.lr.ph.i.preheader288 ], [ %i.gp, %.lr.ph.i.prol ]
  %i.gq = icmp eq i32 %.0184236.i.ph, 1
  br i1 %i.gq, label %.loopexit.i, label %.lr.ph.i

.preheader228.i:                                  ; preds = %bb.l
  br i1 %.not277.i, label %.loopexit.i, label %.lr.ph241.i.preheader

.lr.ph241.i.preheader:                            ; preds = %.preheader228.i
  %i.gr = zext nneg i32 %.0189268.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.0189268.i, 8
  br i1 %min.iters.check, label %.lr.ph241.i.preheader286, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph241.i.preheader
  %i.gs = add nsw i32 %.0189268.i, -1
  %i.gt = zext i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 2                ; 2 uses
  %i.gv = add nuw nsw i64 %i.gu, 4                ; 2 uses
  %i.gw = getelementptr i8, ptr %.0186271.i, i64 %i.gv ; 2 uses
  %i.gx = getelementptr i8, ptr %.0187270.i, i64 %i.gv
  %7 = getelementptr i8, ptr %.0187270.i, i64 4
  %8 = getelementptr i8, ptr %.0187270.i, i64 %i.gu
  %9 = getelementptr i8, ptr %8, i64 8
  %bound0 = icmp ult ptr %.0186271.i, %i.gx
  %bound1 = icmp ult ptr %.0187270.i, %i.gw
  %found.conflict = and i1 %bound0, %bound1
  %bound0124 = icmp ult ptr %.0186271.i, %9
  %bound1125 = icmp ult ptr %7, %i.gw
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx = or i1 %found.conflict, %found.conflict126
  br i1 %conflict.rdx, label %.lr.ph241.i.preheader286, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gr, 2147483640              ; 4 uses
  %i.gy = trunc nuw nsw i64 %n.vec to i32
  %i.gz = sub nsw i32 %.0189268.i, %i.gy
  %i.ha = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.hb = getelementptr i8, ptr %.0187270.i, i64 %i.ha
  %i.hc = getelementptr i8, ptr %.0186271.i, i64 %i.ha
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0187270.i, i64 %i.hd ; 4 uses
  %next.gep131 = getelementptr i8, ptr %.0186271.i, i64 %i.hd ; 3 uses
  %i.he = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !13, !alias.scope !124
  %wide.load132 = load <4 x i32>, ptr %i.he, align 4, !tbaa !13, !alias.scope !124
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %wide.load133 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !13, !alias.scope !125
  %wide.load134 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !13, !alias.scope !125
  %i.hh = add nsw <4 x i32> %wide.load133, %wide.load
  %i.hi = add nsw <4 x i32> %wide.load134, %wide.load132
  %i.hj = mul nsw <4 x i32> %i.hh, %broadcast.splat
  %i.hk = mul nsw <4 x i32> %i.hi, %broadcast.splat
  %i.hl = add nsw <4 x i32> %i.hj, %broadcast.splat128
  %i.hm = add nsw <4 x i32> %i.hk, %broadcast.splat128
  %i.hn = ashr <4 x i32> %i.hl, %broadcast.splat130
  %i.ho = ashr <4 x i32> %i.hm, %broadcast.splat130
  %i.hp = getelementptr i8, ptr %next.gep131, i64 16 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !13, !alias.scope !126, !noalias !127
  %wide.load136 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !13, !alias.scope !126, !noalias !127
  %i.hq = add nsw <4 x i32> %i.hn, %wide.load135
  %i.hr = add nsw <4 x i32> %i.ho, %wide.load136
  store <4 x i32> %i.hq, ptr %next.gep131, align 4, !tbaa !13, !alias.scope !126, !noalias !127
  store <4 x i32> %i.hr, ptr %i.hp, align 4, !tbaa !13, !alias.scope !126, !noalias !127
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gr
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph241.i.preheader286

.lr.ph241.i.preheader286:                         ; preds = %vector.memcheck, %.lr.ph241.i.preheader, %middle.block
  %.0185240.i.ph = phi i32 [ %.0189268.i, %vector.memcheck ], [ %.0189268.i, %.lr.ph241.i.preheader ], [ %i.gz, %middle.block ] ; 4 uses
  %.6239.i.ph = phi ptr [ %.0187270.i, %vector.memcheck ], [ %.0187270.i, %.lr.ph241.i.preheader ], [ %i.hb, %middle.block ] ; 3 uses
  %.6200238.i.ph = phi ptr [ %.0186271.i, %vector.memcheck ], [ %.0186271.i, %.lr.ph241.i.preheader ], [ %i.hc, %middle.block ] ; 4 uses
  %xtraiter294 = and i32 %.0185240.i.ph, 1
  %lcmp.mod295.not = icmp eq i32 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %.lr.ph241.i.prol.loopexit, label %.lr.ph241.i.prol

.lr.ph241.i.prol:                                 ; preds = %.lr.ph241.i.preheader286
  %i.ht = load i32, ptr %.6239.i.ph, align 4, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %.6239.i.ph, i64 4 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !13
  %i.hw = add nsw i32 %i.hv, %i.ht
  %i.hx = mul nsw i32 %i.hw, %i.bn
  %i.hy = add nsw i32 %i.hx, %i.bq
  %i.hz = ashr i32 %i.hy, %i.df
  %i.ia = load i32, ptr %.6200238.i.ph, align 4, !tbaa !13
  %i.ib = add nsw i32 %i.hz, %i.ia
  store i32 %i.ib, ptr %.6200238.i.ph, align 4, !tbaa !13
  %i.ic = add nsw i32 %.0185240.i.ph, -1
  %i.id = getelementptr inbounds nuw i8, ptr %.6200238.i.ph, i64 4
  br label %.lr.ph241.i.prol.loopexit

.lr.ph241.i.prol.loopexit:                        ; preds = %.lr.ph241.i.prol, %.lr.ph241.i.preheader286
  %.0185240.i.unr = phi i32 [ %.0185240.i.ph, %.lr.ph241.i.preheader286 ], [ %i.ic, %.lr.ph241.i.prol ]
  %.6239.i.unr = phi ptr [ %.6239.i.ph, %.lr.ph241.i.preheader286 ], [ %i.hu, %.lr.ph241.i.prol ]
  %.6200238.i.unr = phi ptr [ %.6200238.i.ph, %.lr.ph241.i.preheader286 ], [ %i.id, %.lr.ph241.i.prol ]
  %i.ie = icmp eq i32 %.0185240.i.ph, 1
  br i1 %i.ie, label %.loopexit.i, label %.lr.ph241.i

.lr.ph241.i:                                      ; preds = %.lr.ph241.i.prol.loopexit, %.lr.ph241.i
  %.0185240.i = phi i32 [ %i.iy, %.lr.ph241.i ], [ %.0185240.i.unr, %.lr.ph241.i.prol.loopexit ]
  %.6239.i = phi ptr [ %i.iq, %.lr.ph241.i ], [ %.6239.i.unr, %.lr.ph241.i.prol.loopexit ] ; 3 uses
  %.6200238.i = phi ptr [ %i.iz, %.lr.ph241.i ], [ %.6200238.i.unr, %.lr.ph241.i.prol.loopexit ] ; 4 uses
  %i.if = load i32, ptr %.6239.i, align 4, !tbaa !13
  %i.ig = getelementptr inbounds nuw i8, ptr %.6239.i, i64 4 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !13
  %i.ii = add nsw i32 %i.ih, %i.if
  %i.ij = mul nsw i32 %i.ii, %i.bn
  %i.ik = add nsw i32 %i.ij, %i.bq
  %i.il = ashr i32 %i.ik, %i.df
  %i.im = load i32, ptr %.6200238.i, align 4, !tbaa !13
  %i.in = add nsw i32 %i.il, %i.im
  store i32 %i.in, ptr %.6200238.i, align 4, !tbaa !13
  %i.io = getelementptr inbounds nuw i8, ptr %.6200238.i, i64 4 ; 2 uses
  %i.ip = load i32, ptr %i.ig, align 4, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %.6239.i, i64 8 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !13
  %i.is = add nsw i32 %i.ir, %i.ip
  %i.it = mul nsw i32 %i.is, %i.bn
  %i.iu = add nsw i32 %i.it, %i.bq
  %i.iv = ashr i32 %i.iu, %i.df
  %i.iw = load i32, ptr %i.io, align 4, !tbaa !13
  %i.ix = add nsw i32 %i.iv, %i.iw
  store i32 %i.ix, ptr %i.io, align 4, !tbaa !13
  %i.iy = add nsw i32 %.0185240.i, -2             ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.6200238.i, i64 8
  %.not212.i.1 = icmp eq i32 %i.iy, 0
  br i1 %.not212.i.1, label %.loopexit.i, label %.lr.ph241.i, !llvm.loop !95

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0184236.i = phi i32 [ %i.jt, %.lr.ph.i ], [ %.0184236.i.unr, %.lr.ph.i.prol.loopexit ]
  %.7235.i = phi ptr [ %i.ju, %.lr.ph.i ], [ %.7235.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.7201234.i = phi ptr [ %i.jv, %.lr.ph.i ], [ %.7201234.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ja = getelementptr inbounds i8, ptr %.7235.i, i64 -4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !13
  %i.jc = load i32, ptr %.7235.i, align 4, !tbaa !13
  %i.jd = add nsw i32 %i.jc, %i.jb
  %i.je = mul nsw i32 %i.jd, %i.bn
  %i.jf = add nsw i32 %i.je, %i.bq
  %i.jg = ashr i32 %i.jf, %i.df
  %i.jh = load i32, ptr %.7201234.i, align 4, !tbaa !13
  %i.ji = add nsw i32 %i.jg, %i.jh
  store i32 %i.ji, ptr %.7201234.i, align 4, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.7235.i, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.7201234.i, i64 4 ; 2 uses
  %i.jl = load i32, ptr %.7235.i, align 4, !tbaa !13
  %i.jm = load i32, ptr %i.jj, align 4, !tbaa !13
  %i.jn = add nsw i32 %i.jm, %i.jl
  %i.jo = mul nsw i32 %i.jn, %i.bn
  %i.jp = add nsw i32 %i.jo, %i.bq
  %i.jq = ashr i32 %i.jp, %i.df
  %i.jr = load i32, ptr %i.jk, align 4, !tbaa !13
  %i.js = add nsw i32 %i.jq, %i.jr
  store i32 %i.js, ptr %i.jk, align 4, !tbaa !13
  %i.jt = add nsw i32 %.0184236.i, -2             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.7235.i, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %.7201234.i, i64 8
  %.not211.i.1 = icmp eq i32 %i.jt, 0
  br i1 %.not211.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !96

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph241.i.prol.loopexit, %.lr.ph241.i, %.lr.ph245.i, %.lr.ph249.i, %.lr.ph253.i, %.lr.ph257.i, %bb.g, %bb.f, %middle.block181, %middle.block, %.preheader228.i, %.preheader230.i, %.preheader224.i, %.preheader226.i, %.preheader220.i, %.preheader222.i, %.preheader.i, %.preheader218.i
  %i.jw = xor i1 %.0.in272.i, true
  %.not.wide.i = icmp eq i64 %i.bi, 0
  br i1 %.not.wide.i, label %_ZN4ojph5localL19sse2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.d, !llvm.loop !97

.loopexit232.sink.split.i:                        ; preds = %bb.b
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !11
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !13
  %.sink299.i = select i1 %5, ptr %1, ptr %2
  %not.300.i = xor i1 %5, true
  %i.ka = zext i1 %not.300.i to i32
  %.sink.i = shl i32 %i.jz, %i.ka
  %i.kb = getelementptr inbounds nuw i8, ptr %.sink299.i, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !11
  store i32 %.sink.i, ptr %i.kc, align 4, !tbaa !13
  br label %_ZN4ojph5localL19sse2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.m:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.n, label %.loopexit244.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.kd = icmp sgt i32 %4, 0
  br i1 %i.kd, label %.lr.ph.i.preheader.i28, label %_ZN4ojph5localL19sse2_deinterleave64EPdS1_S1_i.exit.i

.lr.ph.i.preheader.i28:                           ; preds = %bb.n
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !11 ; 2 uses
  %.pn217.i = select i1 %5, ptr %2, ptr %1
  %.in216.i = getelementptr inbounds nuw i8, ptr %.pn217.i, i64 16
  %i.kg = load ptr, ptr %.in216.i, align 8, !tbaa !11 ; 2 uses
  %..i29 = select i1 %5, ptr %1, ptr %2
  %.in.i30 = getelementptr inbounds nuw i8, ptr %..i29, i64 16
  %i.kh = load ptr, ptr %.in.i30, align 8, !tbaa !11 ; 2 uses
  %i.ki = add nsw i32 %4, -1
  %i.kj = lshr i32 %i.ki, 2
  %i.kk = add nuw nsw i32 %i.kj, 1
  %xtraiter297 = and i32 %i.kk, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i32 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.lr.ph.i.i31.prol.loopexit, label %.lr.ph.i.i31.prol

.lr.ph.i.i31.prol:                                ; preds = %.lr.ph.i.preheader.i28, %.lr.ph.i.i31.prol
  %.020.i.i32.prol = phi ptr [ %i.kq, %.lr.ph.i.i31.prol ], [ %i.kh, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01419.i.i33.prol = phi ptr [ %i.kr, %.lr.ph.i.i31.prol ], [ %i.kg, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01518.i.i34.prol = phi ptr [ %i.kp, %.lr.ph.i.i31.prol ], [ %i.kf, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01617.i.i35.prol = phi i32 [ %i.ko, %.lr.ph.i.i31.prol ], [ %4, %.lr.ph.i.preheader.i28 ]
  %prol.iter299 = phi i32 [ %prol.iter299.next, %.lr.ph.i.i31.prol ], [ 0, %.lr.ph.i.preheader.i28 ]
  %i.kl = load <4 x double>, ptr %.01518.i.i34.prol, align 16, !tbaa !11 ; 2 uses
  %i.km = shufflevector <4 x double> %i.kl, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.kn = shufflevector <4 x double> %i.kl, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.km, ptr %.020.i.i32.prol, align 16, !tbaa !11
  store <2 x double> %i.kn, ptr %.01419.i.i33.prol, align 16, !tbaa !11
  %i.ko = add nsw i32 %.01617.i.i35.prol, -4      ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ojph5local17sse2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.mw = insertelement <2 x i64> poison, i64 %i.mv, i64 0
  %i.mx = shufflevector <2 x i64> %i.mw, <2 x i64> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.my = load i64, ptr %.0194282.i, align 8, !tbaa !16
  %i.mz = getelementptr inbounds i8, ptr %.0194282.i, i64 -8
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !16
  %i.na = add nsw i32 %.0195281.i, -1
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.0194282.i, i64 %i.nb
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !16
  %i.ne = zext nneg i32 %.0195281.i to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.0194282.i, i64 %i.ne
  store i64 %i.nd, ptr %i.nf, align 8, !tbaa !16
  %i.ng = icmp eq i16 %i.ml, 1
  br i1 %i.ng, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not291.i = icmp eq i32 %.0196280.i, 0         ; 2 uses
  br i1 %.0.in284.i, label %.preheader.i27, label %.preheader230.i25

.preheader230.i25:                                ; preds = %bb.p
  br i1 %.not291.i, label %.loopexit.i19, label %.lr.ph273.i26

.preheader.i27:                                   ; preds = %bb.p
  br i1 %.not291.i, label %.loopexit.i19, label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %.preheader.i27, %.lr.ph277.i
  %.0199276.i = phi ptr [ %i.ns, %.lr.ph277.i ], [ %.0194282.i, %.preheader.i27 ] ; 3 uses
  %.0201275.i = phi ptr [ %i.nt, %.lr.ph277.i ], [ %.0193283.i, %.preheader.i27 ] ; 3 uses
  %.0209274.i = phi i32 [ %i.nr, %.lr.ph277.i ], [ %.0196280.i, %.preheader.i27 ] ; 2 uses
  %i.nh = load <2 x i64>, ptr %.0199276.i, align 16, !tbaa !11
  %i.ni = getelementptr inbounds nuw i8, ptr %.0199276.i, i64 8
  %i.nj = load <2 x i64>, ptr %i.ni, align 8, !tbaa !11
  %i.nk = load <2 x i64>, ptr %.0201275.i, align 16, !tbaa !11
  %i.nl = add <2 x i64> %i.nh, %i.mr
  %i.nm = add <2 x i64> %i.nl, %i.nj
  %i.nn = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.nm, i32 range(i32 0, 256) %i.ms)
  %i.no = xor <2 x i64> %i.nn, %i.mx
  %i.np = sub <2 x i64> %i.nk, %i.mx
  %i.nq = add <2 x i64> %i.np, %i.no
  store <2 x i64> %i.nq, ptr %.0201275.i, align 16, !tbaa !11
  %i.nr = add nsw i32 %.0209274.i, -2
  %i.ns = getelementptr inbounds nuw i8, ptr %.0199276.i, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %.0201275.i, i64 16
  %i.nu = icmp sgt i32 %.0209274.i, 2
  br i1 %i.nu, label %.lr.ph277.i, label %.loopexit.i19, !llvm.loop !100

.lr.ph273.i26:                                    ; preds = %.preheader230.i25, %.lr.ph273.i26
  %.1200272.i = phi ptr [ %i.og, %.lr.ph273.i26 ], [ %.0194282.i, %.preheader230.i25 ] ; 3 uses
  %.1202271.i = phi ptr [ %i.oh, %.lr.ph273.i26 ], [ %.0193283.i, %.preheader230.i25 ] ; 3 uses
  %.1210270.i = phi i32 [ %i.of, %.lr.ph273.i26 ], [ %.0196280.i, %.preheader230.i25 ] ; 2 uses
  %i.nv = load <2 x i64>, ptr %.1200272.i, align 16, !tbaa !11
  %i.nw = getelementptr inbounds i8, ptr %.1200272.i, i64 -8
  %i.nx = load <2 x i64>, ptr %i.nw, align 8, !tbaa !11
  %i.ny = load <2 x i64>, ptr %.1202271.i, align 16, !tbaa !11
  %i.nz = add <2 x i64> %i.nv, %i.mr
  %i.oa = add <2 x i64> %i.nz, %i.nx
  %i.ob = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.oa, i32 range(i32 0, 256) %i.ms)
  %i.oc = xor <2 x i64> %i.ob, %i.mx
  %i.od = sub <2 x i64> %i.ny, %i.mx
  %i.oe = add <2 x i64> %i.od, %i.oc
  store <2 x i64> %i.oe, ptr %.1202271.i, align 16, !tbaa !11
  %i.of = add nsw i32 %.1210270.i, -2
  %i.og = getelementptr inbounds nuw i8, ptr %.1200272.i, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %.1202271.i, i64 16
  %i.oi = icmp sgt i32 %.1210270.i, 2
  br i1 %i.oi, label %.lr.ph273.i26, label %.loopexit.i19, !llvm.loop !101

bb.q:                                             ; preds = %bb.o
  %i.oj = icmp eq i16 %i.ml, -1                   ; 2 uses
  %i.ok = icmp eq i16 %i.mn, 1
  %or.cond.i15 = and i1 %i.oj, %i.ok
  %i.ol = icmp eq i8 %i.mo, 1
  %or.cond4.i16 = select i1 %or.cond.i15, i1 %i.ol, i1 false
  %.not289.i = icmp eq i32 %.0196280.i, 0         ; 6 uses
  br i1 %or.cond4.i16, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.0.in284.i, label %.preheader232.i, label %.preheader234.i

.preheader234.i:                                  ; preds = %bb.r
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph265.i24

.preheader232.i:                                  ; preds = %bb.r
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph269.i

.lr.ph269.i:                                      ; preds = %.preheader232.i, %.lr.ph269.i
  %.2268.i = phi ptr [ %i.ov, %.lr.ph269.i ], [ %.0194282.i, %.preheader232.i ] ; 3 uses
  %.2203267.i = phi ptr [ %i.ow, %.lr.ph269.i ], [ %.0193283.i, %.preheader232.i ] ; 3 uses
  %.0211266.i = phi i32 [ %i.ou, %.lr.ph269.i ], [ %.0196280.i, %.preheader232.i ] ; 2 uses
  %i.om = load <2 x i64>, ptr %.2268.i, align 16, !tbaa !11
  %i.on = getelementptr inbounds nuw i8, ptr %.2268.i, i64 8
  %i.oo = load <2 x i64>, ptr %i.on, align 8, !tbaa !11
  %i.op = load <2 x i64>, ptr %.2203267.i, align 16, !tbaa !11
  %i.oq = add <2 x i64> %i.oo, %i.om
  %i.or = lshr <2 x i64> %i.oq, splat (i64 1)
  %i.os = xor <2 x i64> %i.or, %i.mx
  %.neg220.i = add <2 x i64> %i.op, %i.mx
  %i.ot = sub <2 x i64> %.neg220.i, %i.os
  store <2 x i64> %i.ot, ptr %.2203267.i, align 16, !tbaa !11
  %i.ou = add nsw i32 %.0211266.i, -2
  %i.ov = getelementptr inbounds nuw i8, ptr %.2268.i, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %.2203267.i, i64 16
  %i.ox = icmp sgt i32 %.0211266.i, 2
  br i1 %i.ox, label %.lr.ph269.i, label %.loopexit.i19, !llvm.loop !102

.lr.ph265.i24:                                    ; preds = %.preheader234.i, %.lr.ph265.i24
  %.3264.i = phi ptr [ %i.ph, %.lr.ph265.i24 ], [ %.0194282.i, %.preheader234.i ] ; 3 uses
  %.3204263.i = phi ptr [ %i.pi, %.lr.ph265.i24 ], [ %.0193283.i, %.preheader234.i ] ; 3 uses
  %.1212262.i = phi i32 [ %i.pg, %.lr.ph265.i24 ], [ %.0196280.i, %.preheader234.i ] ; 2 uses
  %i.oy = load <2 x i64>, ptr %.3264.i, align 16, !tbaa !11
  %i.oz = getelementptr inbounds i8, ptr %.3264.i, i64 -8
  %i.pa = load <2 x i64>, ptr %i.oz, align 8, !tbaa !11
  %i.pb = load <2 x i64>, ptr %.3204263.i, align 16, !tbaa !11
  %i.pc = add <2 x i64> %i.pa, %i.oy
  %i.pd = lshr <2 x i64> %i.pc, splat (i64 1)
  %i.pe = xor <2 x i64> %i.pd, %i.mx
  %.neg.i = add <2 x i64> %i.pb, %i.mx
  %i.pf = sub <2 x i64> %.neg.i, %i.pe
  store <2 x i64> %i.pf, ptr %.3204263.i, align 16, !tbaa !11
  %i.pg = add nsw i32 %.1212262.i, -2
  %i.ph = getelementptr inbounds nuw i8, ptr %.3264.i, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.3204263.i, i64 16
  %i.pj = icmp sgt i32 %.1212262.i, 2
  br i1 %i.pj, label %.lr.ph265.i24, label %.loopexit.i19, !llvm.loop !103

bb.s:                                             ; preds = %bb.q
  br i1 %i.oj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %.0.in284.i, label %.preheader236.i, label %.preheader238.i

.preheader238.i:                                  ; preds = %bb.t
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph257.i22

.preheader236.i:                                  ; preds = %bb.t
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph261.i23

.lr.ph261.i23:                                    ; preds = %.preheader236.i, %.lr.ph261.i23
  %.0198260.i = phi i32 [ %i.pu, %.lr.ph261.i23 ], [ %.0196280.i, %.preheader236.i ] ; 2 uses
  %.4259.i = phi ptr [ %i.pv, %.lr.ph261.i23 ], [ %.0194282.i, %.preheader236.i ] ; 3 uses
  %.4205258.i = phi ptr [ %i.pw, %.lr.ph261.i23 ], [ %.0193283.i, %.preheader236.i ] ; 3 uses
  %i.pk = load <2 x i64>, ptr %.4259.i, align 16, !tbaa !11
  %i.pl = getelementptr inbounds nuw i8, ptr %.4259.i, i64 8
  %i.pm = load <2 x i64>, ptr %i.pl, align 8, !tbaa !11
  %i.pn = load <2 x i64>, ptr %.4205258.i, align 16, !tbaa !11
  %i.po = add <2 x i64> %i.pk, %i.pm
  %i.pp = sub <2 x i64> %i.mr, %i.po
  %i.pq = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.pp, i32 range(i32 0, 256) %i.ms)
  %i.pr = xor <2 x i64> %i.pq, %i.mx
  %i.ps = sub <2 x i64> %i.pn, %i.mx
  %i.pt = add <2 x i64> %i.ps, %i.pr
  store <2 x i64> %i.pt, ptr %.4205258.i, align 16, !tbaa !11
  %i.pu = add nsw i32 %.0198260.i, -2
  %i.pv = getelementptr inbounds nuw i8, ptr %.4259.i, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %.4205258.i, i64 16
  %i.px = icmp sgt i32 %.0198260.i, 2
  br i1 %i.px, label %.lr.ph261.i23, label %.loopexit.i19, !llvm.loop !104

.lr.ph257.i22:                                    ; preds = %.preheader238.i, %.lr.ph257.i22
  %.1256.i = phi i32 [ %i.qi, %.lr.ph257.i22 ], [ %.0196280.i, %.preheader238.i ] ; 2 uses
  %.5255.i = phi ptr [ %i.qj, %.lr.ph257.i22 ], [ %.0194282.i, %.preheader238.i ] ; 3 uses
  %.5206254.i = phi ptr [ %i.qk, %.lr.ph257.i22 ], [ %.0193283.i, %.preheader238.i ] ; 3 uses
  %i.py = load <2 x i64>, ptr %.5255.i, align 16, !tbaa !11
  %i.pz = getelementptr inbounds i8, ptr %.5255.i, i64 -8
  %i.qa = load <2 x i64>, ptr %i.pz, align 8, !tbaa !11
  %i.qb = load <2 x i64>, ptr %.5206254.i, align 16, !tbaa !11
  %i.qc = add <2 x i64> %i.py, %i.qa
  %i.qd = sub <2 x i64> %i.mr, %i.qc
  %i.qe = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.qd, i32 range(i32 0, 256) %i.ms)
  %i.qf = xor <2 x i64> %i.qe, %i.mx
  %i.qg = sub <2 x i64> %i.qb, %i.mx
  %i.qh = add <2 x i64> %i.qg, %i.qf
  store <2 x i64> %i.qh, ptr %.5206254.i, align 16, !tbaa !11
  %i.qi = add nsw i32 %.1256.i, -2
  %i.qj = getelementptr inbounds nuw i8, ptr %.5255.i, i64 16
  %i.qk = getelementptr inbounds nuw i8, ptr %.5206254.i, i64 16
  %i.ql = icmp sgt i32 %.1256.i, 2
  br i1 %i.ql, label %.lr.ph257.i22, label %.loopexit.i19, !llvm.loop !105

bb.u:                                             ; preds = %bb.s
  br i1 %.0.in284.i, label %.preheader240.i, label %.preheader242.i

.preheader242.i:                                  ; preds = %bb.u
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader242.i
  %i.qm = sext i16 %i.ml to i64                   ; 4 uses
  %i.qn = zext nneg i8 %i.mo to i64               ; 4 uses
  %i.qo = zext nneg i32 %.0196280.i to i64        ; 2 uses
  %min.iters.check244 = icmp samesign ult i32 %.0196280.i, 6
  br i1 %min.iters.check244, label %scalar.ph243.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i17
  %i.qp = add nsw i32 %.0196280.i, -1
  %i.qq = zext i32 %i.qp to i64
  %i.qr = shl nuw nsw i64 %i.qq, 3                ; 2 uses
  %i.qs = add nuw nsw i64 %i.qr, 8                ; 2 uses
  %i.qt = getelementptr i8, ptr %.0193283.i, i64 %i.qs ; 2 uses
  %i.qu = getelementptr i8, ptr %.0194282.i, i64 -8
  %i.qv = getelementptr i8, ptr %.0194282.i, i64 %i.qr
  %10 = getelementptr i8, ptr %.0194282.i, i64 %i.qs
  %bound0246.a = icmp ult ptr %.0193283.i, %i.qv
  %bound1247 = icmp ult ptr %i.qu, %i.qt
  %found.conflict248 = and i1 %bound0246.a, %bound1247
  %bound0249 = icmp ult ptr %.0193283.i, %10
  %bound1250 = icmp ult ptr %.0194282.i, %i.qt
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %found.conflict248, %found.conflict251
  br i1 %conflict.rdx252, label %scalar.ph243.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck245
  %n.vec254 = and i64 %i.qo, 2147483646           ; 4 uses
  %i.qw = trunc nuw nsw i64 %n.vec254 to i32
  %i.qx = sub nsw i32 %.0196280.i, %i.qw
  %i.qy = shl nuw nsw i64 %n.vec254, 3            ; 2 uses
  %i.qz = getelementptr i8, ptr %.0194282.i, i64 %i.qy
  %i.ra = getelementptr i8, ptr %.0193283.i, i64 %i.qy
  %broadcast.splatinsert255 = insertelement <2 x i64> poison, i64 %i.qm, i64 0
  %broadcast.splat256 = shufflevector <2 x i64> %broadcast.splatinsert255, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert257 = insertelement <2 x i64> poison, i64 %i.qn, i64 0
  %broadcast.splat258 = shufflevector <2 x i64> %broadcast.splatinsert257, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert259 = insertelement <2 x i64> poison, i64 %i.mp, i64 0
  %broadcast.splat260 = shufflevector <2 x i64> %broadcast.splatinsert259, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph253
  %index262 = phi i64 [ 0, %vector.ph253 ], [ %index.next268, %vector.body261 ] ; 2 uses
  %i.rb = shl i64 %index262, 3                    ; 2 uses
  %next.gep263 = getelementptr i8, ptr %.0194282.i, i64 %i.rb ; 2 uses
  %next.gep264 = getelementptr i8, ptr %.0193283.i, i64 %i.rb ; 2 uses
  %i.rc = getelementptr inbounds i8, ptr %next.gep263, i64 -8
  %wide.load265 = load <2 x i64>, ptr %i.rc, align 8, !tbaa !16, !alias.scope !128
  %wide.load266 = load <2 x i64>, ptr %next.gep263, align 8, !tbaa !16, !alias.scope !129
  %i.rd = add nsw <2 x i64> %wide.load266, %wide.load265
  %i.re = mul nsw <2 x i64> %i.rd, %broadcast.splat256
  %i.rf = add nsw <2 x i64> %i.re, %broadcast.splat260
  %i.rg = ashr <2 x i64> %i.rf, %broadcast.splat258
  %wide.load267 = load <2 x i64>, ptr %next.gep264, align 8, !tbaa !16, !alias.scope !130, !noalias !131
  %i.rh = add nsw <2 x i64> %i.rg, %wide.load267
  store <2 x i64> %i.rh, ptr %next.gep264, align 8, !tbaa !16, !alias.scope !130, !noalias !131
  %index.next268 = add nuw i64 %index262, 2       ; 2 uses
  %i.ri = icmp eq i64 %index.next268, %n.vec254
  br i1 %i.ri, label %middle.block269, label %vector.body261, !llvm.loop !110

middle.block269:                                  ; preds = %vector.body261
  %cmp.n270 = icmp eq i64 %n.vec254, %i.qo
  br i1 %cmp.n270, label %.loopexit.i19, label %scalar.ph243.preheader

scalar.ph243.preheader:                           ; preds = %vector.memcheck245, %.lr.ph.i17, %middle.block269
  %.0191248.i18.ph = phi i32 [ %.0196280.i, %vector.memcheck245 ], [ %.0196280.i, %.lr.ph.i17 ], [ %i.qx, %middle.block269 ] ; 4 uses
  %.7247.i.ph = phi ptr [ %.0194282.i, %vector.memcheck245 ], [ %.0194282.i, %.lr.ph.i17 ], [ %i.qz, %middle.block269 ] ; 4 uses
  %.7208246.i.ph = phi ptr [ %.0193283.i, %vector.memcheck245 ], [ %.0193283.i, %.lr.ph.i17 ], [ %i.ra, %middle.block269 ] ; 4 uses
  %xtraiter300 = and i32 %.0191248.i18.ph, 1
  %lcmp.mod301.not = icmp eq i32 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %scalar.ph243.prol.loopexit, label %scalar.ph243.prol

scalar.ph243.prol:                                ; preds = %scalar.ph243.preheader
  %i.rj = getelementptr inbounds i8, ptr %.7247.i.ph, i64 -8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !16
  %i.rl = load i64, ptr %.7247.i.ph, align 8, !tbaa !16
  %i.rm = add nsw i64 %i.rl, %i.rk
  %i.rn = mul nsw i64 %i.rm, %i.qm
  %i.ro = add nsw i64 %i.rn, %i.mp
  %i.rp = ashr i64 %i.ro, %i.qn
  %i.rq = load i64, ptr %.7208246.i.ph, align 8, !tbaa !16
  %i.rr = add nsw i64 %i.rp, %i.rq
  store i64 %i.rr, ptr %.7208246.i.ph, align 8, !tbaa !16
  %i.rs = add nsw i32 %.0191248.i18.ph, -1
  %i.rt = getelementptr inbounds nuw i8, ptr %.7247.i.ph, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %.7208246.i.ph, i64 8
  br label %scalar.ph243.prol.loopexit

scalar.ph243.prol.loopexit:                       ; preds = %scalar.ph243.prol, %scalar.ph243.preheader
  %.0191248.i18.unr = phi i32 [ %.0191248.i18.ph, %scalar.ph243.preheader ], [ %i.rs, %scalar.ph243.prol ]
  %.7247.i.unr = phi ptr [ %.7247.i.ph, %scalar.ph243.preheader ], [ %i.rt, %scalar.ph243.prol ]
  %.7208246.i.unr = phi ptr [ %.7208246.i.ph, %scalar.ph243.preheader ], [ %i.ru, %scalar.ph243.prol ]
  %i.rv = icmp eq i32 %.0191248.i18.ph, 1
  br i1 %i.rv, label %.loopexit.i19, label %scalar.ph243

.preheader240.i:                                  ; preds = %bb.u
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph253.i21

.lr.ph253.i21:                                    ; preds = %.preheader240.i
  %i.rw = sext i16 %i.ml to i64                   ; 4 uses
  %i.rx = zext nneg i8 %i.mo to i64               ; 4 uses
  %i.ry = zext nneg i32 %.0196280.i to i64        ; 2 uses
  %min.iters.check200 = icmp samesign ult i32 %.0196280.i, 6
  br i1 %min.iters.check200, label %scalar.ph199.preheader, label %vector.memcheck201

vector.memcheck201:                               ; preds = %.lr.ph253.i21
  %i.rz = add nsw i32 %.0196280.i, -1
  %i.sa = zext i32 %i.rz to i64
  %i.sb = shl nuw nsw i64 %i.sa, 3                ; 2 uses
  %i.sc = add nuw nsw i64 %i.sb, 8                ; 2 uses
  %i.sd = getelementptr i8, ptr %.0193283.i, i64 %i.sc ; 2 uses
  %i.se = getelementptr i8, ptr %.0194282.i, i64 %i.sc
  %11 = getelementptr i8, ptr %.0194282.i, i64 8
  %12 = getelementptr i8, ptr %.0194282.i, i64 %i.sb
  %13 = getelementptr i8, ptr %12, i64 16
  %bound0202 = icmp ult ptr %.0193283.i, %i.se
  %bound1203 = icmp ult ptr %.0194282.i, %i.sd
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult ptr %.0193283.i, %13
  %bound1206 = icmp ult ptr %11, %i.sd
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  br i1 %conflict.rdx208, label %scalar.ph199.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck201
  %n.vec210 = and i64 %i.ry, 2147483646           ; 4 uses
  %i.sf = trunc nuw nsw i64 %n.vec210 to i32
  %i.sg = sub nsw i32 %.0196280.i, %i.sf
  %i.sh = shl nuw nsw i64 %n.vec210, 3            ; 2 uses
  %i.si = getelementptr i8, ptr %.0194282.i, i64 %i.sh
  %i.sj = getelementptr i8, ptr %.0193283.i, i64 %i.sh
  %broadcast.splatinsert211 = insertelement <2 x i64> poison, i64 %i.rw, i64 0
  %broadcast.splat212 = shufflevector <2 x i64> %broadcast.splatinsert211, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <2 x i64> poison, i64 %i.rx, i64 0
  %broadcast.splat214 = shufflevector <2 x i64> %broadcast.splatinsert213, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <2 x i64> poison, i64 %i.mp, i64 0
  %broadcast.splat216 = shufflevector <2 x i64> %broadcast.splatinsert215, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph209
  %index218 = phi i64 [ 0, %vector.ph209 ], [ %index.next224, %vector.body217 ] ; 2 uses
  %i.sk = shl i64 %index218, 3                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %.0194282.i, i64 %i.sk ; 2 uses
  %next.gep220 = getelementptr i8, ptr %.0193283.i, i64 %i.sk ; 2 uses
  %wide.load221 = load <2 x i64>, ptr %next.gep219, align 8, !tbaa !16, !alias.scope !132
  %i.sl = getelementptr inbounds nuw i8, ptr %next.gep219, i64 8
  %wide.load222 = load <2 x i64>, ptr %i.sl, align 8, !tbaa !16, !alias.scope !133
  %i.sm = add nsw <2 x i64> %wide.load222, %wide.load221
  %i.sn = mul nsw <2 x i64> %i.sm, %broadcast.splat212
  %i.so = add nsw <2 x i64> %i.sn, %broadcast.splat216
  %i.sp = ashr <2 x i64> %i.so, %broadcast.splat214
  %wide.load223 = load <2 x i64>, ptr %next.gep220, align 8, !tbaa !16, !alias.scope !134, !noalias !135
  %i.sq = add nsw <2 x i64> %i.sp, %wide.load223
  store <2 x i64> %i.sq, ptr %next.gep220, align 8, !tbaa !16, !alias.scope !134, !noalias !135
  %index.next224 = add nuw i64 %index218, 2       ; 2 uses
  %i.sr = icmp eq i64 %index.next224, %n.vec210
  br i1 %i.sr, label %middle.block225, label %vector.body217, !llvm.loop !115

middle.block225:                                  ; preds = %vector.body217
  %cmp.n226 = icmp eq i64 %n.vec210, %i.ry
  br i1 %cmp.n226, label %.loopexit.i19, label %scalar.ph199.preheader

scalar.ph199.preheader:                           ; preds = %vector.memcheck201, %.lr.ph253.i21, %middle.block225
  %.0192252.i.ph = phi i32 [ %.0196280.i, %vector.memcheck201 ], [ %.0196280.i, %.lr.ph253.i21 ], [ %i.sg, %middle.block225 ] ; 4 uses
  %.6251.i.ph = phi ptr [ %.0194282.i, %vector.memcheck201 ], [ %.0194282.i, %.lr.ph253.i21 ], [ %i.si, %middle.block225 ] ; 3 uses
  %.6207250.i.ph = phi ptr [ %.0193283.i, %vector.memcheck201 ], [ %.0193283.i, %.lr.ph253.i21 ], [ %i.sj, %middle.block225 ] ; 4 uses
  %xtraiter303 = and i32 %.0192252.i.ph, 1
  %lcmp.mod304.not = icmp eq i32 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %scalar.ph199.prol.loopexit, label %scalar.ph199.prol

scalar.ph199.prol:                                ; preds = %scalar.ph199.preheader
  %i.ss = load i64, ptr %.6251.i.ph, align 8, !tbaa !16
  %i.st = getelementptr inbounds nuw i8, ptr %.6251.i.ph, i64 8 ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !16
  %i.sv = add nsw i64 %i.su, %i.ss
  %i.sw = mul nsw i64 %i.sv, %i.rw
  %i.sx = add nsw i64 %i.sw, %i.mp
  %i.sy = ashr i64 %i.sx, %i.rx
  %i.sz = load i64, ptr %.6207250.i.ph, align 8, !tbaa !16
  %i.ta = add nsw i64 %i.sy, %i.sz
  store i64 %i.ta, ptr %.6207250.i.ph, align 8, !tbaa !16
  %i.tb = add nsw i32 %.0192252.i.ph, -1
  %i.tc = getelementptr inbounds nuw i8, ptr %.6207250.i.ph, i64 8
  br label %scalar.ph199.prol.loopexit

scalar.ph199.prol.loopexit:                       ; preds = %scalar.ph199.prol, %scalar.ph199.preheader
  %.0192252.i.unr = phi i32 [ %.0192252.i.ph, %scalar.ph199.preheader ], [ %i.tb, %scalar.ph199.prol ]
  %.6251.i.unr = phi ptr [ %.6251.i.ph, %scalar.ph199.preheader ], [ %i.st, %scalar.ph199.prol ]
  %.6207250.i.unr = phi ptr [ %.6207250.i.ph, %scalar.ph199.preheader ], [ %i.tc, %scalar.ph199.prol ]
  %i.td = icmp eq i32 %.0192252.i.ph, 1
  br i1 %i.td, label %.loopexit.i19, label %scalar.ph199

scalar.ph199:                                     ; preds = %scalar.ph199.prol.loopexit, %scalar.ph199
  %.0192252.i = phi i32 [ %i.tx, %scalar.ph199 ], [ %.0192252.i.unr, %scalar.ph199.prol.loopexit ]
  %.6251.i = phi ptr [ %i.tp, %scalar.ph199 ], [ %.6251.i.unr, %scalar.ph199.prol.loopexit ] ; 3 uses
  %.6207250.i = phi ptr [ %i.ty, %scalar.ph199 ], [ %.6207250.i.unr, %scalar.ph199.prol.loopexit ] ; 4 uses
  %i.te = load i64, ptr %.6251.i, align 8, !tbaa !16
  %i.tf = getelementptr inbounds nuw i8, ptr %.6251.i, i64 8 ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !16
  %i.th = add nsw i64 %i.tg, %i.te
  %i.ti = mul nsw i64 %i.th, %i.rw
  %i.tj = add nsw i64 %i.ti, %i.mp
  %i.tk = ashr i64 %i.tj, %i.rx
  %i.tl = load i64, ptr %.6207250.i, align 8, !tbaa !16
  %i.tm = add nsw i64 %i.tk, %i.tl
  store i64 %i.tm, ptr %.6207250.i, align 8, !tbaa !16
  %i.tn = getelementptr inbounds nuw i8, ptr %.6207250.i, i64 8 ; 2 uses
  %i.to = load i64, ptr %i.tf, align 8, !tbaa !16
  %i.tp = getelementptr inbounds nuw i8, ptr %.6251.i, i64 16 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !16
  %i.tr = add nsw i64 %i.tq, %i.to
  %i.ts = mul nsw i64 %i.tr, %i.rw
  %i.tt = add nsw i64 %i.ts, %i.mp
  %i.tu = ashr i64 %i.tt, %i.rx
  %i.tv = load i64, ptr %i.tn, align 8, !tbaa !16
  %i.tw = add nsw i64 %i.tu, %i.tv
  store i64 %i.tw, ptr %i.tn, align 8, !tbaa !16
  %i.tx = add nsw i32 %.0192252.i, -2             ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.6207250.i, i64 16
  %.not219.i.1 = icmp eq i32 %i.tx, 0
  br i1 %.not219.i.1, label %.loopexit.i19, label %scalar.ph199, !llvm.loop !116

scalar.ph243:                                     ; preds = %scalar.ph243.prol.loopexit, %scalar.ph243
  %.0191248.i18 = phi i32 [ %i.us, %scalar.ph243 ], [ %.0191248.i18.unr, %scalar.ph243.prol.loopexit ]
  %.7247.i = phi ptr [ %i.ut, %scalar.ph243 ], [ %.7247.i.unr, %scalar.ph243.prol.loopexit ] ; 5 uses
  %.7208246.i = phi ptr [ %i.uu, %scalar.ph243 ], [ %.7208246.i.unr, %scalar.ph243.prol.loopexit ] ; 4 uses
  %i.tz = getelementptr inbounds i8, ptr %.7247.i, i64 -8
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !16
  %i.ub = load i64, ptr %.7247.i, align 8, !tbaa !16
  %i.uc = add nsw i64 %i.ub, %i.ua
  %i.ud = mul nsw i64 %i.uc, %i.qm
  %i.ue = add nsw i64 %i.ud, %i.mp
  %i.uf = ashr i64 %i.ue, %i.qn
  %i.ug = load i64, ptr %.7208246.i, align 8, !tbaa !16
  %i.uh = add nsw i64 %i.uf, %i.ug
  store i64 %i.uh, ptr %.7208246.i, align 8, !tbaa !16
  %i.ui = getelementptr inbounds nuw i8, ptr %.7247.i, i64 8
  %i.uj = getelementptr inbounds nuw i8, ptr %.7208246.i, i64 8 ; 2 uses
  %i.uk = load i64, ptr %.7247.i, align 8, !tbaa !16
  %i.ul = load i64, ptr %i.ui, align 8, !tbaa !16
  %i.um = add nsw i64 %i.ul, %i.uk
  %i.un = mul nsw i64 %i.um, %i.qm
  %i.uo = add nsw i64 %i.un, %i.mp
  %i.up = ashr i64 %i.uo, %i.qn
  %i.uq = load i64, ptr %i.uj, align 8, !tbaa !16
  %i.ur = add nsw i64 %i.up, %i.uq
  store i64 %i.ur, ptr %i.uj, align 8, !tbaa !16
  %i.us = add nsw i32 %.0191248.i18, -2           ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.7247.i, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %.7208246.i, i64 16
  %.not218.i.1 = icmp eq i32 %i.us, 0
  br i1 %.not218.i.1, label %.loopexit.i19, label %scalar.ph243, !llvm.loop !117

.loopexit.i19:                                    ; preds = %scalar.ph243.prol.loopexit, %scalar.ph243, %scalar.ph199.prol.loopexit, %scalar.ph199, %.lr.ph257.i22, %.lr.ph261.i23, %.lr.ph265.i24, %.lr.ph269.i, %.lr.ph273.i26, %.lr.ph277.i, %middle.block269, %middle.block225, %.preheader240.i, %.preheader242.i, %.preheader236.i, %.preheader238.i, %.preheader232.i, %.preheader234.i, %.preheader.i27, %.preheader230.i25
  %i.uv = xor i1 %.0.in284.i, true
  %.not.wide.i20 = icmp eq i64 %i.mh, 0
  br i1 %.not.wide.i20, label %_ZN4ojph5localL19sse2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.o, !llvm.loop !118

.loopexit244.sink.split.i:                        ; preds = %bb.m
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !11
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !16
  %.sink311.i = select i1 %5, ptr %1, ptr %2
  %not.312.i = xor i1 %5, true
  %i.uz = zext i1 %not.312.i to i64
  %.sink.i12 = shl i64 %i.uy, %i.uz
  %i.va = getelementptr inbounds nuw i8, ptr %.sink311.i, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !11
  store i64 %.sink.i12, ptr %i.vb, align 8, !tbaa !16
  br label %_ZN4ojph5localL19sse2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

_ZN4ojph5localL19sse2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.loopexit.i, %.loopexit.i19, %.loopexit244.sink.split.i, %_ZN4ojph5localL19sse2_deinterleave64EPdS1_S1_i.exit.i, %.loopexit232.sink.split.i, %_ZN4ojph5localL19sse2_deinterleave32EPfS1_S1_i.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local19sse2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23    ; 2 uses
  %.not271 = icmp eq i8 %i.e, 0
  br i1 %.not271, label %._crit_edge, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.b
  %not. = xor i1 %5, true
  %i.f = zext i1 %not. to i32
  %i.g = add i32 %4, %i.f
  %i.h = lshr i32 %i.g, 1
  %i.i = zext i1 %5 to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i8 %i.e to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph.i.preheader, label %_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %.in210 = select i1 %5, ptr %i.b, ptr %i.c
  %i.p = load ptr, ptr %.in210, align 8, !tbaa !11 ; 3 uses
  %. = select i1 %5, ptr %i.c, ptr %i.b
  %i.q = load ptr, ptr %., align 8, !tbaa !11     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 4 uses
  %i.t = add nuw i32 %4, 15
  %i.u = and i32 %i.t, 8
  %lcmp.mod384.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod384.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit
end_hunk_3
begin_hunk_4_@_ZN4ojph5local19sse2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !11 ; 3 uses
  %i.bb = sext i16 %i.ba to i32                   ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !11 ; 2 uses
  %i.be = sext i16 %i.bd to i32                   ; 9 uses
  %i.bf = load i8, ptr %i.ay, align 4, !tbaa !11  ; 4 uses
  %i.bg = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bi = load i32, ptr %.0185268, align 4, !tbaa !13
  %i.bj = getelementptr inbounds i8, ptr %.0185268, i64 -4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !13
  %i.bk = add nsw i32 %.0190265, -1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0185268, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = zext nneg i32 %.0190265 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0185268, i64 %i.bo
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !13
  %i.bq = icmp eq i16 %i.ba, 1
  br i1 %i.bq, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not277 = icmp eq i32 %.0189266, 0             ; 2 uses
  br i1 %.0.in269, label %.preheader, label %.preheader217

.preheader217:                                    ; preds = %bb.d
  br i1 %.not277, label %.loopexit, label %.lr.ph259

.lr.ph259:                                        ; preds = %.preheader217
  %i.br = zext i8 %i.bf to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not277, label %.loopexit, label %.lr.ph263

.lr.ph263:                                        ; preds = %.preheader
  %i.bs = zext i8 %i.bf to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph263, %bb.e
  %.0192262 = phi ptr [ %.0185268, %.lr.ph263 ], [ %i.cc, %bb.e ] ; 3 uses
  %.0193261 = phi ptr [ %.0186267, %.lr.ph263 ], [ %i.cd, %bb.e ] ; 3 uses
  %.0203260 = phi i32 [ %.0189266, %.lr.ph263 ], [ %i.cb, %bb.e ] ; 2 uses
  %i.bt = load <4 x i32>, ptr %.0192262, align 16, !tbaa !11
  %i.bu = getelementptr inbounds i8, ptr %.0192262, i64 -4
  %i.bv = load <4 x i32>, ptr %i.bu, align 4, !tbaa !11
  %i.bw = load <4 x i32>, ptr %.0193261, align 16, !tbaa !11
  %i.bx = add <4 x i32> %i.bt, %i.bh
  %i.by = add <4 x i32> %i.bx, %i.bv
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.by, i32 range(i32 0, 256) %i.bs)
  %i.ca = sub <4 x i32> %i.bw, %i.bz
  store <4 x i32> %i.ca, ptr %.0193261, align 16, !tbaa !11
  %i.cb = add nsw i32 %.0203260, -4
  %i.cc = getelementptr inbounds nuw i8, ptr %.0192262, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0193261, i64 16
  %i.ce = icmp sgt i32 %.0203260, 4
  br i1 %i.ce, label %bb.e, label %.loopexit, !llvm.loop !137

bb.f:                                             ; preds = %.lr.ph259, %bb.f
  %.1258 = phi ptr [ %.0185268, %.lr.ph259 ], [ %i.co, %bb.f ] ; 3 uses
  %.1194257 = phi ptr [ %.0186267, %.lr.ph259 ], [ %i.cp, %bb.f ] ; 3 uses
  %.1204256 = phi i32 [ %.0189266, %.lr.ph259 ], [ %i.cn, %bb.f ] ; 2 uses
  %i.cf = load <4 x i32>, ptr %.1258, align 16, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %.1258, i64 4
  %i.ch = load <4 x i32>, ptr %i.cg, align 4, !tbaa !11
  %i.ci = load <4 x i32>, ptr %.1194257, align 16, !tbaa !11
  %i.cj = add <4 x i32> %i.cf, %i.bh
  %i.ck = add <4 x i32> %i.cj, %i.ch
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.ck, i32 range(i32 0, 256) %i.br)
  %i.cm = sub <4 x i32> %i.ci, %i.cl
  store <4 x i32> %i.cm, ptr %.1194257, align 16, !tbaa !11
  %i.cn = add nsw i32 %.1204256, -4
  %i.co = getelementptr inbounds nuw i8, ptr %.1258, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.1194257, i64 16
  %i.cq = icmp sgt i32 %.1204256, 4
  br i1 %i.cq, label %bb.f, label %.loopexit, !llvm.loop !138

bb.g:                                             ; preds = %bb.c
  %i.cr = icmp eq i16 %i.ba, -1                   ; 2 uses
  %i.cs = icmp eq i16 %i.bd, 1
  %or.cond = and i1 %i.cr, %i.cs
  %i.ct = zext i8 %i.bf to i32                    ; 10 uses
  %i.cu = icmp eq i8 %i.bf, 1
  %or.cond4 = select i1 %or.cond, i1 %i.cu, i1 false
  %.not275 = icmp eq i32 %.0189266, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in269, label %.preheader219, label %.preheader221

.preheader221:                                    ; preds = %bb.h
  br i1 %.not275, label %.loopexit, label %.lr.ph251

.preheader219:                                    ; preds = %bb.h
  br i1 %.not275, label %.loopexit, label %.lr.ph255

.lr.ph255:                                        ; preds = %.preheader219, %.lr.ph255
  %.2254 = phi ptr [ %i.dd, %.lr.ph255 ], [ %.0185268, %.preheader219 ] ; 3 uses
  %.2195253 = phi ptr [ %i.de, %.lr.ph255 ], [ %.0186267, %.preheader219 ] ; 3 uses
  %.0205252 = phi i32 [ %i.dc, %.lr.ph255 ], [ %.0189266, %.preheader219 ] ; 2 uses
  %i.cv = load <4 x i32>, ptr %.2254, align 16, !tbaa !11
  %i.cw = getelementptr inbounds i8, ptr %.2254, i64 -4
  %i.cx = load <4 x i32>, ptr %i.cw, align 4, !tbaa !11
  %i.cy = load <4 x i32>, ptr %.2195253, align 16, !tbaa !11
  %i.cz = add <4 x i32> %i.cx, %i.cv
  %i.da = ashr <4 x i32> %i.cz, splat (i32 1)
  %i.db = add <4 x i32> %i.da, %i.cy
  store <4 x i32> %i.db, ptr %.2195253, align 16, !tbaa !11
  %i.dc = add nsw i32 %.0205252, -4
  %i.dd = getelementptr inbounds nuw i8, ptr %.2254, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.2195253, i64 16
  %i.df = icmp sgt i32 %.0205252, 4
  br i1 %i.df, label %.lr.ph255, label %.loopexit, !llvm.loop !139

.lr.ph251:                                        ; preds = %.preheader221, %.lr.ph251
  %.3250 = phi ptr [ %i.do, %.lr.ph251 ], [ %.0185268, %.preheader221 ] ; 3 uses
  %.3196249 = phi ptr [ %i.dp, %.lr.ph251 ], [ %.0186267, %.preheader221 ] ; 3 uses
  %.1206248 = phi i32 [ %i.dn, %.lr.ph251 ], [ %.0189266, %.preheader221 ] ; 2 uses
  %i.dg = load <4 x i32>, ptr %.3250, align 16, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.3250, i64 4
  %i.di = load <4 x i32>, ptr %i.dh, align 4, !tbaa !11
  %i.dj = load <4 x i32>, ptr %.3196249, align 16, !tbaa !11
  %i.dk = add <4 x i32> %i.di, %i.dg
  %i.dl = ashr <4 x i32> %i.dk, splat (i32 1)
  %i.dm = add <4 x i32> %i.dl, %i.dj
  store <4 x i32> %i.dm, ptr %.3196249, align 16, !tbaa !11
  %i.dn = add nsw i32 %.1206248, -4
  %i.do = getelementptr inbounds nuw i8, ptr %.3250, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.3196249, i64 16
  %i.dq = icmp sgt i32 %.1206248, 4
  br i1 %i.dq, label %.lr.ph251, label %.loopexit, !llvm.loop !140

bb.i:                                             ; preds = %bb.g
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in269, label %.preheader223, label %.preheader225

.preheader225:                                    ; preds = %bb.j
  br i1 %.not275, label %.loopexit, label %.lr.ph243

.preheader223:                                    ; preds = %bb.j
  br i1 %.not275, label %.loopexit, label %.lr.ph247

.lr.ph247:                                        ; preds = %.preheader223, %.lr.ph247
  %.4246 = phi ptr [ %i.ea, %.lr.ph247 ], [ %.0185268, %.preheader223 ] ; 3 uses
  %.4197245 = phi ptr [ %i.eb, %.lr.ph247 ], [ %.0186267, %.preheader223 ] ; 3 uses
  %.0201244 = phi i32 [ %i.dz, %.lr.ph247 ], [ %.0189266, %.preheader223 ] ; 2 uses
  %i.dr = load <4 x i32>, ptr %.4246, align 16, !tbaa !11
  %i.ds = getelementptr inbounds i8, ptr %.4246, i64 -4
  %i.dt = load <4 x i32>, ptr %i.ds, align 4, !tbaa !11
  %i.du = load <4 x i32>, ptr %.4197245, align 16, !tbaa !11
  %i.dv = add <4 x i32> %i.dr, %i.dt
  %i.dw = sub <4 x i32> %i.bh, %i.dv
  %i.dx = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.dw, i32 range(i32 0, 256) %i.ct)
  %i.dy = sub <4 x i32> %i.du, %i.dx
  store <4 x i32> %i.dy, ptr %.4197245, align 16, !tbaa !11
  %i.dz = add nsw i32 %.0201244, -4
  %i.ea = getelementptr inbounds nuw i8, ptr %.4246, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.4197245, i64 16
  %i.ec = icmp sgt i32 %.0201244, 4
  br i1 %i.ec, label %.lr.ph247, label %.loopexit, !llvm.loop !141

.lr.ph243:                                        ; preds = %.preheader225, %.lr.ph243
  %.5242 = phi ptr [ %i.em, %.lr.ph243 ], [ %.0185268, %.preheader225 ] ; 3 uses
  %.5198241 = phi ptr [ %i.en, %.lr.ph243 ], [ %.0186267, %.preheader225 ] ; 3 uses
  %.1202240 = phi i32 [ %i.el, %.lr.ph243 ], [ %.0189266, %.preheader225 ] ; 2 uses
  %i.ed = load <4 x i32>, ptr %.5242, align 16, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %.5242, i64 4
  %i.ef = load <4 x i32>, ptr %i.ee, align 4, !tbaa !11
  %i.eg = load <4 x i32>, ptr %.5198241, align 16, !tbaa !11
  %i.eh = add <4 x i32> %i.ed, %i.ef
  %i.ei = sub <4 x i32> %i.bh, %i.eh
  %i.ej = tail call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.ei, i32 range(i32 0, 256) %i.ct)
  %i.ek = sub <4 x i32> %i.eg, %i.ej
  store <4 x i32> %i.ek, ptr %.5198241, align 16, !tbaa !11
  %i.el = add nsw i32 %.1202240, -4
  %i.em = getelementptr inbounds nuw i8, ptr %.5242, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.5198241, i64 16
  %i.eo = icmp sgt i32 %.1202240, 4
  br i1 %i.eo, label %.lr.ph243, label %.loopexit, !llvm.loop !142

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in269, label %.preheader227, label %.preheader229

.preheader229:                                    ; preds = %bb.k
  br i1 %.not275, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader229
  %i.ep = zext nneg i32 %.0189266 to i64          ; 2 uses
  %min.iters.check339 = icmp samesign ult i32 %.0189266, 8
  br i1 %min.iters.check339, label %.lr.ph.preheader379, label %vector.memcheck340

vector.memcheck340:                               ; preds = %.lr.ph.preheader
  %i.eq = add nsw i32 %.0189266, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw nsw i64 %i.er, 2                ; 2 uses
  %i.et = add nuw nsw i64 %i.es, 4                ; 2 uses
  %i.eu = getelementptr i8, ptr %.0186267, i64 %i.et ; 2 uses
  %i.ev = getelementptr i8, ptr %.0185268, i64 %i.et
  %6 = getelementptr i8, ptr %.0185268, i64 4
  %7 = getelementptr i8, ptr %.0185268, i64 %i.es
  %8 = getelementptr i8, ptr %7, i64 8
  %bound0341 = icmp ult ptr %.0186267, %i.ev
  %bound1342 = icmp ult ptr %.0185268, %i.eu
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %.0186267, %8
  %bound1345 = icmp ult ptr %6, %i.eu
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  br i1 %conflict.rdx347, label %.lr.ph.preheader379, label %vector.ph348

vector.ph348:                                     ; preds = %vector.memcheck340
  %n.vec349 = and i64 %i.ep, 2147483640           ; 4 uses
  %i.ew = trunc nuw nsw i64 %n.vec349 to i32
  %i.ex = sub nsw i32 %.0189266, %i.ew
  %i.ey = shl nuw nsw i64 %n.vec349, 2            ; 2 uses
  %i.ez = getelementptr i8, ptr %.0185268, i64 %i.ey
  %i.fa = getelementptr i8, ptr %.0186267, i64 %i.ey
  %broadcast.splatinsert350 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat351 = shufflevector <4 x i32> %broadcast.splatinsert350, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert354 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat355 = shufflevector <4 x i32> %broadcast.splatinsert354, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph348
  %index357 = phi i64 [ 0, %vector.ph348 ], [ %index.next366, %vector.body356 ] ; 2 uses
  %i.fb = shl i64 %index357, 2                    ; 2 uses
  %next.gep358 = getelementptr i8, ptr %.0185268, i64 %i.fb ; 4 uses
  %next.gep359 = getelementptr i8, ptr %.0186267, i64 %i.fb ; 3 uses
  %i.fc = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load360 = load <4 x i32>, ptr %next.gep358, align 4, !tbaa !13, !alias.scope !156
  %wide.load361 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !13, !alias.scope !156
  %i.fd = getelementptr inbounds nuw i8, ptr %next.gep358, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %next.gep358, i64 20
  %wide.load362 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !13, !alias.scope !157
  %wide.load363 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !13, !alias.scope !157
  %i.ff = add nsw <4 x i32> %wide.load362, %wide.load360
  %i.fg = add nsw <4 x i32> %wide.load363, %wide.load361
  %i.fh = mul nsw <4 x i32> %i.ff, %broadcast.splat351
  %i.fi = mul nsw <4 x i32> %i.fg, %broadcast.splat351
  %i.fj = add nsw <4 x i32> %i.fh, %broadcast.splat353
  %i.fk = add nsw <4 x i32> %i.fi, %broadcast.splat353
  %i.fl = ashr <4 x i32> %i.fj, %broadcast.splat355
  %i.fm = ashr <4 x i32> %i.fk, %broadcast.splat355
  %i.fn = getelementptr i8, ptr %next.gep359, i64 16 ; 2 uses
  %wide.load364 = load <4 x i32>, ptr %next.gep359, align 4, !tbaa !13, !alias.scope !158, !noalias !159
  %wide.load365 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !13, !alias.scope !158, !noalias !159
  %i.fo = sub nsw <4 x i32> %wide.load364, %i.fl
  %i.fp = sub nsw <4 x i32> %wide.load365, %i.fm
  store <4 x i32> %i.fo, ptr %next.gep359, align 4, !tbaa !13, !alias.scope !158, !noalias !159
  store <4 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !13, !alias.scope !158, !noalias !159
  %index.next366 = add nuw i64 %index357, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next366, %n.vec349
  br i1 %i.fq, label %middle.block367, label %vector.body356, !llvm.loop !147

middle.block367:                                  ; preds = %vector.body356
  %cmp.n368 = icmp eq i64 %n.vec349, %i.ep
  br i1 %cmp.n368, label %.loopexit, label %.lr.ph.preheader379

.lr.ph.preheader379:                              ; preds = %vector.memcheck340, %.lr.ph.preheader, %middle.block367
  %.0187234.ph = phi i32 [ %.0189266, %vector.memcheck340 ], [ %.0189266, %.lr.ph.preheader ], [ %i.ex, %middle.block367 ] ; 4 uses
  %.7233.ph = phi ptr [ %.0185268, %vector.memcheck340 ], [ %.0185268, %.lr.ph.preheader ], [ %i.ez, %middle.block367 ] ; 3 uses
  %.7200232.ph = phi ptr [ %.0186267, %vector.memcheck340 ], [ %.0186267, %.lr.ph.preheader ], [ %i.fa, %middle.block367 ] ; 4 uses
  %xtraiter = and i32 %.0187234.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader379
  %i.fr = load i32, ptr %.7233.ph, align 4, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.7233.ph, i64 4 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !13
  %i.fu = add nsw i32 %i.ft, %i.fr
  %i.fv = mul nsw i32 %i.fu, %i.bb
  %i.fw = add nsw i32 %i.fv, %i.be
  %i.fx = ashr i32 %i.fw, %i.ct
  %i.fy = load i32, ptr %.7200232.ph, align 4, !tbaa !13
  %i.fz = sub nsw i32 %i.fy, %i.fx
  store i32 %i.fz, ptr %.7200232.ph, align 4, !tbaa !13
  %i.ga = add nsw i32 %.0187234.ph, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %.7200232.ph, i64 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader379
  %.0187234.unr = phi i32 [ %.0187234.ph, %.lr.ph.preheader379 ], [ %i.ga, %.lr.ph.prol ]
  %.7233.unr = phi ptr [ %.7233.ph, %.lr.ph.preheader379 ], [ %i.fs, %.lr.ph.prol ]
  %.7200232.unr = phi ptr [ %.7200232.ph, %.lr.ph.preheader379 ], [ %i.gb, %.lr.ph.prol ]
  %i.gc = icmp eq i32 %.0187234.ph, 1
  br i1 %i.gc, label %.loopexit, label %.lr.ph

.preheader227:                                    ; preds = %bb.k
  br i1 %.not275, label %.loopexit, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %.preheader227
  %i.gd = zext nneg i32 %.0189266 to i64          ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.0189266, 8
  br i1 %min.iters.check, label %.lr.ph239.preheader377, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph239.preheader
  %i.ge = add nsw i32 %.0189266, -1
  %i.gf = zext i32 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 2                ; 2 uses
  %i.gh = add nuw nsw i64 %i.gg, 4                ; 2 uses
  %i.gi = getelementptr i8, ptr %.0186267, i64 %i.gh ; 2 uses
  %i.gj = getelementptr i8, ptr %.0185268, i64 -4
  %i.gk = getelementptr i8, ptr %.0185268, i64 %i.gg
  %9 = getelementptr i8, ptr %.0185268, i64 %i.gh
  %bound0.a = icmp ult ptr %.0186267, %i.gk
  %bound1 = icmp ult ptr %i.gj, %i.gi
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0310 = icmp ult ptr %.0186267, %9
  %bound1311 = icmp ult ptr %.0185268, %i.gi
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx = or i1 %found.conflict, %found.conflict312
  br i1 %conflict.rdx, label %.lr.ph239.preheader377, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gd, 2147483640              ; 4 uses
  %i.gl = trunc nuw nsw i64 %n.vec to i32
  %i.gm = sub nsw i32 %.0189266, %i.gl
  %i.gn = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.go = getelementptr i8, ptr %.0185268, i64 %i.gn
  %i.gp = getelementptr i8, ptr %.0186267, i64 %i.gn
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert313 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat314 = shufflevector <4 x i32> %broadcast.splatinsert313, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert315 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat316 = shufflevector <4 x i32> %broadcast.splatinsert315, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0185268, i64 %i.gq ; 4 uses
  %next.gep317 = getelementptr i8, ptr %.0186267, i64 %i.gq ; 3 uses
  %i.gr = getelementptr inbounds i8, ptr %next.gep, i64 -4
  %i.gs = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !tbaa !13, !alias.scope !160
  %wide.load318 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !13, !alias.scope !160
  %i.gt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load319 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !13, !alias.scope !161
  %wide.load320 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !13, !alias.scope !161
  %i.gu = add nsw <4 x i32> %wide.load319, %wide.load
  %i.gv = add nsw <4 x i32> %wide.load320, %wide.load318
  %i.gw = mul nsw <4 x i32> %i.gu, %broadcast.splat
  %i.gx = mul nsw <4 x i32> %i.gv, %broadcast.splat
  %i.gy = add nsw <4 x i32> %i.gw, %broadcast.splat314
  %i.gz = add nsw <4 x i32> %i.gx, %broadcast.splat314
  %i.ha = ashr <4 x i32> %i.gy, %broadcast.splat316
  %i.hb = ashr <4 x i32> %i.gz, %broadcast.splat316
  %i.hc = getelementptr i8, ptr %next.gep317, i64 16 ; 2 uses
  %wide.load321 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !13, !alias.scope !162, !noalias !163
  %wide.load322 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !13, !alias.scope !162, !noalias !163
  %i.hd = sub nsw <4 x i32> %wide.load321, %i.ha
  %i.he = sub nsw <4 x i32> %wide.load322, %i.hb
  store <4 x i32> %i.hd, ptr %next.gep317, align 4, !tbaa !13, !alias.scope !162, !noalias !163
  store <4 x i32> %i.he, ptr %i.hc, align 4, !tbaa !13, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gd
  br i1 %cmp.n, label %.loopexit, label %.lr.ph239.preheader377

.lr.ph239.preheader377:                           ; preds = %vector.memcheck, %.lr.ph239.preheader, %middle.block
  %.0188238.ph = phi i32 [ %.0189266, %vector.memcheck ], [ %.0189266, %.lr.ph239.preheader ], [ %i.gm, %middle.block ] ; 4 uses
  %.6237.ph = phi ptr [ %.0185268, %vector.memcheck ], [ %.0185268, %.lr.ph239.preheader ], [ %i.go, %middle.block ] ; 4 uses
  %.6199236.ph = phi ptr [ %.0186267, %vector.memcheck ], [ %.0186267, %.lr.ph239.preheader ], [ %i.gp, %middle.block ] ; 4 uses
  %xtraiter381 = and i32 %.0188238.ph, 1
  %lcmp.mod382.not = icmp eq i32 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader377
  %i.hg = getelementptr inbounds i8, ptr %.6237.ph, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !13
  %i.hi = load i32, ptr %.6237.ph, align 4, !tbaa !13
  %i.hj = add nsw i32 %i.hi, %i.hh
  %i.hk = mul nsw i32 %i.hj, %i.bb
  %i.hl = add nsw i32 %i.hk, %i.be
  %i.hm = ashr i32 %i.hl, %i.ct
  %i.hn = load i32, ptr %.6199236.ph, align 4, !tbaa !13
  %i.ho = sub nsw i32 %i.hn, %i.hm
  store i32 %i.ho, ptr %.6199236.ph, align 4, !tbaa !13
  %i.hp = add nsw i32 %.0188238.ph, -1
  %i.hq = getelementptr inbounds nuw i8, ptr %.6237.ph, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %.6199236.ph, i64 4
  br label %.lr.ph239.prol.loopexit

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader377
  %.0188238.unr = phi i32 [ %.0188238.ph, %.lr.ph239.preheader377 ], [ %i.hp, %.lr.ph239.prol ]
  %.6237.unr = phi ptr [ %.6237.ph, %.lr.ph239.preheader377 ], [ %i.hq, %.lr.ph239.prol ]
  %.6199236.unr = phi ptr [ %.6199236.ph, %.lr.ph239.preheader377 ], [ %i.hr, %.lr.ph239.prol ]
  %i.hs = icmp eq i32 %.0188238.ph, 1
  br i1 %i.hs, label %.loopexit, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %.0188238 = phi i32 [ %i.im, %.lr.ph239 ], [ %.0188238.unr, %.lr.ph239.prol.loopexit ]
  %.6237 = phi ptr [ %i.in, %.lr.ph239 ], [ %.6237.unr, %.lr.ph239.prol.loopexit ] ; 5 uses
  %.6199236 = phi ptr [ %i.io, %.lr.ph239 ], [ %.6199236.unr, %.lr.ph239.prol.loopexit ] ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %.6237, i64 -4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !13
  %i.hv = load i32, ptr %.6237, align 4, !tbaa !13
  %i.hw = add nsw i32 %i.hv, %i.hu
  %i.hx = mul nsw i32 %i.hw, %i.bb
  %i.hy = add nsw i32 %i.hx, %i.be
  %i.hz = ashr i32 %i.hy, %i.ct
  %i.ia = load i32, ptr %.6199236, align 4, !tbaa !13
  %i.ib = sub nsw i32 %i.ia, %i.hz
  store i32 %i.ib, ptr %.6199236, align 4, !tbaa !13
  %i.ic = getelementptr inbounds nuw i8, ptr %.6237, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %.6199236, i64 4 ; 2 uses
  %i.ie = load i32, ptr %.6237, align 4, !tbaa !13
  %i.if = load i32, ptr %i.ic, align 4, !tbaa !13
  %i.ig = add nsw i32 %i.if, %i.ie
  %i.ih = mul nsw i32 %i.ig, %i.bb
  %i.ii = add nsw i32 %i.ih, %i.be
  %i.ij = ashr i32 %i.ii, %i.ct
  %i.ik = load i32, ptr %i.id, align 4, !tbaa !13
  %i.il = sub nsw i32 %i.ik, %i.ij
  store i32 %i.il, ptr %i.id, align 4, !tbaa !13
  %i.im = add nsw i32 %.0188238, -2               ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.6237, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %.6199236, i64 8
  %.not211.1 = icmp eq i32 %i.im, 0
  br i1 %.not211.1, label %.loopexit, label %.lr.ph239, !llvm.loop !153

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0187234 = phi i32 [ %i.ji, %.lr.ph ], [ %.0187234.unr, %.lr.ph.prol.loopexit ]
  %.7233 = phi ptr [ %i.ja, %.lr.ph ], [ %.7233.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.7200232 = phi ptr [ %i.jj, %.lr.ph ], [ %.7200232.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ip = load i32, ptr %.7233, align 4, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %.7233, i64 4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !13
  %i.is = add nsw i32 %i.ir, %i.ip
  %i.it = mul nsw i32 %i.is, %i.bb
  %i.iu = add nsw i32 %i.it, %i.be
  %i.iv = ashr i32 %i.iu, %i.ct
  %i.iw = load i32, ptr %.7200232, align 4, !tbaa !13
  %i.ix = sub nsw i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %.7200232, align 4, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %.7200232, i64 4 ; 2 uses
  %i.iz = load i32, ptr %i.iq, align 4, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %.7233, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !13
  %i.jc = add nsw i32 %i.jb, %i.iz
  %i.jd = mul nsw i32 %i.jc, %i.bb
  %i.je = add nsw i32 %i.jd, %i.be
  %i.jf = ashr i32 %i.je, %i.ct
  %i.jg = load i32, ptr %i.iy, align 4, !tbaa !13
  %i.jh = sub nsw i32 %i.jg, %i.jf
  store i32 %i.jh, ptr %i.iy, align 4, !tbaa !13
  %i.ji = add nsw i32 %.0187234, -2               ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.7200232, i64 8
  %.not.1 = icmp eq i32 %i.ji, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !154

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph239.prol.loopexit, %.lr.ph239, %.lr.ph243, %.lr.ph247, %.lr.ph251, %.lr.ph255, %bb.f, %bb.e, %middle.block367, %middle.block, %.preheader229, %.preheader227, %.preheader225, %.preheader223, %.preheader221, %.preheader219, %.preheader217, %.preheader
  %i.jk = xor i1 %.0.in269, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !155

bb.l:                                             ; preds = %bb.a
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !11
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !13
  br label %_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit.sink.split

bb.n:                                             ; preds = %bb.l
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !11
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !13
  %i.jr = ashr i32 %i.jq, 1
  br label %_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit.sink.split

_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sink = phi i32 [ %i.jn, %bb.m ], [ %i.jr, %bb.n ]
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !11
  store i32 %.sink, ptr %i.jt, align 4, !tbaa !13
  br label %_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit

_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN4ojph5localL17sse2_interleave32EPfS1_S1_i.exit.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local19sse2_rev_horz_syn64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23    ; 2 uses
  %.not287 = icmp eq i8 %i.e, 0
  br i1 %.not287, label %._crit_edge, label %.lr.ph286

.lr.ph286:                                        ; preds = %bb.b
  %not. = xor i1 %5, true
  %i.f = zext i1 %not. to i32
  %i.g = add i32 %4, %i.f
  %i.h = lshr i32 %i.g, 1
end_hunk_4
begin_hunk_5_@_ZN4ojph5local19sse2_rev_horz_syn64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %i.bm = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.bn = load i64, ptr %.0192284, align 8, !tbaa !16
  %i.bo = getelementptr inbounds i8, ptr %.0192284, i64 -8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !16
  %i.bp = add nsw i32 %.0197281, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0192284, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bt = zext nneg i32 %.0197281 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.0192284, i64 %i.bt
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !16
  %i.bv = icmp eq i16 %i.ba, 1
  br i1 %i.bv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not293 = icmp eq i32 %.0196282, 0             ; 2 uses
  br i1 %.0.in285, label %.preheader, label %.preheader233

.preheader233:                                    ; preds = %bb.d
  br i1 %.not293, label %.loopexit, label %.lr.ph275

.preheader:                                       ; preds = %bb.d
  br i1 %.not293, label %.loopexit, label %.lr.ph279

.lr.ph279:                                        ; preds = %.preheader, %.lr.ph279
  %.0199278 = phi ptr [ %i.cg, %.lr.ph279 ], [ %.0192284, %.preheader ] ; 3 uses
  %.0202277 = phi ptr [ %i.ch, %.lr.ph279 ], [ %.0193283, %.preheader ] ; 3 uses
  %.0210276 = phi i32 [ %i.cf, %.lr.ph279 ], [ %.0196282, %.preheader ] ; 2 uses
  %i.bw = load <2 x i64>, ptr %.0199278, align 16, !tbaa !11
  %i.bx = getelementptr inbounds i8, ptr %.0199278, i64 -8
  %i.by = load <2 x i64>, ptr %i.bx, align 8, !tbaa !11
  %i.bz = load <2 x i64>, ptr %.0202277, align 16, !tbaa !11
  %i.ca = add <2 x i64> %i.bw, %i.bg
  %i.cb = add <2 x i64> %i.ca, %i.by
  %i.cc = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.cb, i32 range(i32 0, 256) %i.bh)
  %i.cd = xor <2 x i64> %i.cc, %i.bm
  %.neg221 = add <2 x i64> %i.bz, %i.bm
  %i.ce = sub <2 x i64> %.neg221, %i.cd
  store <2 x i64> %i.ce, ptr %.0202277, align 16, !tbaa !11
  %i.cf = add nsw i32 %.0210276, -2
  %i.cg = getelementptr inbounds nuw i8, ptr %.0199278, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0202277, i64 16
  %i.ci = icmp sgt i32 %.0210276, 2
  br i1 %i.ci, label %.lr.ph279, label %.loopexit, !llvm.loop !165

.lr.ph275:                                        ; preds = %.preheader233, %.lr.ph275
  %.1274 = phi ptr [ %i.ct, %.lr.ph275 ], [ %.0192284, %.preheader233 ] ; 3 uses
  %.1203273 = phi ptr [ %i.cu, %.lr.ph275 ], [ %.0193283, %.preheader233 ] ; 3 uses
  %.1211272 = phi i32 [ %i.cs, %.lr.ph275 ], [ %.0196282, %.preheader233 ] ; 2 uses
  %i.cj = load <2 x i64>, ptr %.1274, align 16, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %.1274, i64 8
  %i.cl = load <2 x i64>, ptr %i.ck, align 8, !tbaa !11
  %i.cm = load <2 x i64>, ptr %.1203273, align 16, !tbaa !11
  %i.cn = add <2 x i64> %i.cj, %i.bg
  %i.co = add <2 x i64> %i.cn, %i.cl
  %i.cp = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.co, i32 range(i32 0, 256) %i.bh)
  %i.cq = xor <2 x i64> %i.cp, %i.bm
  %.neg220 = add <2 x i64> %i.cm, %i.bm
  %i.cr = sub <2 x i64> %.neg220, %i.cq
  store <2 x i64> %i.cr, ptr %.1203273, align 16, !tbaa !11
  %i.cs = add nsw i32 %.1211272, -2
  %i.ct = getelementptr inbounds nuw i8, ptr %.1274, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.1203273, i64 16
  %i.cv = icmp sgt i32 %.1211272, 2
  br i1 %i.cv, label %.lr.ph275, label %.loopexit, !llvm.loop !166

bb.e:                                             ; preds = %bb.c
  %i.cw = icmp eq i16 %i.ba, -1                   ; 2 uses
  %i.cx = icmp eq i16 %i.bc, 1
  %or.cond = and i1 %i.cw, %i.cx
  %i.cy = icmp eq i8 %i.bd, 1
  %or.cond4 = select i1 %or.cond, i1 %i.cy, i1 false
  %.not291 = icmp eq i32 %.0196282, 0             ; 6 uses
  br i1 %or.cond4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.0.in285, label %.preheader235, label %.preheader237

.preheader237:                                    ; preds = %bb.f
  br i1 %.not291, label %.loopexit, label %.lr.ph267

.preheader235:                                    ; preds = %bb.f
  br i1 %.not291, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader235, %.lr.ph271
  %.2270 = phi ptr [ %i.dj, %.lr.ph271 ], [ %.0192284, %.preheader235 ] ; 3 uses
  %.2204269 = phi ptr [ %i.dk, %.lr.ph271 ], [ %.0193283, %.preheader235 ] ; 3 uses
  %.0212268 = phi i32 [ %i.di, %.lr.ph271 ], [ %.0196282, %.preheader235 ] ; 2 uses
  %i.cz = load <2 x i64>, ptr %.2270, align 16, !tbaa !11
  %i.da = getelementptr inbounds i8, ptr %.2270, i64 -8
  %i.db = load <2 x i64>, ptr %i.da, align 8, !tbaa !11
  %i.dc = load <2 x i64>, ptr %.2204269, align 16, !tbaa !11
  %i.dd = add <2 x i64> %i.db, %i.cz
  %i.de = lshr <2 x i64> %i.dd, splat (i64 1)
  %i.df = xor <2 x i64> %i.de, %i.bm
  %i.dg = sub <2 x i64> %i.dc, %i.bm
  %i.dh = add <2 x i64> %i.dg, %i.df
  store <2 x i64> %i.dh, ptr %.2204269, align 16, !tbaa !11
  %i.di = add nsw i32 %.0212268, -2
  %i.dj = getelementptr inbounds nuw i8, ptr %.2270, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.2204269, i64 16
  %i.dl = icmp sgt i32 %.0212268, 2
  br i1 %i.dl, label %.lr.ph271, label %.loopexit, !llvm.loop !167

.lr.ph267:                                        ; preds = %.preheader237, %.lr.ph267
  %.3266 = phi ptr [ %i.dw, %.lr.ph267 ], [ %.0192284, %.preheader237 ] ; 3 uses
  %.3205265 = phi ptr [ %i.dx, %.lr.ph267 ], [ %.0193283, %.preheader237 ] ; 3 uses
  %.1213264 = phi i32 [ %i.dv, %.lr.ph267 ], [ %.0196282, %.preheader237 ] ; 2 uses
  %i.dm = load <2 x i64>, ptr %.3266, align 16, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.3266, i64 8
  %i.do = load <2 x i64>, ptr %i.dn, align 8, !tbaa !11
  %i.dp = load <2 x i64>, ptr %.3205265, align 16, !tbaa !11
  %i.dq = add <2 x i64> %i.do, %i.dm
  %i.dr = lshr <2 x i64> %i.dq, splat (i64 1)
  %i.ds = xor <2 x i64> %i.dr, %i.bm
  %i.dt = sub <2 x i64> %i.dp, %i.bm
  %i.du = add <2 x i64> %i.dt, %i.ds
  store <2 x i64> %i.du, ptr %.3205265, align 16, !tbaa !11
  %i.dv = add nsw i32 %.1213264, -2
  %i.dw = getelementptr inbounds nuw i8, ptr %.3266, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.3205265, i64 16
  %i.dy = icmp sgt i32 %.1213264, 2
  br i1 %i.dy, label %.lr.ph267, label %.loopexit, !llvm.loop !168

bb.g:                                             ; preds = %bb.e
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in285, label %.preheader239, label %.preheader241

.preheader241:                                    ; preds = %bb.h
  br i1 %.not291, label %.loopexit, label %.lr.ph259

.preheader239:                                    ; preds = %bb.h
  br i1 %.not291, label %.loopexit, label %.lr.ph263

.lr.ph263:                                        ; preds = %.preheader239, %.lr.ph263
  %.4262 = phi ptr [ %i.ej, %.lr.ph263 ], [ %.0192284, %.preheader239 ] ; 3 uses
  %.0200261 = phi i32 [ %i.ei, %.lr.ph263 ], [ %.0196282, %.preheader239 ] ; 2 uses
  %.4206260 = phi ptr [ %i.ek, %.lr.ph263 ], [ %.0193283, %.preheader239 ] ; 3 uses
  %i.dz = load <2 x i64>, ptr %.4262, align 16, !tbaa !11
  %i.ea = getelementptr inbounds i8, ptr %.4262, i64 -8
  %i.eb = load <2 x i64>, ptr %i.ea, align 8, !tbaa !11
  %i.ec = load <2 x i64>, ptr %.4206260, align 16, !tbaa !11
  %i.ed = add <2 x i64> %i.dz, %i.eb
  %i.ee = sub <2 x i64> %i.bg, %i.ed
  %i.ef = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.ee, i32 range(i32 0, 256) %i.bh)
  %i.eg = xor <2 x i64> %i.ef, %i.bm
  %.neg219 = add <2 x i64> %i.ec, %i.bm
  %i.eh = sub <2 x i64> %.neg219, %i.eg
  store <2 x i64> %i.eh, ptr %.4206260, align 16, !tbaa !11
  %i.ei = add nsw i32 %.0200261, -2
  %i.ej = getelementptr inbounds nuw i8, ptr %.4262, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.4206260, i64 16
  %i.el = icmp sgt i32 %.0200261, 2
  br i1 %i.el, label %.lr.ph263, label %.loopexit, !llvm.loop !169

.lr.ph259:                                        ; preds = %.preheader241, %.lr.ph259
  %.5258 = phi ptr [ %i.ew, %.lr.ph259 ], [ %.0192284, %.preheader241 ] ; 3 uses
  %.1201257 = phi i32 [ %i.ev, %.lr.ph259 ], [ %.0196282, %.preheader241 ] ; 2 uses
  %.5207256 = phi ptr [ %i.ex, %.lr.ph259 ], [ %.0193283, %.preheader241 ] ; 3 uses
  %i.em = load <2 x i64>, ptr %.5258, align 16, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.5258, i64 8
  %i.eo = load <2 x i64>, ptr %i.en, align 8, !tbaa !11
  %i.ep = load <2 x i64>, ptr %.5207256, align 16, !tbaa !11
  %i.eq = add <2 x i64> %i.em, %i.eo
  %i.er = sub <2 x i64> %i.bg, %i.eq
  %i.es = tail call noundef <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %i.er, i32 range(i32 0, 256) %i.bh)
  %i.et = xor <2 x i64> %i.es, %i.bm
  %.neg = add <2 x i64> %i.ep, %i.bm
  %i.eu = sub <2 x i64> %.neg, %i.et
  store <2 x i64> %i.eu, ptr %.5207256, align 16, !tbaa !11
  %i.ev = add nsw i32 %.1201257, -2
  %i.ew = getelementptr inbounds nuw i8, ptr %.5258, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %.5207256, i64 16
  %i.ey = icmp sgt i32 %.1201257, 2
  br i1 %i.ey, label %.lr.ph259, label %.loopexit, !llvm.loop !170

bb.i:                                             ; preds = %bb.g
  br i1 %.0.in285, label %.preheader243, label %.preheader245

.preheader245:                                    ; preds = %bb.i
  br i1 %.not291, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader245
  %i.ez = sext i16 %i.ba to i64                   ; 4 uses
  %i.fa = zext nneg i8 %i.bd to i64               ; 4 uses
  %i.fb = zext nneg i32 %.0196282 to i64          ; 2 uses
  %min.iters.check352 = icmp samesign ult i32 %.0196282, 6
  br i1 %min.iters.check352, label %scalar.ph351.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %.lr.ph
  %i.fc = add nsw i32 %.0196282, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 3                ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 8                ; 2 uses
  %i.fg = getelementptr i8, ptr %.0193283, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %.0192284, i64 %i.ff
  %6 = getelementptr i8, ptr %.0192284, i64 8
  %7 = getelementptr i8, ptr %.0192284, i64 %i.fe
  %8 = getelementptr i8, ptr %7, i64 16
  %bound0354 = icmp ult ptr %.0193283, %i.fh
  %bound1355 = icmp ult ptr %.0192284, %i.fg
  %found.conflict356 = and i1 %bound0354, %bound1355
  %bound0357 = icmp ult ptr %.0193283, %8
  %bound1358 = icmp ult ptr %6, %i.fg
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx360 = or i1 %found.conflict356, %found.conflict359
  br i1 %conflict.rdx360, label %scalar.ph351.preheader, label %vector.ph361

vector.ph361:                                     ; preds = %vector.memcheck353
  %n.vec362 = and i64 %i.fb, 2147483646           ; 4 uses
  %i.fi = trunc nuw nsw i64 %n.vec362 to i32
  %i.fj = sub nsw i32 %.0196282, %i.fi
  %i.fk = shl nuw nsw i64 %n.vec362, 3            ; 2 uses
  %i.fl = getelementptr i8, ptr %.0192284, i64 %i.fk
  %i.fm = getelementptr i8, ptr %.0193283, i64 %i.fk
  %broadcast.splatinsert363 = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %broadcast.splat364 = shufflevector <2 x i64> %broadcast.splatinsert363, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <2 x i64> poison, i64 %i.fa, i64 0
  %broadcast.splat366 = shufflevector <2 x i64> %broadcast.splatinsert365, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %broadcast.splat368 = shufflevector <2 x i64> %broadcast.splatinsert367, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph361
  %index370 = phi i64 [ 0, %vector.ph361 ], [ %index.next376, %vector.body369 ] ; 2 uses
  %i.fn = shl i64 %index370, 3                    ; 2 uses
  %next.gep371 = getelementptr i8, ptr %.0192284, i64 %i.fn ; 2 uses
  %next.gep372 = getelementptr i8, ptr %.0193283, i64 %i.fn ; 2 uses
  %wide.load373 = load <2 x i64>, ptr %next.gep371, align 8, !tbaa !16, !alias.scope !184
  %i.fo = getelementptr inbounds nuw i8, ptr %next.gep371, i64 8
  %wide.load374 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !16, !alias.scope !185
  %i.fp = add nsw <2 x i64> %wide.load374, %wide.load373
  %i.fq = mul nsw <2 x i64> %i.fp, %broadcast.splat364
  %i.fr = add nsw <2 x i64> %i.fq, %broadcast.splat368
  %i.fs = ashr <2 x i64> %i.fr, %broadcast.splat366
  %wide.load375 = load <2 x i64>, ptr %next.gep372, align 8, !tbaa !16, !alias.scope !186, !noalias !187
  %i.ft = sub nsw <2 x i64> %wide.load375, %i.fs
  store <2 x i64> %i.ft, ptr %next.gep372, align 8, !tbaa !16, !alias.scope !186, !noalias !187
  %index.next376 = add nuw i64 %index370, 2       ; 2 uses
  %i.fu = icmp eq i64 %index.next376, %n.vec362
  br i1 %i.fu, label %middle.block377, label %vector.body369, !llvm.loop !175

middle.block377:                                  ; preds = %vector.body369
  %cmp.n378 = icmp eq i64 %n.vec362, %i.fb
  br i1 %cmp.n378, label %.loopexit, label %scalar.ph351.preheader

scalar.ph351.preheader:                           ; preds = %vector.memcheck353, %.lr.ph, %middle.block377
  %.0194250.ph = phi i32 [ %.0196282, %vector.memcheck353 ], [ %.0196282, %.lr.ph ], [ %i.fj, %middle.block377 ] ; 4 uses
  %.7249.ph = phi ptr [ %.0192284, %vector.memcheck353 ], [ %.0192284, %.lr.ph ], [ %i.fl, %middle.block377 ] ; 3 uses
  %.7209248.ph = phi ptr [ %.0193283, %vector.memcheck353 ], [ %.0193283, %.lr.ph ], [ %i.fm, %middle.block377 ] ; 4 uses
  %xtraiter = and i32 %.0194250.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph351.prol.loopexit, label %scalar.ph351.prol

scalar.ph351.prol:                                ; preds = %scalar.ph351.preheader
  %i.fv = load i64, ptr %.7249.ph, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %.7249.ph, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !16
  %i.fy = add nsw i64 %i.fx, %i.fv
  %i.fz = mul nsw i64 %i.fy, %i.ez
  %i.ga = add nsw i64 %i.fz, %i.be
  %i.gb = ashr i64 %i.ga, %i.fa
  %i.gc = load i64, ptr %.7209248.ph, align 8, !tbaa !16
  %i.gd = sub nsw i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %.7209248.ph, align 8, !tbaa !16
  %i.ge = add nsw i32 %.0194250.ph, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %.7209248.ph, i64 8
  br label %scalar.ph351.prol.loopexit

scalar.ph351.prol.loopexit:                       ; preds = %scalar.ph351.prol, %scalar.ph351.preheader
  %.0194250.unr = phi i32 [ %.0194250.ph, %scalar.ph351.preheader ], [ %i.ge, %scalar.ph351.prol ]
  %.7249.unr = phi ptr [ %.7249.ph, %scalar.ph351.preheader ], [ %i.fw, %scalar.ph351.prol ]
  %.7209248.unr = phi ptr [ %.7209248.ph, %scalar.ph351.preheader ], [ %i.gf, %scalar.ph351.prol ]
  %i.gg = icmp eq i32 %.0194250.ph, 1
  br i1 %i.gg, label %.loopexit, label %scalar.ph351

.preheader243:                                    ; preds = %bb.i
  br i1 %.not291, label %.loopexit, label %.lr.ph255

.lr.ph255:                                        ; preds = %.preheader243
  %i.gh = sext i16 %i.ba to i64                   ; 4 uses
  %i.gi = zext nneg i8 %i.bd to i64               ; 4 uses
  %i.gj = zext nneg i32 %.0196282 to i64          ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.0196282, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph255
  %i.gk = add nsw i32 %.0196282, -1
  %i.gl = zext i32 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3                ; 2 uses
  %i.gn = add nuw nsw i64 %i.gm, 8                ; 2 uses
  %i.go = getelementptr i8, ptr %.0193283, i64 %i.gn ; 2 uses
  %i.gp = getelementptr i8, ptr %.0192284, i64 -8
  %i.gq = getelementptr i8, ptr %.0192284, i64 %i.gm
  %9 = getelementptr i8, ptr %.0192284, i64 %i.gn
  %bound0.a = icmp ult ptr %.0193283, %i.gq
  %bound1 = icmp ult ptr %i.gp, %i.go
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0326 = icmp ult ptr %.0193283, %9
  %bound1327 = icmp ult ptr %.0192284, %i.go
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx = or i1 %found.conflict, %found.conflict328
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gj, 2147483646              ; 4 uses
  %i.gr = trunc nuw nsw i64 %n.vec to i32
  %i.gs = sub nsw i32 %.0196282, %i.gr
  %i.gt = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.gu = getelementptr i8, ptr %.0192284, i64 %i.gt
  %i.gv = getelementptr i8, ptr %.0193283, i64 %i.gt
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <2 x i64> poison, i64 %i.gi, i64 0
  %broadcast.splat330 = shufflevector <2 x i64> %broadcast.splatinsert329, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert331 = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %broadcast.splat332 = shufflevector <2 x i64> %broadcast.splatinsert331, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0192284, i64 %i.gw ; 2 uses
  %next.gep333 = getelementptr i8, ptr %.0193283, i64 %i.gw ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %next.gep, i64 -8
  %wide.load = load <2 x i64>, ptr %i.gx, align 8, !tbaa !16, !alias.scope !188
  %wide.load334 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !16, !alias.scope !189
  %i.gy = add nsw <2 x i64> %wide.load334, %wide.load
  %i.gz = mul nsw <2 x i64> %i.gy, %broadcast.splat
  %i.ha = add nsw <2 x i64> %i.gz, %broadcast.splat332
  %i.hb = ashr <2 x i64> %i.ha, %broadcast.splat330
  %wide.load335 = load <2 x i64>, ptr %next.gep333, align 8, !tbaa !16, !alias.scope !190, !noalias !191
  %i.hc = sub nsw <2 x i64> %wide.load335, %i.hb
  store <2 x i64> %i.hc, ptr %next.gep333, align 8, !tbaa !16, !alias.scope !190, !noalias !191
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hd = icmp eq i64 %index.next, %n.vec
  br i1 %i.hd, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gj
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph255, %middle.block
  %.0195254.ph = phi i32 [ %.0196282, %vector.memcheck ], [ %.0196282, %.lr.ph255 ], [ %i.gs, %middle.block ] ; 4 uses
  %.6253.ph = phi ptr [ %.0192284, %vector.memcheck ], [ %.0192284, %.lr.ph255 ], [ %i.gu, %middle.block ] ; 4 uses
  %.6208252.ph = phi ptr [ %.0193283, %vector.memcheck ], [ %.0193283, %.lr.ph255 ], [ %i.gv, %middle.block ] ; 4 uses
  %xtraiter389 = and i32 %.0195254.ph, 1
  %lcmp.mod390.not = icmp eq i32 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.he = getelementptr inbounds i8, ptr %.6253.ph, i64 -8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !16
  %i.hg = load i64, ptr %.6253.ph, align 8, !tbaa !16
  %i.hh = add nsw i64 %i.hg, %i.hf
  %i.hi = mul nsw i64 %i.hh, %i.gh
  %i.hj = add nsw i64 %i.hi, %i.be
  %i.hk = ashr i64 %i.hj, %i.gi
  %i.hl = load i64, ptr %.6208252.ph, align 8, !tbaa !16
  %i.hm = sub nsw i64 %i.hl, %i.hk
  store i64 %i.hm, ptr %.6208252.ph, align 8, !tbaa !16
  %i.hn = add nsw i32 %.0195254.ph, -1
  %i.ho = getelementptr inbounds nuw i8, ptr %.6253.ph, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.6208252.ph, i64 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0195254.unr = phi i32 [ %.0195254.ph, %scalar.ph.preheader ], [ %i.hn, %scalar.ph.prol ]
  %.6253.unr = phi ptr [ %.6253.ph, %scalar.ph.preheader ], [ %i.ho, %scalar.ph.prol ]
  %.6208252.unr = phi ptr [ %.6208252.ph, %scalar.ph.preheader ], [ %i.hp, %scalar.ph.prol ]
  %i.hq = icmp eq i32 %.0195254.ph, 1
  br i1 %i.hq, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0195254 = phi i32 [ %i.ik, %scalar.ph ], [ %.0195254.unr, %scalar.ph.prol.loopexit ]
  %.6253 = phi ptr [ %i.il, %scalar.ph ], [ %.6253.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.6208252 = phi ptr [ %i.im, %scalar.ph ], [ %.6208252.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.6253, i64 -8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !16
  %i.ht = load i64, ptr %.6253, align 8, !tbaa !16
  %i.hu = add nsw i64 %i.ht, %i.hs
  %i.hv = mul nsw i64 %i.hu, %i.gh
  %i.hw = add nsw i64 %i.hv, %i.be
  %i.hx = ashr i64 %i.hw, %i.gi
  %i.hy = load i64, ptr %.6208252, align 8, !tbaa !16
  %i.hz = sub nsw i64 %i.hy, %i.hx
  store i64 %i.hz, ptr %.6208252, align 8, !tbaa !16
  %i.ia = getelementptr inbounds nuw i8, ptr %.6253, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.6208252, i64 8 ; 2 uses
  %i.ic = load i64, ptr %.6253, align 8, !tbaa !16
  %i.id = load i64, ptr %i.ia, align 8, !tbaa !16
  %i.ie = add nsw i64 %i.id, %i.ic
  %i.if = mul nsw i64 %i.ie, %i.gh
  %i.ig = add nsw i64 %i.if, %i.be
  %i.ih = ashr i64 %i.ig, %i.gi
  %i.ii = load i64, ptr %i.ib, align 8, !tbaa !16
  %i.ij = sub nsw i64 %i.ii, %i.ih
  store i64 %i.ij, ptr %i.ib, align 8, !tbaa !16
  %i.ik = add nsw i32 %.0195254, -2               ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.6253, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %.6208252, i64 16
  %.not218.1 = icmp eq i32 %i.ik, 0
  br i1 %.not218.1, label %.loopexit, label %scalar.ph, !llvm.loop !181

scalar.ph351:                                     ; preds = %scalar.ph351.prol.loopexit, %scalar.ph351
  %.0194250 = phi i32 [ %i.jg, %scalar.ph351 ], [ %.0194250.unr, %scalar.ph351.prol.loopexit ]
  %.7249 = phi ptr [ %i.iy, %scalar.ph351 ], [ %.7249.unr, %scalar.ph351.prol.loopexit ] ; 3 uses
  %.7209248 = phi ptr [ %i.jh, %scalar.ph351 ], [ %.7209248.unr, %scalar.ph351.prol.loopexit ] ; 4 uses
  %i.in = load i64, ptr %.7249, align 8, !tbaa !16
  %i.io = getelementptr inbounds nuw i8, ptr %.7249, i64 8 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !16
  %i.iq = add nsw i64 %i.ip, %i.in
  %i.ir = mul nsw i64 %i.iq, %i.ez
  %i.is = add nsw i64 %i.ir, %i.be
  %i.it = ashr i64 %i.is, %i.fa
  %i.iu = load i64, ptr %.7209248, align 8, !tbaa !16
  %i.iv = sub nsw i64 %i.iu, %i.it
  store i64 %i.iv, ptr %.7209248, align 8, !tbaa !16
  %i.iw = getelementptr inbounds nuw i8, ptr %.7209248, i64 8 ; 2 uses
  %i.ix = load i64, ptr %i.io, align 8, !tbaa !16
  %i.iy = getelementptr inbounds nuw i8, ptr %.7249, i64 16 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !16
  %i.ja = add nsw i64 %i.iz, %i.ix
  %i.jb = mul nsw i64 %i.ja, %i.ez
  %i.jc = add nsw i64 %i.jb, %i.be
  %i.jd = ashr i64 %i.jc, %i.fa
  %i.je = load i64, ptr %i.iw, align 8, !tbaa !16
  %i.jf = sub nsw i64 %i.je, %i.jd
  store i64 %i.jf, ptr %i.iw, align 8, !tbaa !16
  %i.jg = add nsw i32 %.0194250, -2               ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.7209248, i64 16
  %.not.1 = icmp eq i32 %i.jg, 0
  br i1 %.not.1, label %.loopexit, label %scalar.ph351, !llvm.loop !182

.loopexit:                                        ; preds = %scalar.ph351.prol.loopexit, %scalar.ph351, %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph259, %.lr.ph263, %.lr.ph267, %.lr.ph271, %.lr.ph275, %.lr.ph279, %middle.block377, %middle.block, %.preheader245, %.preheader243, %.preheader241, %.preheader239, %.preheader237, %.preheader235, %.preheader233, %.preheader
  %i.ji = xor i1 %.0.in285, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !183

bb.j:                                             ; preds = %bb.a
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !11
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !16
  br label %_ZN4ojph5localL17sse2_interleave64EPdS1_S1_i.exit.sink.split

bb.l:                                             ; preds = %bb.j
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !11
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !16
  %i.jp = ashr i64 %i.jo, 1
  br label %_ZN4ojph5localL17sse2_interleave64EPdS1_S1_i.exit.sink.split

_ZN4ojph5localL17sse2_interleave64EPdS1_S1_i.exit.sink.split: ; preds = %bb.l, %bb.k
  %.sink = phi i64 [ %i.jl, %bb.k ], [ %i.jp, %bb.l ]
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !11
  store i64 %.sink, ptr %i.jr, align 8, !tbaa !16
  br label %_ZN4ojph5localL17sse2_interleave64EPdS1_S1_i.exit

_ZN4ojph5localL17sse2_interleave64EPdS1_S1_i.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN4ojph5localL17sse2_interleave64EPdS1_S1_i.exit.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17sse2_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ojph5local19sse2_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4ojph5local19sse2_rev_horz_syn64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
end_hunk_5
