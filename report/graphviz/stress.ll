Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %i.ra
  store float %i.ri, ptr %i.rj, align 4, !tbaa !48
  %i.rk = fpext float %i.ri to double
  %i.rl = fsub double %i.qz, %i.rk                ; 3 uses
  %i.rm = add nuw i64 %.0482678.i, 2              ; 2 uses
  %niter1008.next.1 = add nuw i64 %niter1008, 2   ; 2 uses
  %niter1008.ncmp.1 = icmp eq i64 %niter1008.next.1, %unroll_iter1007
  br i1 %niter1008.ncmp.1, label %.loopexit640.i.loopexit983.unr-lcssa, label %bb.br, !llvm.loop !95

.loopexit640.i.loopexit.unr-lcssa:                ; preds = %bb.bq
  %lcmp.mod1012.not = icmp eq i64 %xtraiter1010, 0
  br i1 %lcmp.mod1012.not, label %.loopexit640.i, label %.epil.preheader1009

.epil.preheader1009:                              ; preds = %.loopexit640.i.loopexit.unr-lcssa, %.lr.ph682.i
  %.0483681.i.epil.init = phi i64 [ 1, %.lr.ph682.i ], [ %i.qo, %.loopexit640.i.loopexit.unr-lcssa ] ; 4 uses
  %.0494680.i.epil.init = phi double [ 0.000000e+00, %.lr.ph682.i ], [ %i.qn, %.loopexit640.i.loopexit.unr-lcssa ]
  %lcmp.mod1014 = trunc i64 %i.pd to i1
  call void @llvm.assume(i1 %lcmp.mod1014)
  %i.rn = getelementptr [4 x i8], ptr %i.pn, i64 %.0483681.i.epil.init
  %i.ro = getelementptr i8, ptr %i.rn, i64 -4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !46
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %.0483681.i.epil.init
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !46
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %.0483681.i.epil.init
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !46
  %i.rt = sitofp i32 %i.rs to float               ; 2 uses
  %i.ru = fmul nnan float %i.rt, %i.rt
  %i.rv = fdiv float -1.000000e+00, %i.ru         ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %.0483681.i.epil.init
  store float %i.rv, ptr %i.rw, align 4, !tbaa !48
  %i.rx = fpext float %i.rv to double
  %i.ry = fsub double %.0494680.i.epil.init, %i.rx
  br label %.loopexit640.i

.loopexit640.i.loopexit983.unr-lcssa:             ; preds = %bb.br
  %lcmp.mod1004.not = icmp eq i64 %xtraiter1002, 0
  br i1 %lcmp.mod1004.not, label %.loopexit640.i, label %.epil.preheader1001

.epil.preheader1001:                              ; preds = %.loopexit640.i.loopexit983.unr-lcssa, %.lr.ph679.i
  %.0482678.i.epil.init = phi i64 [ 1, %.lr.ph679.i ], [ %i.rm, %.loopexit640.i.loopexit983.unr-lcssa ] ; 4 uses
  %.1495677.i.epil.init = phi double [ 0.000000e+00, %.lr.ph679.i ], [ %i.rl, %.loopexit640.i.loopexit983.unr-lcssa ]
  %lcmp.mod1006 = trunc i64 %i.pd to i1
  call void @llvm.assume(i1 %lcmp.mod1006)
  %i.rz = getelementptr [4 x i8], ptr %i.pk, i64 %.0482678.i.epil.init
  %i.sa = getelementptr i8, ptr %i.rz, i64 -4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !46
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %.0482678.i.epil.init
  store i32 %i.sb, ptr %i.sc, align 4, !tbaa !46
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %.0482678.i.epil.init
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !46
  %i.sf = sitofp i32 %i.se to float
  %i.sg = fdiv float -1.000000e+00, %i.sf         ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %.0482678.i.epil.init
  store float %i.sg, ptr %i.sh, align 4, !tbaa !48
  %i.si = fpext float %i.sg to double
  %i.sj = fsub double %.1495677.i.epil.init, %i.si
  br label %.loopexit640.i

