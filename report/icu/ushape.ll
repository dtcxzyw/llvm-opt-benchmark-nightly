Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ushape?download=true
inline.NumInlined: 38
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables:bb.a
  br i1 %i.ei, label %.thread272, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = and i32 %i.ds, 2
  %.not199 = icmp ne i32 %i.ej, 0
  %i.ek = trunc i16 %.1.lcssa to i1
  %or.cond7 = and i1 %i.am, %i.ek
  %or.cond213 = select i1 %.not199, i1 %or.cond7, i1 false
  br i1 %or.cond213, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.el = and i16 %i.eg, 1630
  %switch = icmp eq i16 %i.el, 1612
  br i1 %switch, label %.thread272, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.em = and i32 %i.do, 32
  %.not202 = icmp eq i32 %i.em, 0
  %i.en = and i32 %i.ds, 16
  %.not203 = icmp eq i32 %i.en, 0
  %or.cond214 = or i1 %.not202, %.not203
  %spec.select219 = zext i1 %or.cond214 to i32
  br label %.thread272

bb.ap:                                            ; preds = %bb.am
  %i.eo = icmp eq i16 %i.eg, 1617
  %or.cond273 = and i1 %i.an, %i.eo
  br i1 %or.cond273, label %.thread338, label %.thread272

.thread338:                                       ; preds = %bb.ap
  %i.ep = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ee
  br label %bb.at

.thread272:                                       ; preds = %bb.ap, %bb.an, %bb.ao, %bb.al, %bb.ak
  %i.eq = phi i16 [ %.pre306, %bb.ak ], [ %i.eg, %bb.ao ], [ %i.eg, %bb.al ], [ %i.eg, %bb.an ], [ %i.eg, %bb.ap ] ; 4 uses
  %.pre-phi = phi i64 [ %.pre, %bb.ak ], [ %i.ee, %bb.ao ], [ %i.ee, %bb.al ], [ %i.ee, %bb.an ], [ %i.ee, %bb.ap ]
  %.0170 = phi i32 [ %i.ed, %bb.ak ], [ %spec.select219, %bb.ao ], [ %i.eb, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ap ] ; 3 uses
  %i.er = getelementptr inbounds [2 x i8], ptr %0, i64 %.pre-phi ; 4 uses
  %i.es = xor i16 %i.eq, 1536
  %i.et = icmp ult i16 %i.es, 256
  br i1 %i.et, label %bb.aq, label %_ZL7getLinkDs.exit225.thread

bb.aq:                                            ; preds = %.thread272
  %i.eu = add i16 %i.eq, -1619
  %i.ev = icmp ult i16 %i.eu, -8
  br i1 %i.ev, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not207 = icmp ne i16 %i.eq, 1617
  %or.cond274.not = and i1 %.not207, %i.an
  br i1 %or.cond274.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i16 -2, ptr %i.er, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

bb.at:                                            ; preds = %.thread338, %bb.ar
  %i.ew = phi ptr [ %i.ep, %.thread338 ], [ %i.er, %bb.ar ]
  %.0170334337342 = phi i32 [ 1, %.thread338 ], [ %.0170, %bb.ar ]
  %i.ex = phi i16 [ 1617, %.thread338 ], [ %i.eq, %bb.ar ]
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr i8, ptr @_ZL13IrrelevantPos, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -1611
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !19
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nuw nsw i32 %.0170334337342, 65136
  %i.fe = add nuw nsw i32 %i.fd, %i.fc
  %i.ff = trunc i32 %i.fe to i16
  store i16 %i.ff, ptr %i.ew, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

bb.au:                                            ; preds = %bb.aq
  %i.fg = and i32 %i.dw, 8
  %.not205 = icmp eq i32 %i.fg, 0
  %i.fh = lshr i32 %i.dw, 8                       ; 3 uses
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fi = add nuw nsw i32 %i.fh, 64336
  %i.fj = add nuw nsw i32 %i.fi, %.0170
  %i.fk = trunc nuw i32 %i.fj to i16
  store i16 %i.fk, ptr %i.er, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

bb.aw:                                            ; preds = %bb.au
  %.not206 = icmp ne i32 %i.fh, 0
  %i.fl = and i32 %i.dw, 4
  %i.fm = icmp eq i32 %i.fl, 0
  %or.cond216 = and i1 %.not206, %i.fm
  br i1 %or.cond216, label %bb.ax, label %_ZL7getLinkDs.exit225.thread

bb.ax:                                            ; preds = %bb.aw
  %i.fn = add nuw nsw i32 %i.fh, 65136
  %i.fo = add nuw nsw i32 %i.fn, %.0170
  %i.fp = trunc i32 %i.fo to i16
  store i16 %i.fp, ptr %i.er, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

_ZL7getLinkDs.exit225.thread:                     ; preds = %bb.t, %bb.p, %.thread272, %bb.av, %bb.ax, %bb.aw, %bb.as, %bb.at, %_ZL7getLinkDs.exit225
  %.4183 = phi i32 [ %.3182, %bb.as ], [ %.3182, %bb.at ], [ %.3182, %bb.av ], [ %.3182, %bb.ax ], [ %.1180282, %_ZL7getLinkDs.exit225 ], [ %.3182, %bb.aw ], [ %.3182, %.thread272 ], [ %.1180282, %bb.p ], [ %.1180282, %bb.t ] ; 4 uses
  %.3176 = phi i32 [ %.1174.lcssa, %bb.as ], [ %.1174.lcssa, %bb.at ], [ %.1174.lcssa, %bb.av ], [ %.1174.lcssa, %bb.ax ], [ %.0173285, %_ZL7getLinkDs.exit225 ], [ %.1174.lcssa, %bb.aw ], [ %.1174.lcssa, %.thread272 ], [ %.0173285, %bb.p ], [ %.0173285, %bb.t ] ; 7 uses
  %.2169 = phi i32 [ %.1168, %bb.as ], [ %.1168, %bb.at ], [ %.1168, %bb.av ], [ %.1168, %bb.ax ], [ %.0167286, %_ZL7getLinkDs.exit225 ], [ %.1168, %bb.aw ], [ %.1168, %.thread272 ], [ %.0167286, %bb.p ], [ %.0167286, %bb.t ] ; 2 uses
  %.2166 = phi i32 [ %.1165, %bb.as ], [ %.1165, %bb.at ], [ %.1165, %bb.av ], [ %.1165, %bb.ax ], [ %.0164287, %_ZL7getLinkDs.exit225 ], [ %.1165, %bb.aw ], [ %.1165, %.thread272 ], [ %.0164287, %bb.p ], [ %.0164287, %bb.t ] ; 2 uses
  %.2163 = phi i32 [ %.1162, %bb.as ], [ %.1162, %bb.at ], [ %.1162, %bb.av ], [ %.1162, %bb.ax ], [ %.0161288, %_ZL7getLinkDs.exit225 ], [ %.1162, %bb.aw ], [ %.1162, %.thread272 ], [ %.0161288, %bb.p ], [ %.0161288, %bb.t ] ; 2 uses
  %.1160 = phi i32 [ 1, %bb.as ], [ %.0159289, %bb.at ], [ %.0159289, %bb.av ], [ %.0159289, %bb.ax ], [ %.0159289, %_ZL7getLinkDs.exit225 ], [ %.0159289, %bb.aw ], [ %.0159289, %.thread272 ], [ %.0159289, %bb.p ], [ %.0159289, %bb.t ] ; 2 uses
  %.2155 = phi i16 [ %.1154, %bb.as ], [ %.1154, %bb.at ], [ %.1154, %bb.av ], [ %.1154, %bb.ax ], [ %.0153293, %_ZL7getLinkDs.exit225 ], [ %.1154, %bb.aw ], [ %.1154, %.thread272 ], [ %.0153293, %bb.p ], [ %.0153293, %bb.t ] ; 2 uses
  %.2151 = phi i16 [ %.1150, %bb.as ], [ %.1150, %bb.at ], [ %.1150, %bb.av ], [ %.1150, %bb.ax ], [ %.0149294, %_ZL7getLinkDs.exit225 ], [ %.1150, %bb.aw ], [ %.1150, %.thread272 ], [ %.0149294, %bb.p ], [ %.0149294, %bb.t ] ; 2 uses
  %.3 = phi i16 [ %.1.lcssa, %bb.as ], [ %.1.lcssa, %bb.at ], [ %.1.lcssa, %bb.av ], [ %.1.lcssa, %bb.ax ], [ %.0295, %_ZL7getLinkDs.exit225 ], [ %.1.lcssa, %bb.aw ], [ %.1.lcssa, %.thread272 ], [ %.0295, %bb.p ], [ %.0295, %bb.t ] ; 2 uses
  %i.fq = and i16 %.2151, 4
  %i.fr = icmp eq i16 %i.fq, 0                    ; 3 uses
  %.1178 = select i1 %i.fr, i32 %.4183, i32 %.0177283
  %.1158 = select i1 %i.fr, i16 %.2155, i16 %.0157291
  %.3156 = select i1 %i.fr, i16 %.2151, i16 %.2155
  %i.fs = add nsw i32 %.4183, -1                  ; 3 uses
  %i.ft = icmp eq i32 %i.fs, %.3176
  br i1 %i.ft, label %_ZL7getLinkDs.exit247, label %bb.ay

bb.ay:                                            ; preds = %_ZL7getLinkDs.exit225.thread
  %.not208 = icmp eq i32 %.4183, 0
  br i1 %.not208, label %._crit_edge297, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = sext i32 %i.fs to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !14 ; 8 uses
  %i.fx = add i16 %i.fw, -1570
  %or.cond.i242 = icmp ult i16 %i.fx, 178
  br i1 %or.cond.i242, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fy = zext nneg i16 %i.fw to i64
  %i.fz = getelementptr [2 x i8], ptr @_ZL7araLink, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 -3140
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit247

bb.bb:                                            ; preds = %bb.az
  %i.gc = icmp eq i16 %i.fw, 8205
  br i1 %i.gc, label %_ZL7getLinkDs.exit247, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gd = add i16 %i.fw, -8301
  %or.cond5.i243 = icmp ult i16 %i.gd, 3
  br i1 %or.cond5.i243, label %_ZL7getLinkDs.exit247, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ge = add i16 %i.fw, 1200
  %or.cond8.i244 = icmp ult i16 %i.ge, 275
  br i1 %or.cond8.i244, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gf = zext i16 %i.fw to i64
  %i.gg = getelementptr i8, ptr @_ZL9presALink, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 -64336
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gj = zext i8 %i.gi to i16
  br label %_ZL7getLinkDs.exit247

bb.bf:                                            ; preds = %bb.bd
  %i.gk = add i16 %i.fw, 400
  %or.cond11.i245 = icmp ult i16 %i.gk, 141
  br i1 %or.cond11.i245, label %bb.bg, label %_ZL7getLinkDs.exit247

bb.bg:                                            ; preds = %bb.bf
  %i.gl = zext i16 %i.fw to i64
  %i.gm = getelementptr i8, ptr @_ZL9presBLink, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -65136
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !19
  %i.gp = zext i8 %i.go to i16
  br label %_ZL7getLinkDs.exit247

_ZL7getLinkDs.exit247:                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %_ZL7getLinkDs.exit225.thread
  %.4 = phi i32 [ %.3176, %bb.bg ], [ -2, %_ZL7getLinkDs.exit225.thread ], [ %.3176, %bb.ba ], [ %.3176, %bb.bb ], [ %.3176, %bb.bc ], [ %.3176, %bb.be ], [ %.3176, %bb.bf ]
  %.3152 = phi i16 [ %i.gp, %bb.bg ], [ %.3, %_ZL7getLinkDs.exit225.thread ], [ %i.gb, %bb.ba ], [ 3, %bb.bb ], [ 4, %bb.bc ], [ %i.gj, %bb.be ], [ 0, %bb.bf ]
  %.not = icmp eq i32 %.4183, 0
  br i1 %.not, label %._crit_edge297, label %bb.m, !llvm.loop !33

._crit_edge297:                                   ; preds = %bb.ay, %_ZL7getLinkDs.exit247
  %i.gq = icmp ne i32 %.2169, 0
  %i.gr = icmp ne i32 %.1160, 0
  %i.gs = select i1 %i.gq, i1 true, i1 %i.gr
  %i.gt = icmp ne i32 %.2166, 0
  %i.gu = icmp ne i32 %.2163, 0
  %i.gv = select i1 %i.gt, i1 true, i1 %i.gu      ; 4 uses
  br i1 %i.gs, label %bb.bh, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit

bb.bh:                                            ; preds = %._crit_edge297
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !12
  %.sroa.3253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3253.0.copyload = load i32, ptr %.sroa.3253.0..sroa_idx, align 8, !tbaa !12
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.4254.0.copyload = load i32, ptr %.sroa.4254.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5255.0.copyload = load i32, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.gw = and i32 %2, 65539                       ; 6 uses
  %i.gx = icmp eq i32 %i.gw, 0                    ; 2 uses
  %i.gy = and i32 %2, 917504                      ; 5 uses
  %i.gz = icmp eq i32 %i.gy, 524288               ; 3 uses
  %i.ha = icmp slt i32 %1, -1
  br i1 %i.ha, label %.split, label %bb.bi

.split:                                           ; preds = %bb.bh
  store i32 8, ptr %3, align 4, !tbaa !11
  br i1 %i.gv, label %bb.cj, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.hb = shl i32 %1, 1                           ; 2 uses
  %i.hc = add i32 %i.hb, 2
  %i.hd = sext i32 %i.hc to i64                   ; 4 uses
  %i.he = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.hd) #11 ; 22 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %.split353, label %bb.bj

.split353:                                        ; preds = %bb.bi
  store i32 7, ptr %3, align 4, !tbaa !11
  br i1 %i.gv, label %bb.cj, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %or.cond.i248 = or i1 %i.gx, %i.gz
  br i1 %or.cond.i248, label %bb.bk, label %bb.bv

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.he, i8 0, i64 %i.hd, i1 false)
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph184.preheader.i

