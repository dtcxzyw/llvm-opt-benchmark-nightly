inline.NumInlined: 40
inline.NumDeleted: 16
begin_hunk_0_@JPEGDecodeRaw:bb.a
  %i.m = and i32 %i.l, 1024
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  %.0115.in = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.not137 = icmp eq i32 %.0115.in, 0
  br i1 %.not137, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.b, %select.unfold
  %.0115.in143 = phi i32 [ %.0115.in, %select.unfold ], [ %i.d, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !189  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !177
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
  %.0115 = zext i32 %.0115.in143 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 412
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 2 uses
  %.not139165 = icmp eq i32 %i.q, 0               ; 2 uses
  %i.ai = sext i32 %i.s to i64                    ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !142
  %i.al = shl nsw i64 %i.ai, 1
  %xtraiter307 = and i32 %i.q, 7                  ; 2 uses
  %lcmp.mod308.not = icmp eq i32 %xtraiter307, 0
  %i.am = icmp ult i32 %i.q, 8
  br label %bb.c

.thread152:                                       ; preds = %.thread
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #16
  br label %bb.l

bb.c:                                             ; preds = %.preheader161, %.loopexit159
  %i.an = phi i64 [ %i.hh, %.loopexit159 ], [ %.pre, %.preheader161 ]
  %.1116 = phi i64 [ %i.hl, %.loopexit159 ], [ %.0115, %.preheader161 ]
  %.0113 = phi i64 [ %i.hj, %.loopexit159 ], [ %2, %.preheader161 ] ; 2 uses
  %.0110 = phi ptr [ %i.hi, %.loopexit159 ], [ %1, %.preheader161 ] ; 11 uses
  %i.ao = icmp slt i64 %.0113, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #16
  br label %.loopexit162

bb.e:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !149 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 7
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.as = shl nsw i32 %i.ar, 3                    ; 2 uses
  %i.at = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ah, i32 noundef %i.as)
  %.not138 = icmp eq i32 %i.at, %i.as
  br i1 %.not138, label %.thread144, label %.loopexit162

.thread144:                                       ; preds = %bb.f
  store i32 0, ptr %i.af, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %.thread144, %bb.e
  %i.au = phi i32 [ 0, %.thread144 ], [ %i.ap, %bb.e ]
  %i.av = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge190

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv230 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next231, %._crit_edge ] ; 2 uses
  %.0130188 = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.er, %._crit_edge ] ; 3 uses
  %.0131187 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1132.lcssa, %._crit_edge ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0130188, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !144 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0130188, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !146 ; 7 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph174, label %._crit_edge

.lr.ph174:                                        ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv230
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !175 ; 2 uses
  %i.bf = mul nsw i32 %i.au, %i.bb                ; 2 uses
  %i.bg = icmp eq i32 %i.az, 1
  %i.bh = icmp sgt i32 %i.az, 0
  br i1 %i.bg, label %.lr.ph174.split.us, label %.lr.ph174.split

.lr.ph174.split.us:                               ; preds = %.lr.ph174
  br i1 %.not139165, label %.preheader156.us.us.preheader, label %.preheader156.us.preheader

.preheader156.us.preheader:                       ; preds = %.lr.ph174.split.us
  %i.bi = sext i32 %i.bf to i64
  %i.bj = sext i32 %.0131187 to i64
  %wide.trip.count228 = zext nneg i32 %i.bb to i64
  %invariant.gep257 = getelementptr [8 x i8], ptr %i.be, i64 %i.bi
  br label %.preheader156.us

