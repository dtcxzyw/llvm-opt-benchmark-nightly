Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstructionSelector?download=true
inline.NumInlined: 8919
inline.NumDeleted: 2625
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4llvm32createAArch64InstructionSelectorERKNS_20AArch64TargetMachineERKNS_16AArch64SubtargetERKNS_23AArch64RegisterBankInfoE:bb.a
  %i.kq = select i1 %i.kp, i1 %i.gu, i1 false
  br i1 %i.kq, label %.split674.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i

.split674.i.i:                                    ; preds = %bb.w
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 529
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !830, !range !238, !noundef !239
  %i.kt = zext nneg i8 %i.ks to i64
  %i.ku = shl nuw nsw i64 %i.kt, 46
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 407
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !831, !range !238, !noundef !239
  %i.kx = zext nneg i8 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 28
  %i.kz = or disjoint i64 %i.ku, %i.ky
  %spec.select571675.i.i = or i64 %i.kz, %.sroa.0.33.i.i
  br label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i

.thread603.i.i:                                   ; preds = %bb.v
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 529
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !830, !range !238, !noundef !239
  %i.lc = zext nneg i8 %i.lb to i64
  %i.ld = shl nuw nsw i64 %i.lc, 46
  %spec.select567609.i.i = or i64 %i.ld, %.sroa.0.33.i.i
  br label %.thread603.i.thread.i

.thread603.i.thread.i:                            ; preds = %.thread603.i.i, %bb.v
  %.sroa.0.34605.i27.i = phi i64 [ %spec.select567609.i.i, %.thread603.i.i ], [ %.sroa.0.33.i.i, %bb.v ] ; 3 uses
  br i1 %i.gw, label %.thread46.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit173.i.i

.thread46.i:                                      ; preds = %.thread603.i.thread.i
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 407
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !831, !range !238, !noundef !239
  %i.lg = zext nneg i8 %i.lf to i64
  %i.lh = shl nuw nsw i64 %i.lg, 28
  %spec.select571634.i36.i = or i64 %i.lh, %.sroa.0.34605.i27.i
  br label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit173.i.i: ; preds = %.thread603.i.thread.i
  br i1 %i.kn, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.i.thread.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread656.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.i.thread.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit173.i.i
  %.pn.in.in.in74.i = getelementptr inbounds nuw i8, ptr %1, i64 407
  %.pn.in.in75.i = load i8, ptr %.pn.in.in.in74.i, align 1, !tbaa !831, !range !238, !noundef !239
  %.pn.in76.i = zext nneg i8 %.pn.in.in75.i to i64
  %.pn77.i = shl nuw nsw i64 %.pn.in76.i, 28
  %spec.select571634647653.i78.i = or i64 %.pn77.i, %.sroa.0.34605.i27.i
  br label %.thread290.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i: ; preds = %bb.w
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 407
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !831, !range !238, !noundef !239
  %i.lk = zext nneg i8 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 28
  %spec.select571.i.i = or i64 %i.ll, %.sroa.0.33.i.i ; 2 uses
  br i1 %i.gw, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i, label %.thread290.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread656.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit173.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 530
  %i.ln = load i8, ptr %i.lm, align 2, !tbaa !832, !range !238, !noundef !239
  %i.lo = zext nneg i8 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 46
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.lr = load i8, ptr %i.lq, align 8, !tbaa !833, !range !238, !noundef !239
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 50
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !834, !range !238, !noundef !239
  %i.lw = zext nneg i8 %i.lv to i64
  %i.lx = shl nuw nsw i64 %i.lw, 49
  %i.ly = or disjoint i64 %i.lp, %i.lt
  %i.lz = or disjoint i64 %i.ly, %i.lx
  %spec.select570.i.i = or i64 %i.lz, %spec.select564.i.i
  %.pn.in.in.in.i = getelementptr inbounds nuw i8, ptr %1, i64 407
  %.pn.in.in.i = load i8, ptr %.pn.in.in.in.i, align 1, !tbaa !831, !range !238, !noundef !239
  %.pn.in.i = zext nneg i8 %.pn.in.in.i to i64
  %.pn.i = shl nuw nsw i64 %.pn.in.i, 28
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !835, !range !238, !noundef !239
  %i.mc = zext nneg i8 %i.mb to i64
  %i.md = shl nuw i64 %i.mc, 63
  %i.me = or disjoint i64 %.pn.i, %i.md
  %spec.select572660.i.i = or i64 %i.me, %.sroa.0.34605.i27.i
  br label %.thread290.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i: ; preds = %bb.u
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 529
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !830, !range !238, !noundef !239
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = shl nuw nsw i64 %i.mh, 46
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 530
  %i.mk = load i8, ptr %i.mj, align 2, !tbaa !832, !range !238, !noundef !239
  %i.ml = zext nneg i8 %i.mk to i64
  %i.mm = shl nuw nsw i64 %i.ml, 46
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !833, !range !238, !noundef !239
  %i.mp = zext nneg i8 %i.mo to i64
  %i.mq = shl nuw nsw i64 %i.mp, 50
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !834, !range !238, !noundef !239
  %i.mt = zext nneg i8 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 49
  %i.mv = or disjoint i64 %i.mm, %i.mq
  %i.mw = or disjoint i64 %i.mv, %i.mu
  %spec.select570.i42.i = or i64 %i.mw, %spec.select564.i.i ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 407
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !831, !range !238, !noundef !239
  %i.mz = zext nneg i8 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 28
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !835, !range !238, !noundef !239
  %i.nd = zext nneg i8 %i.nc to i64
  %i.ne = shl nuw i64 %i.nd, 63
  %i.nf = or disjoint i64 %i.mi, %i.na
  %i.ng = or disjoint i64 %i.nf, %i.ne
  %spec.select572.i.i = or i64 %i.ng, %.sroa.0.33.i.i ; 2 uses
  br i1 %i.gw, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i, label %.thread290.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i, %.thread46.i, %.split674.i.i
  %.sroa.131.24637.i.i = phi i64 [ %spec.select570.i42.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i ], [ %spec.select564.i.i, %.thread46.i ], [ %spec.select564.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i ], [ %spec.select564.i.i, %.split674.i.i ]
  %.sroa.0.36521.i.i = phi i64 [ %spec.select572.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i ], [ %spec.select571634.i36.i, %.thread46.i ], [ %spec.select571.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i ], [ %spec.select571675.i.i, %.split674.i.i ]
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.ni = load i8, ptr %i.nh, align 4, !tbaa !836, !range !238, !noundef !239
  %i.nj = zext nneg i8 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nj, 13
  %spec.select573.i.i = or i64 %i.nk, %.sroa.131.24637.i.i
  br label %.thread290.i.i

