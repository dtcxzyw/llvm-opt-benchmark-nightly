Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asrc_sinc?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@config_output:bb.a
  %.sroa.speculated = select i1 %i.bb, ptr %i.af, ptr %i.y ; 2 uses
  %i.bk = sub nsw i32 %i.be, %i.bi
  %i.bl = sdiv i32 %i.bk, 2
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bi to i64   ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.speculated, i64 %i.bm ; 7 uses
  %min.iters.check198 = icmp ult i32 %i.bi, 12
  br i1 %min.iters.check198, label %scalar.ph197.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bn = shl nuw nsw i64 %wide.trip.count, 2
  %i.bo = add nsw i64 %i.bm, %wide.trip.count
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = getelementptr i8, ptr %.sroa.speculated, i64 %i.bp
  %i.br = getelementptr i8, ptr %.sroa.speculated128, i64 %i.bn
  %bound0 = icmp ult ptr %invariant.gep, %i.br
  %bound1 = icmp ult ptr %.sroa.speculated128, %i.bq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph197.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck
  %n.vec200 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body201 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated128, i64 %index202 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load203 = load <4 x float>, ptr %i.bs, align 4, !tbaa !33, !alias.scope !88
  %wide.load204 = load <4 x float>, ptr %i.bt, align 4, !tbaa !33, !alias.scope !88
  %i.bu = getelementptr [4 x i8], ptr %invariant.gep, i64 %index202 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 16     ; 2 uses
  %wide.load205 = load <4 x float>, ptr %i.bu, align 4, !tbaa !33, !alias.scope !89, !noalias !88
  %wide.load206 = load <4 x float>, ptr %i.bv, align 4, !tbaa !33, !alias.scope !89, !noalias !88
  %i.bw = fadd nsz <4 x float> %wide.load203, %wide.load205
  %i.bx = fadd nsz <4 x float> %wide.load204, %wide.load206
  store <4 x float> %i.bw, ptr %i.bu, align 4, !tbaa !33, !alias.scope !89, !noalias !88
  store <4 x float> %i.bx, ptr %i.bv, align 4, !tbaa !33, !alias.scope !89, !noalias !88
  %index.next207 = add nuw i64 %index202, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.by, label %middle.block208, label %vector.body201, !llvm.loop !50

