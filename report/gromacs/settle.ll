Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/settle?download=true
inline.NumInlined: 1717
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm:bb.a
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !17
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !58
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.t) ; 10 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.z = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.z, i1 false), !tbaa !17
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.aa = add i64 %i.d, -4
  %i.ab = sub i64 %i.aa, %i.e                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.ae, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ab, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aj ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.c, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.ak = getelementptr i8, ptr %next.gep34, i64 32
  %i.al = getelementptr i8, ptr %next.gep34, i64 64
  %i.am = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x float>, ptr %next.gep34, align 4, !tbaa !17, !alias.scope !113, !noalias !112
  %wide.load35 = load <8 x float>, ptr %i.ak, align 4, !tbaa !17, !alias.scope !113, !noalias !112
  %wide.load36 = load <8 x float>, ptr %i.al, align 4, !tbaa !17, !alias.scope !113, !noalias !112
  %wide.load37 = load <8 x float>, ptr %i.am, align 4, !tbaa !17, !alias.scope !113, !noalias !112
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !17, !alias.scope !112, !noalias !113
  store <8 x float> %wide.load35, ptr %i.an, align 4, !tbaa !17, !alias.scope !112, !noalias !113
  store <8 x float> %wide.load36, ptr %i.ao, align 4, !tbaa !17, !alias.scope !112, !noalias !113
  store <8 x float> %wide.load37, ptr %i.ap, align 4, !tbaa !17, !alias.scope !112, !noalias !113
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec39, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.u, i64 %i.au
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %wide.load43 = load <8 x float>, ptr %next.gep42, align 4, !tbaa !17, !alias.scope !113, !noalias !112
  store <8 x float> %wide.load43, ptr %next.gep41, align 4, !tbaa !17, !alias.scope !112, !noalias !113
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ad, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.aw = load float, ptr %.0911.i.i.i, align 4, !tbaa !17, !alias.scope !113, !noalias !112
  store float %i.aw, ptr %.012.i.i.i, align 4, !tbaa !17, !alias.scope !112, !noalias !113
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !110

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, %bb.f
  store ptr %i.u, ptr %0, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !111
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx11settle_projERKNS_10SettleDataENS_18ConstraintVariableEiPKiPK5t_pbcNS_8ArrayRefIKNS_11BasicVectorIfEEEENS9_ISB_EESE_iPA3_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.98") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.101") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.101") align 8 captures(none) %7, i32 noundef %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 8              ; 7 uses
  %i.c = alloca [3 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = mul nsw i32 %8, 3
  %i.e = icmp eq i32 %1, 4
  %spec.select.idx = select i1 %i.e, i64 88, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.i = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %i.f, <7 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>, <7 x float> poison), !tbaa !17
  %i.j = shufflevector <7 x float> %i.i, <7 x float> poison, <3 x i32> <i32 0, i32 3, i32 6>
  %i.k = load float, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.l = load float, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 44
  %10 = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %11 = load float, ptr %i.m, align 4, !tbaa !115 ; 3 uses
  %i.n = load float, ptr %10, align 8, !tbaa !116 ; 2 uses
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 52
  %i.q = load <8 x float>, ptr %i.p, align 4, !tbaa !17 ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8, !tbaa !39
  %i.s = add nsw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  %i.u = load float, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select, i64 36
  %i.w = load float, ptr %i.v, align 4, !tbaa !19
  %i.x = icmp eq ptr %4, null
  %i.y = load i64, ptr %5, align 8
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ad = load i64, ptr %6, align 8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load i64, ptr %7, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  %i.ah = fneg float %i.w                         ; 2 uses
  %i.ai = fneg float %i.u                         ; 3 uses
  %i.aj = sext i32 %i.s to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.al = insertelement <3 x float> poison, float %i.l, i64 0
  %i.am = insertelement <3 x float> poison, float %i.k, i64 0
  %i.an = shufflevector <3 x float> %i.am, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.ao = shufflevector <8 x float> %i.q, <8 x float> poison, <3 x i32> <i32 0, i32 3, i32 6>
  %i.ap = shufflevector <8 x float> %i.q, <8 x float> poison, <3 x i32> <i32 1, i32 4, i32 7>
  %i.aq = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = insertelement <2 x float> poison, float %11, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.n, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <3 x float> %i.al, <3 x float> poison, <8 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.az = mul nsw i64 %indvars.iv, %i.aj
  %i.ba = getelementptr [4 x i8], ptr %3, i64 %i.az ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = getelementptr i8, ptr %i.ba, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43 ; 2 uses
  %i.bh = sext i32 %i.bc to i64                   ; 3 uses
  %i.bi = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.bh ; 4 uses
  %i.bj = sext i32 %i.be to i64                   ; 3 uses
  %i.bk = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.bj ; 4 uses
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !17 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !17 ; 2 uses
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = sext i32 %i.bg to i64                   ; 2 uses
  %i.br = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.bq ; 2 uses
  %12 = load <2 x float>, ptr %i.bi, align 4, !tbaa !17 ; 2 uses
  %13 = load <2 x float>, ptr %i.bk, align 4, !tbaa !17 ; 2 uses
  %14 = fsub <2 x float> %12, %13
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !17 ; 2 uses
  %i.bt = fsub <2 x float> %12, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !17 ; 2 uses
  %i.bw = fsub float %i.bm, %i.bv
  %i.bx = fsub <2 x float> %13, %i.bs
  %i.by = fsub float %i.bo, %i.bv
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bz = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) ; 0 uses
  %i.ca = sext i32 %i.bg to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.ca ; 2 uses
  %i.cc = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.b) ; 0 uses
  %i.cd = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.c) ; 0 uses
  %i.ce = load <2 x float>, ptr %i.a, align 8, !tbaa !17
  %.pre135 = load float, ptr %i.aa, align 8, !tbaa !17
  %.pre138 = load float, ptr %i.ab, align 8, !tbaa !17
  %15 = load <2 x float>, ptr %i.b, align 8, !tbaa !17
  %i.cf = load <2 x float>, ptr %i.c, align 8, !tbaa !17
  %.pre141 = load float, ptr %i.ac, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi143 = phi i64 [ %i.ca, %bb.d ], [ %i.bq, %bb.c ] ; 2 uses
  %i.cg = phi float [ %.pre141, %bb.d ], [ %i.by, %bb.c ]
  %i.ch = phi float [ %.pre138, %bb.d ], [ %i.bw, %bb.c ]
  %i.ci = phi float [ %.pre135, %bb.d ], [ %i.bp, %bb.c ]
  %i.cj = phi <2 x float> [ %15, %bb.d ], [ %i.bt, %bb.c ]
  %i.ck = phi <2 x float> [ %i.cf, %bb.d ], [ %i.bx, %bb.c ]
  %i.cl = phi <2 x float> [ %i.ce, %bb.d ], [ %14, %bb.c ]
  %i.cm = fmul <2 x float> %i.at, %i.cl           ; 5 uses
  %16 = extractelement <2 x float> %i.cm, i64 0
  %17 = extractelement <2 x float> %i.cm, i64 1
  store <2 x float> %i.cm, ptr %i.a, align 8, !tbaa !17
  %i.cn = fmul float %11, %i.ci                   ; 3 uses
  store float %i.cn, ptr %i.aa, align 8, !tbaa !17
  %i.co = fmul <2 x float> %i.at, %i.cj           ; 5 uses
  %18 = extractelement <2 x float> %i.co, i64 0
  %19 = extractelement <2 x float> %i.co, i64 1
  store <2 x float> %i.co, ptr %i.b, align 8, !tbaa !17
  %i.cp = fmul float %11, %i.ch                   ; 3 uses
  store float %i.cp, ptr %i.ab, align 8, !tbaa !17
  %i.cq = fmul <2 x float> %i.av, %i.ck           ; 5 uses
  %20 = extractelement <2 x float> %i.cq, i64 0
  %21 = extractelement <2 x float> %i.cq, i64 1
  store <2 x float> %i.cq, ptr %i.c, align 8, !tbaa !17
  %i.cr = fmul float %i.n, %i.cg                  ; 3 uses
  store float %i.cr, ptr %i.ac, align 8, !tbaa !17
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %i.bh ; 3 uses
  %i.ct = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %i.bj ; 3 uses
  %i.cu = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %.pre-phi143 ; 3 uses
  %i.cv = load float, ptr %i.cs, align 4, !tbaa !17 ; 2 uses
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !17 ; 2 uses
  %i.cx = fsub float %i.cv, %i.cw
  %i.cy = call float @llvm.fmuladd.f32(float %i.cx, float %16, float 0.000000e+00)
  %i.cz = load float, ptr %i.cu, align 4, !tbaa !17 ; 2 uses
  %i.da = fsub float %i.cv, %i.cz
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %18, float 0.000000e+00)
  %i.dc = fsub float %i.cw, %i.cz
  %i.dd = call float @llvm.fmuladd.f32(float %i.dc, float %20, float 0.000000e+00)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !17 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !17 ; 2 uses
  %i.di = fsub float %i.df, %i.dh
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %17, float %i.cy)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !17 ; 2 uses
  %i.dm = fsub float %i.df, %i.dl
  %i.dn = call float @llvm.fmuladd.f32(float %i.dm, float %19, float %i.db)
  %i.do = fsub float %i.dh, %i.dl
  %i.dp = call float @llvm.fmuladd.f32(float %i.do, float %21, float %i.dd)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !17 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !17 ; 2 uses
  %i.du = fsub float %i.dr, %i.dt
  %i.dv = call float @llvm.fmuladd.f32(float %i.du, float %i.cn, float %i.dj)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !17 ; 2 uses
  %i.dy = fsub float %i.dr, %i.dx
  %i.dz = call float @llvm.fmuladd.f32(float %i.dy, float %i.cp, float %i.dn)
  %i.ea = fsub float %i.dt, %i.dx
  %i.eb = call float @llvm.fmuladd.f32(float %i.ea, float %i.cr, float %i.dp)
  %i.ec = insertelement <3 x float> poison, float %i.dz, i64 0
  %i.ed = shufflevector <3 x float> %i.ec, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ee = fmul <3 x float> %i.ap, %i.ed
  %i.ef = insertelement <3 x float> poison, float %i.dv, i64 0
  %i.eg = shufflevector <3 x float> %i.ef, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eh = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ao, <3 x float> %i.eg, <3 x float> %i.ee)
  %i.ei = insertelement <3 x float> poison, float %i.eb, i64 0
  %i.ej = shufflevector <3 x float> %i.ei, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ek = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.j, <3 x float> %i.ej, <3 x float> %i.eh) ; 9 uses
  %i.el = getelementptr inbounds [12 x i8], ptr %i.ag, i64 %i.bh ; 3 uses
  %i.em = extractelement <3 x float> %i.ek, i64 0 ; 3 uses
  %i.en = fneg float %i.em                        ; 2 uses
  %i.eo = getelementptr inbounds [12 x i8], ptr %i.ag, i64 %i.bj ; 3 uses
  %i.ep = extractelement <3 x float> %i.ek, i64 1 ; 3 uses
  %i.eq = fneg float %i.ep                        ; 2 uses
  %i.er = getelementptr inbounds [12 x i8], ptr %i.ag, i64 %.pre-phi143 ; 3 uses
  %i.es = extractelement <3 x float> %i.ek, i64 2 ; 3 uses
  %i.et = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = fmul <2 x float> %i.et, %i.co
  %i.ev = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.cm, <2 x float> %i.eu)
  %i.ex = load <2 x float>, ptr %i.el, align 4, !tbaa !17
  %i.ey = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ew, <2 x float> %i.ex)
  store <2 x float> %i.ey, ptr %i.el, align 4, !tbaa !17
  %i.ez = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.fa = fmul <2 x float> %i.ez, %i.cq
  %i.fb = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.cm, <2 x float> %i.fa)
  %i.fe = load <2 x float>, ptr %i.eo, align 4, !tbaa !17
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.fd, <2 x float> %i.fe)
  store <2 x float> %i.ff, ptr %i.eo, align 4, !tbaa !17
  %i.fg = fneg <2 x float> %i.cq
  %i.fh = fmul <2 x float> %i.ez, %i.fg
  %i.fi = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.co, <2 x float> %i.fh)
  %i.fl = load <2 x float>, ptr %i.er, align 4, !tbaa !17
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.fk, <2 x float> %i.fl)
  store <2 x float> %i.fm, ptr %i.er, align 4, !tbaa !17
  %i.fn = fmul float %i.ep, %i.cp
  %i.fo = call float @llvm.fmuladd.f32(float %i.em, float %i.cn, float %i.fn)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !17
  %i.fr = call float @llvm.fmuladd.f32(float %i.ah, float %i.fo, float %i.fq)
  store float %i.fr, ptr %i.fp, align 4, !tbaa !17
  %i.fs = load float, ptr %i.aa, align 8, !tbaa !17 ; 5 uses
  %i.ft = fmul float %i.es, %i.cr
  %i.fu = call float @llvm.fmuladd.f32(float %i.en, float %i.fs, float %i.ft)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !17
  %i.fx = call float @llvm.fmuladd.f32(float %i.ai, float %i.fu, float %i.fw)
  store float %i.fx, ptr %i.fv, align 4, !tbaa !17
  %i.fy = load float, ptr %i.ab, align 8, !tbaa !17 ; 5 uses
  %i.fz = load float, ptr %i.ac, align 8, !tbaa !17 ; 4 uses
  %i.ga = fneg float %i.fz
  %i.gb = fmul float %i.es, %i.ga
  %i.gc = call float @llvm.fmuladd.f32(float %i.eq, float %i.fy, float %i.gb)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !17
  %i.gf = call float @llvm.fmuladd.f32(float %i.ai, float %i.gc, float %i.ge)
  store float %i.gf, ptr %i.gd, align 4, !tbaa !17
  %i.gg = icmp slt i32 %i.bc, %i.d
  br i1 %i.gg, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.gh = load <2 x float>, ptr %i.a, align 8, !tbaa !17
  %i.gi = load <2 x float>, ptr %i.b, align 8, !tbaa !17
  %i.gj = load <2 x float>, ptr %i.c, align 8, !tbaa !17
  %i.gk = fmul float %i.k, %i.fs
  %i.gl = shufflevector <2 x float> %i.gh, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0> ; 2 uses
  %i.gm = insertelement <3 x float> poison, float %i.fs, i64 1
  %i.gn = insertelement <3 x float> %i.gl, float %i.fs, i64 1
  %i.go = fmul <3 x float> %i.an, %i.gn
  %i.gp = shufflevector <3 x float> %i.go, <3 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1>
  %i.gq = fmul float %i.k, %i.fy
  %i.gr = shufflevector <2 x float> %i.gi, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0> ; 2 uses
  %i.gs = insertelement <3 x float> poison, float %i.fy, i64 1
  %i.gt = insertelement <3 x float> %i.gr, float %i.fy, i64 1
  %i.gu = fmul <3 x float> %i.an, %i.gt
  %i.gv = shufflevector <3 x float> %i.gu, <3 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1>
  %i.gw = fmul float %i.l, %i.fz
  %i.gx = shufflevector <2 x float> %i.gj, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0> ; 2 uses
  %i.gy = insertelement <3 x float> poison, float %i.fz, i64 1 ; 2 uses
  %i.gz = shufflevector <3 x float> %i.gx, <3 x float> %i.gy, <8 x i32> <i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 4, i32 4>
  %i.ha = fmul <8 x float> %i.ay, %i.gz
  %i.hb = shufflevector <3 x float> %i.gl, <3 x float> %i.gm, <8 x i32> <i32 2, i32 0, i32 4, i32 2, i32 0, i32 4, i32 2, i32 0>
  %i.hc = fmul <8 x float> %i.gp, %i.hb
  %i.hd = shufflevector <3 x float> %i.gr, <3 x float> %i.gs, <8 x i32> <i32 2, i32 0, i32 4, i32 2, i32 0, i32 4, i32 2, i32 0>
  %i.he = fmul <8 x float> %i.gv, %i.hd
  %i.hf = shufflevector <3 x float> %i.ek, <3 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.hg = fmul <8 x float> %i.hf, %i.he
  %i.hh = shufflevector <3 x float> %i.ek, <3 x float> poison, <8 x i32> zeroinitializer
  %i.hi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hc, <8 x float> %i.hh, <8 x float> %i.hg)
  %i.hj = shufflevector <3 x float> %i.gx, <3 x float> %i.gy, <8 x i32> <i32 2, i32 0, i32 4, i32 2, i32 0, i32 4, i32 2, i32 0>
  %i.hk = fmul <8 x float> %i.ha, %i.hj
  %i.hl = shufflevector <3 x float> %i.ek, <3 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.hm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hk, <8 x float> %i.hl, <8 x float> %i.hi)
  %i.hn = load <8 x float>, ptr %9, align 4, !tbaa !17
  %i.ho = fadd <8 x float> %i.hn, %i.hm
  store <8 x float> %i.ho, ptr %9, align 4, !tbaa !17
  %i.hp = fmul float %i.gk, %i.fs
  %i.hq = fmul float %i.gq, %i.fy
  %i.hr = fmul float %i.ep, %i.hq
  %i.hs = call float @llvm.fmuladd.f32(float %i.hp, float %i.em, float %i.hr)
  %i.ht = fmul float %i.gw, %i.fz
  %i.hu = call float @llvm.fmuladd.f32(float %i.ht, float %i.es, float %i.hs)
  %i.hv = load float, ptr %i.ak, align 4, !tbaa !17
  %i.hw = fadd float %i.hv, %i.hu
  store float %i.hw, ptr %i.ak, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !114

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return %4, ptr nofree noundef readonly align 8 captures(none) dead_on_return %5, float noundef %6, ptr nofree noundef readonly align 8 captures(none) dead_on_return %7, i1 noundef zeroext %8, ptr nofree noundef captures(none) %9, ptr nofree noundef writeonly captures(none) %10) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca [3 x float], align 16             ; 8 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [3 x float], align 8              ; 9 uses
  %i.e = alloca [3 x float], align 8              ; 8 uses
  %i.f = alloca [3 x float], align 8              ; 8 uses
  %i.g = alloca [3 x float], align 16             ; 5 uses
  %i.h = alloca [3 x float], align 16             ; 5 uses
  %i.i = alloca [3 x float], align 16             ; 5 uses
  %i.j = alloca [3 x float], align 16             ; 5 uses
  %i.k = alloca [3 x float], align 4              ; 7 uses
  %i.l = alloca [3 x float], align 4              ; 6 uses
  %i.m = alloca [3 x float], align 4              ; 6 uses
  %i.n = alloca [3 x float], align 4              ; 9 uses
  %i.o = alloca [3 x float], align 4              ; 8 uses
  %i.p = alloca [3 x float], align 4              ; 8 uses
  %i.q = alloca [3 x float], align 4              ; 6 uses
  %i.r = alloca [3 x float], align 4              ; 6 uses
  %i.s = alloca [3 x float], align 4              ; 6 uses
  %i.t = alloca [3 x float], align 4              ; 6 uses
  %i.u = alloca [3 x float], align 16             ; 8 uses
  %i.v = alloca [3 x float], align 4              ; 6 uses
  %i.w = alloca [3 x float], align 4              ; 6 uses
  %i.x = alloca [3 x float], align 8              ; 9 uses
  %i.y = alloca [3 x float], align 8              ; 8 uses
  %i.z = alloca [3 x float], align 8              ; 8 uses
  %i.aa = alloca [3 x float], align 16            ; 5 uses
  %i.ab = alloca [3 x float], align 16            ; 5 uses
  %i.ac = alloca [3 x float], align 16            ; 5 uses
  %i.ad = alloca [3 x float], align 16            ; 5 uses
  %i.ae = alloca [3 x float], align 4             ; 7 uses
  %i.af = alloca [3 x float], align 4             ; 6 uses
  %i.ag = alloca [3 x float], align 4             ; 6 uses
  %i.ah = alloca [3 x float], align 4             ; 9 uses
  %i.ai = alloca [3 x float], align 4             ; 8 uses
  %i.aj = alloca [3 x float], align 4             ; 8 uses
  %i.ak = alloca [3 x float], align 4             ; 6 uses
  %i.al = alloca [3 x float], align 4             ; 6 uses
  %i.am = alloca [3 x float], align 4             ; 6 uses
  %i.an = alloca [3 x float], align 4             ; 6 uses
  %i.ao = alloca [144 x float], align 64          ; 39 uses
  %11 = alloca %struct.t_pbc, align 4             ; 4 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !135   ; 32 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !137   ; 56 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !137   ; 24 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.at = load i8, ptr %i.as, align 8, !tbaa !36, !range !138, !noundef !139
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #18
  call void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef %3, ptr noundef nonnull %i.ao)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !56
  %i.ax = add i32 %i.aw, 15
  %i.ay = sdiv i32 %i.ax, 16                      ; 2 uses
  %i.az = add i32 %1, -1                          ; 2 uses
  %i.ba = mul nsw i32 %i.ay, %2
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = add nsw i32 %2, 1
  %i.bd = mul nsw i32 %i.ay, %i.bc
  %i.be = add i32 %i.bd, %i.az
  %i.bf = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <2 x i32> %i.bf, i32 %i.be, i64 1
  %i.bh = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.bi = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bj = sdiv <2 x i32> %i.bg, %i.bi             ; 2 uses
  %i.bk = extractelement <2 x i32> %i.bj, i64 0
  %i.bl = shl nsw i32 %i.bk, 4                    ; 8 uses
  %i.bm = extractelement <2 x i32> %i.bj, i64 1
  %i.bn = shl nsw i32 %i.bm, 4                    ; 8 uses
  %.not.i = icmp eq ptr %i.ar, null
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load <1 x float>, ptr %i.bo, align 8    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.br = load <1 x float>, ptr %i.bq, align 4    ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bt = load <16 x float>, ptr %i.bs, align 4   ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load <1 x float>, ptr %i.bu, align 8    ; 4 uses
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = shufflevector <1 x float> %i.bp, <1 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.bx = shufflevector <1 x float> %i.br, <1 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.by = shufflevector <16 x float> %i.bt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bz = shufflevector <1 x float> %i.bv, <1 x float> poison, <16 x i32> zeroinitializer
  %i.ca = icmp slt i32 %i.bl, %i.bn
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load <1 x float>, ptr %i.cb, align 8, !noalias !140
  %i.cd = shufflevector <1 x float> %i.cc, <1 x float> poison, <16 x i32> zeroinitializer
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
end_hunk_0
begin_hunk_1_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.dcy = shufflevector <3 x float> %i.dcx, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dcz = load float, ptr %i.czc, align 4, !tbaa !17, !noalias !144 ; 2 uses
  %i.dda = load float, ptr %i.aa, align 16, !tbaa !17, !noalias !144 ; 2 uses
  %i.ddb = load <3 x float>, ptr %i.aa, align 16, !tbaa !17, !noalias !144 ; 5 uses
  %i.ddc = shufflevector <3 x float> %i.ddb, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ddd = fneg <3 x float> %i.dcx
  %i.dde = shufflevector <3 x float> %i.ddd, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ddf = fmul <3 x float> %i.ddb, %i.dde
  %i.ddg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ddc, <3 x float> %i.dcx, <3 x float> %i.ddf) ; 9 uses
  %i.ddh = extractelement <3 x float> %i.ddg, i64 0
  %i.ddi = fneg <3 x float> %i.ddg
  %i.ddj = shufflevector <3 x float> %i.ddi, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ddk = fneg <3 x float> %i.ddg
  %i.ddl = shufflevector <3 x float> %i.ddk, <3 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.ddm = shufflevector <2 x float> %i.ddj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ddn = shufflevector <3 x float> %i.ddl, <3 x float> %i.ddm, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ddo = fmul <3 x float> %i.dcq, %i.ddn
  %i.ddp = shufflevector <3 x float> %i.ddg, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.ddq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dcp, <3 x float> %i.ddp, <3 x float> %i.ddo) ; 7 uses
  %i.ddr = extractelement <3 x float> %i.ddq, i64 2
  %i.dds = fneg float %i.ddr
  %i.ddt = fmul float %i.ddh, %i.dds
  %i.ddu = insertelement <3 x float> poison, float %i.ddt, i64 0
  %i.ddv = shufflevector <3 x float> %i.ddg, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 poison>
  %i.ddw = fneg <3 x float> %i.ddq
  %i.ddx = fmul <3 x float> %i.ddv, %i.ddw
  %i.ddy = shufflevector <3 x float> %i.ddu, <3 x float> %i.ddx, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ddz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ddp, <3 x float> %i.ddq, <3 x float> %i.ddy) ; 4 uses
  %i.dea = shufflevector <3 x float> %i.ddq, <3 x float> %i.ddz, <3 x i32> <i32 0, i32 5, i32 poison>
  %i.deb = shufflevector <3 x float> %i.dea, <3 x float> %i.ddg, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.dec = fmul <3 x float> %i.deb, %i.deb
  %i.ded = shufflevector <3 x float> %i.ddq, <3 x float> %i.ddz, <3 x i32> <i32 2, i32 4, i32 poison>
  %i.dee = shufflevector <3 x float> %i.ded, <3 x float> %i.ddg, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %i.def = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dee, <3 x float> %i.dee, <3 x float> %i.dec)
  %i.deg = shufflevector <3 x float> %i.ddq, <3 x float> %i.ddz, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.deh = shufflevector <3 x float> %i.deg, <3 x float> %i.ddg, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.dei = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.deh, <3 x float> %i.deh, <3 x float> %i.def)
  %i.dej = call <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.dei)
  %i.dek = fdiv <3 x float> splat (float 1.000000e+00), %i.dej ; 3 uses
  %i.del = shufflevector <3 x float> %i.dek, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dem = fmul <3 x float> %i.ddq, %i.del        ; 8 uses
  %i.den = shufflevector <3 x float> %i.ddz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.deo = shufflevector <3 x float> %i.dek, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dep = fmul <3 x float> %i.den, %i.deo        ; 8 uses
  %i.deq = shufflevector <3 x float> %i.dek, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.der = fmul <3 x float> %i.ddg, %i.deq        ; 8 uses
  %i.des = extractelement <3 x float> %i.ddb, i64 1 ; 2 uses
  %i.det = extractelement <3 x float> %i.dem, i64 0 ; 2 uses
  %i.deu = fmul float %i.des, %i.det
  %i.dev = extractelement <3 x float> %i.dem, i64 2 ; 4 uses
  %i.dew = call float @llvm.fmuladd.f32(float %i.dev, float %i.dda, float %i.deu)
  %i.dex = extractelement <3 x float> %i.ddb, i64 2 ; 3 uses
  %i.dey = extractelement <3 x float> %i.dem, i64 1 ; 4 uses
  %i.dez = call float @llvm.fmuladd.f32(float %i.dey, float %i.dex, float %i.dew) ; 3 uses
  %i.dfa = fmul float %i.dcz, %i.det
  %i.dfb = extractelement <3 x float> %i.dcx, i64 0 ; 2 uses
  %i.dfc = call float @llvm.fmuladd.f32(float %i.dev, float %i.dfb, float %i.dfa)
  %i.dfd = extractelement <3 x float> %i.dcx, i64 2 ; 3 uses
  %i.dfe = call float @llvm.fmuladd.f32(float %i.dey, float %i.dfd, float %i.dfc) ; 3 uses
  %i.dff = extractelement <3 x float> %i.dep, i64 0 ; 2 uses
  %i.dfg = fmul float %i.des, %i.dff
  %i.dfh = extractelement <3 x float> %i.dep, i64 2 ; 4 uses
  %i.dfi = call float @llvm.fmuladd.f32(float %i.dfh, float %i.dda, float %i.dfg)
  %i.dfj = extractelement <3 x float> %i.dep, i64 1 ; 4 uses
  %i.dfk = call float @llvm.fmuladd.f32(float %i.dfj, float %i.dex, float %i.dfi) ; 3 uses
  %i.dfl = fmul float %i.dcz, %i.dff
  %i.dfm = call float @llvm.fmuladd.f32(float %i.dfh, float %i.dfb, float %i.dfl)
  %i.dfn = call float @llvm.fmuladd.f32(float %i.dfj, float %i.dfd, float %i.dfm) ; 3 uses
  %foldExtExtBinop242 = fmul <3 x float> %i.dcs, %i.dem
  %i.dfo = extractelement <3 x float> %foldExtExtBinop242, i64 0
  %i.dfp = call float @llvm.fmuladd.f32(float %i.dev, float %i.dct, float %i.dfo)
  %i.dfq = extractelement <3 x float> %i.dcr, i64 2 ; 3 uses
  %i.dfr = call float @llvm.fmuladd.f32(float %i.dey, float %i.dfq, float %i.dfp)
  %foldExtExtBinop244 = fmul <3 x float> %i.dcv, %i.dem
  %i.dfs = extractelement <3 x float> %foldExtExtBinop244, i64 0
  %i.dft = call float @llvm.fmuladd.f32(float %i.dev, float %i.dcw, float %i.dfs)
  %i.dfu = extractelement <3 x float> %i.dcu, i64 2 ; 3 uses
  %i.dfv = call float @llvm.fmuladd.f32(float %i.dey, float %i.dfu, float %i.dft)
  %foldExtExtBinop246 = fmul <3 x float> %i.dcs, %i.dep
  %i.dfw = extractelement <3 x float> %foldExtExtBinop246, i64 0
  %i.dfx = call float @llvm.fmuladd.f32(float %i.dfh, float %i.dct, float %i.dfw)
  %i.dfy = call float @llvm.fmuladd.f32(float %i.dfj, float %i.dfq, float %i.dfx)
  %foldExtExtBinop248 = fmul <3 x float> %i.dcv, %i.dep
  %i.dfz = extractelement <3 x float> %foldExtExtBinop248, i64 0
  %i.dga = call float @llvm.fmuladd.f32(float %i.dfh, float %i.dcw, float %i.dfz)
  %i.dgb = call float @llvm.fmuladd.f32(float %i.dfj, float %i.dfu, float %i.dga)
  %foldExtExtBinop250 = fmul <3 x float> %i.dcs, %i.der
  %i.dgc = extractelement <3 x float> %foldExtExtBinop250, i64 0
  %i.dgd = extractelement <3 x float> %i.der, i64 2 ; 3 uses
  %i.dge = call float @llvm.fmuladd.f32(float %i.dgd, float %i.dct, float %i.dgc)
  %i.dgf = extractelement <3 x float> %i.der, i64 1 ; 3 uses
  %i.dgg = call float @llvm.fmuladd.f32(float %i.dgf, float %i.dfq, float %i.dge) ; 2 uses
  %foldExtExtBinop252 = fmul <3 x float> %i.dcv, %i.der
  %i.dgh = extractelement <3 x float> %foldExtExtBinop252, i64 0
  %i.dgi = call float @llvm.fmuladd.f32(float %i.dgd, float %i.dcw, float %i.dgh)
  %i.dgj = call float @llvm.fmuladd.f32(float %i.dgf, float %i.dfu, float %i.dgi) ; 2 uses
  %shift = shufflevector <3 x float> %i.dcp, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %foldExtExtBinop254 = fmul <3 x float> %shift, %i.der
  %i.dgk = extractelement <3 x float> %foldExtExtBinop254, i64 0
  %i.dgl = call float @llvm.fmuladd.f32(float %i.dgd, float %i.dck, float %i.dgk)
  %i.dgm = extractelement <3 x float> %i.dcp, i64 0
  %i.dgn = call float @llvm.fmuladd.f32(float %i.dgf, float %i.dgm, float %i.dgl) ; 2 uses
  %i.dgo = fmul float %i.cze, %i.dgn              ; 3 uses
  %i.dgp = fmul float %i.dgo, %i.dgo
  %i.dgq = fsub float 1.000000e+00, %i.dgp        ; 3 uses
  %i.dgr = fcmp olt float %i.dgq, f0x2B8CBCCC
  %.sroa.speculated.i.i50.i = select i1 %i.dgr, float f0x2B8CBCCC, float %i.dgq ; 2 uses
  %i.dgs = call noundef float @sqrtf(float noundef %.sroa.speculated.i.i50.i) #18, !noalias !144
  %i.dgt = fdiv float 1.000000e+00, %i.dgs        ; 2 uses
  %i.dgu = fmul float %i.dgt, %.sroa.speculated.i.i50.i ; 2 uses
  %i.dgv = fsub float %i.dgg, %i.dgj
  %i.dgw = fmul float %i.cyg, %i.dgv
  %i.dgx = fmul float %i.dgt, %i.dgw              ; 3 uses
  %i.dgy = fmul float %i.dgx, %i.dgx
  %i.dgz = fsub float 1.000000e+00, %i.dgy        ; 2 uses
  %i.dha = call noundef float @sqrtf(float noundef %i.dgz) #18, !noalias !144
  %i.dhb = fdiv float 1.000000e+00, %i.dha
  %i.dhc = fmul float %i.dhb, %i.dgz
  %i.dhd = fmul float %i.cyf, %i.dgu              ; 2 uses
  %i.dhe = fmul float %i.dhc, %i.czf              ; 5 uses
  %i.dhf = fmul float %i.dgu, %i.czg              ; 2 uses
  %i.dhg = fmul float %i.cye, %i.dgx
  %i.dhh = fmul float %i.dgo, %i.dhg              ; 2 uses
  %i.dhi = fsub float %i.dhf, %i.dhh              ; 4 uses
  %i.dhj = fadd float %i.dhh, %i.dhf              ; 4 uses
  %i.dhk = fsub float %i.dez, %i.dfe
  %i.dhl = fmul float %i.dfk, %i.dhi
  %i.dhm = call float @llvm.fmuladd.f32(float %i.dhe, float %i.dhk, float %i.dhl)
  %i.dhn = call float @llvm.fmuladd.f32(float %i.dfn, float %i.dhj, float %i.dhm) ; 3 uses
  %i.dho = fsub float %i.dfn, %i.dfk
  %i.dhp = fmul float %i.dez, %i.dhi
  %i.dhq = call float @llvm.fmuladd.f32(float %i.dhe, float %i.dho, float %i.dhp)
  %i.dhr = call float @llvm.fmuladd.f32(float %i.dfe, float %i.dhj, float %i.dhq) ; 3 uses
  %i.dhs = fneg float %i.dfk
  %i.dht = fmul float %i.dfr, %i.dhs
  %i.dhu = call float @llvm.fmuladd.f32(float %i.dez, float %i.dfy, float %i.dht)
  %i.dhv = call float @llvm.fmuladd.f32(float %i.dfe, float %i.dgb, float %i.dhu)
  %i.dhw = fneg float %i.dfv
  %i.dhx = call float @llvm.fmuladd.f32(float %i.dhw, float %i.dfn, float %i.dhv) ; 3 uses
  %i.dhy = fmul float %i.dhr, %i.dhr
  %i.dhz = call float @llvm.fmuladd.f32(float %i.dhn, float %i.dhn, float %i.dhy) ; 3 uses
  %i.dia = fneg float %i.dhx
  %i.dib = call float @llvm.fmuladd.f32(float %i.dia, float %i.dhx, float %i.dhz) ; 2 uses
  %i.dic = fmul float %i.dhr, %i.dib
  %i.did = call noundef float @sqrtf(float noundef %i.dib) #18, !noalias !144
  %i.die = fdiv float -1.000000e+00, %i.did
  %i.dif = fmul float %i.die, %i.dic
  %i.dig = call float @llvm.fmuladd.f32(float %i.dhn, float %i.dhx, float %i.dif)
  %i.dih = fmul float %i.dhz, %i.dhz
  %sqrt370.i.i = call float @llvm.sqrt.f32(float %i.dih)
  %i.dii = fdiv float 1.000000e+00, %sqrt370.i.i
  %i.dij = fmul float %i.dii, %i.dig              ; 6 uses
  %i.dik = fmul float %i.dij, %i.dij
  %i.dil = fsub float 1.000000e+00, %i.dik        ; 2 uses
  %i.dim = call noundef float @sqrtf(float noundef %i.dil) #18, !noalias !144
  %i.din = fdiv float 1.000000e+00, %i.dim
  %i.dio = fmul float %i.din, %i.dil              ; 5 uses
  %i.dip = fneg float %i.dhd
  %i.diq = fmul float %i.dij, %i.dip
  %i.dir = fmul float %i.dhd, %i.dio
  %i.dis = fneg float %i.dij                      ; 2 uses
  %i.dit = fmul float %i.dhi, %i.dis
  %i.diu = call float @llvm.fmuladd.f32(float %i.dhe, float %i.dio, float %i.dit)
  %i.div = fmul float %i.dhi, %i.dio
  %i.diw = call float @llvm.fmuladd.f32(float %i.dhe, float %i.dij, float %i.div) ; 2 uses
  %i.dix = fneg float %i.dhe                      ; 2 uses
  %i.diy = fmul float %i.dhj, %i.dis
  %i.diz = call float @llvm.fmuladd.f32(float %i.dix, float %i.dio, float %i.diy)
  %i.dja = fmul float %i.dhj, %i.dio
  %i.djb = call float @llvm.fmuladd.f32(float %i.dix, float %i.dij, float %i.dja)
  %i.djc = insertelement <3 x float> poison, float %i.dir, i64 0
  %i.djd = shufflevector <3 x float> %i.djc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dje = fmul <3 x float> %i.dep, %i.djd
  %i.djf = insertelement <3 x float> poison, float %i.diq, i64 0
  %i.djg = shufflevector <3 x float> %i.djf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djh = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dem, <3 x float> %i.djg, <3 x float> %i.dje)
  %i.dji = insertelement <3 x float> poison, float %i.dgn, i64 0
  %i.djj = shufflevector <3 x float> %i.dji, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.der, <3 x float> %i.djj, <3 x float> %i.djh)
  %i.djl = insertelement <2 x float> poison, float %i.diw, i64 0
  %i.djm = insertelement <3 x float> poison, float %i.diu, i64 0
  %i.djn = shufflevector <3 x float> %i.djm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djo = shufflevector <2 x float> %i.djl, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.djp = insertelement <3 x float> %i.djo, float %i.diw, i64 2
  %i.djq = fmul <3 x float> %i.dep, %i.djp
  %i.djr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dem, <3 x float> %i.djn, <3 x float> %i.djq)
  %i.djs = insertelement <3 x float> poison, float %i.dgg, i64 0
  %i.djt = shufflevector <3 x float> %i.djs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dju = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.der, <3 x float> %i.djt, <3 x float> %i.djr)
  %i.djv = insertelement <3 x float> poison, float %i.djb, i64 0
  %i.djw = shufflevector <3 x float> %i.djv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djx = fmul <3 x float> %i.dep, %i.djw
  %i.djy = insertelement <3 x float> poison, float %i.diz, i64 0
  %i.djz = shufflevector <3 x float> %i.djy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dka = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dem, <3 x float> %i.djz, <3 x float> %i.djx)
  %i.dkb = insertelement <3 x float> poison, float %i.dgj, i64 0
  %i.dkc = shufflevector <3 x float> %i.dkb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dkd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.der, <3 x float> %i.dkc, <3 x float> %i.dka)
  %i.dke = shufflevector <3 x float> %i.dcp, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dkf = fsub <3 x float> %i.djk, %i.dke        ; 3 uses
  %i.dkg = load float, ptr %i.cyx, align 8, !tbaa !17, !noalias !144
  %i.dkh = extractelement <3 x float> %i.dkf, i64 1 ; 2 uses
  %i.dki = fadd float %i.dkg, %i.dkh              ; 2 uses
  store float %i.dki, ptr %i.cyx, align 8, !tbaa !17, !noalias !144
  %i.dkj = fsub <3 x float> %i.dju, %i.dcs        ; 3 uses
  %i.dkk = extractelement <3 x float> %i.dkj, i64 1 ; 3 uses
  %12 = load float, ptr %i.cyz, align 8, !tbaa !17, !noalias !144
  %13 = fadd float %12, %i.dkk                    ; 2 uses
  store float %13, ptr %i.cyz, align 8, !tbaa !17, !noalias !144
  %14 = fsub <3 x float> %i.dkd, %i.dcv           ; 3 uses
  %15 = extractelement <3 x float> %14, i64 1     ; 3 uses
  %i.dkl = load float, ptr %i.czb, align 8, !tbaa !17, !noalias !144
  %i.dkm = fadd float %i.dkl, %15                 ; 2 uses
  store float %i.dkm, ptr %i.czb, align 8, !tbaa !17, !noalias !144
  %.val366.i.i = load i32, ptr %i.czs, align 4, !tbaa !43, !noalias !144
  %16 = mul nsw i32 %.val366.i.i, 3
  %17 = sext i32 %16 to i64                       ; 2 uses
  %18 = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %17 ; 2 uses
  %19 = getelementptr i8, ptr %18, i64 8
  %.val365.i.i = load i32, ptr %i.czu, align 4, !tbaa !43, !noalias !144
  %20 = mul nsw i32 %.val365.i.i, 3
  %21 = sext i32 %20 to i64                       ; 2 uses
  %22 = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %21 ; 2 uses
  %23 = getelementptr i8, ptr %22, i64 8
  %.val366.i.i.a = load i32, ptr %i.czw, align 4, !tbaa !43, !noalias !144
  %i.dkn = mul nsw i32 %.val366.i.i.a, 3
  %i.dko = sext i32 %i.dkn to i64                 ; 2 uses
  %i.dkp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dko ; 2 uses
  %24 = load <2 x float>, ptr %i.z, align 8, !tbaa !17, !noalias !144
  %25 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %26 = fadd <2 x float> %24, %25                 ; 2 uses
  store <2 x float> %26, ptr %i.z, align 8, !tbaa !17, !noalias !144
  %27 = load <2 x float>, ptr %i.y, align 8, !tbaa !17, !noalias !144
  %28 = shufflevector <3 x float> %i.dkj, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %29 = fadd <2 x float> %27, %28                 ; 2 uses
  store <2 x float> %29, ptr %i.y, align 8, !tbaa !17, !noalias !144
  %30 = load <2 x float>, ptr %i.x, align 8, !tbaa !17, !noalias !144
  %31 = shufflevector <3 x float> %i.dkf, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %32 = fadd <2 x float> %30, %31                 ; 2 uses
  store <2 x float> %32, ptr %i.x, align 8, !tbaa !17, !noalias !144
  store <2 x float> %32, ptr %18, align 4, !tbaa !17, !noalias !144
  store float %i.dki, ptr %19, align 4, !tbaa !17, !noalias !144
  store <2 x float> %29, ptr %22, align 4, !tbaa !17, !noalias !144
  store float %13, ptr %23, align 4, !tbaa !17, !noalias !144
  store <2 x float> %26, ptr %i.dkp, align 4, !tbaa !17, !noalias !144
  %i.dkq = getelementptr i8, ptr %i.dkp, i64 8
  store float %i.dkm, ptr %i.dkq, align 4, !tbaa !17, !noalias !144
  %i.dkr = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %17 ; 3 uses
  %i.dks = getelementptr i8, ptr %i.dkr, i64 8    ; 2 uses
  %i.dkt = load float, ptr %i.dks, align 4, !tbaa !17, !alias.scope !144
  %i.dku = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %21 ; 3 uses
  %i.dkv = getelementptr i8, ptr %i.dku, i64 8    ; 2 uses
  %i.dkw = load float, ptr %i.dkv, align 4, !tbaa !17, !alias.scope !144
  %i.dkx = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dko ; 3 uses
  %i.dky = getelementptr i8, ptr %i.dkx, i64 8    ; 2 uses
  %i.dkz = load float, ptr %i.dky, align 4, !tbaa !17, !alias.scope !144
  %i.dla = call noundef float @llvm.fmuladd.f32(float %i.dkh, float %6, float %i.dkt)
  %i.dlb = call noundef float @llvm.fmuladd.f32(float %i.dkk, float %6, float %i.dkw)
  %i.dlc = call noundef float @llvm.fmuladd.f32(float %15, float %6, float %i.dkz)
  store float %i.dla, ptr %i.dks, align 4, !tbaa !17, !alias.scope !144
  store float %i.dlb, ptr %i.dkv, align 4, !tbaa !17, !alias.scope !144
  %i.dld = load <2 x float>, ptr %i.dkx, align 4, !tbaa !17, !alias.scope !144
  %i.dle = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %i.czo, <2 x float> %i.dld)
  %i.dlf = load <2 x float>, ptr %i.dku, align 4, !tbaa !17, !alias.scope !144
  %i.dlg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %i.czo, <2 x float> %i.dlf)
  %i.dlh = load <2 x float>, ptr %i.dkr, align 4, !tbaa !17, !alias.scope !144
  %i.dli = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %i.czo, <2 x float> %i.dlh)
  store <2 x float> %i.dli, ptr %i.dkr, align 4, !tbaa !17, !alias.scope !144
  store <2 x float> %i.dlg, ptr %i.dku, align 4, !tbaa !17, !alias.scope !144
  store <2 x float> %i.dle, ptr %i.dkx, align 4, !tbaa !17, !alias.scope !144
  store float %i.dlc, ptr %i.dky, align 4, !tbaa !17, !alias.scope !144
  %i.dlj = load ptr, ptr %i.czh, align 8, !tbaa !54, !noalias !144
  %i.dlk = getelementptr inbounds [4 x i8], ptr %i.dlj, i64 %indvars.iv.i48.i47
  %.val367.i.i = load float, ptr %i.dlk, align 4, !tbaa !17, !noalias !144 ; 2 uses
  %i.dll = fmul float %i.cyh, %.val367.i.i
  %i.dlm = fmul float %i.cyj, %.val367.i.i        ; 3 uses
  %i.dln = fmul float %i.dkk, %i.dlm
  %i.dlo = insertelement <3 x float> poison, float %i.dlm, i64 0
  %i.dlp = shufflevector <3 x float> %i.dlo, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.dlq = fmul <3 x float> %i.dkj, %i.dlp        ; 2 uses
  %i.dlr = fmul float %15, %i.dlm
  %i.dls = fmul <3 x float> %14, %i.dlp           ; 2 uses
  %i.dlt = shufflevector <3 x float> %i.dls, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.dlu = insertelement <3 x float> poison, float %i.dll, i64 0
  %i.dlv = shufflevector <3 x float> %i.dlu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dlw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dlv, <3 x float> %i.dkf, <3 x float> %i.dlq)
  %i.dlx = fadd <3 x float> %i.dls, %i.dlw        ; 2 uses
  %i.dly = shufflevector <3 x float> %i.dlx, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.dlz = load float, ptr %i.cyr, align 8, !tbaa !17, !noalias !144
  %i.dma = load <3 x float>, ptr %i.u, align 16, !tbaa !17, !noalias !144
  %i.dmb = shufflevector <3 x float> %i.dma, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dmc = shufflevector <3 x float> %i.ddb, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dmd = shufflevector <3 x float> %i.dlq, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.dme = fmul <8 x float> %i.dmc, %i.dmd
  %i.dmf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dmb, <8 x float> %i.dly, <8 x float> %i.dme)
  %i.dmg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dcy, <8 x float> %i.dlt, <8 x float> %i.dmf)
  %i.dmh = fsub <8 x float> %i.czq, %i.dmg        ; 2 uses
  %i.dmi = fmul float %i.dex, %i.dln
  %i.dmj = extractelement <3 x float> %i.dlx, i64 1
  %i.dmk = call float @llvm.fmuladd.f32(float %i.dlz, float %i.dmj, float %i.dmi)
  %i.dml = call float @llvm.fmuladd.f32(float %i.dfd, float %i.dlr, float %i.dmk)
  %i.dmm = fsub float %.sroa.27.1.i.i46, %i.dml   ; 2 uses
  %i.dmn = fcmp ole float %i.dgq, f0x2B8CBCCC
  %i.dmo = or i1 %.0352395.i.i, %i.dmn            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18, !noalias !144
  %indvars.iv.next.i51.i = add nsw i64 %indvars.iv.i48.i47, 1 ; 2 uses
  %lftr.wideiv.i52.i = trunc i64 %indvars.iv.next.i51.i to i32
  %exitcond.not.i53.i = icmp eq i32 %i.cjv, %lftr.wideiv.i52.i
  br i1 %exitcond.not.i53.i, label %.preheader372.loopexit.i.i, label %.preheader376.preheader.i.i, !llvm.loop !130

