Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_y?download=true
inline.NumInlined: 169
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 95
begin_hunk_0_@Do_Func:bb.a

bb.er:                                            ; preds = %bb.eq
  %i.anj = load ptr, ptr %i.and, align 8, !tbaa !10
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.anj, i64 %i.anf
  %i.anl = load double, ptr %i.ank, align 8, !tbaa !32
  %i.anm = load ptr, ptr %i.alk, align 8, !tbaa !10
  %i.ann = getelementptr inbounds [8 x i8], ptr %i.anm, i64 %i.amv ; 2 uses
  %i.ano = load double, ptr %i.ann, align 8, !tbaa !32
  %i.anp = fadd double %i.anl, %i.ano
  store double %i.anp, ptr %i.ann, align 8, !tbaa !32
  %i.anq = add nsw i32 %.014742378, 1
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.11475 = phi i32 [ %i.anq, %bb.er ], [ %.014742378, %bb.eq ] ; 3 uses
  %.not1833 = icmp eq i64 %i.ane, 0
  br i1 %.not1833, label %._crit_edge2381, label %bb.eq, !llvm.loop !289

._crit_edge2381:                                  ; preds = %bb.es
  %i.anr = icmp eq i32 %.11475, 0
  br i1 %i.anr, label %._crit_edge2381.thread, label %bb.et

._crit_edge2381.thread:                           ; preds = %bb.ep, %._crit_edge2381
  %.151505.lcssa3014 = phi i64 [ %i.anf, %._crit_edge2381 ], [ %.1415042385, %bb.ep ]
  %i.ans = load ptr, ptr %i.all, align 8, !tbaa !37
  %i.ant = getelementptr inbounds i8, ptr %i.ans, i64 %i.amv
  store i8 1, ptr %i.ant, align 1, !tbaa !10
  br label %bb.eu

bb.et:                                            ; preds = %._crit_edge2381
  %i.anu = load ptr, ptr %i.all, align 8, !tbaa !37
  %i.anv = getelementptr inbounds i8, ptr %i.anu, i64 %i.amv
  store i8 0, ptr %i.anv, align 1, !tbaa !10
  %i.anw = sitofp i32 %.11475 to double
  %i.anx = load ptr, ptr %i.alk, align 8, !tbaa !10
  %i.any = getelementptr inbounds [8 x i8], ptr %i.anx, i64 %i.amv ; 2 uses
  %i.anz = load double, ptr %i.any, align 8, !tbaa !32
  %i.aoa = fdiv double %i.anz, %i.anw
  store double %i.aoa, ptr %i.any, align 8, !tbaa !32
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %._crit_edge2381.thread
  %.151505.lcssa3013 = phi i64 [ %i.anf, %bb.et ], [ %.151505.lcssa3014, %._crit_edge2381.thread ]
  %.not1832 = icmp eq i64 %i.amv, 0
  br i1 %.not1832, label %.thread, label %bb.ep, !llvm.loop !290

bb.ev:                                            ; preds = %bb.cq
  %i.aob = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 64
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !23
  %i.aoe = mul nsw i64 %i.aod, %i.od              ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aob, i64 60
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !22
  switch i32 %i.aog, label %.thread [
    i32 259, label %.preheader1929
    i32 260, label %.preheader1931
  ]

.preheader1931:                                   ; preds = %bb.ev
  %.not18262352 = icmp eq i64 %i.od, 0
  br i1 %.not18262352, label %.thread, label %.lr.ph2354

.lr.ph2354:                                       ; preds = %.preheader1931
  %i.aoh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.fj

.preheader1929:                                   ; preds = %bb.ev
  %.not18292373 = icmp eq i64 %i.od, 0
  br i1 %.not18292373, label %.thread, label %.lr.ph2375

.lr.ph2375:                                       ; preds = %.preheader1929
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.ew

bb.ew:                                            ; preds = %.lr.ph2375, %bb.fi
  %.in2532 = phi i64 [ %i.od, %.lr.ph2375 ], [ %i.aol, %bb.fi ]
  %.1615062374 = phi i64 [ %i.aoe, %.lr.ph2375 ], [ %.191509, %bb.fi ] ; 6 uses
  %i.aol = add nsw i64 %.in2532, -1               ; 5 uses
  %i.aom = load ptr, ptr %i.a, align 16, !tbaa !50 ; 5 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 64
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !23 ; 9 uses
  %.not18302355 = icmp eq i64 %i.aoo, 0
  br i1 %.not18302355, label %._crit_edge2361.thread, label %.lr.ph2360

.lr.ph2360:                                       ; preds = %bb.ew
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 120
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !37 ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aom, i64 128 ; 3 uses
  %i.aos = add i64 %i.aoo, -1                     ; 2 uses
  %xtraiter3662 = and i64 %i.aoo, 1
  %i.aot = icmp eq i64 %i.aos, 0
  br i1 %i.aot, label %.epil.preheader3661, label %.lr.ph2360.new

