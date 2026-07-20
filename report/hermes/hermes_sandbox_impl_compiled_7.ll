inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_printf_core:bb.a

bb.ca:                                            ; preds = %.loopexit1579
  %i.kh = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ki = add i32 %i.kh, -256                     ; 4 uses
  store i32 %i.ki, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp sgt i32 %.01287, %.11
  %i.kj = and i32 %i.fo, 73728                    ; 5 uses
  %.not65.i = icmp eq i32 %i.kj, 0
  %or.cond.i = and i1 %.not65.i, %.not.i
  br i1 %or.cond.i, label %bb.cb, label %w2c_hermes_pad.exit

bb.cb:                                            ; preds = %bb.ca
  %i.kk = sub nsw i32 %.01287, %.11               ; 4 uses
  %i.kl = icmp ugt i32 %i.kk, 255
  %i.km = tail call i32 @llvm.umin.i32(i32 %i.kk, i32 256)
  %i.kn = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ki, i32 noundef 32, i32 noundef %i.km) #13 ; 0 uses
  br i1 %i.kl, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.cb, %.preheader.i
  %.0.i = phi i32 [ %i.ko, %.preheader.i ], [ %i.kk, %bb.cb ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ki, i32 noundef 256)
  %i.ko = add i32 %.0.i, -256                     ; 3 uses
  %i.kp = icmp ugt i32 %i.ko, 255
  br i1 %i.kp, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.cb
  %.1.i = phi i32 [ %i.kk, %bb.cb ], [ %i.ko, %.preheader.i ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ki, i32 noundef %.1.i)
  br label %w2c_hermes_pad.exit

w2c_hermes_pad.exit:                              ; preds = %bb.ca, %.loopexit.i
  store i32 %i.kh, ptr %i.a, align 8, !tbaa !32
  %.not1386 = icmp eq i32 %.11, 0
  br i1 %.not1386, label %.loopexit1578, label %bb.cc

bb.cc:                                            ; preds = %w2c_hermes_pad.exit
  %.val1393 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1393, i64 %i.e
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  %.0.copyload.i1524 = load i32, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1524) #13, !srcloc !14
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %bb.cc
  %.61319 = phi i32 [ %.0.copyload.i1524, %bb.cc ], [ %i.kx, %bb.cf ] ; 2 uses
  %.11305 = phi i32 [ 0, %bb.cc ], [ %i.kv, %bb.cf ]
  %i.ks = zext i32 %.61319 to i64
  %.val1392 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1392, i64 %i.ks
  %.0.copyload.i1525 = load i32, ptr %i.kt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1525) #13, !srcloc !14
  %.not1387 = icmp eq i32 %.0.copyload.i1525, 0
  br i1 %.not1387, label %.loopexit1578, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ku = tail call i32 @w2c_hermes_wctomb(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %.0.copyload.i1525) ; 2 uses
  %i.kv = add i32 %i.ku, %.11305                  ; 3 uses
  %i.kw = icmp ugt i32 %i.kv, %.11
  br i1 %i.kw, label %.loopexit1578, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.v, i32 noundef %i.ku)
  %i.kx = add i32 %.61319, 4
  %i.ky = icmp ugt i32 %.11, %i.kv
  br i1 %i.ky, label %bb.cd, label %.loopexit1578

.loopexit1578:                                    ; preds = %bb.cf, %bb.ce, %bb.cd, %w2c_hermes_pad.exit, %bb.bt
  %.pre-phi = phi i32 [ %.pre, %bb.bt ], [ %i.kj, %w2c_hermes_pad.exit ], [ %i.kj, %bb.cd ], [ %i.kj, %bb.ce ], [ %i.kj, %bb.cf ]
  %.12 = phi i32 [ 0, %bb.bt ], [ 0, %w2c_hermes_pad.exit ], [ %.11, %bb.cd ], [ %.11, %bb.ce ], [ %.11, %bb.cf ] ; 3 uses
  %i.kz = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.la = add i32 %i.kz, -256                     ; 4 uses
  store i32 %i.la, ptr %i.a, align 8, !tbaa !32
  %.not.i1526 = icmp sgt i32 %.01287, %.12
  %.not65.i1527 = icmp eq i32 %.pre-phi, 8192
  %or.cond.i1528 = and i1 %.not65.i1527, %.not.i1526
  br i1 %or.cond.i1528, label %bb.cg, label %w2c_hermes_pad.exit1533