middle.block208:                                  ; preds = %vector.body201
  %cmp.n209 = icmp eq i64 %n.vec200, %wide.trip.count
  br i1 %cmp.n209, label %._crit_edge, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block208
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec200, %middle.block208 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader, %scalar.ph197.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph197.prol ], [ %indvars.iv.ph, %scalar.ph197.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph197.prol ], [ 0, %scalar.ph197.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated128, i64 %indvars.iv.prol
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !33
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol ; 2 uses
  %i.cb = load float, ptr %gep.prol, align 4, !tbaa !33
  %i.cc = fadd nsz float %i.ca, %i.cb
  store float %i.cc, ptr %gep.prol, align 4, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol, !llvm.loop !51

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph197.preheader ], [ %indvars.iv.next.prol, %scalar.ph197.prol ]
  %i.cd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge, label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph197 ], [ %indvars.iv.unr, %scalar.ph197.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated128, i64 %indvars.iv
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !33
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ch = load float, ptr %gep, align 4, !tbaa !33
  %i.ci = fadd nsz float %i.cg, %i.ch
  store float %i.ci, ptr %gep, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated128, i64 %indvars.iv.next
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !33
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.cl = load float, ptr %gep.1, align 4, !tbaa !33
  %i.cm = fadd nsz float %i.ck, %i.cl
  store float %i.cm, ptr %gep.1, align 4, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated128, i64 %indvars.iv.next.1
  %i.co = load float, ptr %i.cn, align 4, !tbaa !33
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %i.cp = load float, ptr %gep.2, align 4, !tbaa !33
  %i.cq = fadd nsz float %i.co, %i.cp
  store float %i.cq, ptr %gep.2, align 4, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated128, i64 %indvars.iv.next.2
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !33
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %i.ct = load float, ptr %gep.3, align 4, !tbaa !33
  %i.cu = fadd nsz float %i.cs, %i.ct
  store float %i.cu, ptr %gep.3, align 4, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph197, !llvm.loop !52

._crit_edge:                                      ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197, %middle.block208, %.preheader162
  %i.cv = load float, ptr %i.k, align 4, !tbaa !80
  %i.cw = load float, ptr %i.n, align 8, !tbaa !81
  %i.cx = fcmp nsz olt float %i.cv, %i.cw
  br i1 %i.cx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %.sroa.speculated149 = select i1 %i.bb, ptr %i.af, ptr %i.y ; 3 uses
  %i.cy = icmp sgt i32 %i.be, 0
  br i1 %i.cy, label %.lr.ph.preheader.i82, label %invert.exit88

.lr.ph.preheader.i82:                             ; preds = %bb.f
  %wide.trip.count.i83 = zext nneg i32 %i.be to i64 ; 3 uses
  %min.iters.check212 = icmp ult i32 %i.be, 8
  br i1 %min.iters.check212, label %.lr.ph.i84.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.preheader.i82
  %n.vec214 = and i64 %wide.trip.count.i83, 2147483640 ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated149, i64 %index216 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load217 = load <4 x float>, ptr %i.cz, align 4, !tbaa !33
  %wide.load218 = load <4 x float>, ptr %i.da, align 4, !tbaa !33
  %i.db = fneg nsz <4 x float> %wide.load217
  %i.dc = fneg nsz <4 x float> %wide.load218
  store <4 x float> %i.db, ptr %i.cz, align 4, !tbaa !33
  store <4 x float> %i.dc, ptr %i.da, align 4, !tbaa !33
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.dd, label %middle.block220, label %vector.body215, !llvm.loop !53

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %n.vec214, %wide.trip.count.i83
  br i1 %cmp.n221, label %invert.exit88, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %.lr.ph.preheader.i82, %middle.block220
  %indvars.iv.i85.ph = phi i64 [ 0, %.lr.ph.preheader.i82 ], [ %n.vec214, %middle.block220 ]
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i86, %.lr.ph.i84 ], [ %indvars.iv.i85.ph, %.lr.ph.i84.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.speculated149, i64 %indvars.iv.i85 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !33
  %i.dg = fneg nsz float %i.df
  store float %i.dg, ptr %i.de, align 4, !tbaa !33
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %indvars.iv.next.i86, %wide.trip.count.i83
  br i1 %exitcond.not.i87, label %invert.exit88, label %.lr.ph.i84, !llvm.loop !54

invert.exit88:                                    ; preds = %.lr.ph.i84, %middle.block220, %bb.f
  %i.dh = add nsw i32 %i.be, -1
  %i.di = sdiv i32 %i.dh, 2
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.sroa.speculated149, i64 %i.dj ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !33
  %i.dm = fadd nsz float %i.dl, 1.000000e+00
  store float %i.dm, ptr %i.dk, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %invert.exit88, %._crit_edge
  %.sroa.speculated146 = select i1 %i.bb, ptr %i.y, ptr %i.af
  tail call void @av_free(ptr noundef nonnull %.sroa.speculated146) #8
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %.loopexit
  %i.dn = phi i32 [ %i.ak, %.thread ], [ %i.be, %bb.g ], [ %i.be, %.loopexit ] ; 8 uses
  %i.do = phi i1 [ %i.ah, %.thread ], [ %i.bb, %bb.g ], [ %i.bb, %.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !91 ; 4 uses
  %i.dr = fcmp nsz une float %i.dq, 5.000000e+01
  br i1 %i.dr, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !19  ; 4 uses
  %i.dt = fcmp nsz ogt float %i.dq, 5.000000e+01  ; 5 uses
  %i.du = fsub nsz float 1.000000e+02, %i.dq
  %i.dv = select nsz i1 %i.dt, float %i.du, float %i.dq
  %i.dw = fdiv nsz float %i.dv, 5.000000e+01      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !33
  %i.dx = icmp sgt i32 %i.dn, 1
  br i1 %i.dx, label %.lr.ph.i95, label %._crit_edge.i

.lr.ph.i95:                                       ; preds = %bb.i, %.lr.ph.i95
  %.0235260.i = phi i32 [ %i.dy, %.lr.ph.i95 ], [ 32, %bb.i ]
  %.0236259.i = phi i32 [ %i.dz, %.lr.ph.i95 ], [ %i.dn, %bb.i ] ; 2 uses
  %i.dy = shl i32 %.0235260.i, 1                  ; 2 uses
  %i.dz = lshr i32 %.0236259.i, 1
  %i.ea = icmp samesign ugt i32 %.0236259.i, 3
  br i1 %i.ea, label %.lr.ph.i95, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph.i95, %bb.i
  %.0235.lcssa.i = phi i32 [ 32, %bb.i ], [ %i.dy, %.lr.ph.i95 ] ; 19 uses
  %i.eb = or disjoint i32 %.0235.lcssa.i, 2       ; 2 uses
  %i.ec = ashr exact i32 %.0235.lcssa.i, 1        ; 6 uses
  %i.ed = add nuw nsw i32 %i.ec, 1
  %i.ee = add nsw i32 %i.ed, %i.eb
  %i.ef = sext i32 %i.ee to i64
  %i.eg = tail call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 4) #8 ; 37 uses
  %.not.i89 = icmp eq ptr %i.eg, null
  br i1 %.not.i89, label %fir_to_phase.exit.thread, label %bb.j

fir_to_phase.exit.thread:                         ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.t

bb.j:                                             ; preds = %._crit_edge.i
  %i.eh = sext i32 %i.eb to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eh ; 4 uses
  %.sroa.speculated137 = select i1 %i.do, ptr %i.af, ptr %i.y ; 2 uses
  %i.ej = sext i32 %i.dn to i64
  %i.ek = shl nsw i64 %i.ej, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %.sroa.speculated137, i64 %i.ek, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 80 ; 4 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.el) #8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ds, i64 88 ; 5 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.em) #8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 96 ; 3 uses
  %i.eo = call i32 @av_tx_init(ptr noundef nonnull %i.el, ptr noundef nonnull %i.en, i32 noundef 6, i32 noundef 0, i32 noundef %.0235.lcssa.i, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %fir_to_phase.exit.thread156, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 104 ; 4 uses
  %i.er = call i32 @av_tx_init(ptr noundef nonnull %i.em, ptr noundef nonnull %i.eq, i32 noundef 6, i32 noundef 1, i32 noundef %.0235.lcssa.i, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %fir_to_phase.exit.thread156, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !92
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !93
  call void %i.et(ptr noundef %i.eu, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 4) #8, !inline_history !56
  %.not247261.i = icmp slt i32 %.0235.lcssa.i, 0
  br i1 %.not247261.i, label %._crit_edge269.i, label %.lr.ph268.preheader.i

.lr.ph268.preheader.i:                            ; preds = %bb.l
  %i.ev = zext nneg i32 %.0235.lcssa.i to i64
  br label %.lr.ph268.i

.lr.ph268.i:                                      ; preds = %safe_log.exit.i, %.lr.ph268.preheader.i
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph268.preheader.i ], [ %indvars.iv.next.i91, %safe_log.exit.i ] ; 4 uses
  %.0223266.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fs, %safe_log.exit.i ]
  %.0224265.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fj, %safe_log.exit.i ]
  %.0225264.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fi, %safe_log.exit.i ]
  %.0226263.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fa, %safe_log.exit.i ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i90 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 3 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !33
  %i.ez = load float, ptr %i.ew, align 4, !tbaa !33
  %i.fa = call nsz float @llvm.atan2.f32(float %i.ey, float %i.ez) ; 3 uses
  %i.fb = fsub nsz float %i.fa, %.0226263.i       ; 2 uses
  %i.fc = fcmp nsz olt float %i.fb, f0xC08CBE4C
  %i.fd = zext i1 %i.fc to i32
  %i.fe = fcmp nsz ogt float %i.fb, f0x408CBE4C
  %.neg252.i = sext i1 %i.fe to i32
  %i.ff = add nsw i32 %.neg252.i, %i.fd
  %i.fg = sitofp nsz i32 %i.ff to float
  %i.fh = fmul nnan nsz float %i.fg, f0x40C90FDB
  %i.fi = fadd nsz float %.0225264.i, %i.fh       ; 2 uses
  %i.fj = fadd nsz float %i.fa, %i.fi             ; 2 uses
  %i.fk = fsub nsz float %i.fj, %.0224265.i       ; 2 uses
  %i.fl = fcmp nsz olt float %i.fk, f0xC00CBE4C
  %i.fm = zext i1 %i.fl to i32
  %i.fn = fcmp nsz ogt float %i.fk, f0x400CBE4C
  %.neg253.i = sext i1 %i.fn to i32
  %i.fo = add nsw i32 %.neg253.i, %i.fm
  %i.fp = sitofp nsz i32 %i.fo to float
  %i.fq = fmul nnan nsz float %i.fp, f0x40490FDB
  %i.fr = call nsz float @llvm.fabs.f32(float %i.fq)
  %i.fs = fadd nsz float %.0223266.i, %i.fr       ; 2 uses
  %i.ft = lshr exact i64 %indvars.iv.i90, 1
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ft
  store float %i.fs, ptr %i.fu, align 4, !tbaa !33
  %i.fv = load float, ptr %i.ew, align 4, !tbaa !33 ; 2 uses
  %i.fw = load float, ptr %i.ex, align 4, !tbaa !33 ; 2 uses
  %i.fx = fmul nsz float %i.fw, %i.fw
  %i.fy = call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fx) ; 3 uses
  %i.fz = fcmp nsz ult float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.m, label %safe_log.exit.i