.preheader156.us.us.preheader:                    ; preds = %.lr.ph174.split.us
  %i.bk = add i32 %.0131187, %i.bb
  br label %._crit_edge

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv223 = phi i64 [ %i.bj, %.preheader156.us.preheader ], [ %indvars.iv.next224, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv221 = phi i64 [ 0, %.preheader156.us.preheader ], [ %indvars.iv.next222, %..loopexit_crit_edge.us ] ; 2 uses
  %gep258 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv221
  %i.bl = load ptr, ptr %gep258, align 8, !tbaa !151 ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv223 ; 2 uses
  br i1 %lcmp.mod308.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader156.us, %.prol.preheader
  %.0119171.us.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bm, %.preheader156.us ] ; 2 uses
  %.0121170.us.prol = phi i32 [ %i.bn, %.prol.preheader ], [ %i.q, %.preheader156.us ]
  %.0123169.us.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bl, %.preheader156.us ] ; 2 uses
  %prol.iter309 = phi i32 [ %prol.iter309.next, %.prol.preheader ], [ 0, %.preheader156.us ]
  %i.bn = add i32 %.0121170.us.prol, -1           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0123169.us.prol, i64 2 ; 2 uses
  %i.bp = load i16, ptr %.0123169.us.prol, align 2, !tbaa !79
  store i16 %i.bp, ptr %.0119171.us.prol, align 2, !tbaa !79
  %i.bq = getelementptr inbounds [2 x i8], ptr %.0119171.us.prol, i64 %i.ai ; 2 uses
  %prol.iter309.next = add i32 %prol.iter309, 1   ; 2 uses
  %prol.iter309.cmp.not = icmp eq i32 %prol.iter309.next, %xtraiter307
  br i1 %prol.iter309.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !190

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader156.us
  %.0119171.us.unr = phi ptr [ %i.bm, %.preheader156.us ], [ %i.bq, %.prol.preheader ]
  %.0121170.us.unr = phi i32 [ %i.q, %.preheader156.us ], [ %i.bn, %.prol.preheader ]
  %.0123169.us.unr = phi ptr [ %i.bl, %.preheader156.us ], [ %i.bo, %.prol.preheader ]
  br i1 %i.am, label %..loopexit_crit_edge.us, label %.preheader156.us.new

.preheader156.us.new:                             ; preds = %.prol.loopexit, %.preheader156.us.new
  %.0119171.us = phi ptr [ %i.cp, %.preheader156.us.new ], [ %.0119171.us.unr, %.prol.loopexit ] ; 2 uses
  %.0121170.us = phi i32 [ %i.cm, %.preheader156.us.new ], [ %.0121170.us.unr, %.prol.loopexit ]
  %.0123169.us = phi ptr [ %i.cn, %.preheader156.us.new ], [ %.0123169.us.unr, %.prol.loopexit ] ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 2
  %i.bs = load i16, ptr %.0123169.us, align 2, !tbaa !79
  store i16 %i.bs, ptr %.0119171.us, align 2, !tbaa !79
  %i.bt = getelementptr inbounds [2 x i8], ptr %.0119171.us, i64 %i.ai ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 4
  %i.bv = load i16, ptr %i.br, align 2, !tbaa !79
  store i16 %i.bv, ptr %i.bt, align 2, !tbaa !79
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.ai ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 6
  %i.by = load i16, ptr %i.bu, align 2, !tbaa !79
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !79
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ai ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 8
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !79
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !79
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ai ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 10
  %i.ce = load i16, ptr %i.ca, align 2, !tbaa !79
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !79
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ai ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 12
  %i.ch = load i16, ptr %i.cd, align 2, !tbaa !79
  store i16 %i.ch, ptr %i.cf, align 2, !tbaa !79
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.ai ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 14
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !79
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !79
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.ai ; 2 uses
  %i.cm = add i32 %.0121170.us, -8                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 16
  %i.co = load i16, ptr %i.cj, align 2, !tbaa !79
  store i16 %i.co, ptr %i.cl, align 2, !tbaa !79
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.ai
  %.not140.us.7 = icmp eq i32 %i.cm, 0
  br i1 %.not140.us.7, label %..loopexit_crit_edge.us, label %.preheader156.us.new

..loopexit_crit_edge.us:                          ; preds = %.preheader156.us.new, %.prol.loopexit
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, 1 ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count228
  br i1 %exitcond229.not, label %._crit_edge.loopexit199, label %.preheader156.us

.lr.ph174.split:                                  ; preds = %.lr.ph174
  br i1 %.not139165, label %.preheader157.us.preheader, label %.lr.ph174.split.split

.preheader157.us.preheader:                       ; preds = %.lr.ph174.split
  %i.cq = mul i32 %i.bb, %i.az
  %i.cr = add i32 %.0131187, %i.cq
  br label %._crit_edge

