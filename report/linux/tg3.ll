Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_setup_phy:bb.a
  %.demorgan.not.i.i.i.i = icmp eq i32 %i.lv, 0
  %spec.select124.i.i.i = select i1 %.demorgan.not.i.i.i.i, i32 8192, i32 %i.ly
  %i.lz = load ptr, ptr %i.kl, align 8
  tail call void %i.lz(ptr noundef %0, i32 noundef 1092, i32 noundef %i.ly) #27, !inline_history !259
  %i.ma = load i32, ptr %i.bl, align 8
  %i.mb = or i32 %i.ma, 131072                    ; 3 uses
  store i32 %i.mb, ptr %i.bl, align 8
  %i.mc = load volatile i64, ptr %i.ab, align 8
  %i.md = and i64 %i.mc, 512
  %.not.i178.i.i.i.i = icmp eq i64 %i.md, 0
  br i1 %.not.i178.i.i.i.i, label %_tg3_flag.exit21.i180.i.i.i.i, label %bb.bm

_tg3_flag.exit21.i180.i.i.i.i:                    ; preds = %_tg3_flag.exit.i177.i.i.i.i
  %i.me = load volatile i64, ptr %i.ab, align 8
  %i.mf = and i64 %i.me, 35184372088832
  %.not15.i182.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not15.i182.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_tg3_flag.exit21.i180.i.i.i.i, %_tg3_flag.exit.i177.i.i.i.i
  %i.mg = load ptr, ptr %i.kl, align 8
  tail call void %i.mg(ptr noundef %0, i32 noundef 1024, i32 noundef %i.mb) #27, !inline_history !260
  br label %_tw32_flush.exit183.i.i.i.i

bb.bn:                                            ; preds = %_tg3_flag.exit21.i180.i.i.i.i
  %i.mh = load ptr, ptr %i.km, align 16
  %i.mi = getelementptr i8, ptr %i.mh, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.mb, ptr elementtype(i32) %i.mi) #28, !srcloc !56
  %i.mj = load ptr, ptr %i.eg, align 16
  %i.mk = tail call i32 %i.mj(ptr noundef %0, i32 noundef 1024) #27, !inline_history !260 ; 0 uses
  br label %_tw32_flush.exit183.i.i.i.i

_tw32_flush.exit183.i.i.i.i:                      ; preds = %bb.bn, %bb.bm
  tail call void @__const_udelay(i64 noundef 171800) #27
  br label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.bo:                                            ; preds = %bb.bh
  %.not167.i.i.i.i = icmp eq i8 %.sroa.64.3.i.i.i, 0
  %.not168.i.i.i.i = icmp eq i32 %.0146.i.i.i.i, 0
  %or.cond.i.i.i117.i = or i1 %.not167.i.i.i.i, %.not168.i.i.i.i
  %spec.select176 = select i1 %or.cond.i.i.i117.i, i32 6, i32 7
  br label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

_tg3_flag.exit.i185.i.i.i.i:                      ; preds = %bb.bh
  %i.ml = or i32 %.sroa.7564.0141.i.i.i, 64       ; 2 uses
  %i.mm = load ptr, ptr %i.kl, align 8
  tail call void %i.mm(ptr noundef %0, i32 noundef 1092, i32 noundef %i.ml) #27, !inline_history !259
  %i.mn = load i32, ptr %i.bl, align 8
  %i.mo = or i32 %i.mn, 131072                    ; 3 uses
  store i32 %i.mo, ptr %i.bl, align 8
  %i.mp = load volatile i64, ptr %i.ab, align 8
  %i.mq = and i64 %i.mp, 512
  %.not.i186.i.i.i.i = icmp eq i64 %i.mq, 0
  br i1 %.not.i186.i.i.i.i, label %_tg3_flag.exit21.i188.i.i.i.i, label %bb.bp

_tg3_flag.exit21.i188.i.i.i.i:                    ; preds = %_tg3_flag.exit.i185.i.i.i.i
  %i.mr = load volatile i64, ptr %i.ab, align 8
  %i.ms = and i64 %i.mr, 35184372088832
  %.not15.i190.i.i.i.i = icmp eq i64 %i.ms, 0
  br i1 %.not15.i190.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_tg3_flag.exit21.i188.i.i.i.i, %_tg3_flag.exit.i185.i.i.i.i
  %i.mt = load ptr, ptr %i.kl, align 8
  tail call void %i.mt(ptr noundef %0, i32 noundef 1024, i32 noundef %i.mo) #27, !inline_history !260
  br label %_tw32_flush.exit191.i.i.i.i

bb.bq:                                            ; preds = %_tg3_flag.exit21.i188.i.i.i.i
  %i.mu = load ptr, ptr %i.km, align 16
  %i.mv = getelementptr i8, ptr %i.mu, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.mo, ptr elementtype(i32) %i.mv) #28, !srcloc !56
  %i.mw = load ptr, ptr %i.eg, align 16
  %i.mx = tail call i32 %i.mw(ptr noundef %0, i32 noundef 1024) #27, !inline_history !260 ; 0 uses
  br label %_tw32_flush.exit191.i.i.i.i

_tw32_flush.exit191.i.i.i.i:                      ; preds = %bb.bq, %bb.bp
  tail call void @__const_udelay(i64 noundef 171800) #27
  br label %bb.br