bb.m:                                             ; preds = %.lr.ph268.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 198) #8
  call void @abort() #9
  unreachable

safe_log.exit.i:                                  ; preds = %.lr.ph268.i
  %i.ga = call nsz float @llvm.sqrt.f32(float %i.fy)
  %i.gb = fcmp nsz une float %i.fy, 0.000000e+00
  %i.gc = call nsz float @llvm.log.f32(float %i.ga)
  %.0.i.i = select nsz i1 %i.gb, float %i.gc, float -2.600000e+01
  store float %.0.i.i, ptr %i.ew, align 4, !tbaa !33
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !33
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 2
  %.not247.not.i = icmp samesign ult i64 %indvars.iv.i90, %i.ev
  br i1 %.not247.not.i, label %.lr.ph268.i, label %._crit_edge269.i, !llvm.loop !57

._crit_edge269.i:                                 ; preds = %safe_log.exit.i, %bb.l
  %i.gd = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.ge = load ptr, ptr %i.em, align 8, !tbaa !95
  call void %i.gd(ptr noundef %i.ge, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 8) #8, !inline_history !56
  %i.gf = icmp sgt i32 %.0235.lcssa.i, 0          ; 2 uses
  br i1 %i.gf, label %.lr.ph272.i, label %.preheader257.i

.lr.ph272.i:                                      ; preds = %._crit_edge269.i
  %i.gg = uitofp nneg i32 %.0235.lcssa.i to float
  %i.gh = fdiv nnan nsz float 2.000000e+00, %i.gg ; 2 uses
  %wide.trip.count.i93 = zext nneg i32 %.0235.lcssa.i to i64 ; 3 uses
  %min.iters.check224 = icmp ult i32 %.0235.lcssa.i, 8
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph272.i
  %n.vec226 = and i64 %wide.trip.count.i93, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index228 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %wide.load229 = load <4 x float>, ptr %i.gi, align 4, !tbaa !33
  %wide.load230 = load <4 x float>, ptr %i.gj, align 4, !tbaa !33
  %i.gk = fmul nsz <4 x float> %broadcast.splat, %wide.load229
  %i.gl = fmul nsz <4 x float> %broadcast.splat, %wide.load230
  store <4 x float> %i.gk, ptr %i.gi, align 4, !tbaa !33
  store <4 x float> %i.gl, ptr %i.gj, align 4, !tbaa !33
  %index.next231 = add nuw i64 %index228, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.gm, label %middle.block232, label %vector.body227, !llvm.loop !58

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %n.vec226, %wide.trip.count.i93
  br i1 %cmp.n233, label %.preheader257.i, label %scalar.ph223.preheader

scalar.ph223.preheader:                           ; preds = %.lr.ph272.i, %middle.block232
  %indvars.iv311.i.ph = phi i64 [ 0, %.lr.ph272.i ], [ %n.vec226, %middle.block232 ]
  br label %scalar.ph223

.preheader257.i:                                  ; preds = %scalar.ph223, %middle.block232, %._crit_edge269.i
  %i.gn = icmp sgt i32 %i.ec, 1
  br i1 %i.gn, label %.lr.ph274.preheader.i, label %._crit_edge275.i

