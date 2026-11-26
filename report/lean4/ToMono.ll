Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ToMono?download=true
inline.NumInlined: 3424
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@l_Lean_Compiler_LCNF_Code_toMono:bb.a
bb.lc:                                            ; preds = %bb.lb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit1603

bb.ld:                                            ; preds = %lean_obj_tag.exit2020
  %.val.i2054 = load i32, ptr %0, align 8, !tbaa !14 ; 4 uses
  %i.qm = icmp eq i32 %.val.i2054, 1
  br i1 %i.qm, label %.preheader.i2056.preheader, label %bb.lm

.preheader.i2056.preheader:                       ; preds = %bb.ld
  %i.qn = load ptr, ptr %i.g, align 8, !tbaa !12  ; 4 uses
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = and i64 %i.qo, 1
  %.not.i.i2058 = icmp eq i64 %i.qp, 0
  br i1 %.not.i.i2058, label %bb.le, label %lean_dec.exit.i2059

bb.le:                                            ; preds = %.preheader.i2056.preheader
  %i.qq = load i32, ptr %i.qn, align 4, !tbaa !14 ; 3 uses
  %i.qr = icmp sgt i32 %i.qq, 1
  br i1 %i.qr, label %bb.lf, label %bb.lg, !prof !15

bb.lf:                                            ; preds = %bb.le
  %i.qs = add nsw i32 %i.qq, -1
  store i32 %i.qs, ptr %i.qn, align 4, !tbaa !14
  br label %lean_dec.exit.i2059

bb.lg:                                            ; preds = %bb.le
  %.not.i7.i2062 = icmp eq i32 %i.qq, 0
  br i1 %.not.i7.i2062, label %lean_dec.exit.i2059, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qn) #5
  br label %lean_dec.exit.i2059

lean_dec.exit.i2059:                              ; preds = %bb.lh, %bb.lg, %bb.lf, %.preheader.i2056.preheader
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !12 ; 4 uses
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = and i64 %i.qv, 1
  %.not.i.i2058.1 = icmp eq i64 %i.qw, 0
  br i1 %.not.i.i2058.1, label %bb.li, label %lean_dec.exit.i2059.1

bb.li:                                            ; preds = %lean_dec.exit.i2059
  %i.qx = load i32, ptr %i.qu, align 4, !tbaa !14 ; 3 uses
  %i.qy = icmp sgt i32 %i.qx, 1
  br i1 %i.qy, label %bb.ll, label %bb.lj, !prof !15

bb.lj:                                            ; preds = %bb.li
  %.not.i7.i2062.1 = icmp eq i32 %i.qx, 0
  br i1 %.not.i7.i2062.1, label %lean_dec.exit.i2059.1, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qu) #5
  br label %lean_dec.exit.i2059.1

bb.ll:                                            ; preds = %bb.li
  %i.qz = add nsw i32 %i.qx, -1
  store i32 %i.qz, ptr %i.qu, align 4, !tbaa !14
  br label %lean_dec.exit.i2059.1

lean_dec.exit.i2059.1:                            ; preds = %bb.ll, %bb.lk, %bb.lj, %lean_dec.exit.i2059
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit2063

bb.lm:                                            ; preds = %bb.ld
  %i.ra = icmp sgt i32 %.val.i2054, 1
  br i1 %i.ra, label %bb.ln, label %bb.lo, !prof !15

bb.ln:                                            ; preds = %bb.lm
  %i.rb = add nsw i32 %.val.i2054, -1
  store i32 %i.rb, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2063

bb.lo:                                            ; preds = %bb.lm
  %.not.i8.i2055 = icmp eq i32 %.val.i2054, 0
  br i1 %.not.i8.i2055, label %lean_dec_ref_known.exit2063, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit2063

lean_dec_ref_known.exit2063:                      ; preds = %lean_dec.exit.i2059.1, %bb.ln, %bb.lo, %bb.lp
  %i.rc = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !12 ; 5 uses
  %.val1892 = load i32, ptr %i.od, align 8, !tbaa !14
  %i.re = icmp eq i32 %.val1892, 1
  br i1 %i.re, label %lean_dec.exit1603, label %bb.lq

