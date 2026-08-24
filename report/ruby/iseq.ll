Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iseq?download=true
inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@iseq_data_to_ary:bb.a
  %i.bn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.61, i64 noundef 3) #20 ; 3 uses
  store i64 %i.bn, ptr @iseq_data_to_ary.rbimpl_id.206, align 8, !tbaa !11
  %.not.i397 = icmp eq i64 %i.bn, 0
  br i1 %.not.i397, label %.lr.ph.i396, label %rbimpl_intern_const.exit398, !llvm.loop !272

rbimpl_intern_const.exit398:                      ; preds = %.lr.ph.i396, %._crit_edge719
  %.lcssa.i395 = phi i64 [ %.pr.i393, %._crit_edge719 ], [ %i.bn, %.lr.ph.i396 ]
  %i.bo = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i395) #20
  %i.bp = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.bo, i64 noundef %i.bd) #20 ; 0 uses
  %.pre833 = load i16, ptr %i.au, align 8
  br label %bb.j

bb.j:                                             ; preds = %rbimpl_intern_const.exit398, %._crit_edge
  %i.bq = phi i16 [ %.pre833, %rbimpl_intern_const.exit398 ], [ %i.ax, %._crit_edge ] ; 2 uses
  %i.br = and i16 %i.bq, 1
  %.not364 = icmp eq i16 %i.br, 0
  br i1 %.not364, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.pr.i399 = load i64, ptr @iseq_data_to_ary.rbimpl_id.207, align 8, !tbaa !11 ; 2 uses
  %.not4.i400 = icmp eq i64 %.pr.i399, 0
  br i1 %.not4.i400, label %.lr.ph.i402, label %rbimpl_intern_const.exit404

.lr.ph.i402:                                      ; preds = %bb.k, %.lr.ph.i402
  %i.bs = tail call i64 @rb_intern2(ptr noundef nonnull @.str.208, i64 noundef 8) #20 ; 3 uses
  store i64 %i.bs, ptr @iseq_data_to_ary.rbimpl_id.207, align 8, !tbaa !11
  %.not.i403 = icmp eq i64 %i.bs, 0
  br i1 %.not.i403, label %.lr.ph.i402, label %rbimpl_intern_const.exit404, !llvm.loop !272

rbimpl_intern_const.exit404:                      ; preds = %.lr.ph.i402, %bb.k
  %.lcssa.i401 = phi i64 [ %.pr.i399, %bb.k ], [ %i.bs, %.lr.ph.i402 ]
  %i.bt = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i401) #20
  %i.bu = getelementptr i8, ptr %i.g, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !321
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = or disjoint i64 %i.bx, 1
  %i.bz = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.bt, i64 noundef %i.by) #20 ; 0 uses
  %.pre834 = load i16, ptr %i.au, align 8
  br label %bb.l

bb.l:                                             ; preds = %rbimpl_intern_const.exit404, %bb.j
  %i.ca = phi i16 [ %.pre834, %rbimpl_intern_const.exit404 ], [ %i.bq, %bb.j ] ; 2 uses
  %i.cb = and i16 %i.ca, 8
  %.not365 = icmp eq i16 %i.cb, 0
  br i1 %.not365, label %.thread899, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr.i405 = load i64, ptr @iseq_data_to_ary.rbimpl_id.209, align 8, !tbaa !11 ; 2 uses
  %.not4.i406 = icmp eq i64 %.pr.i405, 0
  br i1 %.not4.i406, label %.lr.ph.i408, label %.loopexit906

.lr.ph.i408:                                      ; preds = %bb.m, %.lr.ph.i408
  %i.cc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.210, i64 noundef 8) #20 ; 3 uses
  store i64 %i.cc, ptr @iseq_data_to_ary.rbimpl_id.209, align 8, !tbaa !11
  %.not.i409 = icmp eq i64 %i.cc, 0
  br i1 %.not.i409, label %.lr.ph.i408, label %.loopexit906, !llvm.loop !272