.lr.ph274.preheader.i:                            ; preds = %.preheader257.i
  %i.go = zext nneg i32 %i.ec to i64              ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.go ; 2 uses
  %i.gp = add nsw i64 %i.go, -1                   ; 2 uses
  %min.iters.check236 = icmp ult i32 %i.ec, 9
  br i1 %min.iters.check236, label %.lr.ph274.i.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %.lr.ph274.preheader.i
  %n.vec238 = and i64 %i.gp, -8                   ; 3 uses
  %i.gq = or disjoint i64 %n.vec238, 1
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph237
  %index240 = phi i64 [ 0, %vector.ph237 ], [ %index.next243, %vector.body239 ] ; 2 uses
  %i.gr = or disjoint i64 %index240, 1            ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.gr ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %wide.load241 = load <4 x float>, ptr %i.gs, align 4, !tbaa !33
  %wide.load242 = load <4 x float>, ptr %i.gt, align 4, !tbaa !33
  %i.gu = fmul nsz <4 x float> %wide.load241, splat (float 2.000000e+00)
  %i.gv = fmul nsz <4 x float> %wide.load242, splat (float 2.000000e+00)
  store <4 x float> %i.gu, ptr %i.gs, align 4, !tbaa !33
  store <4 x float> %i.gv, ptr %i.gt, align 4, !tbaa !33
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.gr ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x float> zeroinitializer, ptr %i.gw, align 4, !tbaa !33
  store <4 x float> zeroinitializer, ptr %i.gx, align 4, !tbaa !33
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next243, %n.vec238
  br i1 %i.gy, label %middle.block244, label %vector.body239, !llvm.loop !59

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %i.gp, %n.vec238
  br i1 %cmp.n245, label %._crit_edge275.i, label %.lr.ph274.i.preheader

.lr.ph274.i.preheader:                            ; preds = %.lr.ph274.preheader.i, %middle.block244
  %indvars.iv314.i.ph = phi i64 [ 1, %.lr.ph274.preheader.i ], [ %i.gq, %middle.block244 ]
  br label %.lr.ph274.i

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv311.i = phi i64 [ %indvars.iv.next312.i, %scalar.ph223 ], [ %indvars.iv311.i.ph, %scalar.ph223.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv311.i ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !33
  %i.hb = fmul nsz float %i.gh, %i.ha
  store float %i.hb, ptr %i.gz, align 4, !tbaa !33
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next312.i, %wide.trip.count.i93
  br i1 %exitcond.not.i94, label %.preheader257.i, label %scalar.ph223, !llvm.loop !60

.lr.ph274.i:                                      ; preds = %.lr.ph274.i.preheader, %.lr.ph274.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph274.i ], [ %indvars.iv314.i.ph, %.lr.ph274.i.preheader ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv314.i ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !33
  %i.he = fmul nsz float %i.hd, 2.000000e+00
  store float %i.he, ptr %i.hc, align 4, !tbaa !33
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv314.i
  store float 0.000000e+00, ptr %gep.i, align 4, !tbaa !33
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %i.go
  br i1 %exitcond318.not.i, label %._crit_edge275.i, label %.lr.ph274.i, !llvm.loop !61

._crit_edge275.i:                                 ; preds = %.lr.ph274.i, %middle.block244, %.preheader257.i
  %i.hf = load ptr, ptr %i.en, align 8, !tbaa !92
  %i.hg = load ptr, ptr %i.el, align 8, !tbaa !93
  call void %i.hf(ptr noundef %i.hg, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 4) #8, !inline_history !56
  %i.hh = icmp sgt i32 %.0235.lcssa.i, 2          ; 2 uses
  br i1 %i.hh, label %.lr.ph278.i, label %._crit_edge283.i.critedge

.lr.ph278.i:                                      ; preds = %._crit_edge275.i
  %i.hi = uitofp nneg i32 %.0235.lcssa.i to float
  %i.hj = zext nneg i32 %i.ec to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.hj
  %i.hl = fsub nsz float 1.000000e+00, %i.dw
  %i.hm = zext nneg i32 %.0235.lcssa.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph278.i
  %indvars.iv319.i = phi i64 [ 2, %.lr.ph278.i ], [ %indvars.iv.next320.i, %bb.n ] ; 4 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv319.i to i32
  %i.ho = uitofp nsz nneg i32 %i.hn to float
  %i.hp = fmul nsz float %i.dw, %i.ho
  %i.hq = fdiv nsz float %i.hp, %i.hi
  %i.hr = load float, ptr %i.hk, align 4, !tbaa !33
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv319.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !33
  %i.hv = lshr exact i64 %indvars.iv319.i, 1
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !33 ; 2 uses
  %i.hy = fadd nsz float %i.hu, %i.hx
  %i.hz = fmul nsz float %i.hl, %i.hy
  %i.ia = call nsz float @llvm.fmuladd.f32(float %i.hq, float %i.hr, float %i.hz)
  %i.ib = fsub nsz float %i.ia, %i.hx
  store float %i.ib, ptr %i.ht, align 4, !tbaa !33
  %indvars.iv.next320.i = add nuw nsw i64 %indvars.iv319.i, 2 ; 2 uses
  %i.ic = icmp samesign ult i64 %indvars.iv.next320.i, %i.hm
  br i1 %i.ic, label %bb.n, label %._crit_edge279.i, !llvm.loop !62

._crit_edge279.i:                                 ; preds = %bb.n
  %i.id = load <2 x float>, ptr %i.eg, align 4, !tbaa !33
  %i.ie = fpext <2 x float> %i.id to <2 x double>
  %i.if = call nsz <2 x double> @llvm.exp.v2f64(<2 x double> %i.ie)
  %i.ig = fptrunc <2 x double> %i.if to <2 x float>
  store <2 x float> %i.ig, ptr %i.eg, align 4, !tbaa !33
  br i1 %i.hh, label %.lr.ph282.preheader.i, label %._crit_edge283.i

.lr.ph282.preheader.i:                            ; preds = %._crit_edge279.i
  %i.ih = zext nneg i32 %.0235.lcssa.i to i64     ; 3 uses
  %1 = add nsw i64 %i.ih, -4                      ; 2 uses
  %i.ii = lshr exact i64 %1, 1
  %i.ij = add nuw i64 %i.ii, 1                    ; 3 uses
  %min.iters.check248 = icmp eq i64 %1, 0
  br i1 %min.iters.check248, label %.lr.ph282.i.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph282.preheader.i
  %n.vec250 = and i64 %i.ij, -2                   ; 2 uses
  %i.ik = shl i64 %i.ij, 1
  %i.il = or i64 %i.ik, 2
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next254, %vector.body251 ] ; 2 uses
  %.idx = shl nuw i64 %index252, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.in, align 4, !tbaa !33 ; 2 uses
  %strided.vec253 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.io = call nsz <4 x float> @llvm.exp.v4f32(<4 x float> %wide.vec)
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.iq = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %strided.vec253) ; 2 uses
  %i.ir = extractvalue { <2 x float>, <2 x float> } %i.iq, 0
  %i.is = extractvalue { <2 x float>, <2 x float> } %i.iq, 1
  %i.it = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.iu = shufflevector <2 x float> %i.is, <2 x float> %i.ir, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fmul nsz <4 x float> %i.it, %i.iu
  store <4 x float> %interleaved.vec, ptr %i.in, align 4, !tbaa !33
  %index.next254 = add nuw i64 %index252, 2       ; 2 uses
  %i.iv = icmp eq i64 %index.next254, %n.vec250
  br i1 %i.iv, label %middle.block255, label %vector.body251, !llvm.loop !63

