Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluCheck3:bb.a
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.ah, %.epil.preheader221
  %storemerge.epil = phi i8 [ %i.fa, %bb.ah ], [ %i.dj, %.epil.preheader221 ]
  store i8 %storemerge.epil, ptr %i.ev, align 1, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.not135 = icmp eq ptr %8, null
  br i1 %.not135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 1 dereferenceable(18) %13, i64 18, i1 false), !tbaa.struct !330
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %.not136 = icmp eq ptr %7, null
  br i1 %.not136, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %7, ptr noundef nonnull align 1 dereferenceable(18) %14, i64 18, i1 false), !tbaa.struct !330
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not137 = icmp eq ptr %9, null
  br i1 %.not137, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.fb, ptr %9, align 8, !tbaa !18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not138 = icmp eq ptr %10, null
  br i1 %.not138, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.fc, ptr %10, align 8, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not139 = icmp eq ptr %11, null
  br i1 %.not139, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.fd, ptr %11, align 8, !tbaa !18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(18) %12, i64 18, i1 false), !tbaa.struct !330
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.z, %bb.t, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CluCheckExt(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 18)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 18)) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %.sroa.5 = alloca { i8, [16 x i8] }, align 8    ; 4 uses
  %9 = alloca %struct.If_Grp_t_, align 1          ; 4 uses
  %10 = alloca %struct.If_Grp_t_, align 1         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @If_CluCheck(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %10, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %9, ptr noundef %7, ptr noundef %8, ptr noundef null, i32 noundef 0)
  %.sroa.0.0.copyload = load i8, ptr %10, align 1, !tbaa !80 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(17) %.sroa.5.0..sroa_idx, i64 17, i1 false), !tbaa.struct !348
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(18) %9, i64 18, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %6, align 1
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %6, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, i64 17, i1 false)
  %i.a = icmp sgt i8 %.sroa.0.0.copyload, 0
  %i.b = zext i1 %i.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CluCheckExt3(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 18)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 18)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 18)) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) local_unnamed_addr #2 {
bb.a:
  %.sroa.5 = alloca { i8, [16 x i8] }, align 8    ; 4 uses
  %12 = alloca %struct.If_Grp_t_, align 1         ; 4 uses
  %13 = alloca %struct.If_Grp_t_, align 1         ; 4 uses
  %14 = alloca %struct.If_Grp_t_, align 1         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @If_CluCheck3(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %14, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %.sroa.0.0.copyload = load i8, ptr %14, align 1, !tbaa !80 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(17) %.sroa.5.0..sroa_idx, i64 17, i1 false), !tbaa.struct !348
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 1 dereferenceable(18) %13, i64 18, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %7, align 1
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %7, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 1 dereferenceable(18) %12, i64 18, i1 false)
  %i.a = icmp sgt i8 %.sroa.0.0.copyload, 0
  %i.b = zext i1 %i.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define float @If_CluDelayMax(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !175     ; 4 uses
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i8 %i.a to i64     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i8 %i.a, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.s, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !80
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !349 ; 2 uses
  %i.j = fcmp ogt float %.078, %i.i
  %i.k = select i1 %i.j, float %.078, float %i.i  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !80
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !349 ; 2 uses
  %i.r = fcmp ogt float %i.k, %i.q
  %i.s = select i1 %i.r, float %i.k, float %i.q   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !350

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i8 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.epil.init
  %i.u = load i8, ptr %i.t, align 1, !tbaa !80
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !349 ; 2 uses
  %i.y = fcmp ogt float %.078.epil.init, %i.x
  %i.z = select i1 %i.y, float %.078.epil.init, float %i.x
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  ret float %.07.lcssa
}

; Function Attrs: nounwind uwtable
define float @If_CutDelayLutStruct(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [18 x float], align 16            ; 14 uses
  %i.b = alloca [18 x i32], align 16              ; 12 uses
  %4 = alloca %struct.If_Grp_t_, align 1          ; 10 uses
  %5 = alloca %struct.If_Grp_t_, align 1          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %4, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %5, i8 0, i64 18, i1 false)
  %i.c = getelementptr i8, ptr %1, i64 36         ; 3 uses
  %.val77 = load i64, ptr %i.c, align 4           ; 4 uses
  %i.d = trunc i64 %.val77 to i32                 ; 3 uses
  %i.e = lshr i32 %i.d, 24                        ; 13 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %2) ; 0 uses
  br label %If_CluDelayMax.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %2, align 1, !tbaa !80      ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48                    ; 6 uses
  %i.k = add i8 %i.h, -55
  %or.cond = icmp ult i8 %i.k, -4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.j) ; 0 uses
  br label %If_CluDelayMax.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !80    ; 2 uses
  %i.o = sext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -48                    ; 6 uses
  %i.q = add i8 %i.n, -55
  %or.cond3 = icmp ult i8 %i.q, -4
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.p) ; 0 uses
  br label %If_CluDelayMax.exit

bb.g:                                             ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.p, %i.j
  %.not71 = icmp slt i32 %i.e, %i.s
  br i1 %.not71, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.t = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %.not118 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not118, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr i8, ptr %0, i64 40
  %.val78 = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.v = getelementptr i8, ptr %.val78, i64 8
  %.val78.val = load ptr, ptr %i.v, align 8, !tbaa !101
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 8 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %i.p) ; 0 uses
  br label %If_CluDelayMax.exit

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val78.val, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %.not72 = icmp eq ptr %i.ab, null
  br i1 %.not72, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 92
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !351
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.ad, ptr %i.ae, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !353

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.af = tail call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -176, -2147483648) %i.j, i32 range(i32 -176, -2147483648) %i.p)
  %.not73 = icmp sgt i32 %i.e, %i.af
  br i1 %.not73, label %bb.l, label %iter.check

