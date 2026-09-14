Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_fma?download=true
inline.NumInlined: 103
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2:bb.a
  store <8 x float> %broadcast.splat, ptr %i.ay, align 4, !tbaa !61
  store <8 x float> %broadcast.splat, ptr %i.az, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ar
  %broadcast.splatinsert35 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat36 = shufflevector <8 x float> %broadcast.splatinsert35, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = shl i64 %index37, 2
  %next.gep38 = getelementptr i8, ptr %i.as, i64 %i.bc
  store <8 x float> %broadcast.splat36, ptr %next.gep38, align 4, !tbaa !61
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n40, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i24.ph = phi i32 [ 0, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.05.i23.ph = phi ptr [ %i.as, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0.i24 = phi i32 [ %i.bf, %vec.epilog.scalar.ph ], [ %.0.i24.ph, %vec.epilog.scalar.ph.preheader ]
  %.05.i23 = phi ptr [ %i.be, %vec.epilog.scalar.ph ], [ %.05.i23.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i23, i64 4
  store float %i.au, ptr %.05.i23, align 4, !tbaa !61
  %i.bf = add nuw nsw i32 %.0.i24, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %i.ai
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !108

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond28.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond28.not, label %._crit_edge.split, label %iter.check

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not66 = icmp sgt i32 %i.k, %i.j
  br i1 %.not66, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %5, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph69.split.preheader, label %._crit_edge70

.lr.ph69.split.preheader:                         ; preds = %.lr.ph69
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph69.split

.lr.ph69.split:                                   ; preds = %.lr.ph69.split.preheader, %._crit_edge65
  %i.t = phi i32 [ %i.p, %.lr.ph69.split.preheader ], [ %i.al, %._crit_edge65 ] ; 2 uses
  %indvars.iv84 = phi i64 [ %i.r, %.lr.ph69.split.preheader ], [ %indvars.iv.next85, %._crit_edge65 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv84, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %.lr.ph69.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv84, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !32
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.ak = add i64 %i.z, %i.ac
  br label %.lr.ph64

._crit_edge65:                                    ; preds = %._crit_edge, %.lr.ph69.split
  %i.al = phi i32 [ %i.t, %.lr.ph69.split ], [ %i.dk, %._crit_edge ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next85 to i32
  %exitcond87.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond87.not, label %._crit_edge70, label %.lr.ph69.split, !llvm.loop !110

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge
  %i.am = phi i32 [ %i.bk, %._crit_edge ], [ %.pre, %.lr.ph64.preheader ] ; 3 uses
  %.04762 = phi i32 [ %i.dj, %._crit_edge ], [ 0, %.lr.ph64.preheader ] ; 2 uses
  %.04861 = phi ptr [ %i.di, %._crit_edge ], [ %i.aj, %.lr.ph64.preheader ] ; 11 uses
  %.04861101 = ptrtoaddr ptr %.04861 to i64
  %i.an = uitofp ninf nsz nneg i32 %.04762 to float
  %i.ao = load float, ptr %6, align 4, !tbaa !61
  %i.ap = fmul fast float %i.ao, %i.an
  %i.aq = fptosi float %i.ap to i32
  %i.ar = load i32, ptr %7, align 4, !tbaa !28
  %i.as = add i32 %i.ar, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.aq)
  %i.at = mul i32 %.sroa.speculated, %i.am
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.au ; 9 uses
  %i.aw = icmp sgt i32 %i.am, 7
  br i1 %i.aw, label %.lr.ph, label %.preheader53

.preheader53.loopexit:                            ; preds = %.lr.ph
  %i.ax = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.loopexit, %.lr.ph64
  %i.ay = phi i32 [ %i.am, %.lr.ph64 ], [ %i.bg, %.preheader53.loopexit ] ; 2 uses
  %.046.lcssa = phi i32 [ 0, %.lr.ph64 ], [ %i.ax, %.preheader53.loopexit ] ; 3 uses
  %i.az = or disjoint i32 %.046.lcssa, 3
  %i.ba = icmp slt i32 %i.az, %i.ay
  br i1 %i.ba, label %.lr.ph56.preheader, label %.preheader

.lr.ph56.preheader:                               ; preds = %.preheader53
  %i.bb = zext nneg i32 %.046.lcssa to i64
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph64, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph64 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.bd = load <8 x float>, ptr %i.bc, align 32, !tbaa !20
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv
  store <8 x float> %i.bd, ptr %i.be, align 32, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.bf = or disjoint i64 %indvars.iv.next, 7
  %i.bg = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.preheader53.loopexit, !llvm.loop !111

.preheader.loopexit:                              ; preds = %.lr.ph56
  %i.bj = trunc nuw nsw i64 %indvars.iv.next77 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader53
  %i.bk = phi i32 [ %i.ay, %.preheader53 ], [ %i.cs, %.preheader.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.046.lcssa, %.preheader53 ], [ %i.bj, %.preheader.loopexit ] ; 2 uses
  %i.bl = icmp slt i32 %.1.lcssa, %i.bk
  br i1 %i.bl, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bm = zext i32 %.1.lcssa to i64               ; 7 uses
  %wide.trip.count = zext nneg i32 %i.bk to i64   ; 4 uses
  %i.bn = sub nsw i64 %wide.trip.count, %i.bm     ; 7 uses
  %min.iters.check = icmp ult i64 %i.bn, 8
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bo = shl nsw i64 %i.au, 2
  %i.bp = add i64 %i.ak, %i.bo
  %i.bq = sub i64 %i.bp, %.04861101
  %diff.check = icmp ugt i64 %i.bq, -128
  br i1 %diff.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check102 = icmp ult i64 %i.bn, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bn, 24
  %n.vec = and i64 %i.bn, -32                     ; 4 uses
  %i.bs = add nsw i64 %n.vec, %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = add nuw i64 %index, %i.bm               ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %wide.load = load <8 x float>, ptr %i.bu, align 4, !tbaa !61
  %wide.load103 = load <8 x float>, ptr %i.bv, align 4, !tbaa !61
  %wide.load104 = load <8 x float>, ptr %i.bw, align 4, !tbaa !61
  %wide.load105 = load <8 x float>, ptr %i.bx, align 4, !tbaa !61
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %i.bt ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store <8 x float> %wide.load, ptr %i.by, align 4, !tbaa !61
  store <8 x float> %wide.load103, ptr %i.bz, align 4, !tbaa !61
  store <8 x float> %wide.load104, ptr %i.ca, align 4, !tbaa !61
  store <8 x float> %wide.load105, ptr %i.cb, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec106 = and i64 %i.bn, -8                   ; 3 uses
  %i.cd = add nsw i64 %n.vec106, %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next109, %vec.epilog.vector.body ] ; 2 uses
  %i.ce = add nuw i64 %index107, %i.bm            ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ce
  %wide.load108 = load <8 x float>, ptr %i.cf, align 4, !tbaa !61
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %i.ce
  store <8 x float> %wide.load108, ptr %i.cg, align 4, !tbaa !61
  %index.next109 = add nuw i64 %index107, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next109, %n.vec106
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n110 = icmp eq i64 %i.bn, %n.vec106
  br i1 %cmp.n110, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv81.ph = phi i64 [ %i.bm, %iter.check ], [ %i.bm, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 4 uses
  %i.ci = sub nsw i64 %wide.trip.count, %indvars.iv81.ph
  %xtraiter = and i64 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol

.lr.ph60.prol:                                    ; preds = %.lr.ph60.preheader, %.lr.ph60.prol
  %indvars.iv81.prol = phi i64 [ %indvars.iv.next82.prol, %.lr.ph60.prol ], [ %indvars.iv81.ph, %.lr.ph60.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph60.prol ], [ 0, %.lr.ph60.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv81.prol
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !61
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv81.prol
  store float %i.ck, ptr %i.cl, align 4, !tbaa !61
  %indvars.iv.next82.prol = add nuw nsw i64 %indvars.iv81.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol, !llvm.loop !114

.lr.ph60.prol.loopexit:                           ; preds = %.lr.ph60.prol, %.lr.ph60.preheader
  %indvars.iv81.unr = phi i64 [ %indvars.iv81.ph, %.lr.ph60.preheader ], [ %indvars.iv.next82.prol, %.lr.ph60.prol ]
  %i.cm = sub nsw i64 %indvars.iv81.ph, %wide.trip.count
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %._crit_edge, label %.lr.ph60

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv76 = phi i64 [ %i.bb, %.lr.ph56.preheader ], [ %indvars.iv.next77, %.lr.ph56 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv76
  %i.cp = load <4 x float>, ptr %i.co, align 16, !tbaa !20
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv76
  store <4 x float> %i.cp, ptr %i.cq, align 16, !tbaa !20
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 4 ; 3 uses
  %i.cr = or disjoint i64 %indvars.iv.next77, 3
  %i.cs = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !115

.lr.ph60:                                         ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.3, %.lr.ph60 ], [ %indvars.iv81.unr, %.lr.ph60.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv81
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !61
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv81
  store float %i.cw, ptr %i.cx, align 4, !tbaa !61
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next82
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !61
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv.next82
  store float %i.cz, ptr %i.da, align 4, !tbaa !61
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next82.1
  %i.dc = load float, ptr %i.db, align 4, !tbaa !61
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv.next82.1
  store float %i.dc, ptr %i.dd, align 4, !tbaa !61
  %indvars.iv.next82.2 = add nuw nsw i64 %indvars.iv81, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next82.2
  %i.df = load float, ptr %i.de, align 4, !tbaa !61
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.04861, i64 %indvars.iv.next82.2
  store float %i.df, ptr %i.dg, align 4, !tbaa !61
  %indvars.iv.next82.3 = add nuw nsw i64 %indvars.iv81, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next82.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph60, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.dh = sext i32 %i.bk to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.04861, i64 %i.dh
  %i.dj = add nuw nsw i32 %.04762, 1              ; 2 uses
  %i.dk = load i32, ptr %5, align 4, !tbaa !28    ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph64, label %._crit_edge65, !llvm.loop !117

._crit_edge70:                                    ; preds = %._crit_edge65, %.lr.ph69, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge70, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL13linear_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #12 {
bb.a:
  %i.a = sitofp fast i32 %0 to double             ; 2 uses
  %i.b = uitofp nneg i32 %1 to double             ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double           ; 2 uses
  %i.f = add nsw i32 %1, -1
  %i.g = uitofp nneg i32 %i.f to double           ; 2 uses
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.i = add nsw i32 %0, -1                       ; 2 uses
  %i.j = add nsw i32 %0, -2                       ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x double> poison, double %i.e, i64 0
  %broadcast.splat53 = shufflevector <4 x double> %broadcast.splatinsert52, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat55 = shufflevector <4 x double> %broadcast.splatinsert54, <4 x double> poison, <4 x i32> zeroinitializer
  %i.k = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat55
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZN4ncnnL13linear_coeffsEiiPiPfi:bb.a
  %.1.us = select i1 %.not33.us, i32 %.0.us, i32 %i.ag
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv37
  store i32 %.1.us, ptr %i.bp, align 4, !tbaa !28
  %i.bq = fsub fast float 1.000000e+00, %.2.us
  %.idx43 = shl nuw nsw i64 %indvars.iv37, 3
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %.idx43 ; 2 uses
  store float %i.bq, ptr %i.br, align 4, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %.2.us, ptr %i.bs, align 4, !tbaa !61
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block74, %.thread, %bb.b
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader78, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader78 ] ; 4 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %i.bu = uitofp ninf nsz nneg i32 %i.bt to double
  %i.bv = fmul fast double %i.e, %i.bu
  %i.bw = fmul fast double %i.bv, %i.ae
  %.028 = fptrunc double %i.bw to float           ; 2 uses
  %i.bx = tail call fast float @llvm.floor.f32(float %.028)
  %i.by = fptosi float %i.bx to i32               ; 3 uses
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = fsub fast float %.028, %i.bz
  %i.cb = icmp slt i32 %i.by, 0
  %.129 = select nsz i1 %i.cb, float 0.000000e+00, float %i.ca
  %.0 = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0) ; 2 uses
  %.not33 = icmp slt i32 %.0, %i.i                ; 2 uses
  %.2 = select nsz i1 %.not33, float %.129, float 1.000000e+00 ; 2 uses
  %.1 = select i1 %.not33, i32 %.0, i32 %i.j
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.1, ptr %i.cc, align 4, !tbaa !28
  %i.cd = fsub fast float 1.000000e+00, %.2
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  store float %i.cd, ptr %i.ce, align 4, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store float %.2, ptr %i.cf, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !121
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not89 = icmp sgt i32 %i.k, %i.j
  br i1 %.not89, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph92.split.preheader, label %._crit_edge93

.lr.ph92.split.preheader:                         ; preds = %.lr.ph92
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph92.split

.lr.ph92.split:                                   ; preds = %.lr.ph92.split.preheader, %._crit_edge88
  %i.t = phi i32 [ %i.p, %.lr.ph92.split.preheader ], [ %i.am, %._crit_edge88 ] ; 2 uses
  %indvars.iv108 = phi i64 [ %i.r, %.lr.ph92.split.preheader ], [ %indvars.iv.next109, %._crit_edge88 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv108, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %.lr.ph92.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43
  %i.af = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv108, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !32
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.al = add i64 %i.z, %i.ac
  br label %.lr.ph87

._crit_edge88:                                    ; preds = %._crit_edge82, %.lr.ph92.split
  %i.am = phi i32 [ %i.t, %.lr.ph92.split ], [ %i.fh, %._crit_edge82 ]
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next109 to i32
  %exitcond111.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond111.not, label %._crit_edge93, label %.lr.ph92.split, !llvm.loop !122

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %._crit_edge82
  %i.an = phi i32 [ %.pre, %.lr.ph87.preheader ], [ %i.bz, %._crit_edge82 ] ; 4 uses
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next106, %._crit_edge82 ] ; 2 uses
  %.06484 = phi ptr [ %i.ad, %.lr.ph87.preheader ], [ %i.ff, %._crit_edge82 ] ; 3 uses
  %.06583 = phi ptr [ %i.ak, %.lr.ph87.preheader ], [ %i.fg, %._crit_edge82 ] ; 9 uses
  %.06583126 = ptrtoaddr ptr %.06583 to i64
  %i.ao = load ptr, ptr %7, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv105
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 8 uses
  %i.au = load float, ptr %.06484, align 4, !tbaa !61 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06484, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61 ; 7 uses
  %i.ax = insertelement <8 x float> poison, float %i.au, i64 0
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <8 x i32> zeroinitializer
  %i.az = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ba = shufflevector <8 x float> %i.az, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bb = icmp sgt i32 %i.an, 7
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph87, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph87 ] ; 3 uses
  %i.bc = phi i32 [ %i.bm, %.lr.ph ], [ %i.an, %.lr.ph87 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.be = load <8 x float>, ptr %i.bd, align 32, !tbaa !20
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load <8 x float>, ptr %i.bg, align 32, !tbaa !20
  %i.bi = fmul fast <8 x float> %i.be, %i.ay
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %indvars.iv
  store <8 x float> %i.bj, ptr %i.bk, align 32, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.bl = or disjoint i64 %indvars.iv.next, 7
  %i.bm = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !123

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bp = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph87
  %i.bq = phi i32 [ %i.an, %.lr.ph87 ], [ %i.bm, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph87 ], [ %i.bp, %._crit_edge.loopexit ] ; 3 uses
  %i.br = insertelement <4 x float> poison, float %i.au, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = or disjoint i32 %.0.lcssa, 3
  %i.bw = icmp slt i32 %i.bv, %i.bq
  br i1 %i.bw, label %.lr.ph77.preheader, label %.preheader

.lr.ph77.preheader:                               ; preds = %._crit_edge
  %i.bx = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph77

.preheader.loopexit:                              ; preds = %.lr.ph77
  %i.by = trunc nuw nsw i64 %indvars.iv.next100 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %i.bz = phi i32 [ %i.bq, %._crit_edge ], [ %i.eo, %.preheader.loopexit ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.by, %.preheader.loopexit ] ; 2 uses
  %i.ca = icmp slt i32 %.1.lcssa, %i.bz
  br i1 %i.ca, label %iter.check, label %.preheader.._crit_edge82_crit_edge

.preheader.._crit_edge82_crit_edge:               ; preds = %.preheader
  %.pre112 = sext i32 %i.bz to i64
  br label %._crit_edge82

iter.check:                                       ; preds = %.preheader
  %i.cb = zext i32 %.1.lcssa to i64               ; 7 uses
  %9 = zext nneg i32 %i.bz to i64                 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64   ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %9 ; 5 uses
  %i.cc = sub nsw i64 %wide.trip.count, %i.cb     ; 7 uses
  %min.iters.check = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check, label %.lr.ph81.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cd = sub i64 %.06583126, %i.al               ; 2 uses
  %i.ce = add nsw i64 %i.as, %wide.trip.count
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = sub i64 %i.cf, %i.cd
  %diff.check = icmp ugt i64 %i.cg, -128
  %i.ch = shl nsw i64 %i.as, 2
  %i.ci = sub i64 %i.ch, %i.cd
  %diff.check127 = icmp ugt i64 %i.ci, -128
  %conflict.rdx = or i1 %diff.check, %diff.check127
  br i1 %conflict.rdx, label %.lr.ph81.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check128 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.cc, 28
  %n.vec = and i64 %i.cc, -32                     ; 4 uses
  %i.ck = add nsw i64 %n.vec, %i.cb
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert129 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat130 = shufflevector <8 x float> %broadcast.splatinsert129, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = add nuw i64 %index, %i.cb               ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cl ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %wide.load = load <8 x float>, ptr %i.cm, align 4, !tbaa !61
  %wide.load131 = load <8 x float>, ptr %i.cn, align 4, !tbaa !61
  %wide.load132 = load <8 x float>, ptr %i.co, align 4, !tbaa !61
  %wide.load133 = load <8 x float>, ptr %i.cp, align 4, !tbaa !61
  %i.cq = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.cr = fmul fast <8 x float> %wide.load131, %broadcast.splat
  %i.cs = fmul fast <8 x float> %wide.load132, %broadcast.splat
  %i.ct = fmul fast <8 x float> %wide.load133, %broadcast.splat
  %i.cu = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cl ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 32
  %i.cw = getelementptr i8, ptr %i.cu, i64 64
  %i.cx = getelementptr i8, ptr %i.cu, i64 96
  %wide.load134 = load <8 x float>, ptr %i.cu, align 4, !tbaa !61
  %wide.load135 = load <8 x float>, ptr %i.cv, align 4, !tbaa !61
  %wide.load136 = load <8 x float>, ptr %i.cw, align 4, !tbaa !61
  %wide.load137 = load <8 x float>, ptr %i.cx, align 4, !tbaa !61
  %i.cy = fmul fast <8 x float> %wide.load134, %broadcast.splat130
  %i.cz = fmul fast <8 x float> %wide.load135, %broadcast.splat130
  %i.da = fmul fast <8 x float> %wide.load136, %broadcast.splat130
  %i.db = fmul fast <8 x float> %wide.load137, %broadcast.splat130
  %i.dc = fadd fast <8 x float> %i.cy, %i.cq
  %i.dd = fadd fast <8 x float> %i.cz, %i.cr
  %i.de = fadd fast <8 x float> %i.da, %i.cs
  %i.df = fadd fast <8 x float> %i.db, %i.ct
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %i.cl ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <8 x float> %i.dc, ptr %i.dg, align 4, !tbaa !61
  store <8 x float> %i.dd, ptr %i.dh, align 4, !tbaa !61
  store <8 x float> %i.de, ptr %i.di, align 4, !tbaa !61
  store <8 x float> %i.df, ptr %i.dj, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.cc, -4                   ; 3 uses
  %i.dl = add nsw i64 %n.vec138, %i.cb
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.aw, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.dm = add nuw i64 %index143, %i.cb            ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dm
  %wide.load144 = load <4 x float>, ptr %i.dn, align 4, !tbaa !61
  %i.do = fmul fast <4 x float> %wide.load144, %broadcast.splat140
  %i.dp = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dm
  %wide.load145 = load <4 x float>, ptr %i.dp, align 4, !tbaa !61
  %i.dq = fmul fast <4 x float> %wide.load145, %broadcast.splat142
  %i.dr = fadd fast <4 x float> %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %i.dm
  store <4 x float> %i.dr, ptr %i.ds, align 4, !tbaa !61
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next146, %n.vec138
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %i.cc, %n.vec138
  br i1 %cmp.n147, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv102.ph = phi i64 [ %i.cb, %iter.check ], [ %i.cb, %vector.memcheck ], [ %i.ck, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 7 uses
  %i.du = sub nsw i64 %wide.trip.count, %indvars.iv102.ph
  %xtraiter = and i64 %i.du, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv102.ph
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !61
  %i.dx = fmul fast float %i.dw, %i.au
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv102.ph
  %i.dy = load float, ptr %gep.prol, align 4, !tbaa !61
  %i.dz = fmul fast float %i.dy, %i.aw
  %i.ea = fadd fast float %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %indvars.iv102.ph
  store float %i.ea, ptr %i.eb, align 4, !tbaa !61
  %indvars.iv.next103.prol = add nuw nsw i64 %indvars.iv102.ph, 1
  br label %.lr.ph81.prol.loopexit

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader
  %indvars.iv102.unr = phi i64 [ %indvars.iv102.ph, %.lr.ph81.preheader ], [ %indvars.iv.next103.prol, %.lr.ph81.prol ]
  %i.ec = add nsw i64 %wide.trip.count, -1
  %i.ed = icmp eq i64 %indvars.iv102.ph, %i.ec
  br i1 %i.ed, label %._crit_edge82, label %.lr.ph81

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %indvars.iv99 = phi i64 [ %i.bx, %.lr.ph77.preheader ], [ %indvars.iv.next100, %.lr.ph77 ] ; 3 uses
  %i.ee = phi i32 [ %i.bq, %.lr.ph77.preheader ], [ %i.eo, %.lr.ph77 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv99 ; 2 uses
  %i.eg = load <4 x float>, ptr %i.ef, align 16, !tbaa !20
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !tbaa !20
  %i.ek = fmul fast <4 x float> %i.eg, %i.bs
  %i.el = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) %i.ek)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %indvars.iv99
  store <4 x float> %i.el, ptr %i.em, align 16, !tbaa !20
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 4 ; 3 uses
  %i.en = or disjoint i64 %indvars.iv.next100, 3
  %i.eo = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %i.en, %i.ep
  br i1 %i.eq, label %.lr.ph77, label %.preheader.loopexit, !llvm.loop !126

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.1, %.lr.ph81 ], [ %indvars.iv102.unr, %.lr.ph81.prol.loopexit ] ; 5 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv102
  %i.es = load float, ptr %i.er, align 4, !tbaa !61
  %i.et = fmul fast float %i.es, %i.au
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv102
  %i.eu = load float, ptr %gep, align 4, !tbaa !61
  %i.ev = fmul fast float %i.eu, %i.aw
  %i.ew = fadd fast float %i.ev, %i.et
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %indvars.iv102
  store float %i.ew, ptr %i.ex, align 4, !tbaa !61
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next103
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !61
  %i.fa = fmul fast float %i.ez, %i.au
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next103
  %i.fb = load float, ptr %gep.1, align 4, !tbaa !61
  %i.fc = fmul fast float %i.fb, %i.aw
  %i.fd = fadd fast float %i.fc, %i.fa
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.06583, i64 %indvars.iv.next103
  store float %i.fd, ptr %i.fe, align 4, !tbaa !61
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next103.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge82, label %.lr.ph81, !llvm.loop !127

._crit_edge82:                                    ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge82_crit_edge
  %.pre-phi = phi i64 [ %.pre112, %.preheader.._crit_edge82_crit_edge ], [ %9, %middle.block ], [ %9, %vec.epilog.middle.block ], [ %9, %.lr.ph81 ], [ %9, %.lr.ph81.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.06484, i64 8
  %i.fg = getelementptr inbounds [4 x i8], ptr %.06583, i64 %.pre-phi
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.fh = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv.next106, %i.fi
  br i1 %i.fj, label %.lr.ph87, label %._crit_edge88, !llvm.loop !128

._crit_edge93:                                    ; preds = %._crit_edge88, %.lr.ph92, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge93, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
end_hunk_1
begin_hunk_2_@_ZN4ncnnL12cubic_coeffsEiiPiPfi:bb.a

bb.i:                                             ; preds = %bb.h
  %i.bf = fsub fast float 1.000000e+00, %i.bc
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.i, %.thread91
  %.sink104 = phi float [ %i.be, %.thread91 ], [ %i.bf, %bb.i ]
  %.sink103 = phi float [ %i.az, %.thread91 ], [ %i.bc, %bb.i ]
  %.sink102 = phi float [ %i.bc, %.thread91 ], [ 0.000000e+00, %bb.i ]
  store float %.sink104, ptr %i.au, align 4, !tbaa !61
  store float %.sink103, ptr %i.aq, align 4, !tbaa !61
  store float %.sink102, ptr %i.ak, align 4, !tbaa !61
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %.sink.split101, %bb.h
  %.3 = phi i32 [ %.1, %bb.h ], [ %i.l, %.sink.split101 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.bg, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !129
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not123 = icmp sgt i32 %i.k, %i.j
  br i1 %.not123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph126.split.preheader, label %._crit_edge127

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph126.split

.lr.ph126.split:                                  ; preds = %.lr.ph126.split.preheader, %._crit_edge122
  %i.t = phi i32 [ %i.p, %.lr.ph126.split.preheader ], [ %i.am, %._crit_edge122 ] ; 2 uses
  %indvars.iv142 = phi i64 [ %i.r, %.lr.ph126.split.preheader ], [ %indvars.iv.next143, %._crit_edge122 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv142, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43
  %i.af = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv142, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !32
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph121

._crit_edge122:                                   ; preds = %._crit_edge116, %.lr.ph126.split
  %i.am = phi i32 [ %i.t, %.lr.ph126.split ], [ %i.fq, %._crit_edge116 ]
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next143 to i32
  %exitcond145.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond145.not, label %._crit_edge127, label %.lr.ph126.split, !llvm.loop !130

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %._crit_edge116
  %i.an = phi i32 [ %.pre, %.lr.ph121.preheader ], [ %i.cu, %._crit_edge116 ] ; 4 uses
  %indvars.iv139 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next140, %._crit_edge116 ] ; 2 uses
  %.084118 = phi ptr [ %i.ad, %.lr.ph121.preheader ], [ %i.fo, %._crit_edge116 ] ; 5 uses
  %.085117 = phi ptr [ %i.ak, %.lr.ph121.preheader ], [ %i.fp, %._crit_edge116 ] ; 6 uses
  %.085117162 = ptrtoaddr ptr %.085117 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv139
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 8 uses
  %i.au = load float, ptr %.084118, align 4, !tbaa !61 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.084118, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.084118, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !61 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.084118, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !61 ; 4 uses
  %i.bb = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bd = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bf = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bh = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bj = icmp sgt i32 %i.an, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph121 ] ; 3 uses
  %i.bk = phi i32 [ %i.cd, %.lr.ph ], [ %i.an, %.lr.ph121 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !20
  %i.bq = load <8 x float>, ptr %i.bl, align 32, !tbaa !20
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bs = load <8 x float>, ptr %i.br, align 32, !tbaa !20
  %i.bt = shl nuw nsw i32 %i.bk, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = load <8 x float>, ptr %i.bv, align 32, !tbaa !20
  %i.bx = fmul fast <8 x float> %i.bp, %i.bc
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.by)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.bz)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %indvars.iv
  store <8 x float> %i.ca, ptr %i.cb, align 32, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.cc = or disjoint i64 %indvars.iv.next, 7
  %i.cd = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !131

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph121
  %i.ch = phi i32 [ %i.an, %.lr.ph121 ], [ %i.cd, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph121 ], [ %i.cg, %._crit_edge.loopexit ] ; 3 uses
  %i.ci = insertelement <4 x float> poison, float %i.au, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = or disjoint i32 %.0.lcssa, 3
  %i.cr = icmp slt i32 %i.cq, %i.ch
  br i1 %i.cr, label %.lr.ph111.preheader, label %.preheader

.lr.ph111.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph111

.preheader.loopexit:                              ; preds = %.lr.ph111
  %i.ct = trunc nuw nsw i64 %indvars.iv.next134 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %i.cu = phi i32 [ %i.ch, %._crit_edge ], [ %i.ew, %.preheader.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.ct, %.preheader.loopexit ] ; 2 uses
  %i.cv = icmp slt i32 %.1.lcssa, %i.cu
  br i1 %i.cv, label %.lr.ph115, label %.preheader.._crit_edge116_crit_edge

.preheader.._crit_edge116_crit_edge:              ; preds = %.preheader
  %.pre146 = sext i32 %i.cu to i64
  br label %._crit_edge116

.lr.ph115:                                        ; preds = %.preheader
  %i.cw = shl nuw nsw i32 %i.cu, 1
  %i.cx = zext i32 %.1.lcssa to i64               ; 5 uses
  %9 = zext nneg i32 %i.cu to i64                 ; 5 uses
  %i.cy = zext nneg i32 %i.cw to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cu to i64   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %9 ; 2 uses
  %invariant.gep158 = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cy ; 2 uses
  %i.cz = sub nsw i64 %wide.trip.count, %i.cx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cz, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph115
  %i.da = sub i64 %.085117162, %i.al              ; 2 uses
  %i.db = add nsw i64 %i.as, %i.cy
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = sub i64 %i.dc, %i.da
  %diff.check = icmp ugt i64 %i.dd, -32
  %i.de = add nsw i64 %i.as, %wide.trip.count
  %i.df = shl nsw i64 %i.de, 2
  %i.dg = sub i64 %i.df, %i.da
  %diff.check163 = icmp ugt i64 %i.dg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check163
  %i.dh = sub i64 %.085117162, %i.al              ; 2 uses
  %i.di = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.dj = sub i64 %i.di, %i.dh
  %diff.check164 = icmp ugt i64 %i.dj, -32
  %conflict.rdx165 = or i1 %conflict.rdx, %diff.check164
  %i.dk = shl nuw nsw i64 %wide.trip.count, 2
  %i.dl = add i64 %i.dh, %i.dk
  %i.dm = sub i64 %i.di, %i.dl
  %diff.check166 = icmp ugt i64 %i.dm, -32
  %conflict.rdx167 = or i1 %conflict.rdx165, %diff.check166
  br i1 %conflict.rdx167, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, -8                      ; 3 uses
  %i.dn = add nsw i64 %n.vec, %i.cx
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat169 = shufflevector <8 x float> %broadcast.splatinsert168, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat171 = shufflevector <8 x float> %broadcast.splatinsert170, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx               ; 5 uses
  %i.dp = sub nsw i64 %i.do, %9
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.dp
  %wide.load = load <8 x float>, ptr %i.dq, align 4, !tbaa !61
  %i.dr = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.do
  %wide.load174 = load <8 x float>, ptr %i.ds, align 4, !tbaa !61
  %i.dt = fmul fast <8 x float> %wide.load174, %broadcast.splat169
  %i.du = fadd fast <8 x float> %i.dt, %i.dr
  %i.dv = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.do
  %wide.load175 = load <8 x float>, ptr %i.dv, align 4, !tbaa !61
  %i.dw = fmul fast <8 x float> %wide.load175, %broadcast.splat171
  %i.dx = fadd fast <8 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep158, i64 %i.do
  %wide.load176 = load <8 x float>, ptr %i.dy, align 4, !tbaa !61
  %i.dz = fmul fast <8 x float> %wide.load176, %broadcast.splat173
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %i.do
  store <8 x float> %i.ea, ptr %i.eb, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge116, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph115, %middle.block
  %indvars.iv136.ph = phi i64 [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph115 ], [ %i.dn, %middle.block ]
  br label %scalar.ph

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv133 = phi i64 [ %i.cs, %.lr.ph111.preheader ], [ %indvars.iv.next134, %.lr.ph111 ] ; 3 uses
  %i.ed = phi i32 [ %i.ch, %.lr.ph111.preheader ], [ %i.ew, %.lr.ph111 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv133 ; 4 uses
  %i.ef = sext i32 %i.ed to i64                   ; 2 uses
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !20
  %i.ej = load <4 x float>, ptr %i.ee, align 16, !tbaa !20
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  %i.el = load <4 x float>, ptr %i.ek, align 16, !tbaa !20
  %i.em = shl nuw nsw i32 %i.ed, 1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.en
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !20
  %i.eq = fmul fast <4 x float> %i.ei, %i.cj
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.cl, <4 x float> nofpclass(nan inf) %i.eq)
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.el, <4 x float> nofpclass(nan inf) %i.cn, <4 x float> nofpclass(nan inf) %i.er)
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.es)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %indvars.iv133
  store <4 x float> %i.et, ptr %i.eu, align 16, !tbaa !20
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 4 ; 3 uses
  %i.ev = or disjoint i64 %indvars.iv.next134, 3
  %i.ew = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %i.ev, %i.ex
  br i1 %i.ey, label %.lr.ph111, label %.preheader.loopexit, !llvm.loop !133

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %scalar.ph ], [ %indvars.iv136.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ez = sub nsw i64 %indvars.iv136, %9
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !61
  %i.fc = fmul fast float %i.fb, %i.au
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv136
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !61
  %i.ff = fmul fast float %i.fe, %i.aw
  %i.fg = fadd fast float %i.ff, %i.fc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv136
  %i.fh = load float, ptr %gep, align 4, !tbaa !61
  %i.fi = fmul fast float %i.fh, %i.ay
  %i.fj = fadd fast float %i.fg, %i.fi
  %gep159 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep158, i64 %indvars.iv136
  %i.fk = load float, ptr %gep159, align 4, !tbaa !61
  %i.fl = fmul fast float %i.fk, %i.ba
  %i.fm = fadd fast float %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %indvars.iv136
  store float %i.fm, ptr %i.fn, align 4, !tbaa !61
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge116, label %scalar.ph, !llvm.loop !134

._crit_edge116:                                   ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge116_crit_edge
  %.pre-phi = phi i64 [ %.pre146, %.preheader.._crit_edge116_crit_edge ], [ %9, %middle.block ], [ %9, %scalar.ph ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.084118, i64 16
  %i.fp = getelementptr inbounds [4 x i8], ptr %.085117, i64 %.pre-phi
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.fq = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next140, %i.fr
  br i1 %i.fs, label %.lr.ph121, label %._crit_edge122, !llvm.loop !135

._crit_edge127:                                   ; preds = %._crit_edge122, %.lr.ph126, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !43, !noalias !143
  %i.y = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !143
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !143 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43, !noalias !144
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !37, !noalias !144
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !144 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !144
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !143
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.9:bb.a
  %i.ar = load i32, ptr %7, align 4, !tbaa !28
  %i.as = add nsw i32 %i.ar, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.aq)
  %i.at = mul nsw i32 %.sroa.speculated, %i.am
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.au
  %i.aw = sext i32 %i.am to i64
  %i.ax = shl nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.02933, ptr align 2 %i.av, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %.02933, i64 %i.az
  %i.bb = add nuw nsw i32 %.02834, 1              ; 2 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !28    ; 2 uses
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !220

._crit_edge39:                                    ; preds = %._crit_edge, %.lr.ph38, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge39, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not96 = icmp sgt i32 %i.k, %i.j
  br i1 %.not96, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph99.split.preheader, label %._crit_edge100

.lr.ph99.split.preheader:                         ; preds = %.lr.ph99
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph99.split

.lr.ph99.split:                                   ; preds = %.lr.ph99.split.preheader, %._crit_edge95
  %i.t = phi i32 [ %i.p, %.lr.ph99.split.preheader ], [ %i.am, %._crit_edge95 ] ; 2 uses
  %indvars.iv115 = phi i64 [ %i.r, %.lr.ph99.split.preheader ], [ %indvars.iv.next116, %._crit_edge95 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv115, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %.lr.ph99.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43
  %i.af = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv115, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !32
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.al = add i64 %i.z, %i.ac
  br label %.lr.ph94

._crit_edge95:                                    ; preds = %._crit_edge, %.lr.ph99.split
  %i.am = phi i32 [ %i.t, %.lr.ph99.split ], [ %i.ga, %._crit_edge ]
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next116 to i32
  %exitcond118.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond118.not, label %._crit_edge100, label %.lr.ph99.split, !llvm.loop !221

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph94.preheader ], [ %i.cn, %._crit_edge ] ; 4 uses
  %indvars.iv112 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next113, %._crit_edge ] ; 2 uses
  %.06491 = phi ptr [ %i.ad, %.lr.ph94.preheader ], [ %i.fy, %._crit_edge ] ; 3 uses
  %.06590 = phi ptr [ %i.ak, %.lr.ph94.preheader ], [ %i.fz, %._crit_edge ] ; 7 uses
  %.06590133 = ptrtoaddr ptr %.06590 to i64
  %i.ao = load ptr, ptr %7, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv112
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 6 uses
  %i.au = load float, ptr %.06491, align 4, !tbaa !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06491, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61 ; 5 uses
  %i.ax = icmp sgt i32 %i.an, 7
  br i1 %i.ax, label %.lr.ph, label %.preheader82

