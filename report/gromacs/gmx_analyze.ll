Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_analyze?download=true
inline.NumInlined: 346
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z11gmx_analyzeiPPc:bb.a
  %i.qu = load i32, ptr %i.y, align 4, !tbaa !9   ; 4 uses
  %i.qv = load float, ptr %i.aa, align 4, !tbaa !28 ; 2 uses
  %i.qw = fmul float %i.qv, 2.000000e+00
  %i.qx = fdiv float %i.qr, %i.qw
  %i.qy = fptosi float %i.qx to i32               ; 10 uses
  %i.qz = add i32 %i.qy, 1                        ; 3 uses
  %i.ra = sext i32 %i.qz to i64
  %i.rb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.150, i32 noundef 782, i64 noundef range(i64 -2147483648, 2147483648) %i.ra, i64 noundef 8)
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 21 uses

.noexc206:                                        ; preds = %bb.bm
  store double 1.000000e+00, ptr %i.rb, align 8, !tbaa !74
  %.not74.i = icmp slt i32 %i.qy, 1               ; 2 uses
  br i1 %.not74.i, label %.preheader73.i, label %.lr.ph.i203

.lr.ph.i203:                                      ; preds = %.noexc206
  %i.rc = fpext float %i.qv to double
  %i.rd = fmul double %i.rc, f0x400921FB54442D18  ; 5 uses
  %i.re = fpext float %i.qr to double             ; 5 uses
  %wide.trip.count.i = zext i32 %i.qz to i64      ; 3 uses
  %i.rf = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter1165 = and i64 %i.rf, 3                ; 3 uses
  %i.rg = icmp ult i32 %i.qy, 4
  br i1 %i.rg, label %.epil.preheader1164, label %.lr.ph.i203.new

.lr.ph.i203.new:                                  ; preds = %.lr.ph.i203
  %unroll_iter1170 = and i64 %i.rf, -4
  br label %bb.bo

.preheader73.i:                                   ; preds = %.noexc206
  %.not6677.i = icmp slt i32 %i.qy, 0
  br i1 %.not6677.i, label %._crit_edge.i, label %iter.check940

iter.check940.loopexit.unr-lcssa:                 ; preds = %bb.bo
  %lcmp.mod1167.not = icmp eq i64 %xtraiter1165, 0
  br i1 %lcmp.mod1167.not, label %iter.check940, label %.epil.preheader1164