.lr.ph2360.new:                                   ; preds = %.lr.ph2360
  %unroll_iter3667 = and i64 %i.aoo, -2
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fb, %.lr.ph2360.new
  %.014702358 = phi double [ 0.000000e+00, %.lr.ph2360.new ], [ %.11471.1, %bb.fb ] ; 2 uses
  %.014722357 = phi i32 [ 0, %.lr.ph2360.new ], [ %.11473.1, %bb.fb ] ; 2 uses
  %.1715072356 = phi i64 [ %.1615062374, %.lr.ph2360.new ], [ %i.ape, %bb.fb ] ; 2 uses
  %niter3668 = phi i64 [ 0, %.lr.ph2360.new ], [ %niter3668.next.1, %bb.fb ]
  %i.aou = add nsw i64 %.1715072356, -1           ; 2 uses
  %i.aov = getelementptr inbounds i8, ptr %i.aoq, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !10
  %i.aox = icmp eq i8 %i.aow, 0
  br i1 %i.aox, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.aoy = load ptr, ptr %i.aor, align 8, !tbaa !10
  %i.aoz = getelementptr inbounds [8 x i8], ptr %i.aoy, i64 %i.aou
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !26
  %i.apb = sitofp i64 %i.apa to double
  %i.apc = fadd double %.014702358, %i.apb
  %i.apd = add nsw i32 %.014722357, 1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.11473 = phi i32 [ %i.apd, %bb.ey ], [ %.014722357, %bb.ex ] ; 2 uses
  %.11471 = phi double [ %i.apc, %bb.ey ], [ %.014702358, %bb.ex ] ; 2 uses
  %i.ape = add nsw i64 %.1715072356, -2           ; 4 uses
  %i.apf = getelementptr inbounds i8, ptr %i.aoq, i64 %i.ape
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !10
  %i.aph = icmp eq i8 %i.apg, 0
  br i1 %i.aph, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.api = load ptr, ptr %i.aor, align 8, !tbaa !10
  %i.apj = getelementptr inbounds [8 x i8], ptr %i.api, i64 %i.ape
  %i.apk = load i64, ptr %i.apj, align 8, !tbaa !26
  %i.apl = sitofp i64 %i.apk to double
  %i.apm = fadd double %.11471, %i.apl
  %i.apn = add nsw i32 %.11473, 1
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.11473.1 = phi i32 [ %i.apn, %bb.fa ], [ %.11473, %bb.ez ] ; 3 uses
  %.11471.1 = phi double [ %i.apm, %bb.fa ], [ %.11471, %bb.ez ] ; 3 uses
  %niter3668.next.1 = add nuw i64 %niter3668, 2   ; 2 uses
  %niter3668.ncmp.1 = icmp eq i64 %niter3668.next.1, %unroll_iter3667
  br i1 %niter3668.ncmp.1, label %._crit_edge2361.unr-lcssa, label %bb.ex, !llvm.loop !291

._crit_edge2361.unr-lcssa:                        ; preds = %bb.fb
  %lcmp.mod3663.not = icmp eq i64 %xtraiter3662, 0
  br i1 %lcmp.mod3663.not, label %._crit_edge2361, label %.epil.preheader3661

.epil.preheader3661:                              ; preds = %._crit_edge2361.unr-lcssa, %.lr.ph2360
  %.014702358.epil.init = phi double [ 0.000000e+00, %.lr.ph2360 ], [ %.11471.1, %._crit_edge2361.unr-lcssa ] ; 2 uses
  %.014722357.epil.init = phi i32 [ 0, %.lr.ph2360 ], [ %.11473.1, %._crit_edge2361.unr-lcssa ] ; 2 uses
  %.1715072356.epil.init = phi i64 [ %.1615062374, %.lr.ph2360 ], [ %i.ape, %._crit_edge2361.unr-lcssa ]
  %lcmp.mod3666 = trunc i64 %i.aoo to i1
  call void @llvm.assume(i1 %lcmp.mod3666)
  %i.apo = add nsw i64 %.1715072356.epil.init, -1 ; 2 uses
  %i.app = getelementptr inbounds i8, ptr %i.aoq, i64 %i.apo
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !10
  %i.apr = icmp eq i8 %i.apq, 0
  br i1 %i.apr, label %bb.fc, label %._crit_edge2361

bb.fc:                                            ; preds = %.epil.preheader3661
  %i.aps = load ptr, ptr %i.aor, align 8, !tbaa !10
  %i.apt = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.apo
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !26
  %i.apv = sitofp i64 %i.apu to double
  %i.apw = fadd double %.014702358.epil.init, %i.apv
  %i.apx = add nsw i32 %.014722357.epil.init, 1
  br label %._crit_edge2361

