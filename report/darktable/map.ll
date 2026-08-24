Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_changed_callback_wait:bb.a

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ds = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #23 ; 0 uses
  %i.dt = load i64, ptr %4, align 8, !tbaa !238
  %i.du = add nsw i64 %i.dt, -1290608000
  %i.dv = sitofp reassoc nsz arcp contract afn i64 %i.du to double
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !240
  %i.dy = sitofp reassoc nsz arcp contract afn i64 %i.dx to double
  %i.dz = fmul reassoc nnan nsz arcp contract afn double %i.dy, f0x3EB0C6F7A0B5ED8D
  %i.ea = fadd reassoc nsz arcp contract afn double %i.dz, %i.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store double %i.ea, ptr %7, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.eb = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #23 ; 0 uses
  %i.ec = load i64, ptr %3, align 8, !tbaa !243
  %i.ed = sitofp reassoc nsz arcp contract afn i64 %i.ec to double
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !245
  %i.eg = sitofp reassoc nsz arcp contract afn i64 %i.ef to double
  %i.eh = fmul reassoc nnan nsz arcp contract afn double %i.eg, f0x3EB0C6F7A0B5ED8D
  %i.ei = fadd reassoc nsz arcp contract afn double %i.eh, %i.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ei, ptr %i.ej, align 8, !tbaa !246
  br label %dt_get_perf_times.exit.i

dt_get_perf_times.exit.i:                         ; preds = %bb.af, %bb.ae
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.el = call i32 @sqlite3_step(ptr noundef %i.ek) #23
  %i.em = icmp eq i32 %i.el, 100
  br i1 %i.em, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %dt_get_perf_times.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %dt_get_perf_times.exit.i ] ; 2 uses
  %i.en = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.eo = call i32 @sqlite3_column_int(ptr noundef %i.en, i32 noundef 0) #23
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv.i ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store i32 %i.eo, ptr %i.eq, align 8, !tbaa !173
  %i.er = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.es = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.er, i32 noundef 1) #23
  %i.et = fmul reassoc nsz arcp contract afn double %i.es, f0x3F91DF46A2529D39
  store double %i.et, ptr %i.ep, align 8, !tbaa !247
  %i.eu = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.ev = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.eu, i32 noundef 2) #23
  %i.ew = fmul reassoc nsz arcp contract afn double %i.ev, f0x3F91DF46A2529D39
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store double %i.ew, ptr %i.ex, align 8, !tbaa !248
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  store i32 -1, ptr %i.ey, align 4, !tbaa !170
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ez = load ptr, ptr %i.ay, align 8, !tbaa !119
  %i.fa = call i32 @sqlite3_step(ptr noundef %i.ez) #23
  %i.fb = icmp eq i32 %i.fa, 100
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.dh
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %dt_get_perf_times.exit.i
  call void @dt_show_times(ptr noundef nonnull %7, ptr noundef nonnull @.str.57) #23
  %i.fe = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.58) #23
  %i.ff = sitofp reassoc nsz arcp contract afn i32 %i.fe to float
  %i.fg = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.59) #23 ; 2 uses
  %i.fh = load i32, ptr %i.a, align 4, !tbaa !135
  %i.fi = lshr i32 156412000, %i.fh
  %i.fj = uitofp reassoc nsz arcp contract afn nneg i32 %i.fi to float
  %i.fk = fmul reassoc nnan nsz arcp contract afn float %i.fj, %i.ff
  %i.fl = fpext reassoc nnan nsz arcp contract afn float %i.fk to double ; 2 uses
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.fn = and i32 %i.fm, 16
  %.not.i212.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i212.i, label %iter.check, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.fo = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #23 ; 0 uses
  %i.fp = load i64, ptr %2, align 8, !tbaa !238
  %i.fq = add nsw i64 %i.fp, -1290608000
  %i.fr = sitofp reassoc nsz arcp contract afn i64 %i.fq to double
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !240
  %i.fu = sitofp reassoc nsz arcp contract afn i64 %i.ft to double
  %i.fv = fmul reassoc nnan nsz arcp contract afn double %i.fu, f0x3EB0C6F7A0B5ED8D
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fv, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store double %i.fw, ptr %7, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.fx = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #23 ; 0 uses
  %i.fy = load i64, ptr %1, align 8, !tbaa !243
  %i.fz = sitofp reassoc nsz arcp contract afn i64 %i.fy to double
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !245
  %i.gc = sitofp reassoc nsz arcp contract afn i64 %i.gb to double
  %i.gd = fmul reassoc nnan nsz arcp contract afn double %i.gc, f0x3EB0C6F7A0B5ED8D
  %i.ge = fadd reassoc nsz arcp contract afn double %i.gd, %i.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ge, ptr %i.gf, align 8, !tbaa !246
  br label %iter.check

iter.check:                                       ; preds = %bb.ag, %._crit_edge.i
  store ptr %i.di, ptr @db.0, align 8, !tbaa !249
  %i.gg = fmul reassoc nnan nsz arcp contract afn double %i.fl, f0x3DE2397A416EC565
  %i.gh = icmp ugt i32 %i.fg, 1
  %i.gi = sext i1 %i.gh to i32
  %i.gj = add i32 %i.fg, %i.gi                    ; 2 uses
  store i32 %i.gj, ptr @db.6, align 8, !tbaa !253
  store i32 0, ptr @db.7, align 8, !tbaa !254
  %i.gk = load <2 x float>, ptr %i.ch, align 8, !tbaa !107
  %i.gl = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.aj, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !107
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %min.iters.check = icmp samesign ult i32 %.0173.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp samesign ult i32 %.0173.i, 32
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gn = and i64 %i.dh, 28
  %n.vec = and i64 %i.dh, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %vec.ind
  %wide.gep140 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %step.add
  %wide.gep141 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %step.add.2
  %wide.gep142 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <8 x i64> %step.add.3
  %wide.gep143 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.gep144 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep140, i64 24
  %wide.gep145 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep141, i64 24
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep142, i64 24
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep143, <8 x i1> splat (i1 true)), !tbaa !255
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep144, <8 x i1> splat (i1 true)), !tbaa !255
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep145, <8 x i1> splat (i1 true)), !tbaa !255
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 8 %wide.gep146, <8 x i1> splat (i1 true)), !tbaa !255
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !259

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec147 = and i64 %i.dh, 2147483644           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ]
  %vec.ind149 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next153, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep150 = getelementptr inbounds nuw [40 x i8], ptr %i.di, <4 x i64> %vec.ind149
  %wide.gep151 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep150, i64 24
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> splat (i32 -1), <4 x ptr> align 8 %wide.gep151, <4 x i1> splat (i1 true)), !tbaa !255
  %index.next152 = add nuw i64 %index148, 4       ; 2 uses
  %vec.ind.next153 = add nuw nsw <4 x i64> %vec.ind149, splat (i64 4)
  %i.gp = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.gp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !260

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n154 = icmp eq i64 %n.vec147, %i.dh
  br i1 %cmp.n154, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec147, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gq = fpext <2 x float> %i.gk to <2 x double>
  %i.gr = fpext <2 x float> %i.gm to <2 x double>
  %i.gs = fmul reassoc nsz arcp contract afn <2 x double> %i.gq, splat (double f0x3F91DF46A2529D39)
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.gu = fmul reassoc nsz arcp contract afn <2 x double> %i.gr, splat (double f0x3F91DF46A2529D39)
  %i.gv = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gx = fdiv reassoc nsz arcp contract afn <2 x double> %i.gu, %i.gw
  %i.gy = call reassoc nsz arcp contract afn <2 x double> @llvm.floor.v2f64(<2 x double> %i.gx)
  %i.gz = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.gw ; 7 uses
  %i.ha = fsub reassoc nsz arcp contract afn <2 x double> %i.gt, %i.gz
  %i.hb = fdiv reassoc nsz arcp contract afn <2 x double> %i.ha, %i.gw
  %i.hc = call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.hb)
  %i.hd = fadd reassoc nsz arcp contract afn <2 x double> %i.hc, splat (double 1.000000e+00) ; 2 uses
  %i.he = extractelement <2 x double> %i.hd, i64 1
  %i.hf = fptoui double %i.he to i32
  %.fr76.i.i.i = freeze i32 %i.hf                 ; 7 uses
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  %i.hh = fptoui double %i.hg to i32              ; 4 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = call noalias ptr @calloc(i64 noundef %i.hi, i64 noundef 8) #24 ; 7 uses
  store ptr %i.hj, ptr @db.1, align 8, !tbaa !261
  store i32 %.fr76.i.i.i, ptr @db.4, align 8, !tbaa !262
  store i32 %i.hh, ptr @db.3, align 4, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.i.i.i

.lr.ph73.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.hk = fdiv reassoc nsz arcp contract afn double f0x41FC18116A43E0F9, %i.fl ; 2 uses
  %i.hl = zext i32 %.fr76.i.i.i to i64            ; 8 uses
  %.not77.i.i.i = icmp eq i32 %.fr76.i.i.i, 0
  br i1 %.not77.i.i.i, label %.lr.ph73.split.i.i.i.preheader, label %.lr.ph73.split.us.i.i.i.preheader

.lr.ph73.split.us.i.i.i.preheader:                ; preds = %.lr.ph73.i.i.i
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %min.iters.check155 = icmp ult i32 %.fr76.i.i.i, 4
  %min.iters.check157 = icmp ult i32 %.fr76.i.i.i, 32
  %i.ho = and i64 %i.hl, 28
  %n.vec159 = and i64 %i.hl, 4294967264           ; 4 uses
  %cmp.n173 = icmp eq i64 %n.vec159, %i.hl
  %min.epilog.iters.check178 = icmp eq i64 %i.ho, 0
  %n.vec180 = and i64 %i.hl, 4294967292           ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec180, %i.hl
  br label %.lr.ph73.split.us.i.i.i

