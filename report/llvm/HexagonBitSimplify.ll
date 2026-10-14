Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonBitSimplify?download=true
inline.NumInlined: 3093
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_117BitSimplification12processBlockERN4llvm17MachineBasicBlockERKNS_11RegisterSetE:bb.a
  %i.rp = getelementptr inbounds nuw i8, ptr %.val70, i64 288
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !264
  %i.rr = icmp eq i32 %i.rq, 1
  br i1 %i.rr, label %.lr.ph.i.8.i, label %bb.bf

.lr.ph.i.8.i:                                     ; preds = %.lr.ph.i.7.i
  %i.rs = getelementptr inbounds nuw i8, ptr %.val70, i64 276
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !264
  %i.ru = icmp eq i32 %i.rt, 1
  br i1 %i.ru, label %.lr.ph.i.9.i, label %bb.bf

.lr.ph.i.9.i:                                     ; preds = %.lr.ph.i.8.i
  %i.rv = getelementptr inbounds nuw i8, ptr %.val70, i64 264
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !264
  %i.rx = icmp eq i32 %i.rw, 1
  br i1 %i.rx, label %.lr.ph.i.10.i, label %bb.bf

.lr.ph.i.10.i:                                    ; preds = %.lr.ph.i.9.i
  %i.ry = getelementptr inbounds nuw i8, ptr %.val70, i64 252
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !264
  %i.sa = icmp eq i32 %i.rz, 1
  br i1 %i.sa, label %.lr.ph.i.11.i, label %bb.bf

.lr.ph.i.11.i:                                    ; preds = %.lr.ph.i.10.i
  %i.sb = getelementptr inbounds nuw i8, ptr %.val70, i64 240
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !264
  %i.sd = icmp eq i32 %i.sc, 1
  br i1 %i.sd, label %.lr.ph.i.12.i, label %bb.bf

.lr.ph.i.12.i:                                    ; preds = %.lr.ph.i.11.i
  %i.se = getelementptr inbounds nuw i8, ptr %.val70, i64 228
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !264
  %i.sg = icmp eq i32 %i.sf, 1
  br i1 %i.sg, label %.lr.ph.i.13.i, label %bb.bf

.lr.ph.i.13.i:                                    ; preds = %.lr.ph.i.12.i
  %i.sh = getelementptr inbounds nuw i8, ptr %.val70, i64 216
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !264
  %i.sj = icmp eq i32 %i.si, 1
  br i1 %i.sj, label %.lr.ph.i.14.i, label %bb.bf

.lr.ph.i.14.i:                                    ; preds = %.lr.ph.i.13.i
  %i.sk = getelementptr inbounds nuw i8, ptr %.val70, i64 204
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !264
  %i.sm = icmp eq i32 %i.sl, 1
  br i1 %i.sm, label %.lr.ph.i.15.i, label %bb.bf

.lr.ph.i.15.i:                                    ; preds = %.lr.ph.i.14.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.val70, i64 192
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !264
  %i.sp = icmp eq i32 %i.so, 1
  br i1 %i.sp, label %.lr.ph.i.16.i, label %bb.bf

.lr.ph.i.16.i:                                    ; preds = %.lr.ph.i.15.i
  %i.sq = getelementptr inbounds nuw i8, ptr %.val70, i64 180
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !264
  %i.ss = icmp eq i32 %i.sr, 1
  br i1 %i.ss, label %.lr.ph.i.17.i, label %bb.bf

.lr.ph.i.17.i:                                    ; preds = %.lr.ph.i.16.i
  %i.st = getelementptr inbounds nuw i8, ptr %.val70, i64 168
  %i.su = load i32, ptr %i.st, align 4, !tbaa !264
  %i.sv = icmp eq i32 %i.su, 1
  br i1 %i.sv, label %.lr.ph.i.18.i, label %bb.bf

.lr.ph.i.18.i:                                    ; preds = %.lr.ph.i.17.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.val70, i64 156
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !264
  %i.sy = icmp eq i32 %i.sx, 1
  br i1 %i.sy, label %.lr.ph.i.19.i, label %bb.bf

.lr.ph.i.19.i:                                    ; preds = %.lr.ph.i.18.i
  %i.sz = getelementptr inbounds nuw i8, ptr %.val70, i64 144
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !264
  %i.tb = icmp eq i32 %i.ta, 1
  br i1 %i.tb, label %.lr.ph.i.20.i, label %bb.bf

.lr.ph.i.20.i:                                    ; preds = %.lr.ph.i.19.i
  %i.tc = getelementptr inbounds nuw i8, ptr %.val70, i64 132
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !264
  %i.te = icmp eq i32 %i.td, 1
  br i1 %i.te, label %.lr.ph.i.21.i, label %bb.bf

.lr.ph.i.21.i:                                    ; preds = %.lr.ph.i.20.i
  %i.tf = getelementptr inbounds nuw i8, ptr %.val70, i64 120
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !264
  %i.th = icmp eq i32 %i.tg, 1
  br i1 %i.th, label %.lr.ph.i.22.i, label %bb.bf

.lr.ph.i.22.i:                                    ; preds = %.lr.ph.i.21.i
  %i.ti = getelementptr inbounds nuw i8, ptr %.val70, i64 108
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !264
  %i.tk = icmp eq i32 %i.tj, 1
  br i1 %i.tk, label %.lr.ph.i.23.i, label %bb.bf

.lr.ph.i.23.i:                                    ; preds = %.lr.ph.i.22.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.val70, i64 96
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !264
  %i.tn = icmp eq i32 %i.tm, 1
  br i1 %i.tn, label %.lr.ph.i.24.i, label %bb.bf

.lr.ph.i.24.i:                                    ; preds = %.lr.ph.i.23.i
  %i.to = getelementptr inbounds nuw i8, ptr %.val70, i64 84
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !264
  %i.tq = icmp eq i32 %i.tp, 1
  br i1 %i.tq, label %.lr.ph.i.25.i, label %bb.bf

.lr.ph.i.25.i:                                    ; preds = %.lr.ph.i.24.i
  %i.tr = getelementptr inbounds nuw i8, ptr %.val70, i64 72
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !264
  %i.tt = icmp eq i32 %i.ts, 1
  br i1 %i.tt, label %.lr.ph.i.26.i, label %bb.bf

.lr.ph.i.26.i:                                    ; preds = %.lr.ph.i.25.i
  %i.tu = getelementptr inbounds nuw i8, ptr %.val70, i64 60
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !264
  %i.tw = icmp eq i32 %i.tv, 1
  br i1 %i.tw, label %.lr.ph.i.27.i, label %bb.bf

.lr.ph.i.27.i:                                    ; preds = %.lr.ph.i.26.i
  %i.tx = getelementptr inbounds nuw i8, ptr %.val70, i64 48
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !264
  %i.tz = icmp eq i32 %i.ty, 1
  br i1 %i.tz, label %.lr.ph.i.28.i, label %bb.bf

.lr.ph.i.28.i:                                    ; preds = %.lr.ph.i.27.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.val70, i64 36
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !264
  %i.uc = icmp eq i32 %i.ub, 1
  br i1 %i.uc, label %.lr.ph.i.29.i, label %bb.bf

.lr.ph.i.29.i:                                    ; preds = %.lr.ph.i.28.i
  %i.ud = getelementptr inbounds nuw i8, ptr %.val70, i64 24
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !264
  %i.uf = icmp eq i32 %i.ue, 1
  br i1 %i.uf, label %.lr.ph.i.30.i, label %bb.bf

.lr.ph.i.30.i:                                    ; preds = %.lr.ph.i.29.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.val70, i64 12
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !264
  %i.ui = icmp eq i32 %i.uh, 1
  br i1 %i.ui, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i", label %bb.bf

"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i": ; preds = %.lr.ph.i.30.i
  %i.uj = load i32, ptr %.val70, align 4, !tbaa !264
  %cond = icmp eq i32 %i.uj, 3
  br i1 %cond, label %.thread248, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239"