.loopexit906:                                     ; preds = %.lr.ph.i408, %bb.m
  %.lcssa.i407 = phi i64 [ %.pr.i405, %bb.m ], [ %i.cc, %.lr.ph.i408 ]
  %i.cd = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i407) #20
  %i.ce = getelementptr i8, ptr %i.g, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !323
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 1
  %i.ci = or disjoint i64 %i.ch, 1
  %i.cj = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.cd, i64 noundef %i.ci) #20 ; 0 uses
  %.pre835 = load i16, ptr %i.au, align 8         ; 2 uses
  %.pre843.a = and i16 %.pre835, 8
  %i.ck = icmp eq i16 %.pre843.a, 0
  br i1 %i.ck, label %.thread899, label %bb.n

bb.n:                                             ; preds = %.loopexit906
  %.pr.i411 = load i64, ptr @iseq_data_to_ary.rbimpl_id.211, align 8, !tbaa !11 ; 2 uses
  %.not4.i412 = icmp eq i64 %.pr.i411, 0
  br i1 %.not4.i412, label %.lr.ph.i414, label %rbimpl_intern_const.exit416

.lr.ph.i414:                                      ; preds = %bb.n, %.lr.ph.i414
  %i.cl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.212, i64 noundef 10) #20 ; 3 uses
  store i64 %i.cl, ptr @iseq_data_to_ary.rbimpl_id.211, align 8, !tbaa !11
  %.not.i415 = icmp eq i64 %i.cl, 0
  br i1 %.not.i415, label %.lr.ph.i414, label %rbimpl_intern_const.exit416, !llvm.loop !272

rbimpl_intern_const.exit416:                      ; preds = %.lr.ph.i414, %bb.n
  %.lcssa.i413 = phi i64 [ %.pr.i411, %bb.n ], [ %i.cl, %.lr.ph.i414 ]
  %i.cm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i413) #20
  %i.cn = getelementptr i8, ptr %i.g, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !326
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 1
  %i.cr = or disjoint i64 %i.cq, 1
  %i.cs = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.cm, i64 noundef %i.cr) #20 ; 0 uses
  %.pre836 = load i16, ptr %i.au, align 8
  br label %.thread899

.thread899:                                       ; preds = %bb.l, %rbimpl_intern_const.exit416, %.loopexit906
  %i.ct = phi i16 [ %.pre836, %rbimpl_intern_const.exit416 ], [ %.pre835, %.loopexit906 ], [ %i.ca, %bb.l ] ; 2 uses
  %i.cu = and i16 %i.ct, 4
  %.not367 = icmp eq i16 %i.cu, 0
  br i1 %.not367, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread899
  %.pr.i417 = load i64, ptr @iseq_data_to_ary.rbimpl_id.213, align 8, !tbaa !11 ; 2 uses
  %.not4.i418 = icmp eq i64 %.pr.i417, 0
  br i1 %.not4.i418, label %.lr.ph.i420, label %rbimpl_intern_const.exit422

.lr.ph.i420:                                      ; preds = %bb.o, %.lr.ph.i420
  %i.cv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.214, i64 noundef 10) #20 ; 3 uses
  store i64 %i.cv, ptr @iseq_data_to_ary.rbimpl_id.213, align 8, !tbaa !11
  %.not.i421 = icmp eq i64 %i.cv, 0
  br i1 %.not.i421, label %.lr.ph.i420, label %rbimpl_intern_const.exit422, !llvm.loop !272

rbimpl_intern_const.exit422:                      ; preds = %.lr.ph.i420, %bb.o
  %.lcssa.i419 = phi i64 [ %.pr.i417, %bb.o ], [ %i.cv, %.lr.ph.i420 ]
  %i.cw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i419) #20
  %i.cx = getelementptr i8, ptr %i.g, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !322
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 1
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.cw, i64 noundef %i.db) #20 ; 0 uses
  %.pre837 = load i16, ptr %i.au, align 8
  br label %bb.p

bb.p:                                             ; preds = %rbimpl_intern_const.exit422, %.thread899
  %i.dd = phi i16 [ %.pre837, %rbimpl_intern_const.exit422 ], [ %i.ct, %.thread899 ] ; 2 uses
  %i.de = and i16 %i.dd, 64
  %.not368 = icmp eq i16 %i.de, 0
  br i1 %.not368, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.pr.i423 = load i64, ptr @iseq_data_to_ary.rbimpl_id.215, align 8, !tbaa !11 ; 2 uses
  %.not4.i424 = icmp eq i64 %.pr.i423, 0
  br i1 %.not4.i424, label %.lr.ph.i426, label %rbimpl_intern_const.exit428

