Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclUpsize?download=true
inline.NumInlined: 487
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_SclFindUpsizes:bb.a
  %.not.i9.i126 = icmp samesign ult i32 %i.hq, %spec.select.i125
  br i1 %.not.i9.i126, label %bb.al, label %Vec_IntPush.exit132

bb.al:                                            ; preds = %bb.ak
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i127 = icmp eq ptr %i.ic, null
  %i.id = zext nneg i32 %spec.select.i125 to i64
  %i.ie = shl nuw nsw i64 %i.id, 2                ; 2 uses
  br i1 %.not9.i10.i127, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.if = tail call ptr @realloc(ptr noundef nonnull %i.ic, i64 noundef %i.ie) #24
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ig = tail call noalias ptr @malloc(i64 noundef %i.ie) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ih = phi ptr [ %i.if, %bb.am ], [ %i.ig, %bb.an ]
  store ptr %i.ih, ptr %i.ib, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i128

Vec_IntGrow.exit11.sink.split.i128:               ; preds = %bb.ao, %Vec_IntGrow.exit.i131
  %spec.select.sink.i129 = phi i32 [ %spec.select.i125, %bb.ao ], [ 16, %Vec_IntGrow.exit.i131 ]
  store i32 %spec.select.sink.i129, ptr %i.hh, align 8, !tbaa !26
  %.pre159 = load i32, ptr %i.hp, align 4, !tbaa !25
  br label %Vec_IntPush.exit132

