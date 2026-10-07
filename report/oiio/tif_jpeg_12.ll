Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_jpeg_12?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@JPEGDecodeRaw:bb.a
  %i.m = and i32 %i.l, 1024
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  %.0129.in = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.not137 = icmp eq i32 %.0129.in, 0
  br i1 %.not137, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.b, %select.unfold
  %.0129.in143 = phi i32 [ %.0129.in, %select.unfold ], [ %i.d, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !141  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.aa) #16 ; 16 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %.thread152, label %.preheader161

.preheader161:                                    ; preds = %.thread
  %.0129 = zext i32 %.0129.in143 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 412
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 2 uses
  %.not139165 = icmp eq i32 %i.q, 0               ; 2 uses
  %i.ai = sext i32 %i.s to i64                    ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !121
  %i.al = shl nsw i64 %i.ai, 1
  %xtraiter305 = and i32 %i.q, 7                  ; 2 uses
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  %i.am = icmp ult i32 %i.q, 8
  br label %bb.c

.thread152:                                       ; preds = %.thread
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #16
  br label %bb.l

bb.c:                                             ; preds = %.preheader161, %.loopexit159
  %i.an = phi i64 [ %i.hj, %.loopexit159 ], [ %.pre, %.preheader161 ]
  %.0132 = phi i64 [ %i.hl, %.loopexit159 ], [ %2, %.preheader161 ] ; 2 uses
  %.1130 = phi i64 [ %i.hn, %.loopexit159 ], [ %.0129, %.preheader161 ]
  %.0110 = phi ptr [ %i.hk, %.loopexit159 ], [ %1, %.preheader161 ] ; 11 uses
  %i.ao = icmp slt i64 %.0132, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #16
  br label %.loopexit162

bb.e:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !126 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 7
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.as = shl nsw i32 %i.ar, 3                    ; 2 uses
  %i.at = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ah, i32 noundef %i.as)
  %.not138 = icmp eq i32 %i.at, %i.as
  br i1 %.not138, label %.thread144, label %.loopexit162

.thread144:                                       ; preds = %bb.f
  store i32 0, ptr %i.af, align 8, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %.thread144, %bb.e
  %i.au = phi i32 [ 0, %.thread144 ], [ %i.ap, %bb.e ]
  %i.av = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge176
  %indvars.iv229 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next230, %._crit_edge176 ] ; 2 uses
  %.0122190 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1123.lcssa, %._crit_edge176 ] ; 6 uses
  %.0125188 = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.es, %._crit_edge176 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0125188, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !123 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0125188, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !124 ; 7 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv229
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !138 ; 2 uses
  %i.bf = mul nsw i32 %i.au, %i.bb                ; 2 uses
  %i.bg = icmp eq i32 %i.az, 1
  %i.bh = icmp sgt i32 %i.az, 0
  br i1 %i.bg, label %.lr.ph175.split.us, label %.lr.ph175.split

.lr.ph175.split.us:                               ; preds = %.lr.ph175
  br i1 %.not139165, label %.preheader156.us.us.preheader, label %.preheader156.us.preheader

.preheader156.us.preheader:                       ; preds = %.lr.ph175.split.us
  %i.bi = sext i32 %i.bf to i64
  %i.bj = sext i32 %.0122190 to i64
  %wide.trip.count227 = zext nneg i32 %i.bb to i64
  %invariant.gep258 = getelementptr [8 x i8], ptr %i.be, i64 %i.bi
  br label %.preheader156.us

