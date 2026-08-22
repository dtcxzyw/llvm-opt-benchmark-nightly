Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/div-burnikel?download=true
inline.NumInlined: 165
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v86bigint12_GLOBAL__N_12BZ5D3n2nENS0_8RWDigitsES3_NS0_6DigitsES4_S4_:bb.a
  %i.bb = sub i64 %.sroa.025.0.copyload219, %i.a
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i122.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0.copyload, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <2 x i64>, ptr %i.bc, align 1
  %wide.load220 = load <2 x i64>, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %wide.load, ptr %i.be, align 4
  store <2 x i64> %wide.load220, ptr %i.bf, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i123.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %indvars.iv.i123.prol = phi i64 [ %indvars.iv.next.i125.prol, %.lr.ph.i122.prol ], [ %indvars.iv.i123.ph, %.lr.ph.i122.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0.copyload, i64 %indvars.iv.i123.prol
  %.0.copyload.i.i.i124.prol = load i64, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i123.prol
  store i64 %.0.copyload.i.i.i124.prol, ptr %i.bi, align 4
  %indvars.iv.next.i125.prol = add nuw nsw i64 %indvars.iv.i123.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !16

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %indvars.iv.i123.unr = phi i64 [ %indvars.iv.i123.ph, %.lr.ph.i122.preheader ], [ %indvars.iv.next.i125.prol, %.lr.ph.i122.prol ]
  %i.bj = sub nsw i64 %indvars.iv.i123.ph, %wide.trip.count.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.preheader.i, label %.lr.ph.i122

.preheader.i:                                     ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block, %bb.h
  %i.bl = icmp ult i32 %.sroa.226.0.copyload, %i.d
  br i1 %i.bl, label %.lr.ph18.preheader.i, label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit

.lr.ph18.preheader.i:                             ; preds = %.preheader.i
  %i.bm = zext nneg i32 %.sroa.speculated.i120 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.bn
  %i.bo = xor i32 %.sroa.speculated.i120, -1
  %i.bp = add nsw i32 %i.d, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bs, i1 false)
  br label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %indvars.iv.i123 = phi i64 [ %indvars.iv.next.i125.3, %.lr.ph.i122 ], [ %indvars.iv.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0.copyload, i64 %indvars.iv.i123
  %.0.copyload.i.i.i124 = load i64, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i123
  store i64 %.0.copyload.i.i.i124, ptr %i.bu, align 4
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i123, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0.copyload, i64 %indvars.iv.next.i125
  %.0.copyload.i.i.i124.1 = load i64, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i125
  store i64 %.0.copyload.i.i.i124.1, ptr %i.bw, align 4
  %indvars.iv.next.i125.1 = add nuw nsw i64 %indvars.iv.i123, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0.copyload, i64 %indvars.iv.next.i125.1
  %.0.copyload.i.i.i124.2 = load i64, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i125.1
  store i64 %.0.copyload.i.i.i124.2, ptr %i.by, align 4
  %indvars.iv.next.i125.2 = add nuw nsw i64 %indvars.iv.i123, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0.copyload, i64 %indvars.iv.next.i125.2
  %.0.copyload.i.i.i124.3 = load i64, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i125.2
  store i64 %.0.copyload.i.i.i124.3, ptr %i.ca, align 4
  %indvars.iv.next.i125.3 = add nuw nsw i64 %indvars.iv.i123, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i125.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i122, !llvm.loop !17

_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit: ; preds = %.preheader.i, %.lr.ph18.preheader.i
  %.not1.i.i126 = icmp eq i32 %i.aw, 0
  %i.cb = zext i32 %i.aw to i64
  %indvars.iv.next.i60.i = add nsw i64 %i.cb, -1  ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i60.i
  %i.cd = add i32 %4, 1
  %i.ce = zext i32 %4 to i64                      ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ce
  %.not1.i26.i = icmp eq i32 %4, 0
  %indvars.iv.next.i2965.i = add nsw i64 %i.ce, -1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i2965.i
  %indvars.i.i132211 = trunc i64 %indvars.iv.next.i60.i to i32
  %indvars.i31.i214 = trunc i64 %indvars.iv.next.i2965.i to i32 ; 2 uses
  %.not.i32.i215 = icmp eq i32 %indvars.i31.i214, 0
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit, %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit
  %.2 = phi i64 [ %.1, %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit ], [ %i.de, %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit ] ; 4 uses
  br i1 %.not1.i.i126, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i128, label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %bb.i
  %.0.copyload.i.i.i61.i = load i64, ptr %i.cc, align 1
  %i.ch = icmp eq i64 %.0.copyload.i.i.i61.i, 0
  br i1 %i.ch, label %.lr.ph.i131.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i128

.lr.ph.i131.preheader:                            ; preds = %.lr.ph.i.i127, %.lr.ph.i131
  %indvars.i.i132213 = phi i32 [ %indvars.i.i132, %.lr.ph.i131 ], [ %indvars.i.i132211, %.lr.ph.i.i127 ]
  %indvars.iv.next.i62.i212 = phi i64 [ %indvars.iv.next.i.i134, %.lr.ph.i131 ], [ %indvars.iv.next.i60.i, %.lr.ph.i.i127 ]
  %indvars.iv.next.i.i134 = add nsw i64 %indvars.iv.next.i62.i212, -1 ; 3 uses
  %i.ci = and i64 %indvars.iv.next.i.i134, 4294967295
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ci
  %.0.copyload.i.i.i.i135 = load i64, ptr %i.cj, align 1
  %i.ck = icmp eq i64 %.0.copyload.i.i.i.i135, 0
  br i1 %i.ck, label %.lr.ph.i131, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i128, !llvm.loop !5

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader
  %indvars.i.i132 = trunc i64 %indvars.iv.next.i.i134 to i32 ; 2 uses
  %.not.i.i133 = icmp eq i32 %indvars.i.i132, 0
  br i1 %.not.i.i133, label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i136, label %.lr.ph.i131.preheader, !llvm.loop !5

._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i136: ; preds = %.lr.ph.i131
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit.i128, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit.i128:       ; preds = %.lr.ph.i131.preheader, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i136, %.lr.ph.i.i127, %bb.i
  %.sroa.6.1.i = phi i32 [ 0, %bb.i ], [ %i.aw, %.lr.ph.i.i127 ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i136 ], [ %indvars.i.i132213, %.lr.ph.i131.preheader ] ; 3 uses
  %i.cl = icmp eq i64 %.2, 0
  br i1 %i.cl, label %bb.j, label %_ZN2v86bigint6Digits9NormalizeEv.exit33.thread.i

bb.j:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i128
  %i.cm = sub i32 0, %.sroa.6.1.i
  br i1 %.not1.i26.i, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.j
  %.0.copyload.i.i.i3066.i = load i64, ptr %i.cg, align 1
  %i.cn = icmp eq i64 %.0.copyload.i.i.i3066.i, 0
  br i1 %i.cn, label %.lr.ph68.i.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit33.i

.lr.ph68.i.preheader:                             ; preds = %.lr.ph.i27.i
  br i1 %.not.i32.i215, label %._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i, label %.lr.ph218, !llvm.loop !5

.lr.ph218:                                        ; preds = %.lr.ph68.i.preheader
  br label %bb.k, !llvm.loop !5

bb.k:                                             ; preds = %.lr.ph218, %.lr.ph68.i
  %indvars.i31.i217 = phi i32 [ %indvars.i31.i214, %.lr.ph218 ], [ %indvars.i31.i, %.lr.ph68.i ]
  %indvars.iv.next.i2967.i216 = phi i64 [ %indvars.iv.next.i2965.i, %.lr.ph218 ], [ %indvars.iv.next.i29.i, %.lr.ph68.i ]
  %indvars.iv.next.i29.i = add nsw i64 %indvars.iv.next.i2967.i216, -1 ; 3 uses
  %i.co = and i64 %indvars.iv.next.i29.i, 4294967295
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.co
  %.0.copyload.i.i.i30.i = load i64, ptr %i.cp, align 1
  %i.cq = icmp eq i64 %.0.copyload.i.i.i30.i, 0
  br i1 %i.cq, label %.lr.ph68.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit33.i, !llvm.loop !5

.lr.ph68.i:                                       ; preds = %bb.k
  %indvars.i31.i = trunc i64 %indvars.iv.next.i29.i to i32 ; 2 uses
  %.not.i32.i = icmp eq i32 %indvars.i31.i, 0
  br i1 %.not.i32.i, label %.lr.ph68.i.._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i_crit_edge, label %bb.k, !llvm.loop !5

.lr.ph68.i.._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i_crit_edge: ; preds = %.lr.ph68.i
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i, !llvm.loop !5

._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i: ; preds = %.lr.ph68.i.._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i_crit_edge, %.lr.ph68.i.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit33.i, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit33.i:        ; preds = %bb.k, %._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i, %.lr.ph.i27.i
  %.019.i = phi i32 [ %4, %.lr.ph.i27.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit33_crit_edge.i ], [ %indvars.i31.i217, %bb.k ] ; 2 uses
  %i.cr = sub i32 %.019.i, %.sroa.6.1.i           ; 2 uses
  %.not.i130 = icmp eq i32 %i.cr, 0
  br i1 %.not.i130, label %.thread57.i, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit

_ZN2v86bigint6Digits9NormalizeEv.exit33.thread.i: ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i128
  %i.cs = sub i32 %i.cd, %.sroa.6.1.i             ; 2 uses
  %.not50.i = icmp eq i32 %i.cs, 0
  br i1 %.not50.i, label %.thread.i, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit

.thread.i:                                        ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit33.thread.i
  %.0.copyload.i.i.i129 = load i64, ptr %i.cf, align 1 ; 2 uses
  %i.ct = icmp ugt i64 %.2, %.0.copyload.i.i.i129
  br i1 %i.ct, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.cu = icmp ult i64 %.2, %.0.copyload.i.i.i129
  br i1 %i.cu, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166, label %.thread57.i

.thread57.i:                                      ; preds = %bb.l, %_ZN2v86bigint6Digits9NormalizeEv.exit33.i
  %.019.sink.i = phi i32 [ %.019.i, %_ZN2v86bigint6Digits9NormalizeEv.exit33.i ], [ %4, %bb.l ]
  %i.cv = add i32 %.019.sink.i, -1                ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %.lr.ph73.preheader.i, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread

.lr.ph73.preheader.i:                             ; preds = %.thread57.i
  %10 = zext nneg i32 %i.cv to i64
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.m, %.lr.ph73.preheader.i
  %indvars.iv.i130 = phi i64 [ %10, %.lr.ph73.preheader.i ], [ %indvars.iv.next.i131, %bb.m ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i130
  %.0.copyload.i.i35.i = load i64, ptr %i.cx, align 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i130
  %.0.copyload.i.i36.i = load i64, ptr %i.cy, align 1 ; 2 uses
  %i.cz = icmp eq i64 %.0.copyload.i.i35.i, %.0.copyload.i.i36.i
  br i1 %i.cz, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph73.i
  %indvars.iv.next.i131 = add nsw i64 %indvars.iv.i130, -1
  %i.da = icmp sgt i64 %indvars.iv.i130, 0
  br i1 %i.da, label %.lr.ph73.i, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread, !llvm.loop !18

.critedge.i:                                      ; preds = %.lr.ph73.i
  %i.db = icmp ugt i64 %.0.copyload.i.i35.i, %.0.copyload.i.i36.i
  br i1 %i.db, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166

_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit: ; preds = %bb.j, %_ZN2v86bigint6Digits9NormalizeEv.exit33.i, %_ZN2v86bigint6Digits9NormalizeEv.exit33.thread.i
  %.121.i = phi i32 [ %i.cr, %_ZN2v86bigint6Digits9NormalizeEv.exit33.i ], [ %i.cs, %_ZN2v86bigint6Digits9NormalizeEv.exit33.thread.i ], [ %i.cm, %bb.j ]
  %i.dc = icmp slt i32 %.121.i, 0
  br i1 %i.dc, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166, label %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread

_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166: ; preds = %bb.l, %.critedge.i, %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit
  %i.dd = tail call noundef i64 @_ZN2v86bigint17AddAndReturnCarryENS0_8RWDigitsENS0_6DigitsES2_(ptr %3, i32 %4, ptr %3, i32 %4, ptr %.sroa.085.0.copyload, i32 %i.c) #9
  %i.de = add i64 %i.dd, %.2
  %.0.copyload.i.peel.i = load i64, ptr %1, align 4
  %i.df = zext i64 %.0.copyload.i.peel.i to i128
  %i.dg = add nsw i128 %i.df, -1                  ; 2 uses
  %i.dh = trunc i128 %i.dg to i64
  store i64 %i.dh, ptr %1, align 4
  %i.di = and i128 %i.dg, 18446744073709551616
  %.not.peel.i = icmp eq i128 %i.di, 0
  br i1 %.not.peel.i, label %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166, %.peel.next.i
  %.0.i = phi i32 [ %i.do, %.peel.next.i ], [ 1, %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166 ] ; 2 uses
  %i.dj = zext i32 %.0.i to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dj ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.dk, align 4
  %i.dl = zext i64 %.0.copyload.i.i to i128
  %i.dm = add nsw i128 %i.dl, -1                  ; 2 uses
  %i.dn = trunc i128 %i.dm to i64
  store i64 %i.dn, ptr %i.dk, align 4
  %i.do = add i32 %.0.i, 1
  %i.dp = and i128 %i.dm, 18446744073709551616
  %.not.i137 = icmp eq i128 %i.dp, 0
  br i1 %.not.i137, label %_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit, label %.peel.next.i, !llvm.loop !19

_ZN2v86bigint8SubtractENS0_8RWDigitsEm.exit:      ; preds = %.peel.next.i, %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread166
  br label %bb.i, !llvm.loop !21

_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread: ; preds = %.critedge.i, %.thread57.i, %.thread.i, %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit, %bb.m
  %i.dq = tail call noundef i64 @_ZN2v86bigint23SubtractAndReturnBorrowENS0_8RWDigitsENS0_6DigitsES2_(ptr %3, i32 %4, ptr %3, i32 %4, ptr %i.av, i32 %i.aw) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_114SpecialCompareEmNS0_6DigitsES2_.exit.thread, %bb.g, %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit.thread159
  ret void
}

declare void @_ZN2v86bigint13ProcessorImpl12DivideSingleENS0_8RWDigitsEPmNS0_6DigitsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr, i32, ptr noundef, ptr, i32, i64 noundef) local_unnamed_addr #2

declare void @_ZN2v86bigint13ProcessorImpl16DivideSchoolbookENS0_8RWDigitsES2_NS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr, i32, ptr, i32, ptr noundef byval(%"class.v8::bigint::Digits") align 8, ptr noundef byval(%"class.v8::bigint::Digits") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_(ptr, i32, ptr, i32, ptr, i32) local_unnamed_addr #2

declare noundef i64 @_ZN2v86bigint17AddAndReturnCarryENS0_8RWDigitsENS0_6DigitsES2_(ptr, i32, ptr, i32, ptr, i32) local_unnamed_addr #2

declare void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr, i32, ptr, i32, ptr noundef byval(%"class.v8::bigint::Digits") align 8) local_unnamed_addr #2

declare noundef i64 @_ZN2v86bigint23SubtractAndReturnBorrowENS0_8RWDigitsENS0_6DigitsES2_(ptr, i32, ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6, !10, !11}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !6, !10}
!15 = distinct !{!15, !6, !10, !11}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !6, !10}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6, !20}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = distinct !{!21, !6}
end_hunk_0
