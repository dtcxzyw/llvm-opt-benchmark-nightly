Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.10?download=true
inline.NumInlined: 6305
inline.NumDeleted: 3398
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1q_NtB1q_6ReportNtNtBc_3fmt7Display3fmts2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3minEB1u_:bb.a
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts2_0NvYjNtNtBb_3cmp3Ord3minE0EBX_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val.i.epil = load i32, ptr %i.u, align 8, !noundef !6
  %i.v = zext i32 %.val.i.epil to i64
  %..i.i.i.i.epil = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.v, i64 %.sroa.02.0.i.epil) ; 2 uses
  %i.w = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts2_0NvYjNtNtBb_3cmp3Ord3minE0EBX_.exit, label %bb.d, !llvm.loop !3195

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts2_0NvYjNtNtBb_3cmp3Ord3minE0EBX_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts2_0NvYjNtNtBb_3cmp3Ord3minE0EBX_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts2_0NvYjNtNtBb_3cmp3Ord3minE0EBX_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1q_NtB1q_6ReportNtNtBc_3fmt7Display3fmts3_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1u_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 40                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 160
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423484
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %..i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 12
  %.val.i = load i32, ptr %i.h, align 4, !noundef !6
  %i.i = zext i32 %.val.i to i64
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %.sroa.02.0.i)
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.k = getelementptr i8, ptr %i.j, i64 52
  %.val.i.1 = load i32, ptr %i.k, align 4, !noundef !6
  %i.l = zext i32 %.val.i.1 to i64
  %..i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %i.l, i64 %..i.i.i.i)
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 92
  %.val.i.2 = load i32, ptr %i.n, align 4, !noundef !6
  %i.o = zext i32 %.val.i.2 to i64
  %..i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %..i.i.i.i.1)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.q = getelementptr i8, ptr %i.p, i64 132
  %.val.i.3 = load i32, ptr %i.q, align 4, !noundef !6
  %i.r = zext i32 %.val.i.3 to i64
  %..i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %..i.i.i.i.2) ; 3 uses
  %i.s = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.u = getelementptr i8, ptr %i.t, i64 12
  %.val.i.epil = load i32, ptr %i.u, align 4, !noundef !6
  %i.v = zext i32 %.val.i.epil to i64
  %..i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 %.sroa.02.0.i.epil) ; 2 uses
  %i.w = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit, label %bb.d, !llvm.loop !3196

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef nonnull align 4 ptr @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRShINtNtBc_6option6OptionB1o_EINtNtNtBc_3ops5range5RangejElEENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB2s_8Compiler7compiles_0ENtNtNtBa_6traits8iterator8Iterator4foldRlNvYB4e_NtNtBc_3cmp3Ord3minEB2y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 4 captures(ret: address, read_provenance) dereferenceable(4) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 56                  ; 3 uses
  %.pre.i = load i32, ptr %2, align 4, !alias.scope !3220, !noalias !3221 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 56
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i32 [ %.pre.i, %.new ], [ %i.r, %bb.c ] ; 2 uses
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %.sroa.02.0.i = phi ptr [ %2, %.new ], [ %..i.i.i.i.1, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3229)
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !3221, !noalias !3220, !noundef !6 ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.g
  %..i.i.i.i = select i1 %i.k, ptr %i.i, ptr %.sroa.02.0.i
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !3230, !noalias !3231, !noundef !6 ; 2 uses
  %i.p = icmp slt i32 %i.o, %i.l
  %..i.i.i.i.1 = select i1 %i.p, ptr %i.n, ptr %..i.i.i.i ; 3 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 2             ; 2 uses
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.l) ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i32 [ %.pre.i, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa ]
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi ptr [ %2, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3229)
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !3221, !noalias !3220, !noundef !6
  %i.v = icmp slt i32 %i.u, %.epil.init
  %..i.i.i.i.epil = select i1 %i.v, ptr %i.t, ptr %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi ptr [ %2, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1t_7RegexIdEENCNvNtB1r_6ast2ir16or_expr_from_asts_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callB29_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecB29_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 272
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 2
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = and i64 %i.e, 7                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 8, i64 %i.i
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.v = getelementptr i8, ptr %i.n, i64 12
  %i.w = getelementptr i8, ptr %i.o, i64 28
  %i.x = getelementptr i8, ptr %i.p, i64 44
  %i.y = getelementptr i8, ptr %i.q, i64 60
  %i.z = getelementptr i8, ptr %i.r, i64 76
  %i.aa = getelementptr i8, ptr %i.s, i64 92
  %i.ab = getelementptr i8, ptr %i.t, i64 108
  %i.ac = getelementptr i8, ptr %i.u, i64 124
  %i.ad = load i32, ptr %i.v, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.ae = load i32, ptr %i.w, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.af = load i32, ptr %i.x, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.ag = load i32, ptr %i.y, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.ah = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 3
  %i.al = load i32, ptr %i.z, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.am = load i32, ptr %i.aa, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.an = load i32, ptr %i.ab, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.ao = load i32, ptr %i.ac, align 4, !alias.scope !3246, !noalias !3247, !noundef !6
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  %i.at = getelementptr [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %i.ak, ptr %i.at, align 4, !alias.scope !3248, !noalias !3249
  store <4 x i32> %i.as, ptr %i.au, align 4, !alias.scope !3248, !noalias !3249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !3243

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aw = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi i64 [ %i.bb, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.az = getelementptr i8, ptr %i.ay, i64 12
  %.val15.i.prol = load i32, ptr %i.az, align 4, !noalias !3247, !noundef !6
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ax
  store i32 %.val15.i.prol, ptr %i.ba, align 4, !noalias !3250
  %i.bb = add i64 %i.ax, 1                        ; 3 uses
  %i.bc = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3244

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi i64 [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bw, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 12
  %.val15.i = load i32, ptr %i.bh, align 4, !noalias !3247, !noundef !6
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  store i32 %.val15.i, ptr %i.bi, align 4, !noalias !3250
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 28
  %.val15.i.1 = load i32, ptr %i.bk, align 4, !noalias !3247, !noundef !6
  %i.bl = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  store i32 %.val15.i.1, ptr %i.bm, align 4, !noalias !3250
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 44
  %.val15.i.2 = load i32, ptr %i.bo, align 4, !noalias !3247, !noundef !6
  %i.bp = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store i32 %.val15.i.2, ptr %i.bq, align 4, !noalias !3250
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bs = getelementptr i8, ptr %i.br, i64 60
  %.val15.i.3 = load i32, ptr %i.bs, align 4, !noalias !3247, !noundef !6
  %i.bt = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  %i.bu = getelementptr i8, ptr %i.bt, i64 12
  store i32 %.val15.i.3, ptr %i.bu, align 4, !noalias !3250
  %i.bv = add i64 %i.bf, 4                        ; 2 uses
  %i.bw = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.e
  br i1 %i.bx, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit, label %scalar.ph, !llvm.loop !3245

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bv, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3247
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTttmEENCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtNtNtB1F_6protos2pe2PEINtNtBc_7convert4FromNtB1B_2PEE4froms1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtB2m_8RichToolNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecB4p_E14extend_trustedBN_E0E0EB1H_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !3264, !noalias !3265, !noundef !6
  %i.j = zext i16 %i.i to i32
  %i.k = load i16, ptr %i.g, align 4, !alias.scope !3264, !noalias !3265, !noundef !6
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !3264, !noalias !3265, !noundef !6
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 7 uses
  store i32 1, ptr %i.o, align 8, !noalias !3266
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.j, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !noalias !3266
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !3266
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.l, ptr %.sroa.64.0..sroa_idx.i.i, align 4, !noalias !3266
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 1, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !3266
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %i.n, ptr %.sroa.86.0..sroa_idx.i.i, align 4, !noalias !3266
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !3267
  %i.p = add i64 %i.f, 1                          ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3268
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1w_3Dex16parse_dex_headers1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsk_B3T_B3R_INtNtB2S_7collect6ExtendB3R_E6extendBN_E0E0EB1C_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB2X_3Dex16parse_dex_headers1_00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB33_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
end_hunk_0
