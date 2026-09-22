Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/decode?download=true
inline.NumInlined: 144
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@insn_get_prefixes:bb.a
  %exitcond.3.i.i = icmp eq i64 %i.i, 3
  %or.cond28.i.i = or i1 %exitcond.3.i.i, %.not23.2.i.i
  br i1 %or.cond28.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %.0.copyload.3.i.i = load i8, ptr %i.l, align 1
  %.not23.3.i.i = icmp ne i8 %.0.copyload.3.i.i, 101
  %exitcond.4.i.i = icmp eq i64 %i.i, 4
  %or.cond29.i.i = or i1 %exitcond.4.i.i, %.not23.3.i.i
  br i1 %or.cond29.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.4.i.i = load i8, ptr %i.m, align 1
  %.not23.4.i.i = icmp eq i8 %.0.copyload.4.i.i, 110
  br i1 %.not23.4.i.i, label %__insn_get_emulate_prefix.exit22.sink.split.i, label %bb.h

bb.g:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i8, ptr %i.d, align 1
  %.not23.i.i = icmp ne i8 %.0.copyload.i.i, 15
  %exitcond.1.i.i = icmp eq i64 %i.i, 1
  %or.cond.i.i = or i1 %exitcond.1.i.i, %.not23.i.i
  br i1 %or.cond.i.i, label %insn_get_emulate_prefix.exit, label %bb.c

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.0.copyload.2.i12.i = load i8, ptr %i.n, align 1
  %.not23.2.i13.i = icmp ne i8 %.0.copyload.2.i12.i, 107
  %exitcond.3.i14.i = icmp eq i64 %i.i, 3
  %or.cond28.i15.i = or i1 %exitcond.3.i14.i, %.not23.2.i13.i
  br i1 %or.cond28.i15.i, label %insn_get_emulate_prefix.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %.0.copyload.3.i16.i = load i8, ptr %i.o, align 1
  %.not23.3.i17.i = icmp ne i8 %.0.copyload.3.i16.i, 118
  %exitcond.4.i18.i = icmp eq i64 %i.i, 4
  %or.cond29.i19.i = or i1 %exitcond.4.i18.i, %.not23.3.i17.i
  br i1 %or.cond29.i19.i, label %insn_get_emulate_prefix.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.4.i20.i = load i8, ptr %i.p, align 1
  %.not23.4.i21.i = icmp eq i8 %.0.copyload.4.i20.i, 109
  br i1 %.not23.4.i21.i, label %__insn_get_emulate_prefix.exit22.sink.split.i, label %insn_get_emulate_prefix.exit

__insn_get_emulate_prefix.exit22.sink.split.i:    ; preds = %bb.j, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 5, ptr %i.q, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !21
  br label %insn_get_emulate_prefix.exit

