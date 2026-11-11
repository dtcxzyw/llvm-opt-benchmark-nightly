Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsymm_iutcopy?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsymm_iutcopy:bb.a

bb.u:                                             ; preds = %bb.t
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gm ; 7 uses
  %i.gu = icmp eq i64 %i.gg, -1
  br i1 %i.gu, label %.thread978, label %bb.v

.thread978:                                       ; preds = %bb.u, %.thread974
  %.3601977 = phi ptr [ %i.gr, %.thread974 ], [ %i.gt, %bb.u ]
  %i.gv = add nsw i64 %.0639.lcssa, 2
  %i.gw = mul nsw i64 %i.gv, %3
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gw
  br label %.thread985

bb.v:                                             ; preds = %bb.u
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gm ; 6 uses
  %i.ha = icmp eq i64 %i.gg, -2
  br i1 %i.ha, label %.thread985, label %bb.w

.thread985:                                       ; preds = %bb.v, %.thread978
  %.3592984 = phi ptr [ %i.gx, %.thread978 ], [ %i.gz, %bb.v ]
  %.3601976982 = phi ptr [ %.3601977, %.thread978 ], [ %i.gt, %bb.v ]
  %i.hb = add nsw i64 %.0639.lcssa, 3
  %i.hc = mul nsw i64 %i.hb, %3
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.hc
  br label %.thread995

bb.w:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.gm ; 5 uses
  %i.hg = icmp samesign ugt i64 %i.gg, -4
  br i1 %i.hg, label %.thread995, label %bb.x

.thread995:                                       ; preds = %bb.w, %.thread985
  %.3586994 = phi ptr [ %i.hd, %.thread985 ], [ %i.hf, %bb.w ]
  %.3601976981992 = phi ptr [ %.3601976982, %.thread985 ], [ %i.gt, %bb.w ]
  %.3592983990 = phi ptr [ %.3592984, %.thread985 ], [ %i.gz, %bb.w ]
  %i.hh = add nsw i64 %.0639.lcssa, 4
  %i.hi = mul nsw i64 %i.hh, %3
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.hi
  br label %.thread1008

bb.x:                                             ; preds = %bb.w
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.gm ; 4 uses
  %i.hm = icmp eq i64 %i.gg, -4
  br i1 %i.hm, label %.thread1008, label %bb.y

.thread1008:                                      ; preds = %bb.x, %.thread995
  %.35801007 = phi ptr [ %i.hj, %.thread995 ], [ %i.hl, %bb.x ]
  %.35929839891005 = phi ptr [ %.3592983990, %.thread995 ], [ %i.gz, %bb.x ]
  %.36019769819911003 = phi ptr [ %.3601976981992, %.thread995 ], [ %i.gt, %bb.x ]
  %.35869931001 = phi ptr [ %.3586994, %.thread995 ], [ %i.hf, %bb.x ]
  %i.hn = add nsw i64 %.0639.lcssa, 5
  %i.ho = mul nsw i64 %i.hn, %3
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.ho
  br label %.thread1024

bb.y:                                             ; preds = %bb.x
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.gm ; 3 uses
  %i.hs = icmp samesign ugt i64 %i.gg, -6
  br i1 %i.hs, label %.thread1024, label %bb.z

.thread1024:                                      ; preds = %bb.y, %.thread1008
  %.35741023 = phi ptr [ %i.hp, %.thread1008 ], [ %i.hr, %bb.y ]
  %.358699310001021 = phi ptr [ %.35869931001, %.thread1008 ], [ %i.hf, %bb.y ]
  %.360197698199110021019 = phi ptr [ %.36019769819911003, %.thread1008 ], [ %i.gt, %bb.y ]
  %.359298398910041017 = phi ptr [ %.35929839891005, %.thread1008 ], [ %i.gz, %bb.y ]
  %.358010061015 = phi ptr [ %.35801007, %.thread1008 ], [ %i.hl, %bb.y ]
  %i.ht = add nsw i64 %.0639.lcssa, 6
  %i.hu = mul nsw i64 %i.ht, %3
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.hu
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.gm ; 2 uses
  %i.hy = icmp eq i64 %i.gg, -6
  br i1 %i.hy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread1024, %bb.z
  %.35681042 = phi ptr [ %i.hv, %.thread1024 ], [ %i.hx, %bb.z ]
  %.3580100610141040 = phi ptr [ %.358010061015, %.thread1024 ], [ %i.hl, %bb.z ]
  %.3592983989100410161038 = phi ptr [ %.359298398910041017, %.thread1024 ], [ %i.gz, %bb.z ]
  %.3601976981991100210181036 = phi ptr [ %.360197698199110021019, %.thread1024 ], [ %i.gt, %bb.z ]
  %.3586993100010201034 = phi ptr [ %.358699310001021, %.thread1024 ], [ %i.hf, %bb.z ]
  %.357410221032 = phi ptr [ %.35741023, %.thread1024 ], [ %i.hr, %bb.z ]
  %i.hz = add nsw i64 %.0639.lcssa, 7
  %i.ia = mul nsw i64 %i.hz, %3
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.ia
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.gm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.35681041 = phi ptr [ %.35681042, %bb.aa ], [ %i.hx, %bb.ab ]
  %.3580100610141039 = phi ptr [ %.3580100610141040, %bb.aa ], [ %i.hl, %bb.ab ]
  %.3592983989100410161037 = phi ptr [ %.3592983989100410161038, %bb.aa ], [ %i.gz, %bb.ab ]
  %.3601976981991100210181035 = phi ptr [ %.3601976981991100210181036, %bb.aa ], [ %i.gt, %bb.ab ]
  %.3586993100010201033 = phi ptr [ %.3586993100010201034, %bb.aa ], [ %i.hf, %bb.ab ]
  %.357410221031 = phi ptr [ %.357410221032, %bb.aa ], [ %i.hr, %bb.ab ]
  %.3 = phi ptr [ %i.ib, %bb.aa ], [ %i.id, %bb.ab ]
  %i.ie = icmp sgt i64 %0, 0
  br i1 %i.ie, label %.lr.ph1093, label %._crit_edge1094

