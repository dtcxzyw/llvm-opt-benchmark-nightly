Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/R600InstrInfo?download=true
inline.NumInlined: 2263
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm13R600InstrInfo11isLegalUpToERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERKS1_INS0_11BankSwizzleESaISA_EERKS5_SA_:bb.a
  %or.cond = or i1 %i.bi, %i.bj
  br i1 %or.cond, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !352
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 34
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !353
  %i.bn = and i16 %i.bm, 511
  %i.bo = zext nneg i16 %i.bn to i32
  %i.bp = icmp eq i32 %i.bh, %i.bo
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %switch = icmp ult i32 %i.ac, 2
  br i1 %switch, label %select.unfold, label %.split.loop.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = zext i32 %i.bg to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !29 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  %spec.store.select98 = select i1 %i.bt, i32 %i.bh, i32 %i.bs ; 2 uses
  store i32 %spec.store.select98, ptr %i.br, align 4, !tbaa !29
  %.not = icmp eq i32 %spec.store.select98, %i.bh
  br i1 %.not, label %select.unfold, label %.split.loop.exit149

select.unfold:                                    ; preds = %bb.m, %bb.n, %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit
  %i.bu = icmp slt i32 %i.bf, 0
  %i.bv = icmp eq i32 %i.bf, 255
  %or.cond.1 = or i1 %i.bu, %i.bv
  br i1 %or.cond.1, label %select.unfold.1, label %bb.o

bb.o:                                             ; preds = %select.unfold
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !352
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 34
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !353
  %i.bz = and i16 %i.by, 511
  %i.ca = zext nneg i16 %i.bz to i32
  %i.cb = icmp eq i32 %i.bf, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = zext i32 %i.be to i64
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  %spec.store.select98.1 = select i1 %i.cg, i32 %i.bf, i32 %i.cf ; 2 uses
  store i32 %spec.store.select98.1, ptr %i.ce, align 4, !tbaa !29
  %.not.1 = icmp eq i32 %spec.store.select98.1, %i.bf
  br i1 %.not.1, label %select.unfold.1, label %.split.loop.exit141

bb.q:                                             ; preds = %bb.o
  %switch.1 = icmp ult i32 %i.ac, 2
  br i1 %switch.1, label %select.unfold.1, label %.split.loop.exit

select.unfold.1:                                  ; preds = %bb.q, %bb.p, %select.unfold
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !355 ; 5 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = icmp eq i32 %i.ci, 255
  %or.cond.2 = or i1 %i.cj, %i.ck
  br i1 %or.cond.2, label %select.unfold.2, label %bb.r

bb.r:                                             ; preds = %select.unfold.1
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !352
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 34
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !353
  %i.co = and i16 %i.cn, 511
  %i.cp = zext nneg i16 %i.co to i32
  %i.cq = icmp eq i32 %i.ci, %i.cp
  br i1 %i.cq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !356
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  %spec.store.select98.2 = select i1 %i.cx, i32 %i.ci, i32 %i.cw ; 2 uses
  store i32 %spec.store.select98.2, ptr %i.cv, align 4, !tbaa !29
  %.not.2 = icmp eq i32 %spec.store.select98.2, %i.ci
  br i1 %.not.2, label %select.unfold.2, label %.split.loop.exit133

bb.t:                                             ; preds = %bb.r
  %switch.2 = icmp ult i32 %i.ac, 2
  br i1 %switch.2, label %select.unfold.2, label %.split.loop.exit

select.unfold.2:                                  ; preds = %bb.t, %bb.s, %select.unfold.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread88, label %bb.b, !llvm.loop !602

.split.loop.exit133:                              ; preds = %bb.s
  %i.cy = trunc nuw i64 %indvars.iv to i32
  br label %.split.loop.exit

.split.loop.exit141:                              ; preds = %bb.p
  %i.cz = trunc nuw i64 %indvars.iv to i32
  br label %.split.loop.exit