.epil.preheader1164:                              ; preds = %iter.check940.loopexit.unr-lcssa, %.lr.ph.i203
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i203 ], [ %indvars.iv.next.i.3, %iter.check940.loopexit.unr-lcssa ]
  %.06076.i.epil.init = phi double [ 1.000000e+00, %.lr.ph.i203 ], [ %i.tc, %iter.check940.loopexit.unr-lcssa ]
  %lcmp.mod1169 = icmp ne i64 %xtraiter1165, 0
  call void @llvm.assume(i1 %lcmp.mod1169)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader1164
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader1164 ], [ %indvars.iv.next.i.epil, %bb.bn ] ; 3 uses
  %.06076.i.epil = phi double [ %.06076.i.epil.init, %.epil.preheader1164 ], [ %i.rn, %bb.bn ]
  %epil.iter1166 = phi i64 [ 0, %.epil.preheader1164 ], [ %epil.iter1166.next, %bb.bn ]
  %i.rh = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.ri = uitofp nneg i32 %i.rh to double
  %i.rj = fmul double %i.rd, %i.ri
  %i.rk = fdiv double %i.rj, %i.re
  %i.rl = call double @cos(double noundef %i.rk) #23 ; 2 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i.epil
  store double %i.rl, ptr %i.rm, align 8, !tbaa !74
  %i.rn = call double @llvm.fmuladd.f64(double %i.rl, double 2.000000e+00, double %.06076.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter1166.next = add i64 %epil.iter1166, 1 ; 2 uses
  %epil.iter1166.cmp.not = icmp eq i64 %epil.iter1166.next, %xtraiter1165
  br i1 %epil.iter1166.cmp.not, label %iter.check940, label %bb.bn, !llvm.loop !77

iter.check940:                                    ; preds = %iter.check940.loopexit.unr-lcssa, %bb.bn, %.preheader73.i
  %wide.trip.count114.i.pre-phi = phi i64 [ 1, %.preheader73.i ], [ %wide.trip.count.i, %bb.bn ], [ %wide.trip.count.i, %iter.check940.loopexit.unr-lcssa ] ; 8 uses
  %.060.lcssa146.i = phi double [ 1.000000e+00, %.preheader73.i ], [ %i.tc, %iter.check940.loopexit.unr-lcssa ], [ %i.rn, %bb.bn ] ; 3 uses
  %min.iters.check923 = icmp samesign ult i64 %wide.trip.count114.i.pre-phi, 4
  br i1 %min.iters.check923, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check924

vector.main.loop.iter.check924:                   ; preds = %iter.check940
  %min.iters.check925 = icmp samesign ult i64 %wide.trip.count114.i.pre-phi, 16
  br i1 %min.iters.check925, label %vec.epilog.ph944, label %vector.ph926

vector.ph926:                                     ; preds = %vector.main.loop.iter.check924
  %i.ro = and i64 %wide.trip.count114.i.pre-phi, 12
  %n.vec927 = and i64 %wide.trip.count114.i.pre-phi, 4294967280 ; 4 uses
  %broadcast.splatinsert928 = insertelement <4 x double> poison, double %.060.lcssa146.i, i64 0
  %broadcast.splat929 = shufflevector <4 x double> %broadcast.splatinsert928, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph926
  %index931 = phi i64 [ 0, %vector.ph926 ], [ %index.next936, %vector.body930 ] ; 2 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %index931 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 32 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 64 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 96 ; 2 uses
  %wide.load932 = load <4 x double>, ptr %i.rp, align 8, !tbaa !74
  %wide.load933 = load <4 x double>, ptr %i.rq, align 8, !tbaa !74
  %wide.load934 = load <4 x double>, ptr %i.rr, align 8, !tbaa !74
  %wide.load935 = load <4 x double>, ptr %i.rs, align 8, !tbaa !74
  %i.rt = fdiv <4 x double> %wide.load932, %broadcast.splat929
  %i.ru = fdiv <4 x double> %wide.load933, %broadcast.splat929
  %i.rv = fdiv <4 x double> %wide.load934, %broadcast.splat929
  %i.rw = fdiv <4 x double> %wide.load935, %broadcast.splat929
  store <4 x double> %i.rt, ptr %i.rp, align 8, !tbaa !74
  store <4 x double> %i.ru, ptr %i.rq, align 8, !tbaa !74
  store <4 x double> %i.rv, ptr %i.rr, align 8, !tbaa !74
  store <4 x double> %i.rw, ptr %i.rs, align 8, !tbaa !74
  %index.next936 = add nuw i64 %index931, 16      ; 2 uses
  %i.rx = icmp eq i64 %index.next936, %n.vec927
  br i1 %i.rx, label %middle.block937, label %vector.body930, !llvm.loop !78

middle.block937:                                  ; preds = %vector.body930
  %cmp.n938 = icmp eq i64 %wide.trip.count114.i.pre-phi, %n.vec927
  br i1 %cmp.n938, label %._crit_edge.i, label %vec.epilog.iter.check942

vec.epilog.iter.check942:                         ; preds = %middle.block937
  %min.epilog.iters.check943 = icmp eq i64 %i.ro, 0
  br i1 %min.epilog.iters.check943, label %.lr.ph79.i.preheader, label %vec.epilog.ph944, !prof !79

vec.epilog.ph944:                                 ; preds = %vector.main.loop.iter.check924, %vec.epilog.iter.check942
  %vec.epilog.resume.val939 = phi i64 [ %n.vec927, %vec.epilog.iter.check942 ], [ 0, %vector.main.loop.iter.check924 ]
  %n.vec945 = and i64 %wide.trip.count114.i.pre-phi, 4294967292 ; 3 uses
  %broadcast.splatinsert946 = insertelement <4 x double> poison, double %.060.lcssa146.i, i64 0
  %broadcast.splat947 = shufflevector <4 x double> %broadcast.splatinsert946, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body948

vec.epilog.vector.body948:                        ; preds = %vec.epilog.vector.body948, %vec.epilog.ph944
  %index949 = phi i64 [ %vec.epilog.resume.val939, %vec.epilog.ph944 ], [ %index.next951, %vec.epilog.vector.body948 ] ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %index949 ; 2 uses
  %wide.load950 = load <4 x double>, ptr %i.ry, align 8, !tbaa !74
  %i.rz = fdiv <4 x double> %wide.load950, %broadcast.splat947
  store <4 x double> %i.rz, ptr %i.ry, align 8, !tbaa !74
  %index.next951 = add nuw i64 %index949, 4       ; 2 uses
  %i.sa = icmp eq i64 %index.next951, %n.vec945
  br i1 %i.sa, label %vec.epilog.middle.block952, label %vec.epilog.vector.body948, !llvm.loop !80

vec.epilog.middle.block952:                       ; preds = %vec.epilog.vector.body948
  %cmp.n953 = icmp eq i64 %wide.trip.count114.i.pre-phi, %n.vec945
  br i1 %cmp.n953, label %._crit_edge.i, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %iter.check940, %vec.epilog.iter.check942, %vec.epilog.middle.block952
  %indvars.iv111.i.ph = phi i64 [ 0, %iter.check940 ], [ %n.vec927, %vec.epilog.iter.check942 ], [ %n.vec945, %vec.epilog.middle.block952 ]
  br label %.lr.ph79.i

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i203.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i203.new ], [ %indvars.iv.next.i.3, %bb.bo ] ; 6 uses
  %.06076.i = phi double [ 1.000000e+00, %.lr.ph.i203.new ], [ %i.tc, %bb.bo ]
  %niter1171 = phi i64 [ 0, %.lr.ph.i203.new ], [ %niter1171.next.3, %bb.bo ]
  %i.sb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.sc = uitofp nneg i32 %i.sb to double
  %i.sd = fmul double %i.rd, %i.sc
  %i.se = fdiv double %i.sd, %i.re
  %i.sf = call double @cos(double noundef %i.se) #23 ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i
  store double %i.sf, ptr %i.sg, align 8, !tbaa !74
  %i.sh = call double @llvm.fmuladd.f64(double %i.sf, double 2.000000e+00, double %.06076.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.si = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.sj = uitofp nneg i32 %i.si to double
  %i.sk = fmul double %i.rd, %i.sj
  %i.sl = fdiv double %i.sk, %i.re
  %i.sm = call double @cos(double noundef %i.sl) #23 ; 2 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.next.i
  store double %i.sm, ptr %i.sn, align 8, !tbaa !74
  %i.so = call double @llvm.fmuladd.f64(double %i.sm, double 2.000000e+00, double %i.sh)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.sp = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.sq = uitofp nneg i32 %i.sp to double
  %i.sr = fmul double %i.rd, %i.sq
  %i.ss = fdiv double %i.sr, %i.re
  %i.st = call double @cos(double noundef %i.ss) #23 ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.next.i.1
  store double %i.st, ptr %i.su, align 8, !tbaa !74
  %i.sv = call double @llvm.fmuladd.f64(double %i.st, double 2.000000e+00, double %i.so)
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.sw = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.sx = uitofp nneg i32 %i.sw to double
  %i.sy = fmul double %i.rd, %i.sx
  %i.sz = fdiv double %i.sy, %i.re
  %i.ta = call double @cos(double noundef %i.sz) #23 ; 2 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.next.i.2
  store double %i.ta, ptr %i.tb, align 8, !tbaa !74
  %i.tc = call double @llvm.fmuladd.f64(double %i.ta, double 2.000000e+00, double %i.sv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter1171.next.3 = add i64 %niter1171, 4       ; 2 uses
  %niter1171.ncmp.3 = icmp eq i64 %niter1171.next.3, %unroll_iter1170
  br i1 %niter1171.ncmp.3, label %iter.check940.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !81

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %.lr.ph79.i ], [ %indvars.iv111.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv111.i ; 2 uses
  %i.te = load double, ptr %i.td, align 8, !tbaa !74
  %i.tf = fdiv double %i.te, %.060.lcssa146.i
  store double %i.tf, ptr %i.td, align 8, !tbaa !74
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count114.i.pre-phi
  br i1 %exitcond115.not.i, label %._crit_edge.i, label %.lr.ph79.i, !llvm.loop !82

._crit_edge.i:                                    ; preds = %.lr.ph79.i, %middle.block937, %vec.epilog.middle.block952, %.preheader73.i
  %i.tg = load ptr, ptr @stdout, align 8, !tbaa !83
  %i.th = shl nsw i32 %i.qy, 1                    ; 2 uses
  %i.ti = sub nsw i32 %i.qt, %i.th                ; 2 uses
  %i.tj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tg, ptr noundef nonnull @.str.187, i32 noundef %i.ti) #23 ; 0 uses
  %i.tk = load ptr, ptr @stdout, align 8, !tbaa !83
  %i.tl = fpext float %i.qr to double
  %i.tm = or disjoint i32 %i.th, 1
  %i.tn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tk, ptr noundef nonnull @.str.188, double noundef %i.tl, i32 noundef %i.tm) #23 ; 0 uses
  %i.to = icmp sgt i32 %i.qu, 0
  br i1 %i.to, label %.preheader.lr.ph.i, label %._crit_edge94.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge.i
  %i.tp = sub nsw i32 %i.qt, %i.qy                ; 2 uses
  %i.tq = icmp sgt i32 %i.tp, %i.qy
  %i.tr = sitofp i32 %i.ti to double              ; 3 uses
  br i1 %i.tq, label %.preheader.lr.ph.split.us.i, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %wide.trip.count140.i = zext nneg i32 %i.qu to i64 ; 2 uses
  %wide.trip.count135.i = sext i32 %i.tp to i64   ; 2 uses
  br i1 %.not74.i, label %.preheader.us.us.preheader.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.us.i
  %i.ts = zext nneg i32 %i.qy to i64              ; 3 uses
  %wide.trip.count120.i = zext nneg i32 %i.qz to i64
  %i.tt = add nsw i64 %wide.trip.count120.i, -1   ; 2 uses
  %xtraiter1173 = and i64 %i.tt, 7                ; 3 uses
  %i.tu = icmp ult i32 %i.qy, 8
  %unroll_iter1178 = and i64 %i.tt, -8
  %lcmp.mod1175.not = icmp eq i64 %xtraiter1173, 0
  %lcmp.mod1177 = icmp ne i64 %xtraiter1173, 0
  br label %.preheader.us.i

