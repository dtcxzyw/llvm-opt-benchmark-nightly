Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PotentialFlow?download=true
inline.NumInlined: 97346
inline.NumDeleted: 30608
loop-unroll.NumCompletelyUnrolled: 355
loop-unroll.NumRuntimeUnrolled: 294
loop-unroll.NumUnrolled: 1398
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !886
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv42.i.i.i.i.i.i.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter274.next = add i64 %prol.iter274, 1   ; 2 uses
  %prol.iter274.cmp.not = icmp eq i64 %prol.iter274.next, %xtraiter272
  br i1 %prol.iter274.cmp.not, label %scalar.ph238.prol.loopexit, label %scalar.ph238.prol, !llvm.loop !16827

scalar.ph238.prol.loopexit:                       ; preds = %scalar.ph238.prol, %scalar.ph238.preheader
  %indvars.iv42.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv42.i.i.i.i.i.i.ph, %scalar.ph238.preheader ], [ %indvars.iv.next43.i.i.i.i.i.i.prol, %scalar.ph238.prol ]
  %i.at = sub nsw i64 %indvars.iv42.i.i.i.i.i.i.ph, %wide.trip.count45.i.i.i.i.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph238

scalar.ph238:                                     ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238
  %indvars.iv42.i.i.i.i.i.i = phi i64 [ %indvars.iv.next43.i.i.i.i.i.i.3, %scalar.ph238 ], [ %indvars.iv42.i.i.i.i.i.i.unr, %scalar.ph238.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv42.i.i.i.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !886
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv42.i.i.i.i.i.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !886
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv42.i.i.i.i.i.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !886
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !886
  %i.bf = fadd double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i
  store double %i.bf, ptr %i.bg, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 2 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !886
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !886
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  store double %i.bl, ptr %i.bm, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 3 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !886
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !886
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  store double %i.br, ptr %i.bs, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond46.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next43.i.i.i.i.i.i.3, %wide.trip.count45.i.i.i.i.i.i
  br i1 %exitcond46.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph238, !llvm.loop !16828

bb.e:                                             ; preds = %bb.c
  %i.bt = fcmp oeq double %i.l, -1.000000e+00
  %i.bu = icmp ult i32 %i.e, %i.c                 ; 2 uses
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.bu, label %.lr.ph31.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph31.i.i.i.i.i.i:                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !5266 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load ptr, ptr %i.bx, align 32, !tbaa !5267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !5268 ; 7 uses
  %i.cb = zext i32 %i.e to i64                    ; 5 uses
  %wide.trip.count40.i.i.i.i.i.i = zext i32 %i.c to i64 ; 4 uses
  %i.cc = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i, %i.cb ; 3 uses
  %min.iters.check217 = icmp ult i64 %i.cc, 10
  br i1 %min.iters.check217, label %scalar.ph216.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph31.i.i.i.i.i.i
  %i.cd = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.by to i64
  %i.cf = ptrtoaddr ptr %i.bw to i64
  %i.cg = sub i64 %i.cf, %i.cd
  %diff.check219 = icmp ugt i64 %i.cg, -32
  %i.ch = sub i64 %i.ce, %i.cd
  %diff.check220 = icmp ugt i64 %i.ch, -32
  %conflict.rdx221 = or i1 %diff.check219, %diff.check220
  br i1 %conflict.rdx221, label %scalar.ph216.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck218
  %n.vec223 = and i64 %i.cc, -4                   ; 3 uses
  %i.ci = add nsw i64 %n.vec223, %i.cb
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %i.cj = add nuw i64 %index225, %i.cb            ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load226 = load <2 x double>, ptr %i.ck, align 8, !tbaa !886
  %wide.load227 = load <2 x double>, ptr %i.cl, align 8, !tbaa !886
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load228 = load <2 x double>, ptr %i.cm, align 8, !tbaa !886
  %wide.load229 = load <2 x double>, ptr %i.cn, align 8, !tbaa !886
  %i.co = fsub <2 x double> %wide.load228, %wide.load226
  %i.cp = fsub <2 x double> %wide.load229, %wide.load227
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> %i.co, ptr %i.cq, align 8, !tbaa !886
  store <2 x double> %i.cp, ptr %i.cr, align 8, !tbaa !886
  %index.next230 = add nuw i64 %index225, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.cs, label %middle.block231, label %vector.body224, !llvm.loop !16829

middle.block231:                                  ; preds = %vector.body224
  %cmp.n232 = icmp eq i64 %i.cc, %n.vec223
  br i1 %cmp.n232, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %vector.memcheck218, %.lr.ph31.i.i.i.i.i.i, %middle.block231
  %indvars.iv37.i.i.i.i.i.i.ph = phi i64 [ %i.cb, %vector.memcheck218 ], [ %i.cb, %.lr.ph31.i.i.i.i.i.i ], [ %i.ci, %middle.block231 ] ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i, %indvars.iv37.i.i.i.i.i.i.ph
  %xtraiter269 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol

scalar.ph216.prol:                                ; preds = %scalar.ph216.preheader, %scalar.ph216.prol
  %indvars.iv37.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i.prol, %scalar.ph216.prol ], [ %indvars.iv37.i.i.i.i.i.i.ph, %scalar.ph216.preheader ] ; 4 uses
  %prol.iter271 = phi i64 [ %prol.iter271.next, %scalar.ph216.prol ], [ 0, %scalar.ph216.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv37.i.i.i.i.i.i.prol
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !886
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv37.i.i.i.i.i.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !886
  %i.cy = fsub double %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv37.i.i.i.i.i.i.prol
  store double %i.cy, ptr %i.cz, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter271.next = add i64 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i64 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol, !llvm.loop !16830

scalar.ph216.prol.loopexit:                       ; preds = %scalar.ph216.prol, %scalar.ph216.preheader
  %indvars.iv37.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv37.i.i.i.i.i.i.ph, %scalar.ph216.preheader ], [ %indvars.iv.next38.i.i.i.i.i.i.prol, %scalar.ph216.prol ]
  %i.da = sub nsw i64 %indvars.iv37.i.i.i.i.i.i.ph, %wide.trip.count40.i.i.i.i.i.i
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph216