bb.bf:                                            ; preds = %.lr.ph.i.24.i, %.lr.ph.i.15.i, %.lr.ph.i.22.i, %.lr.ph.i.14.i, %.lr.ph.i.25.i, %.lr.ph.i.13.i, %.lr.ph.i.19.i, %.lr.ph.i.12.i, %.lr.ph.i.26.i, %.lr.ph.i.11.i, %.lr.ph.i.21.i, %.lr.ph.i.10.i, %.lr.ph.i.27.i, %.lr.ph.i.9.i, %.lr.ph.i.18.i, %.lr.ph.i.8.i, %.lr.ph.i.28.i, %.lr.ph.i.7.i, %.lr.ph.i.23.i, %.lr.ph.i.6.i, %.lr.ph.i.29.i, %.lr.ph.i.5.i, %.lr.ph.i.17.i, %.lr.ph.i.4.i, %.lr.ph.i.30.i, %.lr.ph.i.3.i, %.lr.ph.i.20.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.i.16.i
  %.0.lcssa.i.i124.ph = phi i32 [ 8, %.lr.ph.i.24.i ], [ 17, %.lr.ph.i.15.i ], [ 10, %.lr.ph.i.22.i ], [ 18, %.lr.ph.i.14.i ], [ 7, %.lr.ph.i.25.i ], [ 19, %.lr.ph.i.13.i ], [ 13, %.lr.ph.i.19.i ], [ 20, %.lr.ph.i.12.i ], [ 6, %.lr.ph.i.26.i ], [ 21, %.lr.ph.i.11.i ], [ 11, %.lr.ph.i.21.i ], [ 22, %.lr.ph.i.10.i ], [ 5, %.lr.ph.i.27.i ], [ 23, %.lr.ph.i.9.i ], [ 14, %.lr.ph.i.18.i ], [ 24, %.lr.ph.i.8.i ], [ 4, %.lr.ph.i.28.i ], [ 25, %.lr.ph.i.7.i ], [ 9, %.lr.ph.i.23.i ], [ 26, %.lr.ph.i.6.i ], [ 3, %.lr.ph.i.29.i ], [ 27, %.lr.ph.i.5.i ], [ 15, %.lr.ph.i.17.i ], [ 28, %.lr.ph.i.4.i ], [ 2, %.lr.ph.i.30.i ], [ 29, %.lr.ph.i.3.i ], [ 12, %.lr.ph.i.20.i ], [ 30, %.lr.ph.i.2.i ], [ 31, %.lr.ph.i.1.i ], [ 16, %.lr.ph.i.16.i ] ; 3 uses
  %i.uk = sub nuw nsw i32 32, %.0.lcssa.i.i124.ph
  %i.ul = load i32, ptr %.val70, align 4, !tbaa !264
  %.not151.i = icmp eq i32 %i.ul, 3
  br i1 %.not151.i, label %bb.bg, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239"

.thread248:                                       ; preds = %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i"
  %i.um = getelementptr inbounds nuw i8, ptr %.val70, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !303
  %i.uo = getelementptr inbounds nuw i8, ptr %.val70, i64 8
  %i.up = load i16, ptr %i.uo, align 4, !tbaa !309 ; 2 uses
  %i.uq = zext i16 %i.up to i32
  br label %.critedge177.i

bb.bg:                                            ; preds = %bb.bf
  %i.ur = getelementptr inbounds nuw i8, ptr %.val70, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !303 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.val70, i64 8
  %i.uu = load i16, ptr %i.ut, align 4, !tbaa !309 ; 2 uses
  %i.uv = zext i16 %i.uu to i32                   ; 2 uses
  br label %.lr.ph.i143

bb.bh:                                            ; preds = %.critedge175.i
  %i.uw = add nuw nsw i32 %.013495.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.uw, %.0.lcssa.i.i124.ph
  br i1 %exitcond.not.i, label %.critedge177.i, label %.lr.ph.i143, !llvm.loop !1017

.lr.ph.i143:                                      ; preds = %bb.bg, %bb.bh
  %.013495.i = phi i32 [ %i.uw, %bb.bh ], [ 1, %bb.bg ] ; 3 uses
  %i.ux = and i32 %.013495.i, 65535
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [12 x i8], ptr %.val70, i64 %i.uy ; 3 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !264
  %.not152.i = icmp eq i32 %i.va, 3
  br i1 %.not152.i, label %bb.bi, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239"

bb.bi:                                            ; preds = %.lr.ph.i143
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !303
  %.not87.i.a = icmp eq i32 %i.vc, %i.us
  br i1 %.not87.i.a, label %.critedge175.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239"

.critedge175.i:                                   ; preds = %bb.bi
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.ve = load i16, ptr %i.vd, align 4, !tbaa !309
  %i.vf = zext i16 %i.ve to i32
  %i.vg = add nuw nsw i32 %.013495.i, %i.uv
  %.not153.i = icmp eq i32 %i.vg, %i.vf
  br i1 %.not153.i, label %bb.bh, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239"

.critedge177.i:                                   ; preds = %bb.bh, %.thread248
  %i.vh = phi i32 [ %i.uq, %.thread248 ], [ %i.uv, %bb.bh ] ; 3 uses
  %i.vi = phi i16 [ %i.up, %.thread248 ], [ %i.uu, %bb.bh ]
  %i.vj = phi i32 [ %i.un, %.thread248 ], [ %i.us, %bb.bh ] ; 6 uses
  %i.vk = phi i32 [ 31, %.thread248 ], [ %i.uk, %bb.bh ] ; 4 uses
  %.0.lcssa.i.i124238246251 = phi i32 [ 1, %.thread248 ], [ %.0.lcssa.i.i124.ph, %bb.bh ] ; 3 uses
  %.val.i125 = load ptr, ptr %19, align 8         ; 2 uses
  %.val179.i = load i32, ptr %i.p, align 8, !tbaa !283 ; 2 uses
  %i.vl = call fastcc noundef i32 @_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv(ptr %.val.i125, i32 %.val179.i) ; 2 uses
  %.not155104.i = icmp eq i32 %i.vl, 0
  br i1 %.not155104.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239", label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.critedge177.i
  %.reass.i = add nuw nsw i32 %.0.lcssa.i.i124238246251, %i.vh
  %i.vm = and i32 %i.vj, 2147483647
  %i.vn = zext nneg i32 %i.vm to i64
  %.sroa.022.0.insert.ext.i = zext i32 %i.vj to i64
  br label %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i

_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i: ; preds = %_ZNK4llvm9BitVector9find_nextEj.exit.i.i, %.lr.ph107.i
  %.val181122.i = phi i32 [ %.val179.i, %.lr.ph107.i ], [ %.val181.i, %_ZNK4llvm9BitVector9find_nextEj.exit.i.i ] ; 13 uses
  %.val180120.i = phi ptr [ %.val.i125, %.lr.ph107.i ], [ %.val180.i, %_ZNK4llvm9BitVector9find_nextEj.exit.i.i ] ; 13 uses
  %.0133106.i = phi i32 [ %i.vl, %.lr.ph107.i ], [ %i.aep, %_ZNK4llvm9BitVector9find_nextEj.exit.i.i ] ; 8 uses
  %.0135105.i = phi i32 [ 0, %.lr.ph107.i ], [ %.6141.ph.i, %_ZNK4llvm9BitVector9find_nextEj.exit.i.i ] ; 14 uses
  %i.vo = load ptr, ptr %i.at, align 8, !tbaa !438, !nonnull !35, !align !178 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48
  %i.vq = and i32 %.0133106.i, 2147483647         ; 2 uses
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = load ptr, ptr %i.vp, align 8, !tbaa !38
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.vs, i64 %i.vr
  %.0.copyload.i.i.i.i.i.i.i126 = load i64, ptr %i.vt, align 8
  %i.vu = and i64 %.0.copyload.i.i.i.i.i.i.i126, -5
  %i.vv = inttoptr i64 %i.vu to ptr
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 20
  %i.vx = load i16, ptr %i.vw, align 4, !tbaa !414
  switch i16 %i.vx, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i [
    i16 15, label %bb.bj
    i16 3, label %bb.bj
  ]