.preheader156.us.us.preheader:                    ; preds = %.lr.ph175.split.us
  %i.bk = add i32 %.0122190, %i.bb
  br label %._crit_edge176

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv222 = phi i64 [ %i.bj, %.preheader156.us.preheader ], [ %indvars.iv.next223, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv220 = phi i64 [ 0, %.preheader156.us.preheader ], [ %indvars.iv.next221, %..loopexit_crit_edge.us ] ; 2 uses
  %gep259 = getelementptr [8 x i8], ptr %invariant.gep258, i64 %indvars.iv220
  %i.bl = load ptr, ptr %gep259, align 8, !tbaa !128 ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv222 ; 2 uses
  br i1 %lcmp.mod306.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader156.us, %.prol.preheader
  %.0115171.us.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bm, %.preheader156.us ] ; 2 uses
  %.0117170.us.prol = phi i32 [ %i.bn, %.prol.preheader ], [ %i.q, %.preheader156.us ]
  %.0119169.us.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bl, %.preheader156.us ] ; 2 uses
  %prol.iter307 = phi i32 [ %prol.iter307.next, %.prol.preheader ], [ 0, %.preheader156.us ]
  %i.bn = add i32 %.0117170.us.prol, -1           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0119169.us.prol, i64 2 ; 2 uses
  %i.bp = load i16, ptr %.0119169.us.prol, align 2, !tbaa !77
  store i16 %i.bp, ptr %.0115171.us.prol, align 2, !tbaa !77
  %i.bq = getelementptr inbounds [2 x i8], ptr %.0115171.us.prol, i64 %i.ai ; 2 uses
  %prol.iter307.next = add i32 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i32 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !194

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader156.us
  %.0115171.us.unr = phi ptr [ %i.bm, %.preheader156.us ], [ %i.bq, %.prol.preheader ]
  %.0117170.us.unr = phi i32 [ %i.q, %.preheader156.us ], [ %i.bn, %.prol.preheader ]
  %.0119169.us.unr = phi ptr [ %i.bl, %.preheader156.us ], [ %i.bo, %.prol.preheader ]
  br i1 %i.am, label %..loopexit_crit_edge.us, label %.preheader156.us.new

.preheader156.us.new:                             ; preds = %.prol.loopexit, %.preheader156.us.new
  %.0115171.us = phi ptr [ %i.cp, %.preheader156.us.new ], [ %.0115171.us.unr, %.prol.loopexit ] ; 2 uses
  %.0117170.us = phi i32 [ %i.cm, %.preheader156.us.new ], [ %.0117170.us.unr, %.prol.loopexit ]
  %.0119169.us = phi ptr [ %i.cn, %.preheader156.us.new ], [ %.0119169.us.unr, %.prol.loopexit ] ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 2
  %i.bs = load i16, ptr %.0119169.us, align 2, !tbaa !77
  store i16 %i.bs, ptr %.0115171.us, align 2, !tbaa !77
  %i.bt = getelementptr inbounds [2 x i8], ptr %.0115171.us, i64 %i.ai ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 4
  %i.bv = load i16, ptr %i.br, align 2, !tbaa !77
  store i16 %i.bv, ptr %i.bt, align 2, !tbaa !77
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.ai ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 6
  %i.by = load i16, ptr %i.bu, align 2, !tbaa !77
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !77
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ai ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 8
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !77
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !77
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ai ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 10
  %i.ce = load i16, ptr %i.ca, align 2, !tbaa !77
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !77
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ai ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 12
  %i.ch = load i16, ptr %i.cd, align 2, !tbaa !77
  store i16 %i.ch, ptr %i.cf, align 2, !tbaa !77
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.ai ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 14
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !77
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !77
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.ai ; 2 uses
  %i.cm = add i32 %.0117170.us, -8                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0119169.us, i64 16
  %i.co = load i16, ptr %i.cj, align 2, !tbaa !77
  store i16 %i.co, ptr %i.cl, align 2, !tbaa !77
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.ai
  %.not140.us.7 = icmp eq i32 %i.cm, 0
  br i1 %.not140.us.7, label %..loopexit_crit_edge.us, label %.preheader156.us.new

..loopexit_crit_edge.us:                          ; preds = %.preheader156.us.new, %.prol.loopexit
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge176.loopexit198, label %.preheader156.us

.lr.ph175.split:                                  ; preds = %.lr.ph175
  br i1 %.not139165, label %.preheader157.us.preheader, label %.lr.ph175.split.split

.preheader157.us.preheader:                       ; preds = %.lr.ph175.split
  %i.cq = mul i32 %i.az, %i.bb
  %i.cr = add i32 %.0122190, %i.cq
  br label %._crit_edge176

