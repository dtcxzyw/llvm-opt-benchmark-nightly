Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ctu?download=true
inline.NumInlined: 95
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 44
begin_hunk_0_@hls_transform_unit:bb.a
  %i.st = icmp sgt i32 %i.ss, 0
  br i1 %i.st, label %.lr.ph.i263, label %set_tb_size.exit.thread

.lr.ph.i263:                                      ; preds = %bb.bu
  %i.su = load i32, ptr %i.qa, align 4, !tbaa !207
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sn, i64 9
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !108
  %i.sx = zext nneg i8 %i.sw to i32
  %i.sy = shl i32 %i.su, %i.sx
  %i.sz = ashr i32 %i.sy, 2
  %i.ta = tail call i32 @llvm.smax.i32(i32 %i.sz, i32 1)
  %i.tb = zext nneg i32 %i.ta to i64              ; 3 uses
  %i.tc = add nsw i32 %i.ss, -1                   ; 2 uses
  %i.td = lshr i32 %i.tc, 2                       ; 2 uses
  %i.te = add nuw nsw i32 %i.td, 1                ; 2 uses
  %i.tf = icmp eq i32 %i.td, 0
  br i1 %i.tf, label %.epil.preheader299, label %.lr.ph.i263.new

.lr.ph.i263.new:                                  ; preds = %.lr.ph.i263
  %unroll_iter303 = and i32 %i.te, 2147483646
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i263.new
  %.019.i264 = phi i32 [ 0, %.lr.ph.i263.new ], [ %i.uh, %bb.bv ] ; 3 uses
  %niter304 = phi i32 [ 0, %.lr.ph.i263.new ], [ %niter304.next.1, %bb.bv ]
  %i.tg = load i32, ptr %i.pm, align 8, !tbaa !208
  %i.th = add nsw i32 %i.tg, %.019.i264
  %i.ti = ashr i32 %i.th, 2
  %i.tj = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4052
  %i.tl = load i16, ptr %i.tk, align 4, !tbaa !209
  %i.tm = zext i16 %i.tl to i32
  %i.tn = mul nsw i32 %i.ti, %i.tm
  %i.to = load i32, ptr %i.pj, align 4, !tbaa !210
  %i.tp = ashr i32 %i.to, 2
  %i.tq = add nsw i32 %i.tn, %i.tp
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds i8, ptr %i.sl, i64 %i.tr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ts, i8 %i.sm, i64 %i.tb, i1 false)
  %i.tt = or disjoint i32 %.019.i264, 4
  %i.tu = load i32, ptr %i.pm, align 8, !tbaa !208
  %i.tv = add nsw i32 %i.tu, %i.tt
  %i.tw = ashr i32 %i.tv, 2
  %i.tx = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 4052
  %i.tz = load i16, ptr %i.ty, align 4, !tbaa !209
  %i.ua = zext i16 %i.tz to i32
  %i.ub = mul nsw i32 %i.tw, %i.ua
  %i.uc = load i32, ptr %i.pj, align 4, !tbaa !210
  %i.ud = ashr i32 %i.uc, 2
  %i.ue = add nsw i32 %i.ub, %i.ud
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds i8, ptr %i.sl, i64 %i.uf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ug, i8 %i.sm, i64 %i.tb, i1 false)
  %i.uh = add nuw nsw i32 %.019.i264, 8           ; 2 uses
  %niter304.next.1 = add i32 %niter304, 2         ; 2 uses
  %niter304.ncmp.1.not = icmp eq i32 %niter304.next.1, %unroll_iter303
  br i1 %niter304.ncmp.1.not, label %set_tb_size.exit.thread.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !1

set_tb_size.exit.thread.loopexit.unr-lcssa:       ; preds = %bb.bv
  %i.ui = and i32 %i.tc, 4
  %lcmp.mod301.not.not = icmp eq i32 %i.ui, 0
  br i1 %lcmp.mod301.not.not, label %.epil.preheader299, label %set_tb_size.exit.thread