._crit_edge2361:                                  ; preds = %.epil.preheader3661, %bb.fc, %._crit_edge2361.unr-lcssa
  %.11473.lcssa = phi i32 [ %.11473.1, %._crit_edge2361.unr-lcssa ], [ %i.apx, %bb.fc ], [ %.014722357.epil.init, %.epil.preheader3661 ] ; 2 uses
  %.11471.lcssa = phi double [ %.11471.1, %._crit_edge2361.unr-lcssa ], [ %i.apw, %bb.fc ], [ %.014702358.epil.init, %.epil.preheader3661 ]
  %i.apy = sub i64 %.1615062374, %i.aoo           ; 2 uses
  %i.apz = icmp sgt i32 %.11473.lcssa, 1
  br i1 %i.apz, label %.lr.ph2369, label %._crit_edge2361.thread

.lr.ph2369:                                       ; preds = %._crit_edge2361
  %i.aqa = uitofp nneg i32 %.11473.lcssa to double ; 2 uses
  %i.aqb = fdiv double %.11471.lcssa, %i.aqa      ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aom, i64 120
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !37 ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aom, i64 128 ; 3 uses
  %xtraiter3671 = and i64 %i.aoo, 1
  %lcmp.mod3672.not = icmp eq i64 %xtraiter3671, 0
  br i1 %lcmp.mod3672.not, label %.prol.loopexit3670, label %.prol.preheader3669

.prol.preheader3669:                              ; preds = %.lr.ph2369
  %i.aqf = add nsw i64 %i.aoo, -1                 ; 2 uses
  %i.aqg = add nsw i64 %.1615062374, -1           ; 4 uses
  %i.aqh = getelementptr inbounds i8, ptr %i.aqd, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !10
  %i.aqj = icmp eq i8 %i.aqi, 0
  br i1 %i.aqj, label %bb.fd, label %.prol.loopexit3670

bb.fd:                                            ; preds = %.prol.preheader3669
  %i.aqk = load ptr, ptr %i.aqe, align 8, !tbaa !10
  %i.aql = getelementptr inbounds [8 x i8], ptr %i.aqk, i64 %i.aqg
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !26
  %i.aqn = sitofp i64 %i.aqm to double
  %i.aqo = fsub double %i.aqn, %i.aqb             ; 2 uses
  %3 = fmul double %i.aqo, %i.aqo                 ; 2 uses
  br label %.prol.loopexit3670

.prol.loopexit3670:                               ; preds = %.prol.preheader3669, %bb.fd, %.lr.ph2369
  %.11469.lcssa.unr = phi double [ poison, %.lr.ph2369 ], [ %3, %bb.fd ], [ 0.000000e+00, %.prol.preheader3669 ]
  %.in2534.unr = phi i64 [ %i.aoo, %.lr.ph2369 ], [ %i.aqf, %bb.fd ], [ %i.aqf, %.prol.preheader3669 ]
  %.014682367.unr = phi double [ 0.000000e+00, %.lr.ph2369 ], [ %3, %bb.fd ], [ 0.000000e+00, %.prol.preheader3669 ]
  %.1815082366.unr = phi i64 [ %.1615062374, %.lr.ph2369 ], [ %i.aqg, %bb.fd ], [ %i.aqg, %.prol.preheader3669 ]
  %i.aqp = icmp eq i64 %i.aos, 0
  br i1 %i.aqp, label %._crit_edge2370, label %.lr.ph2369.new

.lr.ph2369.new:                                   ; preds = %.prol.loopexit3670, %bb.fh
  %.in2534 = phi i64 [ %i.ara, %bb.fh ], [ %.in2534.unr, %.prol.loopexit3670 ]
  %.014682367 = phi double [ %.11469.1, %bb.fh ], [ %.014682367.unr, %.prol.loopexit3670 ] ; 2 uses
  %.1815082366 = phi i64 [ %i.arb, %bb.fh ], [ %.1815082366.unr, %.prol.loopexit3670 ] ; 2 uses
  %i.aqq = add nsw i64 %.1815082366, -1           ; 2 uses
  %i.aqr = getelementptr inbounds i8, ptr %i.aqd, i64 %i.aqq
  %i.aqs = load i8, ptr %i.aqr, align 1, !tbaa !10
  %i.aqt = icmp eq i8 %i.aqs, 0
  br i1 %i.aqt, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %.lr.ph2369.new
  %i.aqu = load ptr, ptr %i.aqe, align 8, !tbaa !10
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.aqu, i64 %i.aqq
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !26
  %i.aqx = sitofp i64 %i.aqw to double
  %i.aqy = fsub double %i.aqx, %i.aqb             ; 2 uses
  %i.aqz = call double @llvm.fmuladd.f64(double %i.aqy, double %i.aqy, double %.014682367)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph2369.new
  %.11469 = phi double [ %i.aqz, %bb.fe ], [ %.014682367, %.lr.ph2369.new ] ; 2 uses
  %i.ara = add nsw i64 %.in2534, -2               ; 2 uses
  %i.arb = add nsw i64 %.1815082366, -2           ; 3 uses
  %i.arc = getelementptr inbounds i8, ptr %i.aqd, i64 %i.arb
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !10
  %i.are = icmp eq i8 %i.ard, 0
  br i1 %i.are, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.arf = load ptr, ptr %i.aqe, align 8, !tbaa !10
  %i.arg = getelementptr inbounds [8 x i8], ptr %i.arf, i64 %i.arb
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !26
  %i.ari = sitofp i64 %i.arh to double
  %i.arj = fsub double %i.ari, %i.aqb             ; 2 uses
  %i.ark = call double @llvm.fmuladd.f64(double %i.arj, double %i.arj, double %.11469)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.11469.1 = phi double [ %i.ark, %bb.fg ], [ %.11469, %bb.ff ] ; 2 uses
  %.not1831.1 = icmp eq i64 %i.ara, 0
  br i1 %.not1831.1, label %._crit_edge2370, label %.lr.ph2369.new, !llvm.loop !292