bb.br:                                            ; preds = %_tw32_flush.exit191.i.i.i.i, %bb.bh
  %.sroa.7564.2.i.i.i = phi i32 [ %i.ml, %_tw32_flush.exit191.i.i.i.i ], [ %.sroa.7564.0141.i.i.i, %bb.bh ] ; 3 uses
  br i1 %.sroa.72.0.i.i.i, label %bb.bs, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.bs:                                            ; preds = %bb.br
  %.not166.i.i.i.i = icmp eq i8 %.sroa.64.3.i.i.i, 0
  br i1 %.not166.i.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.my = icmp eq i32 %.0146.i.i.i.i, 0
  %spec.select178 = select i1 %i.my, i32 1, i32 8
  br label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.bu:                                            ; preds = %bb.bh
  %i.mz = and i32 %.0146.i.i.i.i, 7942
  %.not155.i.i.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not155.i.i.i.i, label %bb.bv, label %tg3_fiber_aneg_smachine.exit.thread113.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.na = and i32 %.sroa.25.0135.i.i.i, -32705
  %i.nb = lshr i32 %.0146.i.i.i.i, 7
  %i.nc = and i32 %i.nb, 448
  %i.nd = or disjoint i32 %i.nc, %i.na
  %i.ne = shl i32 %.0146.i.i.i.i, 9
  %i.nf = and i32 %i.ne, 512
  %i.ng = or disjoint i32 %i.nd, %i.nf
  %i.nh = and i32 %.0146.i.i.i.i, 128
  %.not162.i.i.i.i = icmp eq i32 %i.nh, 0
  %..i.i.i = select i1 %.not162.i.i.i.i, i32 32, i32 20512
  %spec.select202.c.i.i.i.i = xor i32 %i.ng, %..i.i.i
  br label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.bw:                                            ; preds = %bb.bh
  %.not152.i.i.i.i = icmp ne i8 %.sroa.64.3.i.i.i, 0
  %i.ni = icmp eq i32 %.0146.i.i.i.i, 0
  %or.cond173.i.i.i.i = and i1 %.not152.i.i.i.i, %i.ni
  br i1 %or.cond173.i.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nj = sub i64 %i.ks, %.sroa.40.1.i.i.i
  %i.nk = icmp ugt i64 %i.nj, 10000
  br i1 %i.nk, label %bb.by, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.nl = and i32 %.sroa.25.0135.i.i.i, 4096
  %.not153.i.i.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not153.i.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = and i32 %.sroa.7564.0141.i.i.i, 128
  %i.nn = and i32 %.sroa.25.0135.i.i.i, 16384
  %i.no = or disjoint i32 %i.nn, %i.nm
  %or.cond174.i.i.i.i = icmp eq i32 %i.no, 0
  br i1 %or.cond174.i.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread113.i.i.i

_tg3_flag.exit.i193.i.i.i.i:                      ; preds = %bb.bh
  %i.np = load i32, ptr %i.bl, align 8
  %i.nq = and i32 %i.np, -131073                  ; 3 uses
  store i32 %i.nq, ptr %i.bl, align 8
  %i.nr = load volatile i64, ptr %i.ab, align 8
  %i.ns = and i64 %i.nr, 512
  %.not.i194.i.i.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not.i194.i.i.i.i, label %_tg3_flag.exit21.i196.i.i.i.i, label %bb.ca

_tg3_flag.exit21.i196.i.i.i.i:                    ; preds = %_tg3_flag.exit.i193.i.i.i.i
  %i.nt = load volatile i64, ptr %i.ab, align 8
  %i.nu = and i64 %i.nt, 35184372088832
  %.not15.i198.i.i.i.i = icmp eq i64 %i.nu, 0
  br i1 %.not15.i198.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_tg3_flag.exit21.i196.i.i.i.i, %_tg3_flag.exit.i193.i.i.i.i
  %i.nv = load ptr, ptr %i.kl, align 8
  tail call void %i.nv(ptr noundef %0, i32 noundef 1024, i32 noundef %i.nq) #27, !inline_history !260
  br label %_tw32_flush.exit199.i.i.i.i

bb.cb:                                            ; preds = %_tg3_flag.exit21.i196.i.i.i.i
  %i.nw = load ptr, ptr %i.km, align 16
  %i.nx = getelementptr i8, ptr %i.nw, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.nq, ptr elementtype(i32) %i.nx) #28, !srcloc !56
  %i.ny = load ptr, ptr %i.eg, align 16
  %i.nz = tail call i32 %i.ny(ptr noundef %0, i32 noundef 1024) #27, !inline_history !260 ; 0 uses
  br label %_tw32_flush.exit199.i.i.i.i

_tw32_flush.exit199.i.i.i.i:                      ; preds = %bb.cb, %bb.ca
  tail call void @__const_udelay(i64 noundef 171800) #27
  br label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.cc:                                            ; preds = %bb.bh
  %.not151.i.i.i.i = icmp ne i8 %.sroa.64.3.i.i.i, 0
  %i.oa = icmp eq i32 %.0146.i.i.i.i, 0
  %or.cond175.i.i.i.i = and i1 %.not151.i.i.i.i, %i.oa
  br i1 %or.cond175.i.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ob = sub i64 %i.ks, %.sroa.40.1.i.i.i
  %i.oc = icmp ugt i64 %i.ob, 10000
  %spec.select179 = select i1 %i.oc, i32 13, i32 12
  br label %tg3_fiber_aneg_smachine.exit.thread.i.i.i

bb.ce:                                            ; preds = %bb.bh
  %i.od = or i32 %.sroa.25.0135.i.i.i, -2147483644
  br label %tg3_fiber_aneg_smachine.exit.thread113.i.i.i