.loopexit640.i:                                   ; preds = %.epil.preheader1001, %.loopexit640.i.loopexit983.unr-lcssa, %.epil.preheader1009, %.loopexit640.i.loopexit.unr-lcssa, %.preheader639.i, %.preheader641.i
  %.2.i434 = phi double [ %i.ry, %.epil.preheader1009 ], [ 0.000000e+00, %.preheader639.i ], [ 0.000000e+00, %.preheader641.i ], [ %i.qn, %.loopexit640.i.loopexit.unr-lcssa ], [ %i.rl, %.loopexit640.i.loopexit983.unr-lcssa ], [ %i.sj, %.epil.preheader1001 ]
  %i.sk = trunc nuw nsw i64 %indvars.iv770.i to i32
  store i32 %i.sk, ptr %.0497685.i, align 4, !tbaa !46
  %i.sl = fptrunc double %.2.i434 to float
  store float %i.sl, ptr %.0496686.i, align 4, !tbaa !48
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %i.pe
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %i.pe
  %indvars.iv.next771.i = add nuw nsw i64 %indvars.iv770.i, 1 ; 2 uses
  %exitcond774.not.i = icmp eq i64 %indvars.iv.next771.i, %i.ca
  br i1 %exitcond774.not.i, label %bb.bs, label %bb.bp, !llvm.loop !96

bb.bs:                                            ; preds = %.loopexit640.i
  %i.so = sext i32 %4 to i64                      ; 3 uses
  %.not.i605.not.i = icmp eq i32 %4, 0            ; 2 uses
  br i1 %.not.i605.not.i, label %.preheader635.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %mul.ov.i607.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i607.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.sp = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.sq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sp, ptr noundef nonnull @.str.14, i64 noundef %i.so, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.sr = call noalias ptr @calloc(i64 noundef %i.so, i64 noundef 8) #16 ; 24 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.st = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.su = shl nuw nsw i64 %i.so, 3
  %i.sv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.st, ptr noundef nonnull @.str.15, i64 noundef %i.su) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.sw = mul nuw nsw i32 %4, %i.bm
  %i.sx = zext nneg i32 %i.sw to i64              ; 2 uses
  %i.sy = call noalias ptr @calloc(i64 noundef %i.sx, i64 noundef 8) #16 ; 8 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.by, label %gv_calloc.exit614.i

bb.by:                                            ; preds = %bb.bx
  %i.ta = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.tb = shl nuw nsw i64 %i.sx, 3
  %i.tc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ta, ptr noundef nonnull @.str.15, i64 noundef %i.tb) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit614.i:                              ; preds = %bb.bx
  store ptr %i.sy, ptr %i.sr, align 8, !tbaa !12
  %.not897.i = icmp eq i32 %4, 1
  br i1 %.not897.i, label %.preheader637.preheader.i, label %.lr.ph688.preheader.i

.lr.ph688.preheader.i:                            ; preds = %gv_calloc.exit614.i
  %wide.trip.count778.i = zext nneg i32 %4 to i64 ; 3 uses
  %i.td = add nsw i64 %wide.trip.count778.i, -1   ; 2 uses
  %xtraiter1017 = and i64 %i.td, 3                ; 3 uses
  %i.te = add nsw i32 %4, -2
  %i.tf = icmp ult i32 %i.te, 3
  br i1 %i.tf, label %.lr.ph688.i.epil.preheader, label %.lr.ph688.preheader.i.new

.lr.ph688.preheader.i.new:                        ; preds = %.lr.ph688.preheader.i
  %unroll_iter1021 = and i64 %i.td, -4
  br label %.lr.ph688.i

.preheader635.thread.i:                           ; preds = %bb.bs
  %i.tg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16 ; 2 uses
  %i.th = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  store ptr %i.th, ptr %i.tg, align 8, !tbaa !12
  br label %._crit_edge697.i

.preheader637.preheader.i.loopexit.unr-lcssa:     ; preds = %.lr.ph688.i
  %lcmp.mod1019.not = icmp eq i64 %xtraiter1017, 0
  br i1 %lcmp.mod1019.not, label %.preheader637.preheader.i, label %.lr.ph688.i.epil.preheader