bb.bj:                                            ; preds = %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i
  %i.vy = load ptr, ptr %i.b, align 8, !tbaa !436, !nonnull !35, !align !178
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !255, !nonnull !35, !align !178 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !256 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 6 uses
  %.not10.i.i.i.i.i127 = icmp eq ptr %i.wc, null
  br i1 %.not10.i.i.i.i.i127, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %bb.bj, %.lr.ph.i.i.i.i.i128
  %.012.i.i.i.i.i129 = phi ptr [ %.1.i.i.i.i.i134, %.lr.ph.i.i.i.i.i128 ], [ %i.wc, %bb.bj ] ; 3 uses
  %.0811.i.i.i.i.i130 = phi ptr [ %.19.i.i.i.i.i131, %.lr.ph.i.i.i.i.i128 ], [ %i.wd, %bb.bj ]
  %i.we = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 32
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !257
  %i.wg = icmp ult i32 %i.wf, %.0133106.i         ; 2 uses
  %.19.i.i.i.i.i131 = select i1 %i.wg, ptr %.0811.i.i.i.i.i130, ptr %.012.i.i.i.i.i129 ; 3 uses
  %.1.in.v.i.i.i.i.i132 = select i1 %i.wg, i64 24, i64 16
  %.1.in.i.i.i.i.i133 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 %.1.in.v.i.i.i.i.i132
  %.1.i.i.i.i.i134 = load ptr, ptr %.1.in.i.i.i.i.i133, align 8, !tbaa !258 ; 2 uses
  %.not.i.i.i.i.i135 = icmp eq ptr %.1.i.i.i.i.i134, null
  br i1 %.not.i.i.i.i.i135, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136, label %.lr.ph.i.i.i.i.i128, !llvm.loop !1

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136: ; preds = %.lr.ph.i.i.i.i.i128
  %i.wh = icmp eq ptr %.19.i.i.i.i.i131, %i.wd
  br i1 %i.wh, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i, label %_ZNK4llvm10BitTracker3hasEj.exit.i137

_ZNK4llvm10BitTracker3hasEj.exit.i137:            ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136
  %i.wi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i131, i64 32
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !257
  %.not82.i = icmp ult i32 %.0133106.i, %i.wj
  br i1 %.not82.i, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i, label %.lr.ph.i.i.i.i195.i

.lr.ph.i.i.i.i195.i:                              ; preds = %_ZNK4llvm10BitTracker3hasEj.exit.i137, %.lr.ph.i.i.i.i195.i
  %.012.i.i.i.i196.i = phi ptr [ %.1.i.i.i.i201.i, %.lr.ph.i.i.i.i195.i ], [ %i.wc, %_ZNK4llvm10BitTracker3hasEj.exit.i137 ] ; 3 uses
  %.0811.i.i.i.i197.i = phi ptr [ %.19.i.i.i.i198.i, %.lr.ph.i.i.i.i195.i ], [ %i.wd, %_ZNK4llvm10BitTracker3hasEj.exit.i137 ]
  %i.wk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196.i, i64 32
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !257
  %i.wm = icmp ult i32 %i.wl, %.0133106.i         ; 2 uses
  %.19.i.i.i.i198.i = select i1 %i.wm, ptr %.0811.i.i.i.i197.i, ptr %.012.i.i.i.i196.i ; 4 uses
  %.1.in.v.i.i.i.i199.i = select i1 %i.wm, i64 24, i64 16
  %.1.in.i.i.i.i200.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i196.i, i64 %.1.in.v.i.i.i.i199.i
  %.1.i.i.i.i201.i = load ptr, ptr %.1.in.i.i.i.i200.i, align 8, !tbaa !258 ; 2 uses
  %.not.i.i.i.i202.i = icmp eq ptr %.1.i.i.i.i201.i, null
  br i1 %.not.i.i.i.i202.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i203.i, label %.lr.ph.i.i.i.i195.i, !llvm.loop !1

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i203.i: ; preds = %.lr.ph.i.i.i.i195.i
  %i.wn = icmp eq ptr %.19.i.i.i.i198.i, %i.wd
  br i1 %i.wn, label %_ZNK4llvm10BitTracker6lookupEj.exit.i139, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i203.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i198.i, i64 32
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !257
  %i.wq = icmp ult i32 %.0133106.i, %i.wp
  %spec.select.i.i.i.i138 = select i1 %i.wq, ptr %i.wd, ptr %.19.i.i.i.i198.i
  br label %_ZNK4llvm10BitTracker6lookupEj.exit.i139

_ZNK4llvm10BitTracker6lookupEj.exit.i139:         ; preds = %bb.bk, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i203.i
  %.sroa.0.0.i.i.i204.i = phi ptr [ %spec.select.i.i.i.i138, %bb.bk ], [ %i.wd, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i203.i ] ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i204.i, i64 48
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !185
  %i.wt = and i32 %i.ws, 65535
  %.not156.i = icmp eq i32 %i.wt, 32
  br i1 %.not156.i, label %.lr.ph.i206.i, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

.lr.ph.i206.i:                                    ; preds = %_ZNK4llvm10BitTracker6lookupEj.exit.i139
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i204.i, i64 40
  %.val190.i = load ptr, ptr %i.wu, align 8       ; 36 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.val190.i, i64 372
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !264
  %i.wx = icmp eq i32 %i.ww, 1
  br i1 %i.wx, label %.lr.ph.i206.1.i, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