tg3_fiber_aneg_smachine.exit.thread.i.i.i:        ; preds = %bb.cd, %bb.bt, %bb.bo, %bb.bl, %bb.cc, %_tw32_flush.exit199.i.i.i.i, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bs, %bb.br, %_tw32_flush.exit183.i.i.i.i, %bb.bi, %._crit_edge206.i.i.i.i, %bb.bh, %bb.bh
  %.sroa.7564.5108.i.i.i = phi i32 [ %.sroa.7564.2.i.i.i, %bb.br ], [ %.sroa.7564.0141.i.i.i, %bb.cc ], [ %.sroa.7564.0141.i.i.i, %bb.bz ], [ %spec.select124.i.i.i, %_tw32_flush.exit183.i.i.i.i ], [ %.sroa.7564.0141.i.i.i, %bb.by ], [ %.sroa.7564.0141.i.i.i, %_tw32_flush.exit199.i.i.i.i ], [ %.sroa.7564.0141.i.i.i, %bb.bx ], [ %.sroa.7564.0141.i.i.i, %bb.bw ], [ %.sroa.7564.0141.i.i.i, %bb.bi ], [ %.sroa.7564.0141.i.i.i, %bb.bh ], [ %.sroa.7564.0141.i.i.i, %bb.bv ], [ %.sroa.7564.0141.i.i.i, %bb.bh ], [ %.sroa.7564.2.i.i.i, %bb.bs ], [ %.sroa.7564.4.i.i.i, %bb.bl ], [ %.sroa.7564.2.i.i.i, %bb.bt ], [ %.sroa.7564.0141.i.i.i, %bb.bo ], [ %.sroa.7564.0141.i.i.i, %._crit_edge206.i.i.i.i ], [ %.sroa.7564.0141.i.i.i, %bb.cd ] ; 2 uses
  %.sroa.64.4107.i.i.i = phi i8 [ %.sroa.64.3.i.i.i, %bb.br ], [ 1, %bb.cc ], [ %.sroa.64.3.i.i.i, %bb.bz ], [ %.sroa.64.3.i.i.i, %_tw32_flush.exit183.i.i.i.i ], [ %.sroa.64.3.i.i.i, %bb.by ], [ %.sroa.64.3.i.i.i, %_tw32_flush.exit199.i.i.i.i ], [ %.sroa.64.3.i.i.i, %bb.bx ], [ 1, %bb.bw ], [ %.sroa.64.3.i.i.i, %bb.bi ], [ %.sroa.64.3.i.i.i, %bb.bh ], [ %.sroa.64.3.i.i.i, %bb.bv ], [ %.sroa.64.3.i.i.i, %bb.bh ], [ 0, %bb.bs ], [ %.sroa.64.3.i.i.i, %bb.bl ], [ 1, %bb.bt ], [ %.sroa.64.3.i.i.i, %bb.bo ], [ 0, %._crit_edge206.i.i.i.i ], [ %.sroa.64.3.i.i.i, %bb.cd ]
  %.sroa.61.4106.i.i.i = phi i32 [ %.sroa.61.3.i.i.i, %bb.br ], [ %.sroa.61.3.i.i.i, %bb.cc ], [ %.sroa.61.3.i.i.i, %bb.bz ], [ %.sroa.61.3.i.i.i, %_tw32_flush.exit183.i.i.i.i ], [ %.sroa.61.3.i.i.i, %bb.by ], [ %.sroa.61.3.i.i.i, %_tw32_flush.exit199.i.i.i.i ], [ %.sroa.61.3.i.i.i, %bb.bx ], [ %.sroa.61.3.i.i.i, %bb.bw ], [ %.sroa.61.3.i.i.i, %bb.bi ], [ %.sroa.61.3.i.i.i, %bb.bh ], [ %.sroa.61.3.i.i.i, %bb.bv ], [ %.sroa.61.3.i.i.i, %bb.bh ], [ %.sroa.61.3.i.i.i, %bb.bs ], [ %.sroa.61.3.i.i.i, %bb.bl ], [ %.sroa.61.3.i.i.i, %bb.bt ], [ %.sroa.61.3.i.i.i, %bb.bo ], [ 0, %._crit_edge206.i.i.i.i ], [ %.sroa.61.3.i.i.i, %bb.cd ]
  %.sroa.57.4105.i.i.i = phi i32 [ %.0146.i.i.i.i, %bb.br ], [ 0, %bb.cc ], [ %.0146.i.i.i.i, %bb.bz ], [ %.0146.i.i.i.i, %_tw32_flush.exit183.i.i.i.i ], [ %.0146.i.i.i.i, %bb.by ], [ %.0146.i.i.i.i, %_tw32_flush.exit199.i.i.i.i ], [ %.0146.i.i.i.i, %bb.bx ], [ 0, %bb.bw ], [ %.0146.i.i.i.i, %bb.bi ], [ %.0146.i.i.i.i, %bb.bh ], [ %.0146.i.i.i.i, %bb.bv ], [ %.0146.i.i.i.i, %bb.bh ], [ %.0146.i.i.i.i, %bb.bs ], [ %.0146.i.i.i.i, %bb.bl ], [ %.0146.i.i.i.i, %bb.bt ], [ %.0146.i.i.i.i, %bb.bo ], [ 0, %._crit_edge206.i.i.i.i ], [ %.0146.i.i.i.i, %bb.cd ]
  %.sroa.48.1104.i.i.i = phi i64 [ %i.ks, %bb.br ], [ %i.ks, %bb.cc ], [ %i.ks, %bb.bz ], [ %i.ks, %_tw32_flush.exit183.i.i.i.i ], [ %i.ks, %bb.by ], [ %i.ks, %_tw32_flush.exit199.i.i.i.i ], [ %i.ks, %bb.bx ], [ %i.ks, %bb.bw ], [ %i.ks, %bb.bi ], [ %i.ks, %bb.bh ], [ %i.ks, %bb.bv ], [ %i.ks, %bb.bh ], [ %i.ks, %bb.bs ], [ %i.ks, %bb.bl ], [ %i.ks, %bb.bt ], [ %i.ks, %bb.bo ], [ 0, %._crit_edge206.i.i.i.i ], [ %i.ks, %bb.cd ]
  %.sroa.40.3103.i.i.i = phi i64 [ %.sroa.40.1.i.i.i, %bb.br ], [ %.sroa.40.1.i.i.i, %bb.cc ], [ %.sroa.40.1.i.i.i, %bb.bz ], [ %.sroa.40.1.i.i.i, %_tw32_flush.exit183.i.i.i.i ], [ %.sroa.40.1.i.i.i, %bb.by ], [ %i.ks, %_tw32_flush.exit199.i.i.i.i ], [ %.sroa.40.1.i.i.i, %bb.bx ], [ %.sroa.40.1.i.i.i, %bb.bw ], [ %.sroa.40.1.i.i.i, %bb.bi ], [ %.sroa.40.1.i.i.i, %bb.bh ], [ %i.ks, %bb.bv ], [ %.sroa.40.1.i.i.i, %bb.bh ], [ %.sroa.40.1.i.i.i, %bb.bs ], [ %.sroa.40.2.i.i.i, %bb.bl ], [ %.sroa.40.1.i.i.i, %bb.bt ], [ %.sroa.40.1.i.i.i, %bb.bo ], [ 0, %._crit_edge206.i.i.i.i ], [ %.sroa.40.1.i.i.i, %bb.cd ]
  %.sroa.25.3102.i.i.i = phi i32 [ %.sroa.25.0135.i.i.i, %bb.br ], [ %.sroa.25.0135.i.i.i, %bb.cc ], [ %.sroa.25.0135.i.i.i, %bb.bz ], [ %.sroa.25.0135.i.i.i, %_tw32_flush.exit183.i.i.i.i ], [ %.sroa.25.0135.i.i.i, %bb.by ], [ %.sroa.25.0135.i.i.i, %_tw32_flush.exit199.i.i.i.i ], [ %.sroa.25.0135.i.i.i, %bb.bx ], [ %.sroa.25.0135.i.i.i, %bb.bw ], [ %i.lb, %bb.bi ], [ %.sroa.25.0135.i.i.i, %bb.bh ], [ %spec.select202.c.i.i.i.i, %bb.bv ], [ %.sroa.25.0135.i.i.i, %bb.bh ], [ %.sroa.25.0135.i.i.i, %bb.bs ], [ %.sroa.25.0135.i.i.i, %bb.bl ], [ %.sroa.25.0135.i.i.i, %bb.bt ], [ %.sroa.25.0135.i.i.i, %bb.bo ], [ %i.lb, %._crit_edge206.i.i.i.i ], [ %.sroa.25.0135.i.i.i, %bb.cd ] ; 2 uses
  %.sroa.0.3101.i.i.i = phi i32 [ 9, %bb.br ], [ 1, %bb.cc ], [ 11, %bb.bz ], [ 6, %_tw32_flush.exit183.i.i.i.i ], [ 11, %bb.by ], [ 12, %_tw32_flush.exit199.i.i.i.i ], [ 10, %bb.bx ], [ 1, %bb.bw ], [ 4, %bb.bi ], [ %.sroa.0.0134.i.i.i, %bb.bh ], [ 10, %bb.bv ], [ %.sroa.0.0134.i.i.i, %bb.bh ], [ 8, %bb.bs ], [ %spec.select, %bb.bl ], [ %spec.select178, %bb.bt ], [ %spec.select176, %bb.bo ], [ 2, %._crit_edge206.i.i.i.i ], [ %spec.select179, %bb.cd ]
  tail call void @__const_udelay(i64 noundef 4295) #27
  %i.oe = add nuw nsw i32 %i.ko, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.oe, 195000
  br i1 %exitcond.not.i.i.i, label %tg3_fiber_aneg_smachine.exit.thread113.i.i.i, label %bb.be, !llvm.loop !261