.lr.ph1093:                                       ; preds = %bb.ac, %.lr.ph1093
  %.41091 = phi ptr [ %.5, %.lr.ph1093 ], [ %.3, %bb.ac ] ; 3 uses
  %.45691090 = phi ptr [ %.5570, %.lr.ph1093 ], [ %.35681041, %bb.ac ] ; 3 uses
  %.45751089 = phi ptr [ %.5576, %.lr.ph1093 ], [ %.357410221031, %bb.ac ] ; 3 uses
  %.45811088 = phi ptr [ %.5582, %.lr.ph1093 ], [ %.3580100610141039, %bb.ac ] ; 3 uses
  %.45871087 = phi ptr [ %.5588, %.lr.ph1093 ], [ %.3586993100010201033, %bb.ac ] ; 3 uses
  %.45931086 = phi ptr [ %.5594, %.lr.ph1093 ], [ %.3592983989100410161037, %bb.ac ] ; 3 uses
  %.46021085 = phi ptr [ %.5603, %.lr.ph1093 ], [ %.3601976981991100210181035, %bb.ac ] ; 3 uses
  %.46111084 = phi ptr [ %.5612, %.lr.ph1093 ], [ %.3610, %bb.ac ] ; 3 uses
  %.16201083 = phi i64 [ %i.jt, %.lr.ph1093 ], [ %i.gg, %bb.ac ] ; 9 uses
  %.16261082 = phi i64 [ %i.ju, %.lr.ph1093 ], [ %0, %bb.ac ] ; 2 uses
  %.26321081 = phi ptr [ %i.js, %.lr.ph1093 ], [ %.0630.lcssa, %bb.ac ] ; 9 uses
  %i.if = load double, ptr %.46111084, align 8, !tbaa !17
  %i.ig = load double, ptr %.46021085, align 8, !tbaa !17
  %i.ih = load double, ptr %.45931086, align 8, !tbaa !17
  %i.ii = load double, ptr %.45871087, align 8, !tbaa !17
  %i.ij = load double, ptr %.45811088, align 8, !tbaa !17
  %i.ik = load double, ptr %.45751089, align 8, !tbaa !17
  %i.il = load double, ptr %.45691090, align 8, !tbaa !17
  %i.im = load double, ptr %.41091, align 8, !tbaa !17
  %i.in = icmp sgt i64 %.16201083, 0
  %i.io = getelementptr inbounds nuw i8, ptr %.46111084, i64 8
  %i.ip = getelementptr inbounds [8 x i8], ptr %.46111084, i64 %3
  %.5612 = select i1 %i.in, ptr %i.io, ptr %i.ip
  %i.iq = getelementptr inbounds nuw i8, ptr %.46021085, i64 8
  %i.ir = getelementptr inbounds [8 x i8], ptr %.46021085, i64 %3
  %i.is = icmp slt i64 %.16201083, 0
  %.5603 = select i1 %i.is, ptr %i.ir, ptr %i.iq
  %i.it = icmp sgt i64 %.16201083, -2
  %i.iu = getelementptr inbounds nuw i8, ptr %.45931086, i64 8
  %i.iv = getelementptr inbounds [8 x i8], ptr %.45931086, i64 %3
  %.5594 = select i1 %i.it, ptr %i.iu, ptr %i.iv
  %i.iw = icmp sgt i64 %.16201083, -3
  %i.ix = getelementptr inbounds nuw i8, ptr %.45871087, i64 8
  %i.iy = getelementptr inbounds [8 x i8], ptr %.45871087, i64 %3
  %.5588 = select i1 %i.iw, ptr %i.ix, ptr %i.iy
  %i.iz = icmp sgt i64 %.16201083, -4
  %i.ja = getelementptr inbounds nuw i8, ptr %.45811088, i64 8
  %i.jb = getelementptr inbounds [8 x i8], ptr %.45811088, i64 %3
  %.5582 = select i1 %i.iz, ptr %i.ja, ptr %i.jb
  %i.jc = icmp sgt i64 %.16201083, -5
  %i.jd = getelementptr inbounds nuw i8, ptr %.45751089, i64 8
  %i.je = getelementptr inbounds [8 x i8], ptr %.45751089, i64 %3
  %.5576 = select i1 %i.jc, ptr %i.jd, ptr %i.je
  %i.jf = icmp sgt i64 %.16201083, -6
  %i.jg = getelementptr inbounds nuw i8, ptr %.45691090, i64 8
  %i.jh = getelementptr inbounds [8 x i8], ptr %.45691090, i64 %3
  %.5570 = select i1 %i.jf, ptr %i.jg, ptr %i.jh
  %i.ji = icmp sgt i64 %.16201083, -7
  %i.jj = getelementptr inbounds nuw i8, ptr %.41091, i64 8
  %i.jk = getelementptr inbounds [8 x i8], ptr %.41091, i64 %3
  %.5 = select i1 %i.ji, ptr %i.jj, ptr %i.jk
  store double %i.if, ptr %.26321081, align 8, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.26321081, i64 8
  store double %i.ig, ptr %i.jl, align 8, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %.26321081, i64 16
  store double %i.ih, ptr %i.jm, align 8, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %.26321081, i64 24
  store double %i.ii, ptr %i.jn, align 8, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %.26321081, i64 32
  store double %i.ij, ptr %i.jo, align 8, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.26321081, i64 40
  store double %i.ik, ptr %i.jp, align 8, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %.26321081, i64 48
  store double %i.il, ptr %i.jq, align 8, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %.26321081, i64 56
  store double %i.im, ptr %i.jr, align 8, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %.26321081, i64 64 ; 2 uses
  %i.jt = add nsw i64 %.16201083, -1
  %i.ju = add nsw i64 %.16261082, -1
  %i.jv = icmp samesign ugt i64 %.16261082, 1
  br i1 %i.jv, label %.lr.ph1093, label %._crit_edge1094, !llvm.loop !10