middle.block255:                                  ; preds = %vector.body251
  %cmp.n256 = icmp eq i64 %i.ij, %n.vec250
  br i1 %cmp.n256, label %._crit_edge283.thread.i, label %.lr.ph282.i.preheader

.lr.ph282.i.preheader:                            ; preds = %.lr.ph282.preheader.i, %middle.block255
  %indvars.iv322.i.ph = phi i64 [ 2, %.lr.ph282.preheader.i ], [ %i.il, %middle.block255 ]
  br label %.lr.ph282.i

.lr.ph282.i:                                      ; preds = %.lr.ph282.i.preheader, %.lr.ph282.i
  %indvars.iv322.i = phi i64 [ %indvars.iv.next323.i, %.lr.ph282.i ], [ %indvars.iv322.i.ph, %.lr.ph282.i.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv322.i ; 3 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !33
  %i.iy = call nsz float @llvm.exp.f32(float %i.ix) ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !33
  %sincos.i = call nsz { float, float } @llvm.sincos.f32(float %i.ja) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.jb = fmul nsz float %i.iy, %cos.i
  store float %i.jb, ptr %i.iw, align 4, !tbaa !33
  %i.jc = fmul nsz float %i.iy, %sin.i
  store float %i.jc, ptr %i.iz, align 4, !tbaa !33
  %indvars.iv.next323.i = add nuw nsw i64 %indvars.iv322.i, 2 ; 2 uses
  %i.jd = icmp samesign ult i64 %indvars.iv.next323.i, %i.ih
  br i1 %i.jd, label %.lr.ph282.i, label %._crit_edge283.thread.i, !llvm.loop !64

._crit_edge283.thread.i:                          ; preds = %.lr.ph282.i, %middle.block255
  %i.je = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.jf = load ptr, ptr %i.em, align 8, !tbaa !95
  call void %i.je(ptr noundef %i.jf, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 8) #8, !inline_history !56
  br label %.lr.ph286.i

._crit_edge283.i.critedge:                        ; preds = %._crit_edge275.i
  %i.jg = load <2 x float>, ptr %i.eg, align 4, !tbaa !33
  %i.jh = fpext <2 x float> %i.jg to <2 x double>
  %i.ji = call nsz <2 x double> @llvm.exp.v2f64(<2 x double> %i.jh)
  %i.jj = fptrunc <2 x double> %i.ji to <2 x float>
  store <2 x float> %i.jj, ptr %i.eg, align 4, !tbaa !33
  br label %._crit_edge283.i

._crit_edge283.i:                                 ; preds = %._crit_edge283.i.critedge, %._crit_edge279.i
  %i.jk = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.jl = load ptr, ptr %i.em, align 8, !tbaa !95
  call void %i.jk(ptr noundef %i.jl, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 8) #8, !inline_history !56
  br i1 %i.gf, label %._crit_edge283.i..lr.ph286.i_crit_edge, label %.preheader256.i

._crit_edge283.i..lr.ph286.i_crit_edge:           ; preds = %._crit_edge283.i
  %.pre175 = zext nneg i32 %.0235.lcssa.i to i64
  br label %.lr.ph286.i

.lr.ph286.i:                                      ; preds = %._crit_edge283.i..lr.ph286.i_crit_edge, %._crit_edge283.thread.i
  %wide.trip.count328.i.pre-phi = phi i64 [ %.pre175, %._crit_edge283.i..lr.ph286.i_crit_edge ], [ %i.ih, %._crit_edge283.thread.i ] ; 4 uses
  %i.jm = uitofp nneg i32 %.0235.lcssa.i to float
  %i.jn = fdiv nnan nsz float 2.000000e+00, %i.jm ; 2 uses
  %min.iters.check259 = icmp samesign ult i64 %wide.trip.count328.i.pre-phi, 8
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %.lr.ph286.i
  %n.vec261 = and i64 %wide.trip.count328.i.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert262 = insertelement <4 x float> poison, float %i.jn, i64 0
  %broadcast.splat263 = shufflevector <4 x float> %broadcast.splatinsert262, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph260
  %index265 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body264 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index265 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %wide.load266 = load <4 x float>, ptr %i.jo, align 4, !tbaa !33
  %wide.load267 = load <4 x float>, ptr %i.jp, align 4, !tbaa !33
  %i.jq = fmul nsz <4 x float> %broadcast.splat263, %wide.load266
  %i.jr = fmul nsz <4 x float> %broadcast.splat263, %wide.load267
  store <4 x float> %i.jq, ptr %i.jo, align 4, !tbaa !33
  store <4 x float> %i.jr, ptr %i.jp, align 4, !tbaa !33
  %index.next268 = add nuw i64 %index265, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.js, label %middle.block269, label %vector.body264, !llvm.loop !65

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %wide.trip.count328.i.pre-phi, %n.vec261
  br i1 %cmp.n270, label %.preheader256.i, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %.lr.ph286.i, %middle.block269
  %indvars.iv325.i.ph = phi i64 [ 0, %.lr.ph286.i ], [ %n.vec261, %middle.block269 ]
  br label %scalar.ph258

.preheader256.i:                                  ; preds = %scalar.ph258, %middle.block269, %._crit_edge283.i
  %i.jt = sext i32 %i.ec to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.jt ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !33
  %i.jw = fpext nsz float %i.jv to double
  %i.jx = fdiv nsz double %i.jw, f0x400921FB54442D18
  %i.jy = fadd nsz double %i.jx, 5.000000e-01
  %i.jz = fptosi double %i.jy to i32              ; 2 uses
  %.not248288.i = icmp slt i32 %i.jz, 0
  br i1 %.not248288.i, label %.critedge.i, label %.lr.ph294.preheader.i

.lr.ph294.preheader.i:                            ; preds = %.preheader256.i
  %i.ka = add nuw i32 %i.jz, 1
  %wide.trip.count333.i = zext i32 %i.ka to i64
  %.pre.i = load float, ptr %i.eg, align 4, !tbaa !33
  br label %.lr.ph294.i

scalar.ph258:                                     ; preds = %scalar.ph258.preheader, %scalar.ph258
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %scalar.ph258 ], [ %indvars.iv325.i.ph, %scalar.ph258.preheader ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv325.i ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !33
  %i.kd = fmul nsz float %i.jn, %i.kc
  store float %i.kd, ptr %i.kb, align 4, !tbaa !33
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %exitcond329.not.i = icmp eq i64 %indvars.iv.next326.i, %wide.trip.count328.i.pre-phi
  br i1 %exitcond329.not.i, label %.preheader256.i, label %scalar.ph258, !llvm.loop !66

.preheader.i:                                     ; preds = %.lr.ph294.i
  %i.ke = fpext nsz float %.1.i92 to double       ; 3 uses
  %.not249299.i = icmp eq i32 %.1231.i, 0
  br i1 %.not249299.i, label %.critedge.i, label %.lr.ph301.preheader.i

.lr.ph301.preheader.i:                            ; preds = %.preheader.i
  %i.kf = zext nneg i32 %.1231.i to i64
  br label %.lr.ph301.i

.lr.ph294.i:                                      ; preds = %.lr.ph294.i, %.lr.ph294.preheader.i
  %i.kg = phi float [ %.pre.i, %.lr.ph294.preheader.i ], [ %i.kp, %.lr.ph294.i ] ; 2 uses
  %indvars.iv330.i = phi i64 [ 0, %.lr.ph294.preheader.i ], [ %indvars.iv.next331.i, %.lr.ph294.i ] ; 3 uses
  %.0227293.i = phi float [ 0.000000e+00, %.lr.ph294.preheader.i ], [ %.1.i92, %.lr.ph294.i ] ; 2 uses
  %.0228292.i = phi float [ 0.000000e+00, %.lr.ph294.preheader.i ], [ %i.kj, %.lr.ph294.i ]
  %.0230291.i = phi i32 [ 0, %.lr.ph294.preheader.i ], [ %.1231.i, %.lr.ph294.i ]
  %.0232290.i = phi i32 [ 0, %.lr.ph294.preheader.i ], [ %.1233.i, %.lr.ph294.i ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv330.i
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !33 ; 3 uses
  %i.kj = fadd nsz float %.0228292.i, %i.ki       ; 3 uses
  %i.kk = call nsz float @llvm.fabs.f32(float %i.kj)
  %i.kl = call nsz float @llvm.fabs.f32(float %.0227293.i)
  %i.km = fcmp nsz ogt float %i.kk, %i.kl         ; 2 uses
  %i.kn = trunc nuw nsw i64 %indvars.iv330.i to i32 ; 2 uses
  %.1231.i = select i1 %i.km, i32 %i.kn, i32 %.0230291.i ; 3 uses
  %.1.i92 = select nsz i1 %i.km, float %i.kj, float %.0227293.i ; 2 uses
  %i.ko = fcmp nsz ogt float %i.ki, %i.kg         ; 2 uses
  %.1233.i = select i1 %i.ko, i32 %i.kn, i32 %.0232290.i ; 4 uses
  %indvars.iv.next331.i = add nuw nsw i64 %indvars.iv330.i, 1 ; 2 uses
  %exitcond334.not.i = icmp eq i64 %indvars.iv.next331.i, %wide.trip.count333.i
  %i.kp = select i1 %i.ko, float %i.ki, float %i.kg
  br i1 %exitcond334.not.i, label %.preheader.i, label %.lr.ph294.i, !llvm.loop !67

.lr.ph301.i:                                      ; preds = %bb.o, %.lr.ph301.preheader.i
  %indvars.iv335.i = phi i64 [ %i.kf, %.lr.ph301.preheader.i ], [ %indvars.iv.next336.i, %bb.o ] ; 3 uses
  %i.kq = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv335.i
  %i.kr = getelementptr i8, ptr %i.kq, i64 -4
  %i.ks = load <2 x float>, ptr %i.kr, align 4, !tbaa !33 ; 3 uses
  %i.kt = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ks) ; 2 uses
  %i.ku = extractelement <2 x float> %i.kt, i64 0
  %i.kv = extractelement <2 x float> %i.kt, i64 1
  %i.kw = fcmp nsz ogt float %i.ku, %i.kv
  %shift = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.ks, %shift
  %i.kx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ky = fcmp nsz ogt float %i.kx, 0.000000e+00
  %or.cond.i = select i1 %i.kw, i1 %i.ky, i1 false
  br i1 %or.cond.i, label %bb.o, label %.critedge.loopexit.split.loop.exit.i

bb.o:                                             ; preds = %.lr.ph301.i
  %indvars.iv.next336.i = add nsw i64 %indvars.iv335.i, -1 ; 2 uses
  %.not249.i = icmp eq i64 %indvars.iv.next336.i, 0
  br i1 %.not249.i, label %.critedge.i, label %.lr.ph301.i, !llvm.loop !68

.critedge.loopexit.split.loop.exit.i:             ; preds = %.lr.ph301.i
  %i.kz = trunc nuw nsw i64 %indvars.iv335.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %.critedge.loopexit.split.loop.exit.i, %.preheader.i, %.preheader256.i
  %.0227.lcssa358.i = phi double [ %i.ke, %.preheader.i ], [ 0.000000e+00, %.preheader256.i ], [ %i.ke, %.critedge.loopexit.split.loop.exit.i ], [ %i.ke, %bb.o ]
  %.0232.lcssa357.i = phi i32 [ %.1233.i, %.preheader.i ], [ 0, %.preheader256.i ], [ %.1233.i, %.critedge.loopexit.split.loop.exit.i ], [ %.1233.i, %bb.o ] ; 2 uses
  %.2.lcssa.i = phi i32 [ 0, %.preheader.i ], [ 0, %.preheader256.i ], [ %i.kz, %.critedge.loopexit.split.loop.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.la = fcmp nsz une float %i.dw, 0.000000e+00
  br i1 %i.la, label %bb.p, label %thread-pre-split.i

bb.p:                                             ; preds = %.critedge.i
  %i.lb = fcmp nsz oeq float %i.dw, 1.000000e+00
end_hunk_0
begin_hunk_1_@lpf:bb.a
  %i.bu = fptosi float %i.bt to i32
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 11)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 32767) ; 2 uses
  %.not28 = icmp eq i32 %6, 0
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = lshr i32 %i.bw, 1
  %i.by = uitofp nsz nneg i32 %i.bx to float
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.a, float 5.000000e-01)
  %i.ca = fptosi float %i.bz to i32
  %i.cb = sitofp nsz i32 %i.ca to float
  %i.cc = fdiv nsz float %i.cb, %i.a
  %i.cd = fadd nsz float %i.cc, 5.000000e-01
  %i.ce = fptosi float %i.cd to i32
  %i.cf = shl nsw i32 %i.ce, 1
  %i.cg = or disjoint i32 %i.cf, 1
  br label %bb.o