scalar.ph216:                                     ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216
  %indvars.iv37.i.i.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i.3, %scalar.ph216 ], [ %indvars.iv37.i.i.i.i.i.i.unr, %scalar.ph216.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv37.i.i.i.i.i.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !886
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv37.i.i.i.i.i.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !886
  %i.dg = fsub double %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv37.i.i.i.i.i.i
  store double %i.dg, ptr %i.dh, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !886
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !886
  %i.dm = fsub double %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i
  store double %i.dm, ptr %i.dn, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 2 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  %i.dp = load double, ptr %i.do, align 8, !tbaa !886
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !886
  %i.ds = fsub double %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  store double %i.ds, ptr %i.dt, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 3 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  %i.dv = load double, ptr %i.du, align 8, !tbaa !886
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !886
  %i.dy = fsub double %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  store double %i.dy, ptr %i.dz, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond41.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next38.i.i.i.i.i.i.3, %wide.trip.count40.i.i.i.i.i.i
  br i1 %exitcond41.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph216, !llvm.loop !16831

bb.g:                                             ; preds = %bb.e
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !5266 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ed = load ptr, ptr %i.ec, align 32, !tbaa !5267 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !5268 ; 6 uses
  %i.eg = zext i32 %i.e to i64                    ; 6 uses
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64 ; 5 uses
  %i.eh = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %i.eg ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.eh, 14
  br i1 %min.iters.check185, label %scalar.ph184.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = shl nuw nsw i64 %i.eg, 3                ; 3 uses
  %i.ej = getelementptr nuw i8, ptr %i.ef, i64 %i.ei ; 3 uses
  %i.ek = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ef, i64 %i.ek  ; 3 uses
  %6 = getelementptr nuw i8, ptr %i.eb, i64 %i.ei
  %7 = getelementptr i8, ptr %i.eb, i64 %i.ek
  %i.em = getelementptr nuw i8, ptr %i.ed, i64 %i.ei
  %i.en = getelementptr i8, ptr %i.ed, i64 %i.ek
  %bound0187.a = icmp ult ptr %i.ej, %i.ea
  %bound1188.a = icmp ult ptr %i.k, %i.el
  %found.conflict189.a = and i1 %bound0187.a, %bound1188.a
  %bound0190 = icmp ult ptr %i.ej, %7
  %bound1191 = icmp ult ptr %6, %i.el
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %found.conflict189.a, %found.conflict192
  %bound0194 = icmp ult ptr %i.ej, %i.en
  %bound1195 = icmp ult ptr %i.em, %i.el
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  br i1 %conflict.rdx197, label %scalar.ph184.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck186
  %n.vec199 = and i64 %i.eh, -4                   ; 3 uses
  %i.eo = add nsw i64 %n.vec199, %i.eg
  %i.ep = load <1 x double>, ptr %i.k, align 16
  %broadcast.splat207 = shufflevector <1 x double> %i.ep, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %i.eq = add nuw i64 %index201, %i.eg            ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load202 = load <2 x double>, ptr %i.er, align 8, !tbaa !886, !alias.scope !16854
  %wide.load203 = load <2 x double>, ptr %i.es, align 8, !tbaa !886, !alias.scope !16854
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eq ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load204 = load <2 x double>, ptr %i.et, align 8, !tbaa !886, !alias.scope !16855
  %wide.load205 = load <2 x double>, ptr %i.eu, align 8, !tbaa !886, !alias.scope !16855
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat207, <2 x double> %wide.load202, <2 x double> %wide.load204)
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat207, <2 x double> %wide.load203, <2 x double> %wide.load205)
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eq ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x double> %i.ev, ptr %i.ex, align 8, !tbaa !886, !alias.scope !16856, !noalias !16857
  store <2 x double> %i.ew, ptr %i.ey, align 8, !tbaa !886, !alias.scope !16856, !noalias !16857
  %index.next208 = add nuw i64 %index201, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.ez, label %middle.block209, label %vector.body200, !llvm.loop !16837