.lr.ph.i426:                                      ; preds = %bb.q, %.lr.ph.i426
  %i.df = tail call i64 @rb_intern2(ptr noundef nonnull @.str.216, i64 noundef 11) #20 ; 3 uses
  store i64 %i.df, ptr @iseq_data_to_ary.rbimpl_id.215, align 8, !tbaa !11
  %.not.i427 = icmp eq i64 %i.df, 0
  br i1 %.not.i427, label %.lr.ph.i426, label %rbimpl_intern_const.exit428, !llvm.loop !272

rbimpl_intern_const.exit428:                      ; preds = %.lr.ph.i426, %bb.q
  %.lcssa.i425 = phi i64 [ %.pr.i423, %bb.q ], [ %i.df, %.lr.ph.i426 ]
  %i.dg = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i425) #20
  %i.dh = getelementptr i8, ptr %i.g, i64 44
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !324
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 1
  %i.dl = or disjoint i64 %i.dk, 1
  %i.dm = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.dg, i64 noundef %i.dl) #20 ; 0 uses
  %.pre838 = load i16, ptr %i.au, align 8
  br label %bb.r

bb.r:                                             ; preds = %rbimpl_intern_const.exit428, %bb.p
  %i.dn = phi i16 [ %.pre838, %rbimpl_intern_const.exit428 ], [ %i.dd, %bb.p ] ; 2 uses
  %i.do = and i16 %i.dn, 16
  %.not369 = icmp eq i16 %i.do, 0
  br i1 %.not369, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = tail call i64 @rb_ary_new() #20         ; 3 uses
  %i.dq = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !141
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph722, label %.preheader665

.lr.ph722:                                        ; preds = %bb.s
  %i.dt = getelementptr i8, ptr %i.aw, i64 16
  br label %bb.t

.preheader665.loopexit:                           ; preds = %bb.t
  %i.du = trunc nuw nsw i64 %indvars.iv.next816 to i32
  br label %.preheader665

.preheader665:                                    ; preds = %.preheader665.loopexit, %bb.s
  %.0349.lcssa = phi i32 [ 0, %bb.s ], [ %i.du, %.preheader665.loopexit ] ; 2 uses
  %i.dv = load i32, ptr %i.aw, align 8, !tbaa !97
  %i.dw = icmp slt i32 %.0349.lcssa, %i.dv
  br i1 %i.dw, label %.lr.ph726, label %._crit_edge727

.lr.ph726:                                        ; preds = %.preheader665
  %i.dx = getelementptr i8, ptr %i.aw, i64 16
  %i.dy = getelementptr i8, ptr %i.aw, i64 24
  %i.dz = zext nneg i32 %.0349.lcssa to i64
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph722, %bb.t
  %indvars.iv815 = phi i64 [ 0, %.lr.ph722 ], [ %indvars.iv.next816, %bb.t ] ; 2 uses
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !93
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv815
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ed = tail call i64 @rb_id2sym(i64 noundef %i.ec) #20
  %i.ee = tail call i64 @rb_ary_push(i64 noundef %i.dp, i64 noundef %i.ed) #20 ; 0 uses
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1 ; 3 uses
  %i.ef = load i32, ptr %i.dq, align 4, !tbaa !141
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next816, %i.eg
  br i1 %i.eh, label %bb.t, label %.preheader665.loopexit, !llvm.loop !395

bb.u:                                             ; preds = %.lr.ph726, %bb.w
  %indvars.iv818.a = phi i64 [ 0, %.lr.ph726 ], [ %indvars.iv.next821, %bb.w ] ; 2 uses
  %indvars.iv818 = phi i64 [ %i.dz, %.lr.ph726 ], [ %indvars.iv.next819, %bb.w ] ; 2 uses
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !93
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %indvars.iv818
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11
  %i.el = tail call i64 @rb_id2sym(i64 noundef %i.ek) #20
  %i.em = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.el) #20 ; 2 uses
  %i.en = load ptr, ptr %i.dy, align 8, !tbaa !98
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %indvars.iv818.a
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !11 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 36
  br i1 %i.eq, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = tail call i64 @rb_ary_push(i64 noundef %i.em, i64 noundef %i.ep) #20 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.es = tail call i64 @rb_ary_push(i64 noundef %i.dp, i64 noundef %i.em) #20 ; 0 uses
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv818.a, 1
  %i.et = load i32, ptr %i.aw, align 8, !tbaa !97
  %i.eu = trunc nuw i64 %indvars.iv.next819 to i32
  %i.ev = icmp sgt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.u, label %._crit_edge727, !llvm.loop !396