insn_get_emulate_prefix.exit:                     ; preds = %bb.c, %bb.g, %bb.b, %bb.h, %bb.i, %bb.j, %__insn_get_emulate_prefix.exit22.sink.split.i
  %i.s = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.b ], [ %i.r, %__insn_get_emulate_prefix.exit22.sink.split.i ], [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.d, %bb.c ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.not204 = icmp ugt ptr %i.t, %i.g
  br i1 %.not204, label %.loopexit255, label %.preheader254

.preheader254:                                    ; preds = %insn_get_emulate_prefix.exit
  %.0195260 = load i8, ptr %i.s, align 1          ; 2 uses
  %.pn261 = zext i8 %.0195260 to i64
  %.0194.in262 = getelementptr inbounds nuw [4 x i8], ptr @inat_primary_table, i64 %.pn261
  %.0194263 = load i32, ptr %.0194.in262, align 4, !tbaa !12 ; 3 uses
  %i.u = and i32 %.0194263, 31
  %i.v = add nsw i32 %i.u, -12
  %i.w = icmp ult i32 %i.v, -11
  br i1 %i.w, label %._crit_edge268.thread, label %.preheader252.lr.ph

.preheader252.lr.ph:                              ; preds = %.preheader254
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  br label %.preheader252

bb.k:                                             ; preds = %.loopexit253
  %.0195 = load i8, ptr %i.av, align 1            ; 2 uses
  %.pn = zext i8 %.0195 to i64
  %.0194.in = getelementptr inbounds nuw [4 x i8], ptr @inat_primary_table, i64 %.pn
  %.0194 = load i32, ptr %.0194.in, align 4, !tbaa !12 ; 3 uses
  %i.ab = and i32 %.0194, 31
  %i.ac = add nsw i32 %i.ab, -12
  %i.ad = icmp ult i32 %i.ac, -11
  br i1 %i.ad, label %._crit_edge268, label %.preheader252, !llvm.loop !89

.preheader252:                                    ; preds = %.preheader252.lr.ph, %bb.k
  %.pre284290 = phi ptr [ %i.g, %.preheader252.lr.ph ], [ %i.ax, %bb.k ]
  %.pre286 = phi ptr [ %i.s, %.preheader252.lr.ph ], [ %i.av, %bb.k ]
  %.0194267 = phi i32 [ %.0194263, %.preheader252.lr.ph ], [ %.0194, %bb.k ]
  %.0195266 = phi i8 [ %.0195260, %.preheader252.lr.ph ], [ %.0195, %bb.k ] ; 5 uses
  %.0196265 = phi i8 [ 0, %.preheader252.lr.ph ], [ %.0195266, %bb.k ]
  %.0199264 = phi i32 [ 0, %.preheader252.lr.ph ], [ %.1200, %bb.k ] ; 6 uses
  %i.ae = icmp sgt i32 %.0199264, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader252
  %wide.trip.count = zext nneg i32 %.0199264 to i64
  br label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !27
  %i.ah = icmp eq i8 %i.ag, %.0195266
  br i1 %i.ah, label %.loopexit253, label %bb.l

._crit_edge:                                      ; preds = %bb.l
  %i.ai = icmp eq i32 %.0199264, 4
  br i1 %i.ai, label %._crit_edge268, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader252, %._crit_edge
  %i.aj = add nsw i32 %.0199264, 1                ; 4 uses
  %i.ak = sext i32 %.0199264 to i64
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  store i8 %.0195266, ptr %i.al, align 1, !tbaa !27
  switch i8 %.0195266, label %.loopexit253 [
    i8 103, label %bb.m
    i8 102, label %bb.p
  ]

bb.m:                                             ; preds = %._crit_edge.thread
  %i.am = load i8, ptr %i.y, align 1, !tbaa !22
  %.not208 = icmp eq i8 %i.am, 0
  %i.an = load i8, ptr %i.z, align 1, !tbaa !24   ; 2 uses
  br i1 %.not208, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = xor i8 %i.an, 12
  store i8 %i.ao, ptr %i.z, align 1, !tbaa !24
  br label %.loopexit253

bb.o:                                             ; preds = %bb.m
  %i.ap = xor i8 %i.an, 6
  store i8 %i.ap, ptr %i.z, align 1, !tbaa !24
  br label %.loopexit253

bb.p:                                             ; preds = %._crit_edge.thread
  %i.aq = load i8, ptr %i.x, align 8, !tbaa !23
  %i.ar = xor i8 %i.aq, 6
  store i8 %i.ar, ptr %i.x, align 8, !tbaa !23
  br label %.loopexit253

.loopexit253:                                     ; preds = %.lr.ph, %._crit_edge.thread, %bb.o, %bb.n, %bb.p
  %.1200 = phi i32 [ %i.aj, %._crit_edge.thread ], [ %i.aj, %bb.n ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %.0199264, %.lr.ph ] ; 2 uses
  %i.as = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.at = add i8 %i.as, 1
  store i8 %i.at, ptr %i.aa, align 1, !tbaa !28
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 4 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %.not236 = icmp ugt ptr %i.aw, %i.ax
  br i1 %.not236, label %.loopexit255, label %bb.k, !llvm.loop !89

._crit_edge268:                                   ; preds = %bb.k, %._crit_edge
  %.pre284291 = phi ptr [ %.pre284290, %._crit_edge ], [ %i.ax, %bb.k ] ; 3 uses
  %.pre287 = phi ptr [ %.pre286, %._crit_edge ], [ %i.av, %bb.k ] ; 3 uses
  %.0199.lcssa = phi i32 [ 4, %._crit_edge ], [ %.1200, %bb.k ] ; 4 uses
  %.0196.lcssa = phi i8 [ %.0196265, %._crit_edge ], [ %.0195266, %bb.k ] ; 8 uses
  %.0194.lcssa = phi i32 [ %.0194267, %._crit_edge ], [ %.0194, %bb.k ] ; 3 uses
  %.not209 = icmp eq i8 %.0196.lcssa, 0
  br i1 %.not209, label %._crit_edge268.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge268
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27  ; 25 uses
  %.not210 = icmp eq i8 %.0196.lcssa, %i.az
  br i1 %.not210, label %._crit_edge268.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not211 = icmp ne i8 %i.az, 0
  %i.ba = icmp sgt i32 %.0199.lcssa, 0
  %or.cond277 = select i1 %.not211, i1 %i.ba, i1 false
  br i1 %or.cond277, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.r
  %wide.trip.count282 = zext nneg i32 %.0199.lcssa to i64 ; 8 uses
  %i.bb = add nsw i32 %.0199.lcssa, -257
  %or.cond363 = icmp ult i32 %i.bb, -253
  br i1 %or.cond363, label %.lr.ph276.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check316 = icmp ult i32 %.0199.lcssa, 16
  br i1 %min.iters.check316, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %wide.trip.count282, 12
  %n.vec = and i64 %wide.trip.count282, 496       ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.0196.lcssa, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue346
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue346 ] ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !27
  %i.be = icmp eq <16 x i8> %wide.load, %broadcast.splat ; 16 uses
  %i.bf = extractelement <16 x i1> %i.be, i64 0
  br i1 %i.bf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bg = and i64 %index, 240
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store i8 %i.az, ptr %i.bh, align 1, !tbaa !27
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bi = extractelement <16 x i1> %i.be, i64 1
  br i1 %i.bi, label %pred.store.if317, label %pred.store.continue318