.lr.ph.i:                                         ; preds = %bb.bk
  br i1 %i.gx, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count221.i = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.bn, %.lr.ph.split.us.preheader.i
  %indvars.iv218.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next219.i, %bb.bn ] ; 2 uses
  %.0132170.us.i = phi i32 [ 0, %.lr.ph.split.us.preheader.i ], [ %.1133.us.i, %bb.bn ] ; 2 uses
  %.0139169.us.i = phi i32 [ 0, %.lr.ph.split.us.preheader.i ], [ %.1140.us.i, %bb.bn ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv218.i
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !14 ; 3 uses
  %i.hi = icmp eq i16 %i.hh, -1
  %i.hj = icmp eq i16 %i.hh, -2
  %or.cond267.i = and i1 %i.gz, %i.hj
  %or.cond270.i = or i1 %i.hi, %or.cond267.i
  br i1 %or.cond270.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.split.us.i
  %i.hk = sext i32 %.0139169.us.i to i64
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hk
  store i16 %i.hh, ptr %i.hl, align 2, !tbaa !14
  %i.hm = add nsw i32 %.0139169.us.i, 1
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.split.us.i
  %i.hn = add nsw i32 %.0132170.us.i, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1140.us.i = phi i32 [ %.0139169.us.i, %bb.bm ], [ %i.hm, %bb.bl ]
  %.1133.us.i = phi i32 [ %i.hn, %bb.bm ], [ %.0132170.us.i, %bb.bl ] ; 2 uses
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next219.i, %wide.trip.count221.i
  br i1 %exitcond222.not.i, label %.preheader166.i, label %.lr.ph.split.us.i, !llvm.loop !34

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.gz, label %.lr.ph.split.split.us.preheader.i, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %i.ho = zext i32 %i.hb to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.he, ptr nonnull align 2 %0, i64 %i.ho, i1 false), !tbaa !14
  br label %.lr.ph184.preheader.i

.lr.ph.split.split.us.preheader.i:                ; preds = %.lr.ph.split.i
  %wide.trip.count217.i = zext nneg i32 %1 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count217.i, 1
  %i.hp = icmp eq i32 %1, 1
  br i1 %i.hp, label %.lr.ph.split.split.us.i.epil.preheader, label %.lr.ph.split.split.us.preheader.i.new

.lr.ph.split.split.us.preheader.i.new:            ; preds = %.lr.ph.split.split.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count217.i, 2147483646
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %bb.bs, %.lr.ph.split.split.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.bs ] ; 3 uses
  %.0132170.us173.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %.1133.us177.i.1, %bb.bs ] ; 2 uses
  %.0139169.us174.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %.1140.us176.i.1, %bb.bs ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %niter.next.1, %bb.bs ]
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !14 ; 2 uses
  %i.hs = icmp eq i16 %i.hr, -2
  br i1 %i.hs, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.split.split.us.i
  %i.ht = sext i32 %.0139169.us174.i to i64
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.ht
  store i16 %i.hr, ptr %i.hu, align 2, !tbaa !14
  %i.hv = add nsw i32 %.0139169.us174.i, 1
  br label %.lr.ph.split.split.us.i.1

bb.bp:                                            ; preds = %.lr.ph.split.split.us.i
  %i.hw = add nsw i32 %.0132170.us173.i, 1
  br label %.lr.ph.split.split.us.i.1

.lr.ph.split.split.us.i.1:                        ; preds = %bb.bp, %bb.bo
  %.1140.us176.i = phi i32 [ %.0139169.us174.i, %bb.bp ], [ %i.hv, %bb.bo ] ; 3 uses
  %.1133.us177.i = phi i32 [ %i.hw, %bb.bp ], [ %.0132170.us173.i, %bb.bo ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !14 ; 2 uses
  %i.ia = icmp eq i16 %i.hz, -2
  br i1 %i.ia, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.split.us.i.1
  %i.ib = sext i32 %.1140.us176.i to i64
  %i.ic = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.ib
  store i16 %i.hz, ptr %i.ic, align 2, !tbaa !14
  %i.id = add nsw i32 %.1140.us176.i, 1
  br label %bb.bs

bb.br:                                            ; preds = %.lr.ph.split.split.us.i.1
  %i.ie = add nsw i32 %.1133.us177.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1140.us176.i.1 = phi i32 [ %.1140.us176.i, %bb.br ], [ %i.id, %bb.bq ] ; 2 uses
  %.1133.us177.i.1 = phi i32 [ %i.ie, %bb.br ], [ %.1133.us177.i, %bb.bq ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader166.i.loopexit95.unr-lcssa, label %.lr.ph.split.split.us.i, !llvm.loop !34

.preheader166.i.loopexit95.unr-lcssa:             ; preds = %bb.bs
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader166.i, label %.lr.ph.split.split.us.i.epil.preheader

.lr.ph.split.split.us.i.epil.preheader:           ; preds = %.preheader166.i.loopexit95.unr-lcssa, %.lr.ph.split.split.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i ], [ %indvars.iv.next.i.1, %.preheader166.i.loopexit95.unr-lcssa ]
  %.0132170.us173.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i ], [ %.1133.us177.i.1, %.preheader166.i.loopexit95.unr-lcssa ] ; 2 uses
  %.0139169.us174.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i ], [ %.1140.us176.i.1, %.preheader166.i.loopexit95.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.epil.init
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !14 ; 2 uses
  %i.ih = icmp eq i16 %i.ig, -2
  br i1 %i.ih, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.split.split.us.i.epil.preheader
  %i.ii = sext i32 %.0139169.us174.i.epil.init to i64
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.ii
  store i16 %i.ig, ptr %i.ij, align 2, !tbaa !14
  br label %.preheader166.i

bb.bu:                                            ; preds = %.lr.ph.split.split.us.i.epil.preheader
  %i.ik = add nsw i32 %.0132170.us173.i.epil.init, 1
  br label %.preheader166.i

.preheader166.i:                                  ; preds = %.preheader166.i.loopexit95.unr-lcssa, %bb.bu, %bb.bt, %bb.bn
  %.0132.lcssa.i = phi i32 [ %.1133.us.i, %bb.bn ], [ %.1133.us177.i.1, %.preheader166.i.loopexit95.unr-lcssa ], [ %i.ik, %bb.bu ], [ %.0132170.us173.i.epil.init, %bb.bt ] ; 2 uses
  %i.il = icmp sgt i32 %.0132.lcssa.i, -1
  br i1 %i.il, label %.lr.ph184.preheader.i, label %._crit_edge.i

.lr.ph184.preheader.i:                            ; preds = %bb.bk, %.preheader166.i, %.lr.ph.split.split.preheader.i
  %.0132.lcssa260.i = phi i32 [ %.0132.lcssa.i, %.preheader166.i ], [ 0, %.lr.ph.split.split.preheader.i ], [ 0, %bb.bk ] ; 2 uses
  %.0145.lcssa259.i = phi i32 [ %1, %.preheader166.i ], [ %1, %.lr.ph.split.split.preheader.i ], [ 0, %bb.bk ]
  %i.im = shl nuw i32 %.0145.lcssa259.i, 1
  %i.in = zext i32 %i.im to i64
  %i.io = shl nuw i32 %.0132.lcssa260.i, 1
  %i.ip = zext i32 %i.io to i64
  %i.iq = sub nsw i64 %i.in, %i.ip
  %scevgep.i = getelementptr i8, ptr %i.he, i64 %i.iq
  %i.ir = add nuw i32 %.0132.lcssa260.i, 1
  %i.is = zext i32 %i.ir to i64
  %i.it = shl nuw nsw i64 %i.is, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i, i8 0, i64 %i.it, i1 false), !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph184.preheader.i, %.preheader166.i
  %i.iu = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.he, i32 noundef %1) ; 0 uses
  %i.iv = tail call i32 @u_strlen_78(ptr noundef nonnull %0)
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i, %bb.bj
  %.0153.i = phi i32 [ %i.iv, %._crit_edge.i ], [ %1, %bb.bj ]
  %.not.i = icmp eq i32 %i.gw, 1                  ; 2 uses
  %brmerge.not = and i1 %.not.i, %i.c
  %.0153.i.mux = select i1 %.not.i, i32 %1, i32 %.0153.i
  br i1 %brmerge.not, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.bv
  %wide.trip.count229.i = zext nneg i32 %1 to i64 ; 6 uses
  %min.iters.check.a = icmp ult i32 %1, 4
  br i1 %min.iters.check.a, label %.lr.ph186.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i32 %1, 16
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.main.loop.iter.check
  %i.iw = and i64 %wide.trip.count229.i, 12
  %n.vec.a = and i64 %wide.trip.count229.i, 2147483632 ; 4 uses
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.ph.a, %pred.store.continue33
  %index.a = phi i64 [ 0, %vector.ph.a ], [ %index.next.a, %pred.store.continue33 ] ; 17 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load.a = load <8 x i16>, ptr %i.ix, align 2, !tbaa !14
  %wide.load3 = load <8 x i16>, ptr %i.iy, align 2, !tbaa !14
  %i.iz = icmp eq <8 x i16> %wide.load.a, splat (i16 -1) ; 8 uses
  %i.ja = icmp eq <8 x i16> %wide.load3, splat (i16 -1) ; 8 uses
  %i.jb = extractelement <8 x i1> %i.iz, i64 0
  br i1 %i.jb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body.a
  store i16 32, ptr %i.ix, align 2, !tbaa !14
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body.a
  %i.jc = extractelement <8 x i1> %i.iz, i64 1
  br i1 %i.jc, label %pred.store.if4, label %pred.store.continue5

pred.store.if4:                                   ; preds = %pred.store.continue
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  store i16 32, ptr %i.je, align 2, !tbaa !14
  br label %pred.store.continue5

pred.store.continue5:                             ; preds = %pred.store.if4, %pred.store.continue
  %i.jf = extractelement <8 x i1> %i.iz, i64 2
  br i1 %i.jf, label %pred.store.if6, label %pred.store.continue7

pred.store.if6:                                   ; preds = %pred.store.continue5
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store i16 32, ptr %i.jh, align 2, !tbaa !14
  br label %pred.store.continue7

pred.store.continue7:                             ; preds = %pred.store.if6, %pred.store.continue5
  %i.ji = extractelement <8 x i1> %i.iz, i64 3
  br i1 %i.ji, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue7
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 6
  store i16 32, ptr %i.jk, align 2, !tbaa !14
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue7
  %i.jl = extractelement <8 x i1> %i.iz, i64 4
  br i1 %i.jl, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue9
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i16 32, ptr %i.jn, align 2, !tbaa !14
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue9
  %i.jo = extractelement <8 x i1> %i.iz, i64 5
  br i1 %i.jo, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 10
  store i16 32, ptr %i.jq, align 2, !tbaa !14
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.jr = extractelement <8 x i1> %i.iz, i64 6
  br i1 %i.jr, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  store i16 32, ptr %i.jt, align 2, !tbaa !14
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.ju = extractelement <8 x i1> %i.iz, i64 7
  br i1 %i.ju, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 14
  store i16 32, ptr %i.jw, align 2, !tbaa !14
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.jx = extractelement <8 x i1> %i.ja, i64 0
  br i1 %i.jx, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i16 32, ptr %i.jz, align 2, !tbaa !14
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ka = extractelement <8 x i1> %i.ja, i64 1
  br i1 %i.ka, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 18
  store i16 32, ptr %i.kc, align 2, !tbaa !14
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.kd = extractelement <8 x i1> %i.ja, i64 2
  br i1 %i.kd, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 20
  store i16 32, ptr %i.kf, align 2, !tbaa !14
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.kg = extractelement <8 x i1> %i.ja, i64 3
  br i1 %i.kg, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 22
  store i16 32, ptr %i.ki, align 2, !tbaa !14
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.kj = extractelement <8 x i1> %i.ja, i64 4
  br i1 %i.kj, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store i16 32, ptr %i.kl, align 2, !tbaa !14
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.km = extractelement <8 x i1> %i.ja, i64 5
  br i1 %i.km, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 26
  store i16 32, ptr %i.ko, align 2, !tbaa !14
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.kp = extractelement <8 x i1> %i.ja, i64 6
  br i1 %i.kp, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 28
  store i16 32, ptr %i.kr, align 2, !tbaa !14
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.ks = extractelement <8 x i1> %i.ja, i64 7
  br i1 %i.ks, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index.a
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 30
  store i16 32, ptr %i.ku, align 2, !tbaa !14
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %index.next.a = add nuw i64 %index.a, 16        ; 2 uses
  %i.kv = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.kv, label %middle.block.a, label %vector.body.a, !llvm.loop !35

