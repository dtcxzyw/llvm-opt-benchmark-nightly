Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTtopt?download=true
inline.NumInlined: 1562
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5Ttopt14TruthTableCare19OptimizationStartupEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt6vectorISt4pairIiiESaIS2_EEEvPT_.exit.i.i.i.i21, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !118
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #27
  br label %_ZSt8_DestroyISt6vectorISt4pairIiiESaIS2_EEEvPT_.exit.i.i.i.i21

_ZSt8_DestroyISt6vectorISt4pairIiiESaIS2_EEEvPT_.exit.i.i.i.i21: ; preds = %bb.k, %.lr.ph.i.i.i.i18
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 24 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bj, %i.ai
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyIPSt6vectorISt4pairIiiESaIS2_EEEvT_S6_.exit.i.i23, label %.lr.ph.i.i.i.i18, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorISt4pairIiiESaIS2_EEEvT_S6_.exit.i.i23: ; preds = %_ZSt8_DestroyISt6vectorISt4pairIiiESaIS2_EEEvPT_.exit.i.i.i.i21
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !114
  br label %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorISt4pairIiiESaIS2_EEEvT_S6_.exit.i.i23
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !95 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE6resizeEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit, %_ZNSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE6resizeEm.exit
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit
  %i.bo = phi i32 [ %i.bl, %.lr.ph ], [ %i.eh, %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit ] ; 4 uses
  %.038 = phi i32 [ 0, %.lr.ph ], [ %i.ei, %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit ] ; 5 uses
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !94  ; 7 uses
  %i.bq = icmp sgt i32 %i.bp, 6
  br i1 %i.bq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.br = add nsw i32 %i.bp, -6                   ; 4 uses
  %.not1819.not.i = icmp eq i32 %i.br, 31
  br i1 %.not1819.not.i, label %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bs = shl nuw i32 1, %i.br                    ; 3 uses
  %i.bt = shl i32 %.038, %i.br
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.bv = sext i32 %i.bt to i64                   ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i26, label %bb.o, !llvm.loop !10

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bw = load i64, ptr %gep.i, align 8, !tbaa !82
  %.not17.i = icmp eq i64 %i.bw, 0
  br i1 %.not17.i, label %bb.n, label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.bx = sub nsw i32 6, %i.bp                    ; 2 uses
  %i.by = lshr i32 %.038, %i.bx
  %i.bz = shl nuw i32 1, %i.bx
  %i.ca = srem i32 %.038, %i.bz
  %i.cb = shl i32 %i.ca, %i.bp
  %i.cc = zext nneg i32 %i.by to i64              ; 2 uses
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cg = zext i32 %i.cb to i64                   ; 4 uses
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = sext i32 %i.bp to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !82 ; 4 uses
  %i.cl = and i64 %i.ch, %i.ck
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %.thread.i24, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p
  %i.cm = load ptr, ptr %0, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %.038, i32 noundef 0) #22 ; 0 uses
  %.pre41 = load i32, ptr %i.bk, align 4, !tbaa !95
  br label %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit

.lr.ph.i26:                                       ; preds = %bb.n
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %invariant.gep.i29 = getelementptr [8 x i8], ptr %i.cq, i64 %i.bv ; 4 uses
  %min.iters.check = icmp slt i32 %i.bs, 4
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi71 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.cr = getelementptr [8 x i8], ptr %invariant.gep.i29, i64 %index ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %wide.load = load <2 x i64>, ptr %i.cr, align 8, !tbaa !82
  %wide.load72 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !82
  %i.ct = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cu = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load72)
  %i.cv = trunc nuw nsw <2 x i64> %i.ct to <2 x i32>
  %i.cw = trunc nuw nsw <2 x i64> %i.cu to <2 x i32>
  %i.cx = add <2 x i32> %vec.phi, %i.cv           ; 2 uses
  %i.cy = add <2 x i32> %vec.phi71, %i.cw         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cy, %i.cx
  %i.da = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %._crit_edge.thread.i

scalar.ph:                                        ; preds = %.lr.ph.i26
  %i.db = load i64, ptr %invariant.gep.i29, align 8, !tbaa !82
  %i.dc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.db)
  %i.dd = trunc nuw nsw i64 %i.dc to i32          ; 2 uses
  %exitcond.not.i33 = icmp slt i32 %i.bs, 2
  br i1 %exitcond.not.i33, label %._crit_edge.thread.i, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %gep.i31.1 = getelementptr i8, ptr %invariant.gep.i29, i64 8
  %i.de = load i64, ptr %gep.i31.1, align 8, !tbaa !82
  %i.df = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.de)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dd, %i.dg            ; 2 uses
  %exitcond.not.i33.1 = icmp eq i32 %i.br, 1
  br i1 %exitcond.not.i33.1, label %._crit_edge.thread.i, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %gep.i31.2 = getelementptr i8, ptr %invariant.gep.i29, i64 16
  %i.di = load i64, ptr %gep.i31.2, align 8, !tbaa !82
  %i.dj = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.di)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk
  br label %._crit_edge.thread.i