.lr.ph174.split.split:                            ; preds = %.lr.ph174.split
  br i1 %i.bh, label %.preheader157.us180.preheader, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.lr.ph174.split.split
  %i.cs = mul i32 %i.bb, %i.az
  %i.ct = add i32 %.0131187, %i.cs
  br label %._crit_edge

.preheader157.us180.preheader:                    ; preds = %.lr.ph174.split.split
  %i.cu = sext i32 %i.bf to i64
  %i.cv = sext i32 %.0131187 to i64               ; 2 uses
  %i.cw = zext nneg i32 %i.az to i64
  %wide.trip.count219 = zext nneg i32 %i.bb to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.be, i64 %i.cu
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 9 uses
  %i.cx = shl nsw i64 %i.cv, 1
  %i.cy = add i64 %i.cx, %i.ac
  %i.cz = shl nuw nsw i64 %wide.trip.count, 1
  %min.iters.check273 = icmp ult i32 %i.az, 4
  %min.iters.check275 = icmp ult i32 %i.az, 16
  %n.mod.vf277 = and i64 %wide.trip.count, 12
  %n.vec278 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.da = shl nuw nsw i64 %n.vec278, 1
  %cmp.n285 = icmp eq i64 %n.vec278, %wide.trip.count
  %min.epilog.iters.check291 = icmp eq i64 %n.mod.vf277, 0
  %n.vec294 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.db = shl nuw nsw i64 %n.vec294, 1
  %cmp.n301 = icmp eq i64 %n.vec294, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader157.us180

.preheader157.us180:                              ; preds = %.preheader157.us180.preheader, %..loopexit158_crit_edge.split.us.us
  %indvars.iv214 = phi i64 [ %i.cv, %.preheader157.us180.preheader ], [ %indvars.iv.next215, %..loopexit158_crit_edge.split.us.us ] ; 2 uses
  %indvars.iv212 = phi i64 [ 0, %.preheader157.us180.preheader ], [ %indvars.iv.next213, %..loopexit158_crit_edge.split.us.us ] ; 3 uses
  %i.dc = mul i64 %i.cz, %indvars.iv212
  %i.dd = add i64 %i.cy, %i.dc
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv212
  %i.de = load ptr, ptr %gep, align 8, !tbaa !151
  %i.df = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv214
  br label %iter.check288

iter.check288:                                    ; preds = %._crit_edge.us.us, %.preheader157.us180
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.us ], [ 0, %.preheader157.us180 ] ; 2 uses
  %.in = phi i32 [ %i.dg, %._crit_edge.us.us ], [ %i.q, %.preheader157.us180 ]
  %.1120167.us.us = phi ptr [ %i.eo, %._crit_edge.us.us ], [ %i.df, %.preheader157.us180 ] ; 8 uses
  %.1124166.us.us = phi ptr [ %.lcssa260, %._crit_edge.us.us ], [ %i.de, %.preheader157.us180 ] ; 7 uses
  %i.dg = add i32 %.in, -1                        ; 2 uses
  br i1 %min.iters.check273, label %vec.epilog.scalar.ph289.preheader, label %vector.memcheck271

vector.memcheck271:                               ; preds = %iter.check288
  %.1124166.us.us272 = ptrtoaddr ptr %.1124166.us.us to i64
  %i.dh = mul i64 %i.al, %indvar
  %i.di = add i64 %i.dd, %i.dh
  %i.dj = sub i64 %i.di, %.1124166.us.us272
  %diff.check = icmp ult i64 %i.dj, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph289.preheader, label %vector.main.loop.iter.check274

vector.main.loop.iter.check274:                   ; preds = %vector.memcheck271
  br i1 %min.iters.check275, label %vec.epilog.ph292, label %vector.ph276

vector.ph276:                                     ; preds = %vector.main.loop.iter.check274
  %i.dk = getelementptr i8, ptr %.1124166.us.us, i64 %i.da ; 2 uses
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph276
  %index280 = phi i64 [ 0, %vector.ph276 ], [ %index.next283, %vector.body279 ] ; 3 uses
  %i.dl = shl i64 %index280, 1
  %next.gep = getelementptr i8, ptr %.1124166.us.us, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load281 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !79
  %wide.load282 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !79
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %index280 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <8 x i16> %wide.load281, ptr %i.dn, align 2, !tbaa !79
  store <8 x i16> %wide.load282, ptr %i.do, align 2, !tbaa !79
  %index.next283 = add nuw i64 %index280, 16      ; 2 uses
  %i.dp = icmp eq i64 %index.next283, %n.vec278
  br i1 %i.dp, label %middle.block284, label %vector.body279, !llvm.loop !191

