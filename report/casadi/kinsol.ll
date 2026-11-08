Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/kinsol?download=true
inline.NumInlined: 17
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@AndersenAcc:bb.a
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.az, -8                      ; 5 uses
  %i.ba = add i64 %i.ax, %n.vec
  %i.bb = trunc nsw i64 %i.ax to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %vec.ind, ptr %i.bc, align 4, !tbaa !74
  store <4 x i32> %step.add, ptr %i.bd, align 4, !tbaa !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.preheader221, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv249.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.g
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !149
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !149
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bi, ptr noundef %i.bm) #12
  %i.bn = icmp sgt i32 %5, 1
  br i1 %i.bn, label %.lr.ph237, label %._crit_edge

.lr.ph237:                                        ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph237, %bb.h
  %indvars.iv268 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next269, %bb.h ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv268
  %i.bq = trunc nuw nsw i64 %indvars.iv268 to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !74
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv268
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !149
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.g
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !149
  %i.bx = tail call double @N_VDotProd(ptr noundef %i.bt, ptr noundef %i.bw) #12 ; 2 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !53
  %i.bz = mul nsw i64 %i.by, %i.f
  %i.ca = getelementptr [8 x i8], ptr %6, i64 %i.bz
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv268
  store double %i.bx, ptr %i.cb, align 8, !tbaa !34
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.g
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %i.cf = fneg double %i.bx
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv268
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !149
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ce, double noundef %i.cf, ptr noundef %i.ci, ptr noundef %i.ce) #12
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count
  br i1 %exitcond271.not, label %._crit_edge, label %bb.h, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.g
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !149 ; 2 uses
  %i.cm = tail call double @N_VDotProd(ptr noundef %i.cl, ptr noundef %i.cl) #12
  %i.cn = tail call double @sqrt(double noundef %i.cm) #12 ; 2 uses
  %i.co = load i64, ptr %i.a, align 8, !tbaa !53
  %i.cp = mul nsw i64 %i.co, %i.f
  %i.cq = getelementptr [8 x i8], ptr %6, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.au
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  store double %i.cn, ptr %i.cs, align 8, !tbaa !34
  %i.ct = fdiv double 1.000000e+00, %i.cn
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.g
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !149
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !61
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.g
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !149
  tail call void @N_VScale(double noundef %i.ct, ptr noundef %i.cw, ptr noundef %i.da) #12
  %i.db = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  store i32 %i.e, ptr %i.db, align 4, !tbaa !74
  br label %.loopexit219

.preheader221:                                    ; preds = %.lr.ph, %middle.block, %.preheader222
  %.1.lcssa = phi i64 [ 0, %.preheader222 ], [ %n.vec, %middle.block ], [ %indvars.iv.next250, %.lr.ph ] ; 3 uses
  %.not226 = icmp slt i64 %i.g, 0
  br i1 %.not226, label %.preheader220, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %.preheader221
  %i.dc = and i64 %i.g, 4294967295                ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check5 = icmp samesign ult i64 %i.dc, 7
  br i1 %min.iters.check5, label %.lr.ph229.preheader20, label %vector.ph6

vector.ph6:                                       ; preds = %.lr.ph229.preheader
  %n.vec7 = and i64 %i.dd, 8589934584             ; 4 uses
  %i.de = add i64 %.1.lcssa, %n.vec7
  %i.df = trunc i64 %n.vec7 to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.1.lcssa
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph6
  %index9 = phi i64 [ 0, %vector.ph6 ], [ %index.next12, %vector.body8 ] ; 2 uses
  %vec.ind10 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph6 ], [ %vec.ind.next13, %vector.body8 ] ; 3 uses
  %step.add11 = add nuw <4 x i32> %vec.ind10, splat (i32 4)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %vec.ind10, ptr %i.dh, align 4, !tbaa !74
  store <4 x i32> %step.add11, ptr %i.di, align 4, !tbaa !74
  %index.next12 = add nuw i64 %index9, 8          ; 2 uses
  %vec.ind.next13 = add nuw <4 x i32> %vec.ind10, splat (i32 8)
  %i.dj = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.dj, label %middle.block14, label %vector.body8, !llvm.loop !140

middle.block14:                                   ; preds = %vector.body8
  %cmp.n15 = icmp eq i64 %i.dd, %n.vec7
  br i1 %cmp.n15, label %.preheader220, label %.lr.ph229.preheader20

.lr.ph229.preheader20:                            ; preds = %.lr.ph229.preheader, %middle.block14
  %indvars.iv254.ph = phi i64 [ %.1.lcssa, %.lr.ph229.preheader ], [ %i.de, %middle.block14 ]
  %.1204227.ph = phi i32 [ 0, %.lr.ph229.preheader ], [ %i.df, %middle.block14 ]
  br label %.lr.ph229

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph ], [ %indvars.iv249.ph, %.lr.ph.preheader21 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader21 ] ; 2 uses
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv249
  %i.dl = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !74
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dm = icmp sgt i64 %i.av, %indvars.iv.next
  br i1 %i.dm, label %.lr.ph, label %.preheader221, !llvm.loop !141