._crit_edge727:                                   ; preds = %bb.w, %.preheader665
  %.pr.i429 = load i64, ptr @iseq_data_to_ary.rbimpl_id.217, align 8, !tbaa !11 ; 2 uses
  %.not4.i430 = icmp eq i64 %.pr.i429, 0
  br i1 %.not4.i430, label %.lr.ph.i432, label %rbimpl_intern_const.exit434

.lr.ph.i432:                                      ; preds = %._crit_edge727, %.lr.ph.i432
  %i.ew = tail call i64 @rb_intern2(ptr noundef nonnull @.str.218, i64 noundef 6) #20 ; 3 uses
  store i64 %i.ew, ptr @iseq_data_to_ary.rbimpl_id.217, align 8, !tbaa !11
  %.not.i433 = icmp eq i64 %i.ew, 0
  br i1 %.not.i433, label %.lr.ph.i432, label %rbimpl_intern_const.exit434, !llvm.loop !272

rbimpl_intern_const.exit434:                      ; preds = %.lr.ph.i432, %._crit_edge727
  %.lcssa.i431 = phi i64 [ %.pr.i429, %._crit_edge727 ], [ %i.ew, %.lr.ph.i432 ]
  %i.ex = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i431) #20
  %i.ey = getelementptr i8, ptr %i.aw, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !96
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 1
  %i.fc = or disjoint i64 %i.fb, 1
  %i.fd = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.ex, i64 noundef %i.fc) #20 ; 0 uses
  %.pr.i435 = load i64, ptr @iseq_data_to_ary.rbimpl_id.219, align 8, !tbaa !11 ; 2 uses
  %.not4.i436 = icmp eq i64 %.pr.i435, 0
  br i1 %.not4.i436, label %.lr.ph.i438, label %rbimpl_intern_const.exit440

.lr.ph.i438:                                      ; preds = %rbimpl_intern_const.exit434, %.lr.ph.i438
  %i.fe = tail call i64 @rb_intern2(ptr noundef nonnull @.str.220, i64 noundef 7) #20 ; 3 uses
  store i64 %i.fe, ptr @iseq_data_to_ary.rbimpl_id.219, align 8, !tbaa !11
  %.not.i439 = icmp eq i64 %i.fe, 0
  br i1 %.not.i439, label %.lr.ph.i438, label %rbimpl_intern_const.exit440, !llvm.loop !272

rbimpl_intern_const.exit440:                      ; preds = %.lr.ph.i438, %rbimpl_intern_const.exit434
  %.lcssa.i437 = phi i64 [ %.pr.i435, %rbimpl_intern_const.exit434 ], [ %i.fe, %.lr.ph.i438 ]
  %i.ff = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i437) #20
  %i.fg = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.ff, i64 noundef %i.dp) #20 ; 0 uses
  %.pre839 = load i16, ptr %i.au, align 8
  br label %bb.x

bb.x:                                             ; preds = %rbimpl_intern_const.exit440, %bb.r
  %i.fh = phi i16 [ %.pre839, %rbimpl_intern_const.exit440 ], [ %i.dn, %bb.r ] ; 2 uses
  %i.fi = and i16 %i.fh, 32
  %.not370 = icmp eq i16 %i.fi, 0
  br i1 %.not370, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.pr.i441 = load i64, ptr @iseq_data_to_ary.rbimpl_id.221, align 8, !tbaa !11 ; 2 uses
  %.not4.i442 = icmp eq i64 %.pr.i441, 0
  br i1 %.not4.i442, label %.lr.ph.i444, label %rbimpl_intern_const.exit446

.lr.ph.i444:                                      ; preds = %bb.y, %.lr.ph.i444
  %i.fj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.222, i64 noundef 6) #20 ; 3 uses
  store i64 %i.fj, ptr @iseq_data_to_ary.rbimpl_id.221, align 8, !tbaa !11
  %.not.i445 = icmp eq i64 %i.fj, 0
  br i1 %.not.i445, label %.lr.ph.i444, label %rbimpl_intern_const.exit446, !llvm.loop !272