.preheader.us.us.preheader.i:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.tv = sext i32 %i.qy to i64                   ; 3 uses
  %i.tw = sext i32 %i.qt to i64                   ; 2 uses
  %i.tx = shl nsw i64 %i.tv, 1                    ; 2 uses
  %i.ty = sub nsw i64 %i.tw, %i.tx
  %xtraiter1180 = and i64 %i.ty, 3                ; 2 uses
  %lcmp.mod1181.not = icmp eq i64 %xtraiter1180, 0
  %i.tz = sub nsw i64 %i.tx, %i.tw
  %i.ua = icmp ugt i64 %i.tz, -4
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge90.split.us.us.us.i, %.preheader.us.us.preheader.i
  %indvars.iv137.i = phi i64 [ 0, %.preheader.us.us.preheader.i ], [ %indvars.iv.next138.i, %._crit_edge90.split.us.us.us.i ] ; 2 uses
  %.093.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.preheader.i ], [ %i.vr, %._crit_edge90.split.us.us.us.i ]
  %i.ub = load double, ptr %i.rb, align 8, !tbaa !74 ; 5 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv137.i
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !36 ; 5 uses
  br i1 %lcmp.mod1181.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us.us.i, %.prol.preheader
  %indvars.iv132.i.prol = phi i64 [ %indvars.iv.next133.i.prol, %.prol.preheader ], [ %i.tv, %.preheader.us.us.i ] ; 2 uses
  %.05888.us.us.us.i.prol = phi double [ %i.uk, %.prol.preheader ], [ 0.000000e+00, %.preheader.us.us.i ]
  %prol.iter1182 = phi i64 [ %prol.iter1182.next, %.prol.preheader ], [ 0, %.preheader.us.us.i ]
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %indvars.iv132.i.prol
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !28
  %i.ug = fpext float %i.uf to double             ; 2 uses
  %i.uh = fmul double %i.ub, %i.ug
  %i.ui = fsub double %i.ug, %i.uh                ; 2 uses
  %i.uj = fmul double %i.ui, %i.ui
  %i.uk = fadd double %.05888.us.us.us.i.prol, %i.uj ; 3 uses
  %indvars.iv.next133.i.prol = add nsw i64 %indvars.iv132.i.prol, 1 ; 2 uses
  %prol.iter1182.next = add i64 %prol.iter1182, 1 ; 2 uses
  %prol.iter1182.cmp.not = icmp eq i64 %prol.iter1182.next, %xtraiter1180
  br i1 %prol.iter1182.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !85

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.us.us.i
  %.lcssa1137.unr = phi double [ poison, %.preheader.us.us.i ], [ %i.uk, %.prol.preheader ]
  %indvars.iv132.i.unr = phi i64 [ %i.tv, %.preheader.us.us.i ], [ %indvars.iv.next133.i.prol, %.prol.preheader ]
  %.05888.us.us.us.i.unr = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.uk, %.prol.preheader ]
  br i1 %i.ua, label %._crit_edge90.split.us.us.us.i, label %.preheader.us.us.i.new