.preheader220:                                    ; preds = %.lr.ph229, %middle.block14, %.preheader221
  %i.dn = icmp sgt i64 %i.av, 0
  br i1 %i.dn, label %.lr.ph231, label %.loopexit219

.lr.ph231:                                        ; preds = %.preheader220
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.i

.lr.ph229:                                        ; preds = %.lr.ph229.preheader20, %.lr.ph229
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph229 ], [ %indvars.iv254.ph, %.lr.ph229.preheader20 ] ; 2 uses
  %.1204227 = phi i32 [ %i.dr, %.lr.ph229 ], [ %.1204227.ph, %.lr.ph229.preheader20 ] ; 3 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv254
  store i32 %.1204227, ptr %i.dq, align 4, !tbaa !74
  %i.dr = add nuw i32 %.1204227, 1
  %exitcond.not = icmp eq i32 %.1204227, %i.h
  br i1 %exitcond.not, label %.preheader220, label %.lr.ph229, !llvm.loop !142

.preheader218:                                    ; preds = %bb.i
  %i.ds = icmp sgt i64 %i.eb, 0
  br i1 %i.ds, label %.lr.ph235, label %.loopexit219

.lr.ph235:                                        ; preds = %.preheader218
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph231, %bb.i
  %indvars.iv257 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next258, %bb.i ] ; 3 uses
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv257
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !149
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !62
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv257
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !149
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dx, ptr noundef %i.ea) #12
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, %indvars.iv.next258
  br i1 %i.ec, label %bb.i, label %.preheader218, !llvm.loop !143

.loopexit217:                                     ; preds = %.lr.ph233
  %i.ed = icmp sgt i64 %i.fs, %indvars.iv.next266
  %indvars.iv.next261 = add i64 %indvars.iv260.a, 1
  br i1 %i.ed, label %bb.j, label %.loopexit219, !llvm.loop !144

bb.j:                                             ; preds = %.lr.ph235, %.loopexit217
  %indvars.iv265 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next266, %.loopexit217 ] ; 4 uses
  %indvars.iv260.a = phi i64 [ 1, %.lr.ph235 ], [ %indvars.iv.next261, %.loopexit217 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv265
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !74
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.eh = sext i32 %i.ef to i64                   ; 5 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !149 ; 2 uses
  %i.ek = tail call double @N_VDotProd(ptr noundef %i.ej, ptr noundef %i.ej) #12
  %i.el = tail call double @sqrt(double noundef %i.ek) #12 ; 2 uses
  %i.em = load i64, ptr %i.a, align 8, !tbaa !53
  %i.en = add i64 %i.em, 1
  %i.eo = mul i64 %i.en, %indvars.iv265
  %i.ep = getelementptr inbounds [8 x i8], ptr %6, i64 %i.eo
  store double %i.el, ptr %i.ep, align 8, !tbaa !34
  %i.eq = fdiv double 1.000000e+00, %i.el
  %i.er = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.eh
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !149
  %i.eu = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.eh
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !149
  tail call void @N_VScale(double noundef %i.eq, ptr noundef %i.et, ptr noundef %i.ew) #12
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %6, i64 %indvars.iv265
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !53
  %i.ey = icmp sgt i64 %i.ex, %indvars.iv.next266
  br i1 %i.ey, label %.lr.ph233, label %.loopexit219

.lr.ph233:                                        ; preds = %bb.j, %.lr.ph233
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph233 ], [ %indvars.iv260.a, %bb.j ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv262
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !74
  %i.fb = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.fc = sext i32 %i.fa to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !149
  %i.ff = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.eh
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !149
  %i.fi = tail call double @N_VDotProd(ptr noundef %i.fe, ptr noundef %i.fh) #12 ; 2 uses
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !53
  %i.fk = mul nsw i64 %i.fj, %indvars.iv262
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fk
  store double %i.fi, ptr %gep, align 8, !tbaa !34
  %i.fl = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fc
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !149 ; 2 uses
  %i.fo = fneg double %i.fi
  %i.fp = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.eh
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !149
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fn, double noundef %i.fo, ptr noundef %i.fr, ptr noundef %i.fn) #12
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, %indvars.iv.next263
  br i1 %i.ft, label %.lr.ph233, label %.loopexit217, !llvm.loop !145

.loopexit219:                                     ; preds = %.loopexit217, %bb.j, %.preheader220, %.preheader218, %._crit_edge, %bb.e
  %.pre-phi = phi i64 [ %i.au, %.preheader220 ], [ %i.au, %.preheader218 ], [ %i.au, %._crit_edge ], [ 1, %bb.e ], [ %i.au, %bb.j ], [ %i.au, %.loopexit217 ]
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !53
  %spec.select215 = tail call i64 @llvm.smin.i64(i64 %i.fu, i64 %.pre-phi) ; 4 uses
  %spec.select = trunc i64 %spec.select215 to i32 ; 2 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #12
  %i.fv = icmp sgt i32 %spec.select, 0
  br i1 %i.fv, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.loopexit219
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %wide.trip.count275 = and i64 %spec.select215, 2147483647
  br label %bb.k

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fy = and i64 %spec.select215, 2147483647
  %i.fz = and i64 %spec.select215, 2147483647
  br label %.preheader