tg3_fiber_aneg_smachine.exit.thread113.i.i.i.loopexit: ; preds = %bb.bh
  br label %tg3_fiber_aneg_smachine.exit.thread113.i.i.i

tg3_fiber_aneg_smachine.exit.thread113.i.i.i:     ; preds = %tg3_fiber_aneg_smachine.exit.thread.i.i.i, %bb.bz, %bb.bu, %bb.bh, %tg3_fiber_aneg_smachine.exit.thread113.i.i.i.loopexit, %bb.ce
  %.sroa.7564.0131.i.i.i = phi i32 [ %.sroa.7564.0141.i.i.i, %bb.ce ], [ %.sroa.7564.0141.i.i.i, %bb.bh ], [ %.sroa.7564.0141.i.i.i, %bb.bu ], [ %.sroa.7564.0141.i.i.i, %bb.bz ], [ %.sroa.7564.5108.i.i.i, %tg3_fiber_aneg_smachine.exit.thread.i.i.i ], [ %.sroa.7564.0141.i.i.i, %tg3_fiber_aneg_smachine.exit.thread113.i.i.i.loopexit ] ; 2 uses
  %.sroa.25.1.i.i.i = phi i32 [ %i.od, %bb.ce ], [ %.sroa.25.0135.i.i.i, %bb.bh ], [ %.sroa.25.0135.i.i.i, %bb.bu ], [ %.sroa.25.0135.i.i.i, %bb.bz ], [ %.sroa.25.3102.i.i.i, %tg3_fiber_aneg_smachine.exit.thread.i.i.i ], [ %.sroa.25.0135.i.i.i, %tg3_fiber_aneg_smachine.exit.thread113.i.i.i.loopexit ] ; 2 uses
  %.1.i.not.not.i.i = phi i1 [ true, %bb.ce ], [ true, %bb.bh ], [ false, %bb.bu ], [ false, %bb.bz ], [ false, %tg3_fiber_aneg_smachine.exit.thread.i.i.i ], [ false, %tg3_fiber_aneg_smachine.exit.thread113.i.i.i.loopexit ]
  %i.of = load i32, ptr %i.bl, align 8
  %i.og = and i32 %i.of, -131073                  ; 3 uses
  store i32 %i.og, ptr %i.bl, align 8
  %i.oh = load volatile i64, ptr %i.ab, align 8
  %i.oi = and i64 %i.oh, 512
  %.not.i40.i.i.i = icmp eq i64 %i.oi, 0
  br i1 %.not.i40.i.i.i, label %_tg3_flag.exit21.i42.i.i.i, label %bb.cf

