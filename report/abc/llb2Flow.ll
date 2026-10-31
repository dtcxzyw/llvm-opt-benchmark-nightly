Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb2Flow?download=true
inline.NumInlined: 368
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Llb_ManFlowFindBestCut:bb.a
  %.171.lcssa238 = phi i32 [ %.373, %.critedge ], [ %.070190, %.preheader ]
  %.175.lcssa237 = phi i32 [ %.377, %.critedge ], [ %.074189, %.preheader ] ; 3 uses
  %.val86180210236 = phi i32 [ %.val86, %.critedge ], [ %.val86180, %.preheader ]
  %.pre.i212235 = phi i32 [ %.pre.i213, %.critedge ], [ %.pre.i216, %.preheader ]
  %i.hw = add nuw nsw i32 %.078188, 5             ; 3 uses
  %.val87 = load i32, ptr %i.bl, align 8, !tbaa !52
  %i.hx = icmp slt i32 %i.hw, %.val87
  br i1 %i.hx, label %.preheader, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %.critedge.thread
  %i.hy = icmp eq i32 %.175.lcssa237, -1
  br i1 %i.hy, label %._crit_edge.thread, label %.thread

._crit_edge.thread:                               ; preds = %.preheader.lr.ph, %Llb_ManCutVolume.exit, %._crit_edge
  %i.hz = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  %.not.i141 = icmp eq ptr %i.hz, null
  br i1 %.not.i141, label %Vec_PtrFree.exit142, label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.hz) #23
  br label %Vec_PtrFree.exit142

Vec_PtrFree.exit142:                              ; preds = %._crit_edge.thread, %bb.w
  tail call void @free(ptr noundef nonnull %i.bd) #23
  %i.ia = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ia, null
  br i1 %.not.i143, label %Vec_PtrFree.exit144, label %Vec_PtrFree.exit144.sink.split

.thread:                                          ; preds = %.critedge, %._crit_edge
  %.078177 = phi i32 [ %i.hw, %._crit_edge ], [ %.078188, %.critedge ]
  %.4170 = phi i32 [ %.175.lcssa237, %._crit_edge ], [ %.377, %.critedge ]
  tail call void @Llb_ManFlowGetObjSet(ptr nonnull poison, ptr noundef nonnull %1, i32 noundef %.4170, i32 noundef %.078177, ptr noundef nonnull %i.bh)
  store i32 0, ptr %i.be, align 4, !tbaa !26
  %.val89.i145 = load i32, ptr %i.bi, align 4, !tbaa !26 ; 2 uses
  %i.ib = icmp sgt i32 %.val89.i145, 0
  br i1 %i.ib, label %.lr.ph.i147.preheader, label %Llb_ManFlowCollectAndMarkCone.exit152

