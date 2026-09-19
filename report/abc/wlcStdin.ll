Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcStdin?download=true
inline.NumInlined: 44
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wlc_ComputeSum:bb.a
  %.not.epil.not = icmp sgt i32 %3, %i.z
  %i.aa = select i1 %.not.epil.not, i8 0, i8 %i.b
  %.0.epil = sub i8 %i.y, %i.aa
  store i8 %.0.epil, ptr %i.t, align 1, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Wlc_ConvertToRadix(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.b = add i32 %2, -1                           ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.b, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %2 ; 8 uses
  store i32 %spec.store.select.i.i, ptr %i.a, align 8, !tbaa !14
  %.not.i.i = icmp ne i32 %spec.store.select.i.i, 0 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %Vec_StrStart.exit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i.i to i64   ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #17
  br label %Vec_StrStart.exit

Vec_StrStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !15
  %i.h = sext i32 %2 to i64                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #17 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.h, i1 false)
  store i8 1, ptr %i.i, align 1, !tbaa !9
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph, label %Vec_StrStart.exit.Vec_StrFree.exit_crit_edge

Vec_StrStart.exit.Vec_StrFree.exit_crit_edge:     ; preds = %Vec_StrStart.exit
  %.pre85 = zext i32 %2 to i64
  br label %Vec_StrFree.exit

.lr.ph:                                           ; preds = %Vec_StrStart.exit
  %i.k = trunc i32 %3 to i8                       ; 6 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i64 %i.l, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod125 = trunc i32 %2 to i1
  %xtraiter126 = and i64 %wide.trip.count.i, 1
  %i.n = icmp eq i64 %i.l, 0
  %unroll_iter129 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod128 = trunc i32 %2 to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Wlc_ComputeSum.exit61
  %.076 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %Wlc_ComputeSum.exit61 ] ; 3 uses
  %i.o = add nsw i32 %.076, %1                    ; 2 uses
  %i.p = ashr i32 %i.o, 5
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %.not45 = trunc i32 %i.u to i1
  br i1 %.not45, label %.lr.ph.i.preheader, label %Wlc_ComputeSum.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.01518.i = phi i8 [ %.1.i.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = add i8 %i.w, %.01518.i
  %i.aa = add i8 %i.z, %i.y                       ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %.not.i = icmp sle i32 %3, %i.ab                ; 2 uses
  %.1.i = zext i1 %.not.i to i8
  %i.ac = select i1 %.not.i, i8 %i.k, i8 0
  %.0.i = sub i8 %i.aa, %i.ac
  store i8 %.0.i, ptr %i.v, align 1, !tbaa !9
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = add i8 %i.ae, %.1.i
  %i.ai = add i8 %i.ah, %i.ag                     ; 2 uses
  %i.aj = sext i8 %i.ai to i32
  %.not.i.1 = icmp sle i32 %3, %i.aj              ; 2 uses
  %.1.i.1 = zext i1 %.not.i.1 to i8               ; 2 uses
  %i.ak = select i1 %.not.i.1, i8 %i.k, i8 0
  %.0.i.1 = sub i8 %i.ai, %i.ak
  store i8 %.0.i.1, ptr %i.ad, align 1, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Wlc_ComputeSum.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

Wlc_ComputeSum.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %Wlc_ComputeSum.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Wlc_ComputeSum.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %Wlc_ComputeSum.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01518.i.epil.init = phi i8 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %Wlc_ComputeSum.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.epil.init
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = add i8 %i.am, %.01518.i.epil.init
  %i.aq = add i8 %i.ap, %i.ao                     ; 2 uses
  %i.ar = sext i8 %i.aq to i32
  %.not.i.epil.not = icmp sgt i32 %3, %i.ar
  %i.as = select i1 %.not.i.epil.not, i8 0, i8 %i.k
  %.0.i.epil = sub i8 %i.aq, %i.as
  store i8 %.0.i.epil, ptr %i.al, align 1, !tbaa !9
  br label %Wlc_ComputeSum.exit

Wlc_ComputeSum.exit:                              ; preds = %.lr.ph.i.epil.preheader, %Wlc_ComputeSum.exit.loopexit.unr-lcssa, %bb.c
  %i.at = icmp slt i32 %.076, %i.b
  br i1 %i.at, label %.lr.ph.i52.preheader, label %Wlc_ComputeSum.exit61

.lr.ph.i52.preheader:                             ; preds = %Wlc_ComputeSum.exit
  br i1 %i.n, label %.lr.ph.i52.epil.preheader, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader, %.lr.ph.i52
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i59.1, %.lr.ph.i52 ], [ 0, %.lr.ph.i52.preheader ] ; 3 uses
  %.01518.i55 = phi i8 [ %.1.i57.1, %.lr.ph.i52 ], [ 0, %.lr.ph.i52.preheader ]
  %niter130 = phi i64 [ %niter130.next.1, %.lr.ph.i52 ], [ 0, %.lr.ph.i52.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i54 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %reass.add = shl i8 %i.av, 1
  %i.aw = or disjoint i8 %reass.add, %.01518.i55  ; 2 uses
  %i.ax = sext i8 %i.aw to i32
  %.not.i56 = icmp sle i32 %3, %i.ax              ; 2 uses
  %.1.i57 = zext i1 %.not.i56 to i8
  %i.ay = select i1 %.not.i56, i8 %i.k, i8 0
  %.0.i58 = sub i8 %i.aw, %i.ay
  store i8 %.0.i58, ptr %i.au, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %reass.add.1 = shl i8 %i.bb, 1
  %i.bc = or disjoint i8 %reass.add.1, %.1.i57    ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %.not.i56.1 = icmp sle i32 %3, %i.bd            ; 2 uses
  %.1.i57.1 = zext i1 %.not.i56.1 to i8           ; 2 uses
  %i.be = select i1 %.not.i56.1, i8 %i.k, i8 0
  %.0.i58.1 = sub i8 %i.bc, %i.be
  store i8 %.0.i58.1, ptr %i.ba, align 1, !tbaa !9
  %indvars.iv.next.i59.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %niter130.next.1 = add i64 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %Wlc_ComputeSum.exit61.loopexit.unr-lcssa, label %.lr.ph.i52, !llvm.loop !0

Wlc_ComputeSum.exit61.loopexit.unr-lcssa:         ; preds = %.lr.ph.i52
  br i1 %lcmp.mod127.not, label %Wlc_ComputeSum.exit61, label %.lr.ph.i52.epil.preheader

.lr.ph.i52.epil.preheader:                        ; preds = %Wlc_ComputeSum.exit61.loopexit.unr-lcssa, %.lr.ph.i52.preheader
  %indvars.iv.i54.epil.init = phi i64 [ 0, %.lr.ph.i52.preheader ], [ %indvars.iv.next.i59.1, %Wlc_ComputeSum.exit61.loopexit.unr-lcssa ]
  %.01518.i55.epil.init = phi i8 [ 0, %.lr.ph.i52.preheader ], [ %.1.i57.1, %Wlc_ComputeSum.exit61.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i54.epil.init ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %reass.add.epil = shl i8 %i.bg, 1
  %i.bh = or disjoint i8 %reass.add.epil, %.01518.i55.epil.init ; 2 uses
  %i.bi = sext i8 %i.bh to i32
  %.not.i56.epil.not = icmp sgt i32 %3, %i.bi
  %i.bj = select i1 %.not.i56.epil.not, i8 0, i8 %i.k
  %.0.i58.epil = sub i8 %i.bh, %i.bj
  store i8 %.0.i58.epil, ptr %i.bf, align 1, !tbaa !9
  br label %Wlc_ComputeSum.exit61

Wlc_ComputeSum.exit61:                            ; preds = %.lr.ph.i52.epil.preheader, %Wlc_ComputeSum.exit61.loopexit.unr-lcssa, %Wlc_ComputeSum.exit
  %i.bk = add nuw nsw i32 %.076, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %2
  br i1 %exitcond.not, label %Vec_StrFree.exit, label %bb.c, !llvm.loop !24

Vec_StrFree.exit:                                 ; preds = %Wlc_ComputeSum.exit61, %Vec_StrStart.exit.Vec_StrFree.exit_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %Vec_StrStart.exit.Vec_StrFree.exit_crit_edge ], [ %wide.trip.count.i, %Wlc_ComputeSum.exit61 ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.i) #18
  %smin = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %i.bl = trunc nuw i64 %.pre-phi86 to i32        ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph106, label %Vec_StrReverseOrder.exit

bb.d:                                             ; preds = %.lr.ph106
  %i.bn = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph106, label %Vec_StrReverseOrder.exit, !llvm.loop !25

.lr.ph106:                                        ; preds = %Vec_StrFree.exit, %bb.d
  %i.bp = phi i32 [ %i.bn, %bb.d ], [ %i.bl, %Vec_StrFree.exit ] ; 3 uses
  %indvars.iv105 = phi i64 [ %indvars.iv.next, %bb.d ], [ %.pre-phi86, %Vec_StrFree.exit ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv105, -1 ; 4 uses
  %i.bq = and i64 %indvars.iv.next, 4294967295
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %.not = icmp eq i8 %i.bs, 0
  br i1 %.not, label %bb.d, label %iter.check, !llvm.loop !25

iter.check:                                       ; preds = %.lr.ph106
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !17
  %i.bt = and i64 %indvars.iv.next, 4294967295    ; 8 uses
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.bt, 7
  br i1 %min.iters.check, label %.lr.ph78.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp samesign ult i64 %i.bt, 31
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.bu, 24
  %n.vec = and i64 %i.bu, 8589934560              ; 4 uses
  %i.bw = sub nsw i64 %i.bt, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = sub i64 %i.bt, %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -15 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -31 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !tbaa !9 ; 2 uses
  %wide.load109 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !9 ; 2 uses
  %i.cb = icmp slt <16 x i8> %wide.load, splat (i8 10)
  %i.cc = select <16 x i1> %i.cb, <16 x i8> splat (i8 48), <16 x i8> splat (i8 87)
  %reverse111.a = add <16 x i8> %i.cc, %wide.load
  %i.cd = icmp slt <16 x i8> %wide.load109, splat (i8 10)
  %i.ce = select <16 x i1> %i.cd, <16 x i8> splat (i8 48), <16 x i8> splat (i8 87)
  %reverse112 = add <16 x i8> %i.ce, %wide.load109
  store <16 x i8> %reverse111.a, ptr %i.bz, align 1, !tbaa !9
  store <16 x i8> %reverse112, ptr %i.ca, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph78.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec113 = and i64 %i.bu, 8589934584           ; 3 uses
  %i.cg = sub nsw i64 %i.bt, %n.vec113
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index114 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = sub i64 %i.bt, %index114
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -7 ; 2 uses
  %wide.load115 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !9 ; 2 uses
  %i.ck = icmp slt <8 x i8> %wide.load115, splat (i8 10)
  %i.cl = select <8 x i1> %i.ck, <8 x i8> splat (i8 48), <8 x i8> splat (i8 87)
  %reverse117 = add <8 x i8> %i.cl, %wide.load115
  store <8 x i8> %reverse117, ptr %i.cj, align 1, !tbaa !9
  %index.next118 = add nuw i64 %index114, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.bu, %n.vec113
  br i1 %cmp.n119, label %._crit_edge, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv80.ph = phi i64 [ %i.bt, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph78 ], [ %indvars.iv80.ph, %.lr.ph78.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv80 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9   ; 2 uses
  %i.cp = icmp slt i8 %i.co, 10
  %storemerge.v = select i1 %i.cp, i8 48, i8 87
  %storemerge = add i8 %storemerge.v, %i.co
  store i8 %storemerge, ptr %i.cn, align 1, !tbaa !9
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1
  %i.cq = trunc nuw i64 %indvars.iv80 to i32
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph78, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph78, %vec.epilog.middle.block, %middle.block
  %.not102 = icmp eq i64 %indvars.iv105, 1
  br i1 %.not102, label %thread-pre-split, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %._crit_edge
  %i.cs = lshr i64 %indvars.iv105, 1              ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.i63.epil.preheader, label %.lr.ph.i63.preheader.new

.lr.ph.i63.preheader.new:                         ; preds = %.lr.ph.i63.preheader
  %unroll_iter134 = and i64 %i.cs, 9223372036854775806
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63, %.lr.ph.i63.preheader.new
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.i63.preheader.new ], [ %indvars.iv.next.i65.1, %.lr.ph.i63 ] ; 5 uses
  %niter135 = phi i64 [ 0, %.lr.ph.i63.preheader.new ], [ %niter135.next.1, %.lr.ph.i63 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i64 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = xor i64 %indvars.iv.i64, -1
  %i.cx = add nsw i64 %indvars.iv105, %i.cw
  %sext = shl i64 %i.cx, 32
  %i.cy = ashr exact i64 %sext, 32
  %i.cz = getelementptr inbounds i8, ptr %i.e, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  store i8 %i.da, ptr %i.cu, align 1, !tbaa !9
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = xor i64 %indvars.iv.i64, 4294967294
  %i.df = add i64 %indvars.iv105, %i.de
  %sext.1 = shl i64 %i.df, 32
  %i.dg = ashr exact i64 %sext.1, 32
  %i.dh = getelementptr inbounds i8, ptr %i.e, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  store i8 %i.di, ptr %i.dc, align 1, !tbaa !9
  store i8 %i.dd, ptr %i.dh, align 1, !tbaa !9
  %indvars.iv.next.i65.1 = add nuw nsw i64 %indvars.iv.i64, 2 ; 2 uses
  %niter135.next.1 = add i64 %niter135, 2         ; 2 uses
  %niter135.ncmp.1 = icmp eq i64 %niter135.next.1, %unroll_iter134
  br i1 %niter135.ncmp.1, label %thread-pre-split.loopexit.unr-lcssa, label %.lr.ph.i63, !llvm.loop !29

Vec_StrReverseOrder.exit:                         ; preds = %bb.d, %Vec_StrFree.exit
  %i.dj = icmp sgt i32 %2, -1
  br i1 %i.dj, label %Vec_StrPush.exit, label %thread-pre-split

Vec_StrPush.exit:                                 ; preds = %Vec_StrReverseOrder.exit
  store i8 48, ptr %i.e, align 1, !tbaa !9
  br label %thread-pre-split

thread-pre-split.loopexit.unr-lcssa:              ; preds = %.lr.ph.i63
  %i.dk = and i64 %indvars.iv105, 2
  %lcmp.mod132.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod132.not, label %thread-pre-split, label %.lr.ph.i63.epil.preheader

.lr.ph.i63.epil.preheader:                        ; preds = %thread-pre-split.loopexit.unr-lcssa, %.lr.ph.i63.preheader
  %indvars.iv.i64.epil.init = phi i64 [ 0, %.lr.ph.i63.preheader ], [ %indvars.iv.next.i65.1, %thread-pre-split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i64 %i.cs to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i64.epil.init ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = xor i64 %indvars.iv.i64.epil.init, -1
  %i.do = add nsw i64 %indvars.iv105, %i.dn
  %sext.epil = shl i64 %i.do, 32
  %i.dp = ashr exact i64 %sext.epil, 32
  %i.dq = getelementptr inbounds i8, ptr %i.e, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  store i8 %i.dr, ptr %i.dl, align 1, !tbaa !9
  store i8 %i.dm, ptr %i.dq, align 1, !tbaa !9
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph.i63.epil.preheader, %thread-pre-split.loopexit.unr-lcssa, %._crit_edge, %Vec_StrReverseOrder.exit, %Vec_StrPush.exit
  %i.ds = phi i32 [ 1, %Vec_StrPush.exit ], [ 1, %._crit_edge ], [ %smin, %Vec_StrReverseOrder.exit ], [ %i.bp, %thread-pre-split.loopexit.unr-lcssa ], [ %i.bp, %.lr.ph.i63.epil.preheader ] ; 3 uses
  %i.dt = icmp eq i32 %i.ds, %spec.store.select.i.i
  br i1 %i.dt, label %bb.e, label %Vec_StrPush.exit73

bb.e:                                             ; preds = %thread-pre-split
  %i.du = icmp slt i32 %spec.store.select.i.i, 16
  br i1 %i.du, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i71 = icmp eq ptr %i.e, null
  br i1 %.not9.i.i71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.e, i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i69

bb.h:                                             ; preds = %bb.f
  %i.dw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i69

bb.i:                                             ; preds = %bb.e
  %i.dx = icmp samesign ult i32 %spec.store.select.i.i, 1073741823
  %i.dy = shl nuw nsw i32 %spec.store.select.i.i, 1
  %spec.select.i66 = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i9.i67 = icmp samesign ult i32 %spec.store.select.i.i, %spec.select.i66
  br i1 %.not.i9.i67, label %bb.j, label %Vec_StrPush.exit73

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i68 = icmp eq ptr %i.e, null
  %i.dz = zext nneg i32 %spec.select.i66 to i64   ; 2 uses
  br i1 %.not9.i10.i68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.dz) #19
  br label %Vec_StrGrow.exit11.sink.split.i69

bb.l:                                             ; preds = %bb.j
  %i.eb = tail call noalias ptr @malloc(i64 noundef %i.dz) #17
  br label %Vec_StrGrow.exit11.sink.split.i69

Vec_StrGrow.exit11.sink.split.i69:                ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge75 = phi ptr [ %i.dw, %bb.h ], [ %i.dv, %bb.g ], [ %i.ea, %bb.k ], [ %i.eb, %bb.l ] ; 2 uses
  %spec.select.sink.i70 = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i66, %bb.k ], [ %spec.select.i66, %bb.l ]
  store ptr %storemerge75, ptr %i.g, align 8, !tbaa !15
  store i32 %spec.select.sink.i70, ptr %i.a, align 8, !tbaa !14
  br label %Vec_StrPush.exit73

Vec_StrPush.exit73:                               ; preds = %thread-pre-split, %bb.i, %Vec_StrGrow.exit11.sink.split.i69
  %i.ec = phi ptr [ %i.e, %thread-pre-split ], [ %i.e, %bb.i ], [ %storemerge75, %Vec_StrGrow.exit11.sink.split.i69 ]
  %i.ed = add nsw i32 %i.ds, 1
  store i32 %i.ed, ptr %i.f, align 4, !tbaa !17
end_hunk_0
