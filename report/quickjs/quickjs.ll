Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_binary_logic_slow:bb.a
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = icmp slt i32 %i.ay, 2
  br i1 %i.ba, label %bb.ab, label %JS_FreeValueRT.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.aa, i64 %i.ab), !inline_history !370
  br label %JS_FreeValueRT.exit

bb.ac:                                            ; preds = %bb.y
  %i.bb = trunc i64 %i.ab to i32
  switch i32 %i.bb, label %.preheader500 [
    i32 -9, label %bb.ad
    i32 7, label %bb.ad
  ]

.preheader500:                                    ; preds = %bb.ad, %bb.ac
  br label %bb.bs

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.bc = trunc i64 %i.ap to i32
  switch i32 %i.bc, label %.preheader500 [
    i32 -9, label %.thread
    i32 7, label %.thread
  ]

.thread:                                          ; preds = %bb.h, %bb.m, %bb.f, %bb.k, %bb.ad, %bb.ad
  %.sroa.082.sroa.0.0 = phi i64 [ %i.aa, %bb.ad ], [ %i.aa, %bb.ad ], [ %.sroa.082.0.copyload251, %bb.k ], [ %.sroa.082.0.copyload251, %bb.f ], [ %.sroa.082.0.copyload251, %bb.m ], [ %.sroa.082.0.copyload251, %bb.h ] ; 4 uses
  %.sroa.064.sroa.0.0 = phi i64 [ %i.ao, %bb.ad ], [ %i.ao, %bb.ad ], [ %.sroa.064.0.copyload252, %bb.k ], [ %.sroa.064.0.copyload252, %bb.f ], [ %.sroa.064.0.copyload252, %bb.m ], [ %.sroa.064.0.copyload252, %bb.h ] ; 4 uses
  %.sroa.13.0 = phi i64 [ %i.ap, %bb.ad ], [ %i.ap, %bb.ad ], [ %.sroa.13.0.copyload, %bb.k ], [ %.sroa.13.0.copyload, %bb.f ], [ %.sroa.13.0.copyload, %bb.m ], [ %.sroa.13.0.copyload, %bb.h ] ; 3 uses
  %.sroa.12.0 = phi i64 [ %i.ab, %bb.ad ], [ %i.ab, %bb.ad ], [ %.sroa.12.0.copyload, %bb.k ], [ %.sroa.12.0.copyload, %bb.f ], [ %.sroa.12.0.copyload, %bb.m ], [ %.sroa.12.0.copyload, %bb.h ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %i.bd = and i64 %.sroa.12.0, 4294967287
  %i.be = icmp eq i64 %i.bd, 7
  br i1 %i.be, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.thread
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.082.sroa.0.0 to i32
  store i32 1, ptr %3, align 4, !tbaa !191
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.bf, align 4, !tbaa !191
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  %i.bg = inttoptr i64 %.sroa.082.sroa.0.0 to ptr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0136 = phi ptr [ %3, %bb.ae ], [ %i.bg, %bb.af ] ; 6 uses
  %.0136364 = ptrtoaddr ptr %.0136 to i64
  %i.bh = and i64 %.sroa.13.0, 4294967295
  %i.bi = icmp eq i64 %i.bh, 7
  br i1 %i.bi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.extract.trunc.i155 = trunc i64 %.sroa.064.sroa.0.0 to i32
  store i32 1, ptr %4, align 4, !tbaa !191
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.0.extract.trunc.i155, ptr %i.bj, align 4, !tbaa !191
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bk = inttoptr i64 %.sroa.064.sroa.0.0 to ptr
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0135 = phi ptr [ %4, %bb.ah ], [ %i.bk, %bb.ai ] ; 4 uses
  switch i32 %2, label %bb.bk [
    i32 161, label %bb.ak
    i32 163, label %bb.ak
    i32 162, label %bb.ak
    i32 158, label %bb.bb
    i32 159, label %bb.bb
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj
  %i.bl = load i32, ptr %.0136, align 4, !tbaa !191 ; 3 uses
  %i.bm = load i32, ptr %.0135, align 4, !tbaa !191 ; 3 uses
  %i.bn = icmp ult i32 %i.bl, %i.bm               ; 7 uses
  %i.bo = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.bm) ; 6 uses
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.bm) ; 14 uses
  %.0136.sroa.gep193 = getelementptr inbounds nuw i8, ptr %.0136, i64 4 ; 7 uses
  %.0135.sroa.gep194 = getelementptr inbounds nuw i8, ptr %.0135, i64 4 ; 7 uses
  %spec.select.i.sroa.sel195 = select i1 %i.bn, ptr %.0136.sroa.gep193, ptr %.0135.sroa.gep194 ; 20 uses
  %spec.select.i.sroa.sel195371 = ptrtoaddr ptr %spec.select.i.sroa.sel195 to i64 ; 3 uses
  %i.bq = add i32 %i.bp, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !191
  %.neg254 = ashr i32 %i.bt, 31                   ; 18 uses
  %i.bu = icmp sgt i32 %i.bo, 32768
  br i1 %i.bu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1715 ; 0 uses
  br label %js_bigint_logic.exit