.thread290.i.i:                                   ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread656.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.i.thread.i
  %i.nl = phi i1 [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.i.thread.i ], [ true, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread656.i.i ] ; 14 uses
  %.sroa.0.36292.i.i = phi i64 [ %spec.select571634647653.i78.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.i.thread.i ], [ %.sroa.0.36521.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i ], [ %spec.select572.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i ], [ %spec.select571.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i ], [ %spec.select572660.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread656.i.i ]
  %.sroa.131.25.i.i = phi i64 [ %spec.select564.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.i.thread.i ], [ %spec.select573.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread.i.i ], [ %spec.select570.i42.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.i.i ], [ %spec.select564.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit175.thread.i.i ], [ %spec.select570.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit176.thread.thread656.i.i ] ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 405
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !837, !range !238, !noundef !239
  %i.no = zext nneg i8 %i.nn to i64
  %i.np = shl nuw nsw i64 %i.no, 27
  %spec.select574.i.i = or i64 %i.np, %.sroa.0.36292.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 406
  %i.nr = load i8, ptr %i.nq, align 2, !tbaa !838, !range !238, !noundef !239
  %i.ns = zext nneg i8 %i.nr to i64
  %i.nt = shl nuw nsw i64 %i.ns, 29
  %.sroa.0.38.i.i = or i64 %spec.select574.i.i, %i.nt ; 6 uses
  %i.nu = and i1 %i.nl, %i.fj                     ; 2 uses
  %i.nv = or i1 %i.nu, %i.cs                      ; 2 uses
  br i1 %i.nv, label %bb.x, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i

bb.x:                                             ; preds = %.thread290.i.i
  %i.nw = or i64 %.sroa.0.38.i.i, 1               ; 3 uses
  br i1 %i.cs, label %bb.y, label %.thread293.i.i

bb.y:                                             ; preds = %bb.x
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.ny = load i8, ptr %i.nx, align 2, !tbaa !783, !range !238, !noundef !239
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %.thread.thread11, label %.thread.thread