bb.o:                                             ; preds = %kaiser_params.exit, %bb.m, %bb.n
  %i.ch = phi i32 [ %i.bp, %kaiser_params.exit ], [ %i.bw, %bb.m ], [ %i.cg, %bb.n ] ; 4 uses
  %i.ci = or i32 %i.ch, 1                         ; 2 uses
  store i32 %i.ci, ptr %3, align 4, !tbaa !26
  %i.cj = and i32 %i.ch, -2                       ; 3 uses
  %i.ck = sext i32 %i.ci to i64
  %i.cl = tail call noalias ptr @av_calloc(i64 noundef %i.ck, i64 noundef 4) #8 ; 5 uses
  %i.cm = fpext nsz float %i.be to double
  %i.cn = tail call nsz double @av_bessel_i0(double noundef %i.cm) #8
  %i.co = fdiv nsz double 1.000000e+00, %i.cn
  %i.cp = fptrunc nsz double %i.co to float
  %i.cq = sitofp nsz i32 %i.cj to float           ; 2 uses
  %i.cr = fmul nnan nsz float %i.cq, 5.000000e-01
  %i.cs = fdiv nnan nsz float 1.000000e+00, %i.cr
  %.not.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i29, label %make_lpf.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = fcmp nsz oge float %i.a, 0.000000e+00
  %i.cu = fcmp nsz ole float %i.a, 1.000000e+00
  %or.cond.i = and i1 %i.ct, %i.cu
  br i1 %or.cond.i, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %bb.p
  %.not5961.i = icmp slt i32 %i.ch, 0
  br i1 %.not5961.i, label %make_lpf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cv = lshr i32 %i.ch, 1
  %i.cw = fpext nsz float %i.cp to double
  %i.cx = zext nneg i32 %i.cj to i64
  %i.cy = add nuw nsw i32 %i.cv, 1
  %wide.trip.count.i = zext nneg i32 %i.cy to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 107) #8
  tail call void @abort() #9
  unreachable

