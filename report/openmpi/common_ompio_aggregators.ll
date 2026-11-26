Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_aggregators?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mca_common_ompio_merge_initial_groups:bb.a
  %i.ec = tail call i32 %i.du(ptr noundef %i.dv, i64 noundef %i.dx, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.dz, i32 noundef 1, i32 noundef 4, ptr noundef %i.ea, ptr noundef %i.eb) #10 ; 2 uses
  %.not177 = icmp eq i32 %i.ec, 0
  br i1 %.not177, label %._crit_edge287, label %bb.u

._crit_edge287:                                   ; preds = %bb.t
  %i.ed = add nsw i32 %.0136258, 2
  %.pre288 = load i32, ptr %i.cy, align 8, !tbaa !80
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.13) #10
  br label %bb.ab

bb.v:                                             ; preds = %._crit_edge287, %bb.r
  %i.ee = phi i32 [ %i.dj, %bb.r ], [ %.pre288, %._crit_edge287 ] ; 2 uses
  %.1137 = phi i32 [ %.0136258, %bb.r ], [ %i.ed, %._crit_edge287 ] ; 2 uses
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next283, %i.ef
  br i1 %i.eg, label %bb.r, label %._crit_edge260.loopexit, !llvm.loop !138

.thread186:                                       ; preds = %.preheader210, %.preheader208, %bb.a, %._crit_edge255
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !141
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !68
  %i.el = tail call i32 %i.eh(ptr noundef nonnull %i.ei, i64 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef 0, ptr noundef %i.ek, ptr noundef null) #10 ; 2 uses
  %.not174 = icmp eq i32 %i.el, 0
  br i1 %.not174, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread186
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.14) #10
  br label %.thread195

bb.x:                                             ; preds = %.thread186
  %i.em = load i32, ptr %i.ei, align 8, !tbaa !80
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = shl nsw i64 %i.en, 2
  %i.ep = tail call noalias ptr @malloc(i64 noundef %i.eo) #11 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !81
  %i.er = icmp eq ptr %i.ep, null
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %.thread195

bb.z:                                             ; preds = %bb.x
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !141
  %i.et = load ptr, ptr %i.ej, align 8, !tbaa !68
  %i.eu = tail call i32 %i.es(ptr noundef nonnull %i.ep, i64 noundef %i.en, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef 1, ptr noundef %i.et, ptr noundef null) #10 ; 2 uses
  %.not175 = icmp eq i32 %i.eu, 0
  br i1 %.not175, label %.thread195, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.15) #10
  br label %.thread195

._crit_edge260.loopexit:                          ; preds = %bb.v
  %i.ev = sext i32 %.1137 to i64
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %._crit_edge260.loopexit, %.preheader
  %.0136.lcssa = phi i64 [ 0, %.preheader ], [ %i.ev, %._crit_edge260.loopexit ]
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !143
  %i.ex = tail call i32 %i.ew(i64 noundef %.0136.lcssa, ptr noundef nonnull %i.dd, ptr noundef null) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %._crit_edge260, %.thread199
  %.8204 = phi i32 [ %i.dt, %.thread199 ], [ %i.ex, %._crit_edge260 ], [ %i.ec, %bb.u ]
  tail call void @free(ptr noundef nonnull %i.dd) #10
  br label %.thread195