.lr.ph.i206.1.i:                                  ; preds = %.lr.ph.i206.i
  %i.wy = getelementptr inbounds nuw i8, ptr %.val190.i, i64 360
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !264
  %i.xa = icmp eq i32 %i.wz, 1
  br i1 %i.xa, label %.lr.ph.i206.2.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.2.i:                                  ; preds = %.lr.ph.i206.1.i
  %i.xb = getelementptr inbounds nuw i8, ptr %.val190.i, i64 348
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !264
  %i.xd = icmp eq i32 %i.xc, 1
  br i1 %i.xd, label %.lr.ph.i206.3.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.3.i:                                  ; preds = %.lr.ph.i206.2.i
  %i.xe = getelementptr inbounds nuw i8, ptr %.val190.i, i64 336
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !264
  %i.xg = icmp eq i32 %i.xf, 1
  br i1 %i.xg, label %.lr.ph.i206.4.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.4.i:                                  ; preds = %.lr.ph.i206.3.i
  %i.xh = getelementptr inbounds nuw i8, ptr %.val190.i, i64 324
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !264
  %i.xj = icmp eq i32 %i.xi, 1
  br i1 %i.xj, label %.lr.ph.i206.5.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.5.i:                                  ; preds = %.lr.ph.i206.4.i
  %i.xk = getelementptr inbounds nuw i8, ptr %.val190.i, i64 312
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !264
  %i.xm = icmp eq i32 %i.xl, 1
  br i1 %i.xm, label %.lr.ph.i206.6.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.6.i:                                  ; preds = %.lr.ph.i206.5.i
  %i.xn = getelementptr inbounds nuw i8, ptr %.val190.i, i64 300
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !264
  %i.xp = icmp eq i32 %i.xo, 1
  br i1 %i.xp, label %.lr.ph.i206.7.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.7.i:                                  ; preds = %.lr.ph.i206.6.i
  %i.xq = getelementptr inbounds nuw i8, ptr %.val190.i, i64 288
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !264
  %i.xs = icmp eq i32 %i.xr, 1
  br i1 %i.xs, label %.lr.ph.i206.8.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.8.i:                                  ; preds = %.lr.ph.i206.7.i
  %i.xt = getelementptr inbounds nuw i8, ptr %.val190.i, i64 276
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !264
  %i.xv = icmp eq i32 %i.xu, 1
  br i1 %i.xv, label %.lr.ph.i206.9.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.9.i:                                  ; preds = %.lr.ph.i206.8.i
  %i.xw = getelementptr inbounds nuw i8, ptr %.val190.i, i64 264
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !264
  %i.xy = icmp eq i32 %i.xx, 1
  br i1 %i.xy, label %.lr.ph.i206.10.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.10.i:                                 ; preds = %.lr.ph.i206.9.i
  %i.xz = getelementptr inbounds nuw i8, ptr %.val190.i, i64 252
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !264
  %i.yb = icmp eq i32 %i.ya, 1
  br i1 %i.yb, label %.lr.ph.i206.11.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.11.i:                                 ; preds = %.lr.ph.i206.10.i
  %i.yc = getelementptr inbounds nuw i8, ptr %.val190.i, i64 240
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !264
  %i.ye = icmp eq i32 %i.yd, 1
  br i1 %i.ye, label %.lr.ph.i206.12.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.12.i:                                 ; preds = %.lr.ph.i206.11.i
  %i.yf = getelementptr inbounds nuw i8, ptr %.val190.i, i64 228
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !264
  %i.yh = icmp eq i32 %i.yg, 1
  br i1 %i.yh, label %.lr.ph.i206.13.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.13.i:                                 ; preds = %.lr.ph.i206.12.i
  %i.yi = getelementptr inbounds nuw i8, ptr %.val190.i, i64 216
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !264
  %i.yk = icmp eq i32 %i.yj, 1
  br i1 %i.yk, label %.lr.ph.i206.14.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.14.i:                                 ; preds = %.lr.ph.i206.13.i
  %i.yl = getelementptr inbounds nuw i8, ptr %.val190.i, i64 204
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !264
  %i.yn = icmp eq i32 %i.ym, 1
  br i1 %i.yn, label %.lr.ph.i206.15.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.15.i:                                 ; preds = %.lr.ph.i206.14.i
  %i.yo = getelementptr inbounds nuw i8, ptr %.val190.i, i64 192
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !264
  %i.yq = icmp eq i32 %i.yp, 1
  br i1 %i.yq, label %.lr.ph.i206.16.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.16.i:                                 ; preds = %.lr.ph.i206.15.i
  %i.yr = getelementptr inbounds nuw i8, ptr %.val190.i, i64 180
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !264
  %i.yt = icmp eq i32 %i.ys, 1
  br i1 %i.yt, label %.lr.ph.i206.17.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.17.i:                                 ; preds = %.lr.ph.i206.16.i
  %i.yu = getelementptr inbounds nuw i8, ptr %.val190.i, i64 168
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !264
  %i.yw = icmp eq i32 %i.yv, 1
  br i1 %i.yw, label %.lr.ph.i206.18.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.18.i:                                 ; preds = %.lr.ph.i206.17.i
  %i.yx = getelementptr inbounds nuw i8, ptr %.val190.i, i64 156
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !264
  %i.yz = icmp eq i32 %i.yy, 1
  br i1 %i.yz, label %.lr.ph.i206.19.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.19.i:                                 ; preds = %.lr.ph.i206.18.i
  %i.za = getelementptr inbounds nuw i8, ptr %.val190.i, i64 144
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !264
  %i.zc = icmp eq i32 %i.zb, 1
  br i1 %i.zc, label %.lr.ph.i206.20.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.20.i:                                 ; preds = %.lr.ph.i206.19.i
  %i.zd = getelementptr inbounds nuw i8, ptr %.val190.i, i64 132
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !264
  %i.zf = icmp eq i32 %i.ze, 1
  br i1 %i.zf, label %.lr.ph.i206.21.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.21.i:                                 ; preds = %.lr.ph.i206.20.i
  %i.zg = getelementptr inbounds nuw i8, ptr %.val190.i, i64 120
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !264
  %i.zi = icmp eq i32 %i.zh, 1
  br i1 %i.zi, label %.lr.ph.i206.22.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.22.i:                                 ; preds = %.lr.ph.i206.21.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.val190.i, i64 108
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !264
  %i.zl = icmp eq i32 %i.zk, 1
  br i1 %i.zl, label %.lr.ph.i206.23.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.23.i:                                 ; preds = %.lr.ph.i206.22.i
  %i.zm = getelementptr inbounds nuw i8, ptr %.val190.i, i64 96
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !264
  %i.zo = icmp eq i32 %i.zn, 1
  br i1 %i.zo, label %.lr.ph.i206.24.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.24.i:                                 ; preds = %.lr.ph.i206.23.i
  %i.zp = getelementptr inbounds nuw i8, ptr %.val190.i, i64 84
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !264
  %i.zr = icmp eq i32 %i.zq, 1
  br i1 %i.zr, label %.lr.ph.i206.25.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.25.i:                                 ; preds = %.lr.ph.i206.24.i
  %i.zs = getelementptr inbounds nuw i8, ptr %.val190.i, i64 72
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !264
  %i.zu = icmp eq i32 %i.zt, 1
  br i1 %i.zu, label %.lr.ph.i206.26.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.26.i:                                 ; preds = %.lr.ph.i206.25.i
  %i.zv = getelementptr inbounds nuw i8, ptr %.val190.i, i64 60
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !264
  %i.zx = icmp eq i32 %i.zw, 1
  br i1 %i.zx, label %.lr.ph.i206.27.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.27.i:                                 ; preds = %.lr.ph.i206.26.i
  %i.zy = getelementptr inbounds nuw i8, ptr %.val190.i, i64 48
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !264
  %i.aaa = icmp eq i32 %i.zz, 1
  br i1 %i.aaa, label %.lr.ph.i206.28.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.28.i:                                 ; preds = %.lr.ph.i206.27.i
  %i.aab = getelementptr inbounds nuw i8, ptr %.val190.i, i64 36
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !264
  %i.aad = icmp eq i32 %i.aac, 1
  br i1 %i.aad, label %.lr.ph.i206.29.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.29.i:                                 ; preds = %.lr.ph.i206.28.i
  %i.aae = getelementptr inbounds nuw i8, ptr %.val190.i, i64 24
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !264
  %i.aag = icmp eq i32 %i.aaf, 1
  br i1 %i.aag, label %.lr.ph.i206.30.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.30.i:                                 ; preds = %.lr.ph.i206.29.i
  %i.aah = getelementptr inbounds nuw i8, ptr %.val190.i, i64 12
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !264
  %i.aaj = icmp eq i32 %i.aai, 1
  br i1 %i.aaj, label %.lr.ph.i206.31.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

.lr.ph.i206.31.i:                                 ; preds = %.lr.ph.i206.30.i
  %i.aak = load i32, ptr %.val190.i, align 4, !tbaa !264
  %i.aal = icmp eq i32 %i.aak, 1
  %spec.select152.i = select i1 %i.aal, i32 32, i32 31
  br label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"

"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i": ; preds = %.lr.ph.i206.31.i, %.lr.ph.i206.30.i, %.lr.ph.i206.29.i, %.lr.ph.i206.28.i, %.lr.ph.i206.27.i, %.lr.ph.i206.26.i, %.lr.ph.i206.25.i, %.lr.ph.i206.24.i, %.lr.ph.i206.23.i, %.lr.ph.i206.22.i, %.lr.ph.i206.21.i, %.lr.ph.i206.20.i, %.lr.ph.i206.19.i, %.lr.ph.i206.18.i, %.lr.ph.i206.17.i, %.lr.ph.i206.16.i, %.lr.ph.i206.15.i, %.lr.ph.i206.14.i, %.lr.ph.i206.13.i, %.lr.ph.i206.12.i, %.lr.ph.i206.11.i, %.lr.ph.i206.10.i, %.lr.ph.i206.9.i, %.lr.ph.i206.8.i, %.lr.ph.i206.7.i, %.lr.ph.i206.6.i, %.lr.ph.i206.5.i, %.lr.ph.i206.4.i, %.lr.ph.i206.3.i, %.lr.ph.i206.2.i, %.lr.ph.i206.1.i
  %.0.lcssa.i208.neg.i = phi i32 [ 24, %.lr.ph.i206.24.i ], [ 16, %.lr.ph.i206.16.i ], [ 1, %.lr.ph.i206.1.i ], [ %spec.select152.i, %.lr.ph.i206.31.i ], [ 2, %.lr.ph.i206.2.i ], [ 20, %.lr.ph.i206.20.i ], [ 3, %.lr.ph.i206.3.i ], [ 30, %.lr.ph.i206.30.i ], [ 4, %.lr.ph.i206.4.i ], [ 17, %.lr.ph.i206.17.i ], [ 5, %.lr.ph.i206.5.i ], [ 29, %.lr.ph.i206.29.i ], [ 6, %.lr.ph.i206.6.i ], [ 23, %.lr.ph.i206.23.i ], [ 7, %.lr.ph.i206.7.i ], [ 28, %.lr.ph.i206.28.i ], [ 8, %.lr.ph.i206.8.i ], [ 18, %.lr.ph.i206.18.i ], [ 9, %.lr.ph.i206.9.i ], [ 27, %.lr.ph.i206.27.i ], [ 10, %.lr.ph.i206.10.i ], [ 21, %.lr.ph.i206.21.i ], [ 11, %.lr.ph.i206.11.i ], [ 26, %.lr.ph.i206.26.i ], [ 12, %.lr.ph.i206.12.i ], [ 19, %.lr.ph.i206.19.i ], [ 13, %.lr.ph.i206.13.i ], [ 25, %.lr.ph.i206.25.i ], [ 14, %.lr.ph.i206.14.i ], [ 22, %.lr.ph.i206.22.i ], [ 15, %.lr.ph.i206.15.i ]
  %.not157.i = icmp eq i32 %.0.lcssa.i208.neg.i, %.0.lcssa.i.i124238246251
  br i1 %.not157.i, label %bb.bl, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