bb.cg:                                            ; preds = %.loopexit1578
  %i.lb = sub nsw i32 %.01287, %.12               ; 4 uses
  %i.lc = icmp ugt i32 %i.lb, 255
  %i.ld = tail call i32 @llvm.umin.i32(i32 %i.lb, i32 256)
  %i.le = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.la, i32 noundef 32, i32 noundef %i.ld) #13 ; 0 uses
  br i1 %i.lc, label %.preheader.i1531, label %.loopexit.i1529

.preheader.i1531:                                 ; preds = %bb.cg, %.preheader.i1531
  %.0.i1532 = phi i32 [ %i.lf, %.preheader.i1531 ], [ %i.lb, %bb.cg ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.la, i32 noundef 256)
  %i.lf = add i32 %.0.i1532, -256                 ; 3 uses
  %i.lg = icmp ugt i32 %i.lf, 255
  br i1 %i.lg, label %.preheader.i1531, label %.loopexit.i1529

.loopexit.i1529:                                  ; preds = %.preheader.i1531, %bb.cg
  %.1.i1530 = phi i32 [ %i.lb, %bb.cg ], [ %i.lf, %.preheader.i1531 ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.la, i32 noundef %.1.i1530)
  br label %w2c_hermes_pad.exit1533

w2c_hermes_pad.exit1533:                          ; preds = %.loopexit1578, %.loopexit.i1529
  store i32 %i.kz, ptr %i.a, align 8, !tbaa !32
  %i.lh = tail call i32 @llvm.smax.i32(i32 %.12, i32 %.01287)
  br label %.backedge

bb.ch:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %i.li = icmp sgt i32 %.01308, -1
  %.not1381 = select i1 %i.li, i1 true, i1 %.21275
  br i1 %.not1381, label %bb.ci, label %.loopexit

bb.ci:                                            ; preds = %bb.ch
  %.val1474 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1474, i64 %i.e
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %.0.copyload.i1534 = load double, ptr %i.lk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1534) #13, !srcloc !44
  %i.ll = load i32, ptr %i.q, align 4, !tbaa !15
  %i.lm = icmp ult i32 %6, %i.ll
  br i1 %i.lm, label %bb.cj, label %.critedge, !prof !21

bb.cj:                                            ; preds = %bb.ci
  %i.ln = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %i.s ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !23 ; 2 uses
  %.not1383 = icmp eq ptr %i.lq, null
  br i1 %.not1383, label %.critedge, label %bb.ck, !prof !25

bb.ck:                                            ; preds = %bb.cj
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !26 ; 4 uses
  %i.ls = icmp eq ptr %i.t, %i.lr
  br i1 %i.ls, label %func_types_eq.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lt = icmp ne ptr %i.lr, null
  %or.cond.i1535 = and i1 %i.u, %i.lt
  br i1 %or.cond.i1535, label %func_types_eq.exit, label %.critedge, !prof !30

func_types_eq.exit:                               ; preds = %bb.cl
  %i.lu = load i128, ptr %i.t, align 1
  %i.lv = load i128, ptr %i.lr, align 1
  %i.lw = xor i128 %i.lu, %i.lv
  %i.lx = getelementptr i8, ptr %i.t, i64 16
  %i.ly = getelementptr i8, ptr %i.lr, i64 16
  %i.lz = load i128, ptr %i.lx, align 1
  %i.ma = load i128, ptr %i.ly, align 1
  %i.mb = xor i128 %i.lz, %i.ma
  %i.mc = or i128 %i.lw, %i.mb
  %i.md = icmp ne i128 %i.mc, 0
  %i.me = zext i1 %i.md to i32
  %.not.i1536 = icmp eq i32 %i.me, 0
  br i1 %.not.i1536, label %func_types_eq.exit.thread, label %.critedge, !prof !28

.critedge:                                        ; preds = %bb.cl, %bb.cj, %bb.ci, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #14
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.ck, %func_types_eq.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !27
  %i.mh = tail call i32 %i.lq(ptr noundef %i.mg, i32 noundef %1, double noundef %.0.copyload.i1534, i32 noundef %.01287, i32 noundef %.01308, i32 noundef %i.fo, i32 noundef %i.fv) #13 ; 2 uses
  %i.mi = icmp sgt i32 %i.mh, -1
  br i1 %i.mi, label %.backedge, label %.loopexit