.lr.ph.i147.preheader:                            ; preds = %.thread
  %.val.i149 = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.ic = zext nneg i32 %.val89.i145 to i64
  br label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147.preheader, %.lr.ph.i147
  %indvars.iv.i148 = phi i64 [ %indvars.iv.next.i150, %.lr.ph.i147 ], [ 0, %.lr.ph.i147.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val.i149, i64 %indvars.iv.i148
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !27
  tail call void @Llb_ManFlowCollectAndMarkCone_rec(ptr noundef nonnull readonly %0, ptr noundef %i.ie, ptr noundef nonnull %i.bd)
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i148, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next.i150, %i.ic
  br i1 %exitcond208.not, label %Llb_ManFlowCollectAndMarkCone.exit152, label %.lr.ph.i147, !llvm.loop !11

Llb_ManFlowCollectAndMarkCone.exit152:            ; preds = %.lr.ph.i147, %.thread
  %i.if = tail call ptr @Llb_ManFlowCompute(ptr noundef nonnull %0) ; 2 uses
  %.val56.i153 = load i32, ptr %i.be, align 4, !tbaa !26 ; 3 uses
  %i.ig = icmp sgt i32 %.val56.i153, 0
  %.pre = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 7 uses
  br i1 %i.ig, label %.lr.ph.i155.preheader, label %Llb_ManFlowUnmarkCone.exit160

.lr.ph.i155.preheader:                            ; preds = %Llb_ManFlowCollectAndMarkCone.exit152
  %i.ih = zext nneg i32 %.val56.i153 to i64       ; 2 uses
  %xtraiter282 = and i64 %i.ih, 3                 ; 3 uses
  %i.ii = icmp ult i32 %.val56.i153, 4
  br i1 %i.ii, label %.lr.ph.i155.epil.preheader, label %.lr.ph.i155.preheader.new

.lr.ph.i155.preheader.new:                        ; preds = %.lr.ph.i155.preheader
  %unroll_iter286 = and i64 %i.ih, 2147483644
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155, %.lr.ph.i155.preheader.new
  %indvars.iv.i156 = phi i64 [ 0, %.lr.ph.i155.preheader.new ], [ %indvars.iv.next.i158.3, %.lr.ph.i155 ] ; 5 uses
  %niter287 = phi i64 [ 0, %.lr.ph.i155.preheader.new ], [ %niter287.next.3, %.lr.ph.i155 ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i156
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8
  %i.in = and i64 %i.im, -33
  store i64 %i.in, ptr %i.il, align 8
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i156
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !27
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = and i64 %i.is, -33
  store i64 %i.it, ptr %i.ir, align 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i156
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !27
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = and i64 %i.iy, -33
  store i64 %i.iz, ptr %i.ix, align 8
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i156
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !27
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8
  %i.jf = and i64 %i.je, -33
  store i64 %i.jf, ptr %i.jd, align 8
  %indvars.iv.next.i158.3 = add nuw nsw i64 %indvars.iv.i156, 4 ; 2 uses
  %niter287.next.3 = add i64 %niter287, 4         ; 2 uses
  %niter287.ncmp.3 = icmp eq i64 %niter287.next.3, %unroll_iter286
  br i1 %niter287.ncmp.3, label %Llb_ManFlowUnmarkCone.exit160.thread.loopexit.unr-lcssa, label %.lr.ph.i155, !llvm.loop !10

Llb_ManFlowUnmarkCone.exit160:                    ; preds = %Llb_ManFlowCollectAndMarkCone.exit152
  %.not.i161 = icmp eq ptr %.pre, null
  br i1 %.not.i161, label %Vec_PtrFree.exit162, label %Llb_ManFlowUnmarkCone.exit160.thread

Llb_ManFlowUnmarkCone.exit160.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i155
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod284.not, label %Llb_ManFlowUnmarkCone.exit160.thread, label %.lr.ph.i155.epil.preheader

.lr.ph.i155.epil.preheader:                       ; preds = %Llb_ManFlowUnmarkCone.exit160.thread.loopexit.unr-lcssa, %.lr.ph.i155.preheader
  %indvars.iv.i156.epil.init = phi i64 [ 0, %.lr.ph.i155.preheader ], [ %indvars.iv.next.i158.3, %Llb_ManFlowUnmarkCone.exit160.thread.loopexit.unr-lcssa ]
  %lcmp.mod285 = icmp ne i64 %xtraiter282, 0
  tail call void @llvm.assume(i1 %lcmp.mod285)
  br label %.lr.ph.i155.epil

.lr.ph.i155.epil:                                 ; preds = %.lr.ph.i155.epil, %.lr.ph.i155.epil.preheader
  %indvars.iv.i156.epil = phi i64 [ %indvars.iv.next.i158.epil, %.lr.ph.i155.epil ], [ %indvars.iv.i156.epil.init, %.lr.ph.i155.epil.preheader ] ; 2 uses
  %epil.iter283 = phi i64 [ %epil.iter283.next, %.lr.ph.i155.epil ], [ 0, %.lr.ph.i155.epil.preheader ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i156.epil
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !27
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = and i64 %i.jj, -33
  store i64 %i.jk, ptr %i.ji, align 8
  %indvars.iv.next.i158.epil = add nuw nsw i64 %indvars.iv.i156.epil, 1
  %epil.iter283.next = add i64 %epil.iter283, 1   ; 2 uses
  %epil.iter283.cmp.not = icmp eq i64 %epil.iter283.next, %xtraiter282
  br i1 %epil.iter283.cmp.not, label %Llb_ManFlowUnmarkCone.exit160.thread, label %.lr.ph.i155.epil, !llvm.loop !116

Llb_ManFlowUnmarkCone.exit160.thread:             ; preds = %Llb_ManFlowUnmarkCone.exit160.thread.loopexit.unr-lcssa, %.lr.ph.i155.epil, %Llb_ManFlowUnmarkCone.exit160
  tail call void @free(ptr noundef nonnull %.pre) #23
  br label %Vec_PtrFree.exit162

Vec_PtrFree.exit162:                              ; preds = %Llb_ManFlowUnmarkCone.exit160, %Llb_ManFlowUnmarkCone.exit160.thread
  tail call void @free(ptr noundef nonnull %i.bd) #23
  %i.jl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  %.not.i163 = icmp eq ptr %i.jl, null
  br i1 %.not.i163, label %Vec_PtrFree.exit144, label %Vec_PtrFree.exit144.sink.split

Vec_PtrFree.exit144.sink.split:                   ; preds = %Vec_PtrFree.exit162, %Vec_PtrFree.exit142
  %.sink = phi ptr [ %i.ia, %Vec_PtrFree.exit142 ], [ %i.jl, %Vec_PtrFree.exit162 ]
  %.080.ph = phi ptr [ null, %Vec_PtrFree.exit142 ], [ %i.if, %Vec_PtrFree.exit162 ]
  tail call void @free(ptr noundef nonnull %.sink) #23
  br label %Vec_PtrFree.exit144

Vec_PtrFree.exit144:                              ; preds = %Vec_PtrFree.exit144.sink.split, %Vec_PtrFree.exit162, %Vec_PtrFree.exit142
  %.080 = phi ptr [ %i.if, %Vec_PtrFree.exit162 ], [ null, %Vec_PtrFree.exit142 ], [ %.080.ph, %Vec_PtrFree.exit144.sink.split ]
  tail call void @free(ptr noundef nonnull %i.bh) #23
  ret ptr %.080
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Llb_ManComputeCuts(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 148
  %.val76 = load i32, ptr %i.a, align 4, !tbaa !51
  %i.b = getelementptr i8, ptr %0, i64 152
  %.val77 = load i32, ptr %i.b, align 8, !tbaa !51
  %i.c = add nsw i32 %.val77, %.val76
  %i.d = sdiv i32 %i.c, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.e = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #23
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %Vec_PtrPush.exit87, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %5, align 8, !tbaa !124
  %.neg105 = mul i64 %i.g, -1000000
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %.neg = sdiv i64 %i.i, -1000
  %.neg106 = add i64 %.neg, %.neg105
  br label %Vec_PtrPush.exit87

Vec_PtrPush.exit87:                               ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg106, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.j = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 100, ptr %i.j, align 8, !tbaa !24
  %i.l = call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #21 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = call ptr @Llb_ManComputeCutLo(ptr noundef nonnull %0)
  store ptr %i.n, ptr %i.l, align 8, !tbaa !27
  %i.o = call ptr @Llb_ManComputeCutLi(ptr noundef nonnull %0)
  store i32 2, ptr %i.k, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr i8, ptr %0, i64 312
  %.not63 = icmp eq i32 %3, 0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Vec_PtrPush.exit87, %._crit_edge
  %indvar = phi i64 [ 0, %Vec_PtrPush.exit87 ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %i.r = phi i32 [ 100, %Vec_PtrPush.exit87 ], [ %i.ci, %._crit_edge ] ; 3 uses
  %indvars.iv137 = phi i64 [ 2, %Vec_PtrPush.exit87 ], [ %indvars.iv.next138, %._crit_edge ] ; 20 uses
  %storemerge126 = phi ptr [ %i.l, %Vec_PtrPush.exit87 ], [ %storemerge127, %._crit_edge ] ; 8 uses
  %.060 = phi ptr [ null, %Vec_PtrPush.exit87 ], [ %.3, %._crit_edge ]
  %6 = trunc i64 %indvar to i35
  %i.s = add i64 %indvar, 1
  %i.t = shl i64 %indvar, 3
  %i.u = add i64 %i.t, 24
  %i.v = trunc i64 %i.u to i35                    ; 2 uses
  %i.w = load ptr, ptr %storemerge126, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge67
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge67 ] ; 4 uses
  %.059115 = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.y, %.critedge67 ] ; 6 uses
  %.161114 = phi ptr [ %.060, %.lr.ph.preheader ], [ %.2, %.critedge67 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %storemerge126, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 7 uses
  call void @Aig_ManIncrementTravId(ptr noundef nonnull %0) #23
  %i.z = getelementptr i8, ptr %.059115, i64 4
  %.val21.i = load i32, ptr %i.z, align 4, !tbaa !26 ; 3 uses
  %i.aa = icmp sgt i32 %.val21.i, 0
  br i1 %i.aa, label %.lr.ph.i, label %.critedge.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %.059115, i64 8
  %.val19.i = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 9 uses
  %.val22.i = load i32, ptr %i.q, align 8, !tbaa !42 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %.val21.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ac = icmp ult i32 %.val21.i, 8
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.d

.critedge.preheader.i.loopexit.unr-lcssa:         ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.critedge.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 %.val22.i, ptr %i.af, align 8, !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.c, !llvm.loop !118

.critedge.preheader.i:                            ; preds = %.critedge.preheader.i.loopexit.unr-lcssa, %bb.c, %.lr.ph
  %i.ag = getelementptr i8, ptr %i.y, i64 4       ; 2 uses
  %.val2024.i = load i32, ptr %i.ag, align 4, !tbaa !26
  %i.ah = icmp sgt i32 %.val2024.i, 0
  br i1 %i.ah, label %.lr.ph27.i, label %Llb_ManCutVolume.exit

.lr.ph27.i:                                       ; preds = %.critedge.preheader.i
  %i.ai = getelementptr i8, ptr %i.y, i64 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.d ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 %.val22.i, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %.val22.i, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i32 %.val22.i, ptr %i.at, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i32 %.val22.i, ptr %i.ax, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i32 %.val22.i, ptr %i.bb, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i32 %.val22.i, ptr %i.bf, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 %.val22.i, ptr %i.bj, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 %.val22.i, ptr %i.bn, align 8, !tbaa !43
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge.preheader.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !6

.critedge.i:                                      ; preds = %.critedge.i, %.lr.ph27.i
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next30.i, %.critedge.i ] ; 2 uses
  %.026.i = phi i32 [ 0, %.lr.ph27.i ], [ %i.br, %.critedge.i ]
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv29.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.bq = call i32 @Llb_ManCutVolume_rec(ptr noundef nonnull %0, ptr noundef %i.bp)
  %i.br = add nsw i32 %i.bq, %.026.i              ; 2 uses
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %.val20.i = load i32, ptr %i.ag, align 4, !tbaa !26
  %i.bs = sext i32 %.val20.i to i64
  %i.bt = icmp slt i64 %indvars.iv.next30.i, %i.bs
  br i1 %i.bt, label %.critedge.i, label %Llb_ManCutVolume.exit, !llvm.loop !7

Llb_ManCutVolume.exit:                            ; preds = %.critedge.i, %.critedge.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.critedge.preheader.i ], [ %i.br, %.critedge.i ]
  %.not = icmp sgt i32 %.0.lcssa.i, %i.d
  br i1 %.not, label %bb.e, label %.critedge67

bb.e:                                             ; preds = %Llb_ManCutVolume.exit
  br i1 %.not63, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bu = call ptr @Llb_ManFlowFindBestCut(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.y, i32 noundef %1) ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.critedge67, label %.critedge

.thread:                                          ; preds = %bb.e
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.y)
  %i.bw = call ptr @Llb_ManFlowFindBestCut(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.y, i32 noundef %1) ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.g, label %.critedge69

bb.g:                                             ; preds = %.thread
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %putchar65 = call i32 @putchar(i32 10)          ; 0 uses
  br label %.critedge67

.critedge69:                                      ; preds = %.thread
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.y)
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.bw)
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.critedge