_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i: ; preds = %.preheader372.loopexit.i.i, %bb.n
  %.sroa.27.0.i.i39 = phi float [ %i.dmm, %.preheader372.loopexit.i.i ], [ 0.000000e+00, %bb.n ]
  %.0352.lcssa.i.i = phi i8 [ %i.czp, %.preheader372.loopexit.i.i ], [ 0, %bb.n ]
  %i.dmp = phi <8 x float> [ %i.dmh, %.preheader372.loopexit.i.i ], [ zeroinitializer, %bb.n ]
  %i.dmq = load <8 x float>, ptr %9, align 4, !tbaa !17, !noalias !144
  %i.dmr = fadd <8 x float> %i.dmp, %i.dmq
  store <8 x float> %i.dmr, ptr %9, align 4, !tbaa !17, !noalias !144
  %i.dms = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.dmt = load float, ptr %i.dms, align 4, !tbaa !17, !noalias !144
  %i.dmu = fadd float %.sroa.27.0.i.i39, %i.dmt
  store float %i.dmu, ptr %i.dms, align 4, !tbaa !17, !noalias !144
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

bb.o:                                             ; preds = %bb.k
  %i.dmv = load float, ptr %i.cjx, align 8, !tbaa !13 ; 5 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dmx = load float, ptr %i.dmw, align 4, !tbaa !16 ; 4 uses
  %i.dmy = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dmz = load float, ptr %i.dmy, align 4, !tbaa !22 ; 6 uses
  %i.dna = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dnb = load float, ptr %i.dna, align 8, !tbaa !18 ; 2 uses
  br i1 %8, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dnc = icmp slt i32 %i.cjw, %i.cjv
  br i1 %i.dnc, label %.lr.ph.i54.i, label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