bb.cm:                                            ; preds = %bb.ar
  %.val1447 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1447, i64 %i.e
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 64
  %.0.copyload.i1537 = load i64, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1537) #13, !srcloc !33
  %.val1475 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ml = trunc i64 %.0.copyload.i1537 to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.e
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 55
  store i8 %i.ml, ptr %i.mn, align 1
  br label %bb.cr

bb.cn:                                            ; preds = %.preheader1587
  %i.mo = zext i32 %.11268 to i64
  %.val1432 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1432, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %.0.copyload.i1538 = load i8, ptr %i.mq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1538) #13, !srcloc !31
  %i.mr = add i32 %.11268, 1
  br label %.preheader1587

bb.co:                                            ; preds = %bb.b
  br i1 %.not1352, label %bb.cp, label %.loopexit1573

bb.cp:                                            ; preds = %bb.co
  %.not1344 = icmp eq i32 %.012831619, 0
  br i1 %.not1344, label %.loopexit1573, label %.preheader1574.preheader

.preheader1574.preheader:                         ; preds = %bb.cp
  %i.ms = add i32 %5, 4
  %i.mt = zext i32 %i.ms to i64
  %.val1391 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.mu = getelementptr inbounds nuw i8, ptr %.val1391, i64 %i.mt
  %.0.copyload.i1539 = load i32, ptr %i.mu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539) #13, !srcloc !14
  %.not1345 = icmp eq i32 %.0.copyload.i1539, 0
  br i1 %.not1345, label %.preheader.preheader, label %.preheader1574.1

.preheader1574.1:                                 ; preds = %.preheader1574.preheader
  %i.mv = add i32 %4, 8
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.mv, i32 noundef %.0.copyload.i1539, i32 noundef %3, i32 noundef %7)
  %i.mw = add i32 %5, 8
  %i.mx = zext i32 %i.mw to i64
  %.val1391.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.my = getelementptr inbounds nuw i8, ptr %.val1391.1, i64 %i.mx
  %.0.copyload.i1539.1 = load i32, ptr %i.my, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.1) #13, !srcloc !14
  %.not1345.1 = icmp eq i32 %.0.copyload.i1539.1, 0
  br i1 %.not1345.1, label %.preheader.preheader, label %.preheader1574.2

.preheader1574.2:                                 ; preds = %.preheader1574.1
  %i.mz = add i32 %4, 16
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.mz, i32 noundef %.0.copyload.i1539.1, i32 noundef %3, i32 noundef %7)
  %i.na = add i32 %5, 12
  %i.nb = zext i32 %i.na to i64
  %.val1391.2 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nc = getelementptr inbounds nuw i8, ptr %.val1391.2, i64 %i.nb
  %.0.copyload.i1539.2 = load i32, ptr %i.nc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.2) #13, !srcloc !14
  %.not1345.2 = icmp eq i32 %.0.copyload.i1539.2, 0
  br i1 %.not1345.2, label %.preheader.preheader, label %.preheader1574.3

.preheader1574.3:                                 ; preds = %.preheader1574.2
  %i.nd = add i32 %4, 24
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.nd, i32 noundef %.0.copyload.i1539.2, i32 noundef %3, i32 noundef %7)
  %i.ne = add i32 %5, 16
  %i.nf = zext i32 %i.ne to i64
  %.val1391.3 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ng = getelementptr inbounds nuw i8, ptr %.val1391.3, i64 %i.nf
  %.0.copyload.i1539.3 = load i32, ptr %i.ng, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.3) #13, !srcloc !14
  %.not1345.3 = icmp eq i32 %.0.copyload.i1539.3, 0
  br i1 %.not1345.3, label %.preheader.preheader, label %.preheader1574.4