.lr.ph73.split.i.i.i.preheader:                   ; preds = %.lr.ph73.i.i.i
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph73.split.i.i.i

.lr.ph73.split.us.i.i.i:                          ; preds = %.lr.ph73.split.us.i.i.i.preheader, %..loopexit_crit_edge.us.i.i.i
  %indvars.iv85.i.i.i = phi i64 [ %indvars.iv.next86.i.i.i, %..loopexit_crit_edge.us.i.i.i ], [ 0, %.lr.ph73.split.us.i.i.i.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv85.i.i.i ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load <2 x double>, ptr %i.hr, align 8, !tbaa !142 ; 3 uses
  %i.hu = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ht, %i.gt
  %i.hv = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ht, %i.gz
  %i.hw = select <2 x i1> %i.hv, <2 x double> %i.gz, <2 x double> %i.ht
  %i.hx = select <2 x i1> %i.hu, <2 x double> %i.gt, <2 x double> %i.hw
  %i.hy = fsub reassoc nsz arcp contract afn <2 x double> %i.hx, %i.gz
  %i.hz = fmul reassoc nsz arcp contract afn <2 x double> %i.hy, %i.hn
  %i.ia = fptoui <2 x double> %i.hz to <2 x i32>  ; 3 uses
  store <2 x i32> %i.ia, ptr %i.hs, align 8, !tbaa !135
  %i.ib = extractelement <2 x i32> %i.ia, i64 0
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.ic ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !264 ; 2 uses
  %.not64.us.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not64.us.i.i.i, label %iter.check175, label %..loopexit_crit_edge.us.i.i.i

iter.check175:                                    ; preds = %.lr.ph73.split.us.i.i.i
  %i.if = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 8) #24 ; 11 uses
  store ptr %i.if, ptr %i.id, align 8, !tbaa !264
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ]
  br i1 %min.iters.check155, label %.preheader.us.i.i.i.preheader, label %vector.main.loop.iter.check156

vector.main.loop.iter.check156:                   ; preds = %iter.check175
  br i1 %min.iters.check157, label %vec.epilog.ph179, label %vector.body160

vector.body160:                                   ; preds = %vector.main.loop.iter.check156, %vector.body160
  %index161 = phi i64 [ %index.next170, %vector.body160 ], [ 0, %vector.main.loop.iter.check156 ]
  %vec.ind162 = phi <8 x i64> [ %vec.ind.next171, %vector.body160 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check156 ] ; 5 uses
  %step.add163 = add nuw <8 x i64> %vec.ind162, splat (i64 8)
  %step.add.2164 = add nuw <8 x i64> %vec.ind162, splat (i64 16)
  %step.add.3165 = add nuw <8 x i64> %vec.ind162, splat (i64 24)
  %wide.gep166 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %vec.ind162
  %wide.gep167 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add163
  %wide.gep168 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add.2164
  %wide.gep169 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add.3165
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep166, <8 x i1> splat (i1 true)), !tbaa !266
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep167, <8 x i1> splat (i1 true)), !tbaa !266
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep168, <8 x i1> splat (i1 true)), !tbaa !266
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep169, <8 x i1> splat (i1 true)), !tbaa !266
  %index.next170 = add nuw i64 %index161, 32      ; 2 uses
  %vec.ind.next171 = add nuw <8 x i64> %vec.ind162, splat (i64 32)
  %i.ig = icmp eq i64 %index.next170, %n.vec159
  br i1 %i.ig, label %middle.block172, label %vector.body160, !llvm.loop !268

middle.block172:                                  ; preds = %vector.body160
  br i1 %cmp.n173, label %..loopexit_crit_edge.us.i.i.i, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block172
  br i1 %min.epilog.iters.check178, label %.preheader.us.i.i.i.preheader, label %vec.epilog.ph179, !prof !259

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check156, %vec.epilog.iter.check177
  %vec.epilog.resume.val174 = phi i64 [ %n.vec159, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check156 ] ; 2 uses
  %broadcast.splatinsert181 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val174, i64 0
  %broadcast.splat182 = shufflevector <4 x i64> %broadcast.splatinsert181, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction183 = or disjoint <4 x i64> %broadcast.splat182, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body184

vec.epilog.vector.body184:                        ; preds = %vec.epilog.vector.body184, %vec.epilog.ph179
  %index185 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph179 ], [ %index.next188, %vec.epilog.vector.body184 ]
  %vec.ind186 = phi <4 x i64> [ %induction183, %vec.epilog.ph179 ], [ %vec.ind.next189, %vec.epilog.vector.body184 ] ; 2 uses
  %wide.gep187 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <4 x i64> %vec.ind186
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> splat (i32 -1), <4 x ptr> align 4 %wide.gep187, <4 x i1> splat (i1 true)), !tbaa !266
  %index.next188 = add nuw i64 %index185, 4       ; 2 uses
  %vec.ind.next189 = add nuw nsw <4 x i64> %vec.ind186, splat (i64 4)
  %i.ih = icmp eq i64 %index.next188, %n.vec180
  br i1 %i.ih, label %vec.epilog.middle.block190, label %vec.epilog.vector.body184, !llvm.loop !269

vec.epilog.middle.block190:                       ; preds = %vec.epilog.vector.body184
  br i1 %cmp.n191, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i.preheader