bb.lq:                                            ; preds = %lean_dec_ref_known.exit2063
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = and i64 %i.rf, 1
  %.not.i1489 = icmp eq i64 %i.rg, 0
  br i1 %.not.i1489, label %bb.lr, label %lean_inc.exit1490

bb.lr:                                            ; preds = %bb.lq
  %.val.i.i2064 = load i32, ptr %i.rd, align 4, !tbaa !14 ; 3 uses
  %i.rh = icmp sgt i32 %.val.i.i2064, 0
  br i1 %i.rh, label %bb.ls, label %bb.lt, !prof !15

bb.ls:                                            ; preds = %bb.lr
  %i.ri = add nuw i32 %.val.i.i2064, 1
  store i32 %i.ri, ptr %i.rd, align 4, !tbaa !14
  br label %lean_inc.exit1490

bb.lt:                                            ; preds = %bb.lr
  %.not.i.i2065 = icmp eq i32 %.val.i.i2064, 0
  br i1 %.not.i.i2065, label %lean_inc.exit1490, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.rj = atomicrmw add ptr %i.rd, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1490

lean_inc.exit1490:                                ; preds = %bb.lu, %bb.lt, %bb.ls, %bb.lq
  br i1 %.not.i2017, label %bb.lv, label %bb.lz

bb.lv:                                            ; preds = %lean_inc.exit1490
  %i.rk = load i32, ptr %i.od, align 8, !tbaa !14 ; 3 uses
  %i.rl = icmp sgt i32 %i.rk, 1
  br i1 %i.rl, label %bb.lw, label %bb.lx, !prof !15

bb.lw:                                            ; preds = %bb.lv
  %i.rm = add nsw i32 %i.rk, -1
  store i32 %i.rm, ptr %i.od, align 8, !tbaa !14
  br label %bb.lz

bb.lx:                                            ; preds = %bb.lv
  %.not.i1679 = icmp eq i32 %i.rk, 0
  br i1 %.not.i1679, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.od) #5
  br label %bb.lz

bb.lz:                                            ; preds = %lean_inc.exit1490, %bb.lw, %bb.lx, %bb.ly
  tail call void @lean_inc_heartbeat() #5
  %i.rn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.ma, label %lean_alloc_ctor.exit

bb.ma:                                            ; preds = %bb.lz
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.lz
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 1, ptr %i.rn, align 4, !tbaa !14
  store i32 16842768, ptr %i.rp, align 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %i.rd, ptr %i.rq, align 8, !tbaa !12
  br label %lean_dec.exit1603

bb.mb:                                            ; preds = %lean_obj_tag.exit
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !12 ; 7 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !12 ; 6 uses
  %i.rv = getelementptr i8, ptr %i.ru, i64 8
  %.val1900 = load i64, ptr %i.rv, align 8, !tbaa !10
  %.val.i.i2067 = load i32, ptr %i.ru, align 8, !tbaa !14 ; 3 uses
  %i.rw = icmp sgt i32 %.val.i.i2067, 0
  br i1 %i.rw, label %bb.mc, label %bb.md, !prof !15

bb.mc:                                            ; preds = %bb.mb
  %i.rx = add nuw i32 %.val.i.i2067, 1
  store i32 %i.rx, ptr %i.ru, align 8, !tbaa !14
  br label %lean_inc_ref.exit2069

bb.md:                                            ; preds = %bb.mb
  %.not.i.i2068 = icmp eq i32 %.val.i.i2067, 0
  br i1 %.not.i.i2068, label %lean_inc_ref.exit2069, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ry = atomicrmw add ptr %i.ru, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2069

