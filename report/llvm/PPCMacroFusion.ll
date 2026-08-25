Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCMacroFusion?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_122shouldScheduleAdjacentERKN4llvm15TargetInstrInfoERKNS0_19TargetSubtargetInfoEPKNS0_12MachineInstrERS8_:bb.a
  br i1 %i.ml, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.aa:                                            ; preds = %bb.m
  %i.mm = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 64
  %i.mn = load i32, ptr %i.mm, align 8
  %i.mo = and i32 %i.mn, 255
  %i.mp = icmp eq i32 %i.mo, 1
  br i1 %i.mp, label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit122.i, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit122.i: ; preds = %bb.aa
  %i.mq = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 80
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !167
  %i.ms = icmp eq i64 %i.mr, 1
  br i1 %i.ms, label %bb.ab, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit122.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 96
  %i.mu = load i32, ptr %i.mt, align 8
  %i.mv = and i32 %i.mu, 255
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %.split251, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

.split251:                                        ; preds = %bb.ab
  %i.mx = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 112
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !167
  %.fr282 = freeze i64 %i.my
  %i.mz = icmp eq i64 %.fr282, 63
  br i1 %i.mz, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ac:                                            ; preds = %bb.m, %bb.m
  %i.na = load i32, ptr %.val152.pre, align 8
  %i.nb = and i32 %i.na, 255
  %i.nc = icmp eq i32 %i.nb, 0
  br i1 %i.nc, label %bb.ad, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.nd = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !167 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, -1
  %i.ng = icmp ne i32 %i.ne, 20
  %or.cond33.i = and i1 %i.nf, %i.ng
  br i1 %or.cond33.i, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread, label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.ad
  %i.nh = icmp eq i32 %i.gp, 692
  %i.ni = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 64
  %i.nj = load i32, ptr %i.ni, align 8
  %i.nk = and i32 %i.nj, 255
  %i.nl = icmp eq i32 %i.nk, 1                    ; 2 uses
  %or.cond.i = select i1 %i.nh, i1 %i.nl, i1 false
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.i, label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i

_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.i: ; preds = %.critedge4.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 80
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !167 ; 2 uses
  %.mask38.i = and i64 %i.nn, 65535
  %i.no = icmp eq i64 %.mask38.i, 65535
  br i1 %i.no, label %.thread, label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i

_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i: ; preds = %.critedge4.i
  br i1 %i.nl, label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i._ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i_crit_edge, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i._ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i_crit_edge: ; preds = %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !167
  br label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i

_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i: ; preds = %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i._ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i_crit_edge, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.i
  %i.np = phi i64 [ %.pre, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i._ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i_crit_edge ], [ %i.nn, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.i ]
  %.fr281 = freeze i64 %i.np
  %spec.select.i = icmp ult i64 %.fr281, 2
  br i1 %spec.select.i, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ae:                                            ; preds = %bb.m
  %i.nq = load i32, ptr %.val152.pre, align 8
  %i.nr = and i32 %i.nq, 255
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.af, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.nt = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !167 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, -1
  %i.nw = icmp ne i32 %i.nu, 20
  %or.cond34.i = and i1 %i.nv, %i.nw
  br i1 %or.cond34.i, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread, label %.critedge8.i

.critedge8.i:                                     ; preds = %bb.af
  %i.nx = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 64
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = and i32 %i.ny, 255
  %i.oa = icmp eq i32 %i.nz, 1
  br i1 %i.oa, label %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit137.i, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit137.i: ; preds = %.critedge8.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 80
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !167
  %.fr280 = freeze i64 %i.oc                      ; 2 uses
  %switch43.i = icmp ult i64 %.fr280, 2
  %.mask37.i = and i64 %.fr280, 65535
  %i.od = icmp eq i64 %.mask37.i, 65535
  %or.cond = or i1 %switch43.i, %i.od
  br i1 %or.cond, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ag:                                            ; preds = %bb.m
  %.52.val.off.i = add i32 %i.hv, -1569
  %switch.i = icmp ult i32 %.52.val.off.i, 2
  br i1 %switch.i, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.oe = load i32, ptr %.val150.pre, align 8
  %i.of = and i32 %i.oe, 255
  %i.og = icmp eq i32 %i.of, 1
  br i1 %i.og, label %_ZN12_GLOBAL__N_118checkOpConstraintsENS_13FusionFeature10FusionKindERKN4llvm12MachineInstrES5_.exit, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ai:                                            ; preds = %bb.m
  %.52.val.off35.i = add i32 %i.hv, -1569
  %switch36.i = icmp ult i32 %.52.val.off35.i, 2
  br i1 %switch36.i, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.oh = load i32, ptr %.val150.pre, align 8
  %i.oi = and i32 %i.oh, 255
  %i.oj = icmp eq i32 %i.oi, 1
  br i1 %i.oj, label %.split260, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