.lr.ph:                                           ; preds = %.lr.ph94
  %i.ay = insertelement <8 x float> poison, float %i.au, i64 0
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ba = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.c

.preheader82.loopexit:                            ; preds = %bb.c
  %i.bc = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader82

.preheader82:                                     ; preds = %.preheader82.loopexit, %.lr.ph94
  %i.bd = phi i32 [ %i.an, %.lr.ph94 ], [ %i.cj, %.preheader82.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph94 ], [ %i.bc, %.preheader82.loopexit ] ; 3 uses
  %i.be = or disjoint i32 %.0.lcssa, 3
  %i.bf = icmp slt i32 %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph85, label %.preheader

.lr.ph85:                                         ; preds = %.preheader82
  %i.bg = insertelement <4 x float> poison, float %i.au, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bl = phi i32 [ %i.an, %.lr.ph ], [ %i.cj, %bb.c ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.bn = load <8 x i16>, ptr %i.bm, align 1, !tbaa !20 ; 2 uses
  %i.bo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bq = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.br = bitcast <16 x i16> %i.bq to <8 x float>
  %i.bs = sext i32 %i.bl to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bs
  %i.bu = load <8 x i16>, ptr %i.bt, align 1, !tbaa !20 ; 2 uses
  %i.bv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bx = shufflevector <8 x i16> %i.bv, <8 x i16> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.by = bitcast <16 x i16> %i.bx to <8 x float>
  %i.bz = fmul fast <8 x float> %i.az, %i.br
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.by, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %i.bz)
  %i.cb = bitcast <8 x float> %i.ca to <8 x i32>  ; 2 uses
  %i.cc = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ce = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.cf = lshr <4 x i32> %i.cd, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ce, <4 x i32> %i.cf)
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %indvars.iv
  store <8 x i16> %i.cg, ptr %i.ch, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.ci = or disjoint i64 %indvars.iv.next, 7
  %i.cj = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %i.ci, %i.ck
  br i1 %i.cl, label %bb.c, label %.preheader82.loopexit, !llvm.loop !222

