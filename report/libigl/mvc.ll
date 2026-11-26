Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mvc?download=true
inline.NumInlined: 8230
inline.NumDeleted: 4301
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN3igl3mvcERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_RS2_:bb.a
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i.i.i.i.i.i239 = icmp eq i64 %i.jh, %i.ig
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8            ; 2 uses
  %.not8.i.i.i.i.i.i.i.i240 = icmp eq i64 %i.jj, %i.jf
  %or.cond.i.i.i.i.i.i.i.i241 = select i1 %.not.i.i.i.i.i.i.i.i239, i1 %.not8.i.i.i.i.i.i.i.i240, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i241, label %._crit_edge1600, label %bb.an

._crit_edge1600:                                  ; preds = %bb.am
  %.pre1604 = mul nsw i64 %i.jf, %i.ig
  br label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.jk = icmp eq i64 %i.ig, 0
  %i.jl = icmp eq i64 %i.jf, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i242 = or i1 %i.jk, %i.jl
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i242, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i243, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jm = sdiv i64 9223372036854775807, %i.jf
  %i.jn = icmp sgt i64 %i.ig, %i.jm
  br i1 %i.jn, label %.noexc.i.i.i.i.i.i.i252, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i243

.noexc.i.i.i.i.i.i.i252:                          ; preds = %bb.ao
  %i.jo = call ptr @__cxa_allocate_exception(i64 8) #22
  br label %.invoke

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i243: ; preds = %bb.ao, %bb.an
  %i.jp = mul nsw i64 %i.jf, %i.ig                ; 5 uses
  %i.jq = mul nsw i64 %i.jj, %i.jh
  %.not.i389 = icmp eq i64 %i.jp, %i.jq
  br i1 %.not.i389, label %.noexc254, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i243
  %i.jr = load ptr, ptr %16, align 8, !tbaa !17
  call void @free(ptr noundef %i.jr) #22
  %i.js = icmp sgt i64 %i.jp, 0
  br i1 %i.js, label %bb.aq, label %.sink.split.i390

bb.aq:                                            ; preds = %bb.ap
  %i.jt = icmp samesign ugt i64 %i.jp, 2305843009213693951
  br i1 %i.jt, label %bb.ar, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i392

bb.ar:                                            ; preds = %bb.aq
  %i.ju = call ptr @__cxa_allocate_exception(i64 8) #22
  br label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i392: ; preds = %bb.aq
  %i.jv = shl nuw i64 %i.jp, 3
  %i.jw = call noalias ptr @malloc(i64 noundef %i.jv) #23 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.as, label %.sink.split.i390

bb.as:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i392
  %i.jy = call ptr @__cxa_allocate_exception(i64 8) #22
  br label %.invoke

.sink.split.i390:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i392, %bb.ap
  %.sink.i391 = phi ptr [ %i.jw, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i392 ], [ null, %bb.ap ]
  store ptr %.sink.i391, ptr %16, align 8, !tbaa !17
  br label %.noexc254

.noexc254:                                        ; preds = %.sink.split.i390, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i243
  store i64 %i.ig, ptr %i.jg, align 8, !tbaa !15
  store i64 %i.jf, ptr %i.ji, align 8, !tbaa !16
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge1600, %.noexc254
  %.pre-phi1605 = phi i64 [ %.pre1604, %._crit_edge1600 ], [ %i.jp, %.noexc254 ] ; 7 uses
  %i.jz = load ptr, ptr %16, align 8, !tbaa !17   ; 8 uses
  %i.ka = ptrtoaddr ptr %i.jz to i64
  %i.kb = sdiv i64 %.pre-phi1605, 2
  %i.kc = shl nsw i64 %i.kb, 1                    ; 6 uses
  %i.kd = icmp sgt i64 %.pre-phi1605, 1
  br i1 %i.kd, label %.lr.ph.i.i.i.i.i.i.i.i250, label %._crit_edge.i.i.i.i.i.i.i.i246

._crit_edge.i.i.i.i.i.i.i.i246:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i250, %bb.at
  %i.ke = icmp slt i64 %i.kc, %.pre-phi1605
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader, label %.loopexit1130

.lr.ph.i.i.i.i.i.i.i.i.i247.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i246
  %i.kf = sub i64 %.pre-phi1605, %i.kc            ; 3 uses
  %min.iters.check1972 = icmp ult i64 %i.kf, 8
  %i.kg = sub i64 %i.je, %i.ka
  %diff.check1974 = icmp ugt i64 %i.kg, -32
  %or.cond2114 = select i1 %min.iters.check1972, i1 true, i1 %diff.check1974
  br i1 %or.cond2114, label %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202, label %vector.ph1975