_tg3_flag.exit21.i42.i.i.i:                       ; preds = %tg3_fiber_aneg_smachine.exit.thread113.i.i.i
  %i.oj = load volatile i64, ptr %i.ab, align 8
  %i.ok = and i64 %i.oj, 35184372088832
  %.not15.i44.i.i.i = icmp eq i64 %i.ok, 0
  br i1 %.not15.i44.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_tg3_flag.exit21.i42.i.i.i, %tg3_fiber_aneg_smachine.exit.thread113.i.i.i
  %i.ol = load ptr, ptr %i.kl, align 8
  tail call void %i.ol(ptr noundef %0, i32 noundef 1024, i32 noundef %i.og) #27, !inline_history !258
  br label %fiber_autoneg.exit.i.i

bb.cg:                                            ; preds = %_tg3_flag.exit21.i42.i.i.i
  %i.om = load ptr, ptr %i.km, align 16
  %i.on = getelementptr i8, ptr %i.om, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.og, ptr elementtype(i32) %i.on) #28, !srcloc !56
  %i.oo = load ptr, ptr %i.eg, align 16
  %i.op = tail call i32 %i.oo(ptr noundef %0, i32 noundef 1024) #27, !inline_history !258 ; 0 uses
  br label %fiber_autoneg.exit.i.i

fiber_autoneg.exit.i.i:                           ; preds = %bb.cg, %bb.cf
  tail call void @__const_udelay(i64 noundef 171800) #27
  %i.oq = and i32 %.sroa.25.1.i.i.i, -2147483580
  %.not.i.i106.i = icmp ne i32 %i.oq, 0
  %narrow.i.not.not.i.i = select i1 %.1.i.not.not.i.i, i1 %.not.i.i106.i, i1 false ; 2 uses
  br i1 %narrow.i.not.not.i.i, label %bb.ch, label %_tg3_flag.exit.i.i107.i.preheader

bb.ch:                                            ; preds = %fiber_autoneg.exit.i.i
  %i.or = lshr i32 %.sroa.7564.0131.i.i.i, 8
  %spec.select.i115.i = and i32 %i.or, 128
  %i.os = shl i32 %.sroa.7564.0131.i.i.i, 8
  %i.ot = and i32 %i.os, 256
  %.128.i.i = or disjoint i32 %spec.select.i115.i, %i.ot
  %i.ou = lshr i32 %.sroa.25.1.i.i.i, 1
  %.1.i116.i = and i32 %i.ou, 384                 ; 2 uses
  %i.ov = shl nuw nsw i32 %.1.i116.i, 6
  store i32 %i.ov, ptr %i.ef, align 4
  tail call fastcc void @tg3_setup_flow_control(ptr noundef %0, i32 noundef %.128.i.i, i32 noundef %.1.i116.i) #30, !srcloc !285
  br label %_tg3_flag.exit.i.i107.i.preheader

_tg3_flag.exit.i.i107.i.preheader:                ; preds = %bb.ch, %fiber_autoneg.exit.i.i
  br label %_tg3_flag.exit.i.i107.i

_tg3_flag.exit.i.i107.i:                          ; preds = %_tg3_flag.exit.i.i107.i.preheader, %_tw32_flush.exit.i108.i
  %.02968.i.i = phi i32 [ %i.pj, %_tw32_flush.exit.i108.i ], [ 0, %_tg3_flag.exit.i.i107.i.preheader ]
  tail call void @__const_udelay(i64 noundef 85900) #27
  %i.ow = load volatile i64, ptr %i.ab, align 8
  %i.ox = and i64 %i.ow, 512
  %.not.i43.i.i = icmp eq i64 %i.ox, 0
  br i1 %.not.i43.i.i, label %_tg3_flag.exit21.i.i112.i, label %bb.ci

_tg3_flag.exit21.i.i112.i:                        ; preds = %_tg3_flag.exit.i.i107.i
  %i.oy = load volatile i64, ptr %i.ab, align 8
  %i.oz = and i64 %i.oy, 35184372088832
  %.not15.i.i114.i = icmp eq i64 %i.oz, 0
  br i1 %.not15.i.i114.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_tg3_flag.exit21.i.i112.i, %_tg3_flag.exit.i.i107.i
  %i.pa = load ptr, ptr %i.kl, align 8
  tail call void %i.pa(ptr noundef %0, i32 noundef 1028, i32 noundef 24) #27, !inline_history !262
  br label %_tw32_flush.exit.i108.i

bb.cj:                                            ; preds = %_tg3_flag.exit21.i.i112.i
  %i.pb = load ptr, ptr %i.km, align 16
  %i.pc = getelementptr i8, ptr %i.pb, i64 1028
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 24, ptr elementtype(i32) %i.pc) #28, !srcloc !56
  %i.pd = load ptr, ptr %i.eg, align 16
  %i.pe = tail call i32 %i.pd(ptr noundef %0, i32 noundef 1028) #27, !inline_history !262 ; 0 uses
  br label %_tw32_flush.exit.i108.i