.epil.preheader299:                               ; preds = %set_tb_size.exit.thread.loopexit.unr-lcssa, %.lr.ph.i263
  %.019.i264.epil.init = phi i32 [ 0, %.lr.ph.i263 ], [ %i.uh, %set_tb_size.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod302 = trunc i32 %i.te to i1
  tail call void @llvm.assume(i1 %lcmp.mod302)
  %i.uj = load i32, ptr %i.pm, align 8, !tbaa !208
  %i.uk = add nsw i32 %i.uj, %.019.i264.epil.init
  %i.ul = ashr i32 %i.uk, 2
  %i.um = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4052
  %i.uo = load i16, ptr %i.un, align 4, !tbaa !209
  %i.up = zext i16 %i.uo to i32
  %i.uq = mul nsw i32 %i.ul, %i.up
  %i.ur = load i32, ptr %i.pj, align 4, !tbaa !210
  %i.us = ashr i32 %i.ur, 2
  %i.ut = add nsw i32 %i.uq, %i.us
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds i8, ptr %i.sl, i64 %i.uu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uv, i8 %i.sm, i64 %i.tb, i1 false)
  br label %set_tb_size.exit.thread

set_tb_size.exit.thread:                          ; preds = %.epil.preheader299, %set_tb_size.exit.thread.loopexit.unr-lcssa, %set_tb_tab.exit, %set_tb_size.exit, %bb.bu
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.uw = load i8, ptr %i.kh, align 2, !tbaa !201
  %i.ux = zext i8 %i.uw to i64
  %.not232 = icmp samesign ult i64 %indvars.iv.next, %i.ux
  br i1 %.not232, label %bb.bd, label %.critedge, !llvm.loop !402

.critedge:                                        ; preds = %bb.bo, %set_tb_size.exit.thread, %.thread293, %bb.am, %bb.p
  %.5 = phi i32 [ -1094995529, %bb.p ], [ %i.el, %bb.am ], [ 0, %.thread293 ], [ %i.mb, %bb.bo ], [ 0, %set_tb_size.exit.thread ]
  ret i32 %.5
}

declare i32 @ff_vvc_tu_cb_coded_flag(ptr noundef) local_unnamed_addr #2

