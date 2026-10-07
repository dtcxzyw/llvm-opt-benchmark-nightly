Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-synthetic?download=true
inline.NumInlined: 47
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hwloc_synthetic_component_instantiate:bb.a

.lr.ph445.i.preheader:                            ; preds = %bb.bk
  %i.dw = trunc i64 %.0287432.i to i32            ; 2 uses
  %i.dx = and i32 %i.dw, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph445.i.prol, label %.lr.ph445.i.prol.loopexit

.lr.ph445.i.prol:                                 ; preds = %.lr.ph445.i.preheader
  %i.dy = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %.not380.i.prol = icmp eq i32 %i.ea, -1
  br i1 %.not380.i.prol, label %.lr.ph445.i.prol.loopexit.unr-lcssa, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph445.i.prol
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !56
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !56
  br label %.lr.ph445.i.prol.loopexit.unr-lcssa

.lr.ph445.i.prol.loopexit.unr-lcssa:              ; preds = %bb.bl, %.lr.ph445.i.prol
  %indvars.iv.next.i.prol = add nsw i64 %i.dv, -1
  br label %.lr.ph445.i.prol.loopexit

.lr.ph445.i.prol.loopexit:                        ; preds = %.lr.ph445.i.prol.loopexit.unr-lcssa, %.lr.ph445.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.dv, %.lr.ph445.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph445.i.prol.loopexit.unr-lcssa ]
  %i.ef = icmp eq i32 %i.dw, 2
  br i1 %i.ef, label %._crit_edge.i, label %.lr.ph445.i