.lr.ph.i54.i:                                     ; preds = %bb.p
  %i.dnd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dne = load float, ptr %i.dnd, align 8, !tbaa !23
  %i.dnf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dng = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dnh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dni = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dnk = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dno = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.dnt = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dny = fmul float %i.dmz, %i.dmz
  %sqrt4.i55.i = call float @llvm.sqrt.f32(float %i.dny)
  %i.dnz = fdiv float 1.000000e+00, %sqrt4.i55.i
  %i.doa = fneg float %i.dmx
  %i.dob = fneg float %i.dne
  %i.doc = sext i32 %i.cjw to i64
  %i.dod = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.doe = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.dof = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dog = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %.preheader5.preheader.i56.i

._crit_edge.loopexit.i66.i:                       ; preds = %.preheader5.preheader.i56.i
  %i.doh = zext i1 %i.dzj to i8
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

.preheader5.preheader.i56.i:                      ; preds = %.preheader5.preheader.i56.i, %.lr.ph.i54.i
  %indvars.iv.i57.i = phi i64 [ %i.doc, %.lr.ph.i54.i ], [ %indvars.iv.next.i63.i, %.preheader5.preheader.i56.i ] ; 4 uses
  %.026414.i.i = phi i1 [ false, %.lr.ph.i54.i ], [ %i.dzj, %.preheader5.preheader.i56.i ]
  %i.doi = load ptr, ptr %i.dnf, align 8, !tbaa !55
  %i.doj = getelementptr inbounds [4 x i8], ptr %i.doi, i64 %indvars.iv.i57.i ; 3 uses
  %i.dok = load ptr, ptr %i.dng, align 8, !tbaa !55
  %i.dol = getelementptr inbounds [4 x i8], ptr %i.dok, i64 %indvars.iv.i57.i ; 3 uses
  %i.dom = load ptr, ptr %i.dnh, align 8, !tbaa !55
  %i.don = getelementptr inbounds [4 x i8], ptr %i.dom, i64 %indvars.iv.i57.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %.val269.i.i = load i32, ptr %i.doj, align 4, !tbaa !43
  %i.doo = mul nsw i32 %.val269.i.i, 3
  %i.dop = sext i32 %i.doo to i64
  %i.doq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dop ; 3 uses
  %i.dor = load float, ptr %i.doq, align 4, !tbaa !17
  store float %i.dor, ptr %i.k, align 4, !tbaa !17
  %i.dos = getelementptr i8, ptr %i.doq, i64 4
  %i.dot = load float, ptr %i.dos, align 4, !tbaa !17
  store float %i.dot, ptr %i.dni, align 4, !tbaa !17
  %i.dou = getelementptr i8, ptr %i.doq, i64 8
  %i.dov = load float, ptr %i.dou, align 4, !tbaa !17
  store float %i.dov, ptr %i.dnj, align 4, !tbaa !17
  %.val268.i.i = load i32, ptr %i.dol, align 4, !tbaa !43
  %i.dow = mul nsw i32 %.val268.i.i, 3
  %i.dox = sext i32 %i.dow to i64
  %i.doy = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dox ; 3 uses
  %i.doz = load float, ptr %i.doy, align 4, !tbaa !17
  store float %i.doz, ptr %i.l, align 4, !tbaa !17
  %i.dpa = getelementptr i8, ptr %i.doy, i64 4
  %i.dpb = load float, ptr %i.dpa, align 4, !tbaa !17
  store float %i.dpb, ptr %i.dnk, align 4, !tbaa !17
  %i.dpc = getelementptr i8, ptr %i.doy, i64 8
  %i.dpd = load float, ptr %i.dpc, align 4, !tbaa !17
  store float %i.dpd, ptr %i.dnl, align 4, !tbaa !17
  %.val267.i.i = load i32, ptr %i.don, align 4, !tbaa !43
  %i.dpe = mul nsw i32 %.val267.i.i, 3
  %i.dpf = sext i32 %i.dpe to i64
  %i.dpg = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dpf ; 3 uses
  %i.dph = load float, ptr %i.dpg, align 4, !tbaa !17
  store float %i.dph, ptr %i.m, align 4, !tbaa !17
  %i.dpi = getelementptr i8, ptr %i.dpg, i64 4
  %i.dpj = load float, ptr %i.dpi, align 4, !tbaa !17
  store float %i.dpj, ptr %i.dnm, align 4, !tbaa !17
  %i.dpk = getelementptr i8, ptr %i.dpg, i64 8
  %i.dpl = load float, ptr %i.dpk, align 4, !tbaa !17
  store float %i.dpl, ptr %i.dnn, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %.val266.i.i = load i32, ptr %i.doj, align 4, !tbaa !43
  %i.dpm = mul nsw i32 %.val266.i.i, 3
  %i.dpn = sext i32 %i.dpm to i64
  %i.dpo = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dpn ; 3 uses
  %i.dpp = load float, ptr %i.dpo, align 4, !tbaa !17
  store float %i.dpp, ptr %i.n, align 4, !tbaa !17
  %i.dpq = getelementptr i8, ptr %i.dpo, i64 4
  %i.dpr = load float, ptr %i.dpq, align 4, !tbaa !17
  store float %i.dpr, ptr %i.dno, align 4, !tbaa !17
  %i.dps = getelementptr i8, ptr %i.dpo, i64 8
  %i.dpt = load float, ptr %i.dps, align 4, !tbaa !17
  store float %i.dpt, ptr %i.dnp, align 4, !tbaa !17
  %.val265.i.i = load i32, ptr %i.dol, align 4, !tbaa !43
  %i.dpu = mul nsw i32 %.val265.i.i, 3
  %i.dpv = sext i32 %i.dpu to i64
  %i.dpw = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dpv ; 3 uses
  %i.dpx = load float, ptr %i.dpw, align 4, !tbaa !17
  store float %i.dpx, ptr %i.o, align 4, !tbaa !17
  %i.dpy = getelementptr i8, ptr %i.dpw, i64 4
  %i.dpz = load float, ptr %i.dpy, align 4, !tbaa !17
  store float %i.dpz, ptr %i.dnq, align 4, !tbaa !17
  %i.dqa = getelementptr i8, ptr %i.dpw, i64 8
  %i.dqb = load float, ptr %i.dqa, align 4, !tbaa !17
  store float %i.dqb, ptr %i.dnr, align 4, !tbaa !17
  %.val.i.i = load i32, ptr %i.don, align 4, !tbaa !43
  %i.dqc = mul nsw i32 %.val.i.i, 3
  %i.dqd = sext i32 %i.dqc to i64
  %i.dqe = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dqd ; 3 uses
  %i.dqf = load float, ptr %i.dqe, align 4, !tbaa !17
  store float %i.dqf, ptr %i.p, align 4, !tbaa !17
  %i.dqg = getelementptr i8, ptr %i.dqe, i64 4
  %i.dqh = load float, ptr %i.dqg, align 4, !tbaa !17
  store float %i.dqh, ptr %i.dns, align 4, !tbaa !17
  %i.dqi = getelementptr i8, ptr %i.dqe, i64 8
  %i.dqj = load float, ptr %i.dqi, align 4, !tbaa !17
  store float %i.dqj, ptr %i.dnt, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.dqk = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef nonnull %i.q) ; 0 uses
  %i.dql = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k, ptr noundef nonnull %i.r) ; 0 uses
  %i.dqm = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.s) ; 0 uses
  %i.dqn = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, ptr noundef nonnull %i.t) ; 0 uses
  %i.dqo = load float, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.dqp = load float, ptr %i.t, align 4, !tbaa !17 ; 2 uses
  %i.dqq = fadd float %i.dqo, %i.dqp