middle.block209:                                  ; preds = %vector.body200
  %cmp.n210 = icmp eq i64 %i.eh, %n.vec199
  br i1 %cmp.n210, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %vector.memcheck186, %.lr.ph.i.i.i.i.i.i, %middle.block209
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ %i.eg, %vector.memcheck186 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i ], [ %i.eo, %middle.block209 ] ; 7 uses
  %i.fa = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter266 = and i64 %i.fa, 1
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %scalar.ph184.prol.loopexit, label %scalar.ph184.prol

scalar.ph184.prol:                                ; preds = %scalar.ph184.preheader
  %i.fb = load double, ptr %i.k, align 16, !tbaa !5265
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i.i.i.ph
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !886
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i.i.ph
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !886
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fd, double %i.ff)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i.ph
  store double %i.fg, ptr %i.fh, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.ph, 1
  br label %scalar.ph184.prol.loopexit

scalar.ph184.prol.loopexit:                       ; preds = %scalar.ph184.prol, %scalar.ph184.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph184.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph184.prol ]
  %i.fi = add nsw i64 %wide.trip.count.i.i.i.i.i.i, -1
  %i.fj = icmp eq i64 %indvars.iv.i.i.i.i.i.i.ph, %i.fi
  br i1 %i.fj, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph184