Vec_IntPush.exit132:                              ; preds = %Vec_IntPush.exit, %bb.ak, %Vec_IntGrow.exit11.sink.split.i128
  %i.ii = phi i32 [ %i.hq, %Vec_IntPush.exit ], [ %i.hq, %bb.ak ], [ %.pre159, %Vec_IntGrow.exit11.sink.split.i128 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !27
  %i.il = add nsw i32 %i.ii, 1
  store i32 %i.il, ptr %i.hp, align 4, !tbaa !25
  %i.im = sext i32 %i.ii to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.im
  store i32 %i.ho, ptr %i.in, align 4, !tbaa !46
  tail call void @Abc_SclTimeIncInsert(ptr noundef nonnull %0, ptr noundef nonnull %i.cq) #26
  %i.io = load ptr, ptr %i.ci, align 8, !tbaa !100
  %.val = load i32, ptr %i.du, align 8, !tbaa !23
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %.val100 = load ptr, ptr %i.ip, align 8, !tbaa !27
  %i.iq = sext i32 %.val to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %.val100, i64 %i.iq
  store i32 %4, ptr %i.ir, align 4, !tbaa !46
  %i.is = add nsw i32 %.077145, 1                 ; 2 uses
  %i.it = icmp eq i32 %i.is, %i.bz
  br i1 %i.it, label %.thread, label %Abc_SclObjCheckMarkedFanFans.exit.thread

Abc_SclObjCheckMarkedFanFans.exit.thread:         ; preds = %bb.l, %bb.m, %bb.j, %Vec_IntPush.exit132
  %.1 = phi i32 [ %i.is, %Vec_IntPush.exit132 ], [ %.077145, %bb.j ], [ %.077145, %bb.m ], [ %.077145, %bb.l ] ; 2 uses
  %i.iu = load ptr, ptr %i.l, align 8, !tbaa !89  ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 4
  %.val108 = load i32, ptr %i.iv, align 4, !tbaa !67
  %.not = icmp eq i32 %.val108, 1
  br i1 %.not, label %.thread, label %bb.j

.thread:                                          ; preds = %Abc_SclObjCheckMarkedFanFans.exit.thread, %Vec_IntPush.exit132
  %.2.ph = phi i32 [ %.1, %Abc_SclObjCheckMarkedFanFans.exit.thread ], [ %i.bz, %Vec_IntPush.exit132 ]
  %.val102.pre = load i32, ptr %i.cb, align 4, !tbaa !52 ; 3 uses
  %.pre161.pre = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 7 uses
  %i.iw = icmp sgt i32 %.val102.pre, 0
  br i1 %i.iw, label %.lr.ph149, label %.critedge2

.lr.ph149:                                        ; preds = %.thread
  %wide.trip.count = zext nneg i32 %.val102.pre to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ix = icmp ult i32 %.val102.pre, 4
  br i1 %i.ix, label %.epil.preheader, label %.lr.ph149.new

.lr.ph149.new:                                    ; preds = %.lr.ph149
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph149.new
  %indvars.iv152 = phi i64 [ 0, %.lr.ph149.new ], [ %indvars.iv.next153.3, %bb.ap ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph149.new ], [ %niter.next.3, %bb.ap ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.pre161.pre, i64 %indvars.iv152
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 20 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = and i32 %i.jb, -33
  store i32 %i.jc, ptr %i.ja, align 4
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.pre161.pre, i64 %indvars.iv152
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !47
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 20 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = and i32 %i.jh, -33
  store i32 %i.ji, ptr %i.jg, align 4
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.pre161.pre, i64 %indvars.iv152
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !47
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 20 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = and i32 %i.jn, -33
  store i32 %i.jo, ptr %i.jm, align 4
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %.pre161.pre, i64 %indvars.iv152
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !47
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 20 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = and i32 %i.jt, -33
  store i32 %i.ju, ptr %i.js, align 4
  %indvars.iv.next153.3 = add nuw nsw i64 %indvars.iv152, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge2.thread.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !157

.critedge2:                                       ; preds = %.thread
  %.not.i133 = icmp eq ptr %.pre161.pre, null
  br i1 %.not.i133, label %Vec_PtrFree.exit, label %.critedge2.thread

.critedge2.thread.loopexit.unr-lcssa:             ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.thread.loopexit.unr-lcssa, %.lr.ph149
  %indvars.iv152.epil.init = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next153.3, %.critedge2.thread.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %indvars.iv152.epil = phi i64 [ %indvars.iv152.epil.init, %.epil.preheader ], [ %indvars.iv.next153.epil, %bb.aq ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aq ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.pre161.pre, i64 %indvars.iv152.epil
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 20 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = and i32 %i.jy, -33
  store i32 %i.jz, ptr %i.jx, align 4
  %indvars.iv.next153.epil = add nuw nsw i64 %indvars.iv152.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.thread, label %bb.aq, !llvm.loop !158

.critedge2.thread:                                ; preds = %.critedge2.thread.loopexit.unr-lcssa, %bb.aq, %.critedge2
  tail call void @free(ptr noundef nonnull %.pre161.pre) #26
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %.critedge2.thread
  tail call void @free(ptr noundef nonnull %i.ca) #26
  br label %bb.ar

bb.ar:                                            ; preds = %Vec_IntFree.exit120, %Vec_PtrFree.exit
  %.083 = phi i32 [ %.2.ph, %Vec_PtrFree.exit ], [ 0, %Vec_IntFree.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.083
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_SclApplyUpdateToBest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val2526 = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = icmp sgt i32 %.val2526, 1
  br i1 %i.b, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.i
  store i32 %i.h, ptr %i.j, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.k = or disjoint i64 %indvars.iv.next, 1
  %.val25 = load i32, ptr %i.a, align 4, !tbaa !25
  %i.l = sext i32 %.val25 to i64
  %i.m = icmp slt i64 %i.k, %i.l
  br i1 %i.m, label %.critedge, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_SclUndoRecentChanges(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val22 = load i32, ptr %i.a, align 4, !tbaa !25 ; 2 uses
  %i.b = icmp sgt i32 %.val22, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %2 = udiv i32 %.val22, 3
  %i.f = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !27
  %.idx = mul nuw nsw i64 %indvars.iv.next, 12
  %i.g = getelementptr inbounds nuw i8, ptr %.val21, i64 %.idx ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %.val25 = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.i = getelementptr i8, ptr %.val25, i64 8
  %.val25.val = load ptr, ptr %i.i, align 8, !tbaa !45 ; 3 uses
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val25.val, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val25.val, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val25.val, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 3 uses
  tail call void @Abc_ObjPatchFanin(ptr noundef %i.l, ptr noundef %i.q, ptr noundef %i.v) #26
  tail call void @Abc_SclTimeIncUpdateLevel(ptr noundef %i.l) #26
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !91
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @Abc_SclIsInv(ptr noundef %i.v) #26
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @Abc_NodeInvUpdateObjFanoutPolarity(ptr noundef %i.v, ptr noundef %i.l) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_SclUpsizePrintDiffs(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !160
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 6 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #25 ; 4 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.d) #25 ; 4 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #25 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.e, ptr align 4 %i.i, i64 %i.d, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %i.k, i64 %i.d, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.m, i64 %i.d, i1 false)
  tail call void @Abc_SclTimeNtkRecompute(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, float noundef 0.000000e+00) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val119 = load i32, ptr %i.p, align 4, !tbaa !52
  %i.q = icmp sgt i32 %.val119, 0
  br i1 %i.q, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.a ] ; 17 uses
  %i.r = phi ptr [ %i.db, %bb.o ], [ %i.o, %bb.a ]
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val116.val = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val116.val, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %i.u, i64 20
  %.val117 = load i32, ptr %i.w, align 4
  %i.x = and i32 %.val117, 15
  %.not118 = icmp eq i32 %i.x, 7
  br i1 %.not118, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !85   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load float, ptr %i.z, align 4, !tbaa !72 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !72 ; 2 uses
  %i.ad = fsub float %i.aa, %i.ac                 ; 2 uses
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = fcmp ogt float %i.ae, 1.000000e-03
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = fpext float %i.ad to double
  %i.ah = fpext float %i.aa to double
  %i.ai = fpext float %i.ac to double
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.aj, double noundef %i.ag, double noundef %i.ah, double noundef %i.ai) ; 0 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi ptr [ %.pre, %bb.d ], [ %i.y, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !73 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !73 ; 2 uses
  %i.ar = fsub float %i.ao, %i.aq                 ; 2 uses
  %i.as = tail call float @llvm.fabs.f32(float %i.ar)
  %i.at = fcmp ogt float %i.as, 1.000000e-03
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = fpext float %i.ar to double
  %i.av = fpext float %i.ao to double
  %i.aw = fpext float %i.aq to double
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ax, double noundef %i.au, double noundef %i.av, double noundef %i.aw) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !84  ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !72 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !72 ; 2 uses
  %i.be = fsub float %i.bb, %i.bd                 ; 2 uses
  %i.bf = tail call float @llvm.fabs.f32(float %i.be)
  %i.bg = fcmp ogt float %i.bf, 1.000000e-03
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = fpext float %i.be to double
  %i.bi = fpext float %i.bb to double
  %i.bj = fpext float %i.bd to double
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.bk, double noundef %i.bh, double noundef %i.bi, double noundef %i.bj) ; 0 uses
  %.pre122 = load ptr, ptr %i.j, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = phi ptr [ %.pre122, %bb.h ], [ %i.az, %bb.g ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !73 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !73 ; 2 uses
  %i.bs = fsub float %i.bp, %i.br                 ; 2 uses
  %i.bt = tail call float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp ogt float %i.bt, 1.000000e-03
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = fpext float %i.bs to double
  %i.bw = fpext float %i.bp to double
  %i.bx = fpext float %i.br to double
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.by, double noundef %i.bv, double noundef %i.bw, double noundef %i.bx) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !72 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !72 ; 2 uses
  %i.cf = fsub float %i.cc, %i.ce                 ; 2 uses
  %i.cg = tail call float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp ogt float %i.cg, 1.000000e-03
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = fpext float %i.cf to double
  %i.cj = fpext float %i.cc to double
  %i.ck = fpext float %i.ce to double
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cl, double noundef %i.ci, double noundef %i.cj, double noundef %i.ck) ; 0 uses
  %.pre123 = load ptr, ptr %i.h, align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cn = phi ptr [ %.pre123, %bb.l ], [ %i.ca, %bb.k ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !73 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !73 ; 2 uses
end_hunk_0
begin_hunk_1_@Abc_SclUpsizePerformInt:bb.a
  %i.kj = add i64 %.0.i285, %.0.i281.neg
  %i.kk = load i64, ptr %i.cz, align 8, !tbaa !186
  %i.kl = add nsw i64 %i.kj, %i.kk
  store i64 %i.kl, ptr %i.cz, align 8, !tbaa !186
  %i.km = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.kn = load ptr, ptr %i.da, align 8, !tbaa !64 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %.val.i.i = load i32, ptr %i.ko, align 4, !tbaa !67
  %i.kp = icmp sgt i32 %.val.i.i, 1
  br i1 %i.kp, label %bb.aw, label %Abc_SclReadMaxDelay.exit

bb.aw:                                            ; preds = %Abc_Clock.exit286
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !68
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !46
  %i.ku = sext i32 %i.kt to i64
  br label %Abc_SclReadMaxDelay.exit

Abc_SclReadMaxDelay.exit:                         ; preds = %Abc_Clock.exit286, %bb.aw
  %i.kv = phi i64 [ %i.ku, %bb.aw ], [ -1, %Abc_Clock.exit286 ]
  %i.kw = getelementptr i8, ptr %i.km, i64 64
  %.val.i287 = load ptr, ptr %i.kw, align 8, !tbaa !69
  %i.kx = getelementptr i8, ptr %.val.i287, i64 8
  %.val.val.i = load ptr, ptr %i.kx, align 8, !tbaa !45
  %i.ky = getelementptr inbounds [8 x i8], ptr %.val.val.i, i64 %i.kv
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !47
  %.val3.i = load ptr, ptr %i.db, align 8, !tbaa !70
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  %.val4.i = load i32, ptr %i.la, align 8, !tbaa !23
  %i.lb = zext i32 %.val4.i to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.val3.i, i64 %i.lb ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !72 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lf = load float, ptr %i.le, align 4, !tbaa !73 ; 2 uses
  %i.lg = fcmp ogt float %i.ld, %i.lf
  %i.lh = select i1 %i.lg, float %i.ld, float %i.lf ; 3 uses
  store float %i.lh, ptr %i.dc, align 8, !tbaa !74
  %i.li = load float, ptr %i.cc, align 4, !tbaa !105
  %i.lj = fcmp ogt float %i.li, %i.lh
  br i1 %i.lj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %Abc_SclReadMaxDelay.exit
  store float %i.lh, ptr %i.cc, align 4, !tbaa !105
  %i.lk = load ptr, ptr %i.dd, align 8, !tbaa !99 ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 4      ; 3 uses
  %.val2526.i = load i32, ptr %i.ll, align 4, !tbaa !25
  %i.lm = icmp sgt i32 %.val2526.i, 1
  br i1 %i.lm, label %.critedge.lr.ph.i, label %Abc_SclApplyUpdateToBest.exit

.critedge.lr.ph.i:                                ; preds = %bb.ax
  %i.ln = load ptr, ptr %i.bz, align 8, !tbaa !179
  %i.lo = getelementptr i8, ptr %i.lk, i64 8
  %.val22.i = load ptr, ptr %i.lo, align 8, !tbaa !27
  %i.lp = getelementptr i8, ptr %i.ln, i64 8
  %.val23.i = load ptr, ptr %i.lp, align 8, !tbaa !27
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.lr.ph.i
  %indvars.iv.i288 = phi i64 [ 0, %.critedge.lr.ph.i ], [ %indvars.iv.next.i289, %.critedge.i ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.val22.i, i64 %indvars.iv.i288 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !46
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !46
  %i.lu = sext i32 %i.lr to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %.val23.i, i64 %i.lu
  store i32 %i.lt, ptr %i.lv, align 4, !tbaa !46
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i288, 2 ; 2 uses
  %i.lw = or disjoint i64 %indvars.iv.next.i289, 1
  %.val25.i = load i32, ptr %i.ll, align 4, !tbaa !25
  %i.lx = sext i32 %.val25.i to i64
  %i.ly = icmp slt i64 %i.lw, %i.lx
  br i1 %i.ly, label %.critedge.i, label %Abc_SclApplyUpdateToBest.exit, !llvm.loop !5

Abc_SclApplyUpdateToBest.exit:                    ; preds = %.critedge.i, %bb.ax
  store i32 0, ptr %i.ll, align 4, !tbaa !25
  %i.lz = load ptr, ptr %i.de, align 8, !tbaa !94
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 0, ptr %i.ma, align 4, !tbaa !25
  br label %bb.az

bb.ay:                                            ; preds = %Abc_SclReadMaxDelay.exit
  %i.mb = add nsw i32 %.0208360, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %Abc_SclApplyUpdateToBest.exit
  %.1209 = phi i32 [ 0, %Abc_SclApplyUpdateToBest.exit ], [ %i.mb, %bb.ay ] ; 3 uses
  %i.mc = getelementptr i8, ptr %.2326, i64 4     ; 2 uses
  %.2.val250 = load i32, ptr %i.mc, align 4, !tbaa !25
  %i.md = getelementptr i8, ptr %.2218324, i64 4  ; 2 uses
  %.2218.val249 = load i32, ptr %i.md, align 4, !tbaa !25
  %i.me = load i32, ptr %i.cr, align 4, !tbaa !183
  %.not235 = icmp eq i32 %i.me, 0
  br i1 %.not235, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i32, ptr %i.o, align 4, !tbaa !169
  %i.mg = icmp ne i32 %i.mf, 0
  %i.mh = icmp eq i32 %.1209, 0
  %i.mi = select i1 %i.mg, i1 %i.mh, i1 false
  %i.mj = zext i1 %i.mi to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.mk = phi i32 [ 1, %bb.az ], [ %i.mj, %bb.ba ]
  call void @Abc_SclUpsizePrint(ptr noundef nonnull %i.az, i32 noundef %.0214358, i32 noundef %.0213349, i32 noundef %.2.val250, i32 noundef %.2218.val249, i32 noundef %.3325, i32 noundef %.1207, i32 noundef %i.mk)
  %.2.val = load i32, ptr %i.mc, align 4, !tbaa !25
  %i.ml = add nsw i32 %.2.val, %.0204362          ; 5 uses
  %.2218.val = load i32, ptr %i.md, align 4, !tbaa !25
  %i.mm = add nsw i32 %.2218.val, %.0202363       ; 5 uses
  %i.mn = add nsw i32 %.1207, %.0200364           ; 5 uses
  %i.mo = add nsw i32 %.3325, %.0198365           ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.2326, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !27 ; 2 uses
  %.not.i290 = icmp eq ptr %i.mq, null
  br i1 %.not.i290, label %Vec_IntFree.exit291, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.mq) #26
  br label %Vec_IntFree.exit291

Vec_IntFree.exit291:                              ; preds = %bb.bb, %bb.bc
  call void @free(ptr noundef nonnull %.2326) #26
  %i.mr = getelementptr inbounds nuw i8, ptr %.2218324, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !27 ; 2 uses
  %.not.i292 = icmp eq ptr %i.ms, null
  br i1 %.not.i292, label %Vec_IntFree.exit293, label %bb.bd

bb.bd:                                            ; preds = %Vec_IntFree.exit291
  call void @free(ptr noundef nonnull %i.ms) #26
  br label %Vec_IntFree.exit293

Vec_IntFree.exit293:                              ; preds = %Vec_IntFree.exit291, %bb.bd
  call void @free(ptr noundef nonnull %.2218324) #26
  br i1 %.not236, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %Vec_IntFree.exit293
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.mt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #26
  %i.mu = icmp slt i32 %i.mt, 0
  br i1 %i.mu, label %Abc_Clock.exit295, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mv = load i64, ptr %8, align 8, !tbaa !107
  %i.mw = mul nsw i64 %i.mv, 1000000
  %i.mx = load i64, ptr %i.df, align 8, !tbaa !108
  %i.my = sdiv i64 %i.mx, 1000
  %i.mz = add nsw i64 %i.my, %i.mw
  br label %Abc_Clock.exit295

Abc_Clock.exit295:                                ; preds = %bb.be, %bb.bf
  %.0.i294 = phi i64 [ %i.mz, %bb.bf ], [ -1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.na = icmp sgt i64 %.0.i294, %i.n
  br i1 %i.na, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %Abc_Clock.exit295, %Vec_IntFree.exit293
  %i.nb = load i32, ptr %i.dg, align 4, !tbaa !187
  %i.nc = icmp sgt i32 %.1209, %i.nb
  br i1 %i.nc, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nd = load float, ptr %i.cc, align 4, !tbaa !105
  %i.ne = load i32, ptr %i.cd, align 4, !tbaa !175
  %i.nf = sitofp i32 %i.ne to float
  %i.ng = fcmp ugt float %i.nd, %i.nf
  br i1 %i.ng, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.nh = add nuw nsw i32 %.0214358, 1            ; 3 uses
  %i.ni = load i32, ptr %2, align 4, !tbaa !170
  %i.nj = icmp slt i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.l, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %bb.bh, %bb.bg, %Abc_Clock.exit295, %._crit_edge, %bb.bi, %.preheader, %bb.k
  %.1215 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %.0214358, %bb.bh ], [ %.0214358, %bb.bg ], [ %.0214358, %Abc_Clock.exit295 ], [ %.0214358, %._crit_edge ], [ %i.nh, %bb.bi ] ; 2 uses
  %.1205 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.ml, %bb.bh ], [ %i.ml, %bb.bg ], [ %i.ml, %Abc_Clock.exit295 ], [ %.0204362, %._crit_edge ], [ %i.ml, %bb.bi ]
  %.1203 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mm, %bb.bh ], [ %i.mm, %bb.bg ], [ %i.mm, %Abc_Clock.exit295 ], [ %.0202363, %._crit_edge ], [ %i.mm, %bb.bi ]
  %.1201 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mn, %bb.bh ], [ %i.mn, %bb.bg ], [ %i.mn, %Abc_Clock.exit295 ], [ %.0200364, %._crit_edge ], [ %i.mn, %bb.bi ]
  %.1199 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mo, %bb.bh ], [ %i.mo, %bb.bg ], [ %i.mo, %Abc_Clock.exit295 ], [ %.0198365, %._crit_edge ], [ %i.mo, %bb.bi ]
  %i.nk = load ptr, ptr %i.bz, align 8, !tbaa !179
  %i.nl = load ptr, ptr %i.bk, align 8, !tbaa !63 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 376 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !78
  store ptr %i.nn, ptr %i.bz, align 8, !tbaa !179
  store ptr %i.nk, ptr %i.nm, align 8, !tbaa !78
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !181
  %.not237 = icmp eq i32 %i.np, 0
  br i1 %.not237, label %Abc_SclUpsizeRemoveDangling.exit, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  %i.nq = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !94 ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 4
  %.val22.i296 = load i32, ptr %i.ns, align 4, !tbaa !25 ; 2 uses
  %i.nt = icmp sgt i32 %.val22.i296, 2
  br i1 %i.nt, label %.lr.ph.i297, label %Abc_SclUndoRecentChanges.exit.thread