.lr.ph688.i.epil.preheader:                       ; preds = %.preheader637.preheader.i.loopexit.unr-lcssa, %.lr.ph688.preheader.i
  %indvars.iv775.i.epil.init = phi i64 [ 1, %.lr.ph688.preheader.i ], [ %indvars.iv.next776.i.3, %.preheader637.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod1020 = icmp ne i64 %xtraiter1017, 0
  call void @llvm.assume(i1 %lcmp.mod1020)
  br label %.lr.ph688.i.epil

.lr.ph688.i.epil:                                 ; preds = %.lr.ph688.i.epil, %.lr.ph688.i.epil.preheader
  %indvars.iv775.i.epil = phi i64 [ %indvars.iv775.i.epil.init, %.lr.ph688.i.epil.preheader ], [ %indvars.iv.next776.i.epil, %.lr.ph688.i.epil ] ; 3 uses
  %epil.iter1018 = phi i64 [ 0, %.lr.ph688.i.epil.preheader ], [ %epil.iter1018.next, %.lr.ph688.i.epil ]
  %i.ti = mul nuw nsw i64 %indvars.iv775.i.epil, %i.bn
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.ti
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv775.i.epil
  store ptr %i.tj, ptr %i.tk, align 8, !tbaa !12
  %indvars.iv.next776.i.epil = add nuw nsw i64 %indvars.iv775.i.epil, 1
  %epil.iter1018.next = add i64 %epil.iter1018, 1 ; 2 uses
  %epil.iter1018.cmp.not = icmp eq i64 %epil.iter1018.next, %xtraiter1017
  br i1 %epil.iter1018.cmp.not, label %.preheader637.preheader.i, label %.lr.ph688.i.epil, !llvm.loop !97

.preheader637.preheader.i:                        ; preds = %.preheader637.preheader.i.loopexit.unr-lcssa, %.lr.ph688.i.epil, %gv_calloc.exit614.i
  %wide.trip.count786.i.pre-phi = phi i64 [ 1, %gv_calloc.exit614.i ], [ %wide.trip.count778.i, %.lr.ph688.i.epil ], [ %wide.trip.count778.i, %.preheader637.preheader.i.loopexit.unr-lcssa ] ; 6 uses
  %i.tl = shl nuw nsw i64 %i.bn, 3                ; 10 uses
  %i.tm = add nsw i64 %wide.trip.count786.i.pre-phi, -1 ; 2 uses
  %xtraiter1023 = and i64 %wide.trip.count786.i.pre-phi, 7 ; 3 uses
  %i.tn = icmp ult i64 %i.tm, 7
  br i1 %i.tn, label %.preheader637.i.epil.preheader, label %.preheader637.preheader.i.new

.preheader637.preheader.i.new:                    ; preds = %.preheader637.preheader.i
  %unroll_iter1027 = and i64 %wide.trip.count786.i.pre-phi, 2147483640
  br label %.preheader637.i

.lr.ph688.i:                                      ; preds = %.lr.ph688.i, %.lr.ph688.preheader.i.new
  %indvars.iv775.i = phi i64 [ 1, %.lr.ph688.preheader.i.new ], [ %indvars.iv.next776.i.3, %.lr.ph688.i ] ; 6 uses
  %niter1022 = phi i64 [ 0, %.lr.ph688.preheader.i.new ], [ %niter1022.next.3, %.lr.ph688.i ]
  %i.to = mul nuw nsw i64 %indvars.iv775.i, %i.bn
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.to
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv775.i
  store ptr %i.tp, ptr %i.tq, align 8, !tbaa !12
  %indvars.iv.next776.i = add nuw nsw i64 %indvars.iv775.i, 1 ; 2 uses
  %i.tr = mul nuw nsw i64 %indvars.iv.next776.i, %i.bn
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tr
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next776.i
  store ptr %i.ts, ptr %i.tt, align 8, !tbaa !12
  %indvars.iv.next776.i.1 = add nuw nsw i64 %indvars.iv775.i, 2 ; 2 uses
  %i.tu = mul nuw nsw i64 %indvars.iv.next776.i.1, %i.bn
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tu
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next776.i.1
  store ptr %i.tv, ptr %i.tw, align 8, !tbaa !12
  %indvars.iv.next776.i.2 = add nuw nsw i64 %indvars.iv775.i, 3 ; 2 uses
  %i.tx = mul nuw nsw i64 %indvars.iv.next776.i.2, %i.bn
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.tx
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next776.i.2
  store ptr %i.ty, ptr %i.tz, align 8, !tbaa !12
  %indvars.iv.next776.i.3 = add nuw nsw i64 %indvars.iv775.i, 4 ; 2 uses
  %niter1022.next.3 = add nuw i64 %niter1022, 4   ; 2 uses
  %niter1022.ncmp.3 = icmp eq i64 %niter1022.next.3, %unroll_iter1021
  br i1 %niter1022.ncmp.3, label %.preheader637.preheader.i.loopexit.unr-lcssa, label %.lr.ph688.i, !llvm.loop !98

.preheader637.i:                                  ; preds = %.preheader637.i, %.preheader637.preheader.i.new
  %indvars.iv783.i = phi i64 [ 0, %.preheader637.preheader.i.new ], [ %indvars.iv.next784.i.7, %.preheader637.i ] ; 9 uses
  %niter1028 = phi i64 [ 0, %.preheader637.preheader.i.new ], [ %niter1028.next.7, %.preheader637.i ]
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ub, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ue, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uh, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uk, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.un, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uq, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 48
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ut, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 56
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uw, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %indvars.iv.next784.i.7 = add nuw nsw i64 %indvars.iv783.i, 8 ; 2 uses
  %niter1028.next.7 = add i64 %niter1028, 8       ; 2 uses
  %niter1028.ncmp.7 = icmp eq i64 %niter1028.next.7, %unroll_iter1027
  br i1 %niter1028.ncmp.7, label %._crit_edge.i435.unr-lcssa, label %.preheader637.i, !llvm.loop !99

._crit_edge.i435.unr-lcssa:                       ; preds = %.preheader637.i
  %lcmp.mod1025.not = icmp eq i64 %xtraiter1023, 0
  br i1 %lcmp.mod1025.not, label %._crit_edge.i435, label %.preheader637.i.epil.preheader

.preheader637.i.epil.preheader:                   ; preds = %._crit_edge.i435.unr-lcssa, %.preheader637.preheader.i
  %indvars.iv783.i.epil.init = phi i64 [ 0, %.preheader637.preheader.i ], [ %indvars.iv.next784.i.7, %._crit_edge.i435.unr-lcssa ]
  %lcmp.mod1026 = icmp ne i64 %xtraiter1023, 0
  call void @llvm.assume(i1 %lcmp.mod1026)
  br label %.preheader637.i.epil

.preheader637.i.epil:                             ; preds = %.preheader637.i.epil, %.preheader637.i.epil.preheader
  %indvars.iv783.i.epil = phi i64 [ %indvars.iv783.i.epil.init, %.preheader637.i.epil.preheader ], [ %indvars.iv.next784.i.epil, %.preheader637.i.epil ] ; 2 uses
  %epil.iter1024 = phi i64 [ 0, %.preheader637.i.epil.preheader ], [ %epil.iter1024.next, %.preheader637.i.epil ]
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv783.i.epil
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uy, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %indvars.iv.next784.i.epil = add nuw nsw i64 %indvars.iv783.i.epil, 1
  %epil.iter1024.next = add i64 %epil.iter1024, 1 ; 2 uses
  %epil.iter1024.cmp.not = icmp eq i64 %epil.iter1024.next, %xtraiter1023
  br i1 %epil.iter1024.cmp.not, label %._crit_edge.i435, label %.preheader637.i.epil, !llvm.loop !100

._crit_edge.i435:                                 ; preds = %.preheader637.i.epil, %._crit_edge.i435.unr-lcssa
  %.not545.i = icmp eq i32 %4, 2
  br i1 %.not545.i, label %bb.bz, label %.lr.ph692.i.preheader

.lr.ph692.i.preheader:                            ; preds = %._crit_edge.i435
  %xtraiter1029 = and i64 %wide.trip.count786.i.pre-phi, 3 ; 3 uses
  %i.uz = icmp ult i64 %i.tm, 3
  br i1 %i.uz, label %.lr.ph692.i.epil.preheader, label %.lr.ph692.i.preheader.new

.lr.ph692.i.preheader.new:                        ; preds = %.lr.ph692.i.preheader
  %unroll_iter1033 = and i64 %wide.trip.count786.i.pre-phi, 2147483644
  br label %.lr.ph692.i

.lr.ph692.i:                                      ; preds = %.lr.ph692.i, %.lr.ph692.i.preheader.new
  %indvars.iv788.i = phi i64 [ 0, %.lr.ph692.i.preheader.new ], [ %indvars.iv.next789.i.3, %.lr.ph692.i ] ; 6 uses
  %niter1034 = phi i64 [ 0, %.lr.ph692.i.preheader.new ], [ %niter1034.next.3, %.lr.ph692.i ]
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv788.i
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !12
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv788.i
  store double 1.000000e+00, ptr %i.vc, align 8, !tbaa !35
  %indvars.iv.next789.i = or disjoint i64 %indvars.iv788.i, 1 ; 2 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next789.i
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !12
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %indvars.iv.next789.i
  store double 1.000000e+00, ptr %i.vf, align 8, !tbaa !35
  %indvars.iv.next789.i.1 = or disjoint i64 %indvars.iv788.i, 2 ; 2 uses
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next789.i.1
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !12
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %indvars.iv.next789.i.1
  store double 1.000000e+00, ptr %i.vi, align 8, !tbaa !35
  %indvars.iv.next789.i.2 = or disjoint i64 %indvars.iv788.i, 3 ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.next789.i.2
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !12
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv.next789.i.2
  store double 1.000000e+00, ptr %i.vl, align 8, !tbaa !35
  %indvars.iv.next789.i.3 = add nuw nsw i64 %indvars.iv788.i, 4 ; 2 uses
  %niter1034.next.3 = add i64 %niter1034, 4       ; 2 uses
  %niter1034.ncmp.3 = icmp eq i64 %niter1034.next.3, %unroll_iter1033
  br i1 %niter1034.ncmp.3, label %.lr.ph696.i.preheader.loopexit.unr-lcssa, label %.lr.ph692.i, !llvm.loop !101

bb.bz:                                            ; preds = %._crit_edge.i435
  store double 1.000000e+00, ptr %i.sy, align 8, !tbaa !35
  %i.vm = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !12 ; 3 uses
  %i.vo = call zeroext i1 @iterativePCA_1D(ptr noundef nonnull %i.bo, i32 noundef %i.bm, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.vn) #15
  br i1 %i.vo, label %.lr.ph696.i.preheader, label %.preheader634.i

.preheader634.i:                                  ; preds = %bb.bz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vn, i8 0, i64 %i.tl, i1 false), !tbaa !35
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store double 1.000000e+00, ptr %i.vp, align 8, !tbaa !35
  br label %.lr.ph696.i.preheader