._crit_edge2370:                                  ; preds = %bb.fh, %.prol.loopexit3670
  %.11469.lcssa = phi double [ %.11469.lcssa.unr, %.prol.loopexit3670 ], [ %.11469.1, %bb.fh ]
  %i.arl = fadd double %i.aqa, -1.000000e+00
  %i.arm = fdiv double %.11469.lcssa, %i.arl
  %i.arn = load ptr, ptr %i.aoj, align 8, !tbaa !37
  %i.aro = getelementptr inbounds i8, ptr %i.arn, i64 %i.aol
  store i8 0, ptr %i.aro, align 1, !tbaa !10
  %i.arp = call double @sqrt(double noundef %i.arm) #24
  br label %bb.fi

._crit_edge2361.thread:                           ; preds = %bb.ew, %._crit_edge2361
  %.171507.lcssa3018 = phi i64 [ %i.apy, %._crit_edge2361 ], [ %.1615062374, %bb.ew ]
  %i.arq = load ptr, ptr %i.aoj, align 8, !tbaa !37
  %i.arr = getelementptr inbounds i8, ptr %i.arq, i64 %i.aol
  store i8 0, ptr %i.arr, align 1, !tbaa !10
  br label %bb.fi

bb.fi:                                            ; preds = %._crit_edge2361.thread, %._crit_edge2370
  %.sink = phi double [ 0.000000e+00, %._crit_edge2361.thread ], [ %i.arp, %._crit_edge2370 ]
  %.191509 = phi i64 [ %.171507.lcssa3018, %._crit_edge2361.thread ], [ %i.apy, %._crit_edge2370 ]
  %i.ars = load ptr, ptr %i.aok, align 8, !tbaa !10
  %i.art = getelementptr inbounds [8 x i8], ptr %i.ars, i64 %i.aol
  store double %.sink, ptr %i.art, align 8, !tbaa !32
  %.not1829 = icmp eq i64 %i.aol, 0
  br i1 %.not1829, label %.thread, label %bb.ew, !llvm.loop !293

bb.fj:                                            ; preds = %.lr.ph2354, %bb.fv
  %.in2529 = phi i64 [ %i.od, %.lr.ph2354 ], [ %i.aru, %bb.fv ]
  %.2015102353 = phi i64 [ %i.aoe, %.lr.ph2354 ], [ %.231513, %bb.fv ] ; 6 uses
  %i.aru = add nsw i64 %.in2529, -1               ; 5 uses
  %i.arv = load ptr, ptr %i.a, align 16, !tbaa !50 ; 5 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 64
  %i.arx = load i64, ptr %i.arw, align 8, !tbaa !23 ; 9 uses
  %.not18272334 = icmp eq i64 %i.arx, 0
  br i1 %.not18272334, label %._crit_edge2340.thread, label %.lr.ph2339

.lr.ph2339:                                       ; preds = %bb.fj
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 120
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !37 ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arv, i64 128 ; 3 uses
  %i.asb = add i64 %i.arx, -1                     ; 2 uses
  %xtraiter3652 = and i64 %i.arx, 1
  %i.asc = icmp eq i64 %i.asb, 0
  br i1 %i.asc, label %.epil.preheader, label %.lr.ph2339.new