lean_inc_ref.exit2069:                            ; preds = %bb.mc, %bb.md, %bb.me
  %i.rz = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Compiler_LCNF_ctorAppToMono_spec__1___redArg(i64 noundef %.val1900, i64 noundef 0, ptr noundef nonnull %i.ru, ptr noundef %1) ; 14 uses
  %i.sa = ptrtoint ptr %i.rz to i64               ; 2 uses
  %i.sb = and i64 %i.sa, 1
  %.not.i2070 = icmp eq i64 %i.sb, 0              ; 3 uses
  br i1 %.not.i2070, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %lean_inc_ref.exit2069
  %i.sc = lshr i64 %i.sa, 1
  %i.sd = trunc i64 %i.sc to i32
  br label %lean_obj_tag.exit2073

bb.mg:                                            ; preds = %lean_inc_ref.exit2069
  %i.se = getelementptr i8, ptr %i.rz, i64 4
  %.val.i2072 = load i32, ptr %i.se, align 4
  %i.sf = lshr i32 %.val.i2072, 24
  br label %lean_obj_tag.exit2073

lean_obj_tag.exit2073:                            ; preds = %bb.mf, %bb.mg
  %.0.i2071 = phi i32 [ %i.sd, %bb.mf ], [ %i.sf, %bb.mg ]
  %i.sg = icmp eq i32 %.0.i2071, 0
  br i1 %i.sg, label %bb.mh, label %bb.nt

bb.mh:                                            ; preds = %lean_obj_tag.exit2073
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !12 ; 11 uses
  %.val1891 = load i32, ptr %i.rz, align 8, !tbaa !14
  %i.sj = icmp eq i32 %.val1891, 1                ; 3 uses
  br i1 %i.sj, label %lean_dec.exit1613, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = and i64 %i.sk, 1
  %.not.i1487 = icmp eq i64 %i.sl, 0
  br i1 %.not.i1487, label %bb.mj, label %lean_inc.exit1488

bb.mj:                                            ; preds = %bb.mi
  %.val.i.i2074 = load i32, ptr %i.si, align 4, !tbaa !14 ; 3 uses
  %i.sm = icmp sgt i32 %.val.i.i2074, 0
  br i1 %i.sm, label %bb.mk, label %bb.ml, !prof !15

bb.mk:                                            ; preds = %bb.mj
  %i.sn = add nuw i32 %.val.i.i2074, 1
  store i32 %i.sn, ptr %i.si, align 4, !tbaa !14
  br label %lean_inc.exit1488

bb.ml:                                            ; preds = %bb.mj
  %.not.i.i2075 = icmp eq i32 %.val.i.i2074, 0
  br i1 %.not.i.i2075, label %lean_inc.exit1488, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.so = atomicrmw add ptr %i.si, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1488

lean_inc.exit1488:                                ; preds = %bb.mm, %bb.ml, %bb.mk, %bb.mi
  br i1 %.not.i2070, label %bb.mn, label %lean_dec.exit1613

bb.mn:                                            ; preds = %lean_inc.exit1488
  %i.sp = load i32, ptr %i.rz, align 8, !tbaa !14 ; 3 uses
  %i.sq = icmp sgt i32 %i.sp, 1
  br i1 %i.sq, label %bb.mo, label %bb.mp, !prof !15

bb.mo:                                            ; preds = %bb.mn
  %i.sr = add nsw i32 %i.sp, -1
  store i32 %i.sr, ptr %i.rz, align 8, !tbaa !14
  br label %lean_dec.exit1613

bb.mp:                                            ; preds = %bb.mn
  %.not.i1681 = icmp eq i32 %i.sp, 0
  br i1 %.not.i1681, label %lean_dec.exit1613, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rz) #5
  br label %lean_dec.exit1613

lean_dec.exit1613:                                ; preds = %lean_inc.exit1488, %bb.mo, %bb.mp, %bb.mq, %bb.mh
  %.01422 = phi ptr [ %i.rz, %bb.mh ], [ inttoptr (i64 1 to ptr), %bb.mq ], [ inttoptr (i64 1 to ptr), %bb.mp ], [ inttoptr (i64 1 to ptr), %bb.mo ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1488 ] ; 4 uses
  %i.ss = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.rs, ptr noundef %i.rs) #5
  %i.st = icmp ne i8 %i.ss, 0
  %.not2402 = icmp eq ptr %i.ru, %i.si
  %or.cond = select i1 %i.st, i1 %.not2402, i1 false
  br i1 %or.cond, label %6, label %.critedge