.split260:                                        ; preds = %bb.aj
  %i.ok = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !167
  %.fr278 = freeze i64 %i.ol
  %i.om = icmp eq i64 %.fr278, 8
  br i1 %i.om, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ak:                                            ; preds = %bb.m
  %i.on = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 64
  %i.oo = load i32, ptr %i.on, align 8
  %i.op = and i32 %i.oo, 255
  %i.oq = icmp eq i32 %i.op, 1
  br i1 %i.oq, label %bb.al, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.or = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 32
  %i.os = load i32, ptr %i.or, align 8
  %i.ot = and i32 %i.os, 255
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.am, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.ov = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 36
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !167
  switch i32 %i.ow, label %.split249 [
    i32 10, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread
    i32 563, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread
  ]

.split249:                                        ; preds = %bb.am
  %i.ox = getelementptr inbounds nuw i8, ptr %.val152.pre, i64 80
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !167
  %.fr = freeze i64 %i.oy
  %.mask.i = and i64 %.fr, 32768
  %i.oz = icmp eq i64 %.mask.i, 0
  br i1 %i.oz, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.an:                                            ; preds = %bb.m
  %i.pa = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 64
  %i.pb = load i32, ptr %i.pa, align 8
  %i.pc = and i32 %i.pb, 255
  %i.pd = icmp eq i32 %i.pc, 1
  br i1 %i.pd, label %bb.ao, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.pe = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 32
  %i.pf = load i32, ptr %i.pe, align 8
  %i.pg = and i32 %i.pf, 255
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.ap, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.pi = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 36
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !167
  switch i32 %i.pj, label %.split256 [
    i32 10, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread
    i32 563, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread
  ]

.split256:                                        ; preds = %bb.ap
  %i.pk = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 80
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !167
  %.fr277 = freeze i64 %i.pl
  %i.pm = trunc i64 %.fr277 to i16
  %i.pn = icmp sgt i16 %i.pm, 1
  br i1 %i.pn, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

_ZN12_GLOBAL__N_118checkOpConstraintsENS_13FusionFeature10FusionKindERKN4llvm12MachineInstrES5_.exit: ; preds = %bb.ah
  %i.po = getelementptr inbounds nuw i8, ptr %.val150.pre, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !167
  %.fr279 = freeze i64 %i.pp
  %i.pq = icmp eq i64 %.fr279, 9
  br i1 %i.pq, label %.thread, label %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread

_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread: ; preds = %bb.g, %bb.j, %.split262, %.split260, %.split258, %.split256, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i, %.split253.a, %.split251, %.split249, %.split247, %_ZN12_GLOBAL__N_118checkOpConstraintsENS_13FusionFeature10FusionKindERKN4llvm12MachineInstrES5_.exit, %bb.am, %bb.am, %bb.r, %bb.v, %bb.y, %bb.ac, %bb.ae, %.critedge8.i, %bb.ah, %bb.ap, %bb.ap, %bb.aa, %bb.t, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit.i, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit116.i, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit122.i, %bb.ad, %bb.ab, %bb.af, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.thread.i, %switch.early.test.i, %switch.early.test.i, %bb.ak, %bb.al, %bb.aj, %bb.an, %bb.ao, %bb.x, %bb.z, %_ZN12_GLOBAL__N_114matchingRegOpsERKN4llvm12MachineInstrEiS3_i.exit.i, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit107.i, %bb.w, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit137.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.0142.add = add nuw nsw i64 %.0142.idx287, 80  ; 2 uses
  %.not144.not = icmp eq i64 %.0142.add, 1920
  br i1 %.not144.not, label %.thread, label %bb.d