middle.block284:                                  ; preds = %vector.body279
  br i1 %cmp.n285, label %._crit_edge.us.us, label %vec.epilog.iter.check290

vec.epilog.iter.check290:                         ; preds = %middle.block284
  br i1 %min.epilog.iters.check291, label %vec.epilog.scalar.ph289.preheader, label %vec.epilog.ph292, !prof !160

vec.epilog.ph292:                                 ; preds = %vector.main.loop.iter.check274, %vec.epilog.iter.check290
  %vec.epilog.resume.val286 = phi i64 [ %n.vec278, %vec.epilog.iter.check290 ], [ 0, %vector.main.loop.iter.check274 ]
  %i.dq = getelementptr i8, ptr %.1124166.us.us, i64 %i.db ; 2 uses
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph292
  %index296 = phi i64 [ %vec.epilog.resume.val286, %vec.epilog.ph292 ], [ %index.next299, %vec.epilog.vector.body295 ] ; 3 uses
  %i.dr = shl i64 %index296, 1
  %next.gep297 = getelementptr i8, ptr %.1124166.us.us, i64 %i.dr
  %wide.load298 = load <4 x i16>, ptr %next.gep297, align 2, !tbaa !79
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %index296
  store <4 x i16> %wide.load298, ptr %i.ds, align 2, !tbaa !79
  %index.next299 = add nuw i64 %index296, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.dt, label %vec.epilog.middle.block300, label %vec.epilog.vector.body295, !llvm.loop !192

vec.epilog.middle.block300:                       ; preds = %vec.epilog.vector.body295
  br i1 %cmp.n301, label %._crit_edge.us.us, label %vec.epilog.scalar.ph289.preheader