.lr.ph696.i.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph692.i
  %lcmp.mod1031.not = icmp eq i64 %xtraiter1029, 0
  br i1 %lcmp.mod1031.not, label %.lr.ph696.i.preheader, label %.lr.ph692.i.epil.preheader

.lr.ph692.i.epil.preheader:                       ; preds = %.lr.ph696.i.preheader.loopexit.unr-lcssa, %.lr.ph692.i.preheader
  %indvars.iv788.i.epil.init = phi i64 [ 0, %.lr.ph692.i.preheader ], [ %indvars.iv.next789.i.3, %.lr.ph696.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1032 = icmp ne i64 %xtraiter1029, 0
  call void @llvm.assume(i1 %lcmp.mod1032)
  br label %.lr.ph692.i.epil

.lr.ph692.i.epil:                                 ; preds = %.lr.ph692.i.epil, %.lr.ph692.i.epil.preheader
  %indvars.iv788.i.epil = phi i64 [ %indvars.iv.next789.i.epil, %.lr.ph692.i.epil ], [ %indvars.iv788.i.epil.init, %.lr.ph692.i.epil.preheader ] ; 3 uses
  %epil.iter1030 = phi i64 [ %epil.iter1030.next, %.lr.ph692.i.epil ], [ 0, %.lr.ph692.i.epil.preheader ]
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv788.i.epil
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !12
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv788.i.epil
  store double 1.000000e+00, ptr %i.vs, align 8, !tbaa !35
  %indvars.iv.next789.i.epil = add nuw nsw i64 %indvars.iv788.i.epil, 1
  %epil.iter1030.next = add i64 %epil.iter1030, 1 ; 2 uses
  %epil.iter1030.cmp.not = icmp eq i64 %epil.iter1030.next, %xtraiter1029
  br i1 %epil.iter1030.cmp.not, label %.lr.ph696.i.preheader, label %.lr.ph692.i.epil, !llvm.loop !102

.lr.ph696.i.preheader:                            ; preds = %.lr.ph696.i.preheader.loopexit.unr-lcssa, %.lr.ph692.i.epil, %.preheader634.i, %bb.bz
  br label %.lr.ph696.i

.lr.ph696.i:                                      ; preds = %.lr.ph696.i.preheader, %.lr.ph696.i
  %indvars.iv796.i = phi i64 [ %indvars.iv.next797.i, %.lr.ph696.i ], [ 0, %.lr.ph696.i.preheader ] ; 3 uses
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv796.i
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !12
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv796.i
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !12
  call void @right_mult_with_vector_transpose(ptr noundef nonnull %i.bo, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bm, ptr noundef %i.vu, ptr noundef %i.vw) #15
  %indvars.iv.next797.i = add nuw nsw i64 %indvars.iv796.i, 1 ; 2 uses
  %exitcond800.not.i = icmp eq i64 %indvars.iv.next797.i, %wide.trip.count786.i.pre-phi
  br i1 %exitcond800.not.i, label %._crit_edge697.i, label %.lr.ph696.i, !llvm.loop !103

._crit_edge697.i:                                 ; preds = %.lr.ph696.i, %.preheader635.thread.i
  %i.vx = phi ptr [ %i.tg, %.preheader635.thread.i ], [ %i.sr, %.lr.ph696.i ] ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !149
  store ptr null, ptr %i.c, align 8, !tbaa !149
  call void @mult_sparse_dense_mat_transpose(ptr noundef nonnull %i.od, ptr noundef nonnull %i.bo, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bm, ptr noundef nonnull %i.b) #15
  %i.vy = load ptr, ptr %i.b, align 8, !tbaa !149
  call void @mult_dense_mat(ptr noundef nonnull %i.bo, ptr noundef %i.vy, i32 noundef %i.bm, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bm, ptr noundef nonnull %i.c) #15
  %i.vz = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !56
  call void @free(ptr noundef %i.wa) #15
  %i.wb = load ptr, ptr %i.b, align 8, !tbaa !149
  call void @free(ptr noundef %i.wb) #15
  %i.wc = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 8) #16 ; 4 uses
  %i.wd = icmp eq ptr %i.wc, null
  br i1 %i.wd, label %bb.ca, label %gv_calloc.exit619.i