.preheader.us.us.i.new:                           ; preds = %.prol.loopexit, %.preheader.us.us.i.new
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i.3, %.preheader.us.us.i.new ], [ %indvars.iv132.i.unr, %.prol.loopexit ] ; 5 uses
  %.05888.us.us.us.i = phi double [ %i.vp, %.preheader.us.us.i.new ], [ %.05888.us.us.us.i.unr, %.prol.loopexit ]
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %indvars.iv132.i
  %i.um = load float, ptr %i.ul, align 4, !tbaa !28
  %i.un = fpext float %i.um to double             ; 2 uses
  %i.uo = fmul double %i.ub, %i.un
  %i.up = fsub double %i.un, %i.uo                ; 2 uses
  %i.uq = fmul double %i.up, %i.up
  %i.ur = fadd double %.05888.us.us.us.i, %i.uq
  %i.us = getelementptr [4 x i8], ptr %i.ud, i64 %indvars.iv132.i
  %i.ut = getelementptr i8, ptr %i.us, i64 4
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !28
  %i.uv = fpext float %i.uu to double             ; 2 uses
  %i.uw = fmul double %i.ub, %i.uv
  %i.ux = fsub double %i.uv, %i.uw                ; 2 uses
  %i.uy = fmul double %i.ux, %i.ux
  %i.uz = fadd double %i.ur, %i.uy
  %i.va = getelementptr [4 x i8], ptr %i.ud, i64 %indvars.iv132.i
  %i.vb = getelementptr i8, ptr %i.va, i64 8
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !28
  %i.vd = fpext float %i.vc to double             ; 2 uses
  %i.ve = fmul double %i.ub, %i.vd
  %i.vf = fsub double %i.vd, %i.ve                ; 2 uses
  %i.vg = fmul double %i.vf, %i.vf
  %i.vh = fadd double %i.uz, %i.vg
  %i.vi = getelementptr [4 x i8], ptr %i.ud, i64 %indvars.iv132.i
  %i.vj = getelementptr i8, ptr %i.vi, i64 12
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !28
  %i.vl = fpext float %i.vk to double             ; 2 uses
  %i.vm = fmul double %i.ub, %i.vl
  %i.vn = fsub double %i.vl, %i.vm                ; 2 uses
  %i.vo = fmul double %i.vn, %i.vn
  %i.vp = fadd double %i.vh, %i.vo                ; 2 uses
  %indvars.iv.next133.i.3 = add nsw i64 %indvars.iv132.i, 4 ; 2 uses
  %exitcond136.not.i.3 = icmp eq i64 %indvars.iv.next133.i.3, %wide.trip.count135.i
  br i1 %exitcond136.not.i.3, label %._crit_edge90.split.us.us.us.i, label %.preheader.us.us.i.new, !llvm.loop !86