scalar.ph184:                                     ; preds = %scalar.ph184.prol.loopexit, %scalar.ph184
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %scalar.ph184 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph184.prol.loopexit ] ; 5 uses
  %i.fk = load double, ptr %i.k, align 16, !tbaa !5265
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !886
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !886
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fm, double %i.fo)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i
  store double %i.fp, ptr %i.fq, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 3 uses
  %i.fr = load double, ptr %i.k, align 16, !tbaa !5265
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !886
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !886
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.ft, double %i.fv)
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.i.i.i.i
  store double %i.fw, ptr %i.fx, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.1, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph184, !llvm.loop !16838

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.fy, align 1, !tbaa !908
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.h
  %i.gh = phi i8 [ %i.xz, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.h ] ; 3 uses
  %i.gi = phi i8 [ %i.ya, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.h ] ; 13 uses
  %i.gj = phi i8 [ %i.yb, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.h ] ; 9 uses
  %i.gk = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.gl = icmp ult i8 %i.gi, 8
  br i1 %i.gl, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.i
  %.phi.trans.insert.i = zext i8 %i.gj to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.gm = icmp ult i8 %.pre.i, %i.gk
  br i1 %i.gm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %bb.y
  %i.gn = icmp ult i8 %i.ox, %i.gk
  br i1 %i.gn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.j
  %i.go = zext nneg i8 %i.ol to i64               ; 2 uses
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.go ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !984
  %i.gs = load i32, ptr %i.gp, align 8, !tbaa !982
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !983
  %i.gv = sub i32 %i.gs, %i.gu
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp ult i64 %i.gr, %i.gw
  br i1 %i.gx, label %bb.k, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.go ; 2 uses
  %i.gz = add i8 %i.gj, 2
  %i.ha = and i8 %i.gz, 7                         ; 5 uses
  %i.hb = zext nneg i8 %i.ha to i64               ; 2 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.hb ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !tbaa.struct !1417
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !982 ; 2 uses
  store i32 %i.hd, ptr %i.gp, align 8, !tbaa !982
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !983 ; 2 uses
  %i.hg = sub i32 %i.hd, %i.hf
  %i.hh = lshr i32 %i.hg, 1
  %i.hi = add i32 %i.hh, %i.hf                    ; 2 uses
  store i32 %i.hi, ptr %i.hc, align 8, !tbaa !982
  store i32 %i.hi, ptr %i.gt, align 4, !tbaa !983
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !984
  store i64 %i.hk, ptr %i.gq, align 8, !tbaa !984
  %i.hl = load i8, ptr %i.gy, align 1, !tbaa !908
  %i.hm = add i8 %i.hl, 1                         ; 3 uses
  store i8 %i.hm, ptr %i.gy, align 1, !tbaa !908
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hb
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !908
  %i.ho = add nuw nsw i8 %i.gi, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.ho, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.l, !llvm.loop !76