bb.ca:                                            ; preds = %._crit_edge697.i
  %i.we = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.wf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.we, ptr noundef nonnull @.str.15, i64 noundef %.idx.i) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit619.i:                              ; preds = %._crit_edge697.i
  %i.wg = call noalias ptr @calloc(i64 noundef %i.bn, i64 noundef 8) #16 ; 4 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %bb.cb, label %gv_calloc.exit624.i

bb.cb:                                            ; preds = %gv_calloc.exit619.i
  %i.wi = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.wj = shl nuw nsw i64 %i.bn, 3
  %i.wk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wi, ptr noundef nonnull @.str.15, i64 noundef %i.wj) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit624.i:                              ; preds = %gv_calloc.exit619.i
  %i.wl = call fastcc double @compute_stress1(ptr noundef %2, ptr noundef nonnull %i.ig, i32 noundef %4, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, 4) %i.e)
  %wide.trip.count809.i = zext nneg i32 %4 to i64 ; 2 uses
  br label %.preheader632.i

.preheader632.i:                                  ; preds = %bb.ci, %gv_calloc.exit624.i
  %.0492708.i = phi double [ %i.wl, %gv_calloc.exit624.i ], [ %.1493.i, %bb.ci ] ; 2 uses
  %.0529707.i = phi i32 [ 0, %gv_calloc.exit624.i ], [ %i.yr, %bb.ci ] ; 3 uses
  br i1 %.not.i605.not.i, label %._crit_edge706.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader632.i, %bb.cg
  %indvars.iv806.i = phi i64 [ %indvars.iv.next807.i, %bb.cg ], [ 0, %.preheader632.i ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv806.i ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge702.i, %.preheader.i
  %indvars.iv801.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next802.i, %._crit_edge702.i ] ; 6 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv801.i ; 5 uses
  store double 0.000000e+00, ptr %i.wn, align 8, !tbaa !35
  %i.wo = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %indvars.iv801.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !54
  %i.wr = getelementptr inbounds i8, ptr %i.wq, i64 -4
  %i.ws = getelementptr inbounds nuw [40 x i8], ptr %i.od, i64 %indvars.iv801.i ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !45
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !43
  %i.wx = load i64, ptr %i.ws, align 8, !tbaa !44
  %i.wy = icmp ugt i64 %i.wx, 1
  br i1 %i.wy, label %.lr.ph701.preheader.i, label %._crit_edge702.i