pred.store.if317:                                 ; preds = %pred.store.continue
  %i.bj = and i64 %index, 240
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %i.az, ptr %i.bl, align 1, !tbaa !27
  br label %pred.store.continue318

pred.store.continue318:                           ; preds = %pred.store.if317, %pred.store.continue
  %i.bm = extractelement <16 x i1> %i.be, i64 2
  br i1 %i.bm, label %pred.store.if319, label %pred.store.continue320

pred.store.if319:                                 ; preds = %pred.store.continue318
  %i.bn = and i64 %index, 240
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i8 %i.az, ptr %i.bp, align 1, !tbaa !27
  br label %pred.store.continue320

pred.store.continue320:                           ; preds = %pred.store.if319, %pred.store.continue318
  %i.bq = extractelement <16 x i1> %i.be, i64 3
  br i1 %i.bq, label %pred.store.if321, label %pred.store.continue322

pred.store.if321:                                 ; preds = %pred.store.continue320
  %i.br = and i64 %index, 240
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 %i.az, ptr %i.bt, align 1, !tbaa !27
  br label %pred.store.continue322

pred.store.continue322:                           ; preds = %pred.store.if321, %pred.store.continue320
  %i.bu = extractelement <16 x i1> %i.be, i64 4
  br i1 %i.bu, label %pred.store.if323, label %pred.store.continue324

pred.store.if323:                                 ; preds = %pred.store.continue322
  %i.bv = and i64 %index, 240
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i8 %i.az, ptr %i.bx, align 1, !tbaa !27
  br label %pred.store.continue324

pred.store.continue324:                           ; preds = %pred.store.if323, %pred.store.continue322
  %i.by = extractelement <16 x i1> %i.be, i64 5
  br i1 %i.by, label %pred.store.if325, label %pred.store.continue326

pred.store.if325:                                 ; preds = %pred.store.continue324
  %i.bz = and i64 %index, 240
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  store i8 %i.az, ptr %i.cb, align 1, !tbaa !27
  br label %pred.store.continue326

pred.store.continue326:                           ; preds = %pred.store.if325, %pred.store.continue324
  %i.cc = extractelement <16 x i1> %i.be, i64 6
  br i1 %i.cc, label %pred.store.if327, label %pred.store.continue328