.lr.ph2339.new:                                   ; preds = %.lr.ph2339
  %unroll_iter = and i64 %i.arx, -2
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fo, %.lr.ph2339.new
  %.014642337 = phi double [ 0.000000e+00, %.lr.ph2339.new ], [ %.11465.1, %bb.fo ] ; 2 uses
  %.014662336 = phi i32 [ 0, %.lr.ph2339.new ], [ %.11467.1, %bb.fo ] ; 2 uses
  %.2115112335 = phi i64 [ %.2015102353, %.lr.ph2339.new ], [ %i.asm, %bb.fo ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph2339.new ], [ %niter.next.1, %bb.fo ]
  %i.asd = add nsw i64 %.2115112335, -1           ; 2 uses
  %i.ase = getelementptr inbounds i8, ptr %i.arz, i64 %i.asd
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !10
  %i.asg = icmp eq i8 %i.asf, 0
  br i1 %i.asg, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.ash = load ptr, ptr %i.asa, align 8, !tbaa !10
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %i.asd
  %i.asj = load double, ptr %i.asi, align 8, !tbaa !32
  %i.ask = fadd double %.014642337, %i.asj
  %i.asl = add nsw i32 %.014662336, 1
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.11467 = phi i32 [ %i.asl, %bb.fl ], [ %.014662336, %bb.fk ] ; 2 uses
  %.11465 = phi double [ %i.ask, %bb.fl ], [ %.014642337, %bb.fk ] ; 2 uses
  %i.asm = add nsw i64 %.2115112335, -2           ; 4 uses
  %i.asn = getelementptr inbounds i8, ptr %i.arz, i64 %i.asm
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !10
  %i.asp = icmp eq i8 %i.aso, 0
  br i1 %i.asp, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.asq = load ptr, ptr %i.asa, align 8, !tbaa !10
  %i.asr = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %i.asm
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !32
  %i.ast = fadd double %.11465, %i.ass
  %i.asu = add nsw i32 %.11467, 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.11467.1 = phi i32 [ %i.asu, %bb.fn ], [ %.11467, %bb.fm ] ; 3 uses
  %.11465.1 = phi double [ %i.ast, %bb.fn ], [ %.11465, %bb.fm ] ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge2340.unr-lcssa, label %bb.fk, !llvm.loop !294

._crit_edge2340.unr-lcssa:                        ; preds = %bb.fo
  %lcmp.mod3653.not = icmp eq i64 %xtraiter3652, 0
  br i1 %lcmp.mod3653.not, label %._crit_edge2340, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2340.unr-lcssa, %.lr.ph2339
  %.014642337.epil.init = phi double [ 0.000000e+00, %.lr.ph2339 ], [ %.11465.1, %._crit_edge2340.unr-lcssa ] ; 2 uses
  %.014662336.epil.init = phi i32 [ 0, %.lr.ph2339 ], [ %.11467.1, %._crit_edge2340.unr-lcssa ] ; 2 uses
  %.2115112335.epil.init = phi i64 [ %.2015102353, %.lr.ph2339 ], [ %i.asm, %._crit_edge2340.unr-lcssa ]
  %lcmp.mod3656 = trunc i64 %i.arx to i1
  call void @llvm.assume(i1 %lcmp.mod3656)
  %i.asv = add nsw i64 %.2115112335.epil.init, -1 ; 2 uses
  %i.asw = getelementptr inbounds i8, ptr %i.arz, i64 %i.asv
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !10
  %i.asy = icmp eq i8 %i.asx, 0
  br i1 %i.asy, label %bb.fp, label %._crit_edge2340

bb.fp:                                            ; preds = %.epil.preheader
  %i.asz = load ptr, ptr %i.asa, align 8, !tbaa !10
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.asz, i64 %i.asv
  %i.atb = load double, ptr %i.ata, align 8, !tbaa !32
  %i.atc = fadd double %.014642337.epil.init, %i.atb
  %i.atd = add nsw i32 %.014662336.epil.init, 1
  br label %._crit_edge2340

._crit_edge2340:                                  ; preds = %.epil.preheader, %bb.fp, %._crit_edge2340.unr-lcssa
  %.11467.lcssa = phi i32 [ %.11467.1, %._crit_edge2340.unr-lcssa ], [ %i.atd, %bb.fp ], [ %.014662336.epil.init, %.epil.preheader ] ; 2 uses
  %.11465.lcssa = phi double [ %.11465.1, %._crit_edge2340.unr-lcssa ], [ %i.atc, %bb.fp ], [ %.014642337.epil.init, %.epil.preheader ]
  %i.ate = sub i64 %.2015102353, %i.arx           ; 2 uses
  %i.atf = icmp sgt i32 %.11467.lcssa, 1
  br i1 %i.atf, label %.lr.ph2348, label %._crit_edge2340.thread

.lr.ph2348:                                       ; preds = %._crit_edge2340
  %i.atg = uitofp nneg i32 %.11467.lcssa to double ; 2 uses
  %i.ath = fdiv double %.11465.lcssa, %i.atg      ; 3 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.arv, i64 120
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !37 ; 3 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arv, i64 128 ; 3 uses
  %xtraiter3659 = and i64 %i.arx, 1
  %lcmp.mod3660.not = icmp eq i64 %xtraiter3659, 0
  br i1 %lcmp.mod3660.not, label %.prol.loopexit3658, label %.prol.preheader3657