._crit_edge1094:                                  ; preds = %.lr.ph1093, %bb.ac
  %.2632.lcssa = phi ptr [ %.0630.lcssa, %bb.ac ], [ %i.js, %.lr.ph1093 ]
  %i.jw = add nsw i64 %.0639.lcssa, 8
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge1094, %._crit_edge1078
  %.1640 = phi i64 [ %i.jw, %._crit_edge1094 ], [ %.0639.lcssa, %._crit_edge1078 ] ; 8 uses
  %.3633 = phi ptr [ %.2632.lcssa, %._crit_edge1094 ], [ %.0630.lcssa, %._crit_edge1078 ] ; 8 uses
  %i.jx = and i64 %1, 4
  %.not643 = icmp eq i64 %i.jx, 0
  br i1 %.not643, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jy = sub nsw i64 %.1640, %5                  ; 10 uses
  %i.jz = icmp sgt i64 %i.jy, 0
  %i.ka = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 4 uses
  %i.kb = mul nsw i64 %.1640, %3
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kb ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %2, i64 %.1640 ; 4 uses
  %i.ke = mul nsw i64 %5, %3                      ; 4 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ke ; 2 uses
  %.6613 = select i1 %i.jz, ptr %i.kc, ptr %i.kf  ; 2 uses
  %i.kg = icmp sgt i64 %i.jy, -1
  br i1 %i.kg, label %.thread1043, label %bb.af

.thread1043:                                      ; preds = %bb.ae
  %i.kh = add nsw i64 %.1640, 1
  %i.ki = mul nsw i64 %i.kh, %3
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.ki
  br label %.thread1047

bb.af:                                            ; preds = %bb.ae
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ke ; 3 uses
  %i.km = icmp eq i64 %i.jy, -1
  br i1 %i.km, label %.thread1047, label %bb.ag

.thread1047:                                      ; preds = %bb.af, %.thread1043
  %.66041046 = phi ptr [ %i.kj, %.thread1043 ], [ %i.kl, %bb.af ]
  %i.kn = add nsw i64 %.1640, 2
  %i.ko = mul nsw i64 %i.kn, %3
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.ko
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ke ; 2 uses
  %i.ks = icmp eq i64 %i.jy, -2
  br i1 %i.ks, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread1047, %bb.ag
  %.65951053 = phi ptr [ %i.kp, %.thread1047 ], [ %i.kr, %bb.ag ]
  %.660410451051 = phi ptr [ %.66041046, %.thread1047 ], [ %i.kl, %bb.ag ]
  %i.kt = add nsw i64 %.1640, 3
  %i.ku = mul nsw i64 %i.kt, %3
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.ku
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.ke
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.65951052 = phi ptr [ %.65951053, %bb.ah ], [ %i.kr, %bb.ai ] ; 4 uses
  %.660410451050 = phi ptr [ %.660410451051, %bb.ah ], [ %i.kl, %bb.ai ] ; 4 uses
  %.6 = phi ptr [ %i.kv, %bb.ah ], [ %i.kx, %bb.ai ] ; 4 uses
  %i.ky = icmp sgt i64 %0, 0
  br i1 %i.ky, label %.lr.ph1104.preheader, label %._crit_edge1105

.lr.ph1104.preheader:                             ; preds = %bb.aj
  %xtraiter = and i64 %0, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1104.prol.loopexit, label %.lr.ph1104.prol

.lr.ph1104.prol:                                  ; preds = %.lr.ph1104.preheader
  %i.kz = load double, ptr %.6613, align 8, !tbaa !17
  %i.la = load double, ptr %.660410451050, align 8, !tbaa !17
  %i.lb = load double, ptr %.65951052, align 8, !tbaa !17
  %i.lc = load double, ptr %.6, align 8, !tbaa !17
  %i.ld = icmp sgt i64 %i.jy, 0
  %i.le = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %3
  %.8615.prol = select i1 %i.ld, ptr %i.le, ptr %i.lf
  %i.lg = getelementptr inbounds nuw i8, ptr %.660410451050, i64 8
  %i.lh = getelementptr inbounds [8 x i8], ptr %.660410451050, i64 %3
  %i.li = icmp slt i64 %i.jy, 0
  %.8606.prol = select i1 %i.li, ptr %i.lh, ptr %i.lg
  %i.lj = icmp sgt i64 %i.jy, -2
  %i.lk = getelementptr inbounds nuw i8, ptr %.65951052, i64 8
  %i.ll = getelementptr inbounds [8 x i8], ptr %.65951052, i64 %3
  %.8597.prol = select i1 %i.lj, ptr %i.lk, ptr %i.ll
  %i.lm = icmp sgt i64 %i.jy, -3
  %i.ln = getelementptr inbounds nuw i8, ptr %.6, i64 8
  %i.lo = getelementptr inbounds [8 x i8], ptr %.6, i64 %3
  %.8.prol = select i1 %i.lm, ptr %i.ln, ptr %i.lo
  store double %i.kz, ptr %.3633, align 8, !tbaa !17
  %i.lp = getelementptr inbounds nuw i8, ptr %.3633, i64 8
  store double %i.la, ptr %i.lp, align 8, !tbaa !17
  %i.lq = getelementptr inbounds nuw i8, ptr %.3633, i64 16
  store double %i.lb, ptr %i.lq, align 8, !tbaa !17
  %i.lr = getelementptr inbounds nuw i8, ptr %.3633, i64 24
  store double %i.lc, ptr %i.lr, align 8, !tbaa !17
  %i.ls = getelementptr inbounds nuw i8, ptr %.3633, i64 32 ; 2 uses
  %i.lt = add nsw i64 %i.jy, -1
  %i.lu = add nsw i64 %0, -1
  br label %.lr.ph1104.prol.loopexit