.lr.ph175.split.split:                            ; preds = %.lr.ph175.split
  br i1 %i.bh, label %.preheader157.us182.preheader, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.lr.ph175.split.split
  %i.cs = mul i32 %i.az, %i.bb
  %i.ct = add i32 %.0122190, %i.cs
  br label %._crit_edge176

.preheader157.us182.preheader:                    ; preds = %.lr.ph175.split.split
  %i.cu = sext i32 %i.bf to i64
  %i.cv = sext i32 %.0122190 to i64               ; 2 uses
  %i.cw = zext nneg i32 %i.az to i64
  %wide.trip.count218 = zext nneg i32 %i.bb to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.be, i64 %i.cu
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 9 uses
  %i.cx = shl nsw i64 %i.cv, 1
  %i.cy = add i64 %i.cx, %i.ac
  %i.cz = shl nuw nsw i64 %wide.trip.count, 1
  %min.iters.check273 = icmp ult i32 %i.az, 4
  %min.iters.check275 = icmp ult i32 %i.az, 16
  %i.da = and i64 %wide.trip.count, 12
  %n.vec277 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.db = shl nuw nsw i64 %n.vec277, 1
  %cmp.n284 = icmp eq i64 %n.vec277, %wide.trip.count
  %min.epilog.iters.check290 = icmp eq i64 %i.da, 0
  %n.vec292 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.dc = shl nuw nsw i64 %n.vec292, 1
  %cmp.n299 = icmp eq i64 %n.vec292, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader157.us182

.preheader157.us182:                              ; preds = %.preheader157.us182.preheader, %..loopexit158_crit_edge.us
  %indvars.iv213 = phi i64 [ %i.cv, %.preheader157.us182.preheader ], [ %indvars.iv.next214, %..loopexit158_crit_edge.us ] ; 2 uses
  %indvars.iv211 = phi i64 [ 0, %.preheader157.us182.preheader ], [ %indvars.iv.next212, %..loopexit158_crit_edge.us ] ; 3 uses
  %i.dd = mul i64 %i.cz, %indvars.iv211
  %i.de = add i64 %i.cy, %i.dd
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv211
  %i.df = load ptr, ptr %gep, align 8, !tbaa !128
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv213
  br label %iter.check287

iter.check287:                                    ; preds = %._crit_edge.us, %.preheader157.us182
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader157.us182 ] ; 2 uses
  %.in = phi i32 [ %i.eo, %._crit_edge.us ], [ %i.q, %.preheader157.us182 ]
  %.1116167.us = phi ptr [ %i.ep, %._crit_edge.us ], [ %i.dg, %.preheader157.us182 ] ; 8 uses
  %.1120166.us = phi ptr [ %.lcssa261, %._crit_edge.us ], [ %i.df, %.preheader157.us182 ] ; 7 uses
  br i1 %min.iters.check273, label %vec.epilog.scalar.ph288.preheader, label %vector.memcheck271

vector.memcheck271:                               ; preds = %iter.check287
  %.1120166.us272 = ptrtoaddr ptr %.1120166.us to i64
  %i.dh = mul i64 %i.al, %indvar
  %i.di = add i64 %i.de, %i.dh
  %i.dj = sub i64 %.1120166.us272, %i.di
  %diff.check = icmp ugt i64 %i.dj, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph288.preheader, label %vector.main.loop.iter.check274

vector.main.loop.iter.check274:                   ; preds = %vector.memcheck271
  br i1 %min.iters.check275, label %vec.epilog.ph291, label %vector.ph276

vector.ph276:                                     ; preds = %vector.main.loop.iter.check274
  %i.dk = getelementptr i8, ptr %.1120166.us, i64 %i.db ; 2 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.ph276, %vector.body278
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body278 ] ; 3 uses
  %i.dl = shl i64 %index279, 1
  %next.gep = getelementptr i8, ptr %.1120166.us, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load280 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !77
  %wide.load281 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !77
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %index279 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <8 x i16> %wide.load280, ptr %i.dn, align 2, !tbaa !77
  store <8 x i16> %wide.load281, ptr %i.do, align 2, !tbaa !77
  %index.next282 = add nuw i64 %index279, 16      ; 2 uses
  %i.dp = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.dp, label %middle.block283, label %vector.body278, !llvm.loop !195