.lr.ph701.preheader.i:                            ; preds = %bb.cc
  %i.wz = trunc nuw nsw i64 %indvars.iv801.i to i32
  br label %.lr.ph701.i

._crit_edge702.loopexit.i:                        ; preds = %bb.ce
  %.pre.i = load double, ptr %i.wn, align 8, !tbaa !35
  br label %._crit_edge702.i

._crit_edge702.i:                                 ; preds = %._crit_edge702.loopexit.i, %bb.cc
  %i.xa = phi double [ 0.000000e+00, %bb.cc ], [ %.pre.i, %._crit_edge702.loopexit.i ]
  %.3.lcssa.i = phi double [ 0.000000e+00, %bb.cc ], [ %.4.i, %._crit_edge702.loopexit.i ]
  %i.xb = load ptr, ptr %i.wm, align 8, !tbaa !12
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv801.i
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !35
  %i.xe = call double @llvm.fmuladd.f64(double %.3.lcssa.i, double %i.xd, double %i.xa)
  store double %i.xe, ptr %i.wn, align 8, !tbaa !35
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %exitcond805.not.i = icmp eq i64 %indvars.iv.next802.i, %i.ca
  br i1 %exitcond805.not.i, label %bb.cf, label %bb.cc, !llvm.loop !104

.lr.ph701.i:                                      ; preds = %bb.ce, %.lr.ph701.preheader.i
  %.0699.i = phi i64 [ %i.xz, %bb.ce ], [ 1, %.lr.ph701.preheader.i ] ; 4 uses
  %.3698.i = phi double [ %.4.i, %bb.ce ], [ 0.000000e+00, %.lr.ph701.preheader.i ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.0699.i
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !46 ; 2 uses
  %i.xh = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %i.wz, i32 noundef %i.xg) #15 ; 2 uses
  %i.xi = fcmp ogt double %i.xh, 1.000000e-30
  br i1 %i.xi, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph701.i
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %.0699.i
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !48
  %i.xl = fneg float %i.xk
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %.0699.i
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !46
  %i.xo = sitofp i32 %i.xn to float
  %i.xp = fmul float %i.xl, %i.xo
  %i.xq = fpext float %i.xp to double
  %i.xr = fdiv double %i.xq, %i.xh                ; 2 uses
  %i.xs = fsub double %.3698.i, %i.xr
  %i.xt = load ptr, ptr %i.wm, align 8, !tbaa !12
  %i.xu = sext i32 %i.xg to i64
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.xu
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !35
  %i.xx = load double, ptr %i.wn, align 8, !tbaa !35
  %i.xy = call double @llvm.fmuladd.f64(double %i.xr, double %i.xw, double %i.xx)
  store double %i.xy, ptr %i.wn, align 8, !tbaa !35
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph701.i
  %.4.i = phi double [ %i.xs, %bb.cd ], [ %.3698.i, %.lr.ph701.i ] ; 2 uses
  %i.xz = add nuw i64 %.0699.i, 1                 ; 2 uses
  %i.ya = load i64, ptr %i.ws, align 8, !tbaa !44
  %i.yb = icmp ult i64 %i.xz, %i.ya
  br i1 %i.yb, label %.lr.ph701.i, label %._crit_edge702.loopexit.i, !llvm.loop !105