_tw32_flush.exit.i108.i:                          ; preds = %bb.cj, %bb.ci
  tail call void @__const_udelay(i64 noundef 171800) #27
  %i.pf = load ptr, ptr %i.eg, align 16
  %i.pg = tail call i32 %i.pf(ptr noundef %0, i32 noundef 1028) #27, !inline_history !263
  %i.ph = and i32 %i.pg, 24
  %i.pi = icmp eq i32 %i.ph, 0
  %i.pj = add nuw nsw i32 %.02968.i.i, 1          ; 2 uses
  %exitcond.not.i109.i = icmp eq i32 %i.pj, 30
  %or.cond.i110.i = select i1 %i.pi, i1 true, i1 %exitcond.not.i109.i
  br i1 %or.cond.i110.i, label %bb.ck, label %_tg3_flag.exit.i.i107.i, !llvm.loop !264

bb.ck:                                            ; preds = %_tw32_flush.exit.i108.i
  %i.pk = load ptr, ptr %i.eg, align 16
  %i.pl = tail call i32 %i.pk(ptr noundef %0, i32 noundef 1028) #27, !inline_history !263
  %i.pm = and i32 %i.pl, 5
  %i.pn = icmp eq i32 %i.pm, 1
  %i.po = select i1 %narrow.i.not.not.i.i, i1 true, i1 %i.pn
  br label %tg3_setup_fiber_hw_autoneg.exit.i

_tg3_flag.exit.i45.i.i:                           ; preds = %bb.ax
  tail call fastcc void @tg3_setup_flow_control(ptr noundef %0, i32 noundef 0, i32 noundef 0) #30, !srcloc !286
  %i.pp = load i32, ptr %i.bl, align 8
  %i.pq = or i32 %i.pp, 131072                    ; 2 uses
  %i.pr = load volatile i64, ptr %i.ab, align 8
  %i.ps = and i64 %i.pr, 512
  %.not.i46.i.i = icmp eq i64 %i.ps, 0
  br i1 %.not.i46.i.i, label %_tg3_flag.exit21.i48.i.i, label %bb.cl

_tg3_flag.exit21.i48.i.i:                         ; preds = %_tg3_flag.exit.i45.i.i
  %i.pt = load volatile i64, ptr %i.ab, align 8
  %i.pu = and i64 %i.pt, 35184372088832
  %.not15.i50.i.i = icmp eq i64 %i.pu, 0
  br i1 %.not15.i50.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_tg3_flag.exit21.i48.i.i, %_tg3_flag.exit.i45.i.i
  %i.pv = getelementptr i8, ptr %0, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8
  tail call void %i.pw(ptr noundef %0, i32 noundef 1024, i32 noundef %i.pq) #27, !inline_history !262
  br label %_tw32_flush.exit51.i.i

bb.cm:                                            ; preds = %_tg3_flag.exit21.i48.i.i
  %i.px = getelementptr i8, ptr %0, i64 48
  %i.py = load ptr, ptr %i.px, align 16
  %i.pz = getelementptr i8, ptr %i.py, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.pq, ptr elementtype(i32) %i.pz) #28, !srcloc !56
  %i.qa = load ptr, ptr %i.eg, align 16
  %i.qb = tail call i32 %i.qa(ptr noundef %0, i32 noundef 1024) #27, !inline_history !262 ; 0 uses
  br label %_tw32_flush.exit51.i.i

_tw32_flush.exit51.i.i:                           ; preds = %bb.cm, %bb.cl
  tail call void @__const_udelay(i64 noundef 171800) #27
  %i.qc = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.qd = load volatile i64, ptr %i.ab, align 8
  %i.qe = and i64 %i.qd, 512
  %.not.i54.i.i = icmp eq i64 %i.qe, 0
  br i1 %.not.i54.i.i, label %_tg3_flag.exit21.i56.i.i, label %bb.cn

_tg3_flag.exit21.i56.i.i:                         ; preds = %_tw32_flush.exit51.i.i
  %i.qf = load volatile i64, ptr %i.ab, align 8
  %i.qg = and i64 %i.qf, 35184372088832
  %.not15.i58.i.i = icmp eq i64 %i.qg, 0
  br i1 %.not15.i58.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_tg3_flag.exit21.i56.i.i, %_tw32_flush.exit51.i.i
  %i.qh = getelementptr i8, ptr %0, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  tail call void %i.qi(ptr noundef %0, i32 noundef 1024, i32 noundef %i.qc) #27, !inline_history !262
  br label %_tw32_flush.exit59.i.i

bb.co:                                            ; preds = %_tg3_flag.exit21.i56.i.i
  %i.qj = getelementptr i8, ptr %0, i64 48
  %i.qk = load ptr, ptr %i.qj, align 16
  %i.ql = getelementptr i8, ptr %i.qk, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.qc, ptr elementtype(i32) %i.ql) #28, !srcloc !56
  %i.qm = load ptr, ptr %i.eg, align 16
  %i.qn = tail call i32 %i.qm(ptr noundef %0, i32 noundef 1024) #27, !inline_history !262 ; 0 uses
  br label %_tw32_flush.exit59.i.i

_tw32_flush.exit59.i.i:                           ; preds = %bb.co, %bb.cn
  tail call void @__const_udelay(i64 noundef 171800) #27
  br label %tg3_setup_fiber_hw_autoneg.exit.i

tg3_setup_fiber_hw_autoneg.exit.i:                ; preds = %_tw32_flush.exit59.i.i, %bb.ck, %bb.aw, %bb.av, %bb.au, %bb.aq, %bb.ao, %bb.an, %_tw32_flush.exit157.i.i, %bb.ad, %bb.z, %_tw32_flush.exit133.i.i
  %.064.in.i = phi i1 [ false, %bb.av ], [ true, %bb.z ], [ false, %_tw32_flush.exit133.i.i ], [ true, %bb.ad ], [ false, %_tw32_flush.exit157.i.i ], [ true, %bb.an ], [ false, %bb.ao ], [ false, %bb.aq ], [ true, %bb.au ], [ %i.po, %bb.ck ], [ true, %_tw32_flush.exit59.i.i ], [ false, %bb.aw ]
  %i.qo = getelementptr i8, ptr %0, i64 904
  %i.qp = load ptr, ptr %i.qo, align 8            ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4
  %i.qr = and i32 %i.qq, -4
  %i.qs = or disjoint i32 %i.qr, 1
  store i32 %i.qs, ptr %i.qp, align 4
  %i.qt = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.qu = getelementptr i8, ptr %0, i64 48        ; 3 uses
  br label %_tg3_flag.exit.i119.i

