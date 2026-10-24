Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.10?download=true
inline.NumInlined: 6305
inline.NumDeleted: 3398
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvXs5_B1q_NtB1q_6ReportNtNtBc_3fmt7Display3fmts3_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1u_:bb.a
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
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit, label %bb.d, !llvm.loop !3124

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2q_8adapters3map8map_foldRBQ_jjNCNvXs5_BT_NtBT_6ReportNtNtBb_3fmt7Display3fmts3_0NvYjNtNtBb_3cmp3Ord3maxE0EBX_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef nonnull align 4 ptr @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRShINtNtBc_6option6OptionB1o_EINtNtNtBc_3ops5range5RangejElEENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB2s_8Compiler7compiles_0ENtNtNtBa_6traits8iterator8Iterator4foldRlNvYB4e_NtNtBc_3cmp3Ord3minEB2y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 4 captures(ret: address, read_provenance) dereferenceable(4) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTRShINtNtBb_6option6OptionBR_EINtNtNtBb_3ops5range5RangejElEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRlNCINvNtNtB1V_8adapters3map8map_foldRBQ_B2z_B2z_NCNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB3r_8Compiler7compiles_0NvYB2z_NtNtBb_3cmp3Ord3minE0EB3x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 56                  ; 3 uses
  %.pre.i = load i32, ptr %2, align 4, !alias.scope !3148 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3156)
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !3157, !noalias !3147, !noundef !6 ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.g
  %..i.i.i.i = select i1 %i.k, ptr %i.i, ptr %.sroa.02.0.i
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !3158, !noalias !3147, !noundef !6 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3156)
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !3157, !noalias !3147, !noundef !6
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
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 2
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %i.e, 7                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub nsw i64 %i.e, %i.n                 ; 3 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec
  %i.p = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.y = getelementptr i8, ptr %i.q, i64 12
  %i.z = getelementptr i8, ptr %i.r, i64 28
  %i.aa = getelementptr i8, ptr %i.s, i64 44
  %i.ab = getelementptr i8, ptr %i.t, i64 60
  %i.ac = getelementptr i8, ptr %i.u, i64 76
  %i.ad = getelementptr i8, ptr %i.v, i64 92
  %i.ae = getelementptr i8, ptr %i.w, i64 108
  %i.af = getelementptr i8, ptr %i.x, i64 124
  %i.ag = load i32, ptr %i.y, align 4, !alias.scope !3173, !noalias !3174
  %i.ah = load i32, ptr %i.z, align 4, !alias.scope !3173, !noalias !3174
  %i.ai = load i32, ptr %i.aa, align 4, !alias.scope !3173, !noalias !3174
  %i.aj = load i32, ptr %i.ab, align 4, !alias.scope !3173, !noalias !3174
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = load i32, ptr %i.ac, align 4, !alias.scope !3173, !noalias !3174
  %i.ap = load i32, ptr %i.ad, align 4, !alias.scope !3173, !noalias !3174
  %i.aq = load i32, ptr %i.ae, align 4, !alias.scope !3173, !noalias !3174
  %i.ar = load i32, ptr %i.af, align 4, !alias.scope !3173, !noalias !3174
  %i.as = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 1
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 2
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 3
  %i.aw = getelementptr [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %i.an, ptr %i.aw, align 4, !alias.scope !3175, !noalias !3176
  store <4 x i32> %i.av, ptr %i.ax, align 4, !alias.scope !3175, !noalias !3176
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.body, !llvm.loop !3170

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.az = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ba = phi i64 [ %i.be, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bf, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.bc = getelementptr i8, ptr %i.bb, i64 12
  %.val15.i.prol = load i32, ptr %i.bc, align 4, !noalias !3174, !noundef !6
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ba
  store i32 %.val15.i.prol, ptr %i.bd, align 4, !noalias !3177
  %i.be = add i64 %i.ba, 1                        ; 3 uses
  %i.bf = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3171

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bi = phi i64 [ %i.by, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bz, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 12
  %.val15.i = load i32, ptr %i.bk, align 4, !noalias !3174, !noundef !6
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  store i32 %.val15.i, ptr %i.bl, align 4, !noalias !3177
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 28
  %.val15.i.1 = load i32, ptr %i.bn, align 4, !noalias !3174, !noundef !6
  %i.bo = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  store i32 %.val15.i.1, ptr %i.bp, align 4, !noalias !3177
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.br = getelementptr i8, ptr %i.bq, i64 44
  %.val15.i.2 = load i32, ptr %i.br, align 4, !noalias !3174, !noundef !6
  %i.bs = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store i32 %.val15.i.2, ptr %i.bt, align 4, !noalias !3177
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 60
  %.val15.i.3 = load i32, ptr %i.bv, align 4, !noalias !3174, !noundef !6
  %i.bw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 12
  store i32 %.val15.i.3, ptr %i.bx, align 4, !noalias !3177
  %i.by = add i64 %i.bi, 4                        ; 2 uses
  %i.bz = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.e
  br i1 %i.ca, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit, label %scalar.ph, !llvm.loop !3172

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.by, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3174
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !3190, !noalias !3191, !noundef !6
  %i.j = zext i16 %i.i to i32
  %i.k = load i16, ptr %i.g, align 4, !alias.scope !3190, !noalias !3191, !noundef !6
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !3190, !noalias !3191, !noundef !6
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 7 uses
  store i32 1, ptr %i.o, align 8, !noalias !3192
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.j, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !noalias !3192
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !3192
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.l, ptr %.sroa.64.0..sroa_idx.i.i, align 4, !noalias !3192
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 1, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !3192
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %i.n, ptr %.sroa.86.0..sroa_idx.i.i, align 4, !noalias !3192
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !3193
  %i.p = add i64 %i.f, 1                          ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3191
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1w_3Dex16parse_dex_headers1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsk_B3T_B3R_INtNtB2S_7collect6ExtendB3R_E6extendBN_E0E0EB1C_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3207)
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
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.y, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3208
  store ptr %i.l, ptr %i.c, align 8, !noalias !3209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3209
  store ptr %i.c, ptr %i.b, align 8, !noalias !3209
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !3209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3210
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @237, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3208
  call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !3211, !noalias !3210, !nonnull !6, !noundef !6
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !3211, !noalias !3210, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.n)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !3212

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %common.resume.i.i.i.i unwind label %bb.i, !noalias !3213

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !3214, !noalias !3215, !noundef !6 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !3214, !noalias !3215, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.m, i64 %i.n, i1 false), !noalias !3212
  %.pre.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3214, !noalias !3215
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i.i.i.i
  %i.t = phi i64 [ %.pre.i.i.i.i.i, %bb.e ], [ %i.p, %.noexc.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECs7gfv9tzbXmh_6yara_x:bb.a
  %i.aj = add i8 %.val15.i.prol, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val15.i.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !noalias !3228
  %i.an = add i64 %.ph, 1                         ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ah, %i.c
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ar, align 1, !noalias !3227, !noundef !6 ; 2 uses
  %i.as = add i8 %.val15.i, -65
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val15.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !noalias !3228
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.val15.i.1 = load i8, ptr %i.ax, align 1, !noalias !3227, !noundef !6 ; 2 uses
  %i.ay = add i8 %.val15.i.1, -65
  %i.az = icmp ult i8 %i.ay, 26
  %i.ba = select i1 %i.az, i8 32, i8 0
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val15.i.1
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !noalias !3228
  %i.bd = add i64 %i.aq, 2                        ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.d
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %vec.epilog.scalar.ph, !llvm.loop !3226

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3227
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !3238, !noundef !6 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !3239, !noundef !6
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !3239, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !3240
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !3238, !noundef !6 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !3239, !noundef !6
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !3239, !noundef !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !3240
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ac, align 1, !noalias !3238, !noundef !6 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !3239, !noundef !6
  %i.ae = icmp eq i8 %.val15.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !3239, !noundef !6
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !3240
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3238
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB1x_15XorCombinationsNtNtNtBa_6traits8iterator8Iterator4next0EB2y_4folduNCINvNvB2y_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3W_3VechE14extend_trustedBN_E0E0EB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.i = sub nuw i64 %i.g, %i.h                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.k = add i64 %.sroa.5.0.copyload, %i.g
  %i.l = sub i64 %i.k, %i.h
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.e, i64 1
  %bound0 = icmp ult ptr %i.j, %i.c
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.j, %i.n
  %bound19 = icmp ult ptr %i.e, %i.m
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 28
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load i8, ptr %i.e, align 1, !alias.scope !3256, !noalias !3257
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !alias.scope !3258, !noalias !3259
  %wide.load12 = load <16 x i8>, ptr %i.t, align 1, !alias.scope !3258, !noalias !3259
  %i.u = xor <16 x i8> %broadcast.splat, %wide.load
  %i.v = xor <16 x i8> %broadcast.splat, %wide.load12
  %i.w = getelementptr i8, ptr %i.r, i64 %index   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %i.u, ptr %i.w, align 1, !alias.scope !3260, !noalias !3261
  store <16 x i8> %i.v, ptr %i.x, align 1, !alias.scope !3260, !noalias !3261
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !3253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3262

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.i, -4                     ; 4 uses
  %i.z = add i64 %.sroa.5.0.copyload, %n.vec13    ; 2 uses
  %i.aa = load i8, ptr %i.e, align 1, !alias.scope !3256, !noalias !3257
  %broadcast.splatinsert16 = insertelement <4 x i8> poison, i8 %i.aa, i64 0
  %broadcast.splat17 = shufflevector <4 x i8> %broadcast.splatinsert16, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ab = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !3258, !noalias !3259
  %i.ad = xor <4 x i8> %broadcast.splat17, %wide.load15
  %i.ae = getelementptr i8, ptr %i.ab, i64 %index14
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !alias.scope !3260, !noalias !3261
  %index.next18 = add nuw i64 %index14, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3254

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.i, %n.vec13
  br i1 %cmp.n19, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = sub i64 %i.g, %i.h
  %i.ah = xor i64 %.sroa.01.0.i.ph, -1
  %i.ai = add i64 %i.ah, %i.g
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.aj, align 1, !noalias !3259, !noundef !6
  %i.ak = load i8, ptr %i.e, align 1, !noalias !3257, !noundef !6
  %i.al = xor i8 %i.ak, %.val15.i.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.al, ptr %i.am, align 1, !noalias !3263
  %i.an = add i64 %.ph, 1                         ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ai, %i.h
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bb, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bc, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ar, align 1, !noalias !3259, !noundef !6
  %i.as = load i8, ptr %i.e, align 1, !noalias !3257, !noundef !6
  %i.at = xor i8 %i.as, %.val15.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  store i8 %i.at, ptr %i.au, align 1, !noalias !3263
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.val15.i.1 = load i8, ptr %i.aw, align 1, !noalias !3259, !noundef !6
  %i.ax = load i8, ptr %i.e, align 1, !noalias !3257, !noundef !6
  %i.ay = xor i8 %i.ax, %.val15.i.1
  %i.az = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  store i8 %i.ay, ptr %i.ba, align 1, !noalias !3263
  %i.bb = add i64 %i.aq, 2                        ; 2 uses
  %i.bc = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.i
  br i1 %i.bd, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph, !llvm.loop !3255

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bb, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3259
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldhjjNCNvMs2_NtB1x_5sliceINtB3q_8BitSlicehE10count_oness_0NCINvXsK_NtB2o_5accumjNtB4i_3Sum3sumIBO_BN_B3i_EE0E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  %i.e = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.e, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1
  %wide.load3 = load <2 x i8>, ptr %i.g, align 1
  %i.h = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load)
  %i.i = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load3)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = add <2 x i64> %vec.phi, %i.j             ; 2 uses
  %i.m = add <2 x i64> %vec.phi2, %i.k            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !3264

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ %2, %bb.b ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.s, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i
  %.val.i = load i8, ptr %i.p, align 1, !noundef !6
  %i.q = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.val.i)
  %i.r = zext nneg i8 %i.q to i64
  %i.s = add i64 %.sroa.02.0.i, %i.r              ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %scalar.ph, !llvm.loop !3265

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.o, %middle.block ], [ %i.s, %scalar.ph ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i8, i8 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENCNvXs1_B1t_INtB1t_12MultiProductB2B_ENtNtNtBa_6traits8iterator8Iterator4next0EB3U_8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB3U_8try_folduNCINvNvB3U_12try_for_each4callhINtNtNtBc_3ops12control_flow11ControlFlowhENcNtB6r_5Break0E0B6r_E0IB6s_B6r_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3279, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3279, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.e, ptr %0, align 8, !alias.scope !3279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3280)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3281, !noalias !3278, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3281, !noalias !3278, !noundef !6
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i

