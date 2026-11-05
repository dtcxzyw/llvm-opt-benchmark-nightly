Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bwlzh?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bwlzh_compress_gen:bb.a
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.1, i32 noundef %1) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %1, ptr %2, align 1
  %.not225282 = icmp eq i32 %1, 0
  br i1 %.not225282, label %._crit_edge288, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph287

.loopexit:                                        ; preds = %bb.w
  %.not225 = icmp eq i32 %i.ae, 0
  br i1 %.not225, label %._crit_edge288, label %.lr.ph287, !llvm.loop !18

.lr.ph287:                                        ; preds = %.lr.ph287.preheader, %.loopexit
  %.0217285 = phi i32 [ %.4, %.loopexit ], [ 4, %.lr.ph287.preheader ] ; 2 uses
  %.0219284 = phi i32 [ %i.ap, %.loopexit ], [ 0, %.lr.ph287.preheader ] ; 3 uses
  %.0221283 = phi i32 [ %i.ae, %.loopexit ], [ %1, %.lr.ph287.preheader ] ; 2 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %.0221283, i32 200000) ; 6 uses
  %i.ae = sub nsw i32 %.0221283, %spec.select     ; 2 uses
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %.lr.ph287
  %i.af = sext i32 %.0219284 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  call void @Ptngc_comp_conv_to_vals16(ptr noundef %i.ag, i32 noundef %spec.select, ptr noundef %i.l, ptr noundef nonnull %i.a) #9
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph287
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.2, i32 noundef %spec.select) #10 ; 0 uses
  %i.aj = sext i32 %.0219284 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  call void @Ptngc_comp_conv_to_vals16(ptr noundef %i.ak, i32 noundef %spec.select, ptr noundef %i.l, ptr noundef nonnull %i.a) #9
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.am = load i32, ptr %i.a, align 4, !tbaa !12
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.3, i32 noundef %i.am) #10 ; 0 uses
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite = call i64 @fwrite(ptr nonnull @.str.4, i64 4, i64 1, ptr %i.ao) #11 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.d
  %i.ap = add nsw i32 %.0219284, %spec.select
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !12
  call void @Ptngc_comp_to_bwt(ptr noundef %i.l, i32 noundef %i.aq, ptr noundef nonnull %i.q, ptr noundef nonnull %i.e) #9
  %i.ar = sext i32 %.0217285 to i64
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar ; 3 uses
  store i32 %spec.select, ptr %i.as, align 1
  %i.at = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 4
  store i32 %i.at, ptr %i.au, align 1
  %i.av = load i32, ptr %i.e, align 4, !tbaa !12
  %i.aw = getelementptr i8, ptr %i.as, i64 8
  store i32 %i.av, ptr %i.aw, align 1
  %i.ax = add nsw i32 %.0217285, 12
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite227 = call i64 @fwrite(ptr nonnull @.str.5, i64 4, i64 1, ptr %i.ay) #11 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.az = phi i32 [ %.pre, %bb.e ], [ %i.at, %.critedge ]
  call void @Ptngc_comp_conv_to_mtf_partial3(ptr noundef nonnull %i.q, i32 noundef %i.az, ptr noundef %i.v) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.w
  %.0216281 = phi i32 [ %4, %bb.f ], [ %.1247251, %bb.w ]
  %.1218279 = phi i32 [ %i.ax, %bb.f ], [ %.4, %bb.w ] ; 3 uses
  %.0222278 = phi i32 [ 0, %bb.f ], [ %i.ml, %bb.w ] ; 3 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.6, i32 noundef %.0222278) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !12  ; 7 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %iter.check366, label %._crit_edge

iter.check366:                                    ; preds = %bb.i
  %i.be = mul nuw nsw i32 %i.bc, %.0222278        ; 6 uses
  %i.bf = zext nneg i32 %i.bc to i64              ; 9 uses
  %min.iters.check348 = icmp ult i32 %i.bc, 8
  br i1 %min.iters.check348, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check366
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bh = trunc nsw i64 %i.bg to i32
  %i.bi = add i32 %i.be, %i.bh
  %i.bj = icmp slt i32 %i.bi, %i.be
  %i.bk = icmp ugt i64 %i.bg, 4294967295
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %vector.scevcheck
  %i.bm = shl nuw nsw i64 %i.bf, 2
  %i.bn = getelementptr i8, ptr %i.l, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 4800000
  %i.bp = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bq = getelementptr i8, ptr %i.v, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.v, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bf
  %bound0350 = icmp ult ptr %i.r, %i.bs
  %bound1351 = icmp ult ptr %i.bq, %i.bo
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %.lr.ph.preheader, label %vector.main.loop.iter.check353