.preheader.us.i.i.i.preheader:                    ; preds = %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block190
  %indvars.iv80.i.i.i.ph = phi i64 [ 0, %iter.check175 ], [ %n.vec159, %vec.epilog.iter.check177 ], [ %n.vec180, %vec.epilog.middle.block190 ]
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %.preheader.us.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ %indvars.iv.next81.i.i.i, %.preheader.us.i.i.i ], [ %indvars.iv80.i.i.i.ph, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv80.i.i.i
  store i32 -1, ptr %i.ii, align 4, !tbaa !266
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %exitcond84.not.i.i.i = icmp eq i64 %indvars.iv.next81.i.i.i, %i.hl
  br i1 %exitcond84.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !270

..loopexit_crit_edge.us.i.i.i:                    ; preds = %.preheader.us.i.i.i, %middle.block172, %vec.epilog.middle.block190, %.lr.ph73.split.us.i.i.i
  %i.ij = phi ptr [ %i.ie, %.lr.ph73.split.us.i.i.i ], [ %i.if, %middle.block172 ], [ %i.if, %vec.epilog.middle.block190 ], [ %i.if, %.preheader.us.i.i.i ]
  %i.ik = extractelement <2 x i32> %i.ia, i64 1
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.il ; 3 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !266
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  store i32 %i.in, ptr %i.io, align 8, !tbaa !255
  %i.ip = trunc nuw i64 %indvars.iv85.i.i.i to i32
  store i32 %i.ip, ptr %i.im, align 4, !tbaa !266
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !271
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !271
  %indvars.iv.next86.i.i.i = add nuw nsw i64 %indvars.iv85.i.i.i, 1 ; 2 uses
  %exitcond89.not.i.i.i = icmp eq i64 %indvars.iv.next86.i.i.i, %i.dh
  br i1 %exitcond89.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.split.us.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i32 -1, ptr %i.iu, align 8, !tbaa !255
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.dh
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !272

.lr.ph73.split.i.i.i:                             ; preds = %.lr.ph73.split.i.i.i.preheader, %.preheader.i.i.i
  %indvars.iv90.i.i.i = phi i64 [ %indvars.iv.next91.i.i.i, %.preheader.i.i.i ], [ 0, %.lr.ph73.split.i.i.i.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv90.i.i.i ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load <2 x double>, ptr %i.iv, align 8, !tbaa !142 ; 3 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ix, %i.gt
  %i.iz = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ix, %i.gz
  %i.ja = select <2 x i1> %i.iz, <2 x double> %i.gz, <2 x double> %i.ix
  %i.jb = select <2 x i1> %i.iy, <2 x double> %i.gt, <2 x double> %i.ja
  %i.jc = fsub reassoc nsz arcp contract afn <2 x double> %i.jb, %i.gz
  %i.jd = fmul reassoc nsz arcp contract afn <2 x double> %i.jc, %i.hq
  %i.je = fptoui <2 x double> %i.jd to <2 x i32>  ; 3 uses
  store <2 x i32> %i.je, ptr %i.iw, align 8, !tbaa !135
  %i.jf = extractelement <2 x i32> %i.je, i64 0
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !264 ; 2 uses
  %.not64.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not64.i.i.i, label %bb.ah, label %.preheader.i.i.i

bb.ah:                                            ; preds = %.lr.ph73.split.i.i.i
  %i.jj = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 8) #24 ; 2 uses
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !264
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ah, %.lr.ph73.split.i.i.i
  %i.jk = phi ptr [ %i.jj, %bb.ah ], [ %i.ji, %.lr.ph73.split.i.i.i ]
  %i.jl = extractelement <2 x i32> %i.je, i64 1
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jm ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !266
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !255
  %i.jq = trunc nuw i64 %indvars.iv90.i.i.i to i32
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !266
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !271
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !271
  %indvars.iv.next91.i.i.i = add nuw nsw i64 %indvars.iv90.i.i.i, 1 ; 2 uses
  %exitcond94.not.i.i.i = icmp eq i64 %indvars.iv.next91.i.i.i, %i.dh
  br i1 %exitcond94.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.split.i.i.i

_bin_points.exit.i.i:                             ; preds = %..loopexit_crit_edge.us.i.i.i, %.preheader.i.i.i, %._crit_edge.i.i.i
  %.not147.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not147.i.i, label %_dbscan.exit.i, label %.lr.ph117.i.i

.preheader110.i.i:                                ; preds = %.loopexit112.i.i
  %.not148.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not148.i.i, label %_dbscan.exit.i, label %.lr.ph123.i.i

.lr.ph117.i.i:                                    ; preds = %_bin_points.exit.i.i, %.loopexit112.i.i
  %.pre194.i.i.a = phi i32 [ %.pre194217.i.i, %.loopexit112.i.i ], [ %i.gj, %_bin_points.exit.i.i ] ; 3 uses
  %.pre192.i.i.a = phi ptr [ %.pre192213.i.i, %.loopexit112.i.i ], [ %i.hj, %_bin_points.exit.i.i ] ; 3 uses
  %i.ju = phi ptr [ %i.kv, %.loopexit112.i.i ], [ %i.hj, %_bin_points.exit.i.i ] ; 2 uses
  %i.jv = phi i32 [ %i.kw, %.loopexit112.i.i ], [ %i.hh, %_bin_points.exit.i.i ]
  %i.jw = phi i32 [ %i.kx, %.loopexit112.i.i ], [ %.fr76.i.i.i, %_bin_points.exit.i.i ] ; 2 uses
  %i.jx = phi i32 [ %i.ky, %.loopexit112.i.i ], [ 0, %_bin_points.exit.i.i ] ; 2 uses
  %i.jy = phi i32 [ %i.kz, %.loopexit112.i.i ], [ %.fr76.i.i.i, %_bin_points.exit.i.i ] ; 2 uses
  %indvars.iv161.i.i = phi i64 [ %indvars.iv.next162.i.i, %.loopexit112.i.i ], [ 0, %_bin_points.exit.i.i ] ; 4 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv161.i.i
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !264
  %.not79.i.i = icmp ne ptr %i.ka, null
  %i.kb = icmp ne i32 %i.jy, 0
  %or.cond.i.i = select i1 %.not79.i.i, i1 %i.kb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %.loopexit112.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph117.i.i
  %i.kc = trunc nuw i64 %indvars.iv161.i.i to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.preheader.i.i
  %.pre194218.i.i = phi i32 [ %.pre194.i.i.a, %.lr.ph.preheader.i.i ], [ %.pre194219.i.i, %bb.aj ]
  %.pre192214.i.i = phi ptr [ %.pre192.i.i.a, %.lr.ph.preheader.i.i ], [ %.pre192215.i.i, %bb.aj ]
  %i.kd = phi i32 [ %i.jw, %.lr.ph.preheader.i.i ], [ %i.kp, %bb.aj ]
  %i.ke = phi i32 [ %i.jx, %.lr.ph.preheader.i.i ], [ %i.kq, %bb.aj ] ; 2 uses
  %i.kf = phi i32 [ %.pre194.i.i.a, %.lr.ph.preheader.i.i ], [ %i.kr, %bb.aj ] ; 2 uses
  %i.kg = phi ptr [ %.pre192.i.i.a, %.lr.ph.preheader.i.i ], [ %i.ks, %bb.aj ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aj ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv161.i.i
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !264
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !271
  %.not80.i.i = icmp ult i32 %i.kl, %i.kf
  br i1 %.not80.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.km = trunc nuw i64 %indvars.iv.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.kc, i32 noundef %i.km, i32 noundef %i.ke, i32 noundef 250)
  %i.kn = load i32, ptr @db.7, align 8, !tbaa !254
  %i.ko = add i32 %i.kn, 1                        ; 2 uses
  store i32 %i.ko, ptr @db.7, align 8, !tbaa !254
  %.pre191.i.i = load ptr, ptr @db.1, align 8, !tbaa !261 ; 2 uses
  %.pre193.i.i = load i32, ptr @db.6, align 8, !tbaa !253 ; 2 uses
  %.pre195.i.i.a = load i32, ptr @db.4, align 8, !tbaa !262
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %.pre194219.i.i = phi i32 [ %.pre194218.i.i, %.lr.ph.i.i ], [ %.pre193.i.i, %bb.ai ] ; 2 uses
  %.pre192215.i.i = phi ptr [ %.pre192214.i.i, %.lr.ph.i.i ], [ %.pre191.i.i, %bb.ai ] ; 2 uses
  %i.kp = phi i32 [ %i.kd, %.lr.ph.i.i ], [ %.pre195.i.i.a, %bb.ai ] ; 4 uses
  %i.kq = phi i32 [ %i.ke, %.lr.ph.i.i ], [ %i.ko, %bb.ai ] ; 2 uses
  %i.kr = phi i32 [ %i.kf, %.lr.ph.i.i ], [ %.pre193.i.i, %bb.ai ]
  %i.ks = phi ptr [ %i.kg, %.lr.ph.i.i ], [ %.pre191.i.i, %bb.ai ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kt = zext i32 %i.kp to i64
  %i.ku = icmp samesign ult i64 %indvars.iv.next.i.i, %i.kt
  br i1 %i.ku, label %.lr.ph.i.i, label %.loopexit112.loopexit.i.i

.loopexit112.loopexit.i.i:                        ; preds = %bb.aj
  %.pre196.i.i.a = load i32, ptr @db.3, align 4, !tbaa !263
  br label %.loopexit112.i.i

.loopexit112.i.i:                                 ; preds = %.loopexit112.loopexit.i.i, %.lr.ph117.i.i
  %.pre194217.i.i = phi i32 [ %.pre194219.i.i, %.loopexit112.loopexit.i.i ], [ %.pre194.i.i.a, %.lr.ph117.i.i ]
  %.pre192213.i.i = phi ptr [ %.pre192215.i.i, %.loopexit112.loopexit.i.i ], [ %.pre192.i.i.a, %.lr.ph117.i.i ] ; 4 uses
  %i.kv = phi ptr [ %i.ks, %.loopexit112.loopexit.i.i ], [ %i.ju, %.lr.ph117.i.i ]
  %i.kw = phi i32 [ %.pre196.i.i.a, %.loopexit112.loopexit.i.i ], [ %i.jv, %.lr.ph117.i.i ] ; 4 uses
  %i.kx = phi i32 [ %i.kp, %.loopexit112.loopexit.i.i ], [ %i.jw, %.lr.ph117.i.i ] ; 4 uses
  %i.ky = phi i32 [ %i.kq, %.loopexit112.loopexit.i.i ], [ %i.jx, %.lr.ph117.i.i ] ; 2 uses
  %i.kz = phi i32 [ %i.kp, %.loopexit112.loopexit.i.i ], [ %i.jy, %.lr.ph117.i.i ]
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1 ; 2 uses
  %i.la = zext i32 %i.kw to i64
  %i.lb = icmp samesign ult i64 %indvars.iv.next162.i.i, %i.la
  br i1 %i.lb, label %.lr.ph117.i.i, label %.preheader110.i.i

.preheader107.i.i:                                ; preds = %.loopexit109.i.i
  %.not150.i.i = icmp eq i32 %i.sv, 0
  br i1 %.not150.i.i, label %_dbscan.exit.i, label %.preheader106.i.i

.lr.ph123.i.i:                                    ; preds = %.preheader110.i.i, %.loopexit109.i.i
  %.pre199222.i.i = phi ptr [ %.pre199223.i.i, %.loopexit109.i.i ], [ %.pre192213.i.i, %.preheader110.i.i ] ; 3 uses
  %i.lc = phi ptr [ %i.su, %.loopexit109.i.i ], [ %.pre192213.i.i, %.preheader110.i.i ] ; 6 uses
  %i.ld = phi i32 [ %i.sv, %.loopexit109.i.i ], [ %i.kw, %.preheader110.i.i ] ; 3 uses
  %i.le = phi i32 [ %i.sw, %.loopexit109.i.i ], [ %i.kx, %.preheader110.i.i ] ; 3 uses
  %i.lf = phi i32 [ %i.sx, %.loopexit109.i.i ], [ %i.kx, %.preheader110.i.i ] ; 3 uses
  %i.lg = phi i32 [ %i.sy, %.loopexit109.i.i ], [ %i.ky, %.preheader110.i.i ] ; 4 uses
  %i.lh = phi i32 [ %i.sz, %.loopexit109.i.i ], [ %i.kx, %.preheader110.i.i ] ; 3 uses
  %indvars.iv168.i.i = phi i64 [ %indvars.iv.next169.i.i, %.loopexit109.i.i ], [ 0, %.preheader110.i.i ] ; 7 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv168.i.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !264 ; 4 uses
  %.not77.i.i = icmp eq ptr %i.lj, null
  br i1 %.not77.i.i, label %.loopexit109.i.i, label %.preheader108.i.i

.preheader108.i.i:                                ; preds = %.lr.ph123.i.i
  %.not149.i.i = icmp eq i32 %i.lh, 0
  br i1 %.not149.i.i, label %.loopexit109.i.i, label %_not_clustered.exit.thread.i.peel.i.i

_not_clustered.exit.thread.i.peel.i.i:            ; preds = %.preheader108.i.i
  %.not63.i.i.i = icmp eq i64 %indvars.iv168.i.i, 0 ; 2 uses
  %i.lk = trunc nuw i64 %indvars.iv168.i.i to i32 ; 2 uses
  %i.ll = add nuw nsw i64 %indvars.iv168.i.i, 4294967295
  %i.lm = and i64 %i.ll, 4294967295               ; 2 uses
  %i.ln = add nuw nsw i64 %indvars.iv168.i.i, 1   ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !271 ; 3 uses
  %.not274.i.i = icmp eq i32 %i.lh, 1             ; 3 uses
  br i1 %.not274.i.i, label %_not_clustered.exit75.thread.i.peel.i.i, label %bb.ak

bb.ak:                                            ; preds = %_not_clustered.exit.thread.i.peel.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !271 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %_not_clustered.exit75.thread.i.peel.i.i, label %_not_clustered.exit75.i.peel.i.i

_not_clustered.exit75.i.peel.i.i:                 ; preds = %bb.ak
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lu = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !266
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [40 x i8], ptr %i.lu, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 28
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !170
  %.not62142.i.peel.i.i = icmp slt i32 %i.lz, 0
  %i.ma = select i1 %.not62142.i.peel.i.i, i32 %i.lr, i32 0
  %spec.select134.i.peel.i.i = add i32 %i.ma, %i.lp
  br label %_not_clustered.exit75.thread.i.peel.i.i

_not_clustered.exit75.thread.i.peel.i.i:          ; preds = %_not_clustered.exit75.i.peel.i.i, %bb.ak, %_not_clustered.exit.thread.i.peel.i.i
  %.1.i.peel.i.i = phi i32 [ %i.lp, %bb.ak ], [ %spec.select134.i.peel.i.i, %_not_clustered.exit75.i.peel.i.i ], [ %i.lp, %_not_clustered.exit.thread.i.peel.i.i ] ; 4 uses
  br i1 %.not63.i.i.i, label %_not_clustered.exit87.thread.i.peel.i.i, label %bb.al

bb.al:                                            ; preds = %_not_clustered.exit75.thread.i.peel.i.i
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lm
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !264 ; 5 uses
  %.not64.i82.peel.i.i = icmp eq ptr %i.mc, null
  br i1 %.not64.i82.peel.i.i, label %_not_clustered.exit87.thread.i.peel.i.i, label %_not_clustered.exit79.thread.i.peel.i.i

_not_clustered.exit79.thread.i.peel.i.i:          ; preds = %bb.al
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !271 ; 2 uses
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %_not_clustered.exit83.thread.i.peel.i.i, label %_not_clustered.exit83.i.peel.i.i

_not_clustered.exit83.i.peel.i.i:                 ; preds = %_not_clustered.exit79.thread.i.peel.i.i
  %i.mg = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.mh = load i32, ptr %i.mc, align 4, !tbaa !266
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 28
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !170
  %.not66144.i.peel.i.i = icmp slt i32 %i.ml, 0
  %i.mm = select i1 %.not66144.i.peel.i.i, i32 %i.me, i32 0
  %spec.select136.i.peel.i.i = add i32 %i.mm, %.1.i.peel.i.i
  br label %_not_clustered.exit83.thread.i.peel.i.i

_not_clustered.exit83.thread.i.peel.i.i:          ; preds = %_not_clustered.exit83.i.peel.i.i, %_not_clustered.exit79.thread.i.peel.i.i
  %.3.i.peel.i.i = phi i32 [ %.1.i.peel.i.i, %_not_clustered.exit79.thread.i.peel.i.i ], [ %spec.select136.i.peel.i.i, %_not_clustered.exit83.i.peel.i.i ] ; 3 uses
  br i1 %.not274.i.i, label %_not_clustered.exit87.thread.i.peel.i.i, label %bb.am

bb.am:                                            ; preds = %_not_clustered.exit83.thread.i.peel.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !271 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %_not_clustered.exit87.thread.i.peel.i.i, label %_not_clustered.exit87.i.peel.i.i

_not_clustered.exit87.i.peel.i.i:                 ; preds = %bb.am
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mr = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !266
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [40 x i8], ptr %i.mr, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 28
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !170
  %.not67145.i.peel.i.i = icmp slt i32 %i.mw, 0
  %i.mx = select i1 %.not67145.i.peel.i.i, i32 %i.mo, i32 0
  %spec.select137.i.peel.i.i = add i32 %i.mx, %.3.i.peel.i.i
  br label %_not_clustered.exit87.thread.i.peel.i.i

_not_clustered.exit87.thread.i.peel.i.i:          ; preds = %_not_clustered.exit87.i.peel.i.i, %bb.am, %_not_clustered.exit83.thread.i.peel.i.i, %bb.al, %_not_clustered.exit75.thread.i.peel.i.i
  %.4.i.peel.i.i = phi i32 [ %.3.i.peel.i.i, %bb.am ], [ %spec.select137.i.peel.i.i, %_not_clustered.exit87.i.peel.i.i ], [ %.3.i.peel.i.i, %_not_clustered.exit83.thread.i.peel.i.i ], [ %.1.i.peel.i.i, %bb.al ], [ %.1.i.peel.i.i, %_not_clustered.exit75.thread.i.peel.i.i ] ; 4 uses
  %i.my = zext i32 %i.ld to i64
  %i.mz = icmp samesign ult i64 %i.ln, %i.my
  br i1 %i.mz, label %bb.an, label %_can_form_cluster.exit.peel.i.i

bb.an:                                            ; preds = %_not_clustered.exit87.thread.i.peel.i.i
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ln
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !264 ; 5 uses
  %.not68.i.peel.i.i = icmp eq ptr %i.nb, null
  br i1 %.not68.i.peel.i.i, label %_can_form_cluster.exit.peel.i.i, label %_not_clustered.exit91.thread.i.peel.i.i

_not_clustered.exit91.thread.i.peel.i.i:          ; preds = %bb.an
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !271 ; 2 uses
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %_not_clustered.exit95.thread.i.peel.i.i, label %_not_clustered.exit95.i.peel.i.i

_not_clustered.exit95.i.peel.i.i:                 ; preds = %_not_clustered.exit91.thread.i.peel.i.i
  %i.nf = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.ng = load i32, ptr %i.nb, align 4, !tbaa !266
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 28
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !170
  %.not70147.i.peel.i.i = icmp slt i32 %i.nk, 0
  %i.nl = select i1 %.not70147.i.peel.i.i, i32 %i.nd, i32 0
  %spec.select139.i.peel.i.i = add i32 %i.nl, %.4.i.peel.i.i
  br label %_not_clustered.exit95.thread.i.peel.i.i

end_hunk_0
begin_hunk_1_@_view_map_changed_callback_wait:bb.a
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %_not_clustered.exit75.thread.i.i.i, label %_not_clustered.exit75.i.i.i

_not_clustered.exit75.i.i.i:                      ; preds = %bb.ar
  %i.pf = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.pg = load i32, ptr %i.pb, align 4, !tbaa !266
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [40 x i8], ptr %i.pf, i64 %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 28
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !170
  %.not62142.i.i.i = icmp slt i32 %i.pk, 0
  %i.pl = select i1 %.not62142.i.i.i, i32 %i.pd, i32 0
  %spec.select134.i.i.i = add i32 %i.pl, %.0.i.i.i
  br label %_not_clustered.exit75.thread.i.i.i

_not_clustered.exit75.thread.i.i.i:               ; preds = %_not_clustered.exit75.i.i.i, %bb.ar, %_not_clustered.exit.thread.i.i.i
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %bb.ar ], [ %spec.select134.i.i.i, %_not_clustered.exit75.i.i.i ], [ %.0.i.i.i, %_not_clustered.exit.thread.i.i.i ] ; 4 uses
  br i1 %.not63.i.i.i, label %_not_clustered.exit87.thread.i.i.i, label %bb.as

bb.as:                                            ; preds = %_not_clustered.exit75.thread.i.i.i
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.lm
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !264 ; 3 uses
  %.not64.i82.i.i = icmp eq ptr %i.pn, null
  br i1 %.not64.i82.i.i, label %_not_clustered.exit87.thread.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.po = getelementptr [8 x i8], ptr %i.pn, i64 %indvars.iv164.i.i ; 4 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 -4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !271 ; 2 uses
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %_not_clustered.exit79.thread.i.i.i, label %_not_clustered.exit79.i.i.i

_not_clustered.exit79.i.i.i:                      ; preds = %bb.at
  %i.ps = getelementptr i8, ptr %i.po, i64 -8
  %i.pt = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.pu = load i32, ptr %i.ps, align 4, !tbaa !266
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [40 x i8], ptr %i.pt, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 28
  %i.py = load i32, ptr %i.px, align 4, !tbaa !170
  %.not65143.i.i.i = icmp slt i32 %i.py, 0
  %i.pz = select i1 %.not65143.i.i.i, i32 %i.pq, i32 0
  %spec.select135.i.i.i = add i32 %i.pz, %.1.i.i.i
  br label %_not_clustered.exit79.thread.i.i.i

_not_clustered.exit79.thread.i.i.i:               ; preds = %_not_clustered.exit79.i.i.i, %bb.at
  %.2.i.i.i = phi i32 [ %.1.i.i.i, %bb.at ], [ %spec.select135.i.i.i, %_not_clustered.exit79.i.i.i ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !271 ; 2 uses
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %_not_clustered.exit83.thread.i.i.i, label %_not_clustered.exit83.i.i.i

_not_clustered.exit83.i.i.i:                      ; preds = %_not_clustered.exit79.thread.i.i.i
  %i.qd = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.qe = load i32, ptr %i.po, align 4, !tbaa !266
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [40 x i8], ptr %i.qd, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 28
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !170
  %.not66144.i.i.i = icmp slt i32 %i.qi, 0
  %i.qj = select i1 %.not66144.i.i.i, i32 %i.qb, i32 0
  %spec.select136.i.i.i = add i32 %i.qj, %.2.i.i.i
  br label %_not_clustered.exit83.thread.i.i.i

_not_clustered.exit83.thread.i.i.i:               ; preds = %_not_clustered.exit83.i.i.i, %_not_clustered.exit79.thread.i.i.i
  %.3.i.i.i = phi i32 [ %.2.i.i.i, %_not_clustered.exit79.thread.i.i.i ], [ %spec.select136.i.i.i, %_not_clustered.exit83.i.i.i ] ; 3 uses
  br i1 %i.pa, label %bb.au, label %_not_clustered.exit87.thread.i.i.i

bb.au:                                            ; preds = %_not_clustered.exit83.thread.i.i.i
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.next165.i.i ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !271 ; 2 uses
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %_not_clustered.exit87.thread.i.i.i, label %_not_clustered.exit87.i.i.i

_not_clustered.exit87.i.i.i:                      ; preds = %bb.au
  %i.qo = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.qp = load i32, ptr %i.qk, align 4, !tbaa !266
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %i.qo, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 28
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !170
  %.not67145.i.i.i = icmp slt i32 %i.qt, 0
  %i.qu = select i1 %.not67145.i.i.i, i32 %i.qm, i32 0
  %spec.select137.i.i.i = add i32 %i.qu, %.3.i.i.i
  br label %_not_clustered.exit87.thread.i.i.i

_not_clustered.exit87.thread.i.i.i:               ; preds = %_not_clustered.exit87.i.i.i, %bb.au, %_not_clustered.exit83.thread.i.i.i, %bb.as, %_not_clustered.exit75.thread.i.i.i
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.au ], [ %spec.select137.i.i.i, %_not_clustered.exit87.i.i.i ], [ %.3.i.i.i, %_not_clustered.exit83.thread.i.i.i ], [ %.1.i.i.i, %bb.as ], [ %.1.i.i.i, %_not_clustered.exit75.thread.i.i.i ] ; 4 uses
  %i.qv = load i32, ptr @db.3, align 4, !tbaa !263
  %i.qw = zext i32 %i.qv to i64
  %i.qx = icmp samesign ult i64 %i.ln, %i.qw
  br i1 %i.qx, label %bb.av, label %_can_form_cluster.exit.i.i

bb.av:                                            ; preds = %_not_clustered.exit87.thread.i.i.i
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.ln
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !264 ; 3 uses
  %.not68.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not68.i.i.i, label %_can_form_cluster.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ra = getelementptr [8 x i8], ptr %i.qz, i64 %indvars.iv164.i.i ; 4 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 -4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !271 ; 2 uses
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %_not_clustered.exit91.thread.i.i.i, label %_not_clustered.exit91.i.i.i

_not_clustered.exit91.i.i.i:                      ; preds = %bb.aw
  %i.re = getelementptr i8, ptr %i.ra, i64 -8
  %i.rf = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.rg = load i32, ptr %i.re, align 4, !tbaa !266
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [40 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 28
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !170
  %.not69146.i.i.i = icmp slt i32 %i.rk, 0
  %i.rl = select i1 %.not69146.i.i.i, i32 %i.rc, i32 0
  %spec.select138.i.i.i = add i32 %i.rl, %.4.i.i.i
  br label %_not_clustered.exit91.thread.i.i.i

_not_clustered.exit91.thread.i.i.i:               ; preds = %_not_clustered.exit91.i.i.i, %bb.aw
  %.5.i.i.i = phi i32 [ %.4.i.i.i, %bb.aw ], [ %spec.select138.i.i.i, %_not_clustered.exit91.i.i.i ] ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !271 ; 2 uses
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %_not_clustered.exit95.thread.i.i.i, label %_not_clustered.exit95.i.i.i

_not_clustered.exit95.i.i.i:                      ; preds = %_not_clustered.exit91.thread.i.i.i
  %i.rp = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.rq = load i32, ptr %i.ra, align 4, !tbaa !266
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [40 x i8], ptr %i.rp, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 28
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !170
  %.not70147.i.i.i = icmp slt i32 %i.ru, 0
  %i.rv = select i1 %.not70147.i.i.i, i32 %i.rn, i32 0
  %spec.select139.i.i.i = add i32 %i.rv, %.5.i.i.i
  br label %_not_clustered.exit95.thread.i.i.i

_not_clustered.exit95.thread.i.i.i:               ; preds = %_not_clustered.exit95.i.i.i, %_not_clustered.exit91.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.5.i.i.i, %_not_clustered.exit91.thread.i.i.i ], [ %spec.select139.i.i.i, %_not_clustered.exit95.i.i.i ] ; 3 uses
  br i1 %i.pa, label %bb.ax, label %_can_form_cluster.exit.i.i

bb.ax:                                            ; preds = %_not_clustered.exit95.thread.i.i.i
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.next165.i.i ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !271 ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %_can_form_cluster.exit.i.i, label %_not_clustered.exit99.i.i.i

_not_clustered.exit99.i.i.i:                      ; preds = %bb.ax
  %i.sa = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.sb = load i32, ptr %i.rw, align 4, !tbaa !266
  %i.sc = zext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [40 x i8], ptr %i.sa, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 28
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !170
  %.not71148.i.i.i = icmp slt i32 %i.sf, 0
  %i.sg = select i1 %.not71148.i.i.i, i32 %i.ry, i32 0
  %spec.select140.i.i.i = add i32 %i.sg, %.6.i.i.i
  br label %_can_form_cluster.exit.i.i

_can_form_cluster.exit.i.i:                       ; preds = %_not_clustered.exit99.i.i.i, %bb.ax, %_not_clustered.exit95.thread.i.i.i, %bb.av, %_not_clustered.exit87.thread.i.i.i
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.ax ], [ %spec.select140.i.i.i, %_not_clustered.exit99.i.i.i ], [ %.6.i.i.i, %_not_clustered.exit95.thread.i.i.i ], [ %.4.i.i.i, %bb.av ], [ %.4.i.i.i, %_not_clustered.exit87.thread.i.i.i ]
  %i.sh = load i32, ptr @db.6, align 8, !tbaa !253
  %.not100.i.i = icmp ult i32 %.7.i.i.i, %i.sh
  br i1 %.not100.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_can_form_cluster.exit.i.i
  %i.si = trunc nuw i64 %indvars.iv164.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.lk, i32 noundef %i.si, i32 noundef %i.oh, i32 noundef 250)
  %i.sj = load i32, ptr @db.7, align 8, !tbaa !254
  %i.sk = add i32 %i.sj, 1                        ; 2 uses
  store i32 %i.sk, ptr @db.7, align 8, !tbaa !254
  %.pre198.i.i = load ptr, ptr @db.1, align 8, !tbaa !261 ; 2 uses
  %.pre200.i.i.a = load i32, ptr @db.4, align 8, !tbaa !262
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_can_form_cluster.exit.i.i
  %.pre199225.i.i = phi ptr [ %.pre199226.i.i, %_can_form_cluster.exit.i.i ], [ %.pre198.i.i, %bb.ay ] ; 2 uses
  %i.sl = phi i32 [ %i.of, %_can_form_cluster.exit.i.i ], [ %.pre200.i.i.a, %bb.ay ] ; 5 uses
  %i.sm = phi ptr [ %i.og, %_can_form_cluster.exit.i.i ], [ %.pre198.i.i, %bb.ay ] ; 2 uses
  %i.sn = phi i32 [ %i.oh, %_can_form_cluster.exit.i.i ], [ %i.sk, %bb.ay ] ; 2 uses
  %i.so = zext i32 %i.sl to i64
  %i.sp = icmp samesign ult i64 %indvars.iv.next165.i.i, %i.so
  br i1 %i.sp, label %.peel.next.i.i, label %.loopexit109.loopexit.i.i, !llvm.loop !273