.prol.preheader3657:                              ; preds = %.lr.ph2348
  %i.atl = add nsw i64 %i.arx, -1                 ; 2 uses
  %i.atm = add nsw i64 %.2015102353, -1           ; 4 uses
  %i.atn = getelementptr inbounds i8, ptr %i.atj, i64 %i.atm
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !10
  %i.atp = icmp eq i8 %i.ato, 0
  br i1 %i.atp, label %bb.fq, label %.prol.loopexit3658

bb.fq:                                            ; preds = %.prol.preheader3657
  %i.atq = load ptr, ptr %i.atk, align 8, !tbaa !10
  %i.atr = getelementptr inbounds [8 x i8], ptr %i.atq, i64 %i.atm
  %i.ats = load double, ptr %i.atr, align 8, !tbaa !32
  %i.att = fsub double %i.ats, %i.ath             ; 2 uses
  %4 = fmul double %i.att, %i.att                 ; 2 uses
  br label %.prol.loopexit3658

.prol.loopexit3658:                               ; preds = %.prol.preheader3657, %bb.fq, %.lr.ph2348
  %.11463.lcssa.unr = phi double [ poison, %.lr.ph2348 ], [ %4, %bb.fq ], [ 0.000000e+00, %.prol.preheader3657 ]
  %.in2531.unr = phi i64 [ %i.arx, %.lr.ph2348 ], [ %i.atl, %bb.fq ], [ %i.atl, %.prol.preheader3657 ]
  %.014622346.unr = phi double [ 0.000000e+00, %.lr.ph2348 ], [ %4, %bb.fq ], [ 0.000000e+00, %.prol.preheader3657 ]
  %.2215122345.unr = phi i64 [ %.2015102353, %.lr.ph2348 ], [ %i.atm, %bb.fq ], [ %i.atm, %.prol.preheader3657 ]
  %i.atu = icmp eq i64 %i.asb, 0
  br i1 %i.atu, label %._crit_edge2349, label %.lr.ph2348.new

.lr.ph2348.new:                                   ; preds = %.prol.loopexit3658, %bb.fu
  %.in2531 = phi i64 [ %i.aue, %bb.fu ], [ %.in2531.unr, %.prol.loopexit3658 ]
  %.014622346 = phi double [ %.11463.1, %bb.fu ], [ %.014622346.unr, %.prol.loopexit3658 ] ; 2 uses
  %.2215122345 = phi i64 [ %i.auf, %bb.fu ], [ %.2215122345.unr, %.prol.loopexit3658 ] ; 2 uses
  %i.atv = add nsw i64 %.2215122345, -1           ; 2 uses
  %i.atw = getelementptr inbounds i8, ptr %i.atj, i64 %i.atv
  %i.atx = load i8, ptr %i.atw, align 1, !tbaa !10
  %i.aty = icmp eq i8 %i.atx, 0
  br i1 %i.aty, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.lr.ph2348.new
  %i.atz = load ptr, ptr %i.atk, align 8, !tbaa !10
  %i.aua = getelementptr inbounds [8 x i8], ptr %i.atz, i64 %i.atv
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !32
  %i.auc = fsub double %i.aub, %i.ath             ; 2 uses
  %i.aud = call double @llvm.fmuladd.f64(double %i.auc, double %i.auc, double %.014622346)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.lr.ph2348.new
  %.11463 = phi double [ %i.aud, %bb.fr ], [ %.014622346, %.lr.ph2348.new ] ; 2 uses
  %i.aue = add nsw i64 %.in2531, -2               ; 2 uses
  %i.auf = add nsw i64 %.2215122345, -2           ; 3 uses
  %i.aug = getelementptr inbounds i8, ptr %i.atj, i64 %i.auf
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !10
  %i.aui = icmp eq i8 %i.auh, 0
  br i1 %i.aui, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.auj = load ptr, ptr %i.atk, align 8, !tbaa !10
  %i.auk = getelementptr inbounds [8 x i8], ptr %i.auj, i64 %i.auf
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !32
  %i.aum = fsub double %i.aul, %i.ath             ; 2 uses
  %i.aun = call double @llvm.fmuladd.f64(double %i.aum, double %i.aum, double %.11463)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.11463.1 = phi double [ %i.aun, %bb.ft ], [ %.11463, %bb.fs ] ; 2 uses
  %.not1828.1 = icmp eq i64 %i.aue, 0
  br i1 %.not1828.1, label %._crit_edge2349, label %.lr.ph2348.new, !llvm.loop !295

._crit_edge2349:                                  ; preds = %bb.fu, %.prol.loopexit3658
  %.11463.lcssa = phi double [ %.11463.lcssa.unr, %.prol.loopexit3658 ], [ %.11463.1, %bb.fu ]
  %i.auo = fadd double %i.atg, -1.000000e+00
  %i.aup = fdiv double %.11463.lcssa, %i.auo
  %i.auq = load ptr, ptr %i.aoh, align 8, !tbaa !37
  %i.aur = getelementptr inbounds i8, ptr %i.auq, i64 %i.aru
  store i8 0, ptr %i.aur, align 1, !tbaa !10
  %i.aus = call double @sqrt(double noundef %i.aup) #24
  br label %bb.fv