vector.ph1975:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader
  %n.vec1976 = and i64 %i.kf, -4                  ; 3 uses
  %i.kh = add i64 %i.kc, %n.vec1976
  br label %vector.body1977

vector.body1977:                                  ; preds = %vector.body1977, %vector.ph1975
  %index1978 = phi i64 [ 0, %vector.ph1975 ], [ %index.next1981, %vector.body1977 ] ; 2 uses
  %i.ki = add i64 %i.kc, %index1978               ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.ki ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load1979 = load <2 x double>, ptr %i.kk, align 8, !tbaa !21
  %wide.load1980 = load <2 x double>, ptr %i.kl, align 8, !tbaa !21
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <2 x double> %wide.load1979, ptr %i.kj, align 8, !tbaa !21
  store <2 x double> %wide.load1980, ptr %i.km, align 8, !tbaa !21
  %index.next1981 = add nuw i64 %index1978, 4     ; 2 uses
  %i.kn = icmp eq i64 %index.next1981, %n.vec1976
  br i1 %i.kn, label %middle.block1982, label %vector.body1977, !llvm.loop !221

middle.block1982:                                 ; preds = %vector.body1977
  %cmp.n1983 = icmp eq i64 %i.kf, %n.vec1976
  br i1 %cmp.n1983, label %.loopexit1130, label %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202

.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader, %middle.block1982
  %.05.i.i.i.i.i.i.i.i.i248.ph = phi i64 [ %i.kc, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader ], [ %i.kh, %middle.block1982 ] ; 4 uses
  %i.ko = sub i64 %.pre-phi1605, %.05.i.i.i.i.i.i.i.i.i248.ph
  %xtraiter2216 = and i64 %i.ko, 3                ; 2 uses
  %lcmp.mod2217.not = icmp eq i64 %xtraiter2216, 0
  br i1 %lcmp.mod2217.not, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol

.lr.ph.i.i.i.i.i.i.i.i.i247.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol
  %.05.i.i.i.i.i.i.i.i.i248.prol = phi i64 [ %i.ks, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol ], [ %.05.i.i.i.i.i.i.i.i.i248.ph, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202 ] ; 3 uses
  %prol.iter2218 = phi i64 [ %prol.iter2218.next, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202 ]
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %.05.i.i.i.i.i.i.i.i.i248.prol
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.05.i.i.i.i.i.i.i.i.i248.prol
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !21
  store double %i.kr, ptr %i.kp, align 8, !tbaa !21
  %i.ks = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248.prol, 1 ; 2 uses
  %prol.iter2218.next = add i64 %prol.iter2218, 1 ; 2 uses
  %prol.iter2218.cmp.not = icmp eq i64 %prol.iter2218.next, %xtraiter2216
  br i1 %prol.iter2218.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol, !llvm.loop !222

.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.prol, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202
  %.05.i.i.i.i.i.i.i.i.i248.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i248.ph, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2202 ], [ %i.ks, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol ]
  %i.kt = sub i64 %.05.i.i.i.i.i.i.i.i.i248.ph, %.pre-phi1605
  %i.ku = icmp ugt i64 %i.kt, -4
  br i1 %i.ku, label %.loopexit1130, label %.lr.ph.i.i.i.i.i.i.i.i.i247

.lr.ph.i.i.i.i.i.i.i.i.i247:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i247
  %.05.i.i.i.i.i.i.i.i.i248 = phi i64 [ %i.lk, %.lr.ph.i.i.i.i.i.i.i.i.i247 ], [ %.05.i.i.i.i.i.i.i.i.i248.unr, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit ] ; 6 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %.05.i.i.i.i.i.i.i.i.i248
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.05.i.i.i.i.i.i.i.i.i248
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !21
  store double %i.kx, ptr %i.kv, align 8, !tbaa !21
  %i.ky = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 1 ; 2 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ky
  %i.la = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.ky
  %i.lb = load double, ptr %i.la, align 8, !tbaa !21
  store double %i.lb, ptr %i.kz, align 8, !tbaa !21
  %i.lc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 2 ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.lc
  %i.lf = load double, ptr %i.le, align 8, !tbaa !21
  store double %i.lf, ptr %i.ld, align 8, !tbaa !21
  %i.lg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 3 ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lg
  %i.li = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !21
  store double %i.lj, ptr %i.lh, align 8, !tbaa !21
  %i.lk = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i249.3 = icmp eq i64 %i.lk, %.pre-phi1605
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i249.3, label %.loopexit1130, label %.lr.ph.i.i.i.i.i.i.i.i.i247, !llvm.loop !223