.lr.ph.i297:                                      ; preds = %bb.bj
  %i.nu = getelementptr i8, ptr %i.nr, i64 8
  %i.nv = getelementptr i8, ptr %i.nl, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nl, i64 384
  %19 = udiv i32 %.val22.i296, 3
  %i.nx = zext nneg i32 %19 to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %.lr.ph.i297
  %indvars.iv.i298 = phi i64 [ %i.nx, %.lr.ph.i297 ], [ %indvars.iv.next.i299, %bb.bn ] ; 2 uses
  %indvars.iv.next.i299 = add nsw i64 %indvars.iv.i298, -1 ; 2 uses
  %.val21.i = load ptr, ptr %i.nu, align 8, !tbaa !27
  %.idx.i = mul nuw nsw i64 %indvars.iv.next.i299, 12
  %i.ny = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %.idx.i ; 3 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !46
  %.val25.i300 = load ptr, ptr %i.nv, align 8, !tbaa !42
  %i.oa = getelementptr i8, ptr %.val25.i300, i64 8
  %.val25.val.i = load ptr, ptr %i.oa, align 8, !tbaa !45 ; 3 uses
  %i.ob = sext i32 %i.nz to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.ob
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !47 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !46
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !47
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !46
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !47 ; 3 uses
  call void @Abc_ObjPatchFanin(ptr noundef %i.od, ptr noundef %i.oi, ptr noundef %i.on) #26
  call void @Abc_SclTimeIncUpdateLevel(ptr noundef %i.od) #26
  %i.oo = load ptr, ptr %i.nw, align 8, !tbaa !91
  %.not.i301 = icmp eq ptr %i.oo, null
  br i1 %.not.i301, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.op = call i32 @Abc_SclIsInv(ptr noundef %i.on) #26
  %.not19.i = icmp eq i32 %i.op, 0
  br i1 %.not19.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @Abc_NodeInvUpdateObjFanoutPolarity(ptr noundef %i.on, ptr noundef %i.od) #26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.oq = icmp samesign ugt i64 %indvars.iv.i298, 1
  br i1 %i.oq, label %bb.bk, label %Abc_SclUndoRecentChanges.exit, !llvm.loop !6