middle.block.a:                                   ; preds = %pred.store.continue33
  %cmp.n.a = icmp eq i64 %n.vec.a, %wide.trip.count229.i
  br i1 %cmp.n.a, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block.a
  %min.epilog.iters.check = icmp eq i64 %i.iw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec.a, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %wide.trip.count229.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue44, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %pred.store.continue44 ] ; 5 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index35 ; 2 uses
  %wide.load36 = load <4 x i16>, ptr %i.kw, align 2, !tbaa !14
  %i.kx = icmp eq <4 x i16> %wide.load36, splat (i16 -1) ; 4 uses
  %i.ky = extractelement <4 x i1> %i.kx, i64 0
  br i1 %i.ky, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %vec.epilog.vector.body
  store i16 32, ptr %i.kw, align 2, !tbaa !14
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %vec.epilog.vector.body
  %i.kz = extractelement <4 x i1> %i.kx, i64 1
  br i1 %i.kz, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index35
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  store i16 32, ptr %i.lb, align 2, !tbaa !14
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.lc = extractelement <4 x i1> %i.kx, i64 2
  br i1 %i.lc, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index35
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  store i16 32, ptr %i.le, align 2, !tbaa !14
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.lf = extractelement <4 x i1> %i.kx, i64 3
  br i1 %i.lf, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index35
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 6
  store i16 32, ptr %i.lh, align 2, !tbaa !14
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %index.next45 = add nuw i64 %index35, 4         ; 2 uses
  %i.li = icmp eq i64 %index.next45, %n.vec34
  br i1 %i.li, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %pred.store.continue44
  %cmp.n46 = icmp eq i64 %n.vec34, %wide.trip.count229.i
  br i1 %cmp.n46, label %.loopexit.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv226.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec.a, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ]
  br label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.preheader, %bb.bx
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i, %bb.bx ], [ %indvars.iv226.i.ph, %.lr.ph186.i.preheader ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv226.i ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !14
  %i.ll = icmp eq i16 %i.lk, -1
  br i1 %i.ll, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph186.i
  store i16 32, ptr %i.lj, align 2, !tbaa !14
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph186.i
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %.loopexit.i, label %.lr.ph186.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %bb.bx, %middle.block.a, %vec.epilog.middle.block, %bb.bv
  %.1154.i = phi i32 [ %.0153.i.mux, %bb.bv ], [ %1, %middle.block.a ], [ %1, %vec.epilog.middle.block ], [ %1, %bb.bx ]
  %i.lm = icmp eq i32 %i.gw, %.sroa.2.0.copyload
  br i1 %i.lm, label %.thread.i, label %bb.by

bb.by:                                            ; preds = %.loopexit.i
  %i.ln = icmp eq i32 %i.gw, 65536
  %i.lo = icmp eq i32 %.sroa.6.0.copyload, 1
  %or.cond4.i = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %or.cond4.i, label %.thread.i, label %bb.bz

.thread.i:                                        ; preds = %bb.by, %.loopexit.i
  %i.lp = icmp eq i32 %i.gy, %.sroa.4254.0.copyload
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lq = icmp eq i32 %i.gy, %.sroa.4254.0.copyload
  br i1 %i.lq, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz, %.thread.i
  %i.lr = phi i1 [ %i.lp, %.thread.i ], [ true, %bb.bz ]
  %i.ls = phi i1 [ true, %.thread.i ], [ false, %bb.bz ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.he, i8 0, i64 %i.hd, i1 false)
  %i.lt = icmp sgt i32 %1, -1
  br i1 %i.lt, label %.lr.ph191.preheader.i, label %._crit_edge195.i

.lr.ph191.preheader.i:                            ; preds = %bb.ca
  %i.lu = zext nneg i32 %1 to i64
  br label %.lr.ph191.i

.preheader164.i:                                  ; preds = %bb.cc
  %i.lv = icmp sgt i32 %.4136.i, 0
  br i1 %i.lv, label %iter.check57, label %._crit_edge195.i

iter.check57:                                     ; preds = %.preheader164.i
  %wide.trip.count237.i = zext nneg i32 %.4136.i to i64 ; 6 uses
  %min.iters.check47 = icmp ult i32 %.4136.i, 4
  br i1 %min.iters.check47, label %.lr.ph194.i.preheader, label %vector.main.loop.iter.check48

vector.main.loop.iter.check48:                    ; preds = %iter.check57
  %min.iters.check49 = icmp ult i32 %.4136.i, 16
  br i1 %min.iters.check49, label %vec.epilog.ph61, label %vector.ph50

vector.ph50:                                      ; preds = %vector.main.loop.iter.check48
  %i.lw = and i64 %wide.trip.count237.i, 12
  %n.vec51 = and i64 %wide.trip.count237.i, 2147483632 ; 4 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.ph50, %vector.body52
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next54, %vector.body52 ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %index53 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <8 x i16> splat (i16 32), ptr %i.lx, align 2, !tbaa !14
  store <8 x i16> splat (i16 32), ptr %i.ly, align 2, !tbaa !14
  %index.next54 = add nuw i64 %index53, 16        ; 2 uses
  %i.lz = icmp eq i64 %index.next54, %n.vec51
  br i1 %i.lz, label %middle.block55, label %vector.body52, !llvm.loop !38

middle.block55:                                   ; preds = %vector.body52
  %cmp.n56 = icmp eq i64 %n.vec51, %wide.trip.count237.i
  br i1 %cmp.n56, label %._crit_edge195.i, label %vec.epilog.iter.check58

vec.epilog.iter.check58:                          ; preds = %middle.block55
  %min.epilog.iters.check60 = icmp eq i64 %i.lw, 0
  br i1 %min.epilog.iters.check60, label %.lr.ph194.i.preheader, label %vec.epilog.ph61, !prof !18

vec.epilog.ph61:                                  ; preds = %vector.main.loop.iter.check48, %vec.epilog.iter.check58
  %vec.epilog.resume.val62 = phi i64 [ %n.vec51, %vec.epilog.iter.check58 ], [ 0, %vector.main.loop.iter.check48 ]
  %n.vec63 = and i64 %wide.trip.count237.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body64

vec.epilog.vector.body64:                         ; preds = %vec.epilog.vector.body64, %vec.epilog.ph61
  %index65 = phi i64 [ %vec.epilog.resume.val62, %vec.epilog.ph61 ], [ %index.next66, %vec.epilog.vector.body64 ] ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %index65
  store <4 x i16> splat (i16 32), ptr %i.ma, align 2, !tbaa !14
  %index.next66 = add nuw i64 %index65, 4         ; 2 uses
  %i.mb = icmp eq i64 %index.next66, %n.vec63
  br i1 %i.mb, label %vec.epilog.middle.block67, label %vec.epilog.vector.body64, !llvm.loop !39

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body64
  %cmp.n68 = icmp eq i64 %n.vec63, %wide.trip.count237.i
  br i1 %cmp.n68, label %._crit_edge195.i, label %.lr.ph194.i.preheader

.lr.ph194.i.preheader:                            ; preds = %iter.check57, %vec.epilog.iter.check58, %vec.epilog.middle.block67
  %indvars.iv234.i.ph = phi i64 [ 0, %iter.check57 ], [ %n.vec51, %vec.epilog.iter.check58 ], [ %n.vec63, %vec.epilog.middle.block67 ]
  br label %.lr.ph194.i

.lr.ph191.i:                                      ; preds = %bb.cc, %.lr.ph191.preheader.i
  %indvars.iv231.i = phi i64 [ %i.lu, %.lr.ph191.preheader.i ], [ %indvars.iv.next232.i, %bb.cc ] ; 3 uses
  %.3135189.i = phi i32 [ 0, %.lr.ph191.preheader.i ], [ %.4136.i, %bb.cc ] ; 2 uses
  %.2141188.i = phi i32 [ %1, %.lr.ph191.preheader.i ], [ %.3142.i, %bb.cc ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv231.i
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !14 ; 3 uses
  %i.me = icmp eq i16 %i.md, -1
  %or.cond364 = select i1 %i.ls, i1 %i.me, i1 false
  %i.mf = icmp eq i16 %i.md, -2
  %or.cond268.i = select i1 %i.lr, i1 %i.mf, i1 false
  %or.cond365 = select i1 %or.cond364, i1 true, i1 %or.cond268.i
  br i1 %or.cond365, label %bb.cb, label %._crit_edge247.i

bb.cb:                                            ; preds = %.lr.ph191.i
  %i.mg = add nsw i32 %.3135189.i, 1
  br label %bb.cc

._crit_edge247.i:                                 ; preds = %.lr.ph191.i
  %i.mh = sext i32 %.2141188.i to i64
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.mh
  store i16 %i.md, ptr %i.mi, align 2, !tbaa !14
  %i.mj = add nsw i32 %.2141188.i, -1
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge247.i, %bb.cb
  %.3142.i = phi i32 [ %.2141188.i, %bb.cb ], [ %i.mj, %._crit_edge247.i ]
  %.4136.i = phi i32 [ %i.mg, %bb.cb ], [ %.3135189.i, %._crit_edge247.i ] ; 5 uses
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, -1
  %i.mk = icmp sgt i64 %indvars.iv231.i, 0
  br i1 %i.mk, label %.lr.ph191.i, label %.preheader164.i, !llvm.loop !40

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader, %.lr.ph194.i
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %.lr.ph194.i ], [ %indvars.iv234.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %indvars.iv234.i
  store i16 32, ptr %i.ml, align 2, !tbaa !14
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count237.i
  br i1 %exitcond238.not.i, label %._crit_edge195.i, label %.lr.ph194.i, !llvm.loop !41

._crit_edge195.i:                                 ; preds = %.lr.ph194.i, %middle.block55, %vec.epilog.middle.block67, %.preheader164.i, %bb.ca
  %i.mm = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.he, i32 noundef %1) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge195.i, %bb.bz
  %.2155.i = phi i32 [ %1, %._crit_edge195.i ], [ %.1154.i, %bb.bz ]
  %i.mn = icmp eq i32 %i.gw, %.sroa.3253.0.copyload
  br i1 %i.mn, label %.thread162.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mo = icmp eq i32 %i.gw, 65536
  %i.mp = icmp eq i32 %.sroa.6.0.copyload, 0
  %or.cond9.i = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond9.i, label %.thread162.i, label %bb.cf

.thread162.i:                                     ; preds = %bb.ce, %bb.cd
  %i.mq = icmp eq i32 %i.gy, %.sroa.5255.0.copyload
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.mr = icmp eq i32 %i.gy, %.sroa.5255.0.copyload
  br i1 %i.mr, label %bb.cg, label %.split352

bb.cg:                                            ; preds = %bb.cf, %.thread162.i
  %i.ms = phi i1 [ %i.mq, %.thread162.i ], [ true, %bb.cf ]
  %i.mt = phi i1 [ true, %.thread162.i ], [ false, %bb.cf ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.he, i8 0, i64 %i.hd, i1 false)
  br i1 %i.c, label %.lr.ph201.preheader.i, label %iter.check80

.lr.ph201.preheader.i:                            ; preds = %bb.cg
  %wide.trip.count242.i = zext nneg i32 %1 to i64 ; 2 uses
  br label %.lr.ph201.i

.preheader.i:                                     ; preds = %bb.ci
  %i.mu = icmp sgt i32 %.6138.i, -1
  br i1 %i.mu, label %iter.check80, label %._crit_edge207.i

iter.check80:                                     ; preds = %.preheader.i, %bb.cg
  %.5137.lcssa265.i = phi i32 [ %.6138.i, %.preheader.i ], [ 0, %bb.cg ] ; 6 uses
  %.5150.lcssa264.i = phi i64 [ %wide.trip.count242.i, %.preheader.i ], [ 0, %bb.cg ] ; 5 uses
  %narrow = add nuw i32 %.5137.lcssa265.i, 1
  %i.mv = zext i32 %narrow to i64                 ; 5 uses
  %min.iters.check70 = icmp samesign ult i32 %.5137.lcssa265.i, 3
  br i1 %min.iters.check70, label %.lr.ph206.i.preheader, label %vector.main.loop.iter.check71

vector.main.loop.iter.check71:                    ; preds = %iter.check80
  %min.iters.check72 = icmp samesign ult i32 %.5137.lcssa265.i, 15
  br i1 %min.iters.check72, label %vec.epilog.ph84, label %vector.ph73

vector.ph73:                                      ; preds = %vector.main.loop.iter.check71
  %i.mw = and i64 %i.mv, 12
  %n.vec74 = and i64 %i.mv, 4294967280            ; 5 uses
  %i.mx = sub nsw i64 %.5150.lcssa264.i, %n.vec74
  %i.my = trunc nuw i64 %n.vec74 to i32
  %i.mz = sub i32 %.5137.lcssa265.i, %i.my
  br label %vector.body75

vector.body75:                                    ; preds = %vector.ph73, %vector.body75
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next77, %vector.body75 ] ; 2 uses
  %i.na = sub i64 %.5150.lcssa264.i, %index76
  %i.nb = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.na ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 -14
  %i.nd = getelementptr inbounds i8, ptr %i.nb, i64 -30
  store <8 x i16> splat (i16 32), ptr %i.nc, align 2, !tbaa !14
  store <8 x i16> splat (i16 32), ptr %i.nd, align 2, !tbaa !14
  %index.next77 = add nuw i64 %index76, 16        ; 2 uses
  %i.ne = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.ne, label %middle.block78, label %vector.body75, !llvm.loop !42

middle.block78:                                   ; preds = %vector.body75
  %cmp.n79 = icmp eq i64 %n.vec74, %i.mv
  br i1 %cmp.n79, label %._crit_edge207.i, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block78
  %min.epilog.iters.check83 = icmp eq i64 %i.mw, 0
  br i1 %min.epilog.iters.check83, label %.lr.ph206.i.preheader, label %vec.epilog.ph84, !prof !18

vec.epilog.ph84:                                  ; preds = %vector.main.loop.iter.check71, %vec.epilog.iter.check81
  %vec.epilog.resume.val85 = phi i64 [ %n.vec74, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check71 ]
  %n.vec86.a = and i64 %i.mv, 4294967292          ; 4 uses
  %i.nf = sub nsw i64 %.5150.lcssa264.i, %n.vec86.a
  %i.ng = trunc nuw i64 %n.vec86.a to i32
  %i.nh = sub i32 %.5137.lcssa265.i, %i.ng
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph84
  %index88.a = phi i64 [ %vec.epilog.resume.val85, %vec.epilog.ph84 ], [ %index.next89, %vec.epilog.vector.body87 ] ; 2 uses
  %i.ni = sub i64 %.5150.lcssa264.i, %index88.a
  %i.nj = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 -6
  store <4 x i16> splat (i16 32), ptr %i.nk, align 2, !tbaa !14
  %index.next89 = add nuw i64 %index88.a, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next89, %n.vec86.a
  br i1 %i.nl, label %vec.epilog.middle.block90, label %vec.epilog.vector.body87, !llvm.loop !43

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body87
  %cmp.n91 = icmp eq i64 %n.vec86.a, %i.mv
  br i1 %cmp.n91, label %._crit_edge207.i, label %.lr.ph206.i.preheader

.lr.ph206.i.preheader:                            ; preds = %iter.check80, %vec.epilog.iter.check81, %vec.epilog.middle.block90
  %indvars.iv244.i.ph = phi i64 [ %.5150.lcssa264.i, %iter.check80 ], [ %i.mx, %vec.epilog.iter.check81 ], [ %i.nf, %vec.epilog.middle.block90 ]
  %.7205.i.ph = phi i32 [ %.5137.lcssa265.i, %iter.check80 ], [ %i.mz, %vec.epilog.iter.check81 ], [ %i.nh, %vec.epilog.middle.block90 ]
  br label %.lr.ph206.i