.lr.ph.i.i.i.i.i.i.i.i250:                        ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.i.i250
  %.011.i.i.i.i.i.i.i.i251 = phi i64 [ %i.lo, %.lr.ph.i.i.i.i.i.i.i.i250 ], [ 0, %bb.at ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.011.i.i.i.i.i.i.i.i251
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.011.i.i.i.i.i.i.i.i251
  %i.ln = load <2 x double>, ptr %i.lm, align 16, !tbaa !18
  store <2 x double> %i.ln, ptr %i.ll, align 16, !tbaa !18
  %i.lo = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i251, 2 ; 2 uses
  %i.lp = icmp slt i64 %i.lo, %i.kc
  br i1 %i.lp, label %.lr.ph.i.i.i.i.i.i.i.i250, label %._crit_edge.i.i.i.i.i.i.i.i246, !llvm.loop !218

.loopexit1130:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i247, %middle.block1982, %._crit_edge.i.i.i.i.i.i.i.i246, %bb.ak
  %i.lq = icmp sgt i32 %i.c, 0
  %.pre = load ptr, ptr %16, align 8, !tbaa !17, !noalias !49 ; 11 uses
  br i1 %i.lq, label %.lr.ph, label %.loopexit1130.._crit_edge_crit_edge

.loopexit1130.._crit_edge_crit_edge:              ; preds = %.loopexit1130
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre1590 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 3 uses
  %.pre1591 = load double, ptr %.pre, align 8, !tbaa !21
  %.phi.trans.insert1592 = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.pre1590
  %.pre1593 = load double, ptr %.phi.trans.insert1592, align 8, !tbaa !21
  %.pre1596 = shl nsw i64 %.pre1590, 4            ; 2 uses
  %.phi.trans.insert1597 = getelementptr inbounds i8, ptr %.pre, i64 %.pre1596
  %.pre1598 = load double, ptr %.phi.trans.insert1597, align 8, !tbaa !21
  br label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit1130
  %i.lr = add i64 %i.b, 4294967295
  %i.ls = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !15 ; 8 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.lt, 4 ; 7 uses
  %i.lu = and i64 %i.lr, 4294967295               ; 3 uses
  %wide.trip.count = and i64 %i.b, 2147483647     ; 2 uses
  %.not = icmp ne i64 %i.lu, 0
  %i.lv = zext i1 %.not to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.lv ; 3 uses
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !21
  %i.ly = load double, ptr %.pre, align 8, !tbaa !21 ; 5 uses
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.lt
  %i.ma = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.lt
  %i.mb = load double, ptr %i.lz, align 8, !tbaa !21
  %i.mc = load double, ptr %i.ma, align 8, !tbaa !21 ; 3 uses
  %i.md = getelementptr inbounds i8, ptr %i.lw, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.me = getelementptr inbounds i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.mf = load double, ptr %i.md, align 8, !tbaa !21 ; 2 uses
  %i.mg = load double, ptr %i.me, align 8, !tbaa !21 ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.lu ; 3 uses
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !21
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.lt
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !21
  %i.ml = getelementptr inbounds i8, ptr %i.mh, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !21 ; 2 uses
  %i.mn = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.lx, i64 1
  %i.mp = insertelement <2 x double> poison, double %i.mg, i64 0 ; 2 uses
  %i.mq = insertelement <2 x double> %i.mp, double %i.ly, i64 1
  %i.mr = fsub <2 x double> %i.mo, %i.mq          ; 2 uses
  %i.ms = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.mi, i64 1
  %i.mu = insertelement <2 x double> poison, double %i.mc, i64 0 ; 2 uses
  %i.mv = insertelement <2 x double> %i.mu, double %i.ly, i64 1
  %i.mw = fsub <2 x double> %i.mt, %i.mv          ; 3 uses
  %i.mx = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.my = insertelement <2 x double> %i.mx, double %i.mf, i64 1
  %i.mz = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fsub <2 x double> %i.my, %i.mz
  %i.nb = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.nc = insertelement <2 x double> %i.nb, double %i.mm, i64 1
  %i.nd = insertelement <2 x double> %i.mu, double %i.mg, i64 1 ; 2 uses
  %i.ne = fsub <2 x double> %i.nc, %i.nd          ; 2 uses
  %i.nf = fneg <2 x double> %i.ne
  %i.ng = fmul <2 x double> %i.mr, %i.nf
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.mw, <2 x double> %i.ng)
  %i.ni = extractelement <2 x double> %i.mw, i64 1
  %i.nj = fneg double %i.ni
  %i.nk = extractelement <2 x double> %i.mw, i64 0
  %i.nl = fmul double %i.nk, %i.nj
  %i.nm = extractelement <2 x double> %i.mr, i64 1
  %i.nn = extractelement <2 x double> %i.ne, i64 0
  %i.no = call double @llvm.fmuladd.f64(double %i.nm, double %i.nn, double %i.nl)
  %i.np = fadd <2 x double> %i.nh, zeroinitializer ; 2 uses
  %i.nq = fadd double %i.no, 0.000000e+00         ; 2 uses
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %26 = phi double [ %29, %.peel.next ], [ %i.ly, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.lr.ph ] ; 3 uses
  %.sroa.0958.01356 = phi <2 x double> [ %i.oo, %.peel.next ], [ %i.np, %.lr.ph ]
  %.sroa.22974.01355 = phi double [ %i.op, %.peel.next ], [ %i.nq, %.lr.ph ]
  %27 = phi <2 x double> [ %43, %.peel.next ], [ %i.nd, %.lr.ph ] ; 2 uses
  %i.nr = icmp samesign ult i64 %indvars.iv, %i.lu
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ns = select i1 %i.nr, i64 %indvars.iv.next, i64 0
  %28 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ns ; 3 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv ; 3 uses
  %i.nu = load double, ptr %28, align 8, !tbaa !21
  %29 = load double, ptr %i.nt, align 8, !tbaa !21 ; 3 uses
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %i.lt
  %31 = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.lt
  %i.nv = load double, ptr %30, align 8, !tbaa !21
  %32 = load double, ptr %31, align 8, !tbaa !21
  %i.nw = getelementptr inbounds i8, ptr %28, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %33 = getelementptr inbounds i8, ptr %i.nt, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %34 = load double, ptr %i.nw, align 8, !tbaa !21
  %35 = load double, ptr %33, align 8, !tbaa !21  ; 2 uses
  %36 = insertelement <2 x double> poison, double %34, i64 0 ; 2 uses
  %i.nx = insertelement <2 x double> %36, double %i.nu, i64 1
  %i.ny = insertelement <2 x double> poison, double %35, i64 0 ; 2 uses
  %37 = insertelement <2 x double> %i.ny, double %29, i64 1
  %i.nz = fsub <2 x double> %i.nx, %37            ; 2 uses
  %38 = insertelement <2 x double> poison, double %i.nv, i64 0
  %39 = insertelement <2 x double> %38, double %26, i64 1
  %i.oa = insertelement <2 x double> poison, double %32, i64 0 ; 2 uses
  %40 = insertelement <2 x double> %i.oa, double %29, i64 1
  %i.ob = fsub <2 x double> %39, %40              ; 3 uses
  %41 = shufflevector <2 x double> %27, <2 x double> %36, <2 x i32> <i32 1, i32 2>
  %42 = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = fsub <2 x double> %41, %42
  %43 = insertelement <2 x double> %i.oa, double %35, i64 1 ; 2 uses
  %i.od = fsub <2 x double> %27, %43              ; 2 uses
  %i.oe = fneg <2 x double> %i.od
  %i.of = fmul <2 x double> %i.nz, %i.oe
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.ob, <2 x double> %i.of)
  %i.oh = extractelement <2 x double> %i.ob, i64 1
  %i.oi = fneg double %i.oh
  %i.oj = extractelement <2 x double> %i.ob, i64 0
  %i.ok = fmul double %i.oj, %i.oi
  %i.ol = extractelement <2 x double> %i.nz, i64 1
  %i.om = extractelement <2 x double> %i.od, i64 0
  %i.on = call double @llvm.fmuladd.f64(double %i.ol, double %i.om, double %i.ok)
  %i.oo = fadd <2 x double> %.sroa.0958.01356, %i.og ; 2 uses
  %i.op = fadd double %.sroa.22974.01355, %i.on   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !224