.critedge67:                                      ; preds = %bb.f, %bb.g, %Llb_ManCutVolume.exit
  %.2 = phi ptr [ %.161114, %Llb_ManCutVolume.exit ], [ null, %bb.g ], [ null, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv137
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !119

.critedge:                                        ; preds = %.critedge67, %bb.f, %.critedge69
  %.058112.in = phi i64 [ %indvars.iv, %.critedge69 ], [ %indvars.iv137, %.critedge67 ], [ %indvars.iv, %bb.f ] ; 2 uses
  %.3 = phi ptr [ %i.bw, %.critedge69 ], [ %.2, %.critedge67 ], [ %i.bu, %bb.f ] ; 2 uses
  %i.by = and i64 %.058112.in, 4294967295         ; 2 uses
  %i.bz = icmp eq i64 %i.by, %indvars.iv137
  br i1 %i.bz, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ca = zext i32 %i.r to i64
  %i.cb = icmp eq i64 %indvars.iv137, %i.ca
  br i1 %i.cb, label %bb.i, label %Vec_PtrPush.exit95

bb.i:                                             ; preds = %bb.h
  %i.cc = icmp samesign ult i64 %indvars.iv137, 16
  br i1 %i.cc, label %Vec_PtrGrow.exit12.sink.split.i91, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = icmp samesign ult i64 %indvars.iv137, 1073741823
  %indvars.iv137.tr = trunc nuw i64 %indvars.iv137 to i32
  %i.ce = shl nuw i32 %indvars.iv137.tr, 1
  %spec.select.i88 = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 2 uses
  %i.cf = zext i32 %spec.select.i88 to i64        ; 2 uses
  %.not.i10.i89 = icmp samesign ult i64 %indvars.iv137, %i.cf
  br i1 %.not.i10.i89, label %bb.k, label %Vec_PtrPush.exit95

bb.k:                                             ; preds = %bb.j
  %i.cg = shl nuw nsw i64 %i.cf, 3
  br label %Vec_PtrGrow.exit12.sink.split.i91

Vec_PtrGrow.exit12.sink.split.i91:                ; preds = %bb.i, %bb.k
  %.sink = phi i64 [ %i.cg, %bb.k ], [ 128, %bb.i ]
  %spec.select.sink.i92 = phi i32 [ %spec.select.i88, %bb.k ], [ 16, %bb.i ] ; 2 uses
  %i.ch = call ptr @realloc(ptr noundef nonnull %storemerge126, i64 noundef %.sink) #22
  store i32 %spec.select.sink.i92, ptr %i.j, align 8, !tbaa !24
  br label %Vec_PtrPush.exit95

Vec_PtrPush.exit95:                               ; preds = %bb.h, %bb.j, %Vec_PtrGrow.exit12.sink.split.i91
  %i.ci = phi i32 [ %i.r, %bb.h ], [ %i.r, %bb.j ], [ %spec.select.sink.i92, %Vec_PtrGrow.exit12.sink.split.i91 ]
  %storemerge127 = phi ptr [ %storemerge126, %bb.h ], [ %storemerge126, %bb.j ], [ %i.ch, %Vec_PtrGrow.exit12.sink.split.i91 ] ; 7 uses
  %indvars.iv.next138 = add nuw i64 %indvars.iv137, 1 ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %storemerge127, i64 %indvars.iv137
  store ptr null, ptr %i.cj, align 8, !tbaa !27
  %i.ck = shl i64 %.058112.in, 32
  %i.cl = ashr exact i64 %i.ck, 32                ; 4 uses
  %i.cm = icmp sgt i64 %indvars.iv137, %i.cl
  br i1 %i.cm, label %.lr.ph125.preheader, label %._crit_edge

.lr.ph125.preheader:                              ; preds = %Vec_PtrPush.exit95
  %i.cn = sub i64 %indvars.iv137, %i.cl           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 26
  br i1 %min.iters.check, label %.lr.ph125.preheader160, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph125.preheader
  %i.co = sub i64 %i.s, %i.cl                     ; 2 uses
  %i.cp = trunc i64 %i.co to i35
  %mul.result = shl i35 %i.cp, 3
  %i.cq = sub i35 %i.v, %mul.result
  %i.cr = icmp sgt i35 %i.cq, %i.v
  %i.cs = icmp ugt i64 %i.co, 4294967295
  %i.ct = or i1 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph125.preheader160, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %7 = shl i64 %indvar, 3
  %8 = shl i35 %6, 3
  %9 = add i35 %8, 24
  %10 = sext i35 %9 to i64
  %reass.sub = sub i64 %10, %7
  %11 = add i64 %reass.sub, -33
  %diff.check = icmp ult i64 %11, 31
  br i1 %diff.check, label %.lr.ph125.preheader160, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, -4                      ; 4 uses
  %i.cu = sub i64 %indvars.iv137, %n.vec
  %i.cv = sub i64 %indvars.iv.next138, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = sub i64 %indvars.iv137, %index
  %i.cx = sub i64 %indvars.iv.next138, %index
  %i.cy = shl i64 %i.cx, 32
  %i.cz = ashr exact i64 %i.cy, 29
  %i.da = getelementptr i8, ptr %storemerge127, i64 %i.cz ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = getelementptr i8, ptr %i.da, i64 -40
  %wide.load = load <2 x ptr>, ptr %i.db, align 8, !tbaa !27
  %wide.load158 = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !27
  %i.dd = getelementptr inbounds [8 x i8], ptr %storemerge127, i64 %i.cw ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -24
  store <2 x ptr> %wide.load, ptr %i.de, align 8, !tbaa !27
  store <2 x ptr> %wide.load158, ptr %i.df, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph125.preheader160

.lr.ph125.preheader160:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph125.preheader, %middle.block
  %indvars.iv139.ph = phi i64 [ %indvars.iv137, %vector.memcheck ], [ %indvars.iv137, %vector.scevcheck ], [ %indvars.iv137, %.lr.ph125.preheader ], [ %i.cu, %middle.block ]
  %.0.in123.in.ph = phi i64 [ %indvars.iv.next138, %vector.memcheck ], [ %indvars.iv.next138, %vector.scevcheck ], [ %indvars.iv.next138, %.lr.ph125.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader160, %.lr.ph125
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %.lr.ph125 ], [ %indvars.iv139.ph, %.lr.ph125.preheader160 ] ; 3 uses
  %.0.in123.in = phi i64 [ %indvars.iv139, %.lr.ph125 ], [ %.0.in123.in.ph, %.lr.ph125.preheader160 ]
  %i.dh = shl i64 %.0.in123.in, 32
  %i.di = ashr exact i64 %i.dh, 29
  %i.dj = getelementptr i8, ptr %storemerge127, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !27
  %i.dm = getelementptr inbounds [8 x i8], ptr %storemerge127, i64 %indvars.iv139
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !27
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, -1 ; 2 uses
  %i.dn = icmp sgt i64 %indvars.iv.next140, %i.cl
  br i1 %i.dn, label %.lr.ph125, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph125, %middle.block, %Vec_PtrPush.exit95
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %storemerge127, i64 %i.by
  store ptr %.3, ptr %i.do, align 8, !tbaa !27
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %.critedge
  %i.dp = trunc nuw nsw i64 %indvars.iv137 to i32 ; 2 uses
  store ptr %storemerge126, ptr %i.m, align 8
  store i32 %i.dp, ptr %i.k, align 4
  %.not64 = icmp eq i32 %2, 0
  br i1 %.not64, label %Llb_ManResultPrint.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = add nsw i32 %i.dp, -1
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.dq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ds = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.peel.next, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = load i64, ptr %4, align 8, !tbaa !124
  %i.dv = mul nsw i64 %i.du, 1000000
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !125
  %i.dy = sdiv i64 %i.dx, 1000
  %i.dz = add nsw i64 %i.dy, %i.dv
  br label %.peel.next

.peel.next:                                       ; preds = %bb.m, %bb.n
  %.0.i96 = phi i64 [ %i.dz, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ea = add i64 %.0.i96, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16)
  %i.eb = sitofp i64 %i.ea to double
  %i.ec = fdiv double %i.eb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.ec)
  %indvars.iv.next.i101.peel = add nsw i64 %indvars.iv137, -1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %storemerge126, i64 %indvars.iv.next.i101.peel
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.peel.next
  %indvars.iv.i100 = phi i64 [ %indvars.iv.next.i101.peel, %.peel.next ], [ %indvars.iv.next.i101, %bb.q ] ; 3 uses
  %.01014.i = phi ptr [ %i.ee, %.peel.next ], [ %i.eg, %bb.q ]
  %indvars.iv.next.i101 = add nsw i64 %indvars.iv.i100, -1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %storemerge126, i64 %indvars.iv.next.i101
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !27 ; 2 uses
  %i.eh = icmp slt i64 %indvars.iv.i100, %indvars.iv137
  br i1 %i.eh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef %i.eg, ptr noundef %.01014.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ei = icmp samesign ugt i64 %indvars.iv.i100, 1
  br i1 %i.ei, label %bb.o, label %Llb_ManResultPrint.exit, !llvm.loop !122