bb.l:                                             ; preds = %bb.k
  %i.hp = icmp ult i8 %i.hm, %i.gk
  br i1 %i.hp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.l
  %i.hq = zext nneg i8 %i.ha to i64               ; 2 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.hq ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !984
  %i.hu = load i32, ptr %i.hr, align 8, !tbaa !982
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !983
  %i.hx = sub i32 %i.hu, %i.hw
  %i.hy = zext i32 %i.hx to i64
  %i.hz = icmp ult i64 %i.ht, %i.hy
  br i1 %i.hz, label %bb.m, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.hq ; 2 uses
  %i.ib = add i8 %i.gj, 3
  %i.ic = and i8 %i.ib, 7                         ; 5 uses
  %i.id = zext nneg i8 %i.ic to i64               ; 2 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.id ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false), !tbaa.struct !1417
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !982 ; 2 uses
  store i32 %i.if, ptr %i.hr, align 8, !tbaa !982
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !983 ; 2 uses
  %i.ii = sub i32 %i.if, %i.ih
  %i.ij = lshr i32 %i.ii, 1
  %i.ik = add i32 %i.ij, %i.ih                    ; 2 uses
  store i32 %i.ik, ptr %i.ie, align 8, !tbaa !982
  store i32 %i.ik, ptr %i.hv, align 4, !tbaa !983
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !984
  store i64 %i.im, ptr %i.hs, align 8, !tbaa !984
  %i.in = load i8, ptr %i.ia, align 1, !tbaa !908
  %i.io = add i8 %i.in, 1                         ; 3 uses
  store i8 %i.io, ptr %i.ia, align 1, !tbaa !908
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.id
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !908
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv42.i.i.i.i.i.i27.prol
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !886
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv42.i.i.i.i.i.i27.prol
  %i.so = load double, ptr %i.sn, align 8, !tbaa !886
  %i.sp = fadd double %i.sm, %i.so
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv42.i.i.i.i.i.i27.prol
  store double %i.sp, ptr %i.sq, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.prol = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter265.next = add i64 %prol.iter265, 1   ; 2 uses
  %prol.iter265.cmp.not = icmp eq i64 %prol.iter265.next, %xtraiter263
  br i1 %prol.iter265.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16841

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv42.i.i.i.i.i.i27.unr = phi i64 [ %indvars.iv42.i.i.i.i.i.i27.ph, %scalar.ph.preheader ], [ %indvars.iv.next43.i.i.i.i.i.i28.prol, %scalar.ph.prol ]
  %i.sr = sub nsw i64 %indvars.iv42.i.i.i.i.i.i27.ph, %wide.trip.count45.i.i.i.i.i.i26
  %i.ss = icmp ugt i64 %i.sr, -4
  br i1 %i.ss, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv42.i.i.i.i.i.i27 = phi i64 [ %indvars.iv.next43.i.i.i.i.i.i28.3, %scalar.ph ], [ %indvars.iv42.i.i.i.i.i.i27.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv42.i.i.i.i.i.i27
  %i.su = load double, ptr %i.st, align 8, !tbaa !886
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv42.i.i.i.i.i.i27
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !886
  %i.sx = fadd double %i.su, %i.sw
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv42.i.i.i.i.i.i27
  store double %i.sx, ptr %i.sy, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 1 ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv.next43.i.i.i.i.i.i28
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !886
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !886
  %i.td = fadd double %i.ta, %i.tc
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28
  store double %i.td, ptr %i.te, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.1 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 2 ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !886
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  %i.ti = load double, ptr %i.th, align 8, !tbaa !886
  %i.tj = fadd double %i.tg, %i.ti
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  store double %i.tj, ptr %i.tk, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.2 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 3 ; 3 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !886
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  %i.to = load double, ptr %i.tn, align 8, !tbaa !886
  %i.tp = fadd double %i.tm, %i.to
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  store double %i.tp, ptr %i.tq, align 8, !tbaa !886
  %indvars.iv.next43.i.i.i.i.i.i28.3 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond46.not.i.i.i.i.i.i29.3 = icmp eq i64 %indvars.iv.next43.i.i.i.i.i.i28.3, %wide.trip.count45.i.i.i.i.i.i26
  br i1 %exitcond46.not.i.i.i.i.i.i29.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph, !llvm.loop !16842

bb.ac:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.tr = fcmp oeq double %i.rj, -1.000000e+00
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !983 ; 3 uses
  %i.tu = load i32, ptr %i.ri, align 8, !tbaa !982 ; 3 uses
  %i.tv = icmp ult i32 %i.tt, %i.tu               ; 2 uses
  br i1 %i.tr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.tv, label %.lr.ph31.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph31.i.i.i.i.i.i20:                           ; preds = %bb.ad
  %i.tw = load ptr, ptr %i.gc, align 8, !tbaa !5266 ; 7 uses
  %i.tx = load ptr, ptr %i.gd, align 32, !tbaa !5267 ; 7 uses
  %i.ty = load ptr, ptr %i.ge, align 8, !tbaa !5268 ; 7 uses
  %i.tz = zext i32 %i.tt to i64                   ; 5 uses
  %wide.trip.count40.i.i.i.i.i.i21 = zext i32 %i.tu to i64 ; 4 uses
  %i.ua = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i21, %i.tz ; 3 uses
  %min.iters.check113 = icmp ult i64 %i.ua, 6
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph31.i.i.i.i.i.i20
  %i.ub = ptrtoaddr ptr %i.ty to i64              ; 2 uses
  %i.uc = ptrtoaddr ptr %i.tx to i64
  %i.ud = ptrtoaddr ptr %i.tw to i64
  %i.ue = sub i64 %i.ud, %i.ub
  %diff.check115 = icmp ugt i64 %i.ue, -32
  %i.uf = sub i64 %i.uc, %i.ub
  %diff.check116 = icmp ugt i64 %i.uf, -32
  %conflict.rdx117 = or i1 %diff.check115, %diff.check116
  br i1 %conflict.rdx117, label %scalar.ph112.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %i.ua, -4                   ; 3 uses
  %i.ug = add nsw i64 %n.vec119, %i.tz
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.uh = add nuw i64 %index121, %i.tz            ; 3 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.uh ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %wide.load122 = load <2 x double>, ptr %i.ui, align 8, !tbaa !886
  %wide.load123 = load <2 x double>, ptr %i.uj, align 8, !tbaa !886
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.uh ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %wide.load124 = load <2 x double>, ptr %i.uk, align 8, !tbaa !886
  %wide.load125 = load <2 x double>, ptr %i.ul, align 8, !tbaa !886
  %i.um = fsub <2 x double> %wide.load124, %wide.load122
  %i.un = fsub <2 x double> %wide.load125, %wide.load123
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.uh ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store <2 x double> %i.um, ptr %i.uo, align 8, !tbaa !886
  store <2 x double> %i.un, ptr %i.up, align 8, !tbaa !886
  %index.next126 = add nuw i64 %index121, 4       ; 2 uses
  %i.uq = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.uq, label %middle.block127, label %vector.body120, !llvm.loop !16843

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.ua, %n.vec119
  br i1 %cmp.n128, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck114, %.lr.ph31.i.i.i.i.i.i20, %middle.block127
  %indvars.iv37.i.i.i.i.i.i22.ph = phi i64 [ %i.tz, %vector.memcheck114 ], [ %i.tz, %.lr.ph31.i.i.i.i.i.i20 ], [ %i.ug, %middle.block127 ] ; 4 uses
  %i.ur = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i21, %indvars.iv37.i.i.i.i.i.i22.ph
  %xtraiter261 = and i64 %i.ur, 3                 ; 2 uses
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol

scalar.ph112.prol:                                ; preds = %scalar.ph112.preheader, %scalar.ph112.prol
  %indvars.iv37.i.i.i.i.i.i22.prol = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i23.prol, %scalar.ph112.prol ], [ %indvars.iv37.i.i.i.i.i.i22.ph, %scalar.ph112.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph112.prol ], [ 0, %scalar.ph112.preheader ]
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  %i.ut = load double, ptr %i.us, align 8, !tbaa !886
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !886
  %i.uw = fsub double %i.uv, %i.ut
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  store double %i.uw, ptr %i.ux, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.prol = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter261
  br i1 %prol.iter.cmp.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol, !llvm.loop !16844