vector.main.loop.iter.check353:                   ; preds = %vector.memcheck349
  %min.iters.check354 = icmp ult i32 %i.bc, 32
  br i1 %min.iters.check354, label %vec.epilog.ph370, label %vector.ph355

vector.ph355:                                     ; preds = %vector.main.loop.iter.check353
  %i.bt = and i64 %i.bf, 24
  %n.vec356 = and i64 %i.bf, 2147483616           ; 4 uses
  br label %vector.body357

vector.body357:                                   ; preds = %vector.ph355, %vector.body357
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ] ; 3 uses
  %i.bu = trunc nuw nsw i64 %index358 to i32
  %i.bv = add nsw i32 %i.be, %i.bu
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.v, i64 %i.bw ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %wide.load359 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !13, !alias.scope !33
  %wide.load360 = load <8 x i8>, ptr %i.by, align 1, !tbaa !13, !alias.scope !33
  %wide.load361 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !13, !alias.scope !33
  %wide.load362 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !13, !alias.scope !33
  %i.cb = zext <8 x i8> %wide.load359 to <8 x i32>
  %i.cc = zext <8 x i8> %wide.load360 to <8 x i32>
  %i.cd = zext <8 x i8> %wide.load361 to <8 x i32>
  %i.ce = zext <8 x i8> %wide.load362 to <8 x i32>
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index358 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x i32> %i.cb, ptr %i.cf, align 4, !tbaa !12, !alias.scope !34, !noalias !33
  store <8 x i32> %i.cc, ptr %i.cg, align 4, !tbaa !12, !alias.scope !34, !noalias !33
  store <8 x i32> %i.cd, ptr %i.ch, align 4, !tbaa !12, !alias.scope !34, !noalias !33
  store <8 x i32> %i.ce, ptr %i.ci, align 4, !tbaa !12, !alias.scope !34, !noalias !33
  %index.next363 = add nuw i64 %index358, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.cj, label %middle.block364, label %vector.body357, !llvm.loop !22

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %n.vec356, %i.bf
  br i1 %cmp.n365, label %._crit_edge, label %vec.epilog.iter.check367

vec.epilog.iter.check367:                         ; preds = %middle.block364
  %min.epilog.iters.check369 = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph.preheader, label %vec.epilog.ph370, !prof !16

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check353, %vec.epilog.iter.check367
  %vec.epilog.resume.val371 = phi i64 [ %n.vec356, %vec.epilog.iter.check367 ], [ 0, %vector.main.loop.iter.check353 ]
  %n.vec372 = and i64 %i.bf, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body373

vec.epilog.vector.body373:                        ; preds = %vec.epilog.vector.body373, %vec.epilog.ph370
  %index374 = phi i64 [ %vec.epilog.resume.val371, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body373 ] ; 3 uses
  %i.ck = trunc nuw nsw i64 %index374 to i32
  %i.cl = add nsw i32 %i.be, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.v, i64 %i.cm
  %wide.load375 = load <8 x i8>, ptr %i.cn, align 1, !tbaa !13, !alias.scope !33
  %i.co = zext <8 x i8> %wide.load375 to <8 x i32>
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index374
  store <8 x i32> %i.co, ptr %i.cp, align 4, !tbaa !12, !alias.scope !34, !noalias !33
  %index.next376 = add nuw i64 %index374, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next376, %n.vec372
  br i1 %i.cq, label %vec.epilog.middle.block377, label %vec.epilog.vector.body373, !llvm.loop !23

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body373
  %cmp.n378 = icmp eq i64 %n.vec372, %i.bf
  br i1 %cmp.n378, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check366, %vector.scevcheck, %vector.memcheck349, %vec.epilog.iter.check367, %vec.epilog.middle.block377
  %indvars.iv.ph = phi i64 [ 0, %iter.check366 ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck349 ], [ %n.vec356, %vec.epilog.iter.check367 ], [ %n.vec372, %vec.epilog.middle.block377 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block364, %vec.epilog.middle.block377, %bb.i
  %i.cr = icmp eq i32 %.0216281, 1
  br i1 %i.cr, label %bb.j, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = add nuw nsw i32 %i.be, %i.cs
  %6 = zext nneg i32 %i.ct to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 %6
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !24

bb.j:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.k, label %.thread256

bb.k:                                             ; preds = %bb.j
  call void @Ptngc_comp_to_lz77(ptr noundef nonnull %i.r, i32 noundef %i.bc, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.g) #9
  %i.cz = load i32, ptr %i.h, align 4, !tbaa !12
  %i.da = icmp slt i32 %i.cz, 2
  br i1 %i.da, label %..thread249_crit_edge, label %.critedge240

..thread249_crit_edge:                            ; preds = %bb.k
  %.pre311 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %.thread249

.thread256:                                       ; preds = %bb.j
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite228 = call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr %i.db) #11 ; 0 uses
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !12
  call void @Ptngc_comp_to_lz77(ptr noundef nonnull %i.r, i32 noundef %i.dc, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.g) #9
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.de = load i32, ptr %i.f, align 4, !tbaa !12
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.8, i32 noundef %i.de) #10 ; 0 uses
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dh = load i32, ptr %i.h, align 4, !tbaa !12
  %i.di = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.9, i32 noundef %i.dh) #10 ; 0 uses
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !12
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.10, i32 noundef %i.dk) #10 ; 0 uses
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !12
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %.thread253, label %.thread257

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not, label %.thread249, label %.thread253