bb.bl:                                            ; preds = %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i"
  %i.aam = load i32, ptr %.val190.i, align 4, !tbaa !264
  %.not158.i = icmp eq i32 %i.aam, 3
  br i1 %.not158.i, label %bb.bm, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

bb.bm:                                            ; preds = %bb.bl
  %i.aan = getelementptr inbounds nuw i8, ptr %.val190.i, i64 4
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !303
  %.not83.i = icmp eq i32 %i.aao, %i.vj
  br i1 %.not83.i, label %bb.bn, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.aap = getelementptr inbounds nuw i8, ptr %.val190.i, i64 8
  %i.aaq = load i16, ptr %i.aap, align 4, !tbaa !309 ; 2 uses
  %i.aar = zext i16 %i.aaq to i32                 ; 4 uses
  %.not159.i = icmp ugt i16 %i.vi, %i.aaq         ; 5 uses
  %.not160.i = icmp eq i32 %.reass.i, %i.aar
  %or.cond112.i = select i1 %.not159.i, i1 true, i1 %.not160.i
  br i1 %or.cond112.i, label %bb.bo, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.aas = add nuw nsw i32 %i.vk, %i.aar
  %.not161.i = icmp ne i32 %i.aas, %i.vh
  %or.cond.not.i = and i1 %.not159.i, %.not161.i
  br i1 %or.cond.not.i, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.sroa.speculated38.i = call i32 @llvm.umin.i32(i32 %i.vh, i32 %i.aar) ; 2 uses
  %trunc.i = trunc nuw i32 %.sroa.speculated38.i to i16
  switch i16 %trunc.i, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i [
    i16 0, label %bb.bq
    i16 32, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp
  br i1 %i.qz, label %.lr.ph97.i, label %.thread.i

.lr.ph97.i:                                       ; preds = %bb.bq, %bb.bt
  %.013296.i = phi i32 [ %i.abd, %bb.bt ], [ 1, %bb.bq ] ; 6 uses
  %i.aat = and i32 %.013296.i, 65535
  %i.aau = zext nneg i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [12 x i8], ptr %.val190.i, i64 %i.aau ; 3 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !264
  %.not164.i = icmp eq i32 %i.aaw, 3
  br i1 %.not164.i, label %bb.br, label %.thread.i

bb.br:                                            ; preds = %.lr.ph97.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !303
  %.not84.i = icmp eq i32 %i.aay, %i.vj
  br i1 %.not84.i, label %bb.bs, label %.thread.i

bb.bs:                                            ; preds = %bb.br
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aba = load i16, ptr %i.aaz, align 4, !tbaa !309
  %i.abb = zext i16 %i.aba to i32
  %i.abc = add nuw nsw i32 %.013296.i, %i.aar
  %.not165.i = icmp eq i32 %i.abc, %i.abb
  br i1 %.not165.i, label %bb.bt, label %.thread.i

bb.bt:                                            ; preds = %bb.bs
  %i.abd = add nuw nsw i32 %.013296.i, 1          ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.abd, %i.vk
  br i1 %exitcond119.not.i, label %.thread.thread.i, label %.lr.ph97.i, !llvm.loop !1018

.thread.i:                                        ; preds = %bb.bs, %bb.br, %.lr.ph97.i, %bb.bq
  %.0132.lcssa.i = phi i32 [ 1, %bb.bq ], [ %.013296.i, %.lr.ph97.i ], [ %.013296.i, %bb.br ], [ %.013296.i, %bb.bs ]
  %.not166.i = icmp eq i32 %.0132.lcssa.i, %i.vk
  br i1 %.not166.i, label %.thread.thread.i, label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

.thread.thread.i:                                 ; preds = %bb.bt, %.thread.i
  %i.abe = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 8), align 8, !tbaa !448
  %.not167.i = icmp eq i16 %i.abe, 0
  br i1 %.not167.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.thread.thread.i
  %i.abf = load i32, ptr @_ZL13CountBitSplit, align 4, !tbaa !257
  %i.abg = add i32 %i.abf, 1
  store i32 %i.abg, ptr @_ZL13CountBitSplit, align 4, !tbaa !257
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread.thread.i
  %i.abh = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.vo, i32 %.0133106.i) #20 ; 4 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 72
  %.sroa.029.0.copyload.i = load ptr, ptr %i.abi, align 8, !tbaa !310
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 24
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !270 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abh, i64 52
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !209
  switch i32 %i.abm, label %bb.bx [
    i32 74, label %bb.bw
    i32 0, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %i.abn = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.abk) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.025.0.i = phi ptr [ %i.abn, %bb.bw ], [ %i.abh, %bb.bv ] ; 2 uses
  %i.abo = load ptr, ptr %i.at, align 8, !tbaa !438, !nonnull !35, !align !178
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 48
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !38
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %i.abq, i64 %i.vn
  %.0.copyload.i.i.i.i.i.i212.i = load i64, ptr %i.abr, align 8
  %i.abs = and i64 %.0.copyload.i.i.i.i.i.i212.i, -5
  %i.abt = inttoptr i64 %i.abs to ptr
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 20
  %i.abv = load i16, ptr %i.abu, align 4, !tbaa !414
  %i.abw = icmp eq i16 %i.abv, 15
  %i.abx = icmp eq i32 %.sroa.speculated38.i, 32
  %i.aby = select i1 %i.abx, i32 1, i32 2
  %.1136.i = select i1 %i.abw, i32 %i.aby, i32 %.0135105.i ; 4 uses
  %.sroa.223.0.insert.ext.i = zext nneg i32 %.1136.i to i64
  %.sroa.223.0.insert.shift.i = shl nuw nsw i64 %.sroa.223.0.insert.ext.i, 32
  %.sroa.022.0.insert.insert.i = or disjoint i64 %.sroa.223.0.insert.shift.i, %.sroa.022.0.insert.ext.i
  %i.abz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117BitSimplification11validateRegEN4llvm10BitTracker11RegisterRefEjj(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.022.0.insert.insert.i, i32 noundef 1124, i32 noundef 1)
  br i1 %i.abz, label %bb.by, label %._ZNK4llvm10BitTracker3hasEj.exit.thread_crit_edge.i

._ZNK4llvm10BitTracker3hasEj.exit.thread_crit_edge.i: ; preds = %bb.bx
  %.val180.pre.i = load ptr, ptr %19, align 8
  %.val181.pre.i = load i32, ptr %i.p, align 8, !tbaa !283
  br label %_ZNK4llvm10BitTracker3hasEj.exit.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.aca = select i1 %.not159.i, i32 %i.vk, i32 %.0.lcssa.i.i124238246251
  %i.acb = load ptr, ptr %i.bf, align 8, !tbaa !308 ; 2 uses
  %i.acc = load ptr, ptr %i.bg, align 8, !tbaa !308 ; 2 uses
  %.not85109.i = icmp eq ptr %i.acb, %i.acc
  %.pre293 = zext nneg i32 %i.aca to i64          ; 2 uses
  br i1 %.not85109.i, label %.loopexit.thread.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %bb.by, %.critedge.thread66.i
  %.sroa.018.0110.i = phi ptr [ %i.acw, %.critedge.thread66.i ], [ %i.acb, %bb.by ] ; 2 uses
  %i.acd = load ptr, ptr %.sroa.018.0110.i, align 8, !tbaa !298 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 52
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !209
  %.not169.i = icmp eq i32 %i.acf, 1124
  br i1 %.not169.i, label %bb.bz, label %.critedge.thread66.i