.lr.ph201.i:                                      ; preds = %bb.ci, %.lr.ph201.preheader.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph201.preheader.i ], [ %indvars.iv.next240.i, %bb.ci ] ; 2 uses
  %.5137199.i = phi i32 [ 0, %.lr.ph201.preheader.i ], [ %.6138.i, %bb.ci ] ; 2 uses
  %.4143198.i = phi i32 [ 0, %.lr.ph201.preheader.i ], [ %.5144.i, %bb.ci ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv239.i
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !14 ; 3 uses
  %i.no = icmp eq i16 %i.nn, -1
  %or.cond366 = select i1 %i.mt, i1 %i.no, i1 false
  %i.np = icmp eq i16 %i.nn, -2
  %or.cond269.i = select i1 %i.ms, i1 %i.np, i1 false
  %or.cond367 = select i1 %or.cond366, i1 true, i1 %or.cond269.i
  br i1 %or.cond367, label %bb.ch, label %._crit_edge248.i

bb.ch:                                            ; preds = %.lr.ph201.i
  %i.nq = add nsw i32 %.5137199.i, 1
  br label %bb.ci

._crit_edge248.i:                                 ; preds = %.lr.ph201.i
  %i.nr = sext i32 %.4143198.i to i64
  %i.ns = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.nr
  store i16 %i.nn, ptr %i.ns, align 2, !tbaa !14
  %i.nt = add nsw i32 %.4143198.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge248.i, %bb.ch
  %.5144.i = phi i32 [ %.4143198.i, %bb.ch ], [ %i.nt, %._crit_edge248.i ]
  %.6138.i = phi i32 [ %i.nq, %bb.ch ], [ %.5137199.i, %._crit_edge248.i ] ; 3 uses
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count242.i
  br i1 %exitcond243.not.i, label %.preheader.i, label %.lr.ph201.i, !llvm.loop !44

.lr.ph206.i:                                      ; preds = %.lr.ph206.i.preheader, %.lr.ph206.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %.lr.ph206.i ], [ %indvars.iv244.i.ph, %.lr.ph206.i.preheader ] ; 2 uses
  %.7205.i = phi i32 [ %i.nv, %.lr.ph206.i ], [ %.7205.i.ph, %.lr.ph206.i.preheader ] ; 2 uses
  %i.nu = getelementptr inbounds [2 x i8], ptr %i.he, i64 %indvars.iv244.i
  store i16 32, ptr %i.nu, align 2, !tbaa !14
  %indvars.iv.next245.i = add nsw i64 %indvars.iv244.i, -1
  %i.nv = add nsw i32 %.7205.i, -1
  %.not271.i = icmp eq i32 %.7205.i, 0
  br i1 %.not271.i, label %._crit_edge207.i, label %.lr.ph206.i, !llvm.loop !45

._crit_edge207.i:                                 ; preds = %.lr.ph206.i, %middle.block78, %vec.epilog.middle.block90, %.preheader.i
  %i.nw = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.he, i32 noundef %1) ; 0 uses
  br label %.split352