Abc_SclUndoRecentChanges.exit:                    ; preds = %bb.bn
  %.pr.pre = load i32, ptr %i.no, align 4, !tbaa !181
  %i.or = icmp eq i32 %.pr.pre, 0
  br i1 %i.or, label %Abc_SclUpsizeRemoveDangling.exit, label %Abc_SclUndoRecentChanges.exit.thread

Abc_SclUndoRecentChanges.exit.thread:             ; preds = %bb.bj, %Abc_SclUndoRecentChanges.exit
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !42 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 4
  %.val1423.i = load i32, ptr %i.ou, align 4, !tbaa !52
  %i.ov = icmp sgt i32 %.val1423.i, 0
  br i1 %i.ov, label %.lr.ph.i303, label %Abc_SclUpsizeRemoveDangling.exit

.lr.ph.i303:                                      ; preds = %Abc_SclUndoRecentChanges.exit.thread
  %i.ow = getelementptr inbounds nuw i8, ptr %i.az, i64 236 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bs, %.lr.ph.i303
  %i.ox = phi ptr [ %i.ot, %.lr.ph.i303 ], [ %i.qc, %bb.bs ] ; 5 uses
  %indvars.iv.i304 = phi i64 [ 0, %.lr.ph.i303 ], [ %indvars.iv.next.i306, %bb.bs ] ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 8
  %.val15.val.i = load ptr, ptr %i.oy, align 8, !tbaa !45
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i304
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !47 ; 8 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pc = getelementptr i8, ptr %i.pa, i64 20
  %.val16.i = load i32, ptr %i.pc, align 4
  %i.pd = and i32 %.val16.i, 15
  %.not.i305 = icmp eq i32 %i.pd, 7
  br i1 %.not.i305, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pe = load ptr, ptr %i.pa, align 8, !tbaa !22 ; 3 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 4
  %.val6.i.i = load i32, ptr %i.pf, align 4, !tbaa !110
  %.not.i.not.i = icmp eq i32 %.val6.i.i, 4
  br i1 %.not.i.not.i, label %bb.br, label %Abc_ObjIsBarBuf.exit.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.pg = getelementptr i8, ptr %i.pa, i64 28
  %.val.i.i308 = load i32, ptr %i.pg, align 4, !tbaa !25
  %i.ph = icmp eq i32 %.val.i.i308, 1
  br i1 %i.ph, label %Abc_ObjIsBarBuf.exit.i, label %Abc_ObjIsBarBuf.exit.thread.i