.preheader.loopexit:                              ; preds = %bb.d
  %i.cm = trunc nuw nsw i64 %indvars.iv.next107 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader82
  %i.cn = phi i32 [ %i.bd, %.preheader82 ], [ %i.ff, %.preheader.loopexit ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader82 ], [ %i.cm, %.preheader.loopexit ] ; 2 uses
  %i.co = icmp slt i32 %.1.lcssa, %i.cn
  br i1 %i.co, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre119 = sext i32 %i.cn to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.cp = zext i32 %.1.lcssa to i64               ; 7 uses
  %9 = zext nneg i32 %i.cn to i64                 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.cn to i64   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %9 ; 3 uses
  %i.cq = sub nsw i64 %wide.trip.count, %i.cp     ; 7 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %.lr.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cr = sub i64 %.06590133, %i.al               ; 2 uses
  %i.cs = add nsw i64 %i.as, %wide.trip.count
  %i.ct = shl nsw i64 %i.cs, 1
  %i.cu = sub i64 %i.ct, %i.cr
  %diff.check = icmp ugt i64 %i.cu, -32
  %i.cv = shl nsw i64 %i.as, 1
  %i.cw = sub i64 %i.cv, %i.cr
  %diff.check134 = icmp ugt i64 %i.cw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check134
  br i1 %conflict.rdx, label %.lr.ph89.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check135 = icmp ult i64 %i.cq, 16
  br i1 %min.iters.check135, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cx = and i64 %i.cq, 12
  %n.vec = and i64 %i.cq, -16                     ; 4 uses
  %i.cy = add nsw i64 %n.vec, %i.cp
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <16 x float> poison, float %i.aw, i64 0
  %broadcast.splat137 = shufflevector <16 x float> %broadcast.splatinsert136, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add nuw i64 %index, %i.cp               ; 3 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cz
  %wide.load = load <16 x i16>, ptr %i.da, align 2, !tbaa !74
  %i.db = zext <16 x i16> %wide.load to <16 x i32>
  %i.dc = shl nuw <16 x i32> %i.db, splat (i32 16)
  %i.dd = bitcast <16 x i32> %i.dc to <16 x float>
  %i.de = fmul fast <16 x float> %broadcast.splat, %i.dd
  %i.df = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cz
  %wide.load138 = load <16 x i16>, ptr %i.df, align 2, !tbaa !74
  %i.dg = zext <16 x i16> %wide.load138 to <16 x i32>
  %i.dh = shl nuw <16 x i32> %i.dg, splat (i32 16)
  %i.di = bitcast <16 x i32> %i.dh to <16 x float>
  %i.dj = fmul fast <16 x float> %broadcast.splat137, %i.di
  %i.dk = fadd fast <16 x float> %i.dj, %i.de
  %i.dl = bitcast <16 x float> %i.dk to <16 x i32>
  %i.dm = lshr <16 x i32> %i.dl, splat (i32 16)
  %i.dn = trunc nuw <16 x i32> %i.dm to <16 x i16>
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %i.cz
  store <16 x i16> %i.dn, ptr %i.do, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph89.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec139 = and i64 %i.cq, -4                   ; 3 uses
  %i.dq = add nsw i64 %n.vec139, %i.cp
  %broadcast.splatinsert140 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat141 = shufflevector <4 x float> %broadcast.splatinsert140, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.aw, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = add nuw i64 %index144, %i.cp            ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dr
  %wide.load145 = load <4 x i16>, ptr %i.ds, align 2, !tbaa !74
  %i.dt = zext <4 x i16> %wide.load145 to <4 x i32>
  %i.du = shl nuw <4 x i32> %i.dt, splat (i32 16)
  %i.dv = bitcast <4 x i32> %i.du to <4 x float>
  %i.dw = fmul fast <4 x float> %broadcast.splat141, %i.dv
  %i.dx = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.dr
  %wide.load146 = load <4 x i16>, ptr %i.dx, align 2, !tbaa !74
  %i.dy = zext <4 x i16> %wide.load146 to <4 x i32>
  %i.dz = shl nuw <4 x i32> %i.dy, splat (i32 16)
  %i.ea = bitcast <4 x i32> %i.dz to <4 x float>
  %i.eb = fmul fast <4 x float> %broadcast.splat143, %i.ea
  %i.ec = fadd fast <4 x float> %i.eb, %i.dw
  %i.ed = bitcast <4 x float> %i.ec to <4 x i32>
  %i.ee = lshr <4 x i32> %i.ed, splat (i32 16)
  %i.ef = trunc nuw <4 x i32> %i.ee to <4 x i16>
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %i.dr
  store <4 x i16> %i.ef, ptr %i.eg, align 2, !tbaa !74
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next147, %n.vec139
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.cq, %n.vec139
  br i1 %cmp.n148, label %._crit_edge, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ %i.cp, %iter.check ], [ %i.cp, %vector.memcheck ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %.lr.ph89

bb.d:                                             ; preds = %.lr.ph85, %bb.d
  %indvars.iv106 = phi i64 [ %i.bk, %.lr.ph85 ], [ %indvars.iv.next107, %bb.d ] ; 3 uses
  %i.ei = phi i32 [ %i.bd, %.lr.ph85 ], [ %i.ff, %bb.d ]
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv106 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 1, !tbaa !20
  %i.el = insertelement <2 x i64> poison, i64 %i.ek, i64 0
  %i.em = bitcast <2 x i64> %i.el to <8 x i16>
  %i.en = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eo = bitcast <8 x i16> %i.en to <4 x float>
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 1, !tbaa !20
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = bitcast <2 x i64> %i.es to <8 x i16>
  %i.eu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = bitcast <8 x i16> %i.eu to <4 x float>
  %i.ew = fmul fast <4 x float> %i.bh, %i.eo
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ev, <4 x float> nofpclass(nan inf) %i.bj, <4 x float> nofpclass(nan inf) %i.ew)
  %i.ey = bitcast <4 x float> %i.ex to <4 x i32>
  %i.ez = lshr <4 x i32> %i.ey, splat (i32 16)
  %i.fa = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ez, <4 x i32> poison)
  %i.fb = bitcast <8 x i16> %i.fa to <2 x i64>
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %indvars.iv106
  %i.fd = extractelement <2 x i64> %i.fb, i64 0
  store i64 %i.fd, ptr %i.fc, align 1, !tbaa !20
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 4 ; 3 uses
  %i.fe = or disjoint i64 %indvars.iv.next107, 3
  %i.ff = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.d, label %.preheader.loopexit, !llvm.loop !225

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %.lr.ph89
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph89 ], [ %indvars.iv109.ph, %.lr.ph89.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv109
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !74
  %i.fk = zext i16 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 16
  %i.fm = bitcast i32 %i.fl to float
  %i.fn = fmul fast float %i.au, %i.fm
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv109
  %i.fo = load i16, ptr %gep, align 2, !tbaa !74
  %i.fp = zext i16 %i.fo to i32
  %i.fq = shl nuw i32 %i.fp, 16
  %i.fr = bitcast i32 %i.fq to float
  %i.fs = fmul fast float %i.aw, %i.fr
  %i.ft = fadd fast float %i.fs, %i.fn
  %i.fu = bitcast float %i.ft to i32
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = trunc nuw i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.06590, i64 %indvars.iv109
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !74
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph89, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph89, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre119, %.preheader.._crit_edge_crit_edge ], [ %9, %middle.block ], [ %9, %vec.epilog.middle.block ], [ %9, %.lr.ph89 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.06491, i64 8
  %i.fz = getelementptr inbounds [2 x i8], ptr %.06590, i64 %.pre-phi
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ga = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next113, %i.gb
  br i1 %i.gc, label %.lr.ph94, label %._crit_edge95, !llvm.loop !227

._crit_edge100:                                   ; preds = %._crit_edge95, %.lr.ph99, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
end_hunk_3