.lr.ph445.i:                                      ; preds = %.lr.ph445.i.prol.loopexit, %bb.bo
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.bo ], [ %indvars.iv.i.unr, %.lr.ph445.i.prol.loopexit ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !71 ; 2 uses
  %.not380.i = icmp eq i32 %i.ei, -1
  br i1 %.not380.i, label %.lr.ph445.i.1, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph445.i
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !56
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !56
  br label %.lr.ph445.i.1

.lr.ph445.i.1:                                    ; preds = %bb.bm, %.lr.ph445.i
  %i.en = getelementptr [80 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.eo = getelementptr i8, ptr %i.en, i64 -64
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !71 ; 2 uses
  %.not380.i.1 = icmp eq i32 %i.ep, -1
  br i1 %.not380.i.1, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph445.i.1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !56
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !56
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.lr.ph445.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.eu = and i64 %indvars.iv.next.i.1, 4294967295
  %.not348.i.1 = icmp eq i64 %i.eu, 0
  br i1 %.not348.i.1, label %._crit_edge.i, label %.lr.ph445.i, !llvm.loop !119

._crit_edge.i:                                    ; preds = %bb.bo, %.lr.ph445.i.prol.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.pre505.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !56 ; 2 uses
  %.not349.i = icmp eq i32 %.pre505.i, 0
  br i1 %.not349.i, label %._crit_edge.thread.i, label %bb.br

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.bk
  %.not350.i = icmp eq i32 %.0296.i, 0
  br i1 %.not350.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.thread.i
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.22, i64 46, i64 1, ptr %i.ev) #23 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge.thread.i
  %i.ew = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.ew, align 4, !tbaa !56
  br label %bb.dy

bb.br:                                            ; preds = %._crit_edge.i
  %i.ex = icmp sgt i32 %.pre505.i, 1
  br i1 %i.ex, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %.not378.i = icmp eq i32 %.0296.i, 0
  br i1 %.not378.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite379.i = call i64 @fwrite(ptr nonnull @.str.23, i64 47, i64 1, ptr %i.ey) #23 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ez = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.ez, align 4, !tbaa !56
  br label %bb.dy

bb.bv:                                            ; preds = %bb.br
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !56
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %.not376.i = icmp eq i32 %.0296.i, 0
  br i1 %.not376.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite377.i = call i64 @fwrite(ptr nonnull @.str.24, i64 52, i64 1, ptr %i.fd) #23 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.fe = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.fe, align 4, !tbaa !56
  br label %bb.dy

bb.bz:                                            ; preds = %bb.bv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !56
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %.not374.i = icmp eq i32 %.0296.i, 0
  br i1 %.not374.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite375.i = call i64 @fwrite(ptr nonnull @.str.25, i64 48, i64 1, ptr %i.fi) #23 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.fj = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.fj, align 4, !tbaa !56
  br label %bb.dy

bb.cd:                                            ; preds = %bb.bz
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56 ; 5 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %.not372.i = icmp eq i32 %.0296.i, 0
  br i1 %.not372.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite373.i = call i64 @fwrite(ptr nonnull @.str.26, i64 54, i64 1, ptr %i.fn) #23 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.fo = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.fo, align 4, !tbaa !56
  br label %bb.dy

bb.ch:                                            ; preds = %bb.cd
  %.not351.i = icmp eq i32 %i.fl, 0
  br i1 %.not351.i, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fp = load i64, ptr %i.n, align 8, !tbaa !125
  %.not352.i = icmp eq i64 %i.fp, 0
  br i1 %.not352.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not370.i = icmp eq i32 %.0296.i, 0
  br i1 %.not370.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite371.i = call i64 @fwrite(ptr nonnull @.str.27, i64 69, i64 1, ptr %i.fq) #23 ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.fr = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.fr, align 4, !tbaa !56
  br label %bb.dy

bb.cm:                                            ; preds = %bb.ci, %bb.ch
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !56
  %i.fu = icmp sgt i32 %i.ft, 1
  br i1 %i.fu, label %bb.cn, label %.preheader.i

.preheader.i:                                     ; preds = %bb.cm
  %i.fv = icmp ugt i64 %i.dp, 1
  br i1 %i.fv, label %.lr.ph448.i.preheader, label %.thread537.i

.lr.ph448.i.preheader:                            ; preds = %.preheader.i
  %i.fw = add nsw i64 %.0287432.i, -2             ; 3 uses
  %min.iters.check = icmp ult i64 %i.fw, 12
  br i1 %min.iters.check, label %.lr.ph448.i.preheader156, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph448.i.preheader
  %i.fx = add nsw i64 %.0287432.i, -3             ; 2 uses
  %i.fy = and i64 %i.fx, 4294967294
  %i.fz = icmp eq i64 %i.fy, 4294967294
  %i.ga = icmp ugt i64 %i.fx, 4294967295
  %i.gb = or i1 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph448.i.preheader156, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.fw, -8                      ; 4 uses
  %i.gc = or disjoint i64 %n.vec, 1
  %i.gd = trunc i64 %n.vec to i32
  %i.ge = or disjoint i32 %i.gd, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hp, %vector.body ]
  %vec.phi154 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hq, %vector.body ]
  %i.gf = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gg = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gh = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gi = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gj = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gk = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gl = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %index
  %i.gm = getelementptr [80 x i8], ptr %i.q, i64 %index
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 176
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 256
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 336
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 416
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 496
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 576
  %i.gu = getelementptr i8, ptr %i.gm, i64 656
  %i.gv = load i32, ptr %i.gn, align 8, !tbaa !71
  %i.gw = load i32, ptr %i.go, align 8, !tbaa !71
  %i.gx = load i32, ptr %i.gp, align 8, !tbaa !71
  %i.gy = load i32, ptr %i.gq, align 8, !tbaa !71
  %i.gz = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %i.ha = insertelement <4 x i32> %i.gz, i32 %i.gw, i64 1
  %i.hb = insertelement <4 x i32> %i.ha, i32 %i.gx, i64 2
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 3
  %i.hd = load i32, ptr %i.gr, align 8, !tbaa !71
  %i.he = load i32, ptr %i.gs, align 8, !tbaa !71
  %i.hf = load i32, ptr %i.gt, align 8, !tbaa !71
  %i.hg = load i32, ptr %i.gu, align 8, !tbaa !71
  %i.hh = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 1
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 2
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 3
  %i.hl = icmp eq <4 x i32> %i.hc, splat (i32 -1)
  %i.hm = icmp eq <4 x i32> %i.hk, splat (i32 -1)
  %i.hn = zext <4 x i1> %i.hl to <4 x i32>
  %i.ho = zext <4 x i1> %i.hm to <4 x i32>
  %i.hp = add <4 x i32> %vec.phi, %i.hn           ; 2 uses
  %i.hq = add <4 x i32> %vec.phi154, %i.ho        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hq, %i.hp
  %i.hs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %._crit_edge449.i, label %.lr.ph448.i.preheader156