pred.store.if327:                                 ; preds = %pred.store.continue326
  %i.cd = and i64 %index, 240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  store i8 %i.az, ptr %i.cf, align 1, !tbaa !27
  br label %pred.store.continue328

pred.store.continue328:                           ; preds = %pred.store.if327, %pred.store.continue326
  %i.cg = extractelement <16 x i1> %i.be, i64 7
  br i1 %i.cg, label %pred.store.if329, label %pred.store.continue330

pred.store.if329:                                 ; preds = %pred.store.continue328
  %i.ch = and i64 %index, 240
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 7
  store i8 %i.az, ptr %i.cj, align 1, !tbaa !27
  br label %pred.store.continue330

pred.store.continue330:                           ; preds = %pred.store.if329, %pred.store.continue328
  %i.ck = extractelement <16 x i1> %i.be, i64 8
  br i1 %i.ck, label %pred.store.if331, label %pred.store.continue332

pred.store.if331:                                 ; preds = %pred.store.continue330
  %i.cl = and i64 %index, 240
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 %i.az, ptr %i.cn, align 1, !tbaa !27
  br label %pred.store.continue332

pred.store.continue332:                           ; preds = %pred.store.if331, %pred.store.continue330
  %i.co = extractelement <16 x i1> %i.be, i64 9
  br i1 %i.co, label %pred.store.if333, label %pred.store.continue334

pred.store.if333:                                 ; preds = %pred.store.continue332
  %i.cp = and i64 %index, 240
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  store i8 %i.az, ptr %i.cr, align 1, !tbaa !27
  br label %pred.store.continue334

pred.store.continue334:                           ; preds = %pred.store.if333, %pred.store.continue332
  %i.cs = extractelement <16 x i1> %i.be, i64 10
  br i1 %i.cs, label %pred.store.if335, label %pred.store.continue336

pred.store.if335:                                 ; preds = %pred.store.continue334
  %i.ct = and i64 %index, 240
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 10
  store i8 %i.az, ptr %i.cv, align 1, !tbaa !27
  br label %pred.store.continue336

pred.store.continue336:                           ; preds = %pred.store.if335, %pred.store.continue334
  %i.cw = extractelement <16 x i1> %i.be, i64 11
  br i1 %i.cw, label %pred.store.if337, label %pred.store.continue338

pred.store.if337:                                 ; preds = %pred.store.continue336
  %i.cx = and i64 %index, 240
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 11
  store i8 %i.az, ptr %i.cz, align 1, !tbaa !27
  br label %pred.store.continue338

pred.store.continue338:                           ; preds = %pred.store.if337, %pred.store.continue336
  %i.da = extractelement <16 x i1> %i.be, i64 12
  br i1 %i.da, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue338
  %i.db = and i64 %index, 240
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i8 %i.az, ptr %i.dd, align 1, !tbaa !27
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue338
  %i.de = extractelement <16 x i1> %i.be, i64 13
  br i1 %i.de, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue340
  %i.df = and i64 %index, 240
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 13
  store i8 %i.az, ptr %i.dh, align 1, !tbaa !27
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue340
  %i.di = extractelement <16 x i1> %i.be, i64 14
  br i1 %i.di, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %i.dj = and i64 %index, 240
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 14
  store i8 %i.az, ptr %i.dl, align 1, !tbaa !27
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.dm = extractelement <16 x i1> %i.be, i64 15
  br i1 %i.dm, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %i.dn = and i64 %index, 240
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 15
  store i8 %i.az, ptr %i.dp, align 1, !tbaa !27
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %pred.store.continue346
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count282
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph276.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec347 = and i64 %wide.trip.count282, 508    ; 3 uses
  %broadcast.splatinsert348 = insertelement <4 x i8> poison, i8 %.0196.lcssa, i64 0
  %broadcast.splat349 = shufflevector <4 x i8> %broadcast.splatinsert348, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue359, %vec.epilog.ph
  %index350 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next360, %pred.store.continue359 ] ; 6 uses
end_hunk_0