scalar.ph112.prol.loopexit:                       ; preds = %scalar.ph112.prol, %scalar.ph112.preheader
  %indvars.iv37.i.i.i.i.i.i22.unr = phi i64 [ %indvars.iv37.i.i.i.i.i.i22.ph, %scalar.ph112.preheader ], [ %indvars.iv.next38.i.i.i.i.i.i23.prol, %scalar.ph112.prol ]
  %i.uy = sub nsw i64 %indvars.iv37.i.i.i.i.i.i22.ph, %wide.trip.count40.i.i.i.i.i.i21
  %i.uz = icmp ugt i64 %i.uy, -4
  br i1 %i.uz, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112
  %indvars.iv37.i.i.i.i.i.i22 = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i23.3, %scalar.ph112 ], [ %indvars.iv37.i.i.i.i.i.i22.unr, %scalar.ph112.prol.loopexit ] ; 7 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv37.i.i.i.i.i.i22
  %i.vb = load double, ptr %i.va, align 8, !tbaa !886
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv37.i.i.i.i.i.i22
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !886
  %i.ve = fsub double %i.vd, %i.vb
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv37.i.i.i.i.i.i22
  store double %i.ve, ptr %i.vf, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 1 ; 3 uses
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.next38.i.i.i.i.i.i23
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !886
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !886
  %i.vk = fsub double %i.vj, %i.vh
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23
  store double %i.vk, ptr %i.vl, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.1 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 2 ; 3 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !886
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !886
  %i.vq = fsub double %i.vp, %i.vn
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  store double %i.vq, ptr %i.vr, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.2 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 3 ; 3 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !886
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !886
  %i.vw = fsub double %i.vv, %i.vt
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  store double %i.vw, ptr %i.vx, align 8, !tbaa !886
  %indvars.iv.next38.i.i.i.i.i.i23.3 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 4 ; 2 uses
  %exitcond41.not.i.i.i.i.i.i24.3 = icmp eq i64 %indvars.iv.next38.i.i.i.i.i.i23.3, %wide.trip.count40.i.i.i.i.i.i21
  br i1 %exitcond41.not.i.i.i.i.i.i24.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph112, !llvm.loop !16845

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.tv, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph.i.i.i.i.i.i15:                             ; preds = %bb.ae
  %i.vy = load ptr, ptr %i.gc, align 8, !tbaa !5266 ; 6 uses
  %i.vz = load ptr, ptr %i.gd, align 32, !tbaa !5267 ; 6 uses
  %i.wa = load ptr, ptr %i.ge, align 8, !tbaa !5268 ; 6 uses
  %i.wb = zext i32 %i.tt to i64                   ; 6 uses
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.tu to i64 ; 5 uses
  %i.wc = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %i.wb ; 3 uses
  %min.iters.check145 = icmp ult i64 %i.wc, 6
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.i.i.i.i.i.i15
  %i.wd = shl nuw nsw i64 %i.wb, 3                ; 3 uses
  %i.we = getelementptr nuw i8, ptr %i.wa, i64 %i.wd ; 3 uses
  %i.wf = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i16, 3 ; 3 uses
  %i.wg = getelementptr i8, ptr %i.wa, i64 %i.wf  ; 3 uses
  %8 = getelementptr nuw i8, ptr %i.vy, i64 %i.wd
  %9 = getelementptr i8, ptr %i.vy, i64 %i.wf
  %i.wh = getelementptr nuw i8, ptr %i.vz, i64 %i.wd
  %i.wi = getelementptr i8, ptr %i.vz, i64 %i.wf
  %bound0.a = icmp ult ptr %i.we, %i.gc
  %bound1.a = icmp ult ptr %i.gb, %i.wg
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0147 = icmp ult ptr %i.we, %9
  %bound1148 = icmp ult ptr %8, %i.wg
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict.a, %found.conflict149
  %bound0151 = icmp ult ptr %i.we, %i.wi
  %bound1152 = icmp ult ptr %i.wh, %i.wg
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  br i1 %conflict.rdx154, label %scalar.ph144.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck146
  %n.vec156 = and i64 %i.wc, -4                   ; 3 uses
  %i.wj = add nsw i64 %n.vec156, %i.wb
  %i.wk = load <1 x double>, ptr %i.gb, align 16
  %broadcast.splat = shufflevector <1 x double> %i.wk, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %i.wl = add nuw i64 %index158, %i.wb            ; 3 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %i.wl ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %wide.load159 = load <2 x double>, ptr %i.wm, align 8, !tbaa !886, !alias.scope !16858
  %wide.load160 = load <2 x double>, ptr %i.wn, align 8, !tbaa !886, !alias.scope !16858
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %i.wl ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %wide.load161 = load <2 x double>, ptr %i.wo, align 8, !tbaa !886, !alias.scope !16859
  %wide.load162 = load <2 x double>, ptr %i.wp, align 8, !tbaa !886, !alias.scope !16859
  %i.wq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load159, <2 x double> %wide.load161)
  %i.wr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load160, <2 x double> %wide.load162)
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.wl ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store <2 x double> %i.wq, ptr %i.ws, align 8, !tbaa !886, !alias.scope !16860, !noalias !16861
  store <2 x double> %i.wr, ptr %i.wt, align 8, !tbaa !886, !alias.scope !16860, !noalias !16861
  %index.next163 = add nuw i64 %index158, 4       ; 2 uses
  %i.wu = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.wu, label %middle.block164, label %vector.body157, !llvm.loop !16851

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.wc, %n.vec156
  br i1 %cmp.n165, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %vector.memcheck146, %.lr.ph.i.i.i.i.i.i15, %middle.block164
  %indvars.iv.i.i.i.i.i.i17.ph = phi i64 [ %i.wb, %vector.memcheck146 ], [ %i.wb, %.lr.ph.i.i.i.i.i.i15 ], [ %i.wj, %middle.block164 ] ; 7 uses
  %i.wv = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %indvars.iv.i.i.i.i.i.i17.ph
  %xtraiter = and i64 %i.wv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol

scalar.ph144.prol:                                ; preds = %scalar.ph144.preheader
  %i.ww = load double, ptr %i.gb, align 16, !tbaa !5265
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.i.i.i.i.i.i17.ph
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !886
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.i.i.i.i.i.i17.ph
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !886
  %i.xb = call double @llvm.fmuladd.f64(double %i.ww, double %i.wy, double %i.xa)
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.i.i.i.i.i.i17.ph
  store double %i.xb, ptr %i.xc, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17.ph, 1
  br label %scalar.ph144.prol.loopexit

scalar.ph144.prol.loopexit:                       ; preds = %scalar.ph144.prol, %scalar.ph144.preheader
  %indvars.iv.i.i.i.i.i.i17.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph144.preheader ], [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph144.prol ]
  %i.xd = add nsw i64 %wide.trip.count.i.i.i.i.i.i16, -1
  %i.xe = icmp eq i64 %indvars.iv.i.i.i.i.i.i17.ph, %i.xd
  br i1 %i.xe, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.1, %scalar.ph144 ], [ %indvars.iv.i.i.i.i.i.i17.unr, %scalar.ph144.prol.loopexit ] ; 5 uses
  %i.xf = load double, ptr %i.gb, align 16, !tbaa !5265
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.i.i.i.i.i.i17
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !886
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.i.i.i.i.i.i17
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !886
  %i.xk = call double @llvm.fmuladd.f64(double %i.xf, double %i.xh, double %i.xj)
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.i.i.i.i.i.i17
  store double %i.xk, ptr %i.xl, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 3 uses
  %i.xm = load double, ptr %i.gb, align 16, !tbaa !5265
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !886
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !886
  %i.xr = call double @llvm.fmuladd.f64(double %i.xm, double %i.xo, double %i.xq)
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.next.i.i.i.i.i.i18
  store double %i.xr, ptr %i.xs, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i18.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i18.1, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i19.1, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph144, !llvm.loop !16852

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30: ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144, %scalar.ph112.prol.loopexit, %scalar.ph112, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block164, %middle.block127, %middle.block, %bb.ae, %bb.ad, %bb.ab
  %i.xt = add i8 %i.rh, -1
  %i.xu = add i8 %i.rg, 7
  %i.xv = and i8 %i.xu, 7
  br label %thread-pre-split37