.critedge:                                        ; preds = %lean_dec.exit1613
  %i.su = ptrtoint ptr %i.rs to i64
  %i.sv = and i64 %i.su, 1
  %.not.i1485 = icmp eq i64 %i.sv, 0
  br i1 %.not.i1485, label %bb.mr, label %lean_inc.exit1486

bb.mr:                                            ; preds = %.critedge
  %.val.i.i2077 = load i32, ptr %i.rs, align 4, !tbaa !14 ; 3 uses
  %i.sw = icmp sgt i32 %.val.i.i2077, 0
  br i1 %i.sw, label %bb.ms, label %bb.mt, !prof !15

bb.ms:                                            ; preds = %bb.mr
  %i.sx = add nuw i32 %.val.i.i2077, 1
  store i32 %i.sx, ptr %i.rs, align 4, !tbaa !14
  br label %lean_inc.exit1486

bb.mt:                                            ; preds = %bb.mr
  %.not.i.i2078 = icmp eq i32 %.val.i.i2077, 0
  br i1 %.not.i.i2078, label %lean_inc.exit1486, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.sy = atomicrmw add ptr %i.rs, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1486

lean_inc.exit1486:                                ; preds = %bb.mu, %bb.mt, %bb.ms, %.critedge
  %.val1890 = load i32, ptr %0, align 8, !tbaa !14 ; 4 uses
  %i.sz = icmp eq i32 %.val1890, 1
  br i1 %i.sz, label %bb.mv, label %bb.ne

bb.mv:                                            ; preds = %lean_inc.exit1486
  %i.ta = load ptr, ptr %i.rt, align 8, !tbaa !12 ; 4 uses
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = and i64 %i.tb, 1
  %.not.i1610 = icmp eq i64 %i.tc, 0
  br i1 %.not.i1610, label %bb.mw, label %lean_dec.exit1611

bb.mw:                                            ; preds = %bb.mv
  %i.td = load i32, ptr %i.ta, align 4, !tbaa !14 ; 3 uses
  %i.te = icmp sgt i32 %i.td, 1
  br i1 %i.te, label %bb.mx, label %bb.my, !prof !15

bb.mx:                                            ; preds = %bb.mw
  %i.tf = add nsw i32 %i.td, -1
  store i32 %i.tf, ptr %i.ta, align 4, !tbaa !14
  br label %lean_dec.exit1611

bb.my:                                            ; preds = %bb.mw
  %.not.i1683 = icmp eq i32 %i.td, 0
  br i1 %.not.i1683, label %lean_dec.exit1611, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ta) #5
  br label %lean_dec.exit1611

lean_dec.exit1611:                                ; preds = %bb.mz, %bb.my, %bb.mx, %bb.mv
  %i.tg = load ptr, ptr %i.rr, align 8, !tbaa !12 ; 4 uses
  %i.th = ptrtoint ptr %i.tg to i64
  %i.ti = and i64 %i.th, 1
  %.not.i1608 = icmp eq i64 %i.ti, 0
  br i1 %.not.i1608, label %bb.na, label %bb.nj

bb.na:                                            ; preds = %lean_dec.exit1611
  %i.tj = load i32, ptr %i.tg, align 4, !tbaa !14 ; 3 uses
  %i.tk = icmp sgt i32 %i.tj, 1
  br i1 %i.tk, label %bb.nb, label %bb.nc, !prof !15

bb.nb:                                            ; preds = %bb.na
  %i.tl = add nsw i32 %i.tj, -1
  store i32 %i.tl, ptr %i.tg, align 4, !tbaa !14
  br label %bb.nj

bb.nc:                                            ; preds = %bb.na
  %.not.i1685 = icmp eq i32 %i.tj, 0
  br i1 %.not.i1685, label %bb.nj, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tg) #5
  br label %bb.nj