middle.block283:                                  ; preds = %vector.body278
  br i1 %cmp.n284, label %._crit_edge.us, label %vec.epilog.iter.check289

vec.epilog.iter.check289:                         ; preds = %middle.block283
  br i1 %min.epilog.iters.check290, label %vec.epilog.scalar.ph288.preheader, label %vec.epilog.ph291, !prof !131

vec.epilog.ph291:                                 ; preds = %vector.main.loop.iter.check274, %vec.epilog.iter.check289
  %vec.epilog.resume.val285 = phi i64 [ %n.vec277, %vec.epilog.iter.check289 ], [ 0, %vector.main.loop.iter.check274 ]
  %i.dq = getelementptr i8, ptr %.1120166.us, i64 %i.dc ; 2 uses
  br label %vec.epilog.vector.body293

vec.epilog.vector.body293:                        ; preds = %vec.epilog.vector.body293, %vec.epilog.ph291
  %index294 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph291 ], [ %index.next297, %vec.epilog.vector.body293 ] ; 3 uses
  %i.dr = shl i64 %index294, 1
  %next.gep295 = getelementptr i8, ptr %.1120166.us, i64 %i.dr
  %wide.load296 = load <4 x i16>, ptr %next.gep295, align 2, !tbaa !77
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %index294
  store <4 x i16> %wide.load296, ptr %i.ds, align 2, !tbaa !77
  %index.next297 = add nuw i64 %index294, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next297, %n.vec292
  br i1 %i.dt, label %vec.epilog.middle.block298, label %vec.epilog.vector.body293, !llvm.loop !196

vec.epilog.middle.block298:                       ; preds = %vec.epilog.vector.body293
  br i1 %cmp.n299, label %._crit_edge.us, label %vec.epilog.scalar.ph288.preheader