Llb_ManResultPrint.exit:                          ; preds = %bb.q, %bb.l
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Llb_BddSetDefaultParams(ptr nofree noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store <4 x i32> <i32 1000000, i32 10000000, i32 20, i32 0>, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 0, i32 0, i32 100, i32 30>, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.e, align 4, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.f, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.h, align 8, !tbaa !62
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define void @Llb_ManMinCutTest(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Gia_ParLlb_t_, align 16     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store <4 x i32> <i32 1000000, i32 10000000, i32 20, i32 0>, ptr %2, align 16, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> <i32 0, i32 0, i32 100, i32 30>, ptr %i.b, align 16, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 0, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.f, align 8, !tbaa !62
  %i.g = tail call ptr @Aig_ManDupFlopsOnly(ptr noundef %0) #23 ; 7 uses
  tail call void @Aig_ManPrintStats(ptr noundef %0) #23
  tail call void @Aig_ManPrintStats(ptr noundef %i.g) #23
  tail call void @Aig_ManFanoutStart(ptr noundef %i.g) #23
  %i.h = tail call ptr @Llb_ManComputeCuts(ptr noundef %i.g, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 5 uses
  %i.i = call i32 @Llb_CoreExperiment(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %2, ptr noundef %i.h, i64 noundef 0) #23 ; 0 uses
  %i.j = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %.val11.i = load i32, ptr %i.j, align 4, !tbaa !132 ; 2 uses
  %i.k = icmp sgt i32 %.val11.i, 0
  br i1 %i.k, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.h, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.val14.i = phi i32 [ %.val11.i, %.lr.ph.i ], [ %.val.i, %bb.e ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.val8.i = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.p) #23
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.d, %bb.c
  call void @free(ptr noundef nonnull %i.n) #23
  %.val.pre.i = load i32, ptr %i.j, align 4, !tbaa !132
  br label %bb.e

bb.e:                                             ; preds = %Vec_PtrFree.exit.i, %bb.b
  %.val.i = phi i32 [ %.val14.i, %bb.b ], [ %.val.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = sext i32 %.val.i to i64
  %i.r = icmp slt i64 %indvars.iv.next.i, %i.q
  br i1 %i.r, label %bb.b, label %.critedge.i, !llvm.loop !130

.critedge.i:                                      ; preds = %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not.i9.i = icmp eq ptr %i.t, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  call void @free(ptr noundef nonnull %i.t) #23
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.f
  call void @free(ptr noundef nonnull %i.h) #23
  call void @Aig_ManFanoutStop(ptr noundef %i.g) #23
  call void @Aig_ManCleanMarkAB(ptr noundef %i.g) #23
  call void @Aig_ManStop(ptr noundef %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare ptr @Aig_ManDupFlopsOnly(ptr noundef) local_unnamed_addr #7

declare void @Aig_ManPrintStats(ptr noundef) local_unnamed_addr #7

declare void @Aig_ManFanoutStart(ptr noundef) local_unnamed_addr #7

declare i32 @Llb_CoreExperiment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @Aig_ManFanoutStop(ptr noundef) local_unnamed_addr #7

declare void @Aig_ManCleanMarkAB(ptr noundef) local_unnamed_addr #7
end_hunk_0