_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i: ; preds = %bb.b
  %i.j = add i64 %i.g, 1
  store i64 %i.j, ptr %i.f, align 8, !alias.scope !3281, !noalias !3278
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3282, !noalias !3278, !noundef !6
  %i.m = icmp ugt i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !3282, !noalias !3278, !nonnull !6
  %.sink11.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %i.a
  %i.o = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i, i64 %i.g
  %i.p = load i8, ptr %i.o, align 1, !noalias !3278, !noundef !6
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !noalias !3283
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i, %bb.c
  %.sroa.3.0.i = phi i8 [ undef, %bb.a ], [ undef, %bb.c ], [ %i.p, %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i ]
  %.sroa.0.0.i = phi i8 [ 2, %bb.a ], [ 0, %bb.c ], [ 1, %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i ]
  %i.q = insertvalue { i8, i8 } poison, i8 %.sroa.0.0.i, 0
  %i.r = insertvalue { i8, i8 } %i.q, i8 %.sroa.3.0.i, 1
  ret { i8, i8 } %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i8, i8 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENCNvXs1_B1t_INtB1t_12MultiProductB2B_ENtNtNtBa_6traits8iterator8Iterator4next0EB4m_8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4m_8try_folduNCINvNvB4m_12try_for_each4callhINtNtNtBc_3ops12control_flow11ControlFlowhENcNtB6T_5Break0E0B6T_E0IB6U_B6T_EEB2J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3295, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3295, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3c_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB36_4next0NCINvXB42_INtB42_12GenericShuntINtB40_3MapB3_B5P_EIB4E_zEEB36_8try_folduNCINvNvB36_12try_for_each4callhB5H_NcNtB5H_5Break0E0B5H_E0E0B52_EB25_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !3295
end_hunk_1