declare i32 @ff_vvc_tu_cr_coded_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_tu_joint_cbcr_residual_flag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_transform_skip_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_residual_coding(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_vvc_tu_y_coded_flag(ptr noundef) local_unnamed_addr #2

declare i32 @ff_vvc_lfnst_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_mts_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @skipped_transform_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !90  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2064 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.h = load i8, ptr %i.g, align 4, !tbaa !182
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = icmp sgt i32 %3, %i.i                    ; 2 uses
  %i.k = icmp sgt i32 %4, %i.i
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %3, %4
  %i.m = and i1 %i.l, %i.j                        ; 3 uses
  %i.n = lshr i32 %3, 1                           ; 3 uses
  %i.o = select i1 %i.m, i32 %i.n, i32 %3
  %i.p = sdiv i32 %4, 2                           ; 3 uses
  %i.q = select i1 %i.m, i32 %4, i32 %i.p
  %i.r = tail call fastcc i32 @skipped_transform_tree(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.o, i32 noundef %i.q) ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.n, %1
  %i.u = tail call fastcc i32 @skipped_transform_tree(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %2, i32 noundef %i.n, i32 noundef %4) ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.p, %2
  %i.x = tail call fastcc i32 @skipped_transform_tree(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.w, i32 noundef %3, i32 noundef %i.p) ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.480.ph = phi i32 [ %i.r, %bb.b ], [ %i.x, %bb.e ], [ %i.u, %bb.d ]
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.b, i64 21792
  %.val = load ptr, ptr %i.z, align 8, !tbaa !214
  %i.aa = tail call ptr @av_refstruct_pool_get(ptr noundef %.val) #14 ; 14 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  store ptr null, ptr %i.ab, align 8, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !160 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ad, null
  br i1 %.not14.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !200
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !160
  store i32 %1, ptr %i.aa, align 8, !tbaa !217
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %2, ptr %i.ag, align 4, !tbaa !218
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %3, ptr %i.ah, align 8, !tbaa !215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %4, ptr %i.ai, align 4, !tbaa !216
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aj, i8 0, i64 7, i1 false)
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !133 ; 2 uses
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 7
  %i.an = load i8, ptr %i.am, align 1, !tbaa !121
  %i.ao = icmp eq i8 %i.an, 0                     ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 2                  ; 8 uses
  %.not95 = and i1 %i.ao, %.not.i
  br i1 %.not95, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ap = icmp eq i32 %i.ak, 1
  %.not98 = or i1 %i.ap, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 22 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.av = ashr i32 %1, 2                          ; 3 uses
  %i.aw = ashr i32 %2, 2                          ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 2072 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 22080
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 22096
  %i.ba = zext i1 %.not.i to i64                  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !108
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = ashr i32 %3, %i.bd                      ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ba
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !108
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = ashr i32 %4, %i.bh                      ; 6 uses
  %i.bj = load i8, ptr %i.at, align 2, !tbaa !201 ; 2 uses
  %i.bk = add i8 %i.bj, 1
  store i8 %i.bk, ptr %i.at, align 2, !tbaa !201
  %i.bl = zext i8 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [72 x i8], ptr %i.as, i64 %i.bl ; 11 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !219
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %1, ptr %i.bn, align 4, !tbaa !210
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %2, ptr %i.bo, align 8, !tbaa !208
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  store i32 %i.be, ptr %i.bp, align 4, !tbaa !207
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store i32 %i.bi, ptr %i.bq, align 8, !tbaa !206
  %.not.i29.i = icmp ult i32 %i.be, 65536         ; 2 uses
  %i.br = lshr i32 %i.be, 16
  %spec.select.i30.i = select i1 %.not.i29.i, i32 %i.be, i32 %i.br ; 3 uses
  %spec.select12.i31.i = select i1 %.not.i29.i, i32 0, i32 16 ; 2 uses
  %.not11.i32.i = icmp samesign ult i32 %spec.select.i30.i, 256 ; 2 uses
  %i.bs = lshr i32 %spec.select.i30.i, 8
  %i.bt = or disjoint i32 %spec.select12.i31.i, 8
  %.110.i33.i = select i1 %.not11.i32.i, i32 %spec.select.i30.i, i32 %i.bs
  %.1.i34.i = select i1 %.not11.i32.i, i32 %spec.select12.i31.i, i32 %i.bt
  %i.bu = zext nneg i32 %.110.i33.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !108
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %.1.i34.i, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !220
  %.not.i.i90 = icmp ult i32 %i.bi, 65536         ; 2 uses
  %i.ca = lshr i32 %i.bi, 16
  %spec.select.i.i = select i1 %.not.i.i90, i32 %i.bi, i32 %i.ca ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i90, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.cb = lshr i32 %spec.select.i.i, 8
  %i.cc = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.cb
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.cc
  %i.cd = zext nneg i32 %.110.i.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !108
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nuw nsw i32 %.1.i.i, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !221
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.ck = zext i1 %.not.i to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !203
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 0, ptr %i.cm, align 2, !tbaa !204
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !89 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !222
  %i.cp = mul nsw i32 %i.bi, %i.be
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cq
  store ptr %i.cr, ptr %i.au, align 8, !tbaa !89
  %i.cs = zext i1 %.not.i to i64                  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.cs
  store i8 1, ptr %i.ct, align 1, !tbaa !224
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ba
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !108
  %i.cy = zext i8 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ba
  %i.db = load i8, ptr %i.da, align 1, !tbaa !108
  %i.dc = zext i8 %i.db to i32
  %i.dd = sub nsw i32 2, %i.cy
  %i.de = ashr i32 %i.be, %i.dd
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.de, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  %i.df = sub nsw i32 2, %i.dc
  %i.dg = ashr i32 %i.bi, %i.df
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 1)
  %i.di = add nsw i32 %i.dh, %i.aw
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cs
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cs
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph
  %.034.i = phi i32 [ %i.aw, %.lr.ph ], [ %i.ea, %bb.k ] ; 2 uses
  %i.dl = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4052
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !209
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nsw i32 %.034.i, %i.do
  %i.dq = add nsw i32 %i.dp, %i.av
  %i.dr = load ptr, ptr %i.dj, align 8, !tbaa !162
  %i.ds = sext i32 %i.dq to i64                   ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.bp, align 4, !tbaa !207
  %i.dv = trunc i32 %i.du to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dt, i8 %i.dv, i64 %spec.select.i, i1 false)
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !162
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.ds
  %i.dy = load i32, ptr %i.bq, align 8, !tbaa !206
  %i.dz = trunc i32 %i.dy to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 %i.dz, i64 %spec.select.i, i1 false)
  %i.ea = add nsw i32 %.034.i, 1                  ; 2 uses
  %i.eb = icmp slt i32 %i.ea, %i.di
  br i1 %i.eb, label %bb.k, label %set_tb_size.exit, !llvm.loop !2

set_tb_size.exit:                                 ; preds = %bb.k
  %indvars.iv.next = select i1 %.not.i, i64 2, i64 1 ; 5 uses
  br i1 %.not98, label %.critedge, label %bb.l