.preheader1574.4:                                 ; preds = %.preheader1574.3
  %i.nh = add i32 %4, 32
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.nh, i32 noundef %.0.copyload.i1539.3, i32 noundef %3, i32 noundef %7)
  %i.ni = add i32 %5, 20
  %i.nj = zext i32 %i.ni to i64
  %.val1391.4 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %.val1391.4, i64 %i.nj
  %.0.copyload.i1539.4 = load i32, ptr %i.nk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.4) #13, !srcloc !14
  %.not1345.4 = icmp eq i32 %.0.copyload.i1539.4, 0
  br i1 %.not1345.4, label %.preheader.preheader, label %.preheader1574.5

.preheader1574.5:                                 ; preds = %.preheader1574.4
  %i.nl = add i32 %4, 40
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.nl, i32 noundef %.0.copyload.i1539.4, i32 noundef %3, i32 noundef %7)
  %i.nm = add i32 %5, 24
  %i.nn = zext i32 %i.nm to i64
  %.val1391.5 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %.val1391.5, i64 %i.nn
  %.0.copyload.i1539.5 = load i32, ptr %i.no, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.5) #13, !srcloc !14
  %.not1345.5 = icmp eq i32 %.0.copyload.i1539.5, 0
  br i1 %.not1345.5, label %.preheader.preheader, label %.preheader1574.6

.preheader1574.6:                                 ; preds = %.preheader1574.5
  %i.np = add i32 %4, 48
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.np, i32 noundef %.0.copyload.i1539.5, i32 noundef %3, i32 noundef %7)
  %i.nq = add i32 %5, 28
  %i.nr = zext i32 %i.nq to i64
  %.val1391.6 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ns = getelementptr inbounds nuw i8, ptr %.val1391.6, i64 %i.nr
  %.0.copyload.i1539.6 = load i32, ptr %i.ns, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.6) #13, !srcloc !14
  %.not1345.6 = icmp eq i32 %.0.copyload.i1539.6, 0
  br i1 %.not1345.6, label %.preheader.preheader, label %.preheader1574.7

.preheader1574.7:                                 ; preds = %.preheader1574.6
  %i.nt = add i32 %4, 56
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.nt, i32 noundef %.0.copyload.i1539.6, i32 noundef %3, i32 noundef %7)
  %i.nu = add i32 %5, 32
  %i.nv = zext i32 %i.nu to i64
  %.val1391.7 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1391.7, i64 %i.nv
  %.0.copyload.i1539.7 = load i32, ptr %i.nw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.7) #13, !srcloc !14
  %.not1345.7 = icmp eq i32 %.0.copyload.i1539.7, 0
  br i1 %.not1345.7, label %.preheader.preheader, label %.preheader1574.8

.preheader1574.8:                                 ; preds = %.preheader1574.7
  %i.nx = add i32 %4, 64
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.nx, i32 noundef %.0.copyload.i1539.7, i32 noundef %3, i32 noundef %7)
  %i.ny = add i32 %5, 36
  %i.nz = zext i32 %i.ny to i64
  %.val1391.8 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.oa = getelementptr inbounds nuw i8, ptr %.val1391.8, i64 %i.nz
  %.0.copyload.i1539.8 = load i32, ptr %i.oa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539.8) #13, !srcloc !14
  %.not1345.8 = icmp eq i32 %.0.copyload.i1539.8, 0
  br i1 %.not1345.8, label %.preheader.preheader, label %.loopexit1573.loopexit1622

.preheader.preheader:                             ; preds = %.preheader1574.preheader, %.preheader1574.1, %.preheader1574.2, %.preheader1574.3, %.preheader1574.4, %.preheader1574.5, %.preheader1574.6, %.preheader1574.7, %.preheader1574.8
  %indvars.iv.ph = phi i64 [ 9, %.preheader1574.8 ], [ 8, %.preheader1574.7 ], [ 7, %.preheader1574.6 ], [ 6, %.preheader1574.5 ], [ 5, %.preheader1574.4 ], [ 4, %.preheader1574.3 ], [ 3, %.preheader1574.2 ], [ 2, %.preheader1574.1 ], [ 1, %.preheader1574.preheader ]
  br label %.preheader

.loopexit1573.loopexit1622:                       ; preds = %.preheader1574.8
  %i.ob = add i32 %4, 72
  tail call void @w2c_hermes_pop_arg(ptr noundef nonnull %0, i32 noundef %i.ob, i32 noundef %.0.copyload.i1539.8, i32 noundef %3, i32 noundef %7)
  br label %.loopexit1573