.lr.ph1104.prol.loopexit:                         ; preds = %.lr.ph1104.prol, %.lr.ph1104.preheader
  %.71102.unr = phi ptr [ %.6, %.lr.ph1104.preheader ], [ %.8.prol, %.lr.ph1104.prol ]
  %.75961101.unr = phi ptr [ %.65951052, %.lr.ph1104.preheader ], [ %.8597.prol, %.lr.ph1104.prol ]
  %.76051100.unr = phi ptr [ %.660410451050, %.lr.ph1104.preheader ], [ %.8606.prol, %.lr.ph1104.prol ]
  %.76141099.unr = phi ptr [ %.6613, %.lr.ph1104.preheader ], [ %.8615.prol, %.lr.ph1104.prol ]
  %.26211098.unr = phi i64 [ %i.jy, %.lr.ph1104.preheader ], [ %i.lt, %.lr.ph1104.prol ]
  %.26271097.unr = phi i64 [ %0, %.lr.ph1104.preheader ], [ %i.lu, %.lr.ph1104.prol ]
  %.46341096.unr = phi ptr [ %.3633, %.lr.ph1104.preheader ], [ %i.ls, %.lr.ph1104.prol ]
  %.lcssa1141.unr = phi ptr [ poison, %.lr.ph1104.preheader ], [ %i.ls, %.lr.ph1104.prol ]
  %i.lv = icmp eq i64 %0, 1
  br i1 %i.lv, label %._crit_edge1105, label %.lr.ph1104

.lr.ph1104:                                       ; preds = %.lr.ph1104.prol.loopexit, %.lr.ph1104
  %.71102 = phi ptr [ %.8.1, %.lr.ph1104 ], [ %.71102.unr, %.lr.ph1104.prol.loopexit ] ; 4 uses
  %.75961101 = phi ptr [ %.8597.1, %.lr.ph1104 ], [ %.75961101.unr, %.lr.ph1104.prol.loopexit ] ; 4 uses
  %.76051100 = phi ptr [ %.8606.1, %.lr.ph1104 ], [ %.76051100.unr, %.lr.ph1104.prol.loopexit ] ; 4 uses
  %.76141099 = phi ptr [ %.8615.1, %.lr.ph1104 ], [ %.76141099.unr, %.lr.ph1104.prol.loopexit ] ; 4 uses
  %.26211098 = phi i64 [ %i.nk, %.lr.ph1104 ], [ %.26211098.unr, %.lr.ph1104.prol.loopexit ] ; 9 uses
  %.26271097 = phi i64 [ %i.nl, %.lr.ph1104 ], [ %.26271097.unr, %.lr.ph1104.prol.loopexit ] ; 2 uses
  %.46341096 = phi ptr [ %i.nj, %.lr.ph1104 ], [ %.46341096.unr, %.lr.ph1104.prol.loopexit ] ; 9 uses
  %i.lw = load double, ptr %.76141099, align 8, !tbaa !17
  %i.lx = load double, ptr %.76051100, align 8, !tbaa !17
  %i.ly = load double, ptr %.75961101, align 8, !tbaa !17
  %i.lz = load double, ptr %.71102, align 8, !tbaa !17
  %i.ma = icmp sgt i64 %.26211098, 0
  %i.mb = getelementptr inbounds nuw i8, ptr %.76141099, i64 8
  %i.mc = getelementptr inbounds [8 x i8], ptr %.76141099, i64 %3
  %.8615 = select i1 %i.ma, ptr %i.mb, ptr %i.mc  ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.76051100, i64 8
  %i.me = getelementptr inbounds [8 x i8], ptr %.76051100, i64 %3
  %i.mf = icmp slt i64 %.26211098, 0
  %.8606 = select i1 %i.mf, ptr %i.me, ptr %i.md  ; 2 uses
  %i.mg = icmp sgt i64 %.26211098, -2
  %i.mh = getelementptr inbounds nuw i8, ptr %.75961101, i64 8
  %i.mi = getelementptr inbounds [8 x i8], ptr %.75961101, i64 %3
  %.8597 = select i1 %i.mg, ptr %i.mh, ptr %i.mi  ; 2 uses
  %i.mj = icmp sgt i64 %.26211098, -3
  %i.mk = getelementptr inbounds nuw i8, ptr %.71102, i64 8
  %i.ml = getelementptr inbounds [8 x i8], ptr %.71102, i64 %3
  %.8 = select i1 %i.mj, ptr %i.mk, ptr %i.ml     ; 2 uses
  store double %i.lw, ptr %.46341096, align 8, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %.46341096, i64 8
  store double %i.lx, ptr %i.mm, align 8, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %.46341096, i64 16
  store double %i.ly, ptr %i.mn, align 8, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.46341096, i64 24
  store double %i.lz, ptr %i.mo, align 8, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %.46341096, i64 32
  %i.mq = load double, ptr %.8615, align 8, !tbaa !17
  %i.mr = load double, ptr %.8606, align 8, !tbaa !17
  %i.ms = load double, ptr %.8597, align 8, !tbaa !17
  %i.mt = load double, ptr %.8, align 8, !tbaa !17
  %i.mu = icmp sgt i64 %.26211098, 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.76141099, i64 16
  %i.mw = getelementptr inbounds [8 x i8], ptr %.8615, i64 %3
  %.8615.1 = select i1 %i.mu, ptr %i.mv, ptr %i.mw
  %i.mx = getelementptr inbounds nuw i8, ptr %.76051100, i64 16
  %i.my = getelementptr inbounds [8 x i8], ptr %.8606, i64 %3
  %i.mz = icmp slt i64 %.26211098, 1
  %.8606.1 = select i1 %i.mz, ptr %i.my, ptr %i.mx
  %i.na = getelementptr inbounds nuw i8, ptr %.75961101, i64 16
  %i.nb = getelementptr inbounds [8 x i8], ptr %.8597, i64 %3
  %i.nc = icmp slt i64 %.26211098, 0
  %.8597.1 = select i1 %i.nc, ptr %i.nb, ptr %i.na
  %i.nd = icmp sgt i64 %.26211098, -2
  %i.ne = getelementptr inbounds nuw i8, ptr %.71102, i64 16
  %i.nf = getelementptr inbounds [8 x i8], ptr %.8, i64 %3
  %.8.1 = select i1 %i.nd, ptr %i.ne, ptr %i.nf
  store double %i.mq, ptr %i.mp, align 8, !tbaa !17
  %i.ng = getelementptr inbounds nuw i8, ptr %.46341096, i64 40
  store double %i.mr, ptr %i.ng, align 8, !tbaa !17
  %i.nh = getelementptr inbounds nuw i8, ptr %.46341096, i64 48
  store double %i.ms, ptr %i.nh, align 8, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %.46341096, i64 56
  store double %i.mt, ptr %i.ni, align 8, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %.46341096, i64 64 ; 2 uses
  %i.nk = add nsw i64 %.26211098, -2
  %i.nl = add nsw i64 %.26271097, -2
  %i.nm = icmp sgt i64 %.26271097, 2
  br i1 %i.nm, label %.lr.ph1104, label %._crit_edge1105, !llvm.loop !11