Abc_ObjIsBarBuf.exit.i:                           ; preds = %bb.br
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !96
  %.not22.i = icmp eq ptr %i.pj, null
  br i1 %.not22.i, label %bb.bs, label %Abc_ObjIsBarBuf.exit.thread.i

Abc_ObjIsBarBuf.exit.thread.i:                    ; preds = %Abc_ObjIsBarBuf.exit.i, %bb.br, %bb.bq
  %i.pk = getelementptr i8, ptr %i.pa, i64 44
  %.val.i307 = load i32, ptr %i.pk, align 4, !tbaa !24
  %i.pl = icmp eq i32 %.val.i307, 0
  br i1 %i.pl, label %Abc_SclObjCell.exit.i, label %bb.bs

Abc_SclObjCell.exit.i:                            ; preds = %Abc_ObjIsBarBuf.exit.thread.i
  %i.pm = getelementptr i8, ptr %i.pa, i64 16
  %.val18.i = load i32, ptr %i.pm, align 8, !tbaa !23
  %i.pn = getelementptr i8, ptr %i.pe, i64 376
  %.val.val.i.i = load ptr, ptr %i.pn, align 8, !tbaa !78
  %i.po = getelementptr i8, ptr %.val.val.i.i, i64 8
  %.val.val.val.i.i = load ptr, ptr %i.po, align 8, !tbaa !27
  %i.pp = sext i32 %.val18.i to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %.val.val.val.i.i, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !46 ; 2 uses
  %i.ps = icmp ne i32 %i.pr, -1
  call void @llvm.assume(i1 %i.ps)
  %i.pt = getelementptr i8, ptr %i.pe, i64 368
  %.val4.val.i.i = load ptr, ptr %i.pt, align 8, !tbaa !79
  %i.pu = getelementptr i8, ptr %.val4.val.i.i, i64 112
  %.val5.i19.i = load ptr, ptr %i.pu, align 8, !tbaa !45
  %i.pv = sext i32 %i.pr to i64
  %i.pw = getelementptr inbounds [8 x i8], ptr %.val5.i19.i, i64 %i.pv
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !47
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.pz = load float, ptr %i.py, align 8, !tbaa !97
  %i.qa = load float, ptr %i.ow, align 4, !tbaa !98
  %i.qb = fsub float %i.qa, %i.pz
  store float %i.qb, ptr %i.ow, align 4, !tbaa !98
  call void @Abc_NtkDeleteObj_rec(ptr noundef nonnull %i.pa, i32 noundef 1) #26
  %.pre.i = load ptr, ptr %i.os, align 8, !tbaa !42
  br label %bb.bs