.split.loop.exit149:                              ; preds = %bb.n
  %i.da = trunc nuw i64 %indvars.iv to i32
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.m, %bb.q, %bb.t, %.split.loop.exit149, %.split.loop.exit141, %.split.loop.exit133
  %.364.ph = phi i32 [ %i.cy, %.split.loop.exit133 ], [ %i.cz, %.split.loop.exit141 ], [ %i.da, %.split.loop.exit149 ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.m ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #27
  br label %bb.w

.thread88:                                        ; preds = %select.unfold.2, %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !357
  %i.dd = load ptr, ptr %3, align 8, !tbaa !362   ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = and i64 %i.dg, 34359738360
  %.not73104.not = icmp eq i64 %i.dh, 0
  br i1 %.not73104.not, label %._crit_edge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %.thread88
  %i.di = lshr exact i64 %i.dg, 3
  %wide.trip.count116 = and i64 %i.di, 4294967295
  %i.dj = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13R600InstrInfo11isLegalUpToERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERKS1_INS0_11BankSwizzleESaISA_EERKS5_SA_, i64 %i.dj
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %bb.v
  %indvars.iv113 = phi i64 [ 0, %.lr.ph106.preheader ], [ %indvars.iv.next114, %bb.v ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv113 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !355 ; 4 uses
  %i.dm = icmp slt i32 %i.dl, 0
  %i.dn = icmp eq i32 %i.dl, 255
  %or.cond74 = or i1 %i.dm, %i.dn
  br i1 %or.cond74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph106
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %switch.load, i64 %indvars.iv113
  %.0.i = load i32, ptr %i.do, align 4, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !356
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.dr
  %i.dt = zext i32 %.0.i to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !29 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  %spec.store.select = select i1 %i.dw, i32 %i.dl, i32 %i.dv ; 2 uses
  store i32 %spec.store.select, ptr %i.du, align 4, !tbaa !29
  %.not72 = icmp eq i32 %spec.store.select, %i.dl
  br i1 %.not72, label %bb.v, label %.thread96

.thread96:                                        ; preds = %bb.u
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.dy = load ptr, ptr %1, align 8, !tbaa !361
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 24
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = add i32 %i.ed, -1
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %.lr.ph106
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge, label %.lr.ph106, !llvm.loop !603

._crit_edge:                                      ; preds = %bb.v, %.thread88
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.eg = load ptr, ptr %1, align 8, !tbaa !361
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 24
  %i.el = trunc i64 %i.ek to i32
  br label %bb.w

bb.w:                                             ; preds = %.split.loop.exit, %.thread96, %._crit_edge
  %.8 = phi i32 [ %i.el, %._crit_edge ], [ %i.ee, %.thread96 ], [ %.364.ph, %.split.loop.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit, %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvm13R600InstrInfo11isLegalUpToERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERKS1_INS0_11BankSwizzleESaISA_EERKS5_SA_(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) ; 4 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !360
  %i.f = load ptr, ptr %1, align 8, !tbaa !361
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp eq i64 %i.j, %i.d                   ; 2 uses
  br i1 %i.k, label %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8               ; 4 uses
  %.val9 = load ptr, ptr %i.b, align 8
  %i.l = icmp sgt i32 %i.c, -1
  br i1 %i.l, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.0191.i = phi i32 [ %6, %bb.d ], [ %i.c, %bb.c ] ; 4 uses
  %5 = zext nneg i32 %.0191.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %5
  %i.n = load i32, ptr %i.m, align 4, !tbaa !367
  %i.o = icmp eq i32 %i.n, 5
  br i1 %i.o, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  %6 = add nsw i32 %.0191.i, -1
  %i.p = icmp sgt i32 %.0191.i, 0
  br i1 %i.p, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.019.lcssa.i = phi i32 [ %i.c, %bb.c ], [ %.0191.i, %.lr.ph.i ], [ -1, %bb.d ] ; 4 uses
  %i.q = ptrtoint ptr %.val9 to i64
  %i.r = ptrtoint ptr %.val to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %.0184.i = add i32 %.019.lcssa.i, 1             ; 2 uses
  %i.v = icmp ult i32 %.0184.i, %i.u
  br i1 %i.v, label %.lr.ph6.preheader.i, label %._crit_edge.i

.lr.ph6.preheader.i:                              ; preds = %.critedge.i
  %i.w = zext i32 %.0184.i to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %scevgep.i = getelementptr i8, ptr %.val, i64 %i.x
  %i.y = add i32 %i.u, -2
  %i.z = sub i32 %i.y, %.019.lcssa.i
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ac, i1 false), !tbaa !367
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph6.preheader.i, %.critedge.i
  %.not = icmp eq i32 %.019.lcssa.i, -1
  br i1 %.not, label %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.thread, label %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit

_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit: ; preds = %._crit_edge.i
  %i.ad = sext i32 %.019.lcssa.i to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !367
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !367
  br label %bb.b, !llvm.loop !2

_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.thread: ; preds = %._crit_edge.i, %bb.b
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13R600InstrInfo23fitsReadPortLimitationsERKSt6vectorIPNS_12MachineInstrESaIS3_EERKNS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEERS1_INS0_11BankSwizzleESaISH_EEb(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::vector.202", align 8   ; 15 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::vector.195", align 16  ; 7 uses
  %7 = alloca %"class.std::vector.195", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %3, align 8, !tbaa !365    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !607
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !607
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE5clearEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.e = load ptr, ptr %1, align 8, !tbaa !369    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !369  ; 2 uses
  %.not6475 = icmp eq ptr %i.e, %i.g
  br i1 %.not6475, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br i1 %4, label %_ZNSt6vectorISt4pairIijESaIS1_EEaSEOS3_.exit, label %.preheader

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit
  %.sroa.057.076 = phi ptr [ %i.e, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.057.076, align 8, !tbaa !370 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK4llvm13R600InstrInfo11ExtractSrcsERNS_12MachineInstrERKNS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEERj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.195") align 8 %6, ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !360  ; 5 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !371
  %.not.i.i31 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i31, label %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit, label %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.c
  %i.p = load <2 x ptr>, ptr %6, align 16, !tbaa !363
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !363
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.j, align 16, !tbaa !349
  store ptr %i.r, ptr %i.q, align 8, !tbaa !349
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.s, ptr %i.h, align 8, !tbaa !360
  br label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c
  call void @_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %.pr = load ptr, ptr %6, align 16, !tbaa !362   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit
  %i.t = load ptr, ptr %i.j, align 16, !tbaa !349
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %.pr to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.w) #27
  br label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit.thread, %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE9push_backEOS3_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !125
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN4llvm4R600L30getInstructionIndexForOpLookupEjE16InstructionIndex, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !51
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [107 x i8], ptr @_ZZN4llvm4R60018getNamedOperandIdxEjNS0_6OpNameEE10OperandMap, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 93
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !51
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.aj = and i64 %i.ag, 4294967295
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !51
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !607 ; 4 uses
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !608
  %.not.i.i32 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !367
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !607
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit
  %i.ar = load ptr, ptr %3, align 8, !tbaa !365   ; 4 uses
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775804
  br i1 %i.av, label %bb.g, label %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aw = ashr exact i64 %i.au, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 2305843009213693951)
  %i.ba = select i1 %i.ay, i64 2305843009213693951, i64 %i.az ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #25 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store i32 %i.an, ptr %i.bd, align 4, !tbaa !367
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.h, label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 4 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !608
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bi) #27
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bc, ptr %3, align 8, !tbaa !365
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !607
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bj, ptr %i.k, align 8, !tbaa !608
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.057.076, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.bk, %i.g
  br i1 %.not64, label %._crit_edge, label %bb.c

.preheader:                                       ; preds = %._crit_edge, %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i
  %i.bl = call noundef i32 @_ZNK4llvm13R600InstrInfo11isLegalUpToERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERKS1_INS0_11BankSwizzleESaISA_EERKS5_SA_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 noundef 0) ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
end_hunk_0