bb.ne:                                            ; preds = %lean_inc.exit1486
  br i1 %.not.i1902, label %bb.nf, label %lean_dec.exit1609

bb.nf:                                            ; preds = %bb.ne
  %i.tm = icmp sgt i32 %.val1890, 1
  br i1 %i.tm, label %bb.ng, label %bb.nh, !prof !15

bb.ng:                                            ; preds = %bb.nf
  %i.tn = add nsw i32 %.val1890, -1
  store i32 %i.tn, ptr %0, align 8, !tbaa !14
  br label %lean_dec.exit1609

bb.nh:                                            ; preds = %bb.nf
  %.not.i1687 = icmp eq i32 %.val1890, 0
  br i1 %.not.i1687, label %lean_dec.exit1609, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit1609

bb.nj:                                            ; preds = %lean_dec.exit1611, %bb.nb, %bb.nc, %bb.nd
  store ptr %i.si, ptr %i.rt, align 8, !tbaa !12
  br label %bb.nk

lean_dec.exit1609:                                ; preds = %bb.ni, %bb.nh, %bb.ng, %bb.ne
  %i.to = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store ptr %i.rs, ptr %i.tp, align 8, !tbaa !12
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store ptr %i.si, ptr %i.tq, align 8, !tbaa !12
  br label %bb.nk

bb.nk:                                            ; preds = %lean_dec.exit1609, %bb.nj
  %.01417 = phi ptr [ %0, %bb.nj ], [ %i.to, %lean_dec.exit1609 ] ; 2 uses
  br i1 %i.sj, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  %i.tr = getelementptr inbounds nuw i8, ptr %.01422, i64 8
  store ptr %.01417, ptr %i.tr, align 8, !tbaa !12
  br label %lean_dec.exit1603

bb.nm:                                            ; preds = %bb.nk
  %i.ts = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store ptr %.01417, ptr %i.tt, align 8, !tbaa !12
  br label %lean_dec.exit1603

6:                                                ; preds = %lean_dec.exit1613
  %7 = ptrtoint ptr %i.si to i64
  %8 = and i64 %7, 1
  %.not.i1604 = icmp eq i64 %8, 0
  br i1 %.not.i1604, label %bb.nn, label %lean_dec.exit1605

bb.nn:                                            ; preds = %6
  %i.tu = load i32, ptr %i.si, align 4, !tbaa !14 ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 1
  br i1 %i.tv, label %bb.no, label %bb.np, !prof !15

bb.no:                                            ; preds = %bb.nn
  %i.tw = add nsw i32 %i.tu, -1
  store i32 %i.tw, ptr %i.si, align 4, !tbaa !14
  br label %lean_dec.exit1605

bb.np:                                            ; preds = %bb.nn
  %.not.i1689 = icmp eq i32 %i.tu, 0
  br i1 %.not.i1689, label %lean_dec.exit1605, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.si) #5
  br label %lean_dec.exit1605

lean_dec.exit1605:                                ; preds = %bb.nq, %bb.np, %bb.no, %6
  br i1 %i.sj, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %lean_dec.exit1605
  %i.tx = getelementptr inbounds nuw i8, ptr %.01422, i64 8
  store ptr %0, ptr %i.tx, align 8, !tbaa !12
  br label %lean_dec.exit1603

bb.ns:                                            ; preds = %lean_dec.exit1605
  %i.ty = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %0, ptr %i.tz, align 8, !tbaa !12
  br label %lean_dec.exit1603

bb.nt:                                            ; preds = %lean_obj_tag.exit2073
  %.val.i2080 = load i32, ptr %0, align 8, !tbaa !14 ; 4 uses
  %i.ua = icmp eq i32 %.val.i2080, 1
  br i1 %i.ua, label %.preheader.i2082.preheader, label %bb.oc

.preheader.i2082.preheader:                       ; preds = %bb.nt
  %i.ub = load ptr, ptr %i.rr, align 8, !tbaa !12 ; 4 uses
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = and i64 %i.uc, 1
  %.not.i.i2084 = icmp eq i64 %i.ud, 0
  br i1 %.not.i.i2084, label %bb.nu, label %lean_dec.exit.i2085