rbimpl_intern_const.exit446:                      ; preds = %.lr.ph.i444, %bb.y
  %.lcssa.i443 = phi i64 [ %.pr.i441, %bb.y ], [ %i.fj, %.lr.ph.i444 ]
  %i.fk = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i443) #20
  %i.fl = getelementptr i8, ptr %i.aw, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !325
  %i.fn = sext i32 %i.fm to i64
  %i.fo = shl nsw i64 %i.fn, 1
  %i.fp = or disjoint i64 %i.fo, 1
  %i.fq = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.fk, i64 noundef %i.fp) #20 ; 0 uses
  %.pre840 = load i16, ptr %i.au, align 8
  br label %bb.z

bb.z:                                             ; preds = %rbimpl_intern_const.exit446, %bb.x
  %i.fr = phi i16 [ %.pre840, %rbimpl_intern_const.exit446 ], [ %i.fh, %bb.x ] ; 2 uses
  %i.fs = and i16 %i.fr, 128
  %.not371 = icmp eq i16 %i.fs, 0
  br i1 %.not371, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.pr.i447 = load i64, ptr @iseq_data_to_ary.rbimpl_id.223, align 8, !tbaa !11 ; 2 uses
  %.not4.i448 = icmp eq i64 %.pr.i447, 0
  br i1 %.not4.i448, label %.lr.ph.i450, label %rbimpl_intern_const.exit452

.lr.ph.i450:                                      ; preds = %bb.aa, %.lr.ph.i450
  %i.ft = tail call i64 @rb_intern2(ptr noundef nonnull @.str.224, i64 noundef 16) #20 ; 3 uses
  store i64 %i.ft, ptr @iseq_data_to_ary.rbimpl_id.223, align 8, !tbaa !11
  %.not.i451 = icmp eq i64 %i.ft, 0
  br i1 %.not.i451, label %.lr.ph.i450, label %rbimpl_intern_const.exit452, !llvm.loop !272

rbimpl_intern_const.exit452:                      ; preds = %.lr.ph.i450, %bb.aa
  %.lcssa.i449 = phi i64 [ %.pr.i447, %bb.aa ], [ %i.ft, %.lr.ph.i450 ]
  %i.fu = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i449) #20
  %i.fv = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.fu, i64 noundef 20) #20 ; 0 uses
  %.pre841 = load i16, ptr %i.au, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %rbimpl_intern_const.exit452, %bb.z
  %i.fw = phi i16 [ %.pre841, %rbimpl_intern_const.exit452 ], [ %i.fr, %bb.z ]
  %i.fx = and i16 %i.fw, 4096
  %.not372 = icmp eq i16 %i.fx, 0
  br i1 %.not372, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.pr.i453 = load i64, ptr @iseq_data_to_ary.rbimpl_id.225, align 8, !tbaa !11 ; 2 uses
  %.not4.i454 = icmp eq i64 %.pr.i453, 0
  br i1 %.not4.i454, label %.lr.ph.i456, label %rbimpl_intern_const.exit458

.lr.ph.i456:                                      ; preds = %bb.ac, %.lr.ph.i456
  %i.fy = tail call i64 @rb_intern2(ptr noundef nonnull @.str.226, i64 noundef 9) #20 ; 3 uses
  store i64 %i.fy, ptr @iseq_data_to_ary.rbimpl_id.225, align 8, !tbaa !11
  %.not.i457 = icmp eq i64 %i.fy, 0
  br i1 %.not.i457, label %.lr.ph.i456, label %rbimpl_intern_const.exit458, !llvm.loop !272

rbimpl_intern_const.exit458:                      ; preds = %.lr.ph.i456, %bb.ac
  %.lcssa.i455 = phi i64 [ %.pr.i453, %bb.ac ], [ %i.fy, %.lr.ph.i456 ]
  %i.fz = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i455) #20
  %i.ga = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.fz, i64 noundef 20) #20 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %rbimpl_intern_const.exit458, %bb.ab
  %i.gb = tail call ptr @rb_iseq_original_iseq(ptr noundef %0) #20 ; 5 uses
  %i.gc = getelementptr i8, ptr %i.g, i64 4       ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !89
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr [8 x i8], ptr %i.gb, i64 %i.ge
  %i.gg = icmp ult ptr %i.gb, %i.gf
  br i1 %i.gg, label %.lr.ph747, label %._crit_edge748