end_hunk_1
begin_hunk_2_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.efk = fneg <3 x float> %i.efi
  %i.efl = shufflevector <3 x float> %i.efk, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.efm = shufflevector <3 x float> %i.eew, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.efn = fmul <2 x float> %i.efm, %i.efl        ; 2 uses
  %i.efo = shufflevector <2 x float> %i.efn, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.efp = extractelement <2 x float> %i.efn, i64 0
  %foldExtExtBinop258 = fmul <3 x float> %i.eew, %i.eew
  %i.efq = extractelement <3 x float> %foldExtExtBinop258, i64 0
  %i.efr = call float @llvm.fmuladd.f32(float %i.efa, float %i.efa, float %i.efq)
  %i.efs = call float @llvm.fmuladd.f32(float %i.eex, float %i.eex, float %i.efr)
  %sqrt.i85.i = call float @llvm.sqrt.f32(float %i.efs)
  %i.eft = fdiv float 1.000000e+00, %sqrt.i85.i   ; 2 uses
  %i.efu = fmul float %i.eex, %i.eft              ; 3 uses
  %i.efv = insertelement <3 x float> poison, float %i.eft, i64 0
  %i.efw = shufflevector <3 x float> %i.efv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.efx = fmul <3 x float> %i.eew, %i.efw        ; 7 uses
  %i.efy = extractelement <3 x float> %i.eer, i64 1 ; 2 uses
  %i.efz = extractelement <3 x float> %i.eer, i64 2 ; 2 uses
  %i.ega = extractelement <3 x float> %i.een, i64 0 ; 2 uses
  %i.egb = extractelement <3 x float> %i.een, i64 2 ; 2 uses
  %i.egc = extractelement <3 x float> %i.eeh, i64 2 ; 3 uses
  %i.egd = extractelement <3 x float> %i.eek, i64 2 ; 3 uses
  %foldExtExtBinop260 = fmul <3 x float> %i.eei, %i.efx
  %i.ege = extractelement <3 x float> %foldExtExtBinop260, i64 0
  %i.egf = extractelement <3 x float> %i.efx, i64 2 ; 3 uses
  %i.egg = call float @llvm.fmuladd.f32(float %i.egf, float %i.eej, float %i.ege)
  %i.egh = call float @llvm.fmuladd.f32(float %i.efu, float %i.egc, float %i.egg) ; 2 uses
  %foldExtExtBinop262 = fmul <3 x float> %i.eel, %i.efx
  %i.egi = extractelement <3 x float> %foldExtExtBinop262, i64 0
  %i.egj = call float @llvm.fmuladd.f32(float %i.egf, float %i.eem, float %i.egi)
  %i.egk = call float @llvm.fmuladd.f32(float %i.efu, float %i.egd, float %i.egj) ; 2 uses
  %shift264 = shufflevector <3 x float> %i.eef, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %foldExtExtBinop265 = fmul <3 x float> %shift264, %i.efx
  %i.egl = extractelement <3 x float> %foldExtExtBinop265, i64 0
  %i.egm = call float @llvm.fmuladd.f32(float %i.egf, float %i.eea, float %i.egl)
  %i.egn = extractelement <3 x float> %i.eef, i64 0
  %i.ego = call float @llvm.fmuladd.f32(float %i.efu, float %i.egn, float %i.egm) ; 2 uses
  %i.egp = fmul float %i.eaw, %i.ego              ; 3 uses
  %i.egq = fmul float %i.egp, %i.egp
  %i.egr = fsub float 1.000000e+00, %i.egq        ; 3 uses
  %i.egs = fcmp olt float %i.egr, f0x2B8CBCCC
  %.sroa.speculated.i.i86.i = select i1 %i.egs, float f0x2B8CBCCC, float %i.egr ; 2 uses
  %i.egt = call noundef float @sqrtf(float noundef %.sroa.speculated.i.i86.i) #18
  %i.egu = fdiv float 1.000000e+00, %i.egt        ; 2 uses
  %i.egv = fmul float %i.egu, %.sroa.speculated.i.i86.i ; 2 uses
  %i.egw = fsub float %i.egh, %i.egk
  %i.egx = fmul float %i.dnb, %i.egw
  %i.egy = fmul float %i.egu, %i.egx              ; 3 uses
  %i.egz = fmul float %i.egy, %i.egy
  %i.eha = fsub float 1.000000e+00, %i.egz        ; 2 uses
  %i.ehb = call noundef float @sqrtf(float noundef %i.eha) #18
  %i.ehc = fdiv float 1.000000e+00, %i.ehb
  %i.ehd = fmul float %i.ehc, %i.eha
  %i.ehe = fmul float %i.dmz, %i.egv              ; 2 uses
  %i.ehf = fmul float %i.ehd, %i.eax              ; 5 uses
  %i.ehg = fmul float %i.egv, %i.eay              ; 2 uses
  %i.ehh = fmul float %i.dmx, %i.egy
  %i.ehi = fmul float %i.egp, %i.ehh              ; 2 uses
  %i.ehj = fsub float %i.ehg, %i.ehi              ; 4 uses
  %i.ehk = fadd float %i.ehi, %i.ehg              ; 4 uses
  %i.ehl = extractelement <3 x float> %i.efi, i64 2
  %i.ehm = fneg float %i.ehl
  %i.ehn = fmul float %i.eey, %i.ehm
  %i.eho = insertelement <3 x float> poison, float %i.ehn, i64 0
  %i.ehp = shufflevector <3 x float> %i.eho, <3 x float> %i.efo, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ehq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efh, <3 x float> %i.efi, <3 x float> %i.ehp) ; 3 uses
  %i.ehr = call float @llvm.fmuladd.f32(float %i.eey, float %i.efj, float %i.efp)
  %i.ehs = shufflevector <3 x float> %i.efi, <3 x float> %i.ehq, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.eht = fmul <2 x float> %i.ehs, %i.ehs
  %i.ehu = shufflevector <3 x float> %i.efi, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ehv = insertelement <2 x float> %i.ehu, float %i.ehr, i64 1 ; 2 uses
  %i.ehw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ehv, <2 x float> %i.ehv, <2 x float> %i.eht)
  %i.ehx = shufflevector <3 x float> %i.efi, <3 x float> %i.ehq, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ehy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ehx, <2 x float> %i.ehx, <2 x float> %i.ehw)
  %i.ehz = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ehy)
  %i.eia = fdiv <2 x float> splat (float 1.000000e+00), %i.ehz ; 3 uses
  %i.eib = shufflevector <2 x float> %i.eia, <2 x float> poison, <3 x i32> zeroinitializer
  %i.eic = fmul <3 x float> %i.efi, %i.eib        ; 7 uses
  %i.eid = fmul <2 x float> %i.ehx, %i.eia        ; 3 uses
  %i.eie = shufflevector <3 x float> %i.ehq, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.eif = shufflevector <2 x float> %i.eia, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.eig = fmul <3 x float> %i.eie, %i.eif        ; 6 uses
  %i.eih = extractelement <3 x float> %i.eic, i64 0 ; 2 uses
  %i.eii = fmul float %i.efy, %i.eih
  %i.eij = extractelement <3 x float> %i.eic, i64 2 ; 4 uses
  %i.eik = call float @llvm.fmuladd.f32(float %i.eij, float %i.eeq, float %i.eii)
  %i.eil = fmul float %i.eep, %i.eih
  %i.eim = call float @llvm.fmuladd.f32(float %i.eij, float %i.ega, float %i.eil)
  %i.ein = extractelement <2 x float> %i.eid, i64 0 ; 3 uses
  %i.eio = call float @llvm.fmuladd.f32(float %i.ein, float %i.egb, float %i.eim) ; 3 uses
  %i.eip = extractelement <3 x float> %i.eig, i64 0 ; 3 uses
  %i.eiq = fmul float %i.efy, %i.eip
  %i.eir = extractelement <3 x float> %i.eig, i64 2 ; 5 uses
  %i.eis = call float @llvm.fmuladd.f32(float %i.eir, float %i.eeq, float %i.eiq)
  %i.eit = extractelement <2 x float> %i.eid, i64 1 ; 4 uses
  %i.eiu = call float @llvm.fmuladd.f32(float %i.eit, float %i.efz, float %i.eis) ; 3 uses
  %i.eiv = fmul float %i.eep, %i.eip
  %i.eiw = call float @llvm.fmuladd.f32(float %i.eir, float %i.ega, float %i.eiv)
  %i.eix = shufflevector <3 x float> %i.eer, <3 x float> %i.een, <2 x i32> <i32 2, i32 5>
  %i.eiy = insertelement <2 x float> poison, float %i.eik, i64 0
  %i.eiz = insertelement <2 x float> %i.eiy, float %i.eiw, i64 1
  %i.eja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eid, <2 x float> %i.eix, <2 x float> %i.eiz) ; 3 uses
  %foldExtExtBinop267 = fmul <3 x float> %i.eei, %i.eic
  %i.ejb = extractelement <3 x float> %foldExtExtBinop267, i64 0
  %i.ejc = call float @llvm.fmuladd.f32(float %i.eij, float %i.eej, float %i.ejb)
  %i.ejd = call float @llvm.fmuladd.f32(float %i.ein, float %i.egc, float %i.ejc)
  %foldExtExtBinop269 = fmul <3 x float> %i.eel, %i.eic
  %i.eje = extractelement <3 x float> %foldExtExtBinop269, i64 0
  %i.ejf = call float @llvm.fmuladd.f32(float %i.eij, float %i.eem, float %i.eje)
  %i.ejg = call float @llvm.fmuladd.f32(float %i.ein, float %i.egd, float %i.ejf)
  %foldExtExtBinop271 = fmul <3 x float> %i.eei, %i.eig
  %i.ejh = extractelement <3 x float> %foldExtExtBinop271, i64 0
  %i.eji = call float @llvm.fmuladd.f32(float %i.eir, float %i.eej, float %i.ejh)
  %i.ejj = call float @llvm.fmuladd.f32(float %i.eit, float %i.egc, float %i.eji)
  %foldExtExtBinop273 = fmul <3 x float> %i.eel, %i.eig
  %i.ejk = extractelement <3 x float> %foldExtExtBinop273, i64 0
  %i.ejl = call float @llvm.fmuladd.f32(float %i.eir, float %i.eem, float %i.ejk)
  %i.ejm = call float @llvm.fmuladd.f32(float %i.eit, float %i.egd, float %i.ejl)
  %i.ejn = fmul float %i.eiu, %i.ehj
  %i.ejo = insertelement <2 x float> poison, float %i.eio, i64 0
  %i.ejp = insertelement <2 x float> %i.ejo, float %i.eiu, i64 1
  %i.ejq = fsub <2 x float> %i.eja, %i.ejp        ; 2 uses
  %i.ejr = extractelement <2 x float> %i.ejq, i64 0
  %i.ejs = call float @llvm.fmuladd.f32(float %i.ehf, float %i.ejr, float %i.ejn)
  %i.ejt = extractelement <2 x float> %i.eja, i64 1 ; 2 uses
  %i.eju = call float @llvm.fmuladd.f32(float %i.ejt, float %i.ehk, float %i.ejs) ; 3 uses
  %i.ejv = extractelement <2 x float> %i.eja, i64 0 ; 2 uses
  %i.ejw = fmul float %i.ejv, %i.ehj
  %i.ejx = extractelement <2 x float> %i.ejq, i64 1
  %i.ejy = call float @llvm.fmuladd.f32(float %i.ehf, float %i.ejx, float %i.ejw)
  %i.ejz = call float @llvm.fmuladd.f32(float %i.eio, float %i.ehk, float %i.ejy) ; 3 uses
  %i.eka = fneg float %i.eiu
  %i.ekb = fmul float %i.ejd, %i.eka
  %i.ekc = call float @llvm.fmuladd.f32(float %i.ejv, float %i.ejj, float %i.ekb)
  %i.ekd = call float @llvm.fmuladd.f32(float %i.eio, float %i.ejm, float %i.ekc)
  %i.eke = fneg float %i.ejg
  %i.ekf = call float @llvm.fmuladd.f32(float %i.eke, float %i.ejt, float %i.ekd) ; 3 uses
  %i.ekg = fmul float %i.ejz, %i.ejz
  %i.ekh = call float @llvm.fmuladd.f32(float %i.eju, float %i.eju, float %i.ekg) ; 3 uses
  %i.eki = fneg float %i.ekf
  %i.ekj = call float @llvm.fmuladd.f32(float %i.eki, float %i.ekf, float %i.ekh) ; 2 uses
  %i.ekk = fmul float %i.ejz, %i.ekj
  %i.ekl = call noundef float @sqrtf(float noundef %i.ekj) #18
  %i.ekm = fdiv float -1.000000e+00, %i.ekl
  %i.ekn = fmul float %i.ekm, %i.ekk
  %i.eko = call float @llvm.fmuladd.f32(float %i.eju, float %i.ekf, float %i.ekn)
  %i.ekp = fmul float %i.ekh, %i.ekh
  %sqrt3.i87.i = call float @llvm.sqrt.f32(float %i.ekp)
  %i.ekq = fdiv float 1.000000e+00, %sqrt3.i87.i
  %i.ekr = fmul float %i.ekq, %i.eko              ; 6 uses
  %i.eks = fmul float %i.ekr, %i.ekr
  %i.ekt = fsub float 1.000000e+00, %i.eks        ; 2 uses
  %i.eku = call noundef float @sqrtf(float noundef %i.ekt) #18
  %i.ekv = fdiv float 1.000000e+00, %i.eku
  %i.ekw = fmul float %i.ekv, %i.ekt              ; 5 uses
  %i.ekx = fneg float %i.ehe
  %i.eky = fmul float %i.ekr, %i.ekx
  %i.ekz = fmul float %i.ehe, %i.ekw
  %i.ela = fneg float %i.ekr                      ; 2 uses
  %i.elb = fmul float %i.ehj, %i.ela
  %i.elc = call float @llvm.fmuladd.f32(float %i.ehf, float %i.ekw, float %i.elb)
  %i.eld = fmul float %i.ehj, %i.ekw
  %i.ele = call float @llvm.fmuladd.f32(float %i.ehf, float %i.ekr, float %i.eld) ; 3 uses
  %i.elf = fneg float %i.ehf                      ; 2 uses
  %i.elg = fmul float %i.ehk, %i.ela
  %i.elh = call float @llvm.fmuladd.f32(float %i.elf, float %i.ekw, float %i.elg)
  %i.eli = fmul float %i.ehk, %i.ekw
  %i.elj = call float @llvm.fmuladd.f32(float %i.elf, float %i.ekr, float %i.eli)
  %i.elk = insertelement <3 x float> poison, float %i.ekz, i64 0
  %i.ell = shufflevector <3 x float> %i.elk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.elm = fmul <3 x float> %i.eig, %i.ell
  %i.eln = insertelement <3 x float> poison, float %i.eky, i64 0
  %i.elo = shufflevector <3 x float> %i.eln, <3 x float> poison, <3 x i32> zeroinitializer
  %i.elp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eic, <3 x float> %i.elo, <3 x float> %i.elm)
  %i.elq = insertelement <3 x float> poison, float %i.ego, i64 0
  %i.elr = shufflevector <3 x float> %i.elq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.els = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efx, <3 x float> %i.elr, <3 x float> %i.elp)
  %i.elt = fmul float %i.eir, %i.ele
  %i.elu = fmul float %i.eip, %i.ele
  %i.elv = fmul float %i.eit, %i.ele
  %i.elw = insertelement <3 x float> poison, float %i.elc, i64 0
  %i.elx = shufflevector <3 x float> %i.elw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ely = insertelement <3 x float> poison, float %i.elu, i64 0
  %i.elz = insertelement <3 x float> %i.ely, float %i.elv, i64 1
  %i.ema = insertelement <3 x float> %i.elz, float %i.elt, i64 2
  %i.emb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eic, <3 x float> %i.elx, <3 x float> %i.ema)
  %i.emc = insertelement <3 x float> poison, float %i.egh, i64 0
  %i.emd = shufflevector <3 x float> %i.emc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eme = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efx, <3 x float> %i.emd, <3 x float> %i.emb)
  %i.emf = insertelement <3 x float> poison, float %i.elj, i64 0
  %i.emg = shufflevector <3 x float> %i.emf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.emh = fmul <3 x float> %i.eig, %i.emg
  %i.emi = insertelement <3 x float> poison, float %i.elh, i64 0
  %i.emj = shufflevector <3 x float> %i.emi, <3 x float> poison, <3 x i32> zeroinitializer
  %i.emk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eic, <3 x float> %i.emj, <3 x float> %i.emh)
  %i.eml = insertelement <3 x float> poison, float %i.egk, i64 0
  %i.emm = shufflevector <3 x float> %i.eml, <3 x float> poison, <3 x i32> zeroinitializer
  %i.emn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efx, <3 x float> %i.emm, <3 x float> %i.emk)
  %i.emo = shufflevector <3 x float> %i.eef, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.emp = fsub <3 x float> %i.els, %i.emo        ; 3 uses
  %i.emq = load float, ptr %i.eap, align 8, !tbaa !17
  %i.emr = extractelement <3 x float> %i.emp, i64 1
  %i.ems = fadd float %i.emq, %i.emr              ; 2 uses
  store float %i.ems, ptr %i.eap, align 8, !tbaa !17
  %i.emt = fsub <3 x float> %i.eme, %i.eei        ; 3 uses
  %i.emu = extractelement <3 x float> %i.emt, i64 1 ; 2 uses
  %33 = load float, ptr %i.ear, align 8, !tbaa !17
  %34 = fadd float %33, %i.emu                    ; 2 uses
  store float %34, ptr %i.ear, align 8, !tbaa !17
  %35 = fsub <3 x float> %i.emn, %i.eel           ; 3 uses
  %36 = extractelement <3 x float> %35, i64 1     ; 2 uses
  %i.emv = load float, ptr %i.eat, align 8, !tbaa !17
  %i.emw = fadd float %i.emv, %36                 ; 2 uses
  store float %i.emw, ptr %i.eat, align 8, !tbaa !17
  %.val327.i.i = load i32, ptr %i.ebi, align 4, !tbaa !43
  %37 = mul nsw i32 %.val327.i.i, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %38 ; 2 uses
  %40 = getelementptr i8, ptr %39, i64 8
  %.val326.i.i = load i32, ptr %i.ebk, align 4, !tbaa !43
  %41 = mul nsw i32 %.val326.i.i, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %42 ; 2 uses
  %44 = getelementptr i8, ptr %43, i64 8
  %.val327.i.i.a = load i32, ptr %i.ebm, align 4, !tbaa !43
  %i.emx = mul nsw i32 %.val327.i.i.a, 3
  %i.emy = sext i32 %i.emx to i64
  %i.emz = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.emy ; 2 uses
  %45 = load <2 x float>, ptr %i.f, align 8, !tbaa !17
  %46 = shufflevector <3 x float> %35, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %47 = fadd <2 x float> %45, %46                 ; 2 uses
  store <2 x float> %47, ptr %i.f, align 8, !tbaa !17
  %48 = load <2 x float>, ptr %i.e, align 8, !tbaa !17
  %49 = shufflevector <3 x float> %i.emt, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %50 = fadd <2 x float> %48, %49                 ; 2 uses
  store <2 x float> %50, ptr %i.e, align 8, !tbaa !17
  %51 = load <2 x float>, ptr %i.d, align 8, !tbaa !17
  %52 = shufflevector <3 x float> %i.emp, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %53 = fadd <2 x float> %51, %52                 ; 2 uses
  store <2 x float> %53, ptr %i.d, align 8, !tbaa !17
  store <2 x float> %53, ptr %39, align 4, !tbaa !17
  store float %i.ems, ptr %40, align 4, !tbaa !17
  store <2 x float> %50, ptr %43, align 4, !tbaa !17
  store float %34, ptr %44, align 4, !tbaa !17
  store <2 x float> %47, ptr %i.emz, align 4, !tbaa !17
  %i.ena = getelementptr i8, ptr %i.emz, i64 8
  store float %i.emw, ptr %i.ena, align 4, !tbaa !17
  %i.enb = load ptr, ptr %i.eaz, align 8, !tbaa !54
  %i.enc = getelementptr inbounds [4 x i8], ptr %i.enb, i64 %indvars.iv.i81.i
  %.val328.i.i = load float, ptr %i.enc, align 4, !tbaa !17 ; 2 uses
  %i.end = fmul float %i.dzz, %.val328.i.i
  %i.ene = fmul float %i.eab, %.val328.i.i        ; 3 uses
  %i.enf = fmul float %i.ene, %i.emu
  %i.eng = insertelement <3 x float> poison, float %i.ene, i64 0
  %i.enh = shufflevector <3 x float> %i.eng, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.eni = fmul <3 x float> %i.enh, %i.emt        ; 2 uses
  %i.enj = fmul float %i.ene, %36
  %i.enk = fmul <3 x float> %i.enh, %35           ; 2 uses
  %i.enl = shufflevector <3 x float> %i.enk, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.enm = insertelement <3 x float> poison, float %i.end, i64 0
  %i.enn = shufflevector <3 x float> %i.enm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eno = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.enn, <3 x float> %i.emp, <3 x float> %i.eni)
  %i.enp = fadd <3 x float> %i.enk, %i.eno        ; 2 uses
  %i.enq = shufflevector <3 x float> %i.enp, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.enr = load float, ptr %i.eaj, align 8, !tbaa !17
  %i.ens = load <3 x float>, ptr %i.a, align 16, !tbaa !17
  %i.ent = shufflevector <3 x float> %i.ens, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.enu = shufflevector <3 x float> %i.eer, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.env = shufflevector <3 x float> %i.eni, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.enw = fmul <8 x float> %i.enu, %i.env
  %i.enx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ent, <8 x float> %i.enq, <8 x float> %i.enw)
  %i.eny = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.eeo, <8 x float> %i.enl, <8 x float> %i.enx)
  %i.enz = fsub <8 x float> %i.ebg, %i.eny        ; 2 uses
  %i.eoa = fmul float %i.efz, %i.enf
  %i.eob = extractelement <3 x float> %i.enp, i64 1
  %i.eoc = call float @llvm.fmuladd.f32(float %i.enr, float %i.eob, float %i.eoa)
  %i.eod = call float @llvm.fmuladd.f32(float %i.egb, float %i.enj, float %i.eoc)
  %i.eoe = fsub float %.sroa.27.1.i80.i, %i.eod   ; 2 uses
  %i.eof = fcmp ole float %i.egr, f0x2B8CBCCC
  %i.eog = or i1 %.031923.i.i, %i.eof             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next.i88.i = add nsw i64 %indvars.iv.i81.i, 1 ; 2 uses
  %lftr.wideiv.i89.i = trunc i64 %indvars.iv.next.i88.i to i32
  %exitcond.not.i90.i = icmp eq i32 %i.cjv, %lftr.wideiv.i89.i
  br i1 %exitcond.not.i90.i, label %.preheader5.loopexit.i.i, label %.preheader6.preheader.i.i, !llvm.loop !132

