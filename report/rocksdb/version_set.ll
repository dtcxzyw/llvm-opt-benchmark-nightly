Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo22ComputeCompactionScoreERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.kj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec325 = and i64 %i.jw, 4611686018427387900  ; 3 uses
  %i.kk = shl i64 %n.vec325, 3
  %i.kl = getelementptr i8, ptr %i.jn, i64 %i.kk
  %i.km = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index326 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next332, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi327 = phi <4 x i64> [ %i.km, %vec.epilog.ph ], [ %i.ko, %vec.epilog.vector.body ]
  %i.kn = shl i64 %index326, 3
  %next.gep328 = getelementptr i8, ptr %i.jn, i64 %i.kn
  %wide.load329 = load <4 x ptr>, ptr %next.gep328, align 8, !tbaa !347
  %wide.gep330 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load329, i64 128
  %wide.masked.gather331 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep330, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1042
  %i.ko = add <4 x i64> %wide.masked.gather331, %vec.phi327 ; 2 uses
  %index.next332 = add nuw i64 %index326, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.kp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kq = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ko) ; 2 uses
  %cmp.n333 = icmp eq i64 %i.jw, %n.vec325
  br i1 %cmp.n333, label %._crit_edge230.loopexit, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0163.0227.ph = phi ptr [ %i.jn, %iter.check ], [ %i.jz, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  %.0201226.ph = phi i64 [ 0, %iter.check ], [ %i.kj, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ]
  br label %.lr.ph229

._crit_edge230.loopexit:                          ; preds = %.lr.ph229, %vec.epilog.middle.block, %middle.block
  %.lcssa308 = phi i64 [ %i.kq, %vec.epilog.middle.block ], [ %i.kj, %middle.block ], [ %i.kz, %.lr.ph229 ]
  %i.kr = call i64 @llvm.umax.i64(i64 %.lcssa308, i64 %i.jk)
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %bb.ax
  %.0201.lcssa = phi i64 [ %i.jk, %bb.ax ], [ %i.kr, %._crit_edge230.loopexit ]
  %i.ks = uitofp i64 %.0123.lcssa to double
  %i.kt = uitofp i64 %.0201.lcssa to double
  %i.ku = fdiv double %i.ks, %i.kt                ; 2 uses
  %i.kv = fcmp olt double %.2, %i.ku
  %.sroa.speculated159 = select i1 %i.kv, double %i.ku, double %.2
  br label %bb.ay

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.sroa.0163.0227 = phi ptr [ %i.la, %.lr.ph229 ], [ %.sroa.0163.0227.ph, %.lr.ph229.preheader ] ; 2 uses
  %.0201226 = phi i64 [ %i.kz, %.lr.ph229 ], [ %.0201226.ph, %.lr.ph229.preheader ]
  %i.kw = load ptr, ptr %.sroa.0163.0227, align 8, !tbaa !347
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 128
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !1042
  %i.kz = add i64 %i.ky, %.0201226                ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0163.0227, i64 8 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.jp
  br i1 %i.lb, label %._crit_edge230.loopexit, label %.lr.ph229, !llvm.loop !2140

bb.ay:                                            ; preds = %._crit_edge230, %bb.aw
  %.3199 = phi double [ %.sroa.speculated159, %._crit_edge230 ], [ %.2, %bb.aw ] ; 3 uses
  %i.lc = fcmp ogt double %.3199, 1.000000e+00
  %i.ld = fmul nnan double %.3199, 1.000000e+01
  %spec.select204 = select i1 %i.lc, double %i.ld, double %.3199
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.az:                                            ; preds = %bb.av
  %i.le = uitofp i64 %.0123.lcssa to double
  %i.lf = load i64, ptr %i.t, align 8, !tbaa !1048
  %i.lg = uitofp i64 %i.lf to double
  %i.lh = fdiv double %i.le, %i.lg                ; 2 uses
  %i.li = fcmp olt double %i.iz, %i.lh
  %.sroa.speculated155 = select i1 %i.li, double %i.lh, double %i.iz
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.ba:                                            ; preds = %bb.b
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv251 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !603 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !603 ; 2 uses
  %i.ln = icmp eq ptr %i.lk, %i.lm
  br i1 %i.ln, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bc, %bb.ba
  %.0117.lcssa = phi i64 [ 0, %bb.ba ], [ %.1118, %bb.bc ] ; 4 uses
  %.0116.lcssa = phi i64 [ 0, %bb.ba ], [ %i.lt, %bb.bc ] ; 3 uses
  %i.lo = load i8, ptr %i.p, align 4, !tbaa !1047, !range !560, !noundef !561
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.be, label %bb.bd

.lr.ph:                                           ; preds = %bb.ba, %bb.bc
  %.0116209 = phi i64 [ %i.lt, %bb.bc ], [ 0, %bb.ba ]
  %.0117208 = phi i64 [ %.1118, %bb.bc ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.0151.0207 = phi ptr [ %i.ma, %bb.bc ], [ %i.lk, %bb.ba ] ; 2 uses
  %i.lq = load ptr, ptr %.sroa.0151.0207, align 8, !tbaa !347 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !531
  %i.lt = add i64 %i.ls, %.0116209                ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 188
  %i.lv = load i8, ptr %i.lu, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 128
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !1042
  %i.lz = add i64 %i.ly, %.0117208
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph
  %.1118 = phi i64 [ %.0117208, %.lr.ph ], [ %i.lz, %bb.bb ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0151.0207, i64 8 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.lm
  br i1 %i.mb, label %._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %._crit_edge
  %i.mc = uitofp i64 %.0117.lcssa to double
  %i.md = load ptr, ptr %i.q, align 8, !tbaa !284
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv251
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !533 ; 2 uses
  %i.mg = uitofp i64 %i.mf to double
  %i.mh = fdiv double %i.mc, %i.mg
  %.pre = load i32, ptr %i.r, align 4, !tbaa !851
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge
  %i.mi = load ptr, ptr %i.q, align 8, !tbaa !284
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv251
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !533 ; 4 uses
  %i.ml = icmp ult i64 %.0117.lcssa, %i.mk
  %i.mm = uitofp i64 %.0117.lcssa to double       ; 2 uses
  %i.mn = uitofp i64 %i.mk to double              ; 2 uses
  %i.mo = fadd double %.0235, %i.mn
  %i.mp = fdiv double %i.mm, %i.mo
  %i.mq = fmul double %i.mp, 1.000000e+01
  %i.mr = fdiv double %i.mm, %i.mn
  %storemerge = select i1 %i.ml, double %i.mr, double %i.mq ; 3 uses
  %.not130 = icmp eq i64 %.0117.lcssa, 0
  %.pre261.a = load i32, ptr %i.r, align 4, !tbaa !851 ; 4 uses
  %i.ms = sext i32 %.pre261.a to i64
  %.not131 = icmp sgt i64 %indvars.iv251, %i.ms
  %or.cond305 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond305, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mt = trunc nuw nsw i64 %indvars.iv251 to i32
  %i.mu = sub nuw nsw i32 %.pre261.a, %i.mt
  %i.mv = sitofp i32 %i.mu to double
  %i.mw = call nnan double @llvm.fmuladd.f64(double %i.mv, double 1.000000e-03, double 1.001000e+00)
  %i.mx = fmul nnan double %i.mw, 1.000000e+01    ; 2 uses
  %i.my = fcmp olt double %storemerge, %i.mx
  %.sroa.speculated = select i1 %i.my, double %i.mx, double %storemerge
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.mz = phi i64 [ %i.mk, %bb.be ], [ %i.mf, %bb.bd ], [ %i.mk, %bb.bf ] ; 2 uses
  %i.na = phi i32 [ %.pre261.a, %bb.be ], [ %.pre, %bb.bd ], [ %.pre261.a, %bb.bf ]
  %.4200 = phi double [ %storemerge, %bb.be ], [ %i.mh, %bb.bd ], [ %.sroa.speculated, %bb.bf ] ; 3 uses
  %i.nb = sext i32 %i.na to i64
  %.not132 = icmp sgt i64 %indvars.iv251, %i.nb
  br i1 %.not132, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nc = uitofp i64 %.0116.lcssa to double
  %i.nd = fadd double %.0235, %i.nc
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.ne = icmp ugt i64 %.0116.lcssa, %i.mz
  br i1 %i.ne, label %bb.bj, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.nf = sub nuw i64 %.0116.lcssa, %i.mz
  %i.ng = uitofp i64 %i.nf to double
  %i.nh = fadd double %.0235, %i.ng
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread: ; preds = %bb.ay, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, %bb.ac, %bb.ab, %bb.bh, %bb.bj, %bb.bi, %bb.az, %bb.au, %bb.aa
  %.5 = phi double [ %.1198, %bb.ac ], [ %.4200, %bb.bh ], [ %.1198, %bb.aa ], [ %.1198, %bb.ab ], [ %spec.select204, %bb.ay ], [ %.sroa.speculated155, %bb.az ], [ %.5.i, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %i.iz, %bb.au ], [ %.4200, %bb.bj ], [ %.4200, %bb.bi ]
  %.3 = phi double [ %.1.lcssa, %bb.ac ], [ %i.nd, %bb.bh ], [ %.1.lcssa, %bb.aa ], [ %.1.lcssa, %bb.ab ], [ %.1.lcssa, %bb.ay ], [ %.1.lcssa, %bb.az ], [ %.1.lcssa, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %.1.lcssa, %bb.au ], [ %i.nh, %bb.bj ], [ %.0235, %bb.bi ]
  %i.ni = load ptr, ptr %i.ag, align 16, !tbaa !250
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv251
  %i.nk = trunc nuw nsw i64 %indvars.iv251 to i32
  store i32 %i.nk, ptr %i.nj, align 4, !tbaa !269
  %i.nl = load ptr, ptr %i.ah, align 8, !tbaa !252
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv251
  store double %.5, ptr %i.nm, align 8, !tbaa !859
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1
  %.pr = load i32, ptr %i.j, align 16             ; 4 uses
  %i.nn = load i8, ptr %i.l, align 16, !tbaa !849
  %i.no = icmp eq i8 %i.nn, 0
  %i.np = add nsw i32 %.pr, -2
  %i.nq = sext i32 %i.np to i64
  %.not.not246 = icmp slt i64 %indvars.iv251, %i.nq
  %.not.not = select i1 %i.no, i1 %.not.not246, i1 false
  br i1 %.not.not, label %bb.b, label %.preheader, !llvm.loop !2141

.loopexit:                                        ; preds = %bb.bn, %bb.bk
  %i.nr = phi i32 [ %i.nx, %bb.bk ], [ %i.oo, %bb.bn ] ; 2 uses
  %i.ns = add nsw i32 %i.nr, -2
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp slt i64 %indvars.iv.next259, %i.nt
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253.a, 1
  br i1 %i.nu, label %bb.bk, label %._crit_edge243, !llvm.loop !2142

._crit_edge243:                                   ; preds = %.loopexit, %bb.a, %.preheader
  call void @_ZN7rocksdb18VersionStorageInfo31ComputeFilesMarkedForCompactionEi(ptr noundef nonnull align 16 dereferenceable(4288) %0, i32 noundef %.0.i)
  %i.nv = load i8, ptr %i.c, align 1, !tbaa !1092, !range !560, !noundef !561
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.bp, label %bb.bo

bb.bk:                                            ; preds = %.lr.ph242, %.loopexit
  %i.nx = phi i32 [ %.pr, %.lr.ph242 ], [ %i.nr, %.loopexit ] ; 4 uses
  %indvars.iv258 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next259, %.loopexit ] ; 3 uses
  %indvars.iv253.a = phi i64 [ 1, %.lr.ph242 ], [ %indvars.iv.next254, %.loopexit ] ; 2 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 3 uses
  %i.ny = add nsw i32 %i.nx, -1
  %i.nz = sext i32 %i.ny to i64
  %i.oa = icmp slt i64 %indvars.iv.next259, %i.nz
  br i1 %i.oa, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %bb.bk
  %i.ob = load ptr, ptr %i.an, align 8, !tbaa !252 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv258 ; 3 uses
  %.pre263 = load double, ptr %i.oc, align 8, !tbaa !859
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph240, %bb.bn
  %i.od = phi i32 [ %i.nx, %.lr.ph240 ], [ %i.oo, %bb.bn ]
  %i.oe = phi i32 [ %i.nx, %.lr.ph240 ], [ %i.op, %bb.bn ]
  %i.of = phi double [ %.pre263, %.lr.ph240 ], [ %i.oq, %bb.bn ] ; 3 uses
  %indvars.iv255 = phi i64 [ %indvars.iv253.a, %.lr.ph240 ], [ %indvars.iv.next256, %bb.bn ] ; 3 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv255 ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !859 ; 2 uses
  %i.oi = fcmp olt double %i.of, %i.oh
  br i1 %i.oi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oj = load ptr, ptr %i.ao, align 16, !tbaa !250 ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv258 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !269
  store double %i.oh, ptr %i.oc, align 8, !tbaa !859
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv255 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !269
  store i32 %i.on, ptr %i.ok, align 4, !tbaa !269
  store double %i.of, ptr %i.og, align 8, !tbaa !859
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !269
  %.pre262.a = load double, ptr %i.oc, align 8, !tbaa !859
  %.pre264 = load i32, ptr %i.j, align 16, !tbaa !807 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.oo = phi i32 [ %i.od, %bb.bl ], [ %.pre264, %bb.bm ] ; 2 uses
  %i.op = phi i32 [ %i.oe, %bb.bl ], [ %.pre264, %bb.bm ] ; 2 uses
  %i.oq = phi double [ %i.of, %bb.bl ], [ %.pre262.a, %bb.bm ]
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.or = add nsw i32 %i.op, -1
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next256, %i.os
  br i1 %i.ot, label %bb.bl, label %.loopexit, !llvm.loop !2143

bb.bo:                                            ; preds = %._crit_edge243
  %i.ou = load i8, ptr %i.f, align 1, !tbaa !2148, !range !560, !noundef !561
  %i.ov = trunc nuw i8 %i.ou to i1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge243
  %i.ow = phi i1 [ true, %._crit_edge243 ], [ %i.ov, %bb.bo ]
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !2149
  call void @_ZN7rocksdb18VersionStorageInfo41ComputeBottommostFilesMarkedForCompactionEbPKNS_10ComparatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(4288) %0, i1 noundef zeroext %i.ow, ptr noundef %i.oz, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !1056
  call void @_ZN7rocksdb18VersionStorageInfo22ComputeExpiredTtlFilesERKNS_16ImmutableOptionsEm(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %i.pb)
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !2150
  call void @_ZN7rocksdb18VersionStorageInfo39ComputeFilesMarkedForPeriodicCompactionERKNS_16ImmutableOptionsEmi(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %i.pd, i32 noundef %.0.i)
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !2151
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !2152
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.pj = load i8, ptr %i.pi, align 8, !tbaa !1097, !range !560, !noundef !561
  %i.pk = trunc nuw i8 %i.pj to i1
  call void @_ZN7rocksdb18VersionStorageInfo33ComputeFilesMarkedForForcedBlobGCEddb(ptr noundef nonnull align 16 dereferenceable(4288) %0, double noundef %i.pf, double noundef %i.ph, i1 noundef zeroext %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !1098
  %i.pn = load i8, ptr %i.ox, align 8, !tbaa !915
  call void @_ZN7rocksdb18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS_15CompactionStyleE(ptr noundef nonnull align 16 dereferenceable(4288) %0, double noundef %i.pm, i8 noundef signext %i.pn)
  call void @_ZN7rocksdb18VersionStorageInfo29EstimateCompactionBytesNeededERKNS_16MutableCFOptionsE(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(736) %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo31ComputeFilesMarkedForCompactionEi(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) initializes((4056, 4064)) %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 4 uses
  %.pr.i = load i64, ptr %i.a, align 8, !tbaa !254
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !256 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.c, ptr %i.d, align 16, !tbaa !256
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit

_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4056 ; 3 uses
  store i64 72057594037927935, ptr %i.g, align 8, !tbaa !857
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %.lr.ph29

.lr.ph:                                           ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.k = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !603
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.c, label %.lr.ph29, !llvm.loop !2153

.loopexit:                                        ; preds = %bb.c
  %.not26 = icmp slt i64 %indvars.iv, 1
  br i1 %.not26, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.d, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, %.loopexit
  %.0847 = phi i64 [ %indvars.iv, %.loopexit ], [ 1, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3008
  br label %bb.e

._crit_edge30:                                    ; preds = %._crit_edge, %.loopexit
  ret void

bb.e:                                             ; preds = %.lr.ph29, %._crit_edge
  %i.u = phi ptr [ %i.c, %.lr.ph29 ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.v = phi ptr [ %i.f, %.lr.ph29 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %indvars.iv33 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next34, %._crit_edge ] ; 5 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv33 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !603  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !603 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %._crit_edge, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %bb.e
  %i.ac = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.ad = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.ae = trunc nuw nsw i64 %indvars.iv33 to i32
  br label %.lr.ph25

._crit_edge:                                      ; preds = %bb.o, %bb.e
  %i.af = phi ptr [ %i.u, %bb.e ], [ %i.cg, %bb.o ]
  %i.ag = phi ptr [ %i.v, %bb.e ], [ %i.ch, %bb.o ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %.0847
  br i1 %exitcond.not, label %._crit_edge30, label %bb.e, !llvm.loop !2154

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %bb.o
  %i.ah = phi ptr [ %i.cg, %bb.o ], [ %i.u, %.lr.ph25.preheader ] ; 9 uses
  %i.ai = phi ptr [ %i.ch, %bb.o ], [ %i.v, %.lr.ph25.preheader ] ; 10 uses
  %.sroa.015.024 = phi ptr [ %i.ci, %bb.o ], [ %i.y, %.lr.ph25.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.015.024, align 8, !tbaa !347 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 188
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %bb.f

bb.f:                                             ; preds = %.lr.ph25
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 190
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !1099, !range !560, !noundef !561
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !254 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 8
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.t, align 16, !tbaa !855
  %i.at = add nuw nsw i64 %i.aq, 1
  store i64 %i.at, ptr %i.a, align 8, !tbaa !254
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store i32 %i.ae, ptr %i.au, align 8, !tbaa !1071
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aj, ptr %i.av, align 8, !tbaa !1072
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.ai, %i.aw
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.ac, ptr %i.ai, align 8, !tbaa !1071
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !1072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.d, align 16, !tbaa !256
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.az = ptrtoint ptr %i.ai to i64
  %i.ba = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775792
  br i1 %i.bc, label %bb.l, label %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #43
end_hunk_0