.loopexit109.loopexit.i.i:                        ; preds = %bb.az, %bb.aq
  %.pre199224.i.i = phi ptr [ %.pre199.i.i.a, %bb.aq ], [ %.pre199225.i.i, %bb.az ]
  %i.sq = phi ptr [ %i.oa, %bb.aq ], [ %i.sm, %bb.az ]
  %i.sr = phi i32 [ %i.ob, %bb.aq ], [ %i.sl, %bb.az ]
  %i.ss = phi i32 [ %i.oc, %bb.aq ], [ %i.sl, %bb.az ] ; 2 uses
  %i.st = phi i32 [ %i.od, %bb.aq ], [ %i.sn, %bb.az ]
  %.pre201.i.i.a = load i32, ptr @db.3, align 4, !tbaa !263
  br label %.loopexit109.i.i

.loopexit109.i.i:                                 ; preds = %.loopexit109.loopexit.i.i, %.preheader108.i.i, %.lr.ph123.i.i
  %.pre199223.i.i = phi ptr [ %.pre199224.i.i, %.loopexit109.loopexit.i.i ], [ %.pre199222.i.i, %.preheader108.i.i ], [ %.pre199222.i.i, %.lr.ph123.i.i ] ; 4 uses
  %i.su = phi ptr [ %i.sq, %.loopexit109.loopexit.i.i ], [ %i.lc, %.preheader108.i.i ], [ %i.lc, %.lr.ph123.i.i ]
  %i.sv = phi i32 [ %.pre201.i.i.a, %.loopexit109.loopexit.i.i ], [ %i.ld, %.preheader108.i.i ], [ %i.ld, %.lr.ph123.i.i ] ; 4 uses
  %i.sw = phi i32 [ %i.sr, %.loopexit109.loopexit.i.i ], [ %i.le, %.preheader108.i.i ], [ %i.le, %.lr.ph123.i.i ] ; 3 uses
  %i.sx = phi i32 [ %i.ss, %.loopexit109.loopexit.i.i ], [ %i.lf, %.preheader108.i.i ], [ %i.lf, %.lr.ph123.i.i ]
  %i.sy = phi i32 [ %i.st, %.loopexit109.loopexit.i.i ], [ %i.lg, %.preheader108.i.i ], [ %i.lg, %.lr.ph123.i.i ]
  %i.sz = phi i32 [ %i.ss, %.loopexit109.loopexit.i.i ], [ 0, %.preheader108.i.i ], [ %i.lh, %.lr.ph123.i.i ]
  %indvars.iv.next169.i.i = add nuw nsw i64 %indvars.iv168.i.i, 1 ; 2 uses
  %i.ta = zext i32 %i.sv to i64
  %i.tb = icmp samesign ult i64 %indvars.iv.next169.i.i, %i.ta
  br i1 %i.tb, label %.lr.ph123.i.i, label %.preheader107.i.i