._crit_edge1105:                                  ; preds = %.lr.ph1104.prol.loopexit, %.lr.ph1104, %bb.aj
  %.4634.lcssa = phi ptr [ %.3633, %bb.aj ], [ %.lcssa1141.unr, %.lr.ph1104.prol.loopexit ], [ %i.nj, %.lr.ph1104 ]
  %i.nn = add nsw i64 %.1640, 4
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge1105, %bb.ad
  %.2641 = phi i64 [ %i.nn, %._crit_edge1105 ], [ %.1640, %bb.ad ] ; 6 uses
  %.5635 = phi ptr [ %.4634.lcssa, %._crit_edge1105 ], [ %.3633, %bb.ad ] ; 4 uses
  %i.no = and i64 %1, 2
  %.not644 = icmp eq i64 %i.no, 0
  br i1 %.not644, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.np = icmp sgt i64 %0, 0
  br i1 %i.np, label %.lr.ph1113.preheader, label %._crit_edge1114

.lr.ph1113.preheader:                             ; preds = %bb.al
  %i.nq = sub nsw i64 %.2641, %5                  ; 4 uses
  %i.nr = icmp slt i64 %i.nq, 0
  %i.ns = getelementptr inbounds [8 x i8], ptr %2, i64 %.2641 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = mul nsw i64 %5, %3                      ; 2 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.nu
  %i.nw = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.nx = add nsw i64 %.2641, 1
  %i.ny = mul nsw i64 %i.nx, %3
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.ny
  %.9 = select i1 %i.nr, ptr %i.nv, ptr %i.nz     ; 2 uses
  %i.oa = icmp sgt i64 %i.nq, 0
  %i.ob = mul nsw i64 %.2641, %3
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.ob
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.nu
  %.9616 = select i1 %i.oa, ptr %i.oc, ptr %i.od  ; 2 uses
  %xtraiter1145 = and i64 %0, 3                   ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %.lr.ph1113.prol.loopexit, label %.lr.ph1113.prol

.lr.ph1113.prol:                                  ; preds = %.lr.ph1113.preheader, %.lr.ph1113.prol
  %.101111.prol = phi ptr [ %.11.prol, %.lr.ph1113.prol ], [ %.9, %.lr.ph1113.preheader ] ; 3 uses
  %.106171110.prol = phi ptr [ %.11618.prol, %.lr.ph1113.prol ], [ %.9616, %.lr.ph1113.preheader ] ; 3 uses
  %.36221109.prol = phi i64 [ %i.oo, %.lr.ph1113.prol ], [ %i.nq, %.lr.ph1113.preheader ] ; 3 uses
  %.36281108.prol = phi i64 [ %i.op, %.lr.ph1113.prol ], [ %0, %.lr.ph1113.preheader ]
  %.66361107.prol = phi ptr [ %i.on, %.lr.ph1113.prol ], [ %.5635, %.lr.ph1113.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1113.prol ], [ 0, %.lr.ph1113.preheader ]
  %i.oe = load double, ptr %.106171110.prol, align 8, !tbaa !17
  %i.of = load double, ptr %.101111.prol, align 8, !tbaa !17
  %i.og = icmp sgt i64 %.36221109.prol, 0
  %i.oh = getelementptr inbounds nuw i8, ptr %.106171110.prol, i64 8
  %i.oi = getelementptr inbounds [8 x i8], ptr %.106171110.prol, i64 %3
  %.11618.prol = select i1 %i.og, ptr %i.oh, ptr %i.oi ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.101111.prol, i64 8
  %i.ok = getelementptr inbounds [8 x i8], ptr %.101111.prol, i64 %3
  %i.ol = icmp slt i64 %.36221109.prol, 0
  %.11.prol = select i1 %i.ol, ptr %i.ok, ptr %i.oj ; 2 uses
  store double %i.oe, ptr %.66361107.prol, align 8, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %.66361107.prol, i64 8
  store double %i.of, ptr %i.om, align 8, !tbaa !17
  %i.on = getelementptr inbounds nuw i8, ptr %.66361107.prol, i64 16 ; 3 uses
  %i.oo = add nsw i64 %.36221109.prol, -1         ; 2 uses
  %i.op = add nsw i64 %.36281108.prol, -1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1145
  br i1 %prol.iter.cmp.not, label %.lr.ph1113.prol.loopexit, label %.lr.ph1113.prol, !llvm.loop !12