.preheader:                                       ; preds = %.preheader.preheader, %bb.cq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cq ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.oc = shl i32 %indvars.iv.tr, 2
  %i.od = add i32 %i.oc, %5
  %i.oe = zext i32 %i.od to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.of = getelementptr inbounds nuw i8, ptr %.val, i64 %i.oe
  %.0.copyload.i1540 = load i32, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1540) #13, !srcloc !14
  %.not1346 = icmp eq i32 %.0.copyload.i1540, 0
  br i1 %.not1346, label %bb.cq, label %.loopexit

bb.cq:                                            ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1347 = icmp eq i64 %indvars.iv.next, 10
  br i1 %.not1347, label %.loopexit1573, label %.preheader

bb.cr:                                            ; preds = %bb.bp, %bb.bn, %bb.ar, %bb.bq, %bb.cm, %bb.bo
  %.41312 = phi i32 [ %i.jj, %bb.bp ], [ %i.jj, %bb.bq ], [ 0, %bb.bn ], [ 1, %bb.cm ], [ %i.jc, %bb.bo ], [ %.01308, %bb.ar ] ; 2 uses
  %.21306 = phi i32 [ %i.jk, %bb.bp ], [ %i.jk, %bb.bq ], [ %i.i, %bb.bn ], [ %i.i, %bb.cm ], [ %i.i, %bb.bo ], [ %i.i, %bb.ar ]
  %.31303 = phi i32 [ %i.jf, %bb.bp ], [ %i.jf, %bb.bq ], [ %i.i, %bb.bn ], [ %i.h, %bb.cm ], [ %.21302, %bb.bo ], [ %.01621, %bb.ar ] ; 2 uses
  %.51299 = phi i32 [ %i.fm, %bb.bp ], [ %i.fm, %bb.bq ], [ %i.iw, %bb.bn ], [ %i.fm, %bb.cm ], [ %i.iw, %bb.bo ], [ %i.fo, %bb.ar ]
  %.31291 = phi i32 [ 0, %bb.bp ], [ 0, %bb.bq ], [ %.21290, %bb.bn ], [ 0, %bb.cm ], [ %.21290, %bb.bo ], [ 0, %bb.ar ] ; 3 uses
  %.11282 = phi i32 [ 18120, %bb.bp ], [ 18120, %bb.bq ], [ %.01281, %bb.bn ], [ 18120, %bb.cm ], [ %.01281, %bb.bo ], [ 18120, %bb.ar ]
  %i.og = sub i32 %.21306, %.31303                ; 4 uses
  %i.oh = tail call i32 @llvm.smax.i32(i32 %.41312, i32 %i.og) ; 3 uses
  %i.oi = xor i32 %.31291, 2147483647
  %i.oj = icmp sgt i32 %i.oh, %i.oi
  br i1 %i.oj, label %.loopexit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ok = add i32 %i.oh, %.31291                  ; 5 uses
  %i.ol = tail call i32 @llvm.smax.i32(i32 %i.ok, i32 %.01287) ; 5 uses
  %i.om = icmp sgt i32 %i.ol, %i.ai
  br i1 %i.om, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.on = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.oo = add i32 %i.on, -256                     ; 4 uses
  store i32 %i.oo, ptr %i.a, align 8, !tbaa !32
  %.not.i1541 = icmp sgt i32 %.01287, %i.ok       ; 3 uses
  %i.op = and i32 %.51299, 73728                  ; 3 uses
  %.not65.i1542 = icmp eq i32 %i.op, 0
  %or.cond.i1543 = and i1 %.not65.i1542, %.not.i1541
  br i1 %or.cond.i1543, label %bb.cu, label %w2c_hermes_pad.exit1548

bb.cu:                                            ; preds = %bb.ct
  %i.oq = sub i32 %i.ol, %i.ok                    ; 4 uses
  %i.or = icmp ugt i32 %i.oq, 255
  %i.os = tail call i32 @llvm.umin.i32(i32 %i.oq, i32 256)
  %i.ot = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.oo, i32 noundef 32, i32 noundef %i.os) #13 ; 0 uses
  br i1 %i.or, label %.preheader.i1546, label %.loopexit.i1544