bb.bz:                                            ; preds = %.lr.ph111.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 32
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !271 ; 5 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 36
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !266
  %.not86.i.a = icmp eq i32 %i.acj, %i.vj
  br i1 %.not86.i.a, label %bb.ca, label %.critedge.thread66.i

bb.ca:                                            ; preds = %bb.bz
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  %i.acl = load i32, ptr %i.ack, align 8
  %i.acm = lshr i32 %i.acl, 8
  %i.acn = and i32 %i.acm, 4095
  %.not170.i = icmp eq i32 %i.acn, %.1136.i
  br i1 %.not170.i, label %bb.cb, label %.critedge.thread66.i

bb.cb:                                            ; preds = %bb.ca
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ach, i64 80
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !266
  %.not171.i = icmp eq i64 %i.acp, %.pre293
  br i1 %.not171.i, label %bb.cc, label %.critedge.thread66.i

bb.cc:                                            ; preds = %bb.cb
  %i.acq = load ptr, ptr %i.at, align 8, !tbaa !438, !nonnull !35, !align !178
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !266
  %i.act = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.acq, i32 %i.acs) #20
  %i.acu = load ptr, ptr %i.bh, align 8, !tbaa !1034, !nonnull !35, !align !178
  %i.acv = call noundef zeroext i1 @_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(204) %i.acu, ptr noundef %i.act, ptr noundef nonnull %.sroa.025.0.i)
  br i1 %i.acv, label %.loopexit.i142, label %.critedge.thread66.i

.critedge.thread66.i:                             ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %.lr.ph111.i
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.018.0110.i, i64 8 ; 2 uses
  %.not85.i = icmp eq ptr %i.acw, %i.acc
  br i1 %.not85.i, label %.loopexit.thread.i, label %.lr.ph111.i

.loopexit.i142:                                   ; preds = %bb.cc
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !266 ; 2 uses
  %.not172.i = icmp eq i32 %i.acy, 0
  br i1 %.not172.i, label %.loopexit.thread.i, label %_ZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetE.exit

.loopexit.thread.i:                               ; preds = %.critedge.thread66.i, %bb.by, %.loopexit.i142
  %i.acz = load ptr, ptr %i.at, align 8, !tbaa !438, !nonnull !35, !align !178
  %i.ada = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.acz, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 960), ptr nonnull @.str.19, i64 0) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %.sroa.029.0.copyload.i, ptr %9, align 8, !tbaa !310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.adb = load ptr, ptr %i.av, align 8, !tbaa !437, !nonnull !35, !align !178
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !313
  %i.ade = getelementptr inbounds i8, ptr %i.add, i64 -35968
  %i.adf = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.abk, ptr %.sroa.025.0.i, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ade, i32 %i.ada) ; 2 uses
  %i.adg = extractvalue { ptr, ptr } %i.adf, 0    ; 2 uses
  %i.adh = extractvalue { ptr, ptr } %i.adf, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %i.bj, align 8, !tbaa !269, !alias.scope !1035
  store i32 %i.vj, ptr %i.bk, align 4, !tbaa !266, !alias.scope !1035
  %i.adi = shl nuw nsw i32 %.1136.i, 8
  %i.adj = and i32 %i.adi, 1048320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !alias.scope !1035
  store i32 %i.adj, ptr %8, align 8, !alias.scope !1035
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adh, ptr noundef nonnull align 8 dereferenceable(1065) %i.adg, ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 1, ptr %7, align 8, !alias.scope !1036
  store ptr null, ptr %i.bm, align 8, !tbaa !269, !alias.scope !1036
  store i64 %.pre293, ptr %i.bn, align 8, !tbaa !266, !alias.scope !1036
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.adh, ptr noundef nonnull align 8 dereferenceable(1065) %i.adg, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %i.adh, ptr %i.a, align 8, !tbaa !298
  call void @_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetE.exit