.thread195:                                       ; preds = %bb.z, %bb.ab, %bb.q, %bb.aa, %bb.y, %bb.w, %bb.n, %bb.l
  %.0158 = phi i32 [ -2, %bb.l ], [ %i.ct, %bb.n ], [ %i.eu, %bb.aa ], [ -2, %bb.q ], [ %i.el, %bb.w ], [ -2, %bb.y ], [ %.8204, %bb.ab ], [ 0, %bb.z ]
  ret i32 %.0158
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_ompio_retain_initial_groups(ptr nofree noundef captures(none) initializes((424, 436)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 %i.b, ptr %i.c, align 8, !tbaa !80
  %i.d = sext i32 %i.b to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #11 ; 9 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.f, ptr %i.h, align 8, !tbaa !81
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 7 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !35
  %wide.load16 = load <4 x i32>, ptr %i.p, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %wide.load, ptr %i.q, align 4, !tbaa !35
  store <4 x i32> %wide.load16, ptr %i.r, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.prol
  store i32 %i.u, ptr %i.v, align 4, !tbaa !35
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !145

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.loopexit, label %scalar.ph

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.1
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !35
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.2
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !35
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !146

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.b
  %.012 = phi i32 [ -2, %bb.b ], [ 0, %.preheader ], [ 0, %middle.block ], [ 0, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_merge_groups(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #11 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.b) #11 ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = tail call i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef nonnull %i.g, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef %i.i) #10 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !80
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.e
  store i32 0, ptr %i.e, align 4, !tbaa !35
  br label %._crit_edge69

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %2 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !35
  %wide.load82 = load <4 x i32>, ptr %i.n, align 4, !tbaa !35
  %i.o = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.p = add <4 x i32> %wide.load82, %vec.phi81   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ 0, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.v, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = add nsw i32 %i.u, %i.s                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !148

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.r, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  store i32 %.lcssa, ptr %i.k, align 8, !tbaa !80
  %i.w = sext i32 %.lcssa to i64
  %i.x = shl nsw i64 %i.w, 2                      ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !35
  %.not80 = icmp eq i32 %2, 1
  br i1 %.not80, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.loopexit
  %i.y = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.y, 3                     ; 3 uses
  %i.z = add nsw i32 %2, -2
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter = and i64 %i.y, -4
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %i.ab = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %i.au, %.lr.ph68 ]
  %indvars.iv71 = phi i64 [ 1, %.lr.ph68.preheader.new ], [ %indvars.iv.next72.3, %.lr.ph68 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter.next.3, %.lr.ph68 ]
  %i.ac = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv71
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %i.af = add nsw i32 %i.ae, %i.ab                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv71
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !35
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next72
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.ak = add nsw i32 %i.aj, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next72
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !35
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next72.1
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !35
  %i.ap = add nsw i32 %i.ao, %i.ak                ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next72.1
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !35
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next72.2
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35
  %i.au = add nsw i32 %i.at, %i.ap                ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next72.2
  store i32 %i.au, ptr %i.av, align 4, !tbaa !35
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge69.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !149

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %.lr.ph68
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge69, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph68.preheader ], [ %i.au, %._crit_edge69.loopexit.unr-lcssa ]
  %indvars.iv71.epil.init = phi i64 [ 1, %.lr.ph68.preheader ], [ %indvars.iv.next72.3, %._crit_edge69.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %i.aw = phi i32 [ %.epil.init, %.lr.ph68.epil.preheader ], [ %i.ba, %.lr.ph68.epil ]
  %indvars.iv71.epil = phi i64 [ %indvars.iv71.epil.init, %.lr.ph68.epil.preheader ], [ %indvars.iv.next72.epil, %.lr.ph68.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph68.epil.preheader ], [ %epil.iter.next, %.lr.ph68.epil ]
  %i.ax = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv71.epil
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.ba = add nsw i32 %i.az, %i.aw                ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv71.epil
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !35
  %indvars.iv.next72.epil = add nuw nsw i64 %indvars.iv71.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge69, label %.lr.ph68.epil, !llvm.loop !150

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.epil, %.thread, %.loopexit
  %i.bc = phi i64 [ 0, %.thread ], [ %i.x, %.loopexit ], [ %i.x, %.lr.ph68.epil ], [ %i.x, %._crit_edge69.loopexit.unr-lcssa ]
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #11 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !81
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge69
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge69
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !77
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bk = tail call i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef %i.bj) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.043.ph = phi i32 [ %i.bk, %bb.g ], [ -2, %bb.f ], [ %i.j, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.e) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.c, %bb.h
  %.04358.ph = phi i32 [ -2, %bb.c ], [ %.043.ph, %bb.h ]
  tail call void @free(ptr noundef nonnull %i.c) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0435864 = phi i32 [ %.04358.ph, %bb.j ], [ -2, %bb.i ]
  ret i32 %.0435864
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_ompio_split_a_group(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6, ptr nofree noundef captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77
  %i.c = sdiv i32 %i.b, %3
  store i32 %i.c, ptr %6, align 4, !tbaa !35
  store i32 %3, ptr %7, align 4, !tbaa !35
  %i.d = load i32, ptr %i.a, align 4, !tbaa !77
  %i.e = srem i32 %i.d, %3
  %.not.not = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %6, align 4, !tbaa !35
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %6, align 4, !tbaa !35
  %i.h = load i32, ptr %i.a, align 4, !tbaa !77
  %i.i = srem i32 %i.h, %3
  store i32 %i.i, ptr %7, align 4, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i32, ptr %6, align 4, !tbaa !35
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #11 ; 14 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = load i32, ptr %6, align 4, !tbaa !35     ; 9 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph76, label %._crit_edge77.thread

._crit_edge77.thread:                             ; preds = %.preheader
  %i.q = load i64, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  store i64 %i.q, ptr %5, align 8, !tbaa !66
  store i64 %i.q, ptr %4, align 8, !tbaa !66
  br label %._crit_edge82

.lr.ph76:                                         ; preds = %.preheader
  %i.r = mul nsw i32 %3, 3                        ; 3 uses
  br i1 %.not.not, label %.lr.ph76.split.us, label %.lr.ph76.split.preheader

.lr.ph76.split.preheader:                         ; preds = %.lr.ph76
  %i.s = add nsw i32 %i.o, -1
  %i.t = sext i32 %i.r to i64
  %i.u = zext nneg i32 %i.s to i64
  %i.v = sext i32 %3 to i64
  %wide.trip.count89 = zext nneg i32 %i.o to i64
  br label %.lr.ph76.split

.lr.ph76.split.us:                                ; preds = %.lr.ph76
  %i.w = icmp sgt i32 %3, 1
  br i1 %i.w, label %.lr.ph.us.us.preheader, label %.lr.ph76.split.us.split.preheader

.lr.ph76.split.us.split.preheader:                ; preds = %.lr.ph76.split.us
  %i.x = sext i32 %i.r to i64                     ; 5 uses
  %wide.trip.count94 = zext nneg i32 %i.o to i64  ; 2 uses
  %xtraiter132 = and i64 %wide.trip.count94, 3    ; 3 uses
  %i.y = icmp ult i32 %i.o, 4
  br i1 %i.y, label %.lr.ph76.split.us.split.epil.preheader, label %.lr.ph76.split.us.split.preheader.new

.lr.ph76.split.us.split.preheader.new:            ; preds = %.lr.ph76.split.us.split.preheader
  %unroll_iter135 = and i64 %wide.trip.count94, 2147483644
  br label %.lr.ph76.split.us.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph76.split.us
  %i.z = add nsw i32 %3, -1                       ; 3 uses
  %i.aa = zext nneg i32 %i.r to i64
  %i.ab = zext nneg i32 %3 to i64
  %wide.trip.count104 = zext nneg i32 %i.o to i64
  %wide.trip.count99 = zext i32 %i.z to i64       ; 2 uses
  %xtraiter138 = and i64 %wide.trip.count99, 1
  %i.ac = icmp eq i32 %i.z, 1
  %unroll_iter144 = and i64 %wide.trip.count99, 4294967294
  %lcmp.mod142.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod143 = trunc i32 %i.z to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv101 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next102, %._crit_edge.us.us ] ; 4 uses
  %i.ad = mul nuw nsw i64 %indvars.iv101, %i.aa   ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv101 ; 4 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !66
  %i.ai = mul nuw nsw i64 %indvars.iv101, %i.ab
  %invariant.gep123 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ai ; 3 uses
  %invariant.gep125 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad ; 3 uses
  br i1 %i.ac, label %.epil.preheader137, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %bb.g
  %i.aj = phi i64 [ %i.ax, %bb.g ], [ %i.ag, %.lr.ph.us.us ] ; 2 uses
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %bb.g ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %niter145 = phi i64 [ %niter145.next.1, %bb.g ], [ 0, %.lr.ph.us.us ]
  %gep124 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep123, i64 %indvars.iv96
  %i.ak = load i64, ptr %gep124, align 8, !tbaa !66
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %.idx118 = mul nuw nsw i64 %indvars.iv.next97, 24
  %gep126 = getelementptr inbounds nuw i8, ptr %invariant.gep125, i64 %.idx118 ; 2 uses
  %i.al = load i64, ptr %gep126, align 8, !tbaa !66
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.us.new
  %i.an = getelementptr i8, ptr %gep126, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !66
  %i.ap = add nsw i64 %i.aj, %i.ao                ; 2 uses
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.us.us.new
  %i.aq = phi i64 [ %i.ap, %bb.d ], [ %i.aj, %.lr.ph.us.us.new ] ; 2 uses
  %gep124.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep123, i64 %indvars.iv.next97
  %i.ar = load i64, ptr %gep124.1, align 8, !tbaa !66
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 3 uses
  %.idx118.1 = mul nuw nsw i64 %indvars.iv.next97.1, 24
  %gep126.1 = getelementptr inbounds nuw i8, ptr %invariant.gep125, i64 %.idx118.1 ; 2 uses
  %i.as = load i64, ptr %gep126.1, align 8, !tbaa !66
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr i8, ptr %gep126.1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !66
  %i.aw = add nsw i64 %i.aq, %i.av                ; 2 uses
  store i64 %i.aw, ptr %i.ah, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = phi i64 [ %i.aw, %bb.f ], [ %i.aq, %bb.e ] ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !151

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.g
  br i1 %lcmp.mod142.not, label %._crit_edge.us.us, label %.epil.preheader137

end_hunk_0