.preheader106.i.i:                                ; preds = %.preheader107.i.i, %._crit_edge.i.i
  %.pre202226.i.i = phi ptr [ %.pre202227.i.i, %._crit_edge.i.i ], [ %.pre199223.i.i, %.preheader107.i.i ] ; 2 uses
  %.pre204228.i.i = phi ptr [ %.pre204229.i.i, %._crit_edge.i.i ], [ %.pre199223.i.i, %.preheader107.i.i ] ; 2 uses
  %8 = phi i32 [ %10, %._crit_edge.i.i ], [ %i.sv, %.preheader107.i.i ] ; 2 uses
  %9 = phi i32 [ %.fr153.i.i, %._crit_edge.i.i ], [ %i.sw, %.preheader107.i.i ] ; 2 uses
  %i.tc = phi i32 [ %i.up, %._crit_edge.i.i ], [ %i.sw, %.preheader107.i.i ] ; 2 uses
  %i.td = phi i32 [ %i.uq, %._crit_edge.i.i ], [ 1, %.preheader107.i.i ]
  %.065129.i.i = phi i32 [ %i.ur, %._crit_edge.i.i ], [ 0, %.preheader107.i.i ]
  %.not151.i.i = icmp eq i32 %i.td, 0
  br i1 %.not151.i.i, label %._crit_edge.i.i, label %.lr.ph128.i.i