vec.epilog.scalar.ph289.preheader:                ; preds = %vector.memcheck271, %iter.check288, %vec.epilog.iter.check290, %vec.epilog.middle.block300
  %indvars.iv.ph = phi i64 [ 0, %iter.check288 ], [ 0, %vector.memcheck271 ], [ %n.vec278, %vec.epilog.iter.check290 ], [ %n.vec294, %vec.epilog.middle.block300 ] ; 3 uses
  %.2125163.us.us.ph = phi ptr [ %.1124166.us.us, %iter.check288 ], [ %.1124166.us.us, %vector.memcheck271 ], [ %i.dk, %vec.epilog.iter.check290 ], [ %i.dq, %vec.epilog.middle.block300 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph289.prol.loopexit, label %vec.epilog.scalar.ph289.prol

vec.epilog.scalar.ph289.prol:                     ; preds = %vec.epilog.scalar.ph289.preheader, %vec.epilog.scalar.ph289.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph289.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph289.preheader ] ; 2 uses
  %.2125163.us.us.prol = phi ptr [ %i.du, %vec.epilog.scalar.ph289.prol ], [ %.2125163.us.us.ph, %vec.epilog.scalar.ph289.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph289.prol ], [ 0, %vec.epilog.scalar.ph289.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.2125163.us.us.prol, i64 2 ; 3 uses
  %i.dv = load i16, ptr %.2125163.us.us.prol, align 2, !tbaa !79
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %indvars.iv.prol
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph289.prol.loopexit, label %vec.epilog.scalar.ph289.prol, !llvm.loop !193

vec.epilog.scalar.ph289.prol.loopexit:            ; preds = %vec.epilog.scalar.ph289.prol, %vec.epilog.scalar.ph289.preheader
  %.lcssa305.unr = phi ptr [ poison, %vec.epilog.scalar.ph289.preheader ], [ %i.du, %vec.epilog.scalar.ph289.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph289.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph289.prol ]
  %.2125163.us.us.unr = phi ptr [ %.2125163.us.us.ph, %vec.epilog.scalar.ph289.preheader ], [ %i.du, %vec.epilog.scalar.ph289.prol ]
  %i.dx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge.us.us, label %vec.epilog.scalar.ph289

vec.epilog.scalar.ph289:                          ; preds = %vec.epilog.scalar.ph289.prol.loopexit, %vec.epilog.scalar.ph289
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph289 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph289.prol.loopexit ] ; 5 uses
  %.2125163.us.us = phi ptr [ %i.ek, %vec.epilog.scalar.ph289 ], [ %.2125163.us.us.unr, %vec.epilog.scalar.ph289.prol.loopexit ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.2125163.us.us, i64 2
  %i.ea = load i16, ptr %.2125163.us.us, align 2, !tbaa !79
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %indvars.iv
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %.2125163.us.us, i64 4
  %i.ed = load i16, ptr %i.dz, align 2, !tbaa !79
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 %i.ed, ptr %i.ef, align 2, !tbaa !79
  %i.eg = getelementptr inbounds nuw i8, ptr %.2125163.us.us, i64 6
  %i.eh = load i16, ptr %i.ec, align 2, !tbaa !79
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i16 %i.eh, ptr %i.ej, align 2, !tbaa !79
  %i.ek = getelementptr inbounds nuw i8, ptr %.2125163.us.us, i64 8 ; 2 uses
  %i.el = load i16, ptr %i.eg, align 2, !tbaa !79
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us.us, i64 %indvars.iv
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i16 %i.el, ptr %i.en, align 2, !tbaa !79
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph289, !llvm.loop !194

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph289.prol.loopexit, %vec.epilog.scalar.ph289, %vec.epilog.middle.block300, %middle.block284
  %.lcssa260 = phi ptr [ %i.dq, %vec.epilog.middle.block300 ], [ %i.dk, %middle.block284 ], [ %.lcssa305.unr, %vec.epilog.scalar.ph289.prol.loopexit ], [ %i.ek, %vec.epilog.scalar.ph289 ]
  %i.eo = getelementptr inbounds [2 x i8], ptr %.1120167.us.us, i64 %i.ai
  %.not139.us.us = icmp eq i32 %i.dg, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not139.us.us, label %..loopexit158_crit_edge.split.us.us, label %iter.check288

..loopexit158_crit_edge.split.us.us:              ; preds = %._crit_edge.us.us
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, %i.cw ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge.loopexit201, label %.preheader157.us180

._crit_edge.loopexit199:                          ; preds = %..loopexit_crit_edge.us
  %i.ep = trunc nsw i64 %indvars.iv.next224 to i32
  br label %._crit_edge

._crit_edge.loopexit201:                          ; preds = %..loopexit158_crit_edge.split.us.us
  %i.eq = trunc nsw i64 %indvars.iv.next215 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader157.preheader, %._crit_edge.loopexit201, %.preheader157.us.preheader, %._crit_edge.loopexit199, %.preheader156.us.us.preheader, %.lr.ph
  %.1132.lcssa = phi i32 [ %.0131187, %.lr.ph ], [ %i.bk, %.preheader156.us.us.preheader ], [ %i.eq, %._crit_edge.loopexit201 ], [ %i.ep, %._crit_edge.loopexit199 ], [ %i.cr, %.preheader157.us.preheader ], [ %i.ct, %.preheader157.preheader ]
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0130188, i64 96
  %i.es = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next231, %i.et
  br i1 %i.eu, label %.lr.ph, label %._crit_edge190

._crit_edge190:                                   ; preds = %._crit_edge, %bb.g
  %.lcssa = phi i32 [ %i.av, %bb.g ], [ %i.es, %._crit_edge ]
  %i.ev = load i32, ptr %i.aj, align 8, !tbaa !21
  %i.ew = icmp eq i32 %i.ev, 8
  %i.ex = load i32, ptr %i.t, align 8, !tbaa !21
  %i.ey = mul i32 %i.ex, %.lcssa                  ; 5 uses
  br i1 %i.ew, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge190
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %iter.check, label %.loopexit159

iter.check:                                       ; preds = %bb.h
  %wide.trip.count241 = zext nneg i32 %i.ey to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %i.ey, 4
  br i1 %min.iters.check, label %.lr.ph197.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
end_hunk_0