bb.bs:                                            ; preds = %Abc_SclObjCell.exit.i, %Abc_ObjIsBarBuf.exit.thread.i, %Abc_ObjIsBarBuf.exit.i, %bb.bp, %bb.bo
  %i.qc = phi ptr [ %i.ox, %Abc_ObjIsBarBuf.exit.i ], [ %i.ox, %bb.bp ], [ %i.ox, %bb.bo ], [ %.pre.i, %Abc_SclObjCell.exit.i ], [ %i.ox, %Abc_ObjIsBarBuf.exit.thread.i ] ; 2 uses
  %indvars.iv.next.i306 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 4
  %.val14.i = load i32, ptr %i.qd, align 4, !tbaa !52
  %i.qe = sext i32 %.val14.i to i64
  %i.qf = icmp slt i64 %indvars.iv.next.i306, %i.qe
  br i1 %i.qf, label %bb.bo, label %Abc_SclUpsizeRemoveDangling.exit, !llvm.loop !7

Abc_SclUpsizeRemoveDangling.exit:                 ; preds = %bb.bs, %.loopexit, %Abc_SclUndoRecentChanges.exit.thread, %Abc_SclUndoRecentChanges.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %i.az, i64 236 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  call void @Abc_SclTimeNtkRecompute(ptr noundef %i.az, ptr noundef nonnull %i.qg, ptr noundef nonnull %i.qh, i32 noundef 0, float noundef 0.000000e+00) #26
  %i.qi = load i32, ptr %i.o, align 4, !tbaa !169
  %.not239 = icmp eq i32 %i.qi, 0
  br i1 %.not239, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %Abc_SclUpsizeRemoveDangling.exit
  %i.qj = load i32, ptr %i.an, align 4, !tbaa !171
  %i.qk = call i32 @llvm.umax.i32(i32 %.1215, i32 1)
  %i.ql = insertelement <4 x i32> poison, i32 %.1205, i64 0
  %i.qm = insertelement <4 x i32> %i.ql, i32 %.1203, i64 1
  %i.qn = insertelement <4 x i32> %i.qm, i32 %.1199, i64 2
  %i.qo = insertelement <4 x i32> %i.qn, i32 %.1201, i64 3
  %i.qp = insertelement <4 x i32> poison, i32 %i.qk, i64 0
  %i.qq = shufflevector <4 x i32> %i.qp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qr = sdiv <4 x i32> %i.qo, %i.qq             ; 4 uses
  %i.qs = extractelement <4 x i32> %i.qr, i64 0
  %i.qt = extractelement <4 x i32> %i.qr, i64 1
  %i.qu = extractelement <4 x i32> %i.qr, i64 2
  %i.qv = extractelement <4 x i32> %i.qr, i64 3
  call void @Abc_SclUpsizePrint(ptr noundef nonnull %i.az, i32 noundef %.1215, i32 noundef %i.qj, i32 noundef %i.qs, i32 noundef %i.qt, i32 noundef %i.qu, i32 noundef %i.qv, i32 noundef 1)
  br label %bb.bv