.thread:                                          ; preds = %.split262, %.split260, %.split258, %.split256, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i, %.split253.a, %.split251, %.split249, %.split247, %_ZN12_GLOBAL__N_118checkOpConstraintsENS_13FusionFeature10FusionKindERKN4llvm12MachineInstrES5_.exit, %bb.m, %bb.n, %bb.u, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.i, %bb.o, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit137.i, %bb.ag, %bb.p, %bb.ai, %bb.s, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit107.i, %bb.t, %bb.k, %bb.l, %_ZN12_GLOBAL__N_114matchingRegOpsERKN4llvm12MachineInstrEiS3_i.exit, %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit, %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread
  %.4 = phi i1 [ false, %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit.thread ], [ false, %bb.k ], [ true, %_ZNK12_GLOBAL__N_113FusionFeature6hasOp2Ej.exit ], [ false, %_ZN12_GLOBAL__N_114matchingRegOpsERKN4llvm12MachineInstrEiS3_i.exit ], [ false, %bb.l ], [ true, %bb.t ], [ true, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit107.i ], [ true, %bb.s ], [ true, %bb.ai ], [ true, %bb.p ], [ true, %bb.ag ], [ true, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit137.i ], [ true, %bb.o ], [ true, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit128.i ], [ true, %bb.u ], [ true, %bb.n ], [ true, %bb.m ], [ true, %_ZN12_GLOBAL__N_118checkOpConstraintsENS_13FusionFeature10FusionKindERKN4llvm12MachineInstrES5_.exit ], [ true, %.split247 ], [ true, %.split249 ], [ true, %.split251 ], [ true, %.split253.a ], [ true, %_ZN12_GLOBAL__N_114matchingImmOpsERKN4llvm12MachineInstrEilj.exit131.i ], [ true, %.split256 ], [ true, %.split258 ], [ true, %.split260 ], [ true, %.split262 ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113FusionFeatureC2ENS0_10FusionKindEbiRKN4llvm13SmallDenseSetIjLj4ENS2_12DenseMapInfoIjvEEEES8_(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 5), (8, 12), (16, 20), (40, 44)) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef range(i32 -1, 3) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i32 %1, ptr %0, align 8, !tbaa !353
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.a, ptr %i.b, align 4, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8, !tbaa !352
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 8
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8copyFromERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.f, align 8
  store i32 0, ptr %i.g, align 8
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8copyFromERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  %i.k = add nuw nsw i64 %i.j, %i.h
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.l, i64 noundef 4) #10
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #5 section ".text.startup" {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit, %bb.a
  %i.a = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_122shouldScheduleAdjacentERKN4llvm15TargetInstrInfoERKNS0_19TargetSubtargetInfoEPKNS0_12MachineInstrERS8_E14FusionFeatures, i64 1920), %bb.a ], [ %i.b, %_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit ] ; 7 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -80 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 1
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 31
  %i.m = lshr i64 %i.l, 5
  %i.n = add nuw nsw i64 %i.m, %i.k
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.j, i64 noundef %i.o, i64 noundef 4) #10
  br label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 1
  %.not.i.i.i1.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i1.i, label %bb.e, label %_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !167  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 -56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !167
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = shl nuw nsw i64 %i.aa, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ab, i64 noundef 4) #10
  br label %_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit

_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit:        ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit.i, %bb.e, %bb.f
  %i.ac = icmp eq ptr %i.b, @_ZZN12_GLOBAL__N_122shouldScheduleAdjacentERKN4llvm15TargetInstrInfoERKNS0_19TargetSubtargetInfoEPKNS0_12MachineInstrERS8_E14FusionFeatures
  br i1 %i.ac, label %bb.g, label %bb.b

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_113FusionFeatureD2Ev.exit
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEEC2ESt16initializer_listIjE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %or.cond.i = icmp slt i64 %2, 1
  br i1 %or.cond.i, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEEC2Ej.exit, label %_ZN4llvm12PowerOf2CeilEm.exit

_ZN4llvm12PowerOf2CeilEm.exit:                    ; preds = %bb.a
  %i.a = icmp sgt i64 %2, 2147483648
  br i1 %i.a, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEEC2Ej.exit.thread9, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E31getMinBucketToReserveForEntriesEj.exit.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E31getMinBucketToReserveForEntriesEj.exit.i.i: ; preds = %_ZN4llvm12PowerOf2CeilEm.exit
  %i.b = add nsw i64 %2, -1
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 false)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = shl nuw nsw i64 1, %i.d
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = shl i32 %i.f, 2
  %i.h = udiv i32 %i.g, 3
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 4
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 8
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i64 %i.r, 16
  %i.t = or i64 %i.s, %i.r                        ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, 4
  br i1 %i.u, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEEC2Ej.exit.thread9, label %_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEEC2Ej.exit.thread

_ZN4llvm6detail12DenseSetImplIjNS_13SmallDenseMapIjNS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEEC2Ej.exit.thread: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E31getMinBucketToReserveForEntriesEj.exit.i.i
  %i.v = trunc nuw nsw i64 %i.t to i32
  %i.w = add nuw i32 %i.v, 1                      ; 3 uses
  %i.x = load i32, ptr %0, align 8
  %i.y = and i32 %i.x, -2
  store i32 %i.y, ptr %0, align 8
  %i.z = zext i32 %i.w to i64                     ; 3 uses
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = add nuw nsw i64 %i.ab, %i.z
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ad, i64 noundef 4) #10 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !167
  %i.ag = shl nuw nsw i64 %i.z, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !167
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.w, ptr %i.aj, align 8, !tbaa !167
  %.pre.i.i.i.i = load i32, ptr %0, align 8
  %.pre.fr.i.i.i.i = freeze i32 %.pre.i.i.i.i
  %i.ak = and i32 %.pre.fr.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 0      ; 2 uses
  %i.al = select i1 %.not.i.i.i.i.i.i.i, i32 %i.w, i32 4
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ah, ptr %i.aj
  %i.am = zext i32 %i.al to i64
  %i.an = add nuw nsw i64 %i.am, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  store i32 %i.ak, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %spec.select.i.i.i.i, i8 0, i64 %i.ap, i1 false)
  %.idx7 = shl nuw nsw i64 %2, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx7
  br label %.lr.ph.i.preheader
end_hunk_0
