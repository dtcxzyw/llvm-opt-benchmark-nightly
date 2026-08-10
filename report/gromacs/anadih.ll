inline.NumInlined: 274
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z22mk_multiplicity_lookupPiiN3gmx8ArrayRefIK7t_dlistEEi:bb.a
bb.i:                                             ; preds = %bb.h
  %i.w = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.19) #30
  %i.x = icmp ne ptr %i.w, null
  %or.cond = and i1 %i.f, %i.x
  br i1 %or.cond, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.20) #30
  %i.z = icmp ne ptr %i.y, null
  %or.cond3 = and i1 %i.f, %i.z
  br i1 %or.cond3, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.21) #30
  %i.ab = icmp ne ptr %i.aa, null
  %or.cond5 = and i1 %i.f, %i.ab
  br i1 %or.cond5, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.22) #30
  %i.ad = icmp ne ptr %i.ac, null
  %or.cond7 = and i1 %i.f, %i.ad
  br i1 %or.cond7, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.23) #30
  %i.af = icmp ne ptr %i.ae, null
  %or.cond9 = and i1 %i.f, %i.af
  br i1 %or.cond9, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.24) #30
  %i.ah = icmp ne ptr %i.ag, null
  %or.cond11 = and i1 %i.g, %i.ah
  br i1 %or.cond11, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25) #30
  %i.aj = icmp ne ptr %i.ai, null
  %or.cond13 = and i1 %i.f, %i.aj
  br i1 %or.cond13, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26) #30
  %i.al = icmp ne ptr %i.ak, null
  %or.cond15 = and i1 %i.g, %i.al
  br i1 %or.cond15, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.27) #30
  %i.an = icmp ne ptr %i.am, null
  %or.cond17 = and i1 %i.f, %i.an
  br i1 %or.cond17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.28) #30
  %i.ap = icmp ne ptr %i.ao, null
  %or.cond19 = and i1 %i.h, %i.ap
  br i1 %or.cond19, label %bb.s, label %.thread71

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  store i32 2, ptr %i.u, align 4, !tbaa !27
  br label %.thread71

.thread71:                                        ; preds = %bb.f, %bb.g, %.thread70, %bb.r, %bb.s, %bb.h
  %i.aq = add nsw i32 %.174, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %.thread71, %bb.e
  %.2 = phi i32 [ %i.aq, %.thread71 ], [ %.174, %bb.e ], [ %.174, %bb.d ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.073, i64 400 ; 2 uses
  %.not = icmp eq ptr %i.ar, %3
  br i1 %.not, label %._crit_edge, label %bb.b

iter.check:                                       ; preds = %._crit_edge77
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.29, i32 noundef %.0.lcssa, i32 noundef %4) #25 ; 0 uses
  %i.au = sext i32 %.0.lcssa to i64               ; 6 uses
  %wide.trip.count87 = sext i32 %4 to i64         ; 2 uses
  %i.av = sub nsw i64 %wide.trip.count87, %i.au   ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i64 %i.av, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.av, 24
  %n.vec = and i64 %i.av, -32                     ; 4 uses
  %i.ax = add nsw i64 %n.vec, %i.au
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> splat (i32 3), ptr %gep, align 4, !tbaa !27
  store <8 x i32> splat (i32 3), ptr %i.ay, align 4, !tbaa !27
  store <8 x i32> splat (i32 3), ptr %i.az, align 4, !tbaa !27
  store <8 x i32> splat (i32 3), ptr %i.ba, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge81, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.av, -8                    ; 3 uses
  %i.bc = add nsw i64 %n.vec93, %i.au
  %invariant.gep98 = getelementptr [4 x i8], ptr %0, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 2 uses
  %gep99 = getelementptr [4 x i8], ptr %invariant.gep98, i64 %index94
  store <8 x i32> splat (i32 3), ptr %gep99, align 4, !tbaa !27
  %index.next95 = add nuw i64 %index94, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next95, %n.vec93
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %i.av, %n.vec93
  br i1 %cmp.n96, label %._crit_edge81, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv84.ph = phi i64 [ %i.au, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph ], [ %indvars.iv84.ph, %.lr.ph.preheader ] ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv84
  store i32 3, ptr %i.be, align 4, !tbaa !27
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge81, label %.lr.ph, !llvm.loop !70