.lr.ph448.i.preheader156:                         ; preds = %vector.scevcheck, %.lr.ph448.i.preheader, %middle.block
  %.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.lr.ph448.i.preheader ], [ %i.gc, %middle.block ]
  %.0297447.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph448.i.preheader ], [ %i.hs, %middle.block ]
  %.2301446.i.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %.lr.ph448.i.preheader ], [ %i.ge, %middle.block ]
  br label %.lr.ph448.i

bb.cn:                                            ; preds = %bb.cm
  %.not368.i = icmp eq i32 %.0296.i, 0
  br i1 %.not368.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite369.i = call i64 @fwrite(ptr nonnull @.str.28, i64 49, i64 1, ptr %i.ht) #23 ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.hu = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.hu, align 4, !tbaa !56
  br label %bb.dy

.lr.ph448.i:                                      ; preds = %.lr.ph448.i.preheader156, %.lr.ph448.i
  %i.hv = phi i64 [ %i.ic, %.lr.ph448.i ], [ %.ph, %.lr.ph448.i.preheader156 ]
  %.0297447.i = phi i32 [ %spec.select.i, %.lr.ph448.i ], [ %.0297447.i.ph, %.lr.ph448.i.preheader156 ]
  %.2301446.i = phi i32 [ %i.ib, %.lr.ph448.i ], [ %.2301446.i.ph, %.lr.ph448.i.preheader156 ]
  %i.hw = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !71
  %i.hz = icmp eq i32 %i.hy, -1
  %i.ia = zext i1 %i.hz to i32
  %spec.select.i = add i32 %.0297447.i, %i.ia     ; 2 uses
  %i.ib = add i32 %.2301446.i, 1                  ; 2 uses
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = icmp ugt i64 %i.dp, %i.ic
  br i1 %i.id, label %.lr.ph448.i, label %._crit_edge449.i, !llvm.loop !121

._crit_edge449.i:                                 ; preds = %.lr.ph448.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.hs, %middle.block ], [ %spec.select.i, %.lr.ph448.i ] ; 2 uses
  %.not353.i = icmp eq i32 %spec.select.i.lcssa, 0 ; 2 uses
  %i.ie = zext i32 %spec.select.i.lcssa to i64
  %i.if = add nsw i64 %.0287432.i, -2
  %.not354.i = icmp eq i64 %i.if, %i.ie
  %or.cond386.i = select i1 %.not353.i, i1 true, i1 %.not354.i
  br i1 %or.cond386.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge449.i
  %.not366.i = icmp eq i32 %.0296.i, 0
  br i1 %.not366.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite367.i = call i64 @fwrite(ptr nonnull @.str.29, i64 71, i64 1, ptr %i.ig) #23 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ih = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.ih, align 4, !tbaa !56
  br label %bb.dy

bb.ct:                                            ; preds = %._crit_edge449.i
  br i1 %.not353.i, label %.thread537.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ii = trunc nuw i64 %.0287432.i to i32
  %i.ij = add nsw i32 %i.ii, -2                   ; 3 uses
  %i.ik = load i64, ptr %i.n, align 8, !tbaa !125
  %.not356.i = icmp eq i64 %i.ik, 0               ; 2 uses
  %i.il = zext i1 %.not356.i to i32               ; 4 uses
  %i.im = icmp ne i32 %i.ij, %i.il                ; 2 uses
  %i.in = zext i1 %i.im to i32                    ; 4 uses
  %i.io = add nuw nsw i32 %i.in, %i.il            ; 2 uses
  %i.ip = sub nsw i32 %i.ij, %i.io
  %i.iq = icmp ne i32 %i.ij, %i.io                ; 2 uses
  %.neg.i = sext i1 %i.iq to i32
  %i.ir = add nsw i32 %i.ip, %.neg.i              ; 7 uses
  %i.is = call i32 @llvm.umin.i32(i32 %i.ir, i32 4) ; 2 uses
  %i.it = sub nuw i32 %i.ir, %i.is                ; 7 uses
  %.not462.i = icmp ult i32 %i.ir, 5
  br i1 %.not462.i, label %bb.cx, label %.lr.ph453.i