._crit_edge2340.thread:                           ; preds = %bb.fj, %._crit_edge2340
  %.211511.lcssa3022 = phi i64 [ %i.ate, %._crit_edge2340 ], [ %.2015102353, %bb.fj ]
  %i.aut = load ptr, ptr %i.aoh, align 8, !tbaa !37
  %i.auu = getelementptr inbounds i8, ptr %i.aut, i64 %i.aru
  store i8 0, ptr %i.auu, align 1, !tbaa !10
  br label %bb.fv

bb.fv:                                            ; preds = %._crit_edge2340.thread, %._crit_edge2349
  %.sink3112 = phi double [ 0.000000e+00, %._crit_edge2340.thread ], [ %i.aus, %._crit_edge2349 ]
  %.231513 = phi i64 [ %.211511.lcssa3022, %._crit_edge2340.thread ], [ %i.ate, %._crit_edge2349 ]
  %i.auv = load ptr, ptr %i.aoi, align 8, !tbaa !10
  %i.auw = getelementptr inbounds [8 x i8], ptr %i.auv, i64 %i.aru
  store double %.sink3112, ptr %i.auw, align 8, !tbaa !32
  %.not1826 = icmp eq i64 %i.aru, 0
  br i1 %.not1826, label %.thread, label %bb.fj, !llvm.loop !296

bb.fw:                                            ; preds = %bb.cq
  %i.aux = load ptr, ptr %i.a, align 16, !tbaa !50 ; 4 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 64
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !23 ; 5 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aux, i64 60
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !22
  %i.avc = icmp eq i32 %i.avb, 259
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aux, i64 128
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !10 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aux, i64 120
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !37 ; 2 uses
  %i.avh = shl i64 %i.auz, 3
  %i.avi = call noalias ptr @malloc(i64 noundef %i.avh) #25 ; 15 uses
  %i.avj = icmp eq ptr %i.avi, null               ; 2 uses
  br i1 %i.avc, label %bb.fx, label %bb.gh

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.avj, label %bb.fy, label %.preheader1933

.preheader1933:                                   ; preds = %bb.fx
  %i.avk = icmp sgt i64 %i.od, 0
  br i1 %i.avk, label %.lr.ph2332, label %._crit_edge2333

.lr.ph2332:                                       ; preds = %.preheader1933
  %i.avl = trunc i64 %i.auz to i32                ; 5 uses
  %.not18252319 = icmp eq i32 %i.avl, 0
  %i.avm = ptrtoint ptr %i.avi to i64             ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.avp = add i64 %i.auz, 4294967295
  %i.avq = and i64 %i.avp, 4294967295
  %xtraiter3650 = and i32 %i.avl, 1
  %lcmp.mod3651.not = icmp eq i32 %xtraiter3650, 0
  %i.avr = add nsw i32 %i.avl, -1
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.avt = icmp eq i32 %i.avl, 1
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call fastcc void @fits_parser_yyerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.106)
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !10
  call void @free(ptr noundef %i.avv) #24
  br label %.thread

bb.fz:                                            ; preds = %.lr.ph2332, %bb.gg
  %indvars.iv2708 = phi i64 [ 0, %.lr.ph2332 ], [ %indvars.iv.next2709, %bb.gg ] ; 3 uses
  %.014542330 = phi ptr [ %i.avg, %.lr.ph2332 ], [ %.11455.lcssa, %bb.gg ] ; 5 uses
  %.014562329 = phi ptr [ %i.ave, %.lr.ph2332 ], [ %.11457.lcssa, %bb.gg ] ; 4 uses
  br i1 %.not18252319, label %._crit_edge2325, label %.lr.ph2324.preheader

.lr.ph2324.preheader:                             ; preds = %bb.fz
  br i1 %lcmp.mod3651.not, label %.lr.ph2324.prol.loopexit, label %.lr.ph2324.prol

.lr.ph2324.prol:                                  ; preds = %.lr.ph2324.preheader
  %i.avw = load i8, ptr %.014542330, align 1, !tbaa !10
  %i.avx = icmp eq i8 %i.avw, 0
  br i1 %i.avx, label %bb.ga, label %.lr.ph2324.prol.loopexit.unr-lcssa

bb.ga:                                            ; preds = %.lr.ph2324.prol
  %i.avy = load i64, ptr %.014562329, align 8, !tbaa !26
  store i64 %i.avy, ptr %i.avi, align 8, !tbaa !26
  br label %.lr.ph2324.prol.loopexit.unr-lcssa

.lr.ph2324.prol.loopexit.unr-lcssa:               ; preds = %bb.ga, %.lr.ph2324.prol
  %.11452.prol = phi ptr [ %i.avs, %bb.ga ], [ %i.avi, %.lr.ph2324.prol ] ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.014562329, i64 8 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.014542330, i64 1
  br label %.lr.ph2324.prol.loopexit