_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i: ; preds = %.preheader5.loopexit.i.i, %bb.q
  %.sroa.27.0.i72.i48 = phi float [ %i.eoe, %.preheader5.loopexit.i.i ], [ 0.000000e+00, %bb.q ]
  %.0319.lcssa.i.i = phi i8 [ %i.ebf, %.preheader5.loopexit.i.i ], [ 0, %bb.q ]
  %i.eoh = phi <8 x float> [ %i.enz, %.preheader5.loopexit.i.i ], [ zeroinitializer, %bb.q ]
  %i.eoi = load <8 x float>, ptr %9, align 4, !tbaa !17
  %i.eoj = fadd <8 x float> %i.eoh, %i.eoi
  store <8 x float> %i.eoj, ptr %9, align 4, !tbaa !17
  %i.eok = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.eol = load float, ptr %i.eok, align 4, !tbaa !17
  %i.eom = fadd float %.sroa.27.0.i72.i48, %i.eol
  store float %i.eom, ptr %i.eok, align 4, !tbaa !17
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit: ; preds = %bb.m, %._crit_edge.loopexit.i.i33, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i, %bb.p, %._crit_edge.loopexit.i66.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i
  %.0264.lcssa.i.sink.i = phi i8 [ %i.clk, %._crit_edge.loopexit.i.i33 ], [ %.0319.lcssa.i.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i ], [ %.0352.lcssa.i.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ %i.doh, %._crit_edge.loopexit.i66.i ]
  store i8 %.0264.lcssa.i.sink.i, ptr %10, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit, %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit
  ret void
}