.preheader103.i.i:                                ; preds = %._crit_edge.i.i
  %.not152.i.i = icmp eq i32 %10, 0
  br i1 %.not152.i.i, label %_dbscan.exit.i, label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.preheader103.i.i
  %.not154.i.i = icmp eq i32 %.fr153.i.i, 0
  %i.te = load ptr, ptr @db.0, align 8            ; 6 uses
  br i1 %.not154.i.i, label %.lr.ph140.i..lr.ph142.i_crit_edge.i, label %.lr.ph140.split.us.preheader.i.i

.lr.ph140.i..lr.ph142.i_crit_edge.i:              ; preds = %.lr.ph140.i.i
  %.pre.i = zext i32 %10 to i64
  br label %.lr.ph142.i.i

.lr.ph140.split.us.preheader.i.i:                 ; preds = %.lr.ph140.i.i
  %db.7.promoted132.i.i = load i32, ptr @db.7, align 8
  %wide.trip.count184.i.i = zext i32 %10 to i64   ; 2 uses
  %wide.trip.count.i.i = zext i32 %.fr153.i.i to i64
  br label %.lr.ph140.split.us.i.i

.lr.ph140.split.us.i.i:                           ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph140.split.us.preheader.i.i
  %indvars.iv181.i.i = phi i64 [ 0, %.lr.ph140.split.us.preheader.i.i ], [ %indvars.iv.next182.i.i, %..loopexit_crit_edge.us.i.i ] ; 2 uses
  %db.7.promoted137138.us.i.i = phi i32 [ %db.7.promoted132.i.i, %.lr.ph140.split.us.preheader.i.i ], [ %db.7.promoted136.us.i.i, %..loopexit_crit_edge.us.i.i ] ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.pre202227.i.i, i64 %indvars.iv181.i.i
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !264 ; 2 uses
  %.not72.us.i.i = icmp eq ptr %i.tg, null
  br i1 %.not72.us.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader102.us.i.i

.preheader102.us.i.i:                             ; preds = %.lr.ph140.split.us.i.i, %_add_expand_cluster.exit.us.i.i
  %indvars.iv177.i.i = phi i64 [ %indvars.iv.next178.i.i, %_add_expand_cluster.exit.us.i.i ], [ 0, %.lr.ph140.split.us.i.i ] ; 2 uses
  %db.7.promoted135.us.i.i = phi i32 [ %db.7.promoted134.us.i.i, %_add_expand_cluster.exit.us.i.i ], [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ] ; 4 uses
  %i.th = phi i32 [ %i.uo, %_add_expand_cluster.exit.us.i.i ], [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ] ; 6 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv177.i.i ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !271 ; 2 uses
  %i.tl = icmp ugt i32 %i.tk, 1
  br i1 %i.tl, label %bb.ba, label %_identical_positions.exit.thread.us.i.i

bb.ba:                                            ; preds = %.preheader102.us.i.i
  %i.tm = load i32, ptr %i.ti, align 4, !tbaa !266 ; 3 uses
  %i.tn = zext i32 %i.tm to i64                   ; 2 uses
  %i.to = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %i.tn ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 28
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !170
  %i.tr = icmp eq i32 %i.tq, -1
  br i1 %i.tr, label %bb.bb, label %_add_expand_cluster.exit.us.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ts = load double, ptr %i.to, align 8, !tbaa !247
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !248
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.tv = phi i64 [ %i.tn, %bb.bb ], [ %i.tx, %bb.be ]
  %i.tw = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %i.tv
  %.0.in.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %.0.i83.us.i.i = load i32, ptr %.0.in.i.us.i.i, align 8, !tbaa !255 ; 2 uses
  %.not.i84.us.i.i = icmp eq i32 %.0.i83.us.i.i, -1
  br i1 %.not.i84.us.i.i, label %_identical_positions.exit.us.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.tx = zext i32 %.0.i83.us.i.i to i64          ; 2 uses
  %i.ty = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %i.tx ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !247
  %i.ua = fcmp reassoc nsz arcp contract afn une double %i.tz, %i.ts
  br i1 %i.ua, label %_identical_positions.exit.thread.us.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !248
  %i.ud = fcmp reassoc nsz arcp contract afn une double %i.uc, %i.tu
  br i1 %i.ud, label %_identical_positions.exit.thread.us.i.i, label %bb.bc

_identical_positions.exit.thread.us.i.i:          ; preds = %bb.be, %bb.bd, %.preheader102.us.i.i
  %.not74.us.i.i = icmp eq i32 %i.tk, 0
  br i1 %.not74.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %_identical_positions.exit.thread.us.i.i
  %.pre207.i.i = load i32, ptr %i.ti, align 4, !tbaa !266 ; 3 uses
  %.phi.trans.insert.i.i = zext i32 %.pre207.i.i to i64
  %.phi.trans.insert208.i.i = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert209.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert208.i.i, i64 28
  %.pre210.i.i = load i32, ptr %.phi.trans.insert209.i.i, align 4, !tbaa !170
  %i.ue = icmp ne i32 %.pre210.i.i, -1
  %.not93.i90.us.i.i = icmp eq i32 %.pre207.i.i, -1
  %or.cond.us.i.i = or i1 %.not93.i90.us.i.i, %i.ue
  br i1 %or.cond.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i91.us.i.i

.lr.ph.i91.us.i.i:                                ; preds = %.thread.us.i.i, %.lr.ph.i91.us.i.i
  %.05494.i92.us.i.i = phi i32 [ %.054.i93.us.i.i, %.lr.ph.i91.us.i.i ], [ %.pre207.i.i, %.thread.us.i.i ]
  %i.uf = zext i32 %.05494.i92.us.i.i to i64
  %i.ug = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %i.uf ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 28
  store i32 -2, ptr %i.uh, align 4, !tbaa !170
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 24
  %.054.i93.us.i.i = load i32, ptr %i.ui, align 4, !tbaa !135 ; 2 uses
  %.not.i94.us.i.i = icmp eq i32 %.054.i93.us.i.i, -1
  br i1 %.not.i94.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i91.us.i.i

_identical_positions.exit.us.i.i:                 ; preds = %bb.bc
  %i.uj = add i32 %i.th, 1                        ; 5 uses
  store i32 %i.uj, ptr @db.7, align 8, !tbaa !254
  %.not93.i.us.i.i = icmp eq i32 %i.tm, -1
  br i1 %.not93.i.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i86.us.i.i

.lr.ph.i86.us.i.i:                                ; preds = %_identical_positions.exit.us.i.i, %.lr.ph.i86.us.i.i
  %.05494.i.us.i.i = phi i32 [ %.054.i.us.i.i, %.lr.ph.i86.us.i.i ], [ %i.tm, %_identical_positions.exit.us.i.i ]
  %i.uk = zext i32 %.05494.i.us.i.i to i64
  %i.ul = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %i.uk ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 28
  store i32 %i.th, ptr %i.um, align 4, !tbaa !170
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  %.054.i.us.i.i = load i32, ptr %i.un, align 4, !tbaa !135 ; 2 uses
  %.not.i87.us.i.i = icmp eq i32 %.054.i.us.i.i, -1
  br i1 %.not.i87.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i86.us.i.i

_add_expand_cluster.exit.us.i.i:                  ; preds = %.lr.ph.i91.us.i.i, %.lr.ph.i86.us.i.i, %_identical_positions.exit.us.i.i, %.thread.us.i.i, %_identical_positions.exit.thread.us.i.i, %bb.ba
  %db.7.promoted134.us.i.i = phi i32 [ %i.uj, %.lr.ph.i86.us.i.i ], [ %db.7.promoted135.us.i.i, %_identical_positions.exit.thread.us.i.i ], [ %i.uj, %_identical_positions.exit.us.i.i ], [ %db.7.promoted135.us.i.i, %.thread.us.i.i ], [ %db.7.promoted135.us.i.i, %bb.ba ], [ %db.7.promoted135.us.i.i, %.lr.ph.i91.us.i.i ] ; 2 uses
  %i.uo = phi i32 [ %i.uj, %.lr.ph.i86.us.i.i ], [ %i.th, %_identical_positions.exit.thread.us.i.i ], [ %i.uj, %_identical_positions.exit.us.i.i ], [ %i.th, %.thread.us.i.i ], [ %i.th, %bb.ba ], [ %i.th, %.lr.ph.i91.us.i.i ]
  %indvars.iv.next178.i.i = add nuw nsw i64 %indvars.iv177.i.i, 1 ; 2 uses
  %exitcond180.not.i.i = icmp eq i64 %indvars.iv.next178.i.i, %wide.trip.count.i.i
  br i1 %exitcond180.not.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader102.us.i.i