._crit_edge90.split.us.us.us.i:                   ; preds = %.preheader.us.us.i.new, %.prol.loopexit
  %.lcssa1137 = phi double [ %.lcssa1137.unr, %.prol.loopexit ], [ %i.vp, %.preheader.us.us.i.new ]
  %i.vq = fdiv double %.lcssa1137, %i.tr          ; 2 uses
  %i.vr = fadd double %.093.us.us.i, %i.vq        ; 2 uses
  %i.vs = load ptr, ptr @stdout, align 8, !tbaa !83
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 3 uses
  %i.vt = call double @sqrt(double noundef %i.vq) #23
  %i.vu = trunc nuw nsw i64 %indvars.iv.next138.i to i32
  %i.vv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vs, ptr noundef nonnull @.str.189, i32 noundef %i.vu, double noundef %i.vt) #23 ; 0 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %._crit_edge94.i, label %.preheader.us.us.i, !llvm.loop !87

.preheader.us.i:                                  ; preds = %._crit_edge90.split.us98.i, %.preheader.us.preheader.i
  %indvars.iv127.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next128.i, %._crit_edge90.split.us98.i ] ; 2 uses
  %.093.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.xv, %._crit_edge90.split.us98.i ]
  %i.vw = load double, ptr %i.rb, align 8, !tbaa !74
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv127.i
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !36 ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.ts
  br label %.lr.ph84.us.i