bb.bu:                                            ; preds = %Abc_SclUpsizeRemoveDangling.exit
  %i.qw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.qx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #26
  %i.qy = icmp slt i32 %i.qx, 0
  br i1 %i.qy, label %Abc_Clock.exit310, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qz = load i64, ptr %7, align 8, !tbaa !107
  %i.ra = mul nsw i64 %i.qz, 1000000
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !108
  %i.rd = sdiv i64 %i.rc, 1000
  %i.re = add nsw i64 %i.rd, %i.ra
  br label %Abc_Clock.exit310

Abc_Clock.exit310:                                ; preds = %bb.bv, %bb.bw
  %.0.i309 = phi i64 [ %i.re, %bb.bw ], [ -1, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.rf = load i64, ptr %i.bj, align 8, !tbaa !109
  %i.rg = sub nsw i64 %.0.i309, %i.rf             ; 2 uses
  store i64 %i.rg, ptr %i.bj, align 8, !tbaa !109
  %i.rh = load i32, ptr %i.o, align 4, !tbaa !169
  %.not241 = icmp eq i32 %i.rh, 0
  br i1 %.not241, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %Abc_Clock.exit310
  %i.ri = getelementptr inbounds nuw i8, ptr %i.az, i64 272 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !180
  %i.rk = getelementptr inbounds nuw i8, ptr %i.az, i64 280 ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !184
end_hunk_1