..loopexit_crit_edge.us.i.i:                      ; preds = %_add_expand_cluster.exit.us.i.i, %.lr.ph140.split.us.i.i
  %db.7.promoted136.us.i.i = phi i32 [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ], [ %db.7.promoted134.us.i.i, %_add_expand_cluster.exit.us.i.i ]
  %indvars.iv.next182.i.i = add nuw nsw i64 %indvars.iv181.i.i, 1 ; 2 uses
  %exitcond185.not.i.i = icmp eq i64 %indvars.iv.next182.i.i, %wide.trip.count184.i.i
  br i1 %exitcond185.not.i.i, label %.lr.ph142.i.i, label %.lr.ph140.split.us.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit105.i.i, %.preheader106.i.i
  %.pre202227.i.i = phi ptr [ %.pre202226.i.i, %.preheader106.i.i ], [ %.pre204231.i.i, %.loopexit105.i.i ] ; 5 uses
  %.pre204229.i.i = phi ptr [ %.pre204228.i.i, %.preheader106.i.i ], [ %i.vt, %.loopexit105.i.i ]
  %10 = phi i32 [ %8, %.preheader106.i.i ], [ %i.vu, %.loopexit105.i.i ] ; 4 uses
  %11 = phi i32 [ %9, %.preheader106.i.i ], [ %i.vv, %.loopexit105.i.i ]
  %i.up = phi i32 [ %i.tc, %.preheader106.i.i ], [ %i.vw, %.loopexit105.i.i ]
  %i.uq = phi i32 [ 0, %.preheader106.i.i ], [ %i.vu, %.loopexit105.i.i ]
  %.fr153.i.i = freeze i32 %11                    ; 3 uses
  %i.ur = add nuw nsw i32 %.065129.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ur, 20
  br i1 %exitcond.not.i.i, label %.preheader103.i.i, label %.preheader106.i.i, !llvm.loop !274

.lr.ph128.i.i:                                    ; preds = %.preheader106.i.i, %.loopexit105.i.i
  %.pre204.i.i.a = phi ptr [ %.pre204231.i.i, %.loopexit105.i.i ], [ %.pre202226.i.i, %.preheader106.i.i ] ; 3 uses
  %i.us = phi ptr [ %i.vt, %.loopexit105.i.i ], [ %.pre204228.i.i, %.preheader106.i.i ] ; 2 uses
  %i.ut = phi i32 [ %i.vu, %.loopexit105.i.i ], [ %8, %.preheader106.i.i ]
  %i.uu = phi i32 [ %i.vv, %.loopexit105.i.i ], [ %9, %.preheader106.i.i ] ; 2 uses
  %i.uv = phi i32 [ %i.vw, %.loopexit105.i.i ], [ %i.tc, %.preheader106.i.i ] ; 2 uses
  %indvars.iv174.i.i = phi i64 [ %indvars.iv.next175.i.i, %.loopexit105.i.i ], [ 0, %.preheader106.i.i ] ; 4 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv174.i.i
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !264
  %.not75.i.i = icmp ne ptr %i.ux, null
  %i.uy = icmp ne i32 %i.uv, 0
  %or.cond146.i.i = select i1 %.not75.i.i, i1 %i.uy, i1 false
  br i1 %or.cond146.i.i, label %.lr.ph125.preheader.i.i, label %.loopexit105.i.i

.lr.ph125.preheader.i.i:                          ; preds = %.lr.ph128.i.i
  %i.uz = trunc nuw i64 %indvars.iv174.i.i to i32
  br label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %bb.bh, %.lr.ph125.preheader.i.i
  %.pre204232.i.i = phi ptr [ %.pre204.i.i.a, %.lr.ph125.preheader.i.i ], [ %.pre204233.i.i, %bb.bh ] ; 2 uses
  %i.va = phi i32 [ %i.uu, %.lr.ph125.preheader.i.i ], [ %i.vp, %bb.bh ] ; 2 uses
  %i.vb = phi ptr [ %.pre204.i.i.a, %.lr.ph125.preheader.i.i ], [ %i.vq, %bb.bh ] ; 3 uses
  %indvars.iv171.i.i = phi i64 [ 0, %.lr.ph125.preheader.i.i ], [ %indvars.iv.next172.i.i, %bb.bh ] ; 3 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv174.i.i
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !264
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv171.i.i ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !271
  %.not76.i.i = icmp eq i32 %i.vg, 0
  br i1 %.not76.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph125.i.i
  %i.vh = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.vi = load i32, ptr %i.ve, align 4, !tbaa !266
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [40 x i8], ptr %i.vh, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 28
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !170 ; 2 uses
  %i.vn = icmp sgt i32 %i.vm, -1
  br i1 %i.vn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.vo = trunc nuw i64 %indvars.iv171.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.uz, i32 noundef %i.vo, i32 noundef %i.vm, i32 noundef -1)
  %.pre203.i.i.a = load ptr, ptr @db.1, align 8, !tbaa !261 ; 2 uses
  %.pre205.i.i = load i32, ptr @db.4, align 8, !tbaa !262
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph125.i.i
  %.pre204233.i.i = phi ptr [ %.pre203.i.i.a, %bb.bg ], [ %.pre204232.i.i, %bb.bf ], [ %.pre204232.i.i, %.lr.ph125.i.i ] ; 2 uses
  %i.vp = phi i32 [ %.pre205.i.i, %bb.bg ], [ %i.va, %bb.bf ], [ %i.va, %.lr.ph125.i.i ] ; 4 uses
  %i.vq = phi ptr [ %.pre203.i.i.a, %bb.bg ], [ %i.vb, %bb.bf ], [ %i.vb, %.lr.ph125.i.i ] ; 2 uses
  %indvars.iv.next172.i.i = add nuw nsw i64 %indvars.iv171.i.i, 1 ; 2 uses
  %i.vr = zext i32 %i.vp to i64
  %i.vs = icmp samesign ult i64 %indvars.iv.next172.i.i, %i.vr
  br i1 %i.vs, label %.lr.ph125.i.i, label %.loopexit105.loopexit.i.i

.loopexit105.loopexit.i.i:                        ; preds = %bb.bh
  %.pre206.i.i = load i32, ptr @db.3, align 4, !tbaa !263
  br label %.loopexit105.i.i

.loopexit105.i.i:                                 ; preds = %.loopexit105.loopexit.i.i, %.lr.ph128.i.i
  %.pre204231.i.i = phi ptr [ %.pre204233.i.i, %.loopexit105.loopexit.i.i ], [ %.pre204.i.i.a, %.lr.ph128.i.i ] ; 2 uses
  %i.vt = phi ptr [ %i.vq, %.loopexit105.loopexit.i.i ], [ %i.us, %.lr.ph128.i.i ] ; 2 uses
  %i.vu = phi i32 [ %.pre206.i.i, %.loopexit105.loopexit.i.i ], [ %i.ut, %.lr.ph128.i.i ] ; 4 uses
  %i.vv = phi i32 [ %i.vp, %.loopexit105.loopexit.i.i ], [ %i.uu, %.lr.ph128.i.i ] ; 2 uses
  %i.vw = phi i32 [ %i.vp, %.loopexit105.loopexit.i.i ], [ %i.uv, %.lr.ph128.i.i ] ; 2 uses
  %indvars.iv.next175.i.i = add nuw nsw i64 %indvars.iv174.i.i, 1 ; 2 uses
  %i.vx = zext i32 %i.vu to i64
  %i.vy = icmp samesign ult i64 %indvars.iv.next175.i.i, %i.vx
  br i1 %i.vy, label %.lr.ph128.i.i, label %._crit_edge.i.i

.lr.ph142.i.i:                                    ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph140.i..lr.ph142.i_crit_edge.i
  %wide.trip.count189.i.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph140.i..lr.ph142.i_crit_edge.i ], [ %wide.trip.count184.i.i, %..loopexit_crit_edge.us.i.i ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %.lr.ph142.i.i
  %indvars.iv186.i.i = phi i64 [ 0, %.lr.ph142.i.i ], [ %indvars.iv.next187.i.i, %bb.bk ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %.pre202227.i.i, i64 %indvars.iv186.i.i
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !264 ; 2 uses
  %.not.i214.i = icmp eq ptr %i.wa, null
  br i1 %.not.i214.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.wa) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next187.i.i = add nuw nsw i64 %indvars.iv186.i.i, 1 ; 2 uses
  %exitcond190.not.i.i = icmp eq i64 %indvars.iv.next187.i.i, %wide.trip.count189.i.pre-phi.i
  br i1 %exitcond190.not.i.i, label %_dbscan.exit.i, label %bb.bi

_dbscan.exit.i:                                   ; preds = %bb.bk, %.preheader103.i.i, %.preheader107.i.i, %.preheader110.i.i, %_bin_points.exit.i.i
  %.pre211280287.i.i = phi ptr [ %i.hj, %_bin_points.exit.i.i ], [ %.pre192213.i.i, %.preheader110.i.i ], [ %.pre202227.i.i, %.preheader103.i.i ], [ %.pre199223.i.i, %.preheader107.i.i ], [ %.pre202227.i.i, %bb.bk ]
  call void @free(ptr noundef %.pre211280287.i.i) #23
  store ptr null, ptr @db.1, align 8, !tbaa !261
  %i.wb = load i32, ptr @db.7, align 8, !tbaa !254
  call void @dt_show_times(ptr noundef nonnull %7, ptr noundef nonnull @.str.60) #23
  %i.wc = add nsw i32 %i.wb, 1
  %i.wd = sext i32 %i.wc to i64
  %i.we = call noalias ptr @calloc(i64 noundef %i.wd, i64 noundef 4) #24 ; 2 uses
  %i.wf = call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 0, i32 noundef 0) #23 ; 5 uses
  %.not203.i = icmp eq ptr %i.wf, null            ; 2 uses
  %xtraiter = and i64 %i.dh, 1
  %i.wg = icmp eq i32 %.0173.i, 1
  %unroll_iter = and i64 %i.dh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod219 = trunc i32 %.0173.i to i1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.cj, %_dbscan.exit.i
  %indvars.iv276.i = phi i64 [ 0, %_dbscan.exit.i ], [ %indvars.iv.next277.i, %bb.cj ] ; 2 uses
  %i.wh = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv276.i ; 8 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 28
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !170 ; 7 uses
  %i.wk = icmp eq i32 %i.wj, -2
  br i1 %i.wk, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.wl = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #24 ; 9 uses
  %.not207.i = icmp eq ptr %i.wl, null
  br i1 %.not207.i, label %bb.cj, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !173 ; 2 uses
  store i32 %i.wn, ptr %i.wl, align 8, !tbaa !166
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 24
  store i32 -2, ptr %i.wo, align 8, !tbaa !172
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 28
  store i32 1, ptr %i.wp, align 4, !tbaa !167
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wr = load <2 x double>, ptr %i.wh, align 8, !tbaa !142
  %i.ws = fmul reassoc nsz arcp contract afn <2 x double> %i.wr, splat (double f0x404CA5DC1A63C1F8)
  %i.wt = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wt, ptr %i.wq, align 8, !tbaa !142
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wl, i64 32
  store i32 1, ptr %i.wu, align 8, !tbaa !276
  br i1 %.not203.i, label %.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wv = sext i32 %i.wn to i64
  %i.ww = inttoptr i64 %i.wv to ptr
  %i.wx = call ptr @g_list_find(ptr noundef nonnull %i.wf, ptr noundef %i.ww) #23
  %.not209.i = icmp ne ptr %i.wx, null
  %i.wy = zext i1 %.not209.i to i32
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wl, i64 36
  store i32 %i.wy, ptr %i.wz, align 4, !tbaa !277
  br label %.sink.split.i