._crit_edge81:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z13mk_chi_lookupPPiiN3gmx8ArrayRefIK7t_dlistEE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr %2, ptr %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %.not = icmp eq ptr %3, %2
  %or.cond = select i1 %i.a, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge35.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 400                 ; 3 uses
  %i.f = add nuw i32 %1, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 3)
  %i.g = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.g to i64
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.h = icmp ult i64 %i.e, 4
  %unroll_iter = and i64 %i.e, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 3, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 11 uses
  %.034 = phi i32 [ 0, %.preheader.preheader ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  br i1 %i.h, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split

._crit_edge35.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.unr-lcssa, %.lr.ph.split.split.preheader
  %.126.epil.init = phi i32 [ %.034, %.lr.ph.split.split.preheader ], [ %.2.3, %._crit_edge.unr-lcssa ]
  %.02024.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.bf, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.split.split.epil

.lr.ph.split.split.epil:                          ; preds = %bb.c, %.lr.ph.split.split.epil.preheader
  %.126.epil = phi i32 [ %.2.epil, %bb.c ], [ %.126.epil.init, %.lr.ph.split.split.epil.preheader ] ; 3 uses
  %.02024.epil = phi i64 [ %i.r, %bb.c ], [ %.02024.epil.init, %.lr.ph.split.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.lr.ph.split.split.epil.preheader ]
  %i.i = getelementptr inbounds [400 x i8], ptr %2, i64 %.02024.epil
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %.not22.epil = icmp eq i32 %i.l, -1
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02024.epil
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = getelementptr i8, ptr %i.o, i64 -12      ; 2 uses
  br i1 %.not22.epil, label %bb.b, label %.thread.epil

.thread.epil:                                     ; preds = %.lr.ph.split.split.epil
  store i32 %.126.epil, ptr %i.p, align 4, !tbaa !27
  %i.q = add nsw i32 %.126.epil, 1
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.split.epil
  store i32 -1, ptr %i.p, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.epil
  %.2.epil = phi i32 [ %i.q, %.thread.epil ], [ %.126.epil, %bb.b ] ; 2 uses
  %i.r = add nuw i64 %.02024.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.epil, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.3, %._crit_edge.unr-lcssa ], [ %.2.epil, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond42.not, label %._crit_edge35.split, label %.lr.ph.split.split.preheader, !llvm.loop !74

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.h
  %.126 = phi i32 [ %.2.3, %bb.h ], [ %.034, %.lr.ph.split.split.preheader ] ; 3 uses
  %.02024 = phi i64 [ %i.bf, %bb.h ], [ 0, %.lr.ph.split.split.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %bb.h ], [ 0, %.lr.ph.split.split.preheader ]
  %i.s = getelementptr inbounds [400 x i8], ptr %2, i64 %.02024
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %.not22 = icmp eq i32 %i.v, -1
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02024
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 -12      ; 2 uses
  br i1 %.not22, label %bb.d, label %.thread

.thread:                                          ; preds = %.lr.ph.split.split
  store i32 %.126, ptr %i.z, align 4, !tbaa !27
  %i.aa = add nsw i32 %.126, 1
  br label %.lr.ph.split.split.1

bb.d:                                             ; preds = %.lr.ph.split.split
  store i32 -1, ptr %i.z, align 4, !tbaa !27
  br label %.lr.ph.split.split.1

.lr.ph.split.split.1:                             ; preds = %bb.d, %.thread
  %.2 = phi i32 [ %i.aa, %.thread ], [ %.126, %bb.d ] ; 3 uses
  %i.ab = or disjoint i64 %.02024, 1              ; 2 uses
  %i.ac = getelementptr inbounds [400 x i8], ptr %2, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %.not22.1 = icmp eq i32 %i.af, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = getelementptr i8, ptr %i.ai, i64 -12    ; 2 uses
  br i1 %.not22.1, label %bb.e, label %.thread.1

.thread.1:                                        ; preds = %.lr.ph.split.split.1
  store i32 %.2, ptr %i.aj, align 4, !tbaa !27
  %i.ak = add nsw i32 %.2, 1
  br label %.lr.ph.split.split.2

bb.e:                                             ; preds = %.lr.ph.split.split.1
  store i32 -1, ptr %i.aj, align 4, !tbaa !27
  br label %.lr.ph.split.split.2

.lr.ph.split.split.2:                             ; preds = %bb.e, %.thread.1
  %.2.1 = phi i32 [ %i.ak, %.thread.1 ], [ %.2, %bb.e ] ; 3 uses
  %i.al = or disjoint i64 %.02024, 2              ; 2 uses
  %i.am = getelementptr inbounds [400 x i8], ptr %2, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %.not22.2 = icmp eq i32 %i.ap, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr i8, ptr %i.as, i64 -12    ; 2 uses
  br i1 %.not22.2, label %bb.f, label %.thread.2

.thread.2:                                        ; preds = %.lr.ph.split.split.2
  store i32 %.2.1, ptr %i.at, align 4, !tbaa !27
  %i.au = add nsw i32 %.2.1, 1
  br label %.lr.ph.split.split.3

bb.f:                                             ; preds = %.lr.ph.split.split.2
  store i32 -1, ptr %i.at, align 4, !tbaa !27
  br label %.lr.ph.split.split.3

.lr.ph.split.split.3:                             ; preds = %bb.f, %.thread.2
  %.2.2 = phi i32 [ %i.au, %.thread.2 ], [ %.2.1, %bb.f ] ; 3 uses
  %i.av = or disjoint i64 %.02024, 3              ; 2 uses
  %i.aw = getelementptr inbounds [400 x i8], ptr %2, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27
  %.not22.3 = icmp eq i32 %i.az, -1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !71
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 -12    ; 2 uses
  br i1 %.not22.3, label %bb.g, label %.thread.3

.thread.3:                                        ; preds = %.lr.ph.split.split.3
  store i32 %.2.2, ptr %i.bd, align 4, !tbaa !27
  %i.be = add nsw i32 %.2.2, 1
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.split.3
  store i32 -1, ptr %i.bd, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.3
  %.2.3 = phi i32 [ %i.be, %.thread.3 ], [ %.2.2, %bb.g ] ; 3 uses
  %i.bf = add nuw i64 %.02024, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !75
}