bb.nu:                                            ; preds = %.preheader.i2082.preheader
  %i.ue = load i32, ptr %i.ub, align 4, !tbaa !14 ; 3 uses
  %i.uf = icmp sgt i32 %i.ue, 1
  br i1 %i.uf, label %bb.nv, label %bb.nw, !prof !15

bb.nv:                                            ; preds = %bb.nu
  %i.ug = add nsw i32 %i.ue, -1
  store i32 %i.ug, ptr %i.ub, align 4, !tbaa !14
  br label %lean_dec.exit.i2085

bb.nw:                                            ; preds = %bb.nu
  %.not.i7.i2088 = icmp eq i32 %i.ue, 0
  br i1 %.not.i7.i2088, label %lean_dec.exit.i2085, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ub) #5
  br label %lean_dec.exit.i2085

lean_dec.exit.i2085:                              ; preds = %bb.nx, %bb.nw, %bb.nv, %.preheader.i2082.preheader
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !12 ; 4 uses
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = and i64 %i.uj, 1
  %.not.i.i2084.1 = icmp eq i64 %i.uk, 0
  br i1 %.not.i.i2084.1, label %bb.ny, label %lean_dec.exit.i2085.1

bb.ny:                                            ; preds = %lean_dec.exit.i2085
  %i.ul = load i32, ptr %i.ui, align 4, !tbaa !14 ; 3 uses
  %i.um = icmp sgt i32 %i.ul, 1
  br i1 %i.um, label %bb.ob, label %bb.nz, !prof !15

bb.nz:                                            ; preds = %bb.ny
  %.not.i7.i2088.1 = icmp eq i32 %i.ul, 0
  br i1 %.not.i7.i2088.1, label %lean_dec.exit.i2085.1, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ui) #5
  br label %lean_dec.exit.i2085.1

bb.ob:                                            ; preds = %bb.ny
  %i.un = add nsw i32 %i.ul, -1
  store i32 %i.un, ptr %i.ui, align 4, !tbaa !14
  br label %lean_dec.exit.i2085.1

lean_dec.exit.i2085.1:                            ; preds = %bb.ob, %bb.oa, %bb.nz, %lean_dec.exit.i2085
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit2089

bb.oc:                                            ; preds = %bb.nt
  %i.uo = icmp sgt i32 %.val.i2080, 1
  br i1 %i.uo, label %bb.od, label %bb.oe, !prof !15

bb.od:                                            ; preds = %bb.oc
  %i.up = add nsw i32 %.val.i2080, -1
  store i32 %i.up, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2089

bb.oe:                                            ; preds = %bb.oc
  %.not.i8.i2081 = icmp eq i32 %.val.i2080, 0
  br i1 %.not.i8.i2081, label %lean_dec_ref_known.exit2089, label %bb.of

bb.of:                                            ; preds = %bb.oe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit2089

lean_dec_ref_known.exit2089:                      ; preds = %lean_dec.exit.i2085.1, %bb.od, %bb.oe, %bb.of
  %i.uq = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !12 ; 5 uses
  %.val1889 = load i32, ptr %i.rz, align 8, !tbaa !14
  %i.us = icmp eq i32 %.val1889, 1
  br i1 %i.us, label %lean_dec.exit1603, label %bb.og

bb.og:                                            ; preds = %lean_dec_ref_known.exit2089
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = and i64 %i.ut, 1
  %.not.i1483 = icmp eq i64 %i.uu, 0
  br i1 %.not.i1483, label %bb.oh, label %lean_inc.exit1484

bb.oh:                                            ; preds = %bb.og
  %.val.i.i2090 = load i32, ptr %i.ur, align 4, !tbaa !14 ; 3 uses
  %i.uv = icmp sgt i32 %.val.i.i2090, 0
  br i1 %i.uv, label %bb.oi, label %bb.oj, !prof !15