_tg3_flag.exit.i119.i:                            ; preds = %tg3_setup_fiber_hw_autoneg.exit.i, %_tw32_flush.exit125.i
  %.0150.i = phi i32 [ 0, %tg3_setup_fiber_hw_autoneg.exit.i ], [ %i.ri, %_tw32_flush.exit125.i ]
  %i.qv = load volatile i64, ptr %i.ab, align 8
  %i.qw = and i64 %i.qv, 512
  %.not.i120.i = icmp eq i64 %i.qw, 0
  br i1 %.not.i120.i, label %_tg3_flag.exit21.i122.i, label %bb.cp

_tg3_flag.exit21.i122.i:                          ; preds = %_tg3_flag.exit.i119.i
  %i.qx = load volatile i64, ptr %i.ab, align 8
  %i.qy = and i64 %i.qx, 35184372088832
  %.not15.i124.i = icmp eq i64 %i.qy, 0
  br i1 %.not15.i124.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_tg3_flag.exit21.i122.i, %_tg3_flag.exit.i119.i
  %i.qz = load ptr, ptr %i.qt, align 8
  tail call void %i.qz(ptr noundef %0, i32 noundef 1028, i32 noundef 24) #27, !inline_history !252
  br label %_tw32_flush.exit125.i

bb.cq:                                            ; preds = %_tg3_flag.exit21.i122.i
  %i.ra = load ptr, ptr %i.qu, align 16
  %i.rb = getelementptr i8, ptr %i.ra, i64 1028
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 24, ptr elementtype(i32) %i.rb) #28, !srcloc !56
  %i.rc = load ptr, ptr %i.eg, align 16
  %i.rd = tail call i32 %i.rc(ptr noundef %0, i32 noundef 1028) #27, !inline_history !252 ; 0 uses
  br label %_tw32_flush.exit125.i

_tw32_flush.exit125.i:                            ; preds = %bb.cq, %bb.cp
  tail call void @__const_udelay(i64 noundef 21475) #27
  %i.re = load ptr, ptr %i.eg, align 16
  %i.rf = tail call i32 %i.re(ptr noundef %0, i32 noundef 1028) #27, !inline_history !251
  %i.rg = and i32 %i.rf, 4120
  %i.rh = icmp eq i32 %i.rg, 0
  %i.ri = add nuw nsw i32 %.0150.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ri, 100
  %or.cond.i = select i1 %i.rh, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %bb.cr, label %_tg3_flag.exit.i119.i, !llvm.loop !265

bb.cr:                                            ; preds = %_tw32_flush.exit125.i
  %i.rj = load ptr, ptr %i.eg, align 16
  %i.rk = tail call i32 %i.rj(ptr noundef %0, i32 noundef 1028) #27, !inline_history !251
  %i.rl = and i32 %i.rk, 1
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.cs, label %_tw32_flush.exit141.i

bb.cs:                                            ; preds = %bb.cr
  %i.rn = getelementptr i8, ptr %0, i64 5473
  %i.ro = load i8, ptr %i.rn, align 1
  %i.rp = icmp eq i8 %i.ro, 1
  br i1 %i.rp, label %bb.ct, label %.thread.i

bb.ct:                                            ; preds = %bb.cs
  %i.rq = getelementptr i8, ptr %0, i64 5460
  %i.rr = load i32, ptr %i.rq, align 4
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %_tg3_flag.exit.i127.i, label %.thread.i

_tg3_flag.exit.i127.i:                            ; preds = %bb.ct
  %i.rt = load i32, ptr %i.bl, align 8
  %i.ru = or i32 %i.rt, 131072                    ; 2 uses
  %i.rv = load volatile i64, ptr %i.ab, align 8
  %i.rw = and i64 %i.rv, 512
  %.not.i128.i = icmp eq i64 %i.rw, 0
  br i1 %.not.i128.i, label %_tg3_flag.exit21.i130.i, label %bb.cu

_tg3_flag.exit21.i130.i:                          ; preds = %_tg3_flag.exit.i127.i
  %i.rx = load volatile i64, ptr %i.ab, align 8
  %i.ry = and i64 %i.rx, 35184372088832
  %.not15.i132.i = icmp eq i64 %i.ry, 0
  br i1 %.not15.i132.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_tg3_flag.exit21.i130.i, %_tg3_flag.exit.i127.i
  %i.rz = load ptr, ptr %i.qt, align 8
  tail call void %i.rz(ptr noundef %0, i32 noundef 1024, i32 noundef %i.ru) #27, !inline_history !252
  br label %_tw32_flush.exit133.i

bb.cv:                                            ; preds = %_tg3_flag.exit21.i130.i
  %i.sa = load ptr, ptr %i.qu, align 16
  %i.sb = getelementptr i8, ptr %i.sa, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ru, ptr elementtype(i32) %i.sb) #28, !srcloc !56
  %i.sc = load ptr, ptr %i.eg, align 16
  %i.sd = tail call i32 %i.sc(ptr noundef %0, i32 noundef 1024) #27, !inline_history !252 ; 0 uses
  br label %_tw32_flush.exit133.i