bb.cf:                                            ; preds = %._crit_edge702.i
  call void @right_mult_with_vector_d(ptr noundef nonnull %i.bo, i32 noundef %i.bm, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.wc, ptr noundef nonnull %i.wg) #15
  %i.yc = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %indvars.iv806.i ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !12
  %i.yf = call i32 @conjugate_gradient_f(ptr noundef %i.yc, ptr noundef %i.ye, ptr noundef nonnull %i.wg, i32 noundef %i.bm, double noundef 1.000000e-03, i32 noundef %i.bm, i1 noundef zeroext false) #15
  %.not548.i = icmp eq i32 %i.yf, 0
  br i1 %.not548.i, label %bb.cg, label %.loopexit.i

bb.cg:                                            ; preds = %bb.cf
  %i.yg = load ptr, ptr %i.yd, align 8, !tbaa !12
  %i.yh = load ptr, ptr %i.wm, align 8, !tbaa !12
  call void @right_mult_with_vector_transpose(ptr noundef nonnull %i.bo, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bm, ptr noundef %i.yg, ptr noundef %i.yh) #15
  %indvars.iv.next807.i = add nuw nsw i64 %indvars.iv806.i, 1 ; 2 uses
  %exitcond810.not.i = icmp eq i64 %indvars.iv.next807.i, %wide.trip.count809.i
  br i1 %exitcond810.not.i, label %._crit_edge706.i, label %.preheader.i, !llvm.loop !106