._crit_edge:                                      ; preds = %.peel.next, %.lr.ph, %.loopexit1130.._crit_edge_crit_edge
  %i.oq = phi double [ %.pre1598, %.loopexit1130.._crit_edge_crit_edge ], [ %i.mg, %.lr.ph ], [ %i.mg, %.peel.next ]
  %.idx.i.i.i.i.i.i.i.i.i.i260.pre-phi = phi i64 [ %.pre1596, %.loopexit1130.._crit_edge_crit_edge ], [ %.idx.i.i.i.i.i.i.i.i.i.i, %.lr.ph ], [ %.idx.i.i.i.i.i.i.i.i.i.i, %.peel.next ]
  %i.or = phi double [ %.pre1593, %.loopexit1130.._crit_edge_crit_edge ], [ %i.mc, %.lr.ph ], [ %i.mc, %.peel.next ]
  %i.os = phi double [ %.pre1591, %.loopexit1130.._crit_edge_crit_edge ], [ %i.ly, %.lr.ph ], [ %i.ly, %.peel.next ]
  %i.ot = phi i64 [ %.pre1590, %.loopexit1130.._crit_edge_crit_edge ], [ %i.lt, %.lr.ph ], [ %i.lt, %.peel.next ]
  %.sroa.22974.0.lcssa = phi double [ 0.000000e+00, %.loopexit1130.._crit_edge_crit_edge ], [ %i.nq, %.lr.ph ], [ %i.op, %.peel.next ]
  %.sroa.0958.0.lcssa = phi <2 x double> [ zeroinitializer, %.loopexit1130.._crit_edge_crit_edge ], [ %i.np, %.lr.ph ], [ %i.oo, %.peel.next ]
  %i.ou = sitofp i32 %i.c to double               ; 2 uses
  %i.ov = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ox = fdiv <2 x double> %.sroa.0958.0.lcssa, %i.ow ; 3 uses
  %i.oy = fdiv double %.sroa.22974.0.lcssa, %i.ou ; 3 uses
  %i.oz = fmul <2 x double> %i.ox, %i.ox          ; 2 uses
  %shift = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.oz, %shift
  %i.pa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.pb = fmul double %i.oy, %i.oy
  %i.pc = fadd double %i.pb, %i.pa
  %sqrt = call double @llvm.sqrt.f64(double %i.pc) ; 2 uses
  %i.pd = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.pe = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pf = fdiv <2 x double> %i.ox, %i.pe          ; 6 uses
  %i.pg = fdiv double %i.oy, %sqrt                ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !21
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.ot
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !21
  %i.pm = getelementptr inbounds i8, ptr %i.ph, i64 %.idx.i.i.i.i.i.i.i.i.i.i260.pre-phi
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !21
  %.sroa.0958.8.vec.extract973 = extractelement <2 x double> %i.pf, i64 1
  %.sroa.0958.0.vec.extract970 = extractelement <2 x double> %i.pf, i64 0
  %i.po = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.pj, i64 1
  %i.pq = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %i.os, i64 1
  %i.ps = fsub <2 x double> %i.pp, %i.pr          ; 4 uses
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pu = fsub double %i.pl, %i.or                ; 3 uses
  %.sroa.0819.8.vec.insert = insertelement <2 x double> %i.pt, double %i.pu, i64 1 ; 3 uses
  %i.pv = extractelement <2 x double> %i.ps, i64 1
  %i.pw = fneg double %i.pv
  %i.px = fmul <2 x double> %.sroa.0819.8.vec.insert, %.sroa.0819.8.vec.insert ; 2 uses
  %i.py = insertelement <2 x double> %i.pt, double %i.pu, i64 0
  %i.pz = fneg <2 x double> %i.py
  %i.qa = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qb = insertelement <2 x double> %i.qa, double %i.pg, i64 0
  %i.qc = fmul <2 x double> %i.qb, %i.pz
  %i.qd = insertelement <2 x double> %i.qa, double %i.pg, i64 1
  %i.qe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qd, <2 x double> %i.ps, <2 x double> %i.qc) ; 3 uses
  %i.qf = fmul double %.sroa.0958.8.vec.extract973, %i.pw
  %i.qg = call double @llvm.fmuladd.f64(double %.sroa.0958.0.vec.extract970, double %i.pu, double %i.qf)
  %i.qh = fmul <2 x double> %i.qe, %i.qe          ; 2 uses
  %i.qi = shufflevector <2 x double> %i.px, <2 x double> %i.qh, <2 x i32> <i32 0, i32 2>
  %i.qj = shufflevector <2 x double> %i.px, <2 x double> %i.qh, <2 x i32> <i32 1, i32 3>
  %i.qk = fadd <2 x double> %i.qi, %i.qj
  %i.ql = insertelement <2 x double> %i.ps, double %i.qg, i64 1 ; 3 uses
  %i.qm = fmul <2 x double> %i.ql, %i.ql
  %i.qn = fadd <2 x double> %i.qm, %i.qk
  %i.qo = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qn) ; 3 uses
  %i.qp = shufflevector <2 x double> %i.qo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qq = fdiv <2 x double> %.sroa.0819.8.vec.insert, %i.qp
  %i.qr = shufflevector <2 x double> %i.qo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qs = fdiv <2 x double> %i.qe, %i.qr
  %i.qt = fdiv <2 x double> %i.ql, %i.qo          ; 2 uses
  %i.qu = fmul <2 x double> %i.pf, %i.pf          ; 2 uses
  %shift2130 = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2131 = fadd <2 x double> %i.qu, %shift2130
  %i.qv = extractelement <2 x double> %foldExtExtBinop2131, i64 0
  %i.qw = fmul double %i.pg, %i.pg
  %i.qx = fadd double %i.qw, %i.qv
  %sqrt1120 = call double @llvm.sqrt.f64(double %i.qx) ; 2 uses
  %i.qy = insertelement <2 x double> poison, double %sqrt1120, i64 0
  %i.qz = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ra = fdiv <2 x double> %i.pf, %i.qz
  %i.rb = fdiv double %i.pg, %sqrt1120
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.rc = extractelement <2 x double> %i.qt, i64 0
  store double %i.rc, ptr %.sroa.7, align 16, !tbaa !21
  %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  store <2 x double> %i.qs, ptr %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !18
  %i.rd = extractelement <2 x double> %i.qt, i64 1
  %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 24
  store double %i.rd, ptr %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.re = getelementptr inbounds nuw i8, ptr %21, i64 208
  store i8 0, ptr %i.re, align 16, !tbaa !73, !alias.scope !300
  %i.rf = getelementptr inbounds nuw i8, ptr %21, i64 209
  store i8 0, ptr %i.rf, align 1, !tbaa !301, !alias.scope !300
  store <2 x double> %i.qq, ptr %21, align 16, !tbaa !18, !alias.scope !300
  %i.rg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !18, !noalias !300
  store <2 x double> %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.rg, align 16, !tbaa !18, !alias.scope !300
  %i.rh = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32. = load <2 x double>, ptr %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !18, !noalias !300
  store <2 x double> %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32., ptr %i.rh, align 16, !tbaa !18, !alias.scope !300
  %i.ri = getelementptr inbounds nuw i8, ptr %21, i64 48
  store <2 x double> %i.ra, ptr %i.ri, align 16, !tbaa !18, !alias.scope !300
  %i.rj = getelementptr inbounds nuw i8, ptr %21, i64 64
  store double %i.rb, ptr %i.rj, align 16, !tbaa !21, !alias.scope !300
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(248) %21)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %._crit_edge
  %i.rk = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %15, ptr %23, align 8
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !15
  store ptr %21, ptr %22, align 8
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %.sroa.5758.0..sroa_idx, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rm, i8 0, i64 16, i1 false)
  store i64 %i.rl, ptr %i.rn, align 8, !tbaa !26, !alias.scope !302
  %i.ro = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 2, ptr %i.ro, align 8, !tbaa !26, !alias.scope !302
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %16, ptr %25, align 8
  %i.rp = load i64, ptr %i.pi, align 8, !tbaa !15
  store ptr %21, ptr %24, align 8
  %.sroa.5754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %.sroa.5754.0..sroa_idx, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rq, i8 0, i64 16, i1 false)
  store i64 %i.rp, ptr %i.rr, align 8, !tbaa !26, !alias.scope !303
  %i.rs = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 2, ptr %i.rs, align 8, !tbaa !26, !alias.scope !303
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bb

bb.ax:                                            ; preds = %._crit_edge
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.pn160.pn = phi { ptr, i32 } [ %i.rt, %bb.ax ], [ %i.rv, %bb.az ], [ %i.ru, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %.body

bb.bb:                                            ; preds = %bb.aw, %bb.t
  %i.rw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !15 ; 34 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !15 ; 9 uses
  %i.sa = icmp eq i64 %i.rx, 0                    ; 2 uses
end_hunk_0