_ZNK4llvm10BitTracker3hasEj.exit.thread.i:        ; preds = %.lr.ph.i206.i, %._ZNK4llvm10BitTracker3hasEj.exit.thread_crit_edge.i, %.thread.i, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i", %_ZNK4llvm10BitTracker6lookupEj.exit.i139, %_ZNK4llvm10BitTracker3hasEj.exit.i137, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136, %bb.bj, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i
  %.val181.i = phi i32 [ %.val181.pre.i, %._ZNK4llvm10BitTracker3hasEj.exit.thread_crit_edge.i ], [ %.val181122.i, %.thread.i ], [ %.val181122.i, %bb.bo ], [ %.val181122.i, %bb.bn ], [ %.val181122.i, %bb.bp ], [ %.val181122.i, %bb.bl ], [ %.val181122.i, %bb.bm ], [ %.val181122.i, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i ], [ %.val181122.i, %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i" ], [ %.val181122.i, %_ZNK4llvm10BitTracker6lookupEj.exit.i139 ], [ %.val181122.i, %_ZNK4llvm10BitTracker3hasEj.exit.i137 ], [ %.val181122.i, %bb.bj ], [ %.val181122.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136 ], [ %.val181122.i, %.lr.ph.i206.i ] ; 3 uses
  %.val180.i = phi ptr [ %.val180.pre.i, %._ZNK4llvm10BitTracker3hasEj.exit.thread_crit_edge.i ], [ %.val180120.i, %.thread.i ], [ %.val180120.i, %bb.bo ], [ %.val180120.i, %bb.bn ], [ %.val180120.i, %bb.bp ], [ %.val180120.i, %bb.bl ], [ %.val180120.i, %bb.bm ], [ %.val180120.i, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i ], [ %.val180120.i, %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i" ], [ %.val180120.i, %_ZNK4llvm10BitTracker6lookupEj.exit.i139 ], [ %.val180120.i, %_ZNK4llvm10BitTracker3hasEj.exit.i137 ], [ %.val180120.i, %bb.bj ], [ %.val180120.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136 ], [ %.val180120.i, %.lr.ph.i206.i ] ; 3 uses
  %.6141.ph.i = phi i32 [ %.1136.i, %._ZNK4llvm10BitTracker3hasEj.exit.thread_crit_edge.i ], [ %.0135105.i, %.thread.i ], [ %.0135105.i, %bb.bo ], [ %.0135105.i, %bb.bn ], [ %.0135105.i, %bb.bp ], [ %.0135105.i, %bb.bl ], [ %.0135105.i, %bb.bm ], [ %.0135105.i, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i ], [ %.0135105.i, %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit210.i" ], [ %.0135105.i, %_ZNK4llvm10BitTracker6lookupEj.exit.i139 ], [ %.0135105.i, %_ZNK4llvm10BitTracker3hasEj.exit.i137 ], [ %.0135105.i, %bb.bj ], [ %.0135105.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i136 ], [ %.0135105.i, %.lr.ph.i206.i ]
  %i.adk = add nuw i32 %i.vq, 1                   ; 3 uses
  %i.adl = icmp eq i32 %i.adk, %.val181.i
  br i1 %i.adl, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239", label %bb.cd

bb.cd:                                            ; preds = %_ZNK4llvm10BitTracker3hasEj.exit.thread.i
  %i.adm = lshr i32 %i.adk, 6                     ; 4 uses
  %i.adn = add i32 %.val181.i, -1                 ; 2 uses
  %i.ado = lshr i32 %i.adn, 6                     ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.adm, %i.ado
  br i1 %.not42.i.i.i.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239", label %.lr.ph.i.i.i.i140

.lr.ph.i.i.i.i140:                                ; preds = %bb.cd
  %i.adp = and i32 %i.adk, 63                     ; 2 uses
  %i.adq = sub nuw nsw i32 64, %i.adp
  %.not.i.i.i141 = icmp eq i32 %i.adp, 0
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = lshr i64 -1, %i.adr
  %i.adt = xor i64 %i.ads, -1
  %i.adu = and i32 %i.adn, 63
  %i.adv = xor i32 %i.adu, 63
  %i.adw = zext nneg i32 %i.adv to i64
  %i.adx = lshr i64 -1, %i.adw                    ; 2 uses
  %i.ady = zext nneg i32 %i.adm to i64            ; 2 uses
  %i.adz = zext nneg i32 %i.ado to i64
  %i.aea = add nuw nsw i32 %i.ado, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.aea to i64 ; 2 uses
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %.val180.i, i64 %i.ady
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !45
  %i.aed = select i1 %.not.i.i.i141, i64 -1, i64 %i.adt
  %i.aee = icmp eq i32 %i.adm, %i.ado
  %i.aef = select i1 %i.aee, i64 %i.adx, i64 -1
  %spec.select44.peel.i.i.i.i = and i64 %i.aef, %i.aed
  %.230.peel.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i, %i.aec ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.ce, label %_ZNK4llvm9BitVector9find_nextEj.exit.i.i

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i140
  %indvars.iv.next.peel.i.i.i.i = add nuw nsw i64 %i.ady, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239", label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.ce, %bb.cf
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.cf ], [ %indvars.iv.next.peel.i.i.i.i, %bb.ce ] ; 4 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.val180.i, i64 %indvars.iv.i.i.i.i
  %i.aeh = load i64, ptr %i.aeg, align 8, !tbaa !45
  %i.aei = icmp eq i64 %indvars.iv.i.i.i.i, %i.adz
  %i.aej = select i1 %i.aei, i64 %i.adx, i64 -1
  %.230.i.i.i.i = and i64 %i.aej, %i.aeh          ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.cf, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZNK4llvm9BitVector9find_nextEj.exit.i.i

bb.cf:                                            ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239", label %.peel.next.i.i.i.i, !llvm.loop !5

_ZNK4llvm9BitVector9find_nextEj.exit.i.i:         ; preds = %.loopexit48.i.i.i.i, %.lr.ph.i.i.i.i140
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit48.i.i.i.i ], [ %i.adm, %.lr.ph.i.i.i.i140 ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %.lr.ph.i.i.i.i140 ]
  %i.aek = shl nuw i32 %.pre-phi.i.i.i.i, 6       ; 2 uses
  %i.ael = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.aem = trunc nuw nsw i64 %i.ael to i32
  %i.aen = icmp slt i32 %i.aek, 0
  %i.aeo = or disjoint i32 %i.aek, %i.aem
  %i.aep = or disjoint i32 %i.aeo, -2147483648
  br i1 %i.aen, label %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239", label %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit.i, !llvm.loop !1023

_ZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetE.exit: ; preds = %.loopexit.i142, %.loopexit.thread.i
  %.5131.i = phi i32 [ %i.acy, %.loopexit.i142 ], [ %i.ada, %.loopexit.thread.i ] ; 2 uses
  %i.aeq = load ptr, ptr %i.at, align 8, !tbaa !438, !nonnull !35, !align !178
  %i.aer = getelementptr i8, ptr %i.aeq, i64 48
  %.val184.i = load ptr, ptr %i.aer, align 8
  %.0133106.lcssa..sroa.0111.0.extract.trunc.i = select i1 %.not159.i, i32 %.0133106.i, i32 %i.jr
  %.sroa.0111.0.extract.trunc..0133106.lcssa.i = select i1 %.not159.i, i32 %i.jr, i32 %.0133106.i
  %i.aes = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceRegWithSubEN4llvm8RegisterES2_jRNS1_19MachineRegisterInfoE(i32 %.0133106.lcssa..sroa.0111.0.extract.trunc.i, i32 %.5131.i, i32 noundef 2, ptr %.val184.i) ; 0 uses
  %i.aet = load ptr, ptr %i.at, align 8, !tbaa !438, !nonnull !35, !align !178
  %i.aeu = getelementptr i8, ptr %i.aet, i64 48
  %.val186.i = load ptr, ptr %i.aeu, align 8
  %i.aev = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceRegWithSubEN4llvm8RegisterES2_jRNS1_19MachineRegisterInfoE(i32 %.sroa.0111.0.extract.trunc..0133106.lcssa.i, i32 %.5131.i, i32 noundef 1, ptr %.val186.i) ; 0 uses
  br label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit.thread

"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239": ; preds = %.critedge175.i, %bb.bi, %.lr.ph.i143, %_ZNK4llvm9BitVector9find_nextEj.exit.i.i, %bb.ce, %_ZNK4llvm10BitTracker3hasEj.exit.thread.i, %bb.cd, %bb.cf, %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i", %.lr.ph.i.preheader.i, %bb.bb, %bb.bd, %bb.be, %bb.bf, %.critedge177.i
  %i.aew = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117BitSimplification18simplifyExtractLowEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %.sroa.0224.0274, i64 %.sroa.0.0.insert.insert184, ptr noundef nonnull align 8 dereferenceable(400) %i.lm, ptr noundef nonnull align 8 dereferenceable(152) %19)
  br i1 %i.aew, label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit.thread, label %.critedge