vec.epilog.scalar.ph288.preheader:                ; preds = %iter.check287, %vector.memcheck271, %vec.epilog.iter.check289, %vec.epilog.middle.block298
  %indvars.iv.ph = phi i64 [ 0, %iter.check287 ], [ 0, %vector.memcheck271 ], [ %n.vec277, %vec.epilog.iter.check289 ], [ %n.vec292, %vec.epilog.middle.block298 ] ; 3 uses
  %.2163.us.ph = phi ptr [ %.1120166.us, %iter.check287 ], [ %.1120166.us, %vector.memcheck271 ], [ %i.dk, %vec.epilog.iter.check289 ], [ %i.dq, %vec.epilog.middle.block298 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph288.prol.loopexit, label %vec.epilog.scalar.ph288.prol

vec.epilog.scalar.ph288.prol:                     ; preds = %vec.epilog.scalar.ph288.preheader, %vec.epilog.scalar.ph288.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph288.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph288.preheader ] ; 2 uses
  %.2163.us.prol = phi ptr [ %i.du, %vec.epilog.scalar.ph288.prol ], [ %.2163.us.ph, %vec.epilog.scalar.ph288.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph288.prol ], [ 0, %vec.epilog.scalar.ph288.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.2163.us.prol, i64 2 ; 3 uses
  %i.dv = load i16, ptr %.2163.us.prol, align 2, !tbaa !77
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %indvars.iv.prol
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !77
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph288.prol.loopexit, label %vec.epilog.scalar.ph288.prol, !llvm.loop !197

vec.epilog.scalar.ph288.prol.loopexit:            ; preds = %vec.epilog.scalar.ph288.prol, %vec.epilog.scalar.ph288.preheader
  %.lcssa303.unr = phi ptr [ poison, %vec.epilog.scalar.ph288.preheader ], [ %i.du, %vec.epilog.scalar.ph288.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph288.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph288.prol ]
  %.2163.us.unr = phi ptr [ %.2163.us.ph, %vec.epilog.scalar.ph288.preheader ], [ %i.du, %vec.epilog.scalar.ph288.prol ]
  %i.dx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge.us, label %vec.epilog.scalar.ph288

vec.epilog.scalar.ph288:                          ; preds = %vec.epilog.scalar.ph288.prol.loopexit, %vec.epilog.scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph288 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph288.prol.loopexit ] ; 5 uses
  %.2163.us = phi ptr [ %i.ek, %vec.epilog.scalar.ph288 ], [ %.2163.us.unr, %vec.epilog.scalar.ph288.prol.loopexit ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.2163.us, i64 2
  %i.ea = load i16, ptr %.2163.us, align 2, !tbaa !77
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %indvars.iv
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !77
  %i.ec = getelementptr inbounds nuw i8, ptr %.2163.us, i64 4
  %i.ed = load i16, ptr %i.dz, align 2, !tbaa !77
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 %i.ed, ptr %i.ef, align 2, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %.2163.us, i64 6
  %i.eh = load i16, ptr %i.ec, align 2, !tbaa !77
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i16 %i.eh, ptr %i.ej, align 2, !tbaa !77
  %i.ek = getelementptr inbounds nuw i8, ptr %.2163.us, i64 8 ; 2 uses
  %i.el = load i16, ptr %i.eg, align 2, !tbaa !77
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.1116167.us, i64 %indvars.iv
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i16 %i.el, ptr %i.en, align 2, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph288, !llvm.loop !198

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph288.prol.loopexit, %vec.epilog.scalar.ph288, %vec.epilog.middle.block298, %middle.block283
  %.lcssa261 = phi ptr [ %i.dq, %vec.epilog.middle.block298 ], [ %i.dk, %middle.block283 ], [ %.lcssa303.unr, %vec.epilog.scalar.ph288.prol.loopexit ], [ %i.ek, %vec.epilog.scalar.ph288 ]
  %i.eo = add i32 %.in, -1                        ; 2 uses
  %i.ep = getelementptr inbounds [2 x i8], ptr %.1116167.us, i64 %i.ai
  %.not139.us = icmp eq i32 %i.eo, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not139.us, label %..loopexit158_crit_edge.us, label %iter.check287

..loopexit158_crit_edge.us:                       ; preds = %._crit_edge.us
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, %i.cw ; 2 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge176.loopexit200, label %.preheader157.us182

._crit_edge176.loopexit198:                       ; preds = %..loopexit_crit_edge.us
  %i.eq = trunc nsw i64 %indvars.iv.next223 to i32
  br label %._crit_edge176

._crit_edge176.loopexit200:                       ; preds = %..loopexit158_crit_edge.us
  %i.er = trunc nsw i64 %indvars.iv.next214 to i32
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %.preheader157.preheader, %._crit_edge176.loopexit200, %.preheader157.us.preheader, %._crit_edge176.loopexit198, %.preheader156.us.us.preheader, %.lr.ph
  %.1123.lcssa = phi i32 [ %.0122190, %.lr.ph ], [ %i.bk, %.preheader156.us.us.preheader ], [ %i.er, %._crit_edge176.loopexit200 ], [ %i.eq, %._crit_edge176.loopexit198 ], [ %i.cr, %.preheader157.us.preheader ], [ %i.ct, %.preheader157.preheader ]
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0125188, i64 96
  %i.et = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next230, %i.eu
  br i1 %i.ev, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge176, %bb.g
  %.lcssa = phi i32 [ %i.av, %bb.g ], [ %i.et, %._crit_edge176 ]
  %i.ew = load i32, ptr %i.aj, align 8, !tbaa !21
  %i.ex = icmp eq i32 %i.ew, 8
  %i.ey = load i32, ptr %i.t, align 8, !tbaa !21
  %i.ez = mul i32 %i.ey, %.lcssa                  ; 5 uses
  br i1 %i.ex, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %iter.check, label %.loopexit159

iter.check:                                       ; preds = %bb.h
  %wide.trip.count240 = zext nneg i32 %i.ez to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %i.ez, 4
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
end_hunk_0