.lr.ph1113.prol.loopexit:                         ; preds = %.lr.ph1113.prol, %.lr.ph1113.preheader
  %.101111.unr = phi ptr [ %.9, %.lr.ph1113.preheader ], [ %.11.prol, %.lr.ph1113.prol ]
  %.106171110.unr = phi ptr [ %.9616, %.lr.ph1113.preheader ], [ %.11618.prol, %.lr.ph1113.prol ]
  %.36221109.unr = phi i64 [ %i.nq, %.lr.ph1113.preheader ], [ %i.oo, %.lr.ph1113.prol ]
  %.36281108.unr = phi i64 [ %0, %.lr.ph1113.preheader ], [ %i.op, %.lr.ph1113.prol ]
  %.66361107.unr = phi ptr [ %.5635, %.lr.ph1113.preheader ], [ %i.on, %.lr.ph1113.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph1113.preheader ], [ %i.on, %.lr.ph1113.prol ]
  %i.oq = icmp ult i64 %0, 4
  br i1 %i.oq, label %._crit_edge1114, label %.lr.ph1113

.lr.ph1113:                                       ; preds = %.lr.ph1113.prol.loopexit, %.lr.ph1113
  %.101111 = phi ptr [ %.11.3, %.lr.ph1113 ], [ %.101111.unr, %.lr.ph1113.prol.loopexit ] ; 6 uses
  %.106171110 = phi ptr [ %.11618.3, %.lr.ph1113 ], [ %.106171110.unr, %.lr.ph1113.prol.loopexit ] ; 6 uses
  %.36221109 = phi i64 [ %i.qf, %.lr.ph1113 ], [ %.36221109.unr, %.lr.ph1113.prol.loopexit ] ; 9 uses
  %.36281108 = phi i64 [ %i.qg, %.lr.ph1113 ], [ %.36281108.unr, %.lr.ph1113.prol.loopexit ] ; 2 uses
  %.66361107 = phi ptr [ %i.qe, %.lr.ph1113 ], [ %.66361107.unr, %.lr.ph1113.prol.loopexit ] ; 9 uses
  %i.or = load double, ptr %.106171110, align 8, !tbaa !17
  %i.os = load double, ptr %.101111, align 8, !tbaa !17
  %i.ot = icmp sgt i64 %.36221109, 0
  %i.ou = getelementptr inbounds nuw i8, ptr %.106171110, i64 8
  %i.ov = getelementptr inbounds [8 x i8], ptr %.106171110, i64 %3
  %.11618 = select i1 %i.ot, ptr %i.ou, ptr %i.ov ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.101111, i64 8
  %i.ox = getelementptr inbounds [8 x i8], ptr %.101111, i64 %3
  %i.oy = icmp slt i64 %.36221109, 0
  %.11 = select i1 %i.oy, ptr %i.ox, ptr %i.ow    ; 2 uses
  store double %i.or, ptr %.66361107, align 8, !tbaa !17
  %i.oz = getelementptr inbounds nuw i8, ptr %.66361107, i64 8
  store double %i.os, ptr %i.oz, align 8, !tbaa !17
  %i.pa = getelementptr inbounds nuw i8, ptr %.66361107, i64 16
  %i.pb = load double, ptr %.11618, align 8, !tbaa !17
  %i.pc = load double, ptr %.11, align 8, !tbaa !17
  %i.pd = icmp sgt i64 %.36221109, 1
  %i.pe = getelementptr inbounds nuw i8, ptr %.106171110, i64 16
  %i.pf = getelementptr inbounds [8 x i8], ptr %.11618, i64 %3
  %.11618.1 = select i1 %i.pd, ptr %i.pe, ptr %i.pf ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.101111, i64 16
  %i.ph = getelementptr inbounds [8 x i8], ptr %.11, i64 %3
  %i.pi = icmp slt i64 %.36221109, 1
  %.11.1 = select i1 %i.pi, ptr %i.ph, ptr %i.pg  ; 2 uses
  store double %i.pb, ptr %i.pa, align 8, !tbaa !17
  %i.pj = getelementptr inbounds nuw i8, ptr %.66361107, i64 24
  store double %i.pc, ptr %i.pj, align 8, !tbaa !17
  %i.pk = getelementptr inbounds nuw i8, ptr %.66361107, i64 32
  %i.pl = load double, ptr %.11618.1, align 8, !tbaa !17
  %i.pm = load double, ptr %.11.1, align 8, !tbaa !17
  %i.pn = icmp sgt i64 %.36221109, 2
  %i.po = getelementptr inbounds nuw i8, ptr %.106171110, i64 24
  %i.pp = getelementptr inbounds [8 x i8], ptr %.11618.1, i64 %3
  %.11618.2 = select i1 %i.pn, ptr %i.po, ptr %i.pp ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.101111, i64 24
  %i.pr = getelementptr inbounds [8 x i8], ptr %.11.1, i64 %3
  %i.ps = icmp slt i64 %.36221109, 2
  %.11.2 = select i1 %i.ps, ptr %i.pr, ptr %i.pq  ; 2 uses
  store double %i.pl, ptr %i.pk, align 8, !tbaa !17
  %i.pt = getelementptr inbounds nuw i8, ptr %.66361107, i64 40
  store double %i.pm, ptr %i.pt, align 8, !tbaa !17
  %i.pu = getelementptr inbounds nuw i8, ptr %.66361107, i64 48
  %i.pv = load double, ptr %.11618.2, align 8, !tbaa !17
  %i.pw = load double, ptr %.11.2, align 8, !tbaa !17
  %i.px = icmp sgt i64 %.36221109, 3
  %i.py = getelementptr inbounds nuw i8, ptr %.106171110, i64 32
  %i.pz = getelementptr inbounds [8 x i8], ptr %.11618.2, i64 %3
  %.11618.3 = select i1 %i.px, ptr %i.py, ptr %i.pz
  %i.qa = getelementptr inbounds nuw i8, ptr %.101111, i64 32
  %i.qb = getelementptr inbounds [8 x i8], ptr %.11.2, i64 %3
  %i.qc = icmp slt i64 %.36221109, 3
  %.11.3 = select i1 %i.qc, ptr %i.qb, ptr %i.qa
  store double %i.pv, ptr %i.pu, align 8, !tbaa !17
  %i.qd = getelementptr inbounds nuw i8, ptr %.66361107, i64 56
  store double %i.pw, ptr %i.qd, align 8, !tbaa !17
  %i.qe = getelementptr inbounds nuw i8, ptr %.66361107, i64 64 ; 2 uses
  %i.qf = add nsw i64 %.36221109, -4
  %i.qg = add nsw i64 %.36281108, -4
  %i.qh = icmp sgt i64 %.36281108, 4
  br i1 %i.qh, label %.lr.ph1113, label %._crit_edge1114, !llvm.loop !13