bb.oi:                                            ; preds = %bb.oh
  %i.uw = add nuw i32 %.val.i.i2090, 1
  store i32 %i.uw, ptr %i.ur, align 4, !tbaa !14
  br label %lean_inc.exit1484

bb.oj:                                            ; preds = %bb.oh
  %.not.i.i2091 = icmp eq i32 %.val.i.i2090, 0
  br i1 %.not.i.i2091, label %lean_inc.exit1484, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ux = atomicrmw add ptr %i.ur, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1484

lean_inc.exit1484:                                ; preds = %bb.ok, %bb.oj, %bb.oi, %bb.og
  br i1 %.not.i2070, label %bb.ol, label %bb.op

bb.ol:                                            ; preds = %lean_inc.exit1484
  %i.uy = load i32, ptr %i.rz, align 8, !tbaa !14 ; 3 uses
  %i.uz = icmp sgt i32 %i.uy, 1
  br i1 %i.uz, label %bb.om, label %bb.on, !prof !15

bb.om:                                            ; preds = %bb.ol
  %i.va = add nsw i32 %i.uy, -1
  store i32 %i.va, ptr %i.rz, align 8, !tbaa !14
  br label %bb.op

bb.on:                                            ; preds = %bb.ol
  %.not.i1691 = icmp eq i32 %i.uy, 0
  br i1 %.not.i1691, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rz) #5
  br label %bb.op

bb.op:                                            ; preds = %lean_inc.exit1484, %bb.om, %bb.on, %bb.oo
  tail call void @lean_inc_heartbeat() #5
  %i.vb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %bb.oq, label %lean_alloc_ctor.exit2093

bb.oq:                                            ; preds = %bb.op
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit2093:                         ; preds = %bb.op
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i32 1, ptr %i.vb, align 4, !tbaa !14
  store i32 16842768, ptr %i.vd, align 4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store ptr %i.ur, ptr %i.ve, align 8, !tbaa !12
  br label %lean_dec.exit1603

bb.or:                                            ; preds = %lean_obj_tag.exit
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !12 ; 34 uses
  %.val.i.i2094 = load i32, ptr %i.vg, align 4, !tbaa !14 ; 3 uses
  %i.vh = icmp sgt i32 %.val.i.i2094, 0
  br i1 %i.vh, label %bb.os, label %bb.ot, !prof !15

bb.os:                                            ; preds = %bb.or
  %i.vi = add nuw i32 %.val.i.i2094, 1
  store i32 %i.vi, ptr %i.vg, align 4, !tbaa !14
  br label %lean_inc_ref.exit2096

bb.ot:                                            ; preds = %bb.or
  %.not.i.i2095 = icmp eq i32 %.val.i.i2094, 0
  br i1 %.not.i.i2095, label %lean_inc_ref.exit2096, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.vj = atomicrmw add ptr %i.vg, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2096

lean_inc_ref.exit2096:                            ; preds = %bb.os, %bb.ot, %bb.ou
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !12 ; 45 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !12 ; 28 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 24 ; 2 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !12 ; 26 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vg, i64 32 ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !12 ; 26 uses
  %i.vs = tail call zeroext i8 @lean_name_eq(ptr noundef %i.vl, ptr noundef nonnull @l_Lean_Compiler_LCNF_Code_toMono___closed__8_value) #5
  %i.vt = icmp eq i8 %i.vs, 0
  br i1 %i.vt, label %bb.ov, label %bb.ads

bb.ov:                                            ; preds = %lean_inc_ref.exit2096
  %i.vu = tail call zeroext i8 @lean_name_eq(ptr noundef %i.vl, ptr noundef nonnull @l_Lean_Compiler_LCNF_casesNatToMono___redArg___closed__0_value) #5
  %i.vv = icmp eq i8 %i.vu, 0
  br i1 %i.vv, label %bb.ow, label %bb.adj

bb.ow:                                            ; preds = %bb.ov
  %i.vw = tail call zeroext i8 @lean_name_eq(ptr noundef %i.vl, ptr noundef nonnull @l_Lean_Compiler_LCNF_casesIntToMono___redArg___closed__3_value) #5
end_hunk_0