bb.r:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 5 uses
  %indvars64.i = trunc i64 %indvars.iv.i to i32   ; 2 uses
  %i.cz = uitofp nsz nneg i32 %indvars64.i to float
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float -5.000000e-01, float %i.cz) ; 2 uses
  %i.db = fpext nnan nsz float %i.da to double
  %i.dc = fmul nnan nsz double %i.db, f0x400921FB54442D18
  %i.dd = fptrunc nsz double %i.dc to float       ; 3 uses
  %i.de = fmul nsz float %i.cs, %i.da             ; 2 uses
  %i.df = fcmp nsz une float %i.dd, 0.000000e+00
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dg = fmul nnan nsz float %i.a, %i.dd
  %i.dh = tail call nsz float @llvm.sin.f32(float %i.dg)
  %i.di = fdiv nsz float %i.dh, %i.dd
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dj = phi nsz float [ %i.di, %bb.s ], [ %i.a, %bb.r ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.dl = fneg nsz float %i.de
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.de, float 1.000000e+00)
  %i.dn = tail call nsz float @llvm.sqrt.f32(float %i.dm)
  %i.do = fmul nsz float %i.be, %i.dn
  %i.dp = fpext nsz float %i.do to double
  %i.dq = tail call nsz double @av_bessel_i0(double noundef %i.dp) #8
  %i.dr = fmul nsz double %i.dq, %i.cw
  %i.ds = fpext nsz float %i.dj to double
  %i.dt = fmul nsz double %i.dr, %i.ds
  %i.du = fptrunc nsz double %i.dt to float       ; 2 uses
  store float %i.du, ptr %i.dk, align 4, !tbaa !33
  %i.dv = sub nsw i32 %i.cj, %indvars64.i
  %i.dw = zext i32 %i.dv to i64
  %.not60.i = icmp eq i64 %indvars.iv.i, %i.dw
  br i1 %.not60.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = sub nsw i64 %i.cx, %indvars.iv.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.dx
  store float %i.du, ptr %i.dy, align 4, !tbaa !33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %make_lpf.exit, label %bb.r, !llvm.loop !98