; Function Attrs: cold mustprogress uwtable
define void @_Z20get_chi_product_trajPPfiiN3gmx8ArrayRefIK7t_dlistEES_PPiS6_bbfbPKcPK16gmx_output_env_t(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr %3, ptr nofree readnone captures(address) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i1 noundef zeroext %8, i1 noundef zeroext %9, float noundef %10, i1 noundef zeroext %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %12, ptr %i.a, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.30, i64 44, i64 1, ptr %i.d) #29 ; 0 uses
  %_ZL10calc_RBbinfif._ZL9calc_Nbinfif = select i1 %8, ptr @_ZL10calc_RBbinfif, ptr @_ZL9calc_Nbinfif ; 2 uses
  %i.f = sext i32 %1 to i64
  %i.g = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.7, i32 noundef 494, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 4) ; 30 uses
  br i1 %9, label %._crit_edge.i.i, label %._crit_edge.i.i173

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.h, ptr %15, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.h, ptr noundef nonnull align 1 dereferenceable(7) @.str.33, i64 7, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 23
  store i8 0, ptr %i.j, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.k, ptr %16, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.k, ptr noundef nonnull align 1 dereferenceable(11) @.str.34, i64 11, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 11, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 27
  store i8 0, ptr %i.m, align 1, !tbaa !18
  %i.n = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %13)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load ptr, ptr %16, align 8, !tbaa !20    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.k, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.s = load ptr, ptr %15, align 8, !tbaa !20    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.h, align 8, !tbaa !18
end_hunk_0