thread-pre-split37:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30
  %i.xw = phi i8 [ %i.xt, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.pa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.xx = phi i8 [ %i.xv, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.pb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.xy = icmp eq i8 %i.xw, 0
  br i1 %i.xy, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split37
  %i.xz = phi i8 [ %i.qs, %.noexc ], [ %i.gh, %thread-pre-split37 ]
  %i.ya = phi i8 [ %i.qq, %.noexc ], [ %i.xw, %thread-pre-split37 ]
  %i.yb = phi i8 [ %i.pq, %.noexc ], [ %i.xx, %thread-pre-split37 ]
  %i.yc = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 15
  %i.ye = load atomic i8, ptr %i.yd monotonic, align 1
  %i.yf = icmp eq i8 %i.ye, -1
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8
  %.0.i.i = select i1 %i.yf, ptr %i.yh, ptr %i.yc
  %i.yi = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.yi, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.i, !llvm.loop !16853

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36: ; preds = %thread-pre-split37, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %scalar.ph184.prol.loopexit, %scalar.ph184, %scalar.ph216.prol.loopexit, %scalar.ph216, %scalar.ph238.prol.loopexit, %scalar.ph238, %middle.block209, %middle.block231, %middle.block253, %bb.g, %bb.f, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_012RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !895
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !909  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !908
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33, !inline_history !1241
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !1241
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !983
  %i.g = load i32, ptr %0, align 8, !tbaa !982
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !6032
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !6034
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
end_hunk_1