bb.am:                                            ; preds = %bb.ak
  %i.bw = sext i32 %i.bo to i64                   ; 13 uses
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = add nsw i64 %i.bx, 4                    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !232 ; 8 uses
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %bb.at, label %bb.an, !prof !192

bb.an:                                            ; preds = %bb.am
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !196
  %i.cf = add i64 %i.ce, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !197
  %i.ci = add i64 %i.ch, -1
  %i.cj = icmp ugt i64 %i.cf, %i.ci
  br i1 %i.cj, label %bb.at, label %bb.ao, !prof !192

bb.ao:                                            ; preds = %bb.an
  %i.ck = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ca, i64 noundef %i.by) ; 20 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 6 uses
  %.not.i185 = icmp eq ptr %i.ck, null
  br i1 %.not.i185, label %._crit_edge331, label %bb.ap

._crit_edge331:                                   ; preds = %bb.ao
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !232
  br label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.cm = load i64, ptr %i.cc, align 8, !tbaa !217
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cc, align 8, !tbaa !217
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 3 uses
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !218
  %i.cq = icmp eq i16 %i.cp, -1
  br i1 %i.cq, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 1064
  %i.cs = icmp eq ptr %i.co, %i.cr
  br i1 %i.cs, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !219
  %i.cv = tail call i64 %i.cu(ptr noundef nonnull %i.co) #49, !inline_history !1716 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.cv, 0
  %i.cw = select i1 %.not15.i.i, i64 8, i64 %i.cv
  br label %bb.av

bb.as:                                            ; preds = %bb.ap
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 -6
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !218
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !221
  %i.dc = zext i16 %i.db to i64
  br label %bb.av