.thread.i24:                                      ; preds = %bb.p
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.cc ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !82 ; 2 uses
  %i.dp = lshr i64 %i.do, %i.cg
  %i.dq = and i64 %i.dp, %i.ck
  %i.dr = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dq)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = add nsw i32 %i.bp, -1
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = icmp samesign ult i32 %i.du, %i.ds
  %i.dw = select i1 %i.dv, i64 %i.ck, i64 0
  %i.dx = shl i64 %i.ck, %i.cg
  %i.dy = xor i64 %i.dx, -1
  %i.dz = and i64 %i.do, %i.dy
  %i.ea = shl i64 %i.dw, %i.cg
  %i.eb = xor i64 %i.ea, %i.dz
  store i64 %i.eb, ptr %i.dn, align 8, !tbaa !82
  br label %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit

._crit_edge.thread.i:                             ; preds = %scalar.ph, %scalar.ph.1, %scalar.ph.2, %middle.block
  %.lcssa = phi i32 [ %i.da, %middle.block ], [ %i.dd, %scalar.ph ], [ %i.dh, %scalar.ph.1 ], [ %i.dl, %scalar.ph.2 ]
  %i.ec = add nsw i32 %i.bp, -1
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = icmp sgt i32 %.lcssa, %i.ed
  %i.ef = shl nsw i64 %i.bv, 3
  %scevgep87.i.i = getelementptr nuw i8, ptr %i.cq, i64 %i.ef ; 2 uses
  %i.eg = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  br i1 %i.ee, label %.lr.ph68.i.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %._crit_edge.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep87.i.i, i8 0, i64 %i.eg, i1 false), !tbaa !82
  br label %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit

.lr.ph68.i.i:                                     ; preds = %._crit_edge.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep87.i.i, i8 -1, i64 %i.eg, i1 false), !tbaa !82
  br label %_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit

_ZN5Ttopt17TruthTableRewrite15ShiftToMajorityEii.exit: ; preds = %bb.m, %.lr.ph68.i.i, %.lr.ph64.i.i, %.thread.i24, %.loopexit
  %i.eh = phi i32 [ %.pre41, %.loopexit ], [ %i.bo, %bb.m ], [ %i.bo, %.lr.ph68.i.i ], [ %i.bo, %.lr.ph64.i.i ], [ %i.bo, %.thread.i24 ] ; 2 uses
  %i.ei = add nuw nsw i32 %.038, 1                ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %i.eh
  br i1 %i.ej, label %bb.l, label %._crit_edge, !llvm.loop !362
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ttopt14TruthTableCare13CompleteMergeEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph15, label %._crit_edge