.lr.ph84.us.i:                                    ; preds = %._crit_edge85.us.i, %.preheader.us.i
  %indvars.iv122.i = phi i64 [ %i.ts, %.preheader.us.i ], [ %indvars.iv.next123.i, %._crit_edge85.us.i ] ; 4 uses
  %.05888.us96.i = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.xt, %._crit_edge85.us.i ]
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %indvars.iv122.i
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !28
  %i.wb = fpext float %i.wa to double             ; 2 uses
  %i.wc = fmul double %i.vw, %i.wb                ; 2 uses
  %i.wd = sub nuw nsw i64 %indvars.iv122.i, %i.ts
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.wd
  %i.wf = load float, ptr %i.we, align 4, !tbaa !28
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv122.i
  %i.wg = load float, ptr %gep.i, align 4, !tbaa !28
  %i.wh = fadd float %i.wf, %i.wg
  %i.wi = fpext float %i.wh to double             ; 9 uses
  br i1 %i.tu, label %.epil.preheader1172, label %.lr.ph84.us.i.new

.lr.ph84.us.i.new:                                ; preds = %.lr.ph84.us.i, %.lr.ph84.us.i.new
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i.7, %.lr.ph84.us.i.new ], [ 1, %.lr.ph84.us.i ] ; 9 uses
  %.05982.us.i = phi double [ %i.xn, %.lr.ph84.us.i.new ], [ %i.wc, %.lr.ph84.us.i ]
  %niter1179 = phi i64 [ %niter1179.next.7, %.lr.ph84.us.i.new ], [ 0, %.lr.ph84.us.i ]
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !74
  %i.wl = call double @llvm.fmuladd.f64(double %i.wk, double %i.wi, double %.05982.us.i)
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !74
  %i.wp = call double @llvm.fmuladd.f64(double %i.wo, double %i.wi, double %i.wl)
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !74
  %i.wt = call double @llvm.fmuladd.f64(double %i.ws, double %i.wi, double %i.wp)
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !74
  %i.wx = call double @llvm.fmuladd.f64(double %i.ww, double %i.wi, double %i.wt)
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !74
  %i.xb = call double @llvm.fmuladd.f64(double %i.xa, double %i.wi, double %i.wx)
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 40
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !74
  %i.xf = call double @llvm.fmuladd.f64(double %i.xe, double %i.wi, double %i.xb)
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 48
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !74
  %i.xj = call double @llvm.fmuladd.f64(double %i.xi, double %i.wi, double %i.xf)
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 56
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !74
  %i.xn = call double @llvm.fmuladd.f64(double %i.xm, double %i.wi, double %i.xj) ; 3 uses
  %indvars.iv.next118.i.7 = add nuw nsw i64 %indvars.iv117.i, 8 ; 2 uses
  %niter1179.next.7 = add i64 %niter1179, 8       ; 2 uses
  %niter1179.ncmp.7 = icmp eq i64 %niter1179.next.7, %unroll_iter1178
  br i1 %niter1179.ncmp.7, label %._crit_edge85.us.i.unr-lcssa, label %.lr.ph84.us.i.new, !llvm.loop !88

._crit_edge85.us.i.unr-lcssa:                     ; preds = %.lr.ph84.us.i.new
  br i1 %lcmp.mod1175.not, label %._crit_edge85.us.i, label %.epil.preheader1172

.epil.preheader1172:                              ; preds = %._crit_edge85.us.i.unr-lcssa, %.lr.ph84.us.i
  %indvars.iv117.i.epil.init = phi i64 [ 1, %.lr.ph84.us.i ], [ %indvars.iv.next118.i.7, %._crit_edge85.us.i.unr-lcssa ]
  %.05982.us.i.epil.init = phi double [ %i.wc, %.lr.ph84.us.i ], [ %i.xn, %._crit_edge85.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1177)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader1172
  %indvars.iv117.i.epil = phi i64 [ %indvars.iv.next118.i.epil, %bb.bp ], [ %indvars.iv117.i.epil.init, %.epil.preheader1172 ] ; 2 uses
  %.05982.us.i.epil = phi double [ %i.xq, %bb.bp ], [ %.05982.us.i.epil.init, %.epil.preheader1172 ]
  %epil.iter1174 = phi i64 [ %epil.iter1174.next, %bb.bp ], [ 0, %.epil.preheader1172 ]
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv117.i.epil
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !74
  %i.xq = call double @llvm.fmuladd.f64(double %i.xp, double %i.wi, double %.05982.us.i.epil) ; 2 uses
  %indvars.iv.next118.i.epil = add nuw nsw i64 %indvars.iv117.i.epil, 1
  %epil.iter1174.next = add i64 %epil.iter1174, 1 ; 2 uses
  %epil.iter1174.cmp.not = icmp eq i64 %epil.iter1174.next, %xtraiter1173
  br i1 %epil.iter1174.cmp.not, label %._crit_edge85.us.i, label %bb.bp, !llvm.loop !89