._crit_edge1114:                                  ; preds = %.lr.ph1113.prol.loopexit, %.lr.ph1113, %bb.al
  %.6636.lcssa = phi ptr [ %.5635, %bb.al ], [ %.lcssa.unr, %.lr.ph1113.prol.loopexit ], [ %i.qe, %.lr.ph1113 ]
  %i.qi = add nsw i64 %.2641, 2
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1114, %bb.ak
  %.3642 = phi i64 [ %i.qi, %._crit_edge1114 ], [ %.2641, %bb.ak ] ; 3 uses
  %.7637 = phi ptr [ %.6636.lcssa, %._crit_edge1114 ], [ %.5635, %bb.ak ] ; 2 uses
  %.not645 = trunc i64 %1 to i1
  %i.qj = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.qj, %.not645
  br i1 %or.cond, label %.lr.ph1121.preheader, label %.loopexit

.lr.ph1121.preheader:                             ; preds = %bb.am
  %i.qk = sub nsw i64 %.3642, %5                  ; 3 uses
  %i.ql = icmp sgt i64 %i.qk, 0
  %i.qm = getelementptr inbounds [8 x i8], ptr %2, i64 %5
  %i.qn = mul nsw i64 %.3642, %3
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qm, i64 %i.qn
  %i.qp = getelementptr inbounds [8 x i8], ptr %2, i64 %.3642
  %i.qq = mul nsw i64 %5, %3
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.qq
  %.12 = select i1 %i.ql, ptr %i.qo, ptr %i.qr    ; 2 uses
  %xtraiter1147 = and i64 %0, 7                   ; 2 uses
  %lcmp.mod1148.not = icmp eq i64 %xtraiter1147, 0
  br i1 %lcmp.mod1148.not, label %.lr.ph1121.prol.loopexit, label %.lr.ph1121.prol

.lr.ph1121.prol:                                  ; preds = %.lr.ph1121.preheader, %.lr.ph1121.prol
  %.131119.prol = phi ptr [ %.14.prol, %.lr.ph1121.prol ], [ %.12, %.lr.ph1121.preheader ] ; 3 uses
  %.46231118.prol = phi i64 [ %i.qx, %.lr.ph1121.prol ], [ %i.qk, %.lr.ph1121.preheader ] ; 2 uses
  %.46291117.prol = phi i64 [ %i.qy, %.lr.ph1121.prol ], [ %0, %.lr.ph1121.preheader ]
  %.86381116.prol = phi ptr [ %i.qw, %.lr.ph1121.prol ], [ %.7637, %.lr.ph1121.preheader ] ; 2 uses
  %prol.iter1149 = phi i64 [ %prol.iter1149.next, %.lr.ph1121.prol ], [ 0, %.lr.ph1121.preheader ]
  %i.qs = load double, ptr %.131119.prol, align 8, !tbaa !17
  %i.qt = icmp sgt i64 %.46231118.prol, 0
  %i.qu = getelementptr inbounds nuw i8, ptr %.131119.prol, i64 8
  %i.qv = getelementptr inbounds [8 x i8], ptr %.131119.prol, i64 %3
  %.14.prol = select i1 %i.qt, ptr %i.qu, ptr %i.qv ; 2 uses
  store double %i.qs, ptr %.86381116.prol, align 8, !tbaa !17
  %i.qw = getelementptr inbounds nuw i8, ptr %.86381116.prol, i64 8 ; 2 uses
  %i.qx = add nsw i64 %.46231118.prol, -1         ; 2 uses
  %i.qy = add nsw i64 %.46291117.prol, -1         ; 2 uses
  %prol.iter1149.next = add i64 %prol.iter1149, 1 ; 2 uses
  %prol.iter1149.cmp.not = icmp eq i64 %prol.iter1149.next, %xtraiter1147
  br i1 %prol.iter1149.cmp.not, label %.lr.ph1121.prol.loopexit, label %.lr.ph1121.prol, !llvm.loop !14

.lr.ph1121.prol.loopexit:                         ; preds = %.lr.ph1121.prol, %.lr.ph1121.preheader
  %.131119.unr = phi ptr [ %.12, %.lr.ph1121.preheader ], [ %.14.prol, %.lr.ph1121.prol ]
  %.46231118.unr = phi i64 [ %i.qk, %.lr.ph1121.preheader ], [ %i.qx, %.lr.ph1121.prol ]
  %.46291117.unr = phi i64 [ %0, %.lr.ph1121.preheader ], [ %i.qy, %.lr.ph1121.prol ]
  %.86381116.unr = phi ptr [ %.7637, %.lr.ph1121.preheader ], [ %i.qw, %.lr.ph1121.prol ]
  %i.qz = icmp ult i64 %0, 8
  br i1 %i.qz, label %.loopexit, label %.lr.ph1121