.thread.thread11:                                 ; preds = %bb.y
  %i.oa = or i64 %.sroa.0.38.i.i, 17592186044417
  br label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i

.thread.thread:                                   ; preds = %bb.y
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.oc = load i8, ptr %i.ob, align 2, !range !238
  %i.od = trunc nuw i8 %i.oc to i1
  %i.oe = select i1 %i.nl, i1 true, i1 %i.od
  %.not.i = xor i1 %i.oe, true
  %brmerge.i = select i1 %.not.i, i1 true, i1 %i.gu
  %i.of = or i64 %.sroa.0.38.i.i, 17592186044417
  %spec.select15 = select i1 %brmerge.i, i64 %i.of, i64 %i.nw ; 3 uses
  br i1 %i.nl, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.i.i

.thread293.i.i:                                   ; preds = %bb.x
  br i1 %i.nu, label %_ZNK4llvm16AArch64Subtarget32isNonStreamingSVEorSME2AvailableEv.exit178.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i: ; preds = %.thread290.i.i
  br i1 %i.nl, label %bb.ap, label %.thread498.i.i

_ZNK4llvm16AArch64Subtarget32isNonStreamingSVEorSME2AvailableEv.exit178.i.i: ; preds = %.thread293.i.i
  %i.og = or i64 %.sroa.0.38.i.i, 17592186044417
  %spec.select = select i1 %i.gu, i64 %i.og, i64 %i.nw
  br label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.i.i: ; preds = %.thread.thread
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.oi = load i8, ptr %i.oh, align 2, !tbaa !785, !range !238, !noundef !239
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget32isNonStreamingSVEorSME2AvailableEv.exit178.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.i.i, %.thread.thread, %.thread293.i.i
  %.sroa.0.40304309.i50.i = phi i64 [ %i.nw, %.thread293.i.i ], [ %spec.select15, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.i.i ], [ %spec.select15, %.thread.thread ], [ %spec.select, %_ZNK4llvm16AArch64Subtarget32isNonStreamingSVEorSME2AvailableEv.exit178.i.i ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 490
  %i.ol = load i8, ptr %i.ok, align 2, !tbaa !810, !range !238, !noundef !239
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i, label %bb.z

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i: ; preds = %.thread.thread11, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.i.i
  %.sroa.0.40304308.i.i = phi i64 [ %.sroa.0.40304309.i50.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i ], [ %spec.select15, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.i.i ], [ %i.oa, %.thread.thread11 ]
  %i.on = or i64 %.sroa.131.25.i.i, 140737488355328
  br label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i
  %.sroa.0.40304307.i.i = phi i64 [ %.sroa.0.40304308.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i ], [ %.sroa.0.40304309.i50.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i ] ; 2 uses
  %.sroa.131.26.i.i = phi i64 [ %i.on, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread310.i.i ], [ %.sroa.131.25.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.i ] ; 2 uses
  br i1 %i.cs, label %bb.aa, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.op = load i8, ptr %i.oo, align 2, !tbaa !783, !range !238, !noundef !239
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread325.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.nl, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.i.i: ; preds = %bb.ab
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.os = load i8, ptr %i.or, align 2, !tbaa !785, !range !238, !noundef !239
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread325.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.i.i, %bb.ab, %bb.z
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !839, !range !238, !noundef !239
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread325.i.i, label %bb.ac

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread325.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.i.i, %bb.aa
  %i.ox = or i64 %.sroa.0.40304307.i.i, 9007199254740992
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread325.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i
  %.sroa.0.41.i.i = phi i64 [ %i.ox, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread325.i.i ], [ %.sroa.0.40304307.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit180.thread.i.thread.i ] ; 2 uses
  br i1 %i.cs, label %bb.ad, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.oz = load i8, ptr %i.oy, align 2, !tbaa !783, !range !238, !noundef !239
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread341.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.nl, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.i.i: ; preds = %bb.ae
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.pc = load i8, ptr %i.pb, align 2, !tbaa !785, !range !238, !noundef !239
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread341.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.i.i, %bb.ae, %bb.ac
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 507
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !840, !range !238, !noundef !239
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread341.i.i, label %bb.af

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread341.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.i.i, %bb.ad
  %i.ph = or i64 %.sroa.0.41.i.i, 17179869184
  br label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread341.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i
  %.sroa.0.42.i.i = phi i64 [ %i.ph, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread341.i.i ], [ %.sroa.0.41.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit181.thread.i.i ] ; 2 uses
  br i1 %i.cs, label %bb.ag, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.pj = load i8, ptr %i.pi, align 2, !tbaa !783, !range !238, !noundef !239
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread357.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.nl, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.i.i: ; preds = %bb.ah
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.pm = load i8, ptr %i.pl, align 2, !tbaa !785, !range !238, !noundef !239
  %i.pn = trunc nuw i8 %i.pm to i1
  br i1 %i.pn, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread357.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.i.i, %bb.ah, %bb.af
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.pp = load i8, ptr %i.po, align 4, !tbaa !841, !range !238, !noundef !239
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread357.i.i, label %bb.ai

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread357.i.i: ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.i.i, %bb.ag
  %i.pr = or i64 %.sroa.0.42.i.i, 1125899906842624
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread357.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i
  %.sroa.0.43.i.i = phi i64 [ %i.pr, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread357.i.i ], [ %.sroa.0.42.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit182.thread.i.i ] ; 2 uses
  br i1 %i.cs, label %bb.aj, label %.thread376.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.pt = load i8, ptr %i.ps, align 2, !tbaa !783, !range !238, !noundef !239 ; 2 uses
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %.thread376.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.nl, label %.thread376.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit183.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit183.i.i: ; preds = %bb.ak
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.pw = load i8, ptr %i.pv, align 2, !tbaa !785, !range !238, !noundef !239
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %.thread376.i.i, label %.thread376.thread.i.i

.thread376.thread.i.i:                            ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit183.i.i, %bb.aj
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 514
  %i.pz = load i8, ptr %i.py, align 2, !tbaa !799, !range !238, !noundef !239 ; 2 uses
  %i.qa = or i8 %i.pz, %i.fi
  %brmerge576.not665.i.i = icmp eq i8 %i.qa, 0
  %.sroa.0.45666.v.i.i = select i1 %brmerge576.not665.i.i, i64 18014398509481984, i64 18018796555993088
  %.sroa.0.45666.i.i.a = or i64 %.sroa.0.45666.v.i.i, %.sroa.0.43.i.i
  br label %bb.al

.thread376.i.i:                                   ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit183.i.i, %bb.ak, %bb.ai
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 509
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !842, !range !238, !noundef !239
  %i.qd = zext nneg i8 %i.qc to i64
  %i.qe = shl nuw nsw i64 %i.qd, 54
  %.sroa.0.44381.i.i = or i64 %i.qe, %.sroa.0.43.i.i ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 514
  %i.qg = load i8, ptr %i.qf, align 2, !tbaa !799, !range !238, !noundef !239 ; 2 uses
  %i.qh = or i8 %i.qg, %i.fi
  %brmerge576.not.i.i = icmp eq i8 %i.qh, 0
  %i.qi = or i64 %.sroa.0.44381.i.i, 4398046511104
  %.sroa.0.45.i.i = select i1 %brmerge576.not.i.i, i64 %.sroa.0.44381.i.i, i64 %i.qi ; 2 uses
  br i1 %i.cs, label %.thread376.i._crit_edge.i, label %.thread410.i.i

.thread376.i._crit_edge.i:                        ; preds = %.thread376.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 498
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !783, !range !238
  br label %bb.al

bb.al:                                            ; preds = %.thread376.i._crit_edge.i, %.thread376.thread.i.i
  %i.qj = phi i8 [ %i.pt, %.thread376.thread.i.i ], [ %.pre.i, %.thread376.i._crit_edge.i ]
  %.sroa.0.45668.i.i = phi i64 [ %.sroa.0.45666.i.i.a, %.thread376.thread.i.i ], [ %.sroa.0.45.i.i, %.thread376.i._crit_edge.i ] ; 5 uses
  %i.qk = phi i8 [ %i.pz, %.thread376.thread.i.i ], [ %i.qg, %.thread376.i._crit_edge.i ] ; 2 uses
  %i.ql = trunc nuw i8 %i.qj to i1
  br i1 %i.ql, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.thread403.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.nl, label %.thread410.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.i.i: ; preds = %bb.am
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.qn = load i8, ptr %i.qm, align 2, !tbaa !785, !range !238, !noundef !239
  %i.qo = trunc nuw i8 %i.qn to i1
  %.not = xor i1 %i.qo, true
  %i.qp = trunc nuw i8 %i.qk to i1
  %or.cond = and i1 %i.qp, %.not
  br i1 %or.cond, label %bb.an, label %.thread410.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.thread403.i.i: ; preds = %bb.al
  %.old = trunc nuw i8 %i.qk to i1
  br i1 %.old, label %bb.an, label %.thread410.i.i

.thread410.i.i:                                   ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.thread403.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.i.i, %bb.am, %.thread376.i.i
  %.sroa.0.45667.i.i.a = phi i64 [ %.sroa.0.45668.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.thread403.i.i ], [ %.sroa.0.45668.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.i.i ], [ %.sroa.0.45.i.i, %.thread376.i.i ], [ %.sroa.0.45668.i.i, %bb.am ] ; 2 uses
  br i1 %i.gu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.i.i, %.thread410.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.thread403.i.i
  %.sroa.0.45669.i.i = phi i64 [ %.sroa.0.45667.i.i.a, %.thread410.i.i ], [ %.sroa.0.45668.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.thread403.i.i ], [ %.sroa.0.45668.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit184.i.i ]
  %i.qq = or i64 %.sroa.0.45669.i.i, 576460752303423488
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread410.i.i
  %.sroa.0.46.ph.i.i = phi i64 [ %.sroa.0.45667.i.i.a, %.thread410.i.i ], [ %i.qq, %bb.an ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 519
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !800, !range !238, !noundef !239 ; 3 uses
  %i.qt = or i8 %i.qs, %i.fi
  %brmerge577.not.i.i = icmp eq i8 %i.qt, 0
  %3 = or i64 %.sroa.131.26.i.i, 256
  %.sroa.131.27.ph.i.i = select i1 %brmerge577.not.i.i, i64 %.sroa.131.26.i.i, i64 %3 ; 3 uses
  %i.qu = or i8 %i.qs, %i.gv
  %brmerge578.not.i.i = icmp eq i8 %i.qu, 0
  %4 = or i64 %.sroa.0.46.ph.i.i, 281474976710656
  %.sroa.0.47.ph.i.i = select i1 %brmerge578.not.i.i, i64 %.sroa.0.46.ph.i.i, i64 %4 ; 2 uses
  %i.qv = trunc nuw i8 %i.qs to i1
  br i1 %i.qv, label %.thread673.i.i, label %.thread670.i.i

.thread673.i.i:                                   ; preds = %bb.ao
  %i.qw = or i64 %.sroa.0.47.ph.i.i, 288230376151711744
  br label %bb.aq

.thread670.i.i:                                   ; preds = %bb.ao
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 490
  %i.qy = load i8, ptr %i.qx, align 2, !tbaa !810, !range !238, !noundef !239
  %i.qz = zext nneg i8 %i.qy to i64
  %i.ra = shl nuw nsw i64 %i.qz, 58
  %spec.select682.i.i = or i64 %i.ra, %.sroa.0.47.ph.i.i ; 2 uses
  br i1 %i.nl, label %bb.ap, label %.thread54.i

bb.ap:                                            ; preds = %.thread670.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i
  %.sroa.131.27433439448454.i.i = phi i64 [ %.sroa.131.25.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i ], [ %.sroa.131.27.ph.i.i, %.thread670.i.i ] ; 2 uses
  %.sroa.0.48450453.i.i = phi i64 [ %.sroa.0.38.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i ], [ %spec.select682.i.i, %.thread670.i.i ] ; 2 uses
  br i1 %i.gu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.thread673.i.i
  %.sroa.0.48451.i.i = phi i64 [ %.sroa.0.48450453.i.i, %bb.ap ], [ %i.qw, %.thread673.i.i ]
  %.sroa.131.27433439447.i.i = phi i64 [ %.sroa.131.27433439448454.i.i, %bb.ap ], [ %.sroa.131.27.ph.i.i, %.thread673.i.i ]
  %i.rb = or i64 %.sroa.0.48451.i.i, 137438953472
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.131.27433439446.i.i = phi i64 [ %.sroa.131.27433439447.i.i, %bb.aq ], [ %.sroa.131.27433439448454.i.i, %bb.ap ] ; 2 uses
  %.sroa.0.49.i.i = phi i64 [ %i.rb, %bb.aq ], [ %.sroa.0.48450453.i.i, %bb.ap ] ; 2 uses
  br i1 %i.nv, label %.thread54.i, label %bb.ba

.thread54.i:                                      ; preds = %bb.ar, %.thread670.i.i
  %.sroa.0.49.i60.i = phi i64 [ %.sroa.0.49.i.i, %bb.ar ], [ %spec.select682.i.i, %.thread670.i.i ] ; 2 uses
  %.sroa.131.27433439446.i59.i = phi i64 [ %.sroa.131.27433439446.i.i, %bb.ar ], [ %.sroa.131.27.ph.i.i, %.thread670.i.i ] ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.rd = load i8, ptr %i.rc, align 8, !tbaa !833, !range !238, !noundef !239
  %i.re = trunc nuw i8 %i.rd to i1                ; 3 uses
  br i1 %i.re, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread54.i
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !839, !range !238, !noundef !239
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %.thread54.i
  %i.ri = or i64 %.sroa.0.49.i60.i, 2199023255552
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.0.50.ph.i.i = phi i64 [ %.sroa.0.49.i60.i, %bb.as ], [ %i.ri, %bb.at ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !835, !range !238, !noundef !239
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.rn = load i8, ptr %i.rm, align 4, !tbaa !836, !range !238, !noundef !239
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.rp = or i64 %.sroa.0.50.ph.i.i, 562949953421312
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0.51.i.i = phi i64 [ %i.rp, %bb.aw ], [ %.sroa.0.50.ph.i.i, %bb.av ] ; 2 uses
  br i1 %i.cs, label %bb.ay, label %.thread488.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !783, !range !238, !noundef !239
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.thread481.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.nl, label %.thread488.i.i, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.i.i: ; preds = %bb.az
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.ru = load i8, ptr %i.rt, align 2, !tbaa !785, !range !238, !noundef !239
  %i.rv = trunc nuw i8 %i.ru to i1
  %.not16 = xor i1 %i.re, true
  %brmerge = or i1 %i.rv, %.not16
  br i1 %brmerge, label %.thread488.i.i, label %.split.i.i

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.thread481.i.i: ; preds = %bb.ay
  br i1 %i.re, label %.split.i.i, label %.thread488.i.i

.thread488.i.i:                                   ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.thread481.i.i, %bb.az, %bb.ax
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !839, !range !238, !noundef !239
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %.split.i.i, label %bb.ba

.split.i.i:                                       ; preds = %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.i.i, %.thread488.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.thread481.i.i
  %i.rz = phi i1 [ %i.nl, %.thread488.i.i ], [ %i.nl, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.thread481.i.i ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit185.i.i ]
  %i.sa = or i64 %.sroa.0.51.i.i, 4503599627370496 ; 2 uses
  br i1 %i.rz, label %bb.bb, label %.thread498.i.i

bb.ba:                                            ; preds = %.thread488.i.i, %bb.ar
  %.sroa.131.27433439446.i58.i = phi i64 [ %.sroa.131.27433439446.i.i, %bb.ar ], [ %.sroa.131.27433439446.i59.i, %.thread488.i.i ] ; 2 uses
  %.sroa.0.52.i.i = phi i64 [ %.sroa.0.49.i.i, %bb.ar ], [ %.sroa.0.51.i.i, %.thread488.i.i ] ; 2 uses
  br i1 %i.nl, label %bb.bb, label %.thread498.i.i

bb.bb:                                            ; preds = %bb.ba, %.split.i.i
  %.sroa.131.27433439446.i57.i = phi i64 [ %.sroa.131.27433439446.i59.i, %.split.i.i ], [ %.sroa.131.27433439446.i58.i, %bb.ba ] ; 2 uses
  %.sroa.0.52503.i.i = phi i64 [ %i.sa, %.split.i.i ], [ %.sroa.0.52.i.i, %bb.ba ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 494
  %i.sc = load i8, ptr %i.sb, align 2, !tbaa !807, !range !238, !noundef !239
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !821, !range !238, !noundef !239
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %bb.bd, label %.thread498.i.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.sh = or i64 %.sroa.131.27433439446.i57.i, 2251799813685248
  br label %.thread498.i.i

.thread498.i.i:                                   ; preds = %bb.bd, %bb.bc, %bb.ba, %.split.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i
  %.sroa.0.52501.i.i = phi i64 [ %.sroa.0.52503.i.i, %bb.bd ], [ %.sroa.0.52503.i.i, %bb.bc ], [ %.sroa.0.52.i.i, %bb.ba ], [ %i.sa, %.split.i.i ], [ %.sroa.0.38.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i ] ; 3 uses
  %i.si = phi i1 [ true, %bb.bd ], [ true, %bb.bc ], [ false, %bb.ba ], [ false, %.split.i.i ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i ]
  %.sroa.131.28.i.i = phi i64 [ %i.sh, %bb.bd ], [ %.sroa.131.27433439446.i57.i, %bb.bc ], [ %.sroa.131.27433439446.i58.i, %bb.ba ], [ %.sroa.131.27433439446.i59.i, %.split.i.i ], [ %.sroa.131.25.i.i, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit179.thread.i.thread52.i ]
  br i1 %i.aj, label %bb.be, label %_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i

bb.be:                                            ; preds = %.thread498.i.i
  %i.sj = or i64 %.sroa.0.52501.i.i, 32           ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.sl = load i8, ptr %i.sk, align 2, !tbaa !783, !range !238, !noundef !239
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.thread511.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.si, label %.thread516.i.i, label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.i.i

_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.i.i: ; preds = %bb.bf
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 866
  %i.so = load i8, ptr %i.sn, align 2, !tbaa !785, !range !238, !noundef !239
  %i.sp = trunc nuw i8 %i.so to i1
  %i.sq = xor i1 %i.sp, true
  %brmerge579.i.i = or i1 %i.kc, %i.sq
  br i1 %brmerge579.i.i, label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.thread511.i.i, label %_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i

.thread516.i.i:                                   ; preds = %bb.bf
  br i1 %i.kc, label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.thread511.i.i, label %_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i

_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.thread511.i.i: ; preds = %.thread516.i.i, %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.i.i, %bb.be
  %i.sr = or i64 %.sroa.0.52501.i.i, 131104
  br label %_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i

_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i: ; preds = %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.thread511.i.i, %.thread516.i.i, %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.i.i, %.thread498.i.i
  %.sroa.0.54.i.i = phi i64 [ %i.sr, %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.thread511.i.i ], [ %i.sj, %.thread516.i.i ], [ %.sroa.0.52501.i.i, %.thread498.i.i ], [ %i.sj, %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit186.i.i ]
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 477
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !242, !range !238, !noundef !239
  %i.su = zext nneg i8 %i.st to i64
  %i.sv = shl nuw nsw i64 %i.su, 37
  %spec.select580.i.i = or i64 %i.sv, %.sroa.131.28.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.sx = load i8, ptr %i.sw, align 4, !tbaa !843, !range !238, !noundef !239
  %i.sy = zext nneg i8 %i.sx to i64
  %i.sz = shl nuw nsw i64 %i.sy, 16
  %.sroa.0.55.i.i = or i64 %i.sz, %.sroa.0.54.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.tb = load i8, ptr %i.ta, align 8, !tbaa !844, !range !238, !noundef !239
  %i.tc = zext nneg i8 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.tc, 12
  %.sroa.0.56.i.i = or i64 %.sroa.0.55.i.i, %i.td
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 377
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !845, !range !238, !noundef !239
  %i.tg = shl nuw nsw i8 %i.tf, 3
  %i.th = zext nneg i8 %i.tg to i64
  %.sroa.0.57.i.i = or i64 %.sroa.0.56.i.i, %i.th
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.tj = load i8, ptr %i.ti, align 4, !tbaa !846, !range !238, !noundef !239
  %i.tk = shl nuw nsw i8 %i.tj, 6
  %i.tl = zext nneg i8 %i.tk to i64
  %.sroa.0.58.i.i = or i64 %.sroa.0.57.i.i, %i.tl
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 458
  %i.tn = load i8, ptr %i.tm, align 2, !tbaa !847, !range !238, !noundef !239
  %i.to = zext nneg i8 %i.tn to i64
  %i.tp = shl nuw nsw i64 %i.to, 45
  %.sroa.131.30.i.i = or i64 %spec.select580.i.i, %i.tp
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 459
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !848, !range !238, !noundef !239
  %i.ts = zext nneg i8 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 56
  %.sroa.0.59.i.i = or i64 %.sroa.0.58.i.i, %i.tt
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 442
  %i.tv = load i8, ptr %i.tu, align 2, !tbaa !849, !range !238, !noundef !239
  %i.tw = zext nneg i8 %i.tv to i64
  %i.tx = shl nuw nsw i64 %i.tw, 33
  %.sroa.131.31.i.i = or i64 %.sroa.131.30.i.i, %i.tx
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 437
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !850, !range !238, !noundef !239
  %i.ua = zext nneg i8 %i.tz to i64
end_hunk_0