.lr.ph453.i:                                      ; preds = %bb.cu
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.promoted.i = load i32, ptr %i.iu, align 16, !tbaa !56
  %wide.trip.count.i = zext i32 %i.it to i64      ; 2 uses
  %xtraiter185 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.iv = icmp ult i32 %i.it, 8
  br i1 %i.iv, label %.epil.preheader, label %.lr.ph453.i.new

.lr.ph453.i.new:                                  ; preds = %.lr.ph453.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967288
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph453.i.new
  %indvars.iv497.i = phi i64 [ 0, %.lr.ph453.i.new ], [ %indvars.iv.next498.i.7, %bb.cv ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph453.i.new ], [ %niter.next.7, %bb.cv ]
  %i.iw = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  store i32 12, ptr %i.ix, align 8, !tbaa !71
  %i.iy = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 176
  store i32 12, ptr %i.iz, align 8, !tbaa !71
  %i.ja = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 256
  store i32 12, ptr %i.jb, align 8, !tbaa !71
  %i.jc = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 336
  store i32 12, ptr %i.jd, align 8, !tbaa !71
  %i.je = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 416
  store i32 12, ptr %i.jf, align 8, !tbaa !71
  %i.jg = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 496
  store i32 12, ptr %i.jh, align 8, !tbaa !71
  %i.ji = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv497.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 576
  store i32 12, ptr %i.jj, align 8, !tbaa !71
  %indvars.iv.next498.i.7 = add nuw nsw i64 %indvars.iv497.i, 8 ; 3 uses
  %i.jk = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv.next498.i.7
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store i32 12, ptr %i.jl, align 8, !tbaa !71
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge454.i.unr-lcssa, label %bb.cv, !llvm.loop !122