bb.l:                                             ; preds = %set_tb_size.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !108
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = ashr i32 %3, %i.ee                      ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !108
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = ashr i32 %4, %i.ei                      ; 6 uses
  %i.ek = load i8, ptr %i.at, align 2, !tbaa !201 ; 2 uses
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.at, align 2, !tbaa !201
  %i.em = zext i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw [72 x i8], ptr %i.as, i64 %i.em ; 11 uses
  store i8 0, ptr %i.en, align 8, !tbaa !219
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %1, ptr %i.eo, align 4, !tbaa !210
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %2, ptr %i.ep, align 8, !tbaa !208
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12 ; 2 uses
  store i32 %i.ef, ptr %i.eq, align 4, !tbaa !207
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  store i32 %i.ej, ptr %i.er, align 8, !tbaa !206
  %.not.i29.i.1 = icmp ult i32 %i.ef, 65536       ; 2 uses
  %i.es = lshr i32 %i.ef, 16
  %spec.select.i30.i.1 = select i1 %.not.i29.i.1, i32 %i.ef, i32 %i.es ; 3 uses
  %spec.select12.i31.i.1 = select i1 %.not.i29.i.1, i32 0, i32 16 ; 2 uses
  %.not11.i32.i.1 = icmp samesign ult i32 %spec.select.i30.i.1, 256 ; 2 uses
  %i.et = lshr i32 %spec.select.i30.i.1, 8
  %i.eu = or disjoint i32 %spec.select12.i31.i.1, 8
  %.110.i33.i.1 = select i1 %.not11.i32.i.1, i32 %spec.select.i30.i.1, i32 %i.et
  %.1.i34.i.1 = select i1 %.not11.i32.i.1, i32 %spec.select12.i31.i.1, i32 %i.eu
  %i.ev = zext nneg i32 %.110.i33.i.1 to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !108
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nuw nsw i32 %.1.i34.i.1, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !220
  %.not.i.i90.1 = icmp ult i32 %i.ej, 65536       ; 2 uses
  %i.fb = lshr i32 %i.ej, 16
  %spec.select.i.i.1 = select i1 %.not.i.i90.1, i32 %i.ej, i32 %i.fb ; 3 uses
  %spec.select12.i.i.1 = select i1 %.not.i.i90.1, i32 0, i32 16 ; 2 uses
  %.not11.i.i.1 = icmp samesign ult i32 %spec.select.i.i.1, 256 ; 2 uses
  %i.fc = lshr i32 %spec.select.i.i.1, 8
  %i.fd = or disjoint i32 %spec.select12.i.i.1, 8
  %.110.i.i.1 = select i1 %.not11.i.i.1, i32 %spec.select.i.i.1, i32 %i.fc
  %.1.i.i.1 = select i1 %.not11.i.i.1, i32 %spec.select12.i.i.1, i32 %i.fd
  %i.fe = zext nneg i32 %.110.i.i.1 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !108
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nuw nsw i32 %.1.i.i.1, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !221
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 28
  %i.fl = trunc nuw nsw i64 %indvars.iv.next to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !203
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 0, ptr %i.fn, align 2, !tbaa !204
  %i.fo = load ptr, ptr %i.au, align 8, !tbaa !89 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !222
  %i.fq = mul nsw i32 %i.ej, %i.ef
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fr
  store ptr %i.fs, ptr %i.au, align 8, !tbaa !89
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  store i8 1, ptr %i.ft, align 1, !tbaa !224
  br i1 %.not.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv.next
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !108
  %i.fy = zext i8 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv.next
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !108
  %i.gc = zext i8 %i.gb to i32
  %i.gd = sub nsw i32 2, %i.fy
  %i.ge = ashr i32 %i.ef, %i.gd
  %narrow.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ge, i32 1)
  %spec.select.i.1 = zext nneg i32 %narrow.i.1 to i64 ; 2 uses
  %i.gf = sub nsw i32 2, %i.gc
  %i.gg = ashr i32 %i.ej, %i.gf
  %i.gh = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 1)
  %i.gi = add nsw i32 %i.gh, %i.aw
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 22088
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 22104
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.034.i.1 = phi i32 [ %i.aw, %bb.m ], [ %i.ha, %bb.n ] ; 2 uses
  %i.gl = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4052
  %i.gn = load i16, ptr %i.gm, align 4, !tbaa !209
  %i.go = zext i16 %i.gn to i32
  %i.gp = mul nsw i32 %.034.i.1, %i.go
  %i.gq = add nsw i32 %i.gp, %i.av
  %i.gr = load ptr, ptr %i.gj, align 8, !tbaa !162
  %i.gs = sext i32 %i.gq to i64                   ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 %i.gs
  %i.gu = load i32, ptr %i.eq, align 4, !tbaa !207
  %i.gv = trunc i32 %i.gu to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gt, i8 %i.gv, i64 %spec.select.i.1, i1 false)
  %i.gw = load ptr, ptr %i.gk, align 8, !tbaa !162
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.gs
  %i.gy = load i32, ptr %i.er, align 8, !tbaa !206
  %i.gz = trunc i32 %i.gy to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, i8 %i.gz, i64 %spec.select.i.1, i1 false)
  %i.ha = add nsw i32 %.034.i.1, 1                ; 2 uses
  %i.hb = icmp slt i32 %i.ha, %i.gi
  br i1 %i.hb, label %bb.n, label %set_tb_size.exit.1, !llvm.loop !2