bb.bp:                                            ; preds = %bb.bl
  %i.xa = sext i32 %i.wj to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.xa ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !135
  %.not201.i = icmp eq i32 %i.xc, 0
  br i1 %.not201.i, label %bb.bq, label %bb.cj

bb.bq:                                            ; preds = %bb.bp
  store i32 1, ptr %i.xb, align 4, !tbaa !135
  %i.xd = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #24 ; 12 uses
  %.not202.i = icmp eq ptr %i.xd, null
  br i1 %.not202.i, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !173 ; 2 uses
  store i32 %i.xf, ptr %i.xd, align 8, !tbaa !166
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  store i32 %i.wj, ptr %i.xg, align 8, !tbaa !172
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 32 ; 6 uses
  store i32 1, ptr %i.xh, align 8, !tbaa !276
  br i1 %.not203.i, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.br
  %i.xi = sext i32 %i.xf to i64
  %i.xj = inttoptr i64 %i.xi to ptr
  %i.xk = call ptr @g_list_find(ptr noundef nonnull %i.wf, ptr noundef %i.xj) #23
  %i.xl = icmp ne ptr %i.xk, null
  %i.xm = zext i1 %i.xl to i32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xd, i64 36 ; 3 uses
  store i32 %i.xm, ptr %i.xn, align 4, !tbaa !277
  %i.xo = load double, ptr %i.wh, align 8, !tbaa !247
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !248
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xd, i64 28 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 4 uses
  br label %.split.i

.split.us.preheader.i:                            ; preds = %bb.br
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xd, i64 36
  store i32 0, ptr %i.xt, align 4, !tbaa !277
  %i.xu = load double, ptr %i.wh, align 8, !tbaa !247 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !248 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xd, i64 28 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 8 uses
  br i1 %i.wg, label %.split.us.i.epil.preheader, label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.preheader.i, %bb.by
  %i.xz = phi i32 [ %i.ze, %bb.by ], [ 1, %.split.us.preheader.i ] ; 2 uses
  %i.ya = phi i32 [ %i.zf, %bb.by ], [ 0, %.split.us.preheader.i ] ; 2 uses
  %indvars.iv269.i = phi i64 [ %indvars.iv.next270.i.1, %bb.by ], [ 0, %.split.us.preheader.i ] ; 3 uses
  %i.yb = phi <2 x double> [ %i.zg, %bb.by ], [ zeroinitializer, %.split.us.preheader.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.by ], [ 0, %.split.us.preheader.i ]
  %i.yc = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv269.i ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 28
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !170
  %i.yf = icmp eq i32 %i.ye, %i.wj
  br i1 %i.yf, label %bb.bs, label %.split.us.i.1

bb.bs:                                            ; preds = %.split.us.i
  %i.yg = add nsw i32 %i.ya, 1                    ; 4 uses
  store i32 %i.yg, ptr %i.xx, align 4, !tbaa !167
  %i.yh = load <2 x double>, ptr %i.yc, align 8, !tbaa !142 ; 3 uses
  %i.yi = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.yj = fadd reassoc nsz arcp contract afn <2 x double> %i.yb, %i.yi ; 4 uses
  store <2 x double> %i.yj, ptr %i.xy, align 8, !tbaa !142
  %.not204.us.i = icmp eq i32 %i.xz, 0
  br i1 %.not204.us.i, label %.split.us.i.1, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yk = extractelement <2 x double> %i.yh, i64 0
  %i.yl = fcmp reassoc nsz arcp contract afn une double %i.yk, %i.xu
  %i.ym = extractelement <2 x double> %i.yh, i64 1
  %i.yn = fcmp reassoc nsz arcp contract afn une double %i.ym, %i.xw
  %or.cond.us.i = select i1 %i.yl, i1 true, i1 %i.yn
  br i1 %or.cond.us.i, label %bb.bu, label %.split.us.i.1

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.xh, align 8, !tbaa !276
  br label %.split.us.i.1

.split.us.i.1:                                    ; preds = %bb.bu, %bb.bt, %bb.bs, %.split.us.i
  %i.yo = phi i32 [ 0, %bb.bu ], [ 1, %bb.bt ], [ 0, %bb.bs ], [ %i.xz, %.split.us.i ] ; 2 uses
  %i.yp = phi i32 [ %i.yg, %bb.bu ], [ %i.yg, %bb.bt ], [ %i.yg, %bb.bs ], [ %i.ya, %.split.us.i ] ; 2 uses
  %i.yq = phi <2 x double> [ %i.yj, %bb.bu ], [ %i.yj, %bb.bt ], [ %i.yj, %bb.bs ], [ %i.yb, %.split.us.i ] ; 2 uses
  %i.yr = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv269.i ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 68
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !170
  %i.yu = icmp eq i32 %i.yt, %i.wj
  br i1 %i.yu, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.split.us.i.1
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 40
  %i.yw = add nsw i32 %i.yp, 1                    ; 4 uses
  store i32 %i.yw, ptr %i.xx, align 4, !tbaa !167
  %i.yx = load <2 x double>, ptr %i.yv, align 8, !tbaa !142 ; 3 uses
  %i.yy = shufflevector <2 x double> %i.yx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.yz = fadd reassoc nsz arcp contract afn <2 x double> %i.yq, %i.yy ; 4 uses
  store <2 x double> %i.yz, ptr %i.xy, align 8, !tbaa !142
  %.not204.us.i.1 = icmp eq i32 %i.yo, 0
  br i1 %.not204.us.i.1, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.za = extractelement <2 x double> %i.yx, i64 0
  %i.zb = fcmp reassoc nsz arcp contract afn une double %i.za, %i.xu
  %i.zc = extractelement <2 x double> %i.yx, i64 1
  %i.zd = fcmp reassoc nsz arcp contract afn une double %i.zc, %i.xw
  %or.cond.us.i.1 = select i1 %i.zb, i1 true, i1 %i.zd
  br i1 %or.cond.us.i.1, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.xh, align 8, !tbaa !276
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %.split.us.i.1
  %i.ze = phi i32 [ 0, %bb.bx ], [ 1, %bb.bw ], [ 0, %bb.bv ], [ %i.yo, %.split.us.i.1 ] ; 2 uses
  %i.zf = phi i32 [ %i.yw, %bb.bx ], [ %i.yw, %bb.bw ], [ %i.yw, %bb.bv ], [ %i.yp, %.split.us.i.1 ] ; 3 uses
  %i.zg = phi <2 x double> [ %i.yz, %bb.bx ], [ %i.yz, %bb.bw ], [ %i.yz, %bb.bv ], [ %i.yq, %.split.us.i.1 ] ; 3 uses
  %indvars.iv.next270.i.1 = add nuw nsw i64 %indvars.iv269.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split244.us.i.loopexit.unr-lcssa, label %.split.us.i

.split244.us.i.loopexit27:                        ; preds = %bb.ci
  %.pre47 = load i32, ptr %i.xr, align 4, !tbaa !167
  %i.zh = load <2 x double>, ptr %i.xs, align 8, !tbaa !142
  br label %.split244.us.i

.split244.us.i.loopexit.unr-lcssa:                ; preds = %bb.by
  br i1 %lcmp.mod.not, label %.split244.us.i, label %.split.us.i.epil.preheader

.split.us.i.epil.preheader:                       ; preds = %.split244.us.i.loopexit.unr-lcssa, %.split.us.preheader.i
  %.epil.init = phi i32 [ 1, %.split.us.preheader.i ], [ %i.ze, %.split244.us.i.loopexit.unr-lcssa ]
  %.epil.init214 = phi i32 [ 0, %.split.us.preheader.i ], [ %i.zf, %.split244.us.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv269.i.epil.init = phi i64 [ 0, %.split.us.preheader.i ], [ %indvars.iv.next270.i.1, %.split244.us.i.loopexit.unr-lcssa ]
  %.epil.init216 = phi <2 x double> [ zeroinitializer, %.split.us.preheader.i ], [ %i.zg, %.split244.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod219)
  %i.zi = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv269.i.epil.init ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 28
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !170
  %i.zl = icmp eq i32 %i.zk, %i.wj
  br i1 %i.zl, label %bb.bz, label %.split244.us.i

end_hunk_1