_tw32_flush.exit133.i:                            ; preds = %bb.cv, %bb.cu
  tail call void @__const_udelay(i64 noundef 4295) #27
  %i.se = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.sf = load volatile i64, ptr %i.ab, align 8
  %i.sg = and i64 %i.sf, 512
  %.not.i136.i = icmp eq i64 %i.sg, 0
  br i1 %.not.i136.i, label %_tg3_flag.exit21.i138.i, label %bb.cw

_tg3_flag.exit21.i138.i:                          ; preds = %_tw32_flush.exit133.i
  %i.sh = load volatile i64, ptr %i.ab, align 8
  %i.si = and i64 %i.sh, 35184372088832
  %.not15.i140.i = icmp eq i64 %i.si, 0
  br i1 %.not15.i140.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_tg3_flag.exit21.i138.i, %_tw32_flush.exit133.i
  %i.sj = load ptr, ptr %i.qt, align 8
  tail call void %i.sj(ptr noundef %0, i32 noundef 1024, i32 noundef %i.se) #27, !inline_history !252
  br label %.thread.i

bb.cx:                                            ; preds = %_tg3_flag.exit21.i138.i
  %i.sk = load ptr, ptr %i.qu, align 16
  %i.sl = getelementptr i8, ptr %i.sk, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.se, ptr elementtype(i32) %i.sl) #28, !srcloc !56
  %i.sm = load ptr, ptr %i.eg, align 16
  %i.sn = tail call i32 %i.sm(ptr noundef %0, i32 noundef 1024) #27, !inline_history !252 ; 0 uses
  br label %.thread.i

_tw32_flush.exit141.i:                            ; preds = %bb.cr
  br i1 %.064.in.i, label %bb.cy, label %.thread.i

bb.cy:                                            ; preds = %_tw32_flush.exit141.i
  store i32 1000, ptr %i.x, align 8
  store i8 1, ptr %i.z, align 4
  %i.so = load ptr, ptr %i.qt, align 8
  %i.sp = getelementptr i8, ptr %0, i64 5616
  %i.sq = load i32, ptr %i.sp, align 16
  %i.sr = or i32 %i.sq, 3
  tail call void %i.so(ptr noundef %0, i32 noundef 1036, i32 noundef %i.sr) #27, !inline_history !251
  %i.ss = getelementptr i8, ptr %0, i64 6104
  %i.st = load i8, ptr %i.ss, align 8, !range !46, !noundef !47
  %.not.i142.not.not.i = icmp eq i8 %i.st, 0
  br i1 %.not.i142.not.not.i, label %bb.cz, label %tg3_test_and_report_link_chg.exit.i

.thread.i:                                        ; preds = %_tw32_flush.exit141.i, %bb.cx, %bb.cw, %bb.ct, %bb.cs
  store i32 -1, ptr %i.x, align 8
  store i8 -1, ptr %i.z, align 4
  %i.su = load ptr, ptr %i.qt, align 8
  %i.sv = getelementptr i8, ptr %0, i64 5616
  %i.sw = load i32, ptr %i.sv, align 16
  %i.sx = or i32 %i.sw, 17
  tail call void %i.su(ptr noundef %0, i32 noundef 1036, i32 noundef %i.sx) #27, !inline_history !251
  %i.sy = getelementptr i8, ptr %0, i64 6104
  %i.sz = load i8, ptr %i.sy, align 8, !range !46, !noundef !47
  %.not.i142.not166.i = icmp eq i8 %i.sz, 0
  br i1 %.not.i142.not166.i, label %tg3_test_and_report_link_chg.exit.i, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ta = getelementptr i8, ptr %0, i64 64
  %i.tb = load ptr, ptr %i.ta, align 64
  tail call void @netif_carrier_on(ptr noundef %i.tb) #27
  br label %tg3_test_and_report_link_chg.exit.thread.i

bb.da:                                            ; preds = %.thread.i
  %i.tc = getelementptr i8, ptr %0, i64 64
  %i.td = load ptr, ptr %i.tc, align 64
  tail call void @netif_carrier_off(ptr noundef %i.td) #27
  %i.te = load i32, ptr %i.s, align 4             ; 2 uses
  %i.tf = and i32 %i.te, 32
  %.not8.i.i = icmp eq i32 %i.tf, 0
  br i1 %.not8.i.i, label %tg3_test_and_report_link_chg.exit.thread.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.tg = and i32 %i.te, -131073
  store i32 %i.tg, ptr %i.s, align 4
  br label %tg3_test_and_report_link_chg.exit.thread.i

tg3_test_and_report_link_chg.exit.thread.i:       ; preds = %bb.db, %bb.da, %bb.cz
  tail call fastcc void @tg3_link_report(ptr noundef %0) #30, !srcloc !287
  br label %tg3_setup_fiber_phy.exit

tg3_test_and_report_link_chg.exit.i:              ; preds = %.thread.i, %bb.cy
  %i.th = load i8, ptr %i.v, align 1
  %.not68.i = icmp eq i8 %i.w, %i.th
  br i1 %.not68.i, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %tg3_test_and_report_link_chg.exit.i
  %i.ti = load i32, ptr %i.x, align 8
  %.not69.i = icmp eq i32 %i.y, %i.ti
  br i1 %.not69.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.tj = load i8, ptr %i.z, align 4
  %.not70.i = icmp eq i8 %i.aa, %i.tj
  br i1 %.not70.i, label %tg3_setup_fiber_phy.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %tg3_test_and_report_link_chg.exit.i
  tail call fastcc void @tg3_link_report(ptr noundef %0) #30, !srcloc !288
  br label %tg3_setup_fiber_phy.exit

bb.df:                                            ; preds = %bb.a
  %i.tk = and i32 %i.t, 32
  %.not54 = icmp eq i32 %i.tk, 0
  br i1 %.not54, label %_tg3_flag.exit.i.i.i84, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 0, ptr %i.l, align 4, !annotation !40
end_hunk_0