._crit_edge454.i.unr-lcssa:                       ; preds = %bb.cv
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %._crit_edge454.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge454.i.unr-lcssa, %.lr.ph453.i
  %indvars.iv497.i.epil.init = phi i64 [ 0, %.lr.ph453.i ], [ %indvars.iv.next498.i.7, %._crit_edge454.i.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter185, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.epil.preheader
  %indvars.iv497.i.epil = phi i64 [ %indvars.iv497.i.epil.init, %.epil.preheader ], [ %indvars.iv.next498.i.epil, %bb.cw ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cw ]
  %indvars.iv.next498.i.epil = add nuw nsw i64 %indvars.iv497.i.epil, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %indvars.iv.next498.i.epil
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i32 12, ptr %i.jn, align 8, !tbaa !71
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter185
  br i1 %epil.iter.cmp.not, label %._crit_edge454.i, label %bb.cw, !llvm.loop !123

._crit_edge454.i:                                 ; preds = %bb.cw, %._crit_edge454.i.unr-lcssa
  %i.jo = add i32 %.promoted.i, %i.it
  store i32 %i.jo, ptr %i.iu, align 16, !tbaa !56
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge454.i, %bb.cu
  br i1 %i.im, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jp = add i32 %i.it, 1
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i32 1, ptr %i.js, align 8, !tbaa !71
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %.not356.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.jt = add i32 %i.it, 1
  %i.ju = add i32 %i.jt, %i.in
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i32 13, ptr %i.jx, align 8, !tbaa !71
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.jy = phi i32 [ 1, %bb.da ], [ %i.fl, %bb.cz ] ; 2 uses
  %.not357.i = icmp eq i32 %i.ir, 0
  br i1 %.not357.i, label %.thread404.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jz = add i32 %i.it, 1
  %i.ka = add i32 %i.jz, %i.il
  %i.kb = add i32 %i.ka, %i.in                    ; 2 uses
  %i.kc = icmp ugt i32 %i.ir, 2                   ; 2 uses
  %i.kd = zext i1 %i.kc to i32
  %i.ke = add i32 %i.kb, %i.kd                    ; 4 uses
  %i.kf = add i32 %i.ke, 1                        ; 2 uses
  br i1 %i.kc, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kg = zext nneg i32 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store i32 5, ptr %i.ki, align 8, !tbaa !71
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 20
  store i32 2, ptr %i.kj, align 4, !tbaa !78
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  store i32 0, ptr %i.kk, align 8, !tbaa !128
  %.not358.i = icmp eq i32 %i.ir, 1
  br i1 %.not358.i, label %.thread404.i, label %.thread404.sink.split.i

bb.de:                                            ; preds = %bb.dc
  %i.kl = add i32 %i.ke, 2
  %i.km = zext i32 %i.kb to i64
  %i.kn = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.km ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store i32 6, ptr %i.ko, align 8, !tbaa !71
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  store i32 3, ptr %i.kp, align 4, !tbaa !78
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store i32 0, ptr %i.kq, align 8, !tbaa !128
  %i.kr = zext i32 %i.ke to i64
  %i.ks = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store i32 5, ptr %i.kt, align 8, !tbaa !71
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 20
  store i32 2, ptr %i.ku, align 4, !tbaa !78
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  store i32 0, ptr %i.kv, align 8, !tbaa !128
  %i.kw = zext i32 %i.kf to i64
  %i.kx = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.kw ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i32 4, ptr %i.ky, align 8, !tbaa !71
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 20
  store i32 1, ptr %i.kz, align 4, !tbaa !78
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i32 1, ptr %i.la, align 8, !tbaa !128
  %.not406.i = icmp eq i32 %i.ir, 3
  br i1 %.not406.i, label %.thread404.i, label %.thread404.sink.split.i

.thread404.sink.split.i:                          ; preds = %bb.de, %bb.dd
  %.sink576.i = phi i32 [ %i.kf, %bb.dd ], [ %i.kl, %bb.de ]
  %.sink572.i = phi i32 [ 4, %bb.dd ], [ 9, %bb.de ]
  %.sink.i = phi i32 [ 1, %bb.dd ], [ 2, %bb.de ]
  %i.lb = zext i32 %.sink576.i to i64
  %i.lc = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.lb ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i32 %.sink572.i, ptr %i.ld, align 8, !tbaa !71
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 20
  store i32 1, ptr %i.le, align 4, !tbaa !78
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i32 %.sink.i, ptr %i.lf, align 8, !tbaa !128
  br label %.thread404.i

.thread404.i:                                     ; preds = %.thread404.sink.split.i, %bb.de, %bb.dd, %bb.db
  br i1 %i.iq, label %bb.df, label %.thread537.i

bb.df:                                            ; preds = %.thread404.i
  %i.lg = add i32 %i.it, 1
  %i.lh = add i32 %i.lg, %i.il
  %i.li = add i32 %i.lh, %i.in
  %i.lj = add i32 %i.li, %i.is
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i32 2, ptr %i.lm, align 8, !tbaa !71
  br label %.thread537.i

.thread537.i:                                     ; preds = %bb.df, %.thread404.i, %bb.ct, %.preheader.i
  %i.ln = phi i32 [ %i.jy, %.thread404.i ], [ %i.jy, %bb.df ], [ %i.fl, %bb.ct ], [ %i.fl, %.preheader.i ]
  %.not359.i = icmp eq i32 %i.ln, 0
  br i1 %.not359.i, label %bb.dg, label %.lr.ph458.i

bb.dg:                                            ; preds = %.thread537.i
  %i.lo = load i64, ptr %i.n, align 8, !tbaa !125
  %.not360.i = icmp eq i64 %i.lo, 0
  br i1 %.not360.i, label %bb.dh, label %.lr.ph458.i

bb.dh:                                            ; preds = %bb.dg
  %.not361.i = icmp eq i32 %.0296.i, 0
  br i1 %.not361.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lp = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite362.i = call i64 @fwrite(ptr nonnull @.str.30, i64 55, i64 1, ptr %i.lp) #23 ; 0 uses
  br label %bb.dj
end_hunk_0