.preheader.i1546:                                 ; preds = %bb.cu, %.preheader.i1546
  %.0.i1547 = phi i32 [ %i.ou, %.preheader.i1546 ], [ %i.oq, %bb.cu ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.oo, i32 noundef 256)
  %i.ou = add i32 %.0.i1547, -256                 ; 3 uses
  %i.ov = icmp ugt i32 %i.ou, 255
  br i1 %i.ov, label %.preheader.i1546, label %.loopexit.i1544

.loopexit.i1544:                                  ; preds = %.preheader.i1546, %bb.cu
  %.1.i1545 = phi i32 [ %i.oq, %bb.cu ], [ %i.ou, %.preheader.i1546 ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.oo, i32 noundef %.1.i1545)
  br label %w2c_hermes_pad.exit1548

w2c_hermes_pad.exit1548:                          ; preds = %bb.ct, %.loopexit.i1544
  store i32 %i.on, ptr %i.a, align 8, !tbaa !32
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.11282, i32 noundef %.31291)
  %i.ow = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ox = add i32 %i.ow, -256                     ; 8 uses
  store i32 %i.ox, ptr %i.a, align 8, !tbaa !32
  %.not65.i1550 = icmp eq i32 %i.op, 65536
  %or.cond.i1551 = and i1 %.not65.i1550, %.not.i1541
  br i1 %or.cond.i1551, label %bb.cv, label %w2c_hermes_pad.exit1556

bb.cv:                                            ; preds = %w2c_hermes_pad.exit1548
  %i.oy = sub i32 %i.ol, %i.ok                    ; 4 uses
  %i.oz = icmp ugt i32 %i.oy, 255
  %i.pa = tail call i32 @llvm.umin.i32(i32 %i.oy, i32 256)
  %i.pb = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ox, i32 noundef 48, i32 noundef %i.pa) #13 ; 0 uses
  br i1 %i.oz, label %.preheader.i1554, label %.loopexit.i1552

.preheader.i1554:                                 ; preds = %bb.cv, %.preheader.i1554
  %.0.i1555 = phi i32 [ %i.pc, %.preheader.i1554 ], [ %i.oy, %bb.cv ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ox, i32 noundef 256)
  %i.pc = add i32 %.0.i1555, -256                 ; 3 uses
  %i.pd = icmp ugt i32 %i.pc, 255
  br i1 %i.pd, label %.preheader.i1554, label %.loopexit.i1552

.loopexit.i1552:                                  ; preds = %.preheader.i1554, %bb.cv
  %.1.i1553 = phi i32 [ %i.oy, %bb.cv ], [ %i.pc, %.preheader.i1554 ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ox, i32 noundef %.1.i1553)
  br label %w2c_hermes_pad.exit1556

w2c_hermes_pad.exit1556:                          ; preds = %w2c_hermes_pad.exit1548, %.loopexit.i1552
  store i32 %i.ox, ptr %i.a, align 8, !tbaa !32
  %.not.i1557 = icmp sgt i32 %.41312, %i.og
  br i1 %.not.i1557, label %bb.cw, label %w2c_hermes_pad.exit1563

bb.cw:                                            ; preds = %w2c_hermes_pad.exit1556
  %i.pe = sub i32 %i.oh, %i.og                    ; 4 uses
  %i.pf = icmp ugt i32 %i.pe, 255
  %i.pg = tail call i32 @llvm.umin.i32(i32 %i.pe, i32 256)
  %i.ph = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ox, i32 noundef 48, i32 noundef %i.pg) #13 ; 0 uses
  br i1 %i.pf, label %.preheader.i1561, label %.loopexit.i1559

.preheader.i1561:                                 ; preds = %bb.cw, %.preheader.i1561
  %.0.i1562 = phi i32 [ %i.pi, %.preheader.i1561 ], [ %i.pe, %bb.cw ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ox, i32 noundef 256)
  %i.pi = add i32 %.0.i1562, -256                 ; 3 uses
  %i.pj = icmp ugt i32 %i.pi, 255
  br i1 %i.pj, label %.preheader.i1561, label %.loopexit.i1559

.loopexit.i1559:                                  ; preds = %.preheader.i1561, %bb.cw
  %.1.i1560 = phi i32 [ %i.pe, %bb.cw ], [ %i.pi, %.preheader.i1561 ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ox, i32 noundef %.1.i1560)
  br label %w2c_hermes_pad.exit1563