declare void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #17

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dps.512(ptr, <16 x i1>, <16 x i32>, <16 x float>, i32 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x float> @llvm.masked.load.v7f32.p0(ptr captures(none), <7 x i1>, <7 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"_ZTSN3gmx16SettleParametersE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !9, i64 4}
!13 = !{!10, !9, i64 8}
!14 = !{!10, !9, i64 12}
!15 = !{!10, !9, i64 16}
!16 = !{!10, !9, i64 28}
!17 = !{!9, !9, i64 0}
!18 = !{!10, !9, i64 32}
!19 = !{!10, !9, i64 36}
!20 = !{!10, !9, i64 40}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!10, !9, i64 20}
!23 = !{!10, !9, i64 24}
!24 = !{!"p1 int", !21, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !27, i64 0}
!29 = !{!"p1 float", !21, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !32, i64 0}
!34 = !{!"bool", !5, i64 0}
!35 = !{!"_ZTSN3gmx10SettleDataE", !10, i64 0, !10, i64 88, !6, i64 176, !28, i64 184, !28, i64 208, !28, i64 232, !33, i64 256, !34, i64 280}
!36 = !{!35, !34, i64 280}
!37 = !{!"p1 omnipotent char", !21, i64 0}
!38 = !{!"_ZTS22t_interaction_function", !37, i64 0, !37, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
end_hunk_2