bb.k:                                             ; preds = %.lr.ph240, %bb.k
  %indvars.iv272 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next273, %bb.k ] ; 3 uses
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !61
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv272
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !74
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !149
  %i.gg = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %i.gf) #12
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv272
  store double %i.gg, ptr %i.gh, align 8, !tbaa !34
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %.preheader.lr.ph, label %bb.k, !llvm.loop !146

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge243
  %indvars.iv277 = phi i64 [ %i.fy, %.preheader.lr.ph ], [ %indvars.iv.next278, %._crit_edge243 ] ; 4 uses
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, -1 ; 6 uses
  %i.gi = icmp slt i64 %indvars.iv277, %i.fz
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next278 ; 3 uses
  br i1 %i.gi, label %.lr.ph242, label %.preheader.._crit_edge243_crit_edge

.preheader.._crit_edge243_crit_edge:              ; preds = %.preheader
  %.pre = load double, ptr %i.gj, align 8, !tbaa !34
  %.pre283 = load i64, ptr %i.a, align 8, !tbaa !53
  br label %._crit_edge243

.lr.ph242:                                        ; preds = %.preheader
  %i.gk = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %invariant.gep244 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv.next278
  %.promoted = load double, ptr %i.gj, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph242, %bb.l
  %indvars.iv279 = phi i64 [ %indvars.iv277, %.lr.ph242 ], [ %indvars.iv.next280, %bb.l ] ; 3 uses
  %i.gl = phi double [ %.promoted, %.lr.ph242 ], [ %i.gr, %bb.l ]
  %i.gm = mul nsw i64 %i.gk, %indvars.iv279
  %gep245 = getelementptr [8 x i8], ptr %invariant.gep244, i64 %i.gm
  %i.gn = load double, ptr %gep245, align 8, !tbaa !34
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv279
  %i.gp = load double, ptr %i.go, align 8, !tbaa !34
  %i.gq = fneg double %i.gn
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gp, double %i.gl) ; 3 uses
  store double %i.gr, ptr %i.gj, align 8, !tbaa !34
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.gs = trunc nuw i64 %indvars.iv.next280 to i32
  %i.gt = icmp slt i32 %i.gs, %spec.select
  br i1 %i.gt, label %bb.l, label %._crit_edge243, !llvm.loop !147

._crit_edge243:                                   ; preds = %bb.l, %.preheader.._crit_edge243_crit_edge
  %i.gu = phi i64 [ %.pre283, %.preheader.._crit_edge243_crit_edge ], [ %i.gk, %bb.l ]
  %i.gv = phi double [ %.pre, %.preheader.._crit_edge243_crit_edge ], [ %i.gr, %bb.l ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next278
  %i.gx = add i64 %i.gu, 1
  %i.gy = mul i64 %i.gx, %indvars.iv.next278
  %i.gz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gy
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !34
  %i.hb = fdiv double %i.gv, %i.ha                ; 2 uses
  store double %i.hb, ptr %i.gw, align 8, !tbaa !34
  %i.hc = fneg double %i.hb
  %i.hd = load ptr, ptr %i.fx, align 8, !tbaa !59
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next278
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !74
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !149
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.hc, ptr noundef %i.hi, ptr noundef %3) #12
  %i.hj = icmp samesign ugt i64 %indvars.iv277, 1
  br i1 %i.hj, label %.preheader, label %.loopexit, !llvm.loop !148

.loopexit:                                        ; preds = %._crit_edge243, %.loopexit219, %bb.d
  tail call void @free(ptr noundef %i.d) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 _ZTS17_generic_N_Vector", !12, i64 0}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!16 = !{!"KINMemRec", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !5, i64 44, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !5, i64 192, !8, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !14, i64 392, !14, i64 400, !10, i64 408, !5, i64 416, !5, i64 420, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !5, i64 488, !9, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !5, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !5, i64 576, !9, i64 584, !9, i64 592, !15, i64 600, !9, i64 608, !9, i64 616, !15, i64 624}
!17 = !{!16, !8, i64 0}
!18 = !{!16, !9, i64 584}
!19 = !{!16, !9, i64 592}
!20 = !{!15, !15, i64 0}
!21 = !{!16, !15, i64 600}
!22 = !{!16, !9, i64 608}
!23 = !{!16, !9, i64 616}
!24 = !{!16, !15, i64 624}
!25 = !{!16, !10, i64 48}
!26 = !{!16, !10, i64 56}
!27 = !{!16, !10, i64 64}
!28 = !{!16, !10, i64 72}
!29 = !{!16, !8, i64 200}
!30 = !{!16, !8, i64 32}
!31 = !{!16, !8, i64 24}
!32 = !{!16, !5, i64 80}
!33 = !{!16, !8, i64 184}
!34 = !{!8, !8, i64 0}
!35 = !{!16, !5, i64 576}
!36 = !{!16, !5, i64 88}
!37 = !{!16, !5, i64 544}
!38 = !{!16, !8, i64 568}
!39 = !{!16, !10, i64 440}
!40 = !{!16, !10, i64 448}
end_hunk_0