.lr.ph15:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %1 = zext nneg i32 %i.b to i64
  %i.h = zext nneg i32 %i.b to i64
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge.i, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, %bb.b
  %i.i = icmp sgt i64 %indvars.iv, 1
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !363

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph15, %.loopexit
  %indvars.iv = phi i64 [ %1, %.lr.ph15 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134, !noalias !375 ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !134, !noalias !376 ; 3 uses
  %.not11 = icmp eq ptr %i.l, %i.m
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.h, %indvars.iv.next   ; 5 uses
  %i.o = icmp samesign ugt i64 %i.n, 6
  %i.p = trunc nuw nsw i64 %i.n to i32            ; 3 uses
  %i.q = lshr exact i32 64, %i.p                  ; 2 uses
  %2 = trunc nuw i64 %i.n to i32
  %3 = add nsw i32 %2, -6                         ; 8 uses
  %i.r = shl nuw i32 1, %3                        ; 5 uses
  %i.s = icmp eq i32 %3, 31                       ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 7 uses
  %i.t = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  br i1 %i.o, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check33 = icmp slt i32 %i.r, 6
  %n.vec35 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.u = icmp slt i32 %i.r, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp slt i32 %i.r, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %xtraiter49 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.v = icmp slt i32 %i.r, 4
  %unroll_iter53 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod51.not = icmp eq i64 %xtraiter49, 0
  %lcmp.mod52 = icmp ne i64 %xtraiter49, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us
  %.sroa.06.012.us = phi ptr [ %i.w, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us ], [ %i.l, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.06.012.us, i64 -8 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.06.012.us, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !132  ; 4 uses
  %i.z = load i32, ptr %i.w, align 4, !tbaa !131  ; 2 uses
  %i.aa = ashr i32 %i.z, 1                        ; 3 uses
  %i.ab = trunc i32 %i.z to i1
  %i.ac = icmp slt i32 %i.aa, 0                   ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  br i1 %i.ac, label %.preheader58.i.us, label %.preheader60.i.us

.preheader60.i.us:                                ; preds = %bb.c
  br i1 %i.s, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader60.i.us
  %i.ad = shl i32 %i.aa, %3
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %i.af = shl i32 %i.y, %3
  %i.ag = sext i32 %i.ad to i64                   ; 2 uses
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.ae, i64 %i.ag ; 6 uses
  %invariant.gep101.i.us = getelementptr [8 x i8], ptr %i.ae, i64 %i.ah ; 6 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.memcheck30

scalar.ph32.preheader:                            ; preds = %vector.memcheck30, %.lr.ph.i.us
  br i1 %i.u, label %scalar.ph32.epil.preheader, label %scalar.ph32

vector.memcheck30:                                ; preds = %.lr.ph.i.us
  %i.ai = sub nsw i64 %i.ah, %i.ag
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = add nsw i64 %i.aj, -1
  %diff.check31 = icmp ult i64 %i.ak, 31
  br i1 %diff.check31, label %scalar.ph32.preheader, label %vector.body36

vector.body36:                                    ; preds = %vector.memcheck30, %vector.body36
  %index37 = phi i64 [ %index.next40, %vector.body36 ], [ 0, %vector.memcheck30 ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %index37 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.al, align 8, !tbaa !82
  %wide.load39 = load <2 x i64>, ptr %i.am, align 8, !tbaa !82
  %i.an = getelementptr [8 x i8], ptr %invariant.gep101.i.us, i64 %index37 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <2 x i64> %wide.load38, ptr %i.an, align 8, !tbaa !82
  store <2 x i64> %wide.load39, ptr %i.ao, align 8, !tbaa !82
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.ap, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %vector.body36, !llvm.loop !368

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %scalar.ph32 ], [ 0, %scalar.ph32.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph32 ], [ 0, %scalar.ph32.preheader ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %i.aq = load i64, ptr %gep.i.us, align 8, !tbaa !82
  %gep102.i.us = getelementptr [8 x i8], ptr %invariant.gep101.i.us, i64 %indvars.iv.i.us
  store i64 %i.aq, ptr %gep102.i.us, align 8, !tbaa !82
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %gep.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us
  %i.ar = load i64, ptr %gep.i.us.1, align 8, !tbaa !82
  %gep102.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep101.i.us, i64 %indvars.iv.next.i.us
  store i64 %i.ar, ptr %gep102.i.us.1, align 8, !tbaa !82
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %gep.i.us.2 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us.1
  %i.as = load i64, ptr %gep.i.us.2, align 8, !tbaa !82
  %gep102.i.us.2 = getelementptr [8 x i8], ptr %invariant.gep101.i.us, i64 %indvars.iv.next.i.us.1
  store i64 %i.as, ptr %gep102.i.us.2, align 8, !tbaa !82
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %gep.i.us.3 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us.2
  %i.at = load i64, ptr %gep.i.us.3, align 8, !tbaa !82
  %gep102.i.us.3 = getelementptr [8 x i8], ptr %invariant.gep101.i.us, i64 %indvars.iv.next.i.us.2
  store i64 %i.at, ptr %gep102.i.us.3, align 8, !tbaa !82
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit45.unr-lcssa, label %scalar.ph32, !llvm.loop !369

.preheader58.i.us:                                ; preds = %bb.c
  br i1 %i.s, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %.lr.ph64.i.us

.lr.ph64.i.us:                                    ; preds = %.preheader58.i.us
  %i.au = shl i32 %i.y, %3
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.aw = sext i32 %i.au to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %scevgep.i.us = getelementptr nuw i8, ptr %i.av, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.us, i8 0, i64 %i.t, i1 false), !tbaa !82
  br label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us

bb.d:                                             ; preds = %.lr.ph.split.us
  br i1 %i.ac, label %.preheader.i.us, label %.preheader56.i.us

.preheader56.i.us:                                ; preds = %bb.d
  br i1 %i.s, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %.lr.ph66.i.us

.lr.ph66.i.us:                                    ; preds = %.preheader56.i.us
  %i.ay = shl i32 %i.aa, %3
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %i.ba = shl i32 %i.y, %3
  %i.bb = sext i32 %i.ay to i64                   ; 2 uses
  %i.bc = sext i32 %i.ba to i64                   ; 2 uses
  %invariant.gep103.i.us = getelementptr [8 x i8], ptr %i.az, i64 %i.bb ; 6 uses
  %invariant.gep105.i.us = getelementptr [8 x i8], ptr %i.az, i64 %i.bc ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph66.i.us
  br i1 %i.v, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph66.i.us
  %i.bd = sub nsw i64 %i.bc, %i.bb
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = add nsw i64 %i.be, -1
  %diff.check = icmp ult i64 %i.bf, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep103.i.us, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !82
  %wide.load29 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !82
  %i.bi = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bj = xor <2 x i64> %wide.load29, splat (i64 -1)
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep105.i.us, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <2 x i64> %i.bi, ptr %i.bk, align 8, !tbaa !82
  store <2 x i64> %i.bj, ptr %i.bl, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %vector.body, !llvm.loop !370

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv81.i.us = phi i64 [ %indvars.iv.next82.i.us.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter54 = phi i64 [ %niter54.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep104.i.us = getelementptr [8 x i8], ptr %invariant.gep103.i.us, i64 %indvars.iv81.i.us
  %i.bn = load i64, ptr %gep104.i.us, align 8, !tbaa !82
  %i.bo = xor i64 %i.bn, -1
  %gep106.i.us = getelementptr [8 x i8], ptr %invariant.gep105.i.us, i64 %indvars.iv81.i.us
  store i64 %i.bo, ptr %gep106.i.us, align 8, !tbaa !82
  %indvars.iv.next82.i.us = or disjoint i64 %indvars.iv81.i.us, 1 ; 2 uses
  %gep104.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep103.i.us, i64 %indvars.iv.next82.i.us
  %i.bp = load i64, ptr %gep104.i.us.1, align 8, !tbaa !82
  %i.bq = xor i64 %i.bp, -1
  %gep106.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep105.i.us, i64 %indvars.iv.next82.i.us
  store i64 %i.bq, ptr %gep106.i.us.1, align 8, !tbaa !82
  %indvars.iv.next82.i.us.1 = or disjoint i64 %indvars.iv81.i.us, 2 ; 2 uses
  %gep104.i.us.2 = getelementptr [8 x i8], ptr %invariant.gep103.i.us, i64 %indvars.iv.next82.i.us.1
  %i.br = load i64, ptr %gep104.i.us.2, align 8, !tbaa !82
  %i.bs = xor i64 %i.br, -1
  %gep106.i.us.2 = getelementptr [8 x i8], ptr %invariant.gep105.i.us, i64 %indvars.iv.next82.i.us.1
  store i64 %i.bs, ptr %gep106.i.us.2, align 8, !tbaa !82
  %indvars.iv.next82.i.us.2 = or disjoint i64 %indvars.iv81.i.us, 3 ; 2 uses
  %gep104.i.us.3 = getelementptr [8 x i8], ptr %invariant.gep103.i.us, i64 %indvars.iv.next82.i.us.2
  %i.bt = load i64, ptr %gep104.i.us.3, align 8, !tbaa !82
  %i.bu = xor i64 %i.bt, -1
  %gep106.i.us.3 = getelementptr [8 x i8], ptr %invariant.gep105.i.us, i64 %indvars.iv.next82.i.us.2
  store i64 %i.bu, ptr %gep106.i.us.3, align 8, !tbaa !82
  %indvars.iv.next82.i.us.3 = add nuw nsw i64 %indvars.iv81.i.us, 4 ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !371

.preheader.i.us:                                  ; preds = %bb.d
  br i1 %i.s, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %.lr.ph68.i.us

.lr.ph68.i.us:                                    ; preds = %.preheader.i.us
  %i.bv = shl i32 %i.y, %3
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.bx = sext i32 %i.bv to i64
  %i.by = shl nsw i64 %i.bx, 3
  %scevgep87.i.us = getelementptr nuw i8, ptr %i.bw, i64 %i.by
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep87.i.us, i8 -1, i64 %i.t, i1 false), !tbaa !82
  br label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us

_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit.unr-lcssa: ; preds = %scalar.ph
  br i1 %lcmp.mod51.not, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv81.i.us.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next82.i.us.3, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv81.i.us.epil = phi i64 [ %indvars.iv.next82.i.us.epil, %scalar.ph.epil ], [ %indvars.iv81.i.us.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter50 = phi i64 [ %epil.iter50.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %gep104.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep103.i.us, i64 %indvars.iv81.i.us.epil
  %i.bz = load i64, ptr %gep104.i.us.epil, align 8, !tbaa !82
  %i.ca = xor i64 %i.bz, -1
  %gep106.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep105.i.us, i64 %indvars.iv81.i.us.epil
  store i64 %i.ca, ptr %gep106.i.us.epil, align 8, !tbaa !82
  %indvars.iv.next82.i.us.epil = add nuw nsw i64 %indvars.iv81.i.us.epil, 1
  %epil.iter50.next = add i64 %epil.iter50, 1     ; 2 uses
  %epil.iter50.cmp.not = icmp eq i64 %epil.iter50.next, %xtraiter49
  br i1 %epil.iter50.cmp.not, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %scalar.ph.epil, !llvm.loop !372

_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit45.unr-lcssa: ; preds = %scalar.ph32
  br i1 %lcmp.mod.not, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %scalar.ph32.epil.preheader

scalar.ph32.epil.preheader:                       ; preds = %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit45.unr-lcssa, %scalar.ph32.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %scalar.ph32.preheader ], [ %indvars.iv.next.i.us.3, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit45.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %scalar.ph32.epil

scalar.ph32.epil:                                 ; preds = %scalar.ph32.epil, %scalar.ph32.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %scalar.ph32.epil ], [ %indvars.iv.i.us.epil.init, %scalar.ph32.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph32.epil ], [ 0, %scalar.ph32.epil.preheader ]
  %gep.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil
  %i.cb = load i64, ptr %gep.i.us.epil, align 8, !tbaa !82
  %gep102.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep101.i.us, i64 %indvars.iv.i.us.epil
  store i64 %i.cb, ptr %gep102.i.us.epil, align 8, !tbaa !82
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us, label %scalar.ph32.epil, !llvm.loop !373

_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us: ; preds = %vector.body36, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit45.unr-lcssa, %scalar.ph32.epil, %vector.body, %_ZN5Ttopt17TruthTableRewrite8CopyFuncEiiib.exit.us.loopexit.unr-lcssa, %scalar.ph.epil, %.lr.ph68.i.us, %.preheader.i.us, %.preheader56.i.us, %.lr.ph64.i.us, %.preheader58.i.us, %.preheader60.i.us
  %.not.us = icmp eq ptr %i.w, %i.m
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !374

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cc = sub nuw nsw i64 6, %i.n                 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.n
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !82 ; 3 uses
  %.pre = trunc nuw nsw i64 %i.cc to i32
  %i.cf = trunc nuw nsw i64 %i.cc to i32          ; 2 uses
  %i.cg = add nsw i32 %i.q, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %._crit_edge.i
  %.sroa.06.012 = phi ptr [ %i.l, %.lr.ph.split ], [ %i.ch, %._crit_edge.i ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.06.012, i64 -8 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.06.012, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !132 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !131 ; 2 uses
  %i.cl = ashr i32 %i.ck, 1                       ; 3 uses
  %i.cm = trunc i32 %i.ck to i1
  %i.cn = icmp sgt i32 %i.cl, -1
  br i1 %i.cn, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.co = lshr i32 %i.cl, %i.cf
  %i.cp = and i32 %i.cl, %i.cg
  %i.cq = shl i32 %i.cp, %i.p
  %i.cr = zext nneg i32 %i.co to i64
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !82
  %i.cv = zext nneg i32 %i.cq to i64
  %i.cw = lshr i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, %i.ce
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.f
  %.pre-phi = phi i32 [ %i.cf, %bb.f ], [ %.pre, %bb.e ]
  %.0.i = phi i64 [ %i.cx, %bb.f ], [ 0, %bb.e ]
  %i.cy = select i1 %i.cm, i64 %i.ce, i64 0
  %.1.i = xor i64 %i.cy, %.0.i
  %i.cz = ashr i32 %i.cj, %.pre-phi
  %i.da = srem i32 %i.cj, %i.q
  %i.db = shl i32 %i.da, %i.p
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = shl i64 %i.ce, %i.dc
  %i.de = xor i64 %i.dd, -1
  %i.df = sext i32 %i.cz to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !82
  %i.di = and i64 %i.dh, %i.de
  %i.dj = shl i64 %.1.i, %i.dc
  %i.dk = xor i64 %i.di, %i.dj
  store i64 %i.dk, ptr %i.dg, align 8, !tbaa !82
  %.not = icmp eq ptr %i.ch, %i.m
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !374
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ttopt10TruthTableD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ttopt10TruthTableE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i:   ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.al, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 5 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !99 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #27
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.ae, %i.x
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i2
end_hunk_0