._crit_edge85.us.i:                               ; preds = %bb.bp, %._crit_edge85.us.i.unr-lcssa
  %.lcssa1140 = phi double [ %i.xn, %._crit_edge85.us.i.unr-lcssa ], [ %i.xq, %bb.bp ]
  %i.xr = fsub double %i.wb, %.lcssa1140          ; 2 uses
  %i.xs = fmul double %i.xr, %i.xr
  %i.xt = fadd double %.05888.us96.i, %i.xs       ; 2 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count135.i
  br i1 %exitcond126.not.i, label %._crit_edge90.split.us98.i, label %.lr.ph84.us.i, !llvm.loop !86

._crit_edge90.split.us98.i:                       ; preds = %._crit_edge85.us.i
  %i.xu = fdiv double %i.xt, %i.tr                ; 2 uses
  %i.xv = fadd double %.093.us.i, %i.xu           ; 2 uses
  %i.xw = load ptr, ptr @stdout, align 8, !tbaa !83
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 3 uses
  %i.xx = call double @sqrt(double noundef %i.xu) #23
  %i.xy = trunc nuw nsw i64 %indvars.iv.next128.i to i32
  %i.xz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xw, ptr noundef nonnull @.str.189, i32 noundef %i.xy, double noundef %i.xx) #23 ; 0 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count140.i
  br i1 %exitcond131.not.i, label %._crit_edge94.i, label %.preheader.us.i, !llvm.loop !87

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ya = fdiv double 0.000000e+00, %i.tr         ; 2 uses
  %sqrt = call double @llvm.sqrt.f64(double %i.ya)
  br label %.preheader.i205

.preheader.i205:                                  ; preds = %.preheader.i205, %.preheader.lr.ph.split.i
  %.093.i = phi double [ 0.000000e+00, %.preheader.lr.ph.split.i ], [ %i.yb, %.preheader.i205 ]
  %.06392.i = phi i32 [ 0, %.preheader.lr.ph.split.i ], [ %i.yd, %.preheader.i205 ]
  %i.yb = fadd double %i.ya, %.093.i              ; 2 uses
  %i.yc = load ptr, ptr @stdout, align 8, !tbaa !83
  %i.yd = add nuw nsw i32 %.06392.i, 1            ; 3 uses
  %i.ye = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yc, ptr noundef nonnull @.str.189, i32 noundef %i.yd, double noundef %sqrt) #23 ; 0 uses
  %exitcond116.not.i = icmp eq i32 %i.yd, %i.qu
  br i1 %exitcond116.not.i, label %._crit_edge94.i, label %.preheader.i205, !llvm.loop !87

._crit_edge94.i:                                  ; preds = %.preheader.i205, %._crit_edge90.split.us98.i, %._crit_edge90.split.us.us.us.i, %._crit_edge.i
  %.0.lcssa.i = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.xv, %._crit_edge90.split.us98.i ], [ %i.vr, %._crit_edge90.split.us.us.us.i ], [ %i.yb, %.preheader.i205 ]
  %i.yf = load ptr, ptr @stdout, align 8, !tbaa !83
  %i.yg = sitofp i32 %i.qu to double
  %i.yh = fdiv double %.0.lcssa.i, %i.yg
  %i.yi = call double @sqrt(double noundef %i.yh) #23
  %i.yj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yf, ptr noundef nonnull @.str.190, double noundef %i.yi) #23 ; 0 uses
  %i.yk = load ptr, ptr @stdout, align 8, !tbaa !83
  %fputc.i = call i32 @fputc(i32 10, ptr %i.yk)   ; 0 uses
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.150, i32 noundef 816, ptr noundef nonnull %i.rb)
          to label %_ZL6filterfiiPPff.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL6filterfiiPPff.exit:                           ; preds = %._crit_edge94.i, %_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit202._crit_edge
  %i.yl = load ptr, ptr %i.ab, align 8, !tbaa !23
  %.not183 = icmp eq ptr %i.yl, null
  br i1 %.not183, label %bb.cf, label %bb.bq

bb.bq:                                            ; preds = %_ZL6filterfiiPPff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef zeroext 2)
          to label %._crit_edge.i.i unwind label %bb.bv