.lr.ph1121:                                       ; preds = %.lr.ph1121.prol.loopexit, %.lr.ph1121
  %.131119 = phi ptr [ %.14.7, %.lr.ph1121 ], [ %.131119.unr, %.lr.ph1121.prol.loopexit ] ; 10 uses
  %.46231118 = phi i64 [ %i.so, %.lr.ph1121 ], [ %.46231118.unr, %.lr.ph1121.prol.loopexit ] ; 9 uses
  %.46291117 = phi i64 [ %i.sp, %.lr.ph1121 ], [ %.46291117.unr, %.lr.ph1121.prol.loopexit ] ; 2 uses
  %.86381116 = phi ptr [ %i.sn, %.lr.ph1121 ], [ %.86381116.unr, %.lr.ph1121.prol.loopexit ] ; 9 uses
  %i.ra = load double, ptr %.131119, align 8, !tbaa !17
  %i.rb = icmp sgt i64 %.46231118, 0
  %i.rc = getelementptr inbounds nuw i8, ptr %.131119, i64 8
  %i.rd = getelementptr inbounds [8 x i8], ptr %.131119, i64 %3
  %.14 = select i1 %i.rb, ptr %i.rc, ptr %i.rd    ; 2 uses
  store double %i.ra, ptr %.86381116, align 8, !tbaa !17
  %i.re = getelementptr inbounds nuw i8, ptr %.86381116, i64 8
  %i.rf = load double, ptr %.14, align 8, !tbaa !17
  %i.rg = icmp sgt i64 %.46231118, 1
  %i.rh = getelementptr inbounds nuw i8, ptr %.131119, i64 16
  %i.ri = getelementptr inbounds [8 x i8], ptr %.14, i64 %3
  %.14.1 = select i1 %i.rg, ptr %i.rh, ptr %i.ri  ; 2 uses
  store double %i.rf, ptr %i.re, align 8, !tbaa !17
  %i.rj = getelementptr inbounds nuw i8, ptr %.86381116, i64 16
  %i.rk = load double, ptr %.14.1, align 8, !tbaa !17
  %i.rl = icmp sgt i64 %.46231118, 2
  %i.rm = getelementptr inbounds nuw i8, ptr %.131119, i64 24
  %i.rn = getelementptr inbounds [8 x i8], ptr %.14.1, i64 %3
  %.14.2 = select i1 %i.rl, ptr %i.rm, ptr %i.rn  ; 2 uses
  store double %i.rk, ptr %i.rj, align 8, !tbaa !17
  %i.ro = getelementptr inbounds nuw i8, ptr %.86381116, i64 24
  %i.rp = load double, ptr %.14.2, align 8, !tbaa !17
  %i.rq = icmp sgt i64 %.46231118, 3
  %i.rr = getelementptr inbounds nuw i8, ptr %.131119, i64 32
  %i.rs = getelementptr inbounds [8 x i8], ptr %.14.2, i64 %3
  %.14.3 = select i1 %i.rq, ptr %i.rr, ptr %i.rs  ; 2 uses
  store double %i.rp, ptr %i.ro, align 8, !tbaa !17
  %i.rt = getelementptr inbounds nuw i8, ptr %.86381116, i64 32
  %i.ru = load double, ptr %.14.3, align 8, !tbaa !17
  %i.rv = icmp sgt i64 %.46231118, 4
  %i.rw = getelementptr inbounds nuw i8, ptr %.131119, i64 40
  %i.rx = getelementptr inbounds [8 x i8], ptr %.14.3, i64 %3
  %.14.4 = select i1 %i.rv, ptr %i.rw, ptr %i.rx  ; 2 uses
  store double %i.ru, ptr %i.rt, align 8, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %.86381116, i64 40
  %i.rz = load double, ptr %.14.4, align 8, !tbaa !17
  %i.sa = icmp sgt i64 %.46231118, 5
  %i.sb = getelementptr inbounds nuw i8, ptr %.131119, i64 48
  %i.sc = getelementptr inbounds [8 x i8], ptr %.14.4, i64 %3
  %.14.5 = select i1 %i.sa, ptr %i.sb, ptr %i.sc  ; 2 uses
  store double %i.rz, ptr %i.ry, align 8, !tbaa !17
  %i.sd = getelementptr inbounds nuw i8, ptr %.86381116, i64 48
  %i.se = load double, ptr %.14.5, align 8, !tbaa !17
  %i.sf = icmp sgt i64 %.46231118, 6
  %i.sg = getelementptr inbounds nuw i8, ptr %.131119, i64 56
  %i.sh = getelementptr inbounds [8 x i8], ptr %.14.5, i64 %3
  %.14.6 = select i1 %i.sf, ptr %i.sg, ptr %i.sh  ; 2 uses
  store double %i.se, ptr %i.sd, align 8, !tbaa !17
  %i.si = getelementptr inbounds nuw i8, ptr %.86381116, i64 56
  %i.sj = load double, ptr %.14.6, align 8, !tbaa !17
  %i.sk = icmp sgt i64 %.46231118, 7
  %i.sl = getelementptr inbounds nuw i8, ptr %.131119, i64 64
  %i.sm = getelementptr inbounds [8 x i8], ptr %.14.6, i64 %3
  %.14.7 = select i1 %i.sk, ptr %i.sl, ptr %i.sm
  store double %i.sj, ptr %i.si, align 8, !tbaa !17
  %i.sn = getelementptr inbounds nuw i8, ptr %.86381116, i64 64
  %i.so = add nsw i64 %.46231118, -8
  %i.sp = add nsw i64 %.46291117, -8
  %i.sq = icmp sgt i64 %.46291117, 8
  br i1 %i.sq, label %.lr.ph1121, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph1121.prol.loopexit, %.lr.ph1121, %bb.am
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !19}
!15 = distinct !{!15, !18}
!16 = !{!"double", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