.critedge.thread:                                 ; preds = %.preheader
  %i.ag = tail call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -176, -2147483648) %i.j, i32 range(i32 -176, -2147483648) %i.p)
  %.not73146 = icmp sgt i32 %i.e, %i.ag
  br i1 %.not73146, label %bb.l, label %If_CluDelayMax.exit

iter.check:                                       ; preds = %.critedge
  %i.ah = lshr i64 %.val77, 24
  %i.ai = and i64 %i.ah, 255
  %i.aj = getelementptr [4 x i8], ptr %i.t, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %6 = lshr i64 %.val77, 24
  %7 = and i64 %6, 255
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 1, i64 %7, i1 false), !tbaa !80
  %wide.trip.count128 = zext nneg i32 %i.e to i64
  %min.iters.check = icmp ult i32 %i.d, 67108864
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check155 = icmp ult i32 %i.d, 536870912
  br i1 %min.iters.check155, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 224          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <16 x i8> %vec.ind, ptr %i.am, align 1, !tbaa !80
  store <16 x i8> %step.add, ptr %i.an, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !355

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec156 = and i64 %wide.trip.count, 252       ; 3 uses
  %i.ap = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index157 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind158 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next160, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index157
  store <4 x i8> %vec.ind158, ptr %i.aq, align 1, !tbaa !80
  %index.next159 = add nuw i64 %index157, 4       ; 2 uses
  %vec.ind.next160 = add <4 x i8> %vec.ind158, splat (i8 4)
  %i.ar = icmp eq i64 %index.next159, %n.vec156
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !356

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %n.vec156, %wide.trip.count
  br i1 %cmp.n161, label %.lr.ph.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec156, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %vec.epilog.scalar.ph ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.as = trunc i64 %indvars.iv125 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv125
  store i8 %i.as, ptr %i.at, align 1, !tbaa !80
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.lr.ph.i, label %vec.epilog.scalar.ph, !llvm.loop !357

.lr.ph.i:                                         ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %i.e, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.k ] ; 3 uses
  %.078.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bk, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !80
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !349 ; 2 uses
  %i.bb = fcmp ogt float %.078.i, %i.ba
  %i.bc = select i1 %i.bb, float %.078.i, float %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349 ; 2 uses
  %i.bj = fcmp ogt float %i.bc, %i.bi
  %i.bk = select i1 %i.bj, float %i.bc, float %i.bi ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %If_CluDelayMax.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !350

If_CluDelayMax.exit.loopexit.unr-lcssa:           ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %If_CluDelayMax.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %If_CluDelayMax.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %If_CluDelayMax.exit.loopexit.unr-lcssa ]
  %.078.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bk, %If_CluDelayMax.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod192 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i.epil.init
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !349 ; 2 uses
  %i.bq = fcmp ogt float %.078.i.epil.init, %i.bp
  %i.br = select i1 %i.bq, float %.078.i.epil.init, float %i.bp
  br label %If_CluDelayMax.exit.loopexit

If_CluDelayMax.exit.loopexit:                     ; preds = %If_CluDelayMax.exit.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa190 = phi float [ %i.bk, %If_CluDelayMax.exit.loopexit.unr-lcssa ], [ %i.br, %.epil.preheader ]
  %i.bs = fadd float %.lcssa190, 1.000000e+00
  br label %If_CluDelayMax.exit

bb.l:                                             ; preds = %.critedge.thread, %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !358 ; 14 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bx = lshr i64 %.val77, 24
  %i.by = and i64 %i.bx, 255                      ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !359 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 24
  %.val.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !360 ; 2 uses
  br i1 %.not.i.i, label %If_CutTruthWR.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = ashr i32 %.val.pre.i, 1                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !361
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !364
  %i.cg = ashr i32 %i.cb, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !365
  %i.ck = load i32, ptr %i.ca, align 8, !tbaa !366
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !367
  %i.cn = and i32 %i.cm, %i.cb
  %i.co = mul nsw i32 %i.cn, %i.ck
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cp
  br label %If_CutTruthWR.exit.i

If_CutTruthWR.exit.i:                             ; preds = %bb.m, %bb.l
  %i.cr = phi ptr [ %i.cq, %bb.m ], [ null, %bb.l ] ; 13 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.by
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !10 ; 5 uses
  %i.cw = and i32 %.val.pre.i, 1
  %.not.i7.i = icmp eq i32 %i.cw, 0
  %i.cx = icmp sgt i32 %i.cv, 0                   ; 2 uses
  br i1 %.not.i7.i, label %.preheader.i.i, label %.preheader14.i.i

.preheader14.i.i:                                 ; preds = %If_CutTruthWR.exit.i
  br i1 %i.cx, label %.lr.ph.preheader.i.i, label %If_CutTruthW.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader14.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.cv to i64 ; 5 uses
  %min.iters.check162 = icmp ult i32 %i.cv, 6
  %i.cy = sub i64 %i.cs, %i.bv
  %diff.check = icmp ugt i64 %i.cy, -32
  %or.cond186 = select i1 %min.iters.check162, i1 true, i1 %diff.check
  br i1 %or.cond186, label %.lr.ph.i.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec164 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next168, %vector.body165 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index166 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load = load <2 x i64>, ptr %i.cz, align 8, !tbaa !18
  %wide.load167 = load <2 x i64>, ptr %i.da, align 8, !tbaa !18
  %i.db = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.dc = xor <2 x i64> %wide.load167, splat (i64 -1)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %index166 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x i64> %i.db, ptr %i.dd, align 8, !tbaa !18
  store <2 x i64> %i.dc, ptr %i.de, align 8, !tbaa !18
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next168, %n.vec164
end_hunk_0