.critedge:                                        ; preds = %"_ZZN12_GLOBAL__N_117BitSimplification11genBitSplitEPN4llvm12MachineInstrENS1_10BitTracker11RegisterRefERKNS4_12RegisterCellERKNS_11RegisterSetEENK3$_0clES8_.exit.i.thread239"
end_hunk_0
begin_hunk_1_@_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #6

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !462, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !462, !range !34, !noundef !35
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @__once_proxy() #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1119, !nonnull !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1120, !nonnull !35, !align !178
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1123
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #20, !inline_history !1117
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_HexagonBitSimplify.cpp() #17 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15PreserveTiedOps, i32 noundef 0, i32 noundef 0) #20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 120), align 8, !tbaa !434
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 128), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL15PreserveTiedOps, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 144), align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15PreserveTiedOps, ptr nonnull align 1 dereferenceable(17) @.str, i64 16) #20
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 120), align 8, !tbaa !434
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 137), align 1, !tbaa !461
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 136), align 8, !tbaa !1124
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 32), align 8, !tbaa !43
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 40), align 8, !tbaa !45
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15PreserveTiedOps) #20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL15PreserveTiedOps, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL10GenExtract, i32 noundef 0, i32 noundef 0) #20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 120), align 8, !tbaa !434
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 128), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL10GenExtract, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 144), align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10GenExtract, ptr nonnull align 1 dereferenceable(15) @.str.3, i64 14) #20
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 120), align 8, !tbaa !434
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 137), align 1, !tbaa !461
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 136), align 8, !tbaa !1124
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 32), align 8, !tbaa !43
  store i64 29, ptr getelementptr inbounds nuw (i8, ptr @_ZL10GenExtract, i64 40), align 8, !tbaa !45
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10GenExtract) #20
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL10GenExtract, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL11GenBitSplit, i32 noundef 0, i32 noundef 0) #20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 120), align 8, !tbaa !434
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 128), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL11GenBitSplit, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 144), align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11GenBitSplit, ptr nonnull align 1 dereferenceable(16) @.str.6, i64 15) #20
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 10), align 2
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 10), align 2
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 120), align 8, !tbaa !434
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 137), align 1, !tbaa !461
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 136), align 8, !tbaa !1124
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 32), align 8, !tbaa !43
  store i64 30, ptr getelementptr inbounds nuw (i8, ptr @_ZL11GenBitSplit, i64 40), align 8, !tbaa !45
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11GenBitSplit) #20
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL11GenBitSplit, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL10MaxExtract, i32 noundef 0, i32 noundef 0) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 120), align 8, !tbaa !377
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 128), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL10MaxExtract, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 144), align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10MaxExtract, ptr nonnull align 1 dereferenceable(19) @.str.9, i64 18) #20
  %i.m = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 10), align 2
  %i.n = and i16 %i.m, -97
  %i.o = or disjoint i16 %i.n, 32
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 10), align 2
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 120), align 8, !tbaa !377
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 140), align 4, !tbaa !462
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL10MaxExtract, i64 136), align 8, !tbaa !1125
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL10MaxExtract) #20
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL10MaxExtract, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL11MaxBitSplit, i32 noundef 0, i32 noundef 0) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 120), align 8, !tbaa !377
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 128), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL11MaxBitSplit, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 144), align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11MaxBitSplit, ptr nonnull align 1 dereferenceable(20) @.str.11, i64 19) #20
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 10), align 2
  %i.r = and i16 %i.q, -97
  %i.s = or disjoint i16 %i.r, 32
  store i16 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 10), align 2
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 120), align 8, !tbaa !377
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 140), align 4, !tbaa !462
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MaxBitSplit, i64 136), align 8, !tbaa !1125
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11MaxBitSplit) #20
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL11MaxBitSplit, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16RegisterSetLimit, i32 noundef 0, i32 noundef 0) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 120), align 8, !tbaa !377
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 128), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL16RegisterSetLimit, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 144), align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16RegisterSetLimit, ptr nonnull align 1 dereferenceable(25) @.str.13, i64 24) #20
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 10), align 2
  %i.v = and i16 %i.u, -97
  %i.w = or disjoint i16 %i.v, 32
  store i16 %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 10), align 2
  store i32 1000, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 120), align 8, !tbaa !377
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 140), align 4, !tbaa !462
  store i32 1000, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RegisterSetLimit, i64 136), align 8, !tbaa !1125
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16RegisterSetLimit) #20
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL16RegisterSetLimit, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #13

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{null}
!1 = distinct !{!1, !188}
!2 = distinct !{!2, !188}
!3 = distinct !{!3, !188}
!4 = distinct !{!4, !188}
!5 = distinct !{!5, !188, !297}
!6 = distinct !{!6, !188}
!7 = distinct !{!7, !188}
!8 = distinct !{!8, !188}
!9 = distinct !{!9, !188}
!10 = distinct !{null, ptr @_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE, null}
!11 = distinct !{null, null}
!12 = distinct !{!12, !188}
!13 = distinct !{ptr @_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE, null}
!14 = distinct !{!14, !188}
!15 = distinct !{ptr @_ZN12_GLOBAL__N_117BitSimplification11validateRegEN4llvm10BitTracker11RegisterRefEjj, ptr @_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE, null}
!16 = distinct !{!16, !188}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"vtable pointer", !20, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"any pointer", !21, i64 0}
!28 = !{!"_ZTSSt14_Function_base", !21, i64 0, !27, i64 16}
!29 = !{!28, !27, i64 16}
!30 = !{!"any p2 pointer", !27, i64 0}
!31 = !{!"bool", !21, i64 0}
!32 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !30, i64 0, !22, i64 8, !22, i64 12, !31, i64 16}
!33 = !{!32, !31, i64 16}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!32, !30, i64 0}
!37 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !27, i64 0, !22, i64 8, !22, i64 12}
!38 = !{!37, !27, i64 0}
!39 = !{!27, !27, i64 0}
!40 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !27, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"p1 omnipotent char", !27, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"long", !21, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"_ZTSN4llvm9StringRefE", !42, i64 0, !44, i64 8}
!47 = !{!"_ZTSN4llvm8PassInfoE", !46, i64 0, !46, i64 16, !27, i64 32, !31, i64 40, !31, i64 41, !27, i64 48}
!48 = !{!47, !27, i64 32}
!49 = !{!47, !31, i64 40}
!50 = !{!47, !31, i64 41}
!51 = !{!47, !27, i64 48}
!52 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !27, i64 0}
!53 = !{!"_ZTSN4llvm8PassKindE", !21, i64 0}
!54 = !{!"_ZTSN4llvm4PassE", !52, i64 8, !27, i64 16, !53, i64 24}
!55 = !{!54, !52, i64 8}
!56 = !{!54, !27, i64 16}
!57 = !{!54, !53, i64 24}
!58 = !{!"_ZTSN4llvm12FunctionPassE", !54, i64 0}
!59 = !{!"_ZTSSt12_Base_bitsetILm1EE", !44, i64 0}
!60 = !{!"_ZTSSt6bitsetILm12EE", !59, i64 0}
!61 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !60, i64 0}
!62 = !{!"_ZTSN4llvm19MachineFunctionPassE", !58, i64 0, !61, i64 32, !61, i64 40, !61, i64 48}
!63 = !{!"p1 _ZTSN4llvm20MachineDominatorTreeE", !27, i64 0}
!64 = !{!"_ZTSN12_GLOBAL__N_118HexagonBitSimplifyE", !62, i64 0, !63, i64 56}
!65 = !{!64, !63, i64 56}
!66 = !{!"p1 _ZTSN4llvm8FunctionE", !27, i64 0}
!67 = !{!"p1 _ZTSN4llvm13TargetMachineE", !27, i64 0}
!68 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !27, i64 0}
!69 = !{!"p1 _ZTSN4llvm9MCContextE", !27, i64 0}
!70 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !27, i64 0}
!71 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !27, i64 0}
!72 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !27, i64 0}
!73 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !27, i64 0}
!74 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !27, i64 0}
!75 = !{!"p1 _ZTSN4llvm9MCSectionE", !27, i64 0}
!76 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !27, i64 0}
!77 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !30, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !80, i64 0}
!82 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !37, i64 0}
!83 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !83, i64 0}
!85 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !21, i64 0}
!86 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !84, i64 0, !85, i64 16}
!87 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !37, i64 0}
!88 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !89, i64 0}
!91 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !42, i64 0, !44, i64 8, !86, i64 16, !90, i64 64}
!92 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !27, i64 0}
!93 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !92, i64 0}
!94 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !37, i64 0}
!95 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !94, i64 0}
!96 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !21, i64 0}
!98 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !96, i64 0, !97, i64 16}
!99 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !98, i64 0}
!100 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !27, i64 0}
!101 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !100, i64 0}
!102 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !27, i64 0}
!103 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !102, i64 0, !102, i64 8}
!104 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !103, i64 0}
!105 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !105, i64 0}
!107 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !106, i64 0}
!108 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !107, i64 0}
!109 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !108, i64 0}
!110 = !{!"_ZTSN4llvm5AlignE", !21, i64 0}
!111 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !27, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !112, i64 0}
!114 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !115, i64 0}
!117 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !116, i64 0}
!118 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !27, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !119, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !120, i64 0}
!122 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !121, i64 0}
!123 = !{!"p2 _ZTSN4llvm8MCSymbolE", !30, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !124, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !125, i64 0}
!127 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !126, i64 0}
!128 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !27, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !131, i64 0}
!133 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !27, i64 0}
!134 = !{!"p1 int", !27, i64 0}
!135 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !133, i64 0, !134, i64 8, !22, i64 16, !22, i64 20}
!136 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !27, i64 0}
!137 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !136, i64 0, !134, i64 8, !22, i64 16, !22, i64 20}
!138 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !27, i64 0}
!139 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !138, i64 0, !134, i64 8, !22, i64 16, !22, i64 20}
!140 = !{!"p1 _ZTSSt4pairIPN4llvm8MCSymbolEPNS0_6MDNodeEE", !27, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!142 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !141, i64 0}
!143 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !142, i64 0}
!144 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !143, i64 0}
!145 = !{!"_ZTSN4llvm17BasicBlockSectionE", !21, i64 0}
!146 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10UniqueBBIDENS_11SmallVectorIjLj12EEEEE", !27, i64 0}
!147 = !{!"_ZTSN4llvm8DenseMapINS_10UniqueBBIDENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !146, i64 0, !134, i64 8, !22, i64 16, !22, i64 20}
!148 = !{!"p2 _ZTSN4llvm11GlobalValueE", !30, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!150 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE12_Vector_implE", !149, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE", !150, i64 0}
!152 = !{!"_ZTSSt6vectorIPKN4llvm11GlobalValueESaIS3_EE", !151, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!154 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !153, i64 0}
!155 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !154, i64 0}
!156 = !{!"_ZTSSt6vectorIjSaIjEE", !155, i64 0}
!157 = !{!"_ZTSN4llvm13EHPersonalityE", !21, i64 0}
!158 = !{!"p1 _ZTSN4llvm15MachineFunction8DelegateE", !27, i64 0}
!159 = !{!"p1 _ZTSN4llvm19GISelChangeObserverE", !27, i64 0}
!160 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoEEE", !27, i64 0}
!161 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !160, i64 0, !134, i64 8, !22, i64 16, !22, i64 20}
!162 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoEEE", !27, i64 0}
!163 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !162, i64 0, !134, i64 8, !22, i64 16, !22, i64 20}
!164 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction15VariableDbgInfoEvEE", !37, i64 0}
!165 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction15VariableDbgInfoELb1EEE", !164, i64 0}
end_hunk_1