bb.at:                                            ; preds = %._crit_edge331, %bb.an, %bb.am
  %i.dd = phi ptr [ %.pre, %._crit_edge331 ], [ %i.ca, %bb.an ], [ %i.ca, %bb.am ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1256 ; 3 uses
  %i.df = load i8, ptr %i.de, align 8, !tbaa !233, !range !234, !noundef !235
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %js_bigint_logic.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.de, align 8, !tbaa !233
  %i.dh = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1717 ; 0 uses
  store i8 0, ptr %i.de, align 8, !tbaa !233
  br label %js_bigint_logic.exit

bb.av:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.011.i.i = phi i64 [ 8, %bb.aq ], [ %i.cw, %bb.ar ], [ %i.dc, %bb.as ]
  %i.di = load i64, ptr %i.cd, align 8, !tbaa !196
  %i.dj = add i64 %i.di, %.011.i.i
  store i64 %i.dj, ptr %i.cd, align 8, !tbaa !196
  %i.dk = getelementptr inbounds i8, ptr %i.ck, i64 -4
  store i32 1, ptr %i.dk, align 4, !tbaa !191
  store i32 %i.bo, ptr %i.ck, align 8, !tbaa !191
  %i.dl = icmp sgt i32 %i.bp, 0                   ; 3 uses
  switch i32 %2, label %default.unreachable [
    i32 163, label %.preheader257
    i32 161, label %.preheader260
    i32 162, label %.preheader263
  ]

.preheader263:                                    ; preds = %bb.av
  br i1 %i.dl, label %.lr.ph277, label %.preheader261

.lr.ph277:                                        ; preds = %.preheader263
  %spec.select75.i.sroa.sel200 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %wide.trip.count304 = zext nneg i32 %i.bp to i64 ; 5 uses
  %min.iters.check374 = icmp ult i32 %i.bp, 16
  br i1 %min.iters.check374, label %scalar.ph373.preheader, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph277
  %spec.select75.i.sroa.sel200372 = ptrtoaddr ptr %spec.select75.i.sroa.sel200 to i64
  %i.dn = add i64 %i.cl, 4                        ; 2 uses
  %i.do = sub i64 %spec.select.i.sroa.sel195371, %i.dn
  %diff.check376 = icmp ugt i64 %i.do, -32
  %i.dp = sub i64 %spec.select75.i.sroa.sel200372, %i.dn
  %diff.check377 = icmp ugt i64 %i.dp, -32
  %conflict.rdx = or i1 %diff.check376, %diff.check377
  br i1 %conflict.rdx, label %scalar.ph373.preheader, label %vector.ph378

vector.ph378:                                     ; preds = %vector.memcheck375
  %n.vec379 = and i64 %wide.trip.count304, 2147483640 ; 3 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph378
  %index381 = phi i64 [ 0, %vector.ph378 ], [ %index.next386, %vector.body380 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %index381 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load382 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !191
  %wide.load383 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !191
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %index381 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load384 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !191
  %wide.load385 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !191
  %i.du = xor <4 x i32> %wide.load384, %wide.load382
  %i.dv = xor <4 x i32> %wide.load385, %wide.load383
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index381 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %i.du, ptr %i.dw, align 4, !tbaa !191
  store <4 x i32> %i.dv, ptr %i.dx, align 4, !tbaa !191
  %index.next386 = add nuw i64 %index381, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.dy, label %middle.block387, label %vector.body380, !llvm.loop !1718

middle.block387:                                  ; preds = %vector.body380
  %cmp.n388 = icmp eq i64 %n.vec379, %wide.trip.count304
  br i1 %cmp.n388, label %.preheader261, label %scalar.ph373.preheader

scalar.ph373.preheader:                           ; preds = %vector.memcheck375, %.lr.ph277, %middle.block387
  %indvars.iv301.ph = phi i64 [ 0, %vector.memcheck375 ], [ 0, %.lr.ph277 ], [ %n.vec379, %middle.block387 ] ; 3 uses
  %xtraiter506 = and i64 %wide.trip.count304, 3   ; 2 uses
  %lcmp.mod507.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %scalar.ph373.prol.loopexit, label %scalar.ph373.prol

scalar.ph373.prol:                                ; preds = %scalar.ph373.preheader, %scalar.ph373.prol
  %indvars.iv301.prol = phi i64 [ %indvars.iv.next302.prol, %scalar.ph373.prol ], [ %indvars.iv301.ph, %scalar.ph373.preheader ] ; 4 uses
  %prol.iter508 = phi i64 [ %prol.iter508.next, %scalar.ph373.prol ], [ 0, %scalar.ph373.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel200, i64 %indvars.iv301.prol
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !191
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv301.prol
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !191
  %i.ed = xor i32 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv301.prol
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !191
  %indvars.iv.next302.prol = add nuw nsw i64 %indvars.iv301.prol, 1 ; 2 uses
  %prol.iter508.next = add i64 %prol.iter508, 1   ; 2 uses
  %prol.iter508.cmp.not = icmp eq i64 %prol.iter508.next, %xtraiter506
  br i1 %prol.iter508.cmp.not, label %scalar.ph373.prol.loopexit, label %scalar.ph373.prol, !llvm.loop !1719

scalar.ph373.prol.loopexit:                       ; preds = %scalar.ph373.prol, %scalar.ph373.preheader
  %indvars.iv301.unr = phi i64 [ %indvars.iv301.ph, %scalar.ph373.preheader ], [ %indvars.iv.next302.prol, %scalar.ph373.prol ]
  %i.ef = sub nsw i64 %indvars.iv301.ph, %wide.trip.count304
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %.preheader261, label %scalar.ph373

.preheader260:                                    ; preds = %bb.av
  br i1 %i.dl, label %.lr.ph281, label %.preheader258

.lr.ph281:                                        ; preds = %.preheader260
  %spec.select75.i.sroa.sel206 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %wide.trip.count314 = zext nneg i32 %i.bp to i64 ; 5 uses
  %min.iters.check415 = icmp ult i32 %i.bp, 16
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph281
  %spec.select75.i.sroa.sel206413 = ptrtoaddr ptr %spec.select75.i.sroa.sel206 to i64
  %i.ei = add i64 %i.cl, 4                        ; 2 uses
  %i.ej = sub i64 %spec.select.i.sroa.sel195371, %i.ei
  %diff.check417 = icmp ugt i64 %i.ej, -32
  %i.ek = sub i64 %spec.select75.i.sroa.sel206413, %i.ei
  %diff.check418 = icmp ugt i64 %i.ek, -32
  %conflict.rdx419 = or i1 %diff.check417, %diff.check418
  br i1 %conflict.rdx419, label %scalar.ph414.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck416
  %n.vec421 = and i64 %wide.trip.count314, 2147483640 ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next428, %vector.body422 ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %index423 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load424 = load <4 x i32>, ptr %i.el, align 4, !tbaa !191
  %wide.load425 = load <4 x i32>, ptr %i.em, align 4, !tbaa !191
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %index423 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load426 = load <4 x i32>, ptr %i.en, align 4, !tbaa !191
  %wide.load427 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !191
  %i.ep = and <4 x i32> %wide.load426, %wide.load424
  %i.eq = and <4 x i32> %wide.load427, %wide.load425
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index423 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x i32> %i.ep, ptr %i.er, align 4, !tbaa !191
  store <4 x i32> %i.eq, ptr %i.es, align 4, !tbaa !191
  %index.next428 = add nuw i64 %index423, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.et, label %middle.block429, label %vector.body422, !llvm.loop !1720

middle.block429:                                  ; preds = %vector.body422
  %cmp.n430 = icmp eq i64 %n.vec421, %wide.trip.count314
  br i1 %cmp.n430, label %.preheader258, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %vector.memcheck416, %.lr.ph281, %middle.block429
  %indvars.iv311.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph281 ], [ %n.vec421, %middle.block429 ] ; 3 uses
  %xtraiter512 = and i64 %wide.trip.count314, 3   ; 2 uses
  %lcmp.mod513.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod513.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol

scalar.ph414.prol:                                ; preds = %scalar.ph414.preheader, %scalar.ph414.prol
  %indvars.iv311.prol = phi i64 [ %indvars.iv.next312.prol, %scalar.ph414.prol ], [ %indvars.iv311.ph, %scalar.ph414.preheader ] ; 4 uses
  %prol.iter514 = phi i64 [ %prol.iter514.next, %scalar.ph414.prol ], [ 0, %scalar.ph414.preheader ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel206, i64 %indvars.iv311.prol
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !191
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv311.prol
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !191
  %i.ey = and i32 %i.ex, %i.ev
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv311.prol
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !191
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.prol, 1 ; 2 uses
  %prol.iter514.next = add i64 %prol.iter514, 1   ; 2 uses
  %prol.iter514.cmp.not = icmp eq i64 %prol.iter514.next, %xtraiter512
  br i1 %prol.iter514.cmp.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol, !llvm.loop !1721

scalar.ph414.prol.loopexit:                       ; preds = %scalar.ph414.prol, %scalar.ph414.preheader
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %scalar.ph414.preheader ], [ %indvars.iv.next312.prol, %scalar.ph414.prol ]
  %i.fa = sub nsw i64 %indvars.iv311.ph, %wide.trip.count314
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %.preheader258, label %scalar.ph414

.preheader257:                                    ; preds = %bb.av
  br i1 %i.dl, label %.lr.ph285, label %.preheader

.lr.ph285:                                        ; preds = %.preheader257
  %spec.select75.i.sroa.sel212 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %wide.trip.count324 = zext nneg i32 %i.bp to i64 ; 5 uses
  %min.iters.check459 = icmp ult i32 %i.bp, 16
  br i1 %min.iters.check459, label %scalar.ph458.preheader, label %vector.memcheck460

vector.memcheck460:                               ; preds = %.lr.ph285
  %spec.select75.i.sroa.sel212457 = ptrtoaddr ptr %spec.select75.i.sroa.sel212 to i64
  %i.fd = add i64 %i.cl, 4                        ; 2 uses
  %i.fe = sub i64 %spec.select.i.sroa.sel195371, %i.fd
  %diff.check461 = icmp ugt i64 %i.fe, -32
  %i.ff = sub i64 %spec.select75.i.sroa.sel212457, %i.fd
  %diff.check462 = icmp ugt i64 %i.ff, -32
  %conflict.rdx463 = or i1 %diff.check461, %diff.check462
  br i1 %conflict.rdx463, label %scalar.ph458.preheader, label %vector.ph464

vector.ph464:                                     ; preds = %vector.memcheck460
  %n.vec465 = and i64 %wide.trip.count324, 2147483640 ; 3 uses
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph464
  %index467 = phi i64 [ 0, %vector.ph464 ], [ %index.next472, %vector.body466 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %index467 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load468 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !191
  %wide.load469 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !191
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %index467 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load470 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !191
  %wide.load471 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !191
  %i.fk = or <4 x i32> %wide.load470, %wide.load468
  %i.fl = or <4 x i32> %wide.load471, %wide.load469
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index467 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x i32> %i.fk, ptr %i.fm, align 4, !tbaa !191
  store <4 x i32> %i.fl, ptr %i.fn, align 4, !tbaa !191
  %index.next472 = add nuw i64 %index467, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next472, %n.vec465
  br i1 %i.fo, label %middle.block473, label %vector.body466, !llvm.loop !1722

middle.block473:                                  ; preds = %vector.body466
  %cmp.n474 = icmp eq i64 %n.vec465, %wide.trip.count324
  br i1 %cmp.n474, label %.preheader, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %vector.memcheck460, %.lr.ph285, %middle.block473
  %indvars.iv321.ph = phi i64 [ 0, %vector.memcheck460 ], [ 0, %.lr.ph285 ], [ %n.vec465, %middle.block473 ] ; 3 uses
  %xtraiter518 = and i64 %wide.trip.count324, 3   ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol

scalar.ph458.prol:                                ; preds = %scalar.ph458.preheader, %scalar.ph458.prol
  %indvars.iv321.prol = phi i64 [ %indvars.iv.next322.prol, %scalar.ph458.prol ], [ %indvars.iv321.ph, %scalar.ph458.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %scalar.ph458.prol ], [ 0, %scalar.ph458.preheader ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv321.prol
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !191
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv321.prol
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !191
  %i.ft = or i32 %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv321.prol
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !191
  %indvars.iv.next322.prol = add nuw nsw i64 %indvars.iv321.prol, 1 ; 2 uses
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol, !llvm.loop !1723

scalar.ph458.prol.loopexit:                       ; preds = %scalar.ph458.prol, %scalar.ph458.preheader
  %indvars.iv321.unr = phi i64 [ %indvars.iv321.ph, %scalar.ph458.preheader ], [ %indvars.iv.next322.prol, %scalar.ph458.prol ]
  %i.fv = sub nsw i64 %indvars.iv321.ph, %wide.trip.count324
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %.preheader, label %scalar.ph458

.preheader:                                       ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458, %middle.block473, %.preheader257
  %i.fx = icmp slt i32 %i.bp, %i.bo
  br i1 %i.fx, label %.lr.ph287, label %.loopexit

.lr.ph287:                                        ; preds = %.preheader
  %spec.select75.i.sroa.sel209 = select i1 %i.bn, ptr %.0135.sroa.gep194, ptr %.0136.sroa.gep193 ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 6 uses
  %i.fz = sext i32 %i.bp to i64                   ; 5 uses
  %i.ga = sub nsw i64 %i.bw, %i.fz                ; 3 uses
  %min.iters.check481 = icmp ult i64 %i.ga, 8
  br i1 %min.iters.check481, label %scalar.ph480.preheader, label %vector.memcheck482

vector.memcheck482:                               ; preds = %.lr.ph287
  %spec.select75.i.sroa.sel209479 = ptrtoaddr ptr %spec.select75.i.sroa.sel209 to i64
  %i.gb = sub i64 %i.cl, %spec.select75.i.sroa.sel209479
  %i.gc = add i64 %i.gb, 3
  %diff.check483 = icmp ult i64 %i.gc, 31
  br i1 %diff.check483, label %scalar.ph480.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %vector.memcheck482
  %n.vec485 = and i64 %i.ga, -8                   ; 3 uses
  %i.gd = add nsw i64 %n.vec485, %i.fz
  %broadcast.splatinsert486 = insertelement <4 x i32> poison, i32 %.neg254, i64 0
  %broadcast.splat487 = shufflevector <4 x i32> %broadcast.splatinsert486, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph484
  %index489 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body488 ] ; 2 uses
  %i.ge = add i64 %index489, %i.fz                ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load490 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !191
  %wide.load491 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !191
  %i.gh = or <4 x i32> %wide.load490, %broadcast.splat487
  %i.gi = or <4 x i32> %wide.load491, %broadcast.splat487
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ge ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x i32> %i.gh, ptr %i.gj, align 4, !tbaa !191
  store <4 x i32> %i.gi, ptr %i.gk, align 4, !tbaa !191
  %index.next492 = add nuw i64 %index489, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.gl, label %middle.block493, label %vector.body488, !llvm.loop !1724

middle.block493:                                  ; preds = %vector.body488
  %cmp.n494 = icmp eq i64 %i.ga, %n.vec485
  br i1 %cmp.n494, label %.loopexit, label %scalar.ph480.preheader

scalar.ph480.preheader:                           ; preds = %vector.memcheck482, %.lr.ph287, %middle.block493
  %indvars.iv326.ph = phi i64 [ %i.fz, %vector.memcheck482 ], [ %i.fz, %.lr.ph287 ], [ %i.gd, %middle.block493 ] ; 4 uses
  %i.gm = sub nsw i64 %i.bw, %indvars.iv326.ph
  %xtraiter521 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %scalar.ph480.prol.loopexit, label %scalar.ph480.prol

scalar.ph480.prol:                                ; preds = %scalar.ph480.preheader, %scalar.ph480.prol
  %indvars.iv326.prol = phi i64 [ %indvars.iv.next327.prol, %scalar.ph480.prol ], [ %indvars.iv326.ph, %scalar.ph480.preheader ] ; 3 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %scalar.ph480.prol ], [ 0, %scalar.ph480.preheader ]
  %i.gn = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv326.prol
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !191
  %i.gp = or i32 %i.go, %.neg254
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv326.prol
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !191
  %indvars.iv.next327.prol = add nsw i64 %indvars.iv326.prol, 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %scalar.ph480.prol.loopexit, label %scalar.ph480.prol, !llvm.loop !1725

scalar.ph480.prol.loopexit:                       ; preds = %scalar.ph480.prol, %scalar.ph480.preheader
  %indvars.iv326.unr = phi i64 [ %indvars.iv326.ph, %scalar.ph480.preheader ], [ %indvars.iv.next327.prol, %scalar.ph480.prol ]
  %i.gr = sub nsw i64 %indvars.iv326.ph, %i.bw
  %i.gs = icmp ugt i64 %i.gr, -4
  br i1 %i.gs, label %.loopexit, label %scalar.ph480

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.3, %scalar.ph458 ], [ %indvars.iv321.unr, %scalar.ph458.prol.loopexit ] ; 7 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv321
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !191
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv321
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !191
  %i.gx = or i32 %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv321
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !191
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv.next322
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !191
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next322
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !191
  %i.hd = or i32 %i.hc, %i.ha
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next322
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !191
  %indvars.iv.next322.1 = add nuw nsw i64 %indvars.iv321, 2 ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv.next322.1
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !191
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next322.1
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !191
  %i.hj = or i32 %i.hi, %i.hg
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next322.1
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !191
  %indvars.iv.next322.2 = add nuw nsw i64 %indvars.iv321, 3 ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %spec.select75.i.sroa.sel212, i64 %indvars.iv.next322.2
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !191
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %spec.select.i.sroa.sel195, i64 %indvars.iv.next322.2
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !191
  %i.hp = or i32 %i.ho, %i.hm
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next322.2
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !191
  %indvars.iv.next322.3 = add nuw nsw i64 %indvars.iv321, 4 ; 2 uses
  %exitcond325.not.3 = icmp eq i64 %indvars.iv.next322.3, %wide.trip.count324
  br i1 %exitcond325.not.3, label %.preheader, label %scalar.ph458, !llvm.loop !1726

scalar.ph480:                                     ; preds = %scalar.ph480.prol.loopexit, %scalar.ph480
  %indvars.iv326 = phi i64 [ %indvars.iv.next327.3, %scalar.ph480 ], [ %indvars.iv326.unr, %scalar.ph480.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv326
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !191
  %i.ht = or i32 %i.hs, %.neg254
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv326
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !191
  %indvars.iv.next327 = add nsw i64 %indvars.iv326, 1 ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv.next327
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !191
  %i.hx = or i32 %i.hw, %.neg254
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv.next327
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !191
  %indvars.iv.next327.1 = add nsw i64 %indvars.iv326, 2 ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv.next327.1
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !191
  %i.ib = or i32 %i.ia, %.neg254
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv.next327.1
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !191
  %indvars.iv.next327.2 = add nsw i64 %indvars.iv326, 3 ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %spec.select75.i.sroa.sel209, i64 %indvars.iv.next327.2
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !191
  %i.if = or i32 %i.ie, %.neg254
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv.next327.2
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !191
  %indvars.iv.next327.3 = add nsw i64 %indvars.iv326, 4 ; 2 uses
  %exitcond330.not.3 = icmp eq i64 %indvars.iv.next327.3, %i.bw
  br i1 %exitcond330.not.3, label %.loopexit, label %scalar.ph480, !llvm.loop !1727

.preheader258:                                    ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414, %middle.block429, %.preheader260
  %i.ih = icmp slt i32 %i.bp, %i.bo
end_hunk_0