w2c_hermes_pad.exit1563:                          ; preds = %w2c_hermes_pad.exit1556, %.loopexit.i1559
  store i32 %i.ow, ptr %i.a, align 8, !tbaa !32
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.31303, i32 noundef %i.og)
  %i.pk = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.pl = add i32 %i.pk, -256                     ; 4 uses
  store i32 %i.pl, ptr %i.a, align 8, !tbaa !32
  %.not65.i1565 = icmp eq i32 %i.op, 8192
  %or.cond.i1566 = and i1 %.not65.i1565, %.not.i1541
  br i1 %or.cond.i1566, label %bb.cx, label %w2c_hermes_pad.exit1571

bb.cx:                                            ; preds = %w2c_hermes_pad.exit1563
  %i.pm = sub i32 %i.ol, %i.ok                    ; 4 uses
  %i.pn = icmp ugt i32 %i.pm, 255
  %i.po = tail call i32 @llvm.umin.i32(i32 %i.pm, i32 256)
  %i.pp = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.pl, i32 noundef 32, i32 noundef %i.po) #13 ; 0 uses
  br i1 %i.pn, label %.preheader.i1569, label %.loopexit.i1567

.preheader.i1569:                                 ; preds = %bb.cx, %.preheader.i1569
  %.0.i1570 = phi i32 [ %i.pq, %.preheader.i1569 ], [ %i.pm, %bb.cx ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.pl, i32 noundef 256)
  %i.pq = add i32 %.0.i1570, -256                 ; 3 uses
  %i.pr = icmp ugt i32 %i.pq, 255
  br i1 %i.pr, label %.preheader.i1569, label %.loopexit.i1567

.loopexit.i1567:                                  ; preds = %.preheader.i1569, %bb.cx
  %.1.i1568 = phi i32 [ %i.pm, %bb.cx ], [ %i.pq, %.preheader.i1569 ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.pl, i32 noundef %.1.i1568)
  br label %w2c_hermes_pad.exit1571

w2c_hermes_pad.exit1571:                          ; preds = %w2c_hermes_pad.exit1563, %.loopexit.i1567
  store i32 %i.pk, ptr %i.a, align 8, !tbaa !32
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %.loopexit1586, %bb.v, %bb.bm, %bb.bq, %bb.ch, %bb.cr, %bb.p, %bb.ac, %bb.ak, %bb.cs, %func_types_eq.exit.thread, %.loopexit1579, %bb.ap, %bb.ai, %.preheader
  %.31307 = phi i32 [ 28, %bb.ai ], [ 28, %.preheader ], [ 61, %.loopexit1586 ], [ 61, %bb.v ], [ 61, %bb.bm ], [ 61, %bb.bq ], [ 61, %bb.ch ], [ 61, %bb.cr ], [ 28, %bb.ac ], [ 61, %.backedge ], [ 61, %func_types_eq.exit.thread ], [ 61, %bb.cs ], [ 61, %.loopexit1579 ], [ 28, %bb.ak ], [ 28, %bb.ap ], [ 28, %bb.p ]
  %.val1412 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ps = getelementptr inbounds nuw i8, ptr %.val1412, i64 272032
  store i32 %.31307, ptr %i.ps, align 1
  br label %.loopexit1573

.loopexit1573:                                    ; preds = %bb.bz, %bb.an, %bb.cq, %.loopexit1573.loopexit1622, %.loopexit, %bb.cp, %bb.co
  %.11293 = phi i32 [ 1, %.loopexit1573.loopexit1622 ], [ -1, %.loopexit ], [ %i.w, %bb.co ], [ 0, %bb.cp ], [ 1, %bb.cq ], [ -1, %bb.bz ], [ 0, %bb.an ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.11293
}

declare i32 @w2c_hermes_getint(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_pop_arg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.o [
    i32 9, label %bb.b
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.l
    i32 14, label %bb.m
    i32 15, label %bb.c
    i32 16, label %bb.d
    i32 17, label %bb.e
    i32 18, label %bb.f
    i32 19, label %bb.n
    i32 20, label %bb.m
    i32 21, label %bb.n
    i32 22, label %bb.n
    i32 23, label %bb.l
    i32 24, label %bb.m
    i32 25, label %bb.g
    i32 26, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !8
end_hunk_0