._crit_edge706.i:                                 ; preds = %bb.cg, %.preheader632.i
  %i.yi = and i32 %.0529707.i, 1
  %i.yj = icmp eq i32 %i.yi, 0
  br i1 %i.yj, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge706.i
  %i.yk = call fastcc double @compute_stress1(ptr noundef %2, ptr noundef nonnull %i.ig, i32 noundef %4, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, 4) %i.e) ; 3 uses
  %i.yl = fsub double %i.yk, %.0492708.i
  %i.ym = call double @llvm.fabs.f64(double %i.yl)
  %i.yn = fadd double %i.yk, 1.000000e-10
  %i.yo = fdiv double %i.ym, %i.yn
  %i.yp = load double, ptr @Epsilon, align 8, !tbaa !35
  %i.yq = fcmp olt double %i.yo, %i.yp
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge706.i
  %.1493.i = phi double [ %i.yk, %bb.ch ], [ %.0492708.i, %._crit_edge706.i ]
  %.1491.i = phi i1 [ %i.yq, %bb.ch ], [ false, %._crit_edge706.i ]
  %i.yr = add nuw nsw i32 %.0529707.i, 1
  %i.ys = icmp samesign ugt i32 %.0529707.i, 48
  %.not547.i = select i1 %i.ys, i1 true, i1 %.1491.i
end_hunk_0