.split352:                                        ; preds = %._crit_edge207.i, %bb.cf
  %.3156.i = phi i32 [ %1, %._crit_edge207.i ], [ %.2155.i, %bb.cf ] ; 2 uses
  tail call void @uprv_free_78(ptr noundef nonnull %i.he)
  br i1 %i.gv, label %bb.cj, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit: ; preds = %._crit_edge297
  br i1 %i.gv, label %bb.cj, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.cj:                                            ; preds = %.split353, %.split352, %.split, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit
  %.0184351 = phi i32 [ 0, %.split ], [ %1, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit ], [ %.3156.i, %.split352 ], [ 0, %.split353 ]
  %i.nx = tail call fastcc noundef i32 @_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables(ptr noundef %0, i32 noundef %1, i32 noundef %.0184351, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %5)
  br label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread: ; preds = %_ZL7getLinkDs.exit, %.split353, %.split352, %.split, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit, %bb.cj
  %.1185 = phi i32 [ %i.nx, %bb.cj ], [ %1, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit ], [ 0, %.split353 ], [ 0, %.split ], [ %.3156.i, %.split352 ], [ 0, %_ZL7getLinkDs.exit ]
  ret i32 %.1185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL25handleTashkeelWithTatweelPDsiijP10UErrorCode(ptr nofree noundef nonnull captures(none) %0, i32 noundef returned %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !14   ; 10 uses
  %i.d = and i16 %i.c, -16
  %or.cond.i = icmp eq i16 %i.d, -400
  br i1 %or.cond.i, label %switch.early.test.i, label %bb.b

switch.early.test.i:                              ; preds = %.lr.ph
  switch i16 %i.c, label %_ZL23isTashkeelOnTatweelCharDs.exit [
    i16 -387, label %.sink.split
    i16 -395, label %bb.c
    i16 -397, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i16 %i.c, 782
  %i.f = icmp ult i16 %i.e, 3
  br i1 %i.f, label %.sink.split, label %bb.c

_ZL23isTashkeelOnTatweelCharDs.exit:              ; preds = %switch.early.test.i
  %i.g = zext i16 %i.c to i64
  %i.h = getelementptr i8, ptr @_ZL14tashkeelMedial, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -65136
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19    ; 2 uses
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %.sink.split, label %switch.early.test.i23

switch.early.test.i23:                            ; preds = %_ZL23isTashkeelOnTatweelCharDs.exit
  switch i16 %i.c, label %_ZL23isTashkeelOnTatweelCharDs.exit24 [
    i16 -387, label %.sink.split
    i16 -395, label %bb.c
    i16 -397, label %bb.c
  ]

_ZL23isTashkeelOnTatweelCharDs.exit24:            ; preds = %switch.early.test.i23
  %i.l = icmp eq i8 %i.j, 2
  br i1 %i.l, label %.sink.split, label %switch.early.test.i27

switch.early.test.i27:                            ; preds = %_ZL23isTashkeelOnTatweelCharDs.exit24
  %i.m = add nsw i16 %i.c, 397
  %switch.and = and i16 %i.m, -3
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  br label %_ZL22isIsolatedTashkeelCharDs.exit

bb.c:                                             ; preds = %bb.b, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i23, %switch.early.test.i23
  %i.n = add i16 %i.c, 924
  %or.cond11.i = icmp ult i16 %i.n, -6
  br label %_ZL22isIsolatedTashkeelCharDs.exit

_ZL22isIsolatedTashkeelCharDs.exit:               ; preds = %switch.early.test.i27, %bb.c
  %.0.i26 = phi i1 [ %or.cond11.i, %bb.c ], [ %switch.selectcmp, %switch.early.test.i27 ]
  %.not18 = icmp eq i16 %i.c, -388
  %or.cond14 = or i1 %.not18, %.0.i26
  br i1 %or.cond14, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %_ZL22isIsolatedTashkeelCharDs.exit, %_ZL23isTashkeelOnTatweelCharDs.exit24, %switch.early.test.i23, %switch.early.test.i, %bb.b, %_ZL23isTashkeelOnTatweelCharDs.exit
  %.sink = phi i16 [ 1600, %_ZL23isTashkeelOnTatweelCharDs.exit ], [ -387, %_ZL23isTashkeelOnTatweelCharDs.exit24 ], [ -387, %bb.b ], [ %i.c, %switch.early.test.i ], [ %i.c, %switch.early.test.i23 ], [ 32, %_ZL22isIsolatedTashkeelCharDs.exit ]
  store i16 %.sink, ptr %i.b, align 2, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %_ZL22isIsolatedTashkeelCharDs.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret i32 %1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL14deShapeUnicodePDsiijP10UErrorCode15uShapeVariables(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef readonly byval(%struct.uShapeVariables) align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 58720256
  %i.b = icmp eq i32 %i.a, 16777216               ; 2 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i32 %2, 7340032
  %i.e = icmp eq i32 %i.d, 2097152
  %i.f = add nsw i32 %1, -1                       ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count104 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.l
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.l ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %.076.us.us = phi i32 [ %spec.select.us.us, %bb.l ], [ 0, %.lr.ph.split.us ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101 ; 7 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !14   ; 9 uses
  %i.j = add i16 %i.i, 1200
  %or.cond.us.us = icmp ult i16 %i.j, 176
  br i1 %or.cond.us.us, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  switch i16 %i.i, label %bb.f [
    i16 -384, label %bb.c
    i16 1569, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = icmp samesign ult i64 %indvars.iv101, %i.g
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !14
  switch i16 %i.m, label %bb.f [
    i16 -272, label %bb.e
    i16 -273, label %bb.e
    i16 1609, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  store i16 32, ptr %i.h, align 2, !tbaa !14
  store i16 1574, ptr %i.l, align 2, !tbaa !14
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %switch.selectcmp.case1.i.us.us = icmp eq i16 %i.i, -397
  %switch.selectcmp.case2.i.us.us = icmp eq i16 %i.i, 8203
  %switch.selectcmp.i.us.us = or i1 %switch.selectcmp.case1.i.us.us, %switch.selectcmp.case2.i.us.us
  %i.n = icmp samesign ult i64 %indvars.iv101, %i.g
  %or.cond69.us.us = select i1 %switch.selectcmp.i.us.us, i1 %i.n, i1 false
  br i1 %or.cond69.us.us, label %bb.g, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14   ; 2 uses
  %i.q = add i16 %i.p, 335
  %or.cond.i70.us.us = icmp ult i16 %i.q, 14
  br i1 %or.cond.i70.us.us, label %_ZL20isSeenTailFamilyCharDs.exit.us.us, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us

_ZL20isSeenTailFamilyCharDs.exit.us.us:           ; preds = %bb.g
  %i.r = zext i16 %i.p to i64
  %i.s = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -65201
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  %.not65.us.us = icmp eq i8 %i.u, 0
  br i1 %.not65.us.us, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us, label %bb.h

bb.h:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us
  store i16 32, ptr %i.h, align 2, !tbaa !14
  br label %bb.l

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us:    ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us, %bb.g, %bb.f
  %i.v = add i16 %i.i, 400
  %or.cond8.us.us = icmp ult i16 %i.v, 133
  br i1 %or.cond8.us.us, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us
  %i.w = zext i16 %i.i to i64
  %i.x = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -130272
  %i.z = load i16, ptr %i.y, align 2, !tbaa !14   ; 2 uses
  store i16 %i.z, ptr %i.h, align 2, !tbaa !14
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.split.us.split.us
  %i.aa = zext i16 %i.i to i64
  %i.ab = getelementptr [2 x i8], ptr @_ZL13convertFBto06, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -128672
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !14 ; 3 uses
  %.not66.us.us = icmp eq i16 %i.ad, 0
  br i1 %.not66.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 %i.ad, ptr %i.h, align 2, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us, %bb.h, %bb.e
  %i.ae = phi i16 [ %i.ad, %bb.k ], [ %i.i, %bb.j ], [ %i.z, %bb.i ], [ %i.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us ], [ 32, %bb.h ], [ 32, %bb.e ]
  %i.af = add i16 %i.ae, 259
  %i.ag = icmp ult i16 %i.af, -8
  %spec.select.us.us = select i1 %i.ag, i32 %.076.us.us, i32 1 ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !47

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.q
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.q ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.076.us = phi i32 [ %spec.select.us, %bb.q ], [ 0, %.lr.ph.split.us ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96 ; 3 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !14 ; 8 uses
  %i.aj = add i16 %i.ai, 1200
  %or.cond.us = icmp ult i16 %i.aj, 176
  br i1 %or.cond.us, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.split
  %switch.selectcmp.case1.i.us = icmp eq i16 %i.ai, -397
  %switch.selectcmp.case2.i.us = icmp eq i16 %i.ai, 8203
  %switch.selectcmp.i.us = or i1 %switch.selectcmp.case1.i.us, %switch.selectcmp.case2.i.us
  %i.ak = icmp samesign ult i64 %indvars.iv96, %i.g
  %or.cond69.us = select i1 %switch.selectcmp.i.us, i1 %i.ak, i1 false
  br i1 %or.cond69.us, label %bb.n, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !14 ; 2 uses
  %i.an = add i16 %i.am, 335
  %or.cond.i70.us = icmp ult i16 %i.an, 14
  br i1 %or.cond.i70.us, label %_ZL20isSeenTailFamilyCharDs.exit.us, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us

_ZL20isSeenTailFamilyCharDs.exit.us:              ; preds = %bb.n
  %i.ao = zext i16 %i.am to i64
  %i.ap = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -65201
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %.not65.us = icmp eq i8 %i.ar, 0
  br i1 %.not65.us, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us, label %.sink.split

_ZL20isSeenTailFamilyCharDs.exit.thread.us:       ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us, %bb.n, %bb.m
  %i.as = add i16 %i.ai, 400
  %or.cond8.us = icmp ult i16 %i.as, 133
  br i1 %or.cond8.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us
  %i.at = zext i16 %i.ai to i64
  %i.au = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -130272
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !14
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph.split.us.split
  %i.ax = zext i16 %i.ai to i64
  %i.ay = getelementptr [2 x i8], ptr @_ZL13convertFBto06, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -128672
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !14 ; 2 uses
  %.not66.us = icmp eq i16 %i.ba, 0
  br i1 %.not66.us, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %_ZL20isSeenTailFamilyCharDs.exit.us, %bb.o
  %.sink = phi i16 [ 32, %_ZL20isSeenTailFamilyCharDs.exit.us ], [ %i.aw, %bb.o ], [ %i.ba, %bb.p ] ; 2 uses
  store i16 %.sink, ptr %i.ah, align 2, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %_ZL20isSeenTailFamilyCharDs.exit.thread.us
  %i.bb = phi i16 [ %i.ai, %_ZL20isSeenTailFamilyCharDs.exit.thread.us ], [ %i.ai, %bb.p ], [ %.sink, %.sink.split ]
  %i.bc = add i16 %i.bb, 259
  %i.bd = icmp ult i16 %i.bc, -8
  %spec.select.us = select i1 %i.bd, i32 %.076.us, i32 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count104
  br i1 %exitcond100.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !47

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.be = zext nneg i32 %i.f to i64
  %wide.trip.count94 = zext nneg i32 %1 to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.y
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next92, %bb.y ] ; 3 uses
  %.076.us77 = phi i32 [ 0, %.lr.ph.split.split.us.preheader ], [ %spec.select.us83, %bb.y ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91 ; 5 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !14 ; 7 uses
  %i.bh = add i16 %i.bg, 1200
  %or.cond.us79 = icmp ult i16 %i.bh, 176
  br i1 %or.cond.us79, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.us
  switch i16 %i.bg, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us80 [
    i16 -384, label %bb.s
    i16 1569, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bi = icmp samesign ult i64 %indvars.iv91, %i.be
  br i1 %i.bi, label %bb.t, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us80

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !14
  switch i16 %i.bk, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us80 [
    i16 -272, label %bb.u
    i16 -273, label %bb.u
    i16 1609, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  store i16 32, ptr %i.bf, align 2, !tbaa !14
  store i16 1574, ptr %i.bj, align 2, !tbaa !14
  br label %bb.y

_ZL20isSeenTailFamilyCharDs.exit.thread.us80:     ; preds = %bb.t, %bb.s, %bb.r
  %i.bl = add i16 %i.bg, 400
  %or.cond8.us81 = icmp ult i16 %i.bl, 133
  br i1 %or.cond8.us81, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us80
  %i.bm = zext i16 %i.bg to i64
  %i.bn = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -130272
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !14 ; 2 uses
  store i16 %i.bp, ptr %i.bf, align 2, !tbaa !14
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph.split.split.us
  %i.bq = zext i16 %i.bg to i64
  %i.br = getelementptr [2 x i8], ptr @_ZL13convertFBto06, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -128672
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !14 ; 3 uses
  %.not66.us82 = icmp eq i16 %i.bt, 0
  br i1 %.not66.us82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %i.bt, ptr %i.bf, align 2, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZL20isSeenTailFamilyCharDs.exit.thread.us80, %bb.u
  %i.bu = phi i16 [ %i.bt, %bb.x ], [ %i.bg, %bb.w ], [ %i.bp, %bb.v ], [ %i.bg, %_ZL20isSeenTailFamilyCharDs.exit.thread.us80 ], [ 32, %bb.u ]
  %i.bv = add i16 %i.bu, 259
  %i.bw = icmp ult i16 %i.bv, -8
  %spec.select.us83 = select i1 %i.bw, i32 %.076.us77, i32 1 ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !47

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %.076 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %spec.select, %bb.ab ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !14 ; 6 uses
  %i.bz = add i16 %i.by, 1200
  %or.cond = icmp ult i16 %i.bz, 176
  br i1 %or.cond, label %bb.z, label %_ZL20isSeenTailFamilyCharDs.exit.thread

bb.z:                                             ; preds = %.lr.ph.split.split
  %i.ca = zext i16 %i.by to i64
  %i.cb = getelementptr [2 x i8], ptr @_ZL13convertFBto06, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -128672
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !14 ; 2 uses
  %.not66 = icmp eq i16 %i.cd, 0
  br i1 %.not66, label %bb.ab, label %.sink.split115

_ZL20isSeenTailFamilyCharDs.exit.thread:          ; preds = %.lr.ph.split.split
  %i.ce = add i16 %i.by, 400
  %or.cond8 = icmp ult i16 %i.ce, 133
  br i1 %or.cond8, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread
  %i.cf = zext i16 %i.by to i64
  %i.cg = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -130272
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !14
  br label %.sink.split115

.sink.split115:                                   ; preds = %bb.z, %bb.aa
  %.sink117 = phi i16 [ %i.ci, %bb.aa ], [ %i.cd, %bb.z ] ; 2 uses
  store i16 %.sink117, ptr %i.bx, align 2, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split115, %_ZL20isSeenTailFamilyCharDs.exit.thread, %bb.z
  %i.cj = phi i16 [ %i.by, %_ZL20isSeenTailFamilyCharDs.exit.thread ], [ %i.by, %bb.z ], [ %.sink117, %.sink.split115 ]
  %i.ck = add i16 %i.cj, 259
  %i.cl = icmp ult i16 %i.ck, -8
  %spec.select = select i1 %i.cl, i32 %.076, i32 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.ab, %bb.y, %bb.q, %bb.l
  %.0.lcssa = phi i32 [ %spec.select.us.us, %bb.l ], [ %spec.select.us83, %bb.y ], [ %spec.select.us, %bb.q ], [ %spec.select, %bb.ab ]
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.cm = tail call fastcc noundef i32 @_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables(ptr noundef %0, i32 noundef %1, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %4)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ac, %._crit_edge
  %.059 = phi i32 [ %i.cm, %bb.ac ], [ %1, %._crit_edge ], [ %1, %bb.a ]
  ret i32 %.059
}

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL31_shapeToArabicDigitsWithContextPDsiDsaa(ptr nofree noundef captures(none) %0, i32 noundef %1, i16 noundef zeroext range(i16 0, 1777) %2, i8 noundef signext range(i8 0, 2) %3, i8 noundef signext range(i8 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i16 %2, -48                      ; 2 uses
  %.not = icmp eq i8 %3, 0
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader28
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.b, label %.lr.ph34.preheader, label %.loopexit

.lr.ph34.preheader:                               ; preds = %.preheader
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02430 = phi i8 [ %4, %.lr.ph.preheader ], [ %.125, %bb.g ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !14   ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = tail call i32 @ubidi_getClass_78(i32 noundef %i.f)
  switch i32 %i.g, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 13, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %.not27 = icmp eq i8 %.02430, 0
  br i1 %.not27, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i16 %i.e, -48
  %i.i = icmp ult i16 %i.h, 10
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i16 %i.e, %i.a
  store i16 %i.j, ptr %i.d, align 2, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.e, %bb.d, %.lr.ph
  %.125 = phi i8 [ %.02430, %.lr.ph ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !48

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.m
  %indvars.iv36 = phi i64 [ %i.c, %.lr.ph34.preheader ], [ %indvars.iv.next37, %bb.m ] ; 2 uses
  %.232 = phi i8 [ %4, %.lr.ph34.preheader ], [ %.3, %bb.m ] ; 2 uses
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1 ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next37 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !14   ; 3 uses
  %i.m = zext i16 %i.l to i32
  %i.n = tail call i32 @ubidi_getClass_78(i32 noundef %i.m)
  switch i32 %i.n, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 13, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %.lr.ph34, %.lr.ph34
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph34
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph34
  %.not26 = icmp eq i8 %.232, 0
  br i1 %.not26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = add i16 %i.l, -48
  %i.p = icmp ult i16 %i.o, 10
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i16 %i.l, %i.a
  store i16 %i.q, ptr %i.k, align 2, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph34, %bb.j, %bb.k, %bb.l, %bb.i, %bb.h
  %.3 = phi i8 [ %.232, %.lr.ph34 ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %bb.j ]
  %i.r = icmp samesign ugt i64 %indvars.iv36, 1
  br i1 %i.r, label %.lr.ph34, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %bb.g, %bb.m, %.preheader28, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 0, 2) %5, ptr nofree noundef readonly byval(%struct.uShapeVariables) align 8 captures(none) %6) unnamed_addr #0 {
bb.a:
  %.not = icmp ne i32 %5, 0                       ; 4 uses
  %i.a = and i32 %3, 65539                        ; 5 uses
  %i.b = icmp eq i32 %i.a, 65536
  %or.cond109 = and i1 %i.b, %.not
  br i1 %or.cond109, label %bb.b, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef i32 @_ZL23expandCompositCharAtEndPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  %i.g = load i32, ptr %4, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.g, 20
  br i1 %i.h, label %bb.d, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4, !tbaa !11
  %i.i = tail call fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  %i.k = load i32, ptr %4, align 4, !tbaa !11
  %i.l = icmp eq i32 %i.k, 20
  br i1 %i.l, label %bb.f, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 4, !tbaa !11
  %i.m = tail call fastcc noundef i32 @_ZL23expandCompositCharAtEndPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0103.ph = phi i32 [ %i.m, %bb.f ], [ %i.i, %bb.d ]
  %.pr = load i32, ptr %4, align 4, !tbaa !11
  %i.n = icmp eq i32 %.pr, 20
  br i1 %i.n, label %bb.h, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %4, align 4, !tbaa !11
  %.not.not3.i = icmp sgt i32 %1, 0
  br i1 %.not.not3.i, label %.lr.ph.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count51.i = zext nneg i32 %1 to i64
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i:  ; preds = %bb.l, %.lr.ph.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next49.i, %bb.l ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv48.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !14   ; 2 uses
  %i.r = add i16 %i.q, 259
  %i.s = icmp ult i16 %i.r, -8
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i
  %i.t = load i16, ptr %i.o, align 2, !tbaa !14
  %i.u = icmp eq i16 %i.t, 32
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i16 1604, ptr %i.p, align 2, !tbaa !14
  %i.v = zext i16 %i.q to i64
  %i.w = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -130538
  %i.y = load i16, ptr %i.x, align 2, !tbaa !14
  store i16 %i.y, ptr %i.o, align 2, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i, !llvm.loop !50

_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit: ; preds = %bb.l, %bb.a
  %.1104 = phi i32 [ %2, %bb.a ], [ %1, %bb.l ]   ; 2 uses
  br i1 %.not, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread, label %bb.p

_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread: ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit
  %.1104139 = phi i32 [ %.1104, %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit ], [ %1, %bb.h ], [ %.0103.ph, %bb.g ], [ %i.f, %bb.c ], [ %i.j, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !61
  %i.ab = icmp eq i32 %i.a, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread
  %i.ac = tail call fastcc noundef i32 @_ZL23expandCompositCharAtEndPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %bb.n

bb.n:                                             ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread, %bb.m
  %.2.ph = phi i32 [ %.1104139, %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread ], [ %i.ac, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !62
  %i.af = icmp eq i32 %i.a, %i.ae
  br i1 %i.af, label %bb.o, label %.thread145

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %.thread145

bb.p:                                             ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit
  %i.ah = and i32 %3, 58720256
  %i.ai = icmp eq i32 %i.ah, 16777216             ; 2 uses
  %i.aj = and i32 %3, 7340032
  %i.ak = icmp eq i32 %i.aj, 2097152              ; 2 uses
  %i.al = xor i1 %i.ak, true
  %i.am = or i1 %i.ai, %i.ak
  %i.an = xor i1 %i.ai, true
  br label %.thread145

.thread145:                                       ; preds = %bb.o, %bb.n, %bb.p
  %.3147 = phi i32 [ %.1104, %bb.p ], [ %.2.ph, %bb.n ], [ %i.ag, %bb.o ]
  %.1 = phi i1 [ %i.an, %bb.p ], [ true, %bb.n ], [ true, %bb.o ] ; 2 uses
  %or.cond = phi i1 [ %i.am, %bb.p ], [ false, %bb.n ], [ false, %bb.o ]
  %.096 = phi i1 [ %i.al, %bb.p ], [ true, %bb.n ], [ true, %bb.o ]
  %i.ao = icmp eq i32 %i.a, 1
  %or.cond112 = and i1 %i.ao, %.not               ; 6 uses
  %or.cond3 = or i1 %or.cond112, %or.cond
  br i1 %or.cond3, label %bb.q, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128

bb.q:                                             ; preds = %.thread145
  %.sroa.0.0.copyload = load i16, ptr %6, align 8, !tbaa !14 ; 4 uses
  %.not.not3.i121 = icmp sgt i32 %1, 0
  br i1 %.not.not3.i121, label %.lr.ph.i122, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128

.lr.ph.i122:                                      ; preds = %bb.q
  br i1 %.096, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i122
  br i1 %.1, label %.lr.ph.split.us.split.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i: ; preds = %.lr.ph.split.us.i
  %wide.trip.count45.i = zext nneg i32 %1 to i64
  %i.ap = load i16, ptr %0, align 2, !tbaa !14    ; 2 uses
  %i.aq = add i16 %i.ap, 373
  %or.cond.i47.us.peel.i = icmp ult i16 %i.aq, -2
  br i1 %or.cond.i47.us.peel.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.x

bb.s:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i
  br i1 %or.cond112, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !14 ; 2 uses
  %i.at = add i16 %i.as, 259
  %i.au = icmp ult i16 %i.at, -8
  br i1 %i.au, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = icmp eq i16 %i.ap, 32
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i16 1604, ptr %i.ar, align 2, !tbaa !14
  %i.aw = zext i16 %i.as to i64
  %i.ax = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -130538
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !14
  store i16 %i.az, ptr %0, align 2, !tbaa !14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  %exitcond46.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond46.peel.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %or.cond112, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i: ; preds = %.lr.ph.split.us.split.us.i
  %wide.trip.count51.i123 = zext nneg i32 %1 to i64
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124: ; preds = %bb.ab, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i
  %indvars.iv48.i125 = phi i64 [ 0, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i ], [ %indvars.iv.next49.i126, %bb.ab ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv48.i125 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !14 ; 2 uses
  %i.bd = add i16 %i.bc, 259
  %i.be = icmp ult i16 %i.bd, -8
  br i1 %i.be, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124
  %i.bf = load i16, ptr %i.ba, align 2, !tbaa !14
  %i.bg = icmp eq i16 %i.bf, 32
  br i1 %i.bg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i16 1604, ptr %i.bb, align 2, !tbaa !14
  %i.bh = zext i16 %i.bc to i64
  %i.bi = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -130538
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !14
  store i16 %i.bk, ptr %i.ba, align 2, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124
  %indvars.iv.next49.i126 = add nuw nsw i64 %indvars.iv48.i125, 1 ; 2 uses
  %exitcond52.not.i127 = icmp eq i64 %indvars.iv.next49.i126, %wide.trip.count51.i123
  br i1 %exitcond52.not.i127, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124, !llvm.loop !50

_ZL20isSeenTailFamilyCharDs.exit.thread.us.i:     ; preds = %bb.x, %bb.ak
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.ak ], [ 1, %bb.x ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i ; 5 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !14 ; 3 uses
  %i.bn = add i16 %i.bm, 373
  %or.cond.i47.us.i = icmp ult i16 %i.bn, -2
  br i1 %or.cond.i47.us.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i
  %i.bo = getelementptr i8, ptr %i.bl, i64 -2     ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !14
  %i.bq = icmp eq i16 %i.bp, 32
  br i1 %i.bq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.br = zext i16 %i.bm to i64
  %i.bs = getelementptr [2 x i8], ptr @_ZL13yehHamzaToYeh, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -130322
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !14
  store i16 %i.bu, ptr %i.bl, align 2, !tbaa !14
  store i16 -384, ptr %i.bo, align 2, !tbaa !14
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ak

bb.af:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i
  br i1 %or.cond112, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !14 ; 2 uses
  %i.bx = add i16 %i.bw, 259
  %i.by = icmp ult i16 %i.bx, -8
  br i1 %i.by, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = icmp eq i16 %i.bm, 32
  br i1 %i.bz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i16 1604, ptr %i.bv, align 2, !tbaa !14
  %i.ca = zext i16 %i.bw to i64
  %i.cb = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -130538
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !14
  store i16 %i.cd, ptr %i.bl, align 2, !tbaa !14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i, !llvm.loop !51

.lr.ph.split.i:                                   ; preds = %.lr.ph.i122
  %wide.trip.count39.i = zext nneg i32 %1 to i64  ; 4 uses
  %i.ce = load i16, ptr %0, align 2, !tbaa !14    ; 9 uses
  %i.cf = add i16 %i.ce, 335
  %or.cond.i.us.us.peel.i = icmp ult i16 %i.cf, 14 ; 4 uses
  br i1 %.1, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %or.cond112, label %.lr.ph.split.split.us.split.preheader.i, label %.lr.ph.split.split.us.split.us.preheader.i

.lr.ph.split.split.us.split.preheader.i:          ; preds = %.lr.ph.split.split.us.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i

_ZL20isSeenTailFamilyCharDs.exit.us.peel.i:       ; preds = %.lr.ph.split.split.us.split.preheader.i
  %i.cg = zext i16 %i.ce to i64
  %i.ch = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -65201
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19
  %.not40.us.peel.i = icmp eq i8 %i.cj, 0
  br i1 %.not40.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i, label %bb.al

bb.al:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.peel.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ap

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.peel.i, %.lr.ph.split.split.us.split.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !14 ; 2 uses
  %i.cm = add i16 %i.cl, 259
  %i.cn = icmp ult i16 %i.cm, -8
  br i1 %i.cn, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i
  %i.co = icmp eq i16 %i.ce, 32
  br i1 %i.co, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i16 1604, ptr %i.ck, align 2, !tbaa !14
  %i.cp = zext i16 %i.cl to i64
  %i.cq = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -130538
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !14
  store i16 %i.cs, ptr %0, align 2, !tbaa !14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i, %bb.al
  %exitcond34.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond34.peel.not.i, label %.thread148, label %.lr.ph.split.split.us.split.i

.lr.ph.split.split.us.split.us.preheader.i:       ; preds = %.lr.ph.split.split.us.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i

_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i:    ; preds = %.lr.ph.split.split.us.split.us.preheader.i
  %i.ct = zext i16 %i.ce to i64
  %i.cu = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -65201
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !19
  %.not40.us.us.peel.i = icmp eq i8 %i.cw, 0
  br i1 %.not40.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i, label %bb.aq

bb.aq:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i: ; preds = %bb.aq, %_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i, %.lr.ph.split.split.us.split.us.preheader.i
  %exitcond40.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond40.peel.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.us.split.us.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36.i ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !14 ; 2 uses
  %i.cz = add i16 %i.cy, 335
  %or.cond.i.us.us.i = icmp ult i16 %i.cz, 14
  br i1 %or.cond.i.us.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

_ZL20isSeenTailFamilyCharDs.exit.us.us.i:         ; preds = %.lr.ph.split.split.us.split.us.i
  %i.da = zext i16 %i.cy to i64
  %i.db = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 -65201
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19
  %.not40.us.us.i = icmp eq i8 %i.dd, 0
  br i1 %.not40.us.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i, label %bb.ar

bb.ar:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us.i
  %i.de = getelementptr i8, ptr %i.cx, i64 -2     ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !14
  %i.dg = icmp eq i16 %i.df, 32
  br i1 %i.dg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i16 %.sroa.0.0.copyload, ptr %i.de, align 2, !tbaa !14
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

bb.at:                                            ; preds = %bb.ar
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i: ; preds = %bb.at, %bb.as, %_ZL20isSeenTailFamilyCharDs.exit.us.us.i, %.lr.ph.split.split.us.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.us.split.us.i, !llvm.loop !52

.lr.ph.split.split.us.split.i:                    ; preds = %bb.ap, %bb.ba
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %bb.ba ], [ 1, %bb.ap ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv30.i ; 4 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !14 ; 3 uses
  %i.dj = add i16 %i.di, 335
  %or.cond.i.us.i = icmp ult i16 %i.dj, 14
  br i1 %or.cond.i.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i

_ZL20isSeenTailFamilyCharDs.exit.us.i:            ; preds = %.lr.ph.split.split.us.split.i
  %i.dk = zext i16 %i.di to i64
  %i.dl = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -65201
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !19
  %.not40.us.i = icmp eq i8 %i.dn, 0
  br i1 %.not40.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i, label %bb.au

bb.au:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.i
  %i.do = getelementptr i8, ptr %i.dh, i64 -2     ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !14
  %i.dq = icmp eq i16 %i.dp, 32
  br i1 %i.dq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i16 %.sroa.0.0.copyload, ptr %i.do, align 2, !tbaa !14
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ba

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i:    ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.i, %.lr.ph.split.split.us.split.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 2 ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !14 ; 2 uses
  %i.dt = add i16 %i.ds, 259
  %i.du = icmp ult i16 %i.dt, -8
  br i1 %i.du, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i
  %i.dv = icmp eq i16 %i.di, 32
  br i1 %i.dv, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  store i16 1604, ptr %i.dr, align 2, !tbaa !14
  %i.dw = zext i16 %i.ds to i64
  %i.dx = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -130538
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !14
  store i16 %i.dz, ptr %i.dh, align 2, !tbaa !14
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i, %bb.aw, %bb.av
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count39.i
  br i1 %exitcond34.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.us.split.i, !llvm.loop !53

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %or.cond112, label %.lr.ph.split.split.split.preheader.i, label %.lr.ph.split.split.split.us.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.split.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i

_ZL20isSeenTailFamilyCharDs.exit.peel.i:          ; preds = %.lr.ph.split.split.split.preheader.i
  %i.ea = zext i16 %i.ce to i64
  %i.eb = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -65201
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !19
  %.not40.peel.i = icmp eq i8 %i.ed, 0
  br i1 %.not40.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i, label %bb.bb

bb.bb:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.peel.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.bg

_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i:   ; preds = %.lr.ph.split.split.split.preheader.i
  %i.ee = add i16 %i.ce, 373
  %or.cond.i47.peel.i = icmp ult i16 %i.ee, -2
  br i1 %or.cond.i47.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i, label %bb.bc

bb.bc:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.bg

_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.peel.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !14 ; 2 uses
  %i.eh = add i16 %i.eg, 259
  %i.ei = icmp ult i16 %i.eh, -8
  br i1 %i.ei, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i
  %i.ej = icmp eq i16 %i.ce, 32
  br i1 %i.ej, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store i16 1604, ptr %i.ef, align 2, !tbaa !14
  %i.ek = zext i16 %i.eg to i64
  %i.el = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -130538
  %i.en = load i16, ptr %i.em, align 2, !tbaa !14
  store i16 %i.en, ptr %0, align 2, !tbaa !14
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i, %bb.bc, %bb.bb
  %exitcond.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread148, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.preheader.i:          ; preds = %.lr.ph.split.split.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i

_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i:     ; preds = %.lr.ph.split.split.split.us.preheader.i
  %i.eo = zext i16 %i.ce to i64
  %i.ep = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -65201
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !19
  %.not40.us11.peel.i = icmp eq i8 %i.er, 0
  br i1 %.not40.us11.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i: ; preds = %.lr.ph.split.split.split.us.preheader.i
  %i.es = add i16 %i.ce, 373
  %or.cond.i47.us14.peel.i = icmp ult i16 %i.es, -2
  br i1 %or.cond.i47.us14.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i
  %exitcond28.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond28.peel.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.split.us.i

.lr.ph.split.split.split.us.i:                    ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv24.i ; 4 uses
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !14 ; 4 uses
  %i.ev = add i16 %i.eu, 335
  %or.cond.i.us9.i = icmp ult i16 %i.ev, 14
  br i1 %or.cond.i.us9.i, label %_ZL20isSeenTailFamilyCharDs.exit.us10.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i

_ZL20isSeenTailFamilyCharDs.exit.us10.i:          ; preds = %.lr.ph.split.split.split.us.i
  %i.ew = zext i16 %i.eu to i64
  %i.ex = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -65201
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !19
  %.not40.us11.i = icmp eq i8 %i.ez, 0
  br i1 %.not40.us11.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i, label %bb.bh

bb.bh:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us10.i
  %i.fa = getelementptr i8, ptr %i.et, i64 -2     ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !14
  %i.fc = icmp eq i16 %i.fb, 32
  br i1 %i.fc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i16 %.sroa.0.0.copyload, ptr %i.fa, align 2, !tbaa !14
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

bb.bj:                                            ; preds = %bb.bh
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i:   ; preds = %.lr.ph.split.split.split.us.i
  %i.fd = add i16 %i.eu, 373
  %or.cond.i47.us14.i = icmp ult i16 %i.fd, -2
  br i1 %or.cond.i47.us14.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i, label %bb.bk

bb.bk:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i
  %i.fe = getelementptr i8, ptr %i.et, i64 -2     ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !14
  %i.fg = icmp eq i16 %i.ff, 32
  br i1 %i.fg, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fh = zext i16 %i.eu to i64
  %i.fi = getelementptr [2 x i8], ptr @_ZL13yehHamzaToYeh, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -130322
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !14
  store i16 %i.fk, ptr %i.et, align 2, !tbaa !14
  store i16 -384, ptr %i.fe, align 2, !tbaa !14
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

bb.bm:                                            ; preds = %bb.bk
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i: ; preds = %bb.bm, %bb.bl, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i, %bb.bj, %bb.bi, %_ZL20isSeenTailFamilyCharDs.exit.us10.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count39.i
  br i1 %exitcond28.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.split.us.i, !llvm.loop !54

.lr.ph.split.split.split.i:                       ; preds = %bb.bg, %bb.bw
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bw ], [ 1, %bb.bg ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 6 uses
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !14 ; 5 uses
  %i.fn = add i16 %i.fm, 335
  %or.cond.i.i = icmp ult i16 %i.fn, 14
  br i1 %or.cond.i.i, label %_ZL20isSeenTailFamilyCharDs.exit.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.i

_ZL20isSeenTailFamilyCharDs.exit.i:               ; preds = %.lr.ph.split.split.split.i
  %i.fo = zext i16 %i.fm to i64
  %i.fp = getelementptr i8, ptr @_ZL23tailFamilyIsolatedFinal, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 -65201
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !19
  %.not40.i = icmp eq i8 %i.fr, 0
  br i1 %.not40.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i, label %bb.bn

bb.bn:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.i
  %i.fs = getelementptr i8, ptr %i.fl, i64 -2     ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !14
  %i.fu = icmp eq i16 %i.ft, 32
  br i1 %i.fu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i16 %.sroa.0.0.copyload, ptr %i.fs, align 2, !tbaa !14
  br label %bb.bw

bb.bp:                                            ; preds = %bb.bn
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.bw

_ZL20isSeenTailFamilyCharDs.exit.thread.i:        ; preds = %.lr.ph.split.split.split.i
  %i.fv = add i16 %i.fm, 373
  %or.cond.i47.i = icmp ult i16 %i.fv, -2
  br i1 %or.cond.i47.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i, label %bb.bq

bb.bq:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.i
  %i.fw = getelementptr i8, ptr %i.fl, i64 -2     ; 2 uses
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !14
  %i.fy = icmp eq i16 %i.fx, 32
  br i1 %i.fy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.fz = zext i16 %i.fm to i64
  %i.ga = getelementptr [2 x i8], ptr @_ZL13yehHamzaToYeh, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -130322
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !14
  store i16 %i.gc, ptr %i.fl, align 2, !tbaa !14
  store i16 -384, ptr %i.fw, align 2, !tbaa !14
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bq
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.bw

_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.i, %_ZL20isSeenTailFamilyCharDs.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 2 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !14 ; 2 uses
  %i.gf = add i16 %i.ge, 259
  %i.gg = icmp ult i16 %i.gf, -8
  br i1 %i.gg, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i
  %i.gh = icmp eq i16 %i.fm, 32
  br i1 %i.gh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i16 1604, ptr %i.gd, align 2, !tbaa !14
  %i.gi = zext i16 %i.ge to i64
  %i.gj = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -130538
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !14
  store i16 %i.gl, ptr %i.fl, align 2, !tbaa !14
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  store i32 20, ptr %4, align 4, !tbaa !11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i, %bb.bs, %bb.br, %bb.bp, %bb.bo
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count39.i
  br i1 %exitcond.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.split.i, !llvm.loop !55

_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i, %bb.bw, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i, %bb.ba, %bb.ak, %bb.ab, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i, %.lr.ph.split.us.split.us.i, %bb.x, %bb.q, %.thread145
  %.4 = phi i32 [ %.3147, %.thread145 ], [ %1, %bb.q ], [ 1, %bb.x ], [ %1, %.lr.ph.split.us.split.us.i ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i ], [ %1, %bb.ak ], [ %1, %bb.ab ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i ], [ %1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i ], [ %1, %bb.ba ], [ %1, %bb.bw ], [ %1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i ]
  %i.gm = icmp eq i32 %i.a, 0
  %or.cond115 = and i1 %i.gm, %.not
  br i1 %or.cond115, label %bb.bx, label %.thread148

bb.bx:                                            ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128
  %i.gn = and i32 %3, 8
  %brmerge.i.not = icmp eq i32 %i.gn, 0
  br i1 %brmerge.i.not, label %.loopexit76.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bx
  %i.go = and i32 %3, 4
  %.not.i129 = icmp eq i32 %i.go, 0
  %i.gp = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %.not.i129, label %.preheader75.i, label %.preheader77.i

.preheader77.i:                                   ; preds = %.critedge.i
  br i1 %i.gp, label %.lr.ph.i130, label %_ZL13calculateSizePKDsiij.exit

.lr.ph.i130:                                      ; preds = %.preheader77.i
  %i.gq = add nsw i32 %1, -1
  %i.gr = zext nneg i32 %i.gq to i64              ; 3 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.gs = icmp eq i32 %1, 1
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph.i130.new

.lr.ph.i130.new:                                  ; preds = %.lr.ph.i130
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.by

.preheader75.i:                                   ; preds = %.critedge.i
  br i1 %i.gp, label %.lr.ph83.i, label %_ZL13calculateSizePKDsiij.exit

.lr.ph83.i:                                       ; preds = %.preheader75.i
  %i.gt = add nsw i32 %1, -1
  %i.gu = zext nneg i32 %i.gt to i64              ; 3 uses
  %wide.trip.count96.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter199 = and i64 %wide.trip.count96.i, 1
  %i.gv = icmp eq i32 %1, 1
  br i1 %i.gv, label %.epil.preheader198, label %.lr.ph83.i.new

.lr.ph83.i.new:                                   ; preds = %.lr.ph83.i
  %unroll_iter203 = and i64 %wide.trip.count96.i, 2147483646
  br label %bb.cf

bb.by:                                            ; preds = %bb.ce, %.lr.ph.i130.new
  %indvars.iv.i131 = phi i64 [ 0, %.lr.ph.i130.new ], [ %indvars.iv.next.i132.1, %bb.ce ] ; 4 uses
  %.04579.i = phi i32 [ %1, %.lr.ph.i130.new ], [ %.146.i.1, %bb.ce ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i130.new ], [ %niter.next.1, %bb.ce ]
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i131 ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !14 ; 2 uses
  switch i16 %i.gx, label %_ZL10isAlefCharDs.exit.thread.i [
    i16 1573, label %_ZL10isAlefCharDs.exit.i
    i16 1571, label %_ZL10isAlefCharDs.exit.i
    i16 1570, label %_ZL10isAlefCharDs.exit.i
    i16 1575, label %_ZL10isAlefCharDs.exit.i
  ]

_ZL10isAlefCharDs.exit.i:                         ; preds = %bb.by, %bb.by, %bb.by, %bb.by
  %i.gy = icmp samesign ult i64 %indvars.iv.i131, %i.gr
  br i1 %i.gy, label %bb.bz, label %_ZL10isAlefCharDs.exit.thread.i

bb.bz:                                            ; preds = %_ZL10isAlefCharDs.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !14
  %i.hb = icmp eq i16 %i.ha, 1604
  br i1 %i.hb, label %bb.ca, label %bb.cb

_ZL10isAlefCharDs.exit.thread.i:                  ; preds = %_ZL10isAlefCharDs.exit.i, %bb.by
  %.old.i = and i16 %i.gx, -16
  %.not71.old.i = icmp eq i16 %.old.i, -400
  br i1 %.not71.old.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZL10isAlefCharDs.exit.thread.i, %bb.bz
  %i.hc = add nsw i32 %.04579.i, -1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZL10isAlefCharDs.exit.thread.i, %bb.bz
  %.146.i = phi i32 [ %i.hc, %bb.ca ], [ %.04579.i, %_ZL10isAlefCharDs.exit.thread.i ], [ %.04579.i, %bb.bz ] ; 3 uses
  %indvars.iv.next.i132 = or disjoint i64 %indvars.iv.i131, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i132 ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !14 ; 2 uses
  switch i16 %i.he, label %_ZL10isAlefCharDs.exit.thread.i.1 [
    i16 1573, label %_ZL10isAlefCharDs.exit.i.1
    i16 1571, label %_ZL10isAlefCharDs.exit.i.1
    i16 1570, label %_ZL10isAlefCharDs.exit.i.1
    i16 1575, label %_ZL10isAlefCharDs.exit.i.1
  ]

_ZL10isAlefCharDs.exit.i.1:                       ; preds = %bb.cb, %bb.cb, %bb.cb, %bb.cb
  %i.hf = icmp samesign ult i64 %indvars.iv.next.i132, %i.gr
  br i1 %i.hf, label %bb.cc, label %_ZL10isAlefCharDs.exit.thread.i.1

bb.cc:                                            ; preds = %_ZL10isAlefCharDs.exit.i.1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !14
  %i.hi = icmp eq i16 %i.hh, 1604
  br i1 %i.hi, label %bb.cd, label %bb.ce

_ZL10isAlefCharDs.exit.thread.i.1:                ; preds = %_ZL10isAlefCharDs.exit.i.1, %bb.cb
  %.old.i.1 = and i16 %i.he, -16
  %.not71.old.i.1 = icmp eq i16 %.old.i.1, -400
  br i1 %.not71.old.i.1, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZL10isAlefCharDs.exit.thread.i.1, %bb.cc
  %i.hj = add nsw i32 %.146.i, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZL10isAlefCharDs.exit.thread.i.1, %bb.cc
  %.146.i.1 = phi i32 [ %i.hj, %bb.cd ], [ %.146.i, %_ZL10isAlefCharDs.exit.thread.i.1 ], [ %.146.i, %bb.cc ] ; 3 uses
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i131, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit76.i.loopexit190.unr-lcssa, label %bb.by, !llvm.loop !0

bb.cf:                                            ; preds = %.thread.i.1, %.lr.ph83.i.new
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph83.i.new ], [ %indvars.iv.next94.i.1, %.thread.i.1 ] ; 4 uses
  %.24781.i = phi i32 [ %1, %.lr.ph83.i.new ], [ %.3.i.1, %.thread.i.1 ] ; 3 uses
  %niter204 = phi i64 [ 0, %.lr.ph83.i.new ], [ %niter204.next.1, %.thread.i.1 ]
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv93.i ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !14 ; 2 uses
  %i.hm = icmp eq i16 %i.hl, 1604
  %i.hn = icmp samesign ult i64 %indvars.iv93.i, %i.gu
  %or.cond64.i = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond64.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !14
  switch i16 %i.hp, label %.thread.i [
    i16 1573, label %_ZL10isAlefCharDs.exit68.thread.i
    i16 1571, label %_ZL10isAlefCharDs.exit68.thread.i
    i16 1570, label %_ZL10isAlefCharDs.exit68.thread.i
    i16 1575, label %_ZL10isAlefCharDs.exit68.thread.i
  ]

bb.ch:                                            ; preds = %bb.cf
  %i.hq = and i16 %i.hl, -16
  %.not72.i = icmp eq i16 %i.hq, -400
  br i1 %.not72.i, label %_ZL10isAlefCharDs.exit68.thread.i, label %.thread.i

_ZL10isAlefCharDs.exit68.thread.i:                ; preds = %bb.ch, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.hr = add nsw i32 %.24781.i, -1
  br label %.thread.i

.thread.i:                                        ; preds = %_ZL10isAlefCharDs.exit68.thread.i, %bb.ch, %bb.cg
  %.3.i = phi i32 [ %i.hr, %_ZL10isAlefCharDs.exit68.thread.i ], [ %.24781.i, %bb.ch ], [ %.24781.i, %bb.cg ] ; 3 uses
  %indvars.iv.next94.i = or disjoint i64 %indvars.iv93.i, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next94.i ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !14 ; 2 uses
  %i.hu = icmp eq i16 %i.ht, 1604
  %i.hv = icmp samesign ult i64 %indvars.iv.next94.i, %i.gu
  %or.cond64.i.1 = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %or.cond64.i.1, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.thread.i
  %i.hw = and i16 %i.ht, -16
  %.not72.i.1 = icmp eq i16 %i.hw, -400
  br i1 %.not72.i.1, label %_ZL10isAlefCharDs.exit68.thread.i.1, label %.thread.i.1

bb.cj:                                            ; preds = %.thread.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !14
  switch i16 %i.hy, label %.thread.i.1 [
    i16 1573, label %_ZL10isAlefCharDs.exit68.thread.i.1
    i16 1571, label %_ZL10isAlefCharDs.exit68.thread.i.1
    i16 1570, label %_ZL10isAlefCharDs.exit68.thread.i.1
    i16 1575, label %_ZL10isAlefCharDs.exit68.thread.i.1
  ]

_ZL10isAlefCharDs.exit68.thread.i.1:              ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.ci
  %i.hz = add nsw i32 %.3.i, -1
  br label %.thread.i.1

.thread.i.1:                                      ; preds = %_ZL10isAlefCharDs.exit68.thread.i.1, %bb.cj, %bb.ci
  %.3.i.1 = phi i32 [ %i.hz, %_ZL10isAlefCharDs.exit68.thread.i.1 ], [ %.3.i, %bb.ci ], [ %.3.i, %bb.cj ] ; 3 uses
  %indvars.iv.next94.i.1 = add nuw nsw i64 %indvars.iv93.i, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %.loopexit76.i.loopexit.unr-lcssa, label %bb.cf, !llvm.loop !1

.loopexit76.i.loopexit.unr-lcssa:                 ; preds = %.thread.i.1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.loopexit76.i, label %.epil.preheader198

.epil.preheader198:                               ; preds = %.loopexit76.i.loopexit.unr-lcssa, %.lr.ph83.i
  %indvars.iv93.i.epil.init = phi i64 [ 0, %.lr.ph83.i ], [ %indvars.iv.next94.i.1, %.loopexit76.i.loopexit.unr-lcssa ] ; 2 uses
  %.24781.i.epil.init = phi i32 [ %1, %.lr.ph83.i ], [ %.3.i.1, %.loopexit76.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod202 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv93.i.epil.init ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !14 ; 2 uses
  %i.ic = icmp eq i16 %i.ib, 1604
  %i.id = icmp samesign ult i64 %indvars.iv93.i.epil.init, %i.gu
  %or.cond64.i.epil = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %or.cond64.i.epil, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.epil.preheader198
  %i.ie = and i16 %i.ib, -16
  %.not72.i.epil = icmp eq i16 %i.ie, -400
  br i1 %.not72.i.epil, label %_ZL10isAlefCharDs.exit68.thread.i.epil, label %.loopexit76.i

bb.cl:                                            ; preds = %.epil.preheader198
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !14
  switch i16 %i.ig, label %.loopexit76.i [
    i16 1573, label %_ZL10isAlefCharDs.exit68.thread.i.epil
    i16 1571, label %_ZL10isAlefCharDs.exit68.thread.i.epil
    i16 1570, label %_ZL10isAlefCharDs.exit68.thread.i.epil
    i16 1575, label %_ZL10isAlefCharDs.exit68.thread.i.epil
  ]

_ZL10isAlefCharDs.exit68.thread.i.epil:           ; preds = %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.ck
  %i.ih = add nsw i32 %.24781.i.epil.init, -1
  br label %.loopexit76.i

.loopexit76.i.loopexit190.unr-lcssa:              ; preds = %bb.ce
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit76.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit76.i.loopexit190.unr-lcssa, %.lr.ph.i130
  %indvars.iv.i131.epil.init = phi i64 [ 0, %.lr.ph.i130 ], [ %indvars.iv.next.i132.1, %.loopexit76.i.loopexit190.unr-lcssa ] ; 2 uses
  %.04579.i.epil.init = phi i32 [ %1, %.lr.ph.i130 ], [ %.146.i.1, %.loopexit76.i.loopexit190.unr-lcssa ] ; 3 uses
  %lcmp.mod197 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i131.epil.init ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !14 ; 2 uses
  switch i16 %i.ij, label %_ZL10isAlefCharDs.exit.thread.i.epil [
    i16 1573, label %_ZL10isAlefCharDs.exit.i.epil
    i16 1571, label %_ZL10isAlefCharDs.exit.i.epil
    i16 1570, label %_ZL10isAlefCharDs.exit.i.epil
    i16 1575, label %_ZL10isAlefCharDs.exit.i.epil
  ]

_ZL10isAlefCharDs.exit.i.epil:                    ; preds = %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader
  %i.ik = icmp samesign ult i64 %indvars.iv.i131.epil.init, %i.gr
  br i1 %i.ik, label %bb.cm, label %_ZL10isAlefCharDs.exit.thread.i.epil

bb.cm:                                            ; preds = %_ZL10isAlefCharDs.exit.i.epil
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !14
  %i.in = icmp eq i16 %i.im, 1604
  br i1 %i.in, label %bb.cn, label %.loopexit76.i

_ZL10isAlefCharDs.exit.thread.i.epil:             ; preds = %_ZL10isAlefCharDs.exit.i.epil, %.epil.preheader
  %.old.i.epil = and i16 %i.ij, -16
  %.not71.old.i.epil = icmp eq i16 %.old.i.epil, -400
  br i1 %.not71.old.i.epil, label %bb.cn, label %.loopexit76.i

bb.cn:                                            ; preds = %_ZL10isAlefCharDs.exit.thread.i.epil, %bb.cm
  %i.io = add nsw i32 %.04579.i.epil.init, -1
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.loopexit76.i.loopexit190.unr-lcssa, %bb.cn, %_ZL10isAlefCharDs.exit.thread.i.epil, %bb.cm, %.loopexit76.i.loopexit.unr-lcssa, %_ZL10isAlefCharDs.exit68.thread.i.epil, %bb.cl, %bb.ck, %bb.bx
  %.4.i = phi i32 [ %.24781.i.epil.init, %bb.cl ], [ %1, %bb.bx ], [ %.3.i.1, %.loopexit76.i.loopexit.unr-lcssa ], [ %i.ih, %_ZL10isAlefCharDs.exit68.thread.i.epil ], [ %.24781.i.epil.init, %bb.ck ], [ %.146.i.1, %.loopexit76.i.loopexit190.unr-lcssa ], [ %i.io, %bb.cn ], [ %.04579.i.epil.init, %_ZL10isAlefCharDs.exit.thread.i.epil ], [ %.04579.i.epil.init, %bb.cm ] ; 3 uses
  %i.ip = and i32 %3, 24
  %or.cond66.i = icmp eq i32 %i.ip, 16
  %i.iq = icmp sgt i32 %1, 0
  %or.cond90.i = and i1 %i.iq, %or.cond66.i
  br i1 %or.cond90.i, label %.lr.ph87.preheader.i, label %_ZL13calculateSizePKDsiij.exit

.lr.ph87.preheader.i:                             ; preds = %.loopexit76.i
  %wide.trip.count101.i = zext nneg i32 %1 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph87.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph87.preheader.i
  %n.vec = and i64 %wide.trip.count101.i, 2147483640 ; 3 uses
  %i.ir = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.4.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ir, %vector.ph ], [ %i.ja, %vector.body ]
  %vec.phi187 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jb, %vector.body ]
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %wide.load = load <4 x i16>, ptr %i.is, align 2, !tbaa !14
  %wide.load188 = load <4 x i16>, ptr %i.it, align 2, !tbaa !14
  %i.iu = add <4 x i16> %wide.load, splat (i16 267)
  %i.iv = add <4 x i16> %wide.load188, splat (i16 267)
  %i.iw = icmp ult <4 x i16> %i.iu, splat (i16 8)
  %i.ix = icmp ult <4 x i16> %i.iv, splat (i16 8)
  %i.iy = zext <4 x i1> %i.iw to <4 x i32>
  %i.iz = zext <4 x i1> %i.ix to <4 x i32>
  %i.ja = add <4 x i32> %vec.phi, %i.iy           ; 2 uses
  %i.jb = add <4 x i32> %vec.phi187, %i.iz        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jb, %i.ja
  %i.jd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count101.i
  br i1 %cmp.n, label %_ZL13calculateSizePKDsiij.exit, label %.lr.ph87.i.preheader

.lr.ph87.i.preheader:                             ; preds = %.lr.ph87.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ 0, %.lr.ph87.preheader.i ], [ %n.vec, %middle.block ]
  %.585.i.ph = phi i32 [ %.4.i, %.lr.ph87.preheader.i ], [ %i.jd, %middle.block ]
  br label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %.lr.ph87.i.preheader, %.lr.ph87.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph87.i ], [ %indvars.iv98.i.ph, %.lr.ph87.i.preheader ] ; 2 uses
  %.585.i = phi i32 [ %spec.select.i, %.lr.ph87.i ], [ %.585.i.ph, %.lr.ph87.i.preheader ]
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv98.i
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !14
  %i.jg = add i16 %i.jf, 267
  %i.jh = icmp ult i16 %i.jg, 8
  %i.ji = zext i1 %i.jh to i32
  %spec.select.i = add nsw i32 %.585.i, %i.ji     ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %_ZL13calculateSizePKDsiij.exit, label %.lr.ph87.i, !llvm.loop !57

_ZL13calculateSizePKDsiij.exit:                   ; preds = %.lr.ph87.i, %middle.block, %.preheader77.i, %.preheader75.i, %.loopexit76.i
  %.7.i = phi i32 [ %.4.i, %.loopexit76.i ], [ %1, %.preheader75.i ], [ %1, %.preheader77.i ], [ %i.jd, %middle.block ], [ %spec.select.i, %.lr.ph87.i ] ; 6 uses
  %i.jj = shl i32 %.7.i, 1
  %i.jk = add i32 %i.jj, 2
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.jl) #11 ; 6 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZL13calculateSizePKDsiij.exit
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %.thread148

bb.cp:                                            ; preds = %_ZL13calculateSizePKDsiij.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.jm, i8 0, i64 %i.jl, i1 false)
  %i.jo = icmp sgt i32 %.7.i, 0
  br i1 %i.jo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cp
  %i.jp = zext nneg i32 %.7.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cr
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cr ] ; 2 uses
  %.099159 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.kd, %bb.cr ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !14 ; 3 uses
  %i.js = add i16 %i.jr, 259
  %i.jt = icmp ult i16 %i.js, -8
  br i1 %i.jt, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph
  %i.ju = zext i16 %i.jr to i64
  %i.jv = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 -130538
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !14
  %i.jy = sext i32 %.099159 to i64
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.jm, i64 %i.jy
  store i16 %i.jx, ptr %i.jz, align 2, !tbaa !14
  %i.ka = add nsw i32 %.099159, 1
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph, %bb.cq
  %.099159.sink = phi i32 [ %i.ka, %bb.cq ], [ %.099159, %.lr.ph ] ; 2 uses
  %.sink = phi i16 [ 1604, %bb.cq ], [ %i.jr, %.lr.ph ]
  %i.kb = sext i32 %.099159.sink to i64
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.jm, i64 %i.kb
  store i16 %.sink, ptr %i.kc, align 2, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kd = add nsw i32 %.099159.sink, 1            ; 2 uses
  %i.ke = icmp samesign ult i64 %indvars.iv.next, %i.jp
  %i.kf = icmp slt i32 %i.kd, %.7.i
  %i.kg = select i1 %i.ke, i1 %i.kf, i1 false
  br i1 %i.kg, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.cr, %bb.cp
  %i.kh = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.jm, i32 noundef %.7.i) ; 0 uses
  tail call void @uprv_free_78(ptr noundef nonnull %i.jm)
  br label %.thread148

.thread148:                                       ; preds = %bb.ap, %bb.bg, %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, %._crit_edge, %bb.co
  %.0102 = phi i32 [ 0, %bb.co ], [ %.7.i, %._crit_edge ], [ %.4, %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128 ], [ 1, %bb.bg ], [ 1, %bb.ap ]
  ret i32 %.0102
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL23expandCompositCharAtEndPDsiiP10UErrorCode(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = add i32 %i.a, 2
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.c) #11 ; 12 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %2, align 4, !tbaa !11
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.d, i8 0, i64 %i.c, i1 false)
  %i.f = sext i32 %1 to i64                       ; 9 uses
  %i.g = getelementptr [2 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !14
  %i.j = icmp eq i16 %i.i, 32
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.f, %bb.c ]
  %.05666 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  %i.k = add nuw nsw i32 %.05666, 1               ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = getelementptr [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !14
  %i.o = icmp eq i16 %i.n, 32
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.056.lcssa = phi i32 [ 0, %bb.c ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.p = xor i32 %.056.lcssa, -1
  %i.q = add i32 %1, %i.p                         ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = icmp sgt i32 %1, 0
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %._crit_edge
  %i.u = zext nneg i32 %i.q to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.h
  %indvars.iv79 = phi i64 [ %i.u, %.lr.ph72.preheader ], [ %indvars.iv.next80, %bb.h ] ; 4 uses
  %.170 = phi i32 [ %.056.lcssa, %.lr.ph72.preheader ], [ %.2, %bb.h ] ; 4 uses
  %.05769.in = phi i32 [ %1, %.lr.ph72.preheader ], [ %.158, %bb.h ] ; 2 uses
  %.05769 = add nsw i32 %.05769.in, -1            ; 3 uses
  %i.v = icmp sgt i32 %.170, 0
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph72
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv79
  %i.x = load i16, ptr %i.w, align 2, !tbaa !14   ; 3 uses
  %i.y = add i16 %i.x, 259
  %i.z = icmp ult i16 %i.y, -8
  br i1 %i.z, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %.05769 to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aa ; 2 uses
  store i16 1604, ptr %i.ab, align 2, !tbaa !14
  %i.ac = zext i16 %i.x to i64
  %i.ad = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -130538
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !14
  %i.ag = getelementptr i8, ptr %i.ab, i64 -2
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !14
  %i.ah = add nsw i32 %.05769.in, -2
  %i.ai = add nsw i32 %.170, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph72
  %i.aj = icmp ne i32 %.170, 0
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv79
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !14 ; 3 uses
  %i.am = add i16 %i.al, 259
  %i.an = icmp ult i16 %i.am, -8
  %or.cond = select i1 %i.aj, i1 true, i1 %i.an
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 20, ptr %2, align 4, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.g
  %i.ao = phi i16 [ %i.al, %bb.f ], [ %i.x, %bb.d ], [ %i.al, %bb.g ]
  %i.ap = zext nneg i32 %.05769 to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ap
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.e
  %.158 = phi i32 [ %i.ah, %bb.e ], [ %.05769, %.thread ] ; 2 uses
  %.2 = phi i32 [ %i.ai, %bb.e ], [ %.170, %.thread ] ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %i.ar = icmp sgt i64 %indvars.iv79, 0
  %i.as = icmp sgt i32 %.158, 0
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph72, label %._crit_edge73, !llvm.loop !65

._crit_edge73:                                    ; preds = %bb.h, %._crit_edge
  %.1.lcssa = phi i32 [ %.056.lcssa, %._crit_edge ], [ %.2, %bb.h ] ; 3 uses
  %i.au = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.au, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge73
  %i.av = zext nneg i32 %.1.lcssa to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.av
  %i.ax = tail call ptr @u_memmove_78(ptr noundef nonnull %i.d, ptr noundef nonnull %i.aw, i32 noundef %1) ; 0 uses
  %i.ay = tail call i32 @u_strlen_78(ptr noundef nonnull %i.d)
  %i.az = icmp slt i32 %i.ay, %1
  br i1 %i.az, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.i
  %i.ba = sub nsw i32 %1, %.1.lcssa
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = add nsw i64 %i.f, -1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.bc)
  %i.bd = sub i64 %i.f, %smin                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph77.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i64 %i.bd, 16
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bd, 12
  %n.vec = and i64 %i.bd, -16                     ; 4 uses
  %i.bf = sub i64 %i.f, %n.vec
  %invariant.gep = getelementptr [2 x i8], ptr %i.d, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = xor i64 %index, -1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bg ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.bi = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> splat (i16 32), ptr %i.bh, align 2, !tbaa !14
  store <8 x i16> splat (i16 32), ptr %i.bi, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph77.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2 = and i64 %i.bd, -4                     ; 3 uses
  %i.bk = sub i64 %i.f, %n.vec2
  %invariant.gep6 = getelementptr [2 x i8], ptr %i.d, i64 %i.f
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = xor i64 %index3, -1
  %gep7 = getelementptr [2 x i8], ptr %invariant.gep6, i64 %i.bl
  %i.bm = getelementptr inbounds i8, ptr %gep7, i64 -6
  store <4 x i16> splat (i16 32), ptr %i.bm, align 2, !tbaa !14
  %index.next4 = add nuw i64 %index3, 4           ; 2 uses
  %i.bn = icmp eq i64 %index.next4, %n.vec2
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5 = icmp eq i64 %i.bd, %n.vec2
  br i1 %cmp.n5, label %.loopexit, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv82.in.ph = phi i64 [ %i.f, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %indvars.iv82.in = phi i64 [ %indvars.iv82, %.lr.ph77 ], [ %indvars.iv82.in.ph, %.lr.ph77.preheader ]
  %indvars.iv82 = add nsw i64 %indvars.iv82.in, -1 ; 3 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.d, i64 %indvars.iv82
  store i16 32, ptr %i.bo, align 2, !tbaa !14
  %.not.not = icmp sgt i64 %indvars.iv82, %i.bb
  br i1 %.not.not, label %.lr.ph77, label %.loopexit, !llvm.loop !68

.loopexit:                                        ; preds = %.lr.ph77, %middle.block, %vec.epilog.middle.block, %bb.i, %._crit_edge73
  %i.bp = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef %1) ; 0 uses
  tail call void @uprv_free_78(ptr noundef nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.b
  %.061 = phi i32 [ 0, %bb.b ], [ %1, %.loopexit ]
  ret i32 %.061
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = add i32 %i.a, 2
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.c) #11 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %2, align 4, !tbaa !11
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.d, i8 0, i64 %i.c, i1 false)
  %i.f = load i16, ptr %0, align 2, !tbaa !14
  %i.g = icmp eq i16 %i.f, 32
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.i = load i16, ptr %i.h, align 2, !tbaa !14
  %i.j = icmp eq i16 %i.i, 32
  br i1 %i.j, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !69

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %indvars, %._crit_edge.loopexit ]
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph52.preheader, label %._crit_edge53

.lr.ph52.preheader:                               ; preds = %._crit_edge
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.h
  %indvars.iv57 = phi i64 [ %i.m, %.lr.ph52.preheader ], [ %indvars.iv.next58, %bb.h ] ; 4 uses
  %.150 = phi i32 [ %.0.lcssa, %.lr.ph52.preheader ], [ %.2, %bb.h ] ; 4 uses
  %.03949 = phi i32 [ %i.l, %.lr.ph52.preheader ], [ %i.aj, %bb.h ] ; 4 uses
  %i.n = icmp sgt i32 %.150, 0
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph52
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv57
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14   ; 3 uses
  %i.q = add i16 %i.p, 259
  %i.r = icmp ult i16 %i.q, -8
  br i1 %i.r, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %.03949 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.s ; 2 uses
  store i16 1604, ptr %i.t, align 2, !tbaa !14
  %i.u = zext i16 %i.p to i64
  %i.v = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -130538
  %i.x = load i16, ptr %i.w, align 2, !tbaa !14
  %i.y = getelementptr i8, ptr %i.t, i64 -2
  store i16 %i.x, ptr %i.y, align 2, !tbaa !14
  %i.z = add nsw i32 %.03949, -1
  %i.aa = add nsw i32 %.150, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph52
  %i.ab = icmp ne i32 %.150, 0
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv57
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !14 ; 3 uses
  %i.ae = add i16 %i.ad, 259
  %i.af = icmp ult i16 %i.ae, -8
  %or.cond = select i1 %i.ab, i1 true, i1 %i.af
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 20, ptr %2, align 4, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.g
  %i.ag = phi i16 [ %i.ad, %bb.f ], [ %i.p, %bb.d ], [ %i.ad, %bb.g ]
  %i.ah = zext nneg i32 %.03949 to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ah
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.e
  %.140 = phi i32 [ %i.z, %bb.e ], [ %.03949, %.thread ] ; 2 uses
  %.2 = phi i32 [ %i.aa, %bb.e ], [ %.150, %.thread ]
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  %i.aj = add nsw i32 %.140, -1
  %i.ak = icmp sgt i64 %indvars.iv57, 0
  %i.al = icmp sgt i32 %.140, 0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph52, label %._crit_edge53, !llvm.loop !70

._crit_edge53:                                    ; preds = %bb.h, %._crit_edge
  %i.an = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef %1) ; 0 uses
  tail call void @uprv_free_78(ptr noundef nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge53, %bb.b
  %.043 = phi i32 [ 0, %bb.b ], [ %1, %._crit_edge53 ]
  ret i32 %.043
}

declare ptr @u_memmove_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ubidi_getClass_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS10UErrorCode", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"char16_t", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15, !16, !17}
!23 = distinct !{!23, !15, !16, !17}
!24 = distinct !{!24, !15, !16, !17}
!25 = distinct !{!25, !15, !17, !16}
!26 = distinct !{!26, !15, !17, !16}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15, !17, !16}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15, !16, !17}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !17, !16}
!38 = distinct !{!38, !15, !16, !17}
!39 = distinct !{!39, !15, !16, !17}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15, !17, !16}
!42 = distinct !{!42, !15, !16, !17}
!43 = distinct !{!43, !15, !16, !17}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15, !17, !16}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15, !63}
!52 = distinct !{!52, !15, !63}
!53 = distinct !{!53, !15, !63}
!54 = distinct !{!54, !15, !63}
!55 = distinct !{!55, !15, !63}
!56 = distinct !{!56, !15, !16, !17}
!57 = distinct !{!57, !15, !17, !16}
!58 = distinct !{!58, !15}
!59 = !{!"_ZTS15uShapeVariables", !13, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!60 = !{!59, !7, i64 20}
!61 = !{!59, !7, i64 8}
!62 = !{!59, !7, i64 4}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15, !16, !17}
!67 = distinct !{!67, !15, !16, !17}
!68 = distinct !{!68, !15, !17, !16}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
end_hunk_0