._crit_edge.i.i:                                  ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ym = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ym, ptr %23, align 8, !tbaa !59
  store i32 1701669236, ptr %i.ym, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 4, ptr %i.yn, align 8, !tbaa !60
  %i.yo = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i8 0, ptr %i.yo, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.yp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.yp, ptr %24, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.yp, ptr noundef nonnull align 1 dereferenceable(13) @.str.167, i64 13, i1 false)
  %i.yq = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 13, ptr %i.yq, align 8, !tbaa !60
  %i.yr = getelementptr inbounds nuw i8, ptr %24, i64 29
  store i8 0, ptr %i.yr, align 1, !tbaa !35
  %i.ys = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.yt = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull @.str.165, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %i.ys)
          to label %bb.br unwind label %bb.bw     ; 3 uses

bb.br:                                            ; preds = %._crit_edge.i.i
  %i.yu = load ptr, ptr %24, align 8, !tbaa !32   ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.yp
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.br
  %i.yw = load i64, ptr %i.yp, align 8, !tbaa !35
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.yy = load ptr, ptr %23, align 8, !tbaa !32   ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.ym
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.za = load i64, ptr %i.ym, align 8, !tbaa !35
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.zc = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.zd, null
  br i1 %.not.i.i.i217, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i218, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.zc, ptr noundef nonnull %i.zd) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i218

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i218: ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.ze = load ptr, ptr %22, align 8, !tbaa !32   ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.zg = icmp eq ptr %i.ze, %i.zf
  br i1 %i.zg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i218
  %i.zh = load i64, ptr %i.zf, align 8, !tbaa !35
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.ze, i64 noundef %i.zi) #24
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit222

_ZNSt10filesystem7__cxx114pathD2Ev.exit222:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.zj = load i32, ptr %i.y, align 4, !tbaa !9   ; 2 uses
  %i.zk = icmp sgt i32 %i.zj, 0
  br i1 %i.zk, label %.preheader439.lr.ph, label %._crit_edge508

.preheader439.lr.ph:                              ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit222
  %i.zl = load i32, ptr %i.x, align 4, !tbaa !9
  %i.zm = sitofp i32 %i.zl to float
  %i.zn = fmul nnan float %i.zm, 5.000000e-01
  %i.zo = fptosi float %i.zn to i32               ; 3 uses
  %.not193502 = icmp slt i32 %i.zo, 0
  %i.zp = add nuw i32 %i.zo, 1
  %wide.trip.count584 = zext i32 %i.zp to i64
  br label %.preheader439

.preheader439:                                    ; preds = %.preheader439.lr.ph, %bb.cd
  %i.zq = phi i32 [ %i.zj, %.preheader439.lr.ph ], [ %i.adi, %bb.cd ]
  %indvars.iv586 = phi i64 [ 0, %.preheader439.lr.ph ], [ %indvars.iv.next587, %bb.cd ] ; 3 uses
  br i1 %.not193502, label %._crit_edge505, label %.lr.ph504

.lr.ph504:                                        ; preds = %.preheader439
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv586
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph504, %._crit_edge499
  %indvars.iv581 = phi i64 [ 0, %.lr.ph504 ], [ %indvars.iv.next582, %._crit_edge499 ] ; 3 uses
  %indvars.iv577 = phi i32 [ 0, %.lr.ph504 ], [ %indvars.iv.next578, %._crit_edge499 ] ; 2 uses
  %i.zs = trunc nuw nsw i64 %indvars.iv581 to i32 ; 4 uses
  %i.zt = urem i32 %i.zs, 100
  %i.zu = icmp eq i32 %i.zt, 0
  br i1 %i.zu, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.zv = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.zw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zv, ptr noundef nonnull @.str.168, i32 noundef %i.zs) #27 ; 0 uses
  %i.zx = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.zy = call i32 @fflush(ptr noundef %i.zx)     ; 0 uses
  br label %bb.by

bb.bv:                                            ; preds = %bb.bq
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  %i.aab = load ptr, ptr %24, align 8, !tbaa !32  ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.yp
  br i1 %i.aac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.bw
  %i.aad = load i64, ptr %i.yp, align 8, !tbaa !35
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.aaf = load ptr, ptr %23, align 8, !tbaa !32  ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.ym
  br i1 %i.aag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.aah = load i64, ptr %i.ym, align 8, !tbaa !35
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aaf, i64 noundef %i.aai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #23
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %bb.bv
  %.pn184.pn.pn = phi { ptr, i32 } [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %i.zz, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.body

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %i.aaj = load i32, ptr %i.x, align 4, !tbaa !9  ; 2 uses
  %i.aak = sub nsw i32 %i.aaj, %i.zs              ; 2 uses
  %i.aal = icmp sgt i32 %i.aak, 0
end_hunk_0