.lr.ph2324.prol.loopexit:                         ; preds = %.lr.ph2324.prol.loopexit.unr-lcssa, %.lr.ph2324.preheader
  %.11452.lcssa.unr = phi ptr [ poison, %.lr.ph2324.preheader ], [ %.11452.prol, %.lr.ph2324.prol.loopexit.unr-lcssa ]
  %.lcssa3578.unr = phi ptr [ poison, %.lr.ph2324.preheader ], [ %i.avz, %.lr.ph2324.prol.loopexit.unr-lcssa ]
  %.in2528.unr = phi i32 [ %i.avl, %.lr.ph2324.preheader ], [ %i.avr, %.lr.ph2324.prol.loopexit.unr-lcssa ]
  %.014512322.unr = phi ptr [ %i.avi, %.lr.ph2324.preheader ], [ %.11452.prol, %.lr.ph2324.prol.loopexit.unr-lcssa ]
  %.114552321.unr = phi ptr [ %.014542330, %.lr.ph2324.preheader ], [ %i.awa, %.lr.ph2324.prol.loopexit.unr-lcssa ]
  %.114572320.unr = phi ptr [ %.014562329, %.lr.ph2324.preheader ], [ %i.avz, %.lr.ph2324.prol.loopexit.unr-lcssa ]
  br i1 %i.avt, label %._crit_edge2325.loopexit, label %.lr.ph2324

.lr.ph2324:                                       ; preds = %.lr.ph2324.prol.loopexit, %bb.gd
  %.in2528 = phi i32 [ %i.awg, %bb.gd ], [ %.in2528.unr, %.lr.ph2324.prol.loopexit ]
  %.014512322 = phi ptr [ %.11452.1, %bb.gd ], [ %.014512322.unr, %.lr.ph2324.prol.loopexit ] ; 3 uses
  %.114552321 = phi ptr [ %i.awn, %bb.gd ], [ %.114552321.unr, %.lr.ph2324.prol.loopexit ] ; 3 uses
  %.114572320 = phi ptr [ %i.awm, %bb.gd ], [ %.114572320.unr, %.lr.ph2324.prol.loopexit ] ; 3 uses
  %i.awb = load i8, ptr %.114552321, align 1, !tbaa !10
  %i.awc = icmp eq i8 %i.awb, 0
  br i1 %i.awc, label %bb.gb, label %.lr.ph2324.1

bb.gb:                                            ; preds = %.lr.ph2324
  %i.awd = load i64, ptr %.114572320, align 8, !tbaa !26
  %i.awe = getelementptr inbounds nuw i8, ptr %.014512322, i64 8
  store i64 %i.awd, ptr %.014512322, align 8, !tbaa !26
  br label %.lr.ph2324.1

.lr.ph2324.1:                                     ; preds = %bb.gb, %.lr.ph2324
  %.11452 = phi ptr [ %i.awe, %bb.gb ], [ %.014512322, %.lr.ph2324 ] ; 3 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.114552321, i64 1
  %i.awg = add nsw i32 %.in2528, -2               ; 2 uses
  %i.awh = load i8, ptr %i.awf, align 1, !tbaa !10
  %i.awi = icmp eq i8 %i.awh, 0
  br i1 %i.awi, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.lr.ph2324.1
  %i.awj = getelementptr inbounds nuw i8, ptr %.114572320, i64 8
  %i.awk = load i64, ptr %i.awj, align 8, !tbaa !26
  %i.awl = getelementptr inbounds nuw i8, ptr %.11452, i64 8
  store i64 %i.awk, ptr %.11452, align 8, !tbaa !26
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.lr.ph2324.1
  %.11452.1 = phi ptr [ %i.awl, %bb.gc ], [ %.11452, %.lr.ph2324.1 ] ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %.114572320, i64 16 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.114552321, i64 2
  %.not1825.1 = icmp eq i32 %i.awg, 0
  br i1 %.not1825.1, label %._crit_edge2325.loopexit, label %.lr.ph2324, !llvm.loop !297

._crit_edge2325.loopexit:                         ; preds = %bb.gd, %.lr.ph2324.prol.loopexit
  %.11452.lcssa = phi ptr [ %.11452.lcssa.unr, %.lr.ph2324.prol.loopexit ], [ %.11452.1, %bb.gd ]
  %.lcssa3578 = phi ptr [ %.lcssa3578.unr, %.lr.ph2324.prol.loopexit ], [ %i.awm, %bb.gd ]
  %i.awo = getelementptr i8, ptr %.014542330, i64 %i.avq
  %scevgep2707 = getelementptr i8, ptr %i.awo, i64 1
  %.pre2798 = ptrtoint ptr %.11452.lcssa to i64
  br label %._crit_edge2325

end_hunk_0