.thread253:                                       ; preds = %.thread256, %bb.l
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite229 = call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %i.do) #11 ; 0 uses
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !12
  call void @Ptngc_comp_conv_to_rle(ptr noundef nonnull %i.r, i32 noundef %i.dp, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, i32 noundef 1) #9
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dr = load i32, ptr %i.f, align 4, !tbaa !12
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.12, i32 noundef %i.dr) #10 ; 0 uses
  br label %.thread257

.thread249:                                       ; preds = %..thread249_crit_edge, %bb.l
  %i.dt = phi i32 [ %.pre311, %..thread249_crit_edge ], [ %i.bc, %bb.l ]
  call void @Ptngc_comp_conv_to_rle(ptr noundef nonnull %i.r, i32 noundef %i.dt, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, i32 noundef 1) #9
  br label %.critedge240

.thread257:                                       ; preds = %.thread256, %.thread253
  %.sink = phi i8 [ 0, %.thread253 ], [ 1, %.thread256 ]
  %i.du = phi i1 [ false, %.thread253 ], [ true, %.thread256 ]
  %.1247255 = phi i32 [ 0, %.thread253 ], [ 1, %.thread256 ]
  %i.dv = sext i32 %.1218279 to i64
  %i.dw = getelementptr inbounds i8, ptr %2, i64 %i.dv ; 2 uses
  store i8 %.sink, ptr %i.dw, align 1, !tbaa !13
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite230 = call i64 @fwrite(ptr nonnull @.str.13, i64 8, i64 1, ptr %i.dx) #11 ; 0 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.s, i32 noundef %i.dy, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !12
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.14, i32 noundef %i.ea) #10 ; 0 uses
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ed = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 0) #9
  %i.ee = load i32, ptr %i.c, align 4, !tbaa !12
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !12
  %i.eg = sub nsw i32 %i.ee, %i.ef
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.15, ptr noundef %i.ed, i32 noundef %i.eg) #10 ; 0 uses
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ej = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 1) #9
  %i.ek = load i32, ptr %i.y, align 4, !tbaa !12
  %i.el = load i32, ptr %i.b, align 4, !tbaa !12
  %i.em = sub nsw i32 %i.ek, %i.el
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.15, ptr noundef %i.ej, i32 noundef %i.em) #10 ; 0 uses
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ep = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 2) #9
  %i.eq = load i32, ptr %i.z, align 4, !tbaa !12
  %i.er = load i32, ptr %i.b, align 4, !tbaa !12
  %i.es = sub nsw i32 %i.eq, %i.er
  %i.et = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str.15, ptr noundef %i.ep, i32 noundef %i.es) #10 ; 0 uses
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ev = load i32, ptr %i.d, align 4, !tbaa !12
  %i.ew = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef %i.ev) #9
  %i.ex = load i32, ptr %i.i, align 4, !tbaa !12
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.16, ptr noundef %i.ew, i32 noundef %i.ex) #10 ; 0 uses
  br label %bb.m