make_lpf.exit:                                    ; preds = %bb.v, %.preheader.i, %bb.o, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.o ], [ %i.cl, %.preheader.i ], [ %i.cl, %bb.v ]
  ret ptr %.0
}

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #4

declare double @av_bessel_i0(double noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #4

declare ptr @av_realloc_f(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"float", !5, i64 0}
!21 = !{!"p1 float", !9, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!24 = !{!"SincContext", !10, i64 0, !6, i64 8, !6, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !5, i64 44, !6, i64 52, !6, i64 56, !6, i64 60, !21, i64 64, !22, i64 72, !23, i64 80, !23, i64 88, !9, i64 96, !9, i64 104}
!25 = !{!24, !6, i64 8}
!26 = !{!6, !6, i64 0}
!27 = !{!24, !21, i64 64}
!28 = !{!24, !6, i64 56}
!29 = !{!24, !22, i64 72}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!32 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!33 = !{!20, !20, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!18, !15, i64 56}
!36 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!24, !6, i64 12}
!39 = !{!12, !12, i64 0}
!40 = !{!"p2 omnipotent char", !14, i64 0}
!41 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!42 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!43 = !{!"AVFrame", !5, i64 0, !5, i64 64, !40, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !30, i64 124, !22, i64 136, !22, i64 144, !30, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !41, i64 248, !6, i64 256, !31, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !42, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !9, i64 376, !32, i64 384, !22, i64 408, !6, i64 416}
!44 = !{!43, !22, i64 136}
!45 = distinct !{!45, !34, !86, !87}
!46 = distinct !{!46, !34, !87, !86}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !34, !86, !87}
!51 = distinct !{!51, !90}
!52 = distinct !{!52, !34, !86}
!53 = distinct !{!53, !34, !86, !87}
!54 = distinct !{!54, !34, !87, !86}
!55 = distinct !{!55, !34}
!56 = distinct !{null}
!57 = distinct !{!57, !34}
!58 = distinct !{!58, !34, !86, !87}
!59 = distinct !{!59, !34, !86, !87}
!60 = distinct !{!60, !34, !87, !86}
!61 = distinct !{!61, !34, !87, !86}
!62 = distinct !{!62, !34}
!63 = distinct !{!63, !34, !86, !87}
!64 = distinct !{!64, !34, !87, !86}
!65 = distinct !{!65, !34, !86, !87}
!66 = distinct !{!66, !34, !87, !86}
!67 = distinct !{!67, !34}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !34}
!70 = distinct !{!70, !34, !86, !87}
!71 = distinct !{!71, !90}
!72 = distinct !{!72, !34, !86}
!73 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!74 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!75 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!76 = !{!"AVFilterFormatsConfig", !74, i64 0, !74, i64 8, !75, i64 16, !74, i64 24, !74, i64 32, !74, i64 40}
!77 = !{!"AVFilterLink", !73, i64 0, !13, i64 8, !73, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !32, i64 72, !30, i64 96, !31, i64 104, !6, i64 112, !6, i64 116, !76, i64 120, !76, i64 168}
!78 = !{!77, !73, i64 0}
!79 = !{!77, !6, i64 64}
!80 = !{!24, !20, i64 28}
!81 = !{!24, !20, i64 32}
!82 = !{!24, !20, i64 36}
!83 = !{!24, !20, i64 16}
!84 = !{!24, !6, i64 52}
!85 = !{!24, !20, i64 40}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = !{!48}
!89 = !{!49}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!24, !20, i64 24}
!92 = !{!24, !9, i64 96}
!93 = !{!24, !23, i64 80}
!94 = !{!24, !9, i64 104}
!95 = !{!24, !23, i64 88}
!96 = !{!5, !5, i64 0}
!97 = !{!24, !6, i64 60}
!98 = distinct !{!98, !34}
end_hunk_1