.lr.ph747:                                        ; preds = %bb.ad
  %i.gh = ptrtoint ptr %i.gb to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph747, %._crit_edge743
  %.0345745 = phi ptr [ %i.gb, %.lr.ph747 ], [ %.1346.lcssa, %._crit_edge743 ] ; 2 uses
  %i.gi = getelementptr i8, ptr %.0345745, i64 8  ; 3 uses
  %i.gj = load i64, ptr %.0345745, align 8, !tbaa !11 ; 3 uses
  %i.gk = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !90  ; 3 uses
  %i.gm = zext i8 %i.gl to i64                    ; 2 uses
  %i.gn = tail call i64 @rb_ary_new_capa(i64 noundef %i.gm) #20 ; 3 uses
  %i.go = urem i64 %i.gj, 109
  %i.gp = getelementptr [8 x i8], ptr @iseq_data_to_ary.insn_syms, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !11
  %i.gr = tail call i64 @rb_id2sym(i64 noundef %i.gq) #20
  %i.gs = tail call i64 @rb_ary_push(i64 noundef %i.gn, i64 noundef %i.gr) #20 ; 0 uses
  %i.gt = icmp ugt i8 %i.gl, 1
  br i1 %i.gt, label %.lr.ph742, label %._crit_edge743

.lr.ph742:                                        ; preds = %bb.ae
  %i.gu = zext i8 %i.gl to i64
  %i.gv = add nuw nsw i64 %i.gu, 4294967295
  %i.gw = getelementptr [8 x i8], ptr %i.gi, i64 %i.gm
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8
  %i.gy = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.gj
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gz, %i.gh
  %i.hb = ashr exact i64 %i.ha, 3                 ; 2 uses
  %wide.trip.count827 = and i64 %i.gv, 4294967295
  %i.hc = load i16, ptr %i.gy, align 2, !tbaa !296
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.hd
  br label %insn_op_type.exit

insn_op_type.exit:                                ; preds = %obj_resurrect.exit, %.lr.ph742
  %indvars.iv824 = phi i64 [ 0, %.lr.ph742 ], [ %indvars.iv.next825, %obj_resurrect.exit ] ; 2 uses
  %.1346740 = phi ptr [ %i.gi, %.lr.ph742 ], [ %i.oh, %obj_resurrect.exit ] ; 15 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 %indvars.iv824
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !90  ; 3 uses
  switch i8 %i.hg, label %insn_op_type.exit.thread [
    i8 79, label %bb.af
    i8 76, label %bb.ag
    i8 78, label %bb.ag
    i8 86, label %bb.ah
    i8 83, label %bb.an
    i8 75, label %bb.ap
    i8 65, label %bb.aq
    i8 74, label %bb.aq
    i8 84, label %bb.aq
    i8 67, label %bb.av
    i8 73, label %bb.bc
    i8 72, label %bb.bd
    i8 70, label %bb.bi
    i8 82, label %bb.bl
  ]

bb.af:                                            ; preds = %insn_op_type.exit
  %i.hh = load i64, ptr %.1346740, align 8, !tbaa !11
  %i.hi = add i64 %i.hh, %i.hb                    ; 2 uses
  %i.hj = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.hi) #20
  %i.hk = tail call i64 @rb_str_intern(i64 noundef %i.hj) #20 ; 2 uses
  %i.hl = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.hi, i64 noundef %i.hk) #20 ; 0 uses
  br label %obj_resurrect.exit

bb.ag:                                            ; preds = %insn_op_type.exit, %insn_op_type.exit
  %i.hm = load i64, ptr %.1346740, align 8, !tbaa !11
  %i.hn = shl i64 %i.hm, 1
  %i.ho = or disjoint i64 %i.hn, 1
  br label %obj_resurrect.exit

bb.ah:                                            ; preds = %insn_op_type.exit
  %i.hp = load i64, ptr %.1346740, align 8, !tbaa !11 ; 9 uses
end_hunk_0