.critedge240:                                     ; preds = %bb.k, %.thread249
  %.sink321 = phi i8 [ 0, %.thread249 ], [ 1, %bb.k ]
  %i.ez = phi i1 [ false, %.thread249 ], [ true, %bb.k ]
  %.1247252 = phi i32 [ 0, %.thread249 ], [ 1, %bb.k ]
  %i.fa = sext i32 %.1218279 to i64
  %i.fb = getelementptr inbounds i8, ptr %2, i64 %i.fa ; 2 uses
  store i8 %.sink321, ptr %i.fb, align 1, !tbaa !13
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.fc = load i32, ptr %i.f, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.s, i32 noundef %i.fc, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  br label %bb.m

bb.m:                                             ; preds = %.critedge240, %.thread257
  %i.fd = phi ptr [ %i.fb, %.critedge240 ], [ %i.dw, %.thread257 ] ; 2 uses
  %i.fe = phi i1 [ %i.ez, %.critedge240 ], [ %i.du, %.thread257 ]
  %.1247251 = phi i32 [ %.1247252, %.critedge240 ], [ %.1247255, %.thread257 ]
  %i.ff = load i32, ptr %i.f, align 4, !tbaa !12
  %i.fg = getelementptr i8, ptr %i.fd, i64 1
  store i32 %i.ff, ptr %i.fg, align 1
  %i.fh = load i32, ptr %i.i, align 4, !tbaa !12  ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fd, i64 5
  store i32 %i.fh, ptr %i.fi, align 1
  %i.fj = add i32 %.1218279, 9                    ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  %i.fm = sext i32 %i.fh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr align 1 %i.p, i64 %i.fm, i1 false)
  %i.fn = add i32 %i.fh, %i.fj                    ; 5 uses
  br i1 %i.fe, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.fo = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.fp = sext i32 %i.fn to i64
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp ; 2 uses
  store i32 %i.fo, ptr %i.fq, align 1
  %i.fr = add nsw i32 %i.fn, 4                    ; 3 uses
  %i.fs = icmp sgt i32 %i.fo, 0
  br i1 %i.fs, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %.critedge242, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite231 = call i64 @fwrite(ptr nonnull @.str.17, i64 20, i64 1, ptr %i.ft) #11 ; 0 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.fu = load i32, ptr %i.g, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.t, i32 noundef %i.fu, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fw = load i32, ptr %i.b, align 4, !tbaa !12
  %i.fx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.14, i32 noundef %i.fw) #10 ; 0 uses
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fz = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 0) #9
  %i.ga = load i32, ptr %i.c, align 4, !tbaa !12
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !12
  %i.gc = sub nsw i32 %i.ga, %i.gb
  %i.gd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.15, ptr noundef %i.fz, i32 noundef %i.gc) #10 ; 0 uses
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gf = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 1) #9
  %i.gg = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !12
  %i.gi = sub nsw i32 %i.gg, %i.gh
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.15, ptr noundef %i.gf, i32 noundef %i.gi) #10 ; 0 uses
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gl = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 2) #9
  %i.gm = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.gn = load i32, ptr %i.b, align 4, !tbaa !12
  %i.go = sub nsw i32 %i.gm, %i.gn
  %i.gp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.15, ptr noundef %i.gl, i32 noundef %i.go) #10 ; 0 uses
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gr = load i32, ptr %i.d, align 4, !tbaa !12
  %i.gs = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef %i.gr) #9
  %i.gt = load i32, ptr %i.i, align 4, !tbaa !12
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str.16, ptr noundef %i.gs, i32 noundef %i.gt) #10 ; 0 uses
  br label %bb.q

.critedge242:                                     ; preds = %bb.o
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.t, i32 noundef %i.fo, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  br label %bb.q

bb.q:                                             ; preds = %.critedge242, %bb.p
  %i.gv = load i32, ptr %i.i, align 4, !tbaa !12  ; 4 uses
  %i.gw = load i32, ptr %i.g, align 4, !tbaa !12  ; 5 uses
  %i.gx = shl nsw i32 %i.gw, 1                    ; 2 uses
  %i.gy = icmp slt i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = sext i32 %i.fr to i64
  %i.ha = getelementptr inbounds i8, ptr %2, i64 %i.gz
  store i8 0, ptr %i.ha, align 1, !tbaa !13
  %i.hb = getelementptr i8, ptr %i.fq, i64 5
  store i32 %i.gv, ptr %i.hb, align 1
  %i.hc = add nsw i32 %i.fn, 9                    ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %2, i64 %i.hd
  %i.hf = sext i32 %i.gv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.he, ptr align 1 %i.p, i64 %i.hf, i1 false)
  %i.hg = add nsw i32 %i.gv, %i.hc
  br label %bb.t

bb.s:                                             ; preds = %bb.q
end_hunk_0