set_tb_size.exit.1:                               ; preds = %bb.n
  %indvars.iv.next.1 = select i1 %.not.i, i64 3, i64 2 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !108
  %i.he = zext nneg i8 %i.hd to i32
  %i.hf = ashr i32 %3, %i.he                      ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !108
  %i.hi = zext nneg i8 %i.hh to i32
  %i.hj = ashr i32 %4, %i.hi                      ; 6 uses
  %i.hk = load i8, ptr %i.at, align 2, !tbaa !201 ; 2 uses
  %i.hl = add i8 %i.hk, 1
  store i8 %i.hl, ptr %i.at, align 2, !tbaa !201
  %i.hm = zext i8 %i.hk to i64
  %i.hn = getelementptr inbounds nuw [72 x i8], ptr %i.as, i64 %i.hm ; 11 uses
  store i8 0, ptr %i.hn, align 8, !tbaa !219
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %1, ptr %i.ho, align 4, !tbaa !210
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 %2, ptr %i.hp, align 8, !tbaa !208
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 12 ; 2 uses
  store i32 %i.hf, ptr %i.hq, align 4, !tbaa !207
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  store i32 %i.hj, ptr %i.hr, align 8, !tbaa !206
  %.not.i29.i.2 = icmp ult i32 %i.hf, 65536       ; 2 uses
  %i.hs = lshr i32 %i.hf, 16
  %spec.select.i30.i.2 = select i1 %.not.i29.i.2, i32 %i.hf, i32 %i.hs ; 3 uses
  %spec.select12.i31.i.2 = select i1 %.not.i29.i.2, i32 0, i32 16 ; 2 uses
  %.not11.i32.i.2 = icmp samesign ult i32 %spec.select.i30.i.2, 256 ; 2 uses
  %i.ht = lshr i32 %spec.select.i30.i.2, 8
  %i.hu = or disjoint i32 %spec.select12.i31.i.2, 8
  %.110.i33.i.2 = select i1 %.not11.i32.i.2, i32 %spec.select.i30.i.2, i32 %i.ht
  %.1.i34.i.2 = select i1 %.not11.i32.i.2, i32 %spec.select12.i31.i.2, i32 %i.hu
  %i.hv = zext nneg i32 %.110.i33.i.2 to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !108
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nuw nsw i32 %.1.i34.i.2, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !220
  %.not.i.i90.2 = icmp ult i32 %i.hj, 65536       ; 2 uses
  %i.ib = lshr i32 %i.hj, 16
  %spec.select.i.i.2 = select i1 %.not.i.i90.2, i32 %i.hj, i32 %i.ib ; 3 uses
  %spec.select12.i.i.2 = select i1 %.not.i.i90.2, i32 0, i32 16 ; 2 uses
  %.not11.i.i.2 = icmp samesign ult i32 %spec.select.i.i.2, 256 ; 2 uses
  %i.ic = lshr i32 %spec.select.i.i.2, 8
  %i.id = or disjoint i32 %spec.select12.i.i.2, 8
  %.110.i.i.2 = select i1 %.not11.i.i.2, i32 %spec.select.i.i.2, i32 %i.ic
  %.1.i.i.2 = select i1 %.not11.i.i.2, i32 %spec.select12.i.i.2, i32 %i.id
  %i.ie = zext nneg i32 %.110.i.i.2 to i64
  %i.if = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !108
  %i.ih = zext i8 %i.ig to i32
end_hunk_0
