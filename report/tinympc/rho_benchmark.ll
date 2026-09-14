Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rho_benchmark?download=true
inline.NumInlined: 3320
inline.NumDeleted: 1437
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_Z15format_matricesP10RhoAdapterRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_S5_S5_S5_P9TinyCacheP13TinyWorkspacei:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %i.md, ptr %21, align 8, !tbaa !41
  store i64 %i.mc, ptr %i.je, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %21, ptr %22, align 8, !tbaa !189
  store ptr %20, ptr %i.jf, align 8, !tbaa !54
  store ptr %23, ptr %i.jg, align 8, !tbaa !45
  store ptr %64, ptr %i.jh, align 8, !tbaa !191
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit260.peel, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit266.peel
  %i.mg = icmp slt i32 %i.lj, %i.bb
  br i1 %i.mg, label %bb.v, label %.lr.ph439

bb.v:                                             ; preds = %bb.u
  %i.mh = add nsw i32 %i.lk, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store ptr %i.ji, ptr %67, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.mi = sext i32 %i.mh to i64                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  br i1 %i.jj, label %._crit_edge.i.i.i.i269.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mj = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !208 ; 2 uses
  %i.mk = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !208 ; 2 uses
  %i.ml = mul nsw i64 %i.mk, %i.mi
  %.not.i.i.i.i.i268.peel = icmp eq ptr %i.mj, null
  %i.mm = getelementptr [8 x i8], ptr %i.mj, i64 %i.mi
  %i.mn = getelementptr [8 x i8], ptr %i.mm, i64 %i.ml
  %i.mo = select i1 %.not.i.i.i.i.i268.peel, ptr null, ptr %i.mn
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel

._crit_edge.i.i.i.i269.peel:                      ; preds = %bb.v
  %.pre.i.i.i.i271.peel = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !208
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel: ; preds = %._crit_edge.i.i.i.i269.peel, %bb.w
  %i.mp = phi i64 [ %i.mk, %bb.w ], [ %.pre.i.i.i.i271.peel, %._crit_edge.i.i.i.i269.peel ]
  %i.mq = phi ptr [ %i.mo, %bb.w ], [ null, %._crit_edge.i.i.i.i269.peel ]
  store ptr %i.mq, ptr %68, align 8, !tbaa !31, !alias.scope !208
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !32, !alias.scope !208
  store i64 %i.jk, ptr %i.jm, align 8, !tbaa !32, !alias.scope !208
  store ptr %i.ie, ptr %i.jn, align 8, !tbaa !34, !alias.scope !208
  store i64 %i.mi, ptr %i.jo, align 8, !tbaa !32, !alias.scope !208
  store i64 %i.mi, ptr %i.jp, align 8, !tbaa !32, !alias.scope !208
  store i64 %i.mp, ptr %i.jq, align 8, !tbaa !188, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %68, ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %.lr.ph439

.lr.ph439:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272.peel, %bb.u
  %i.mr = sext i32 %i.k to i64                    ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 1128
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.my = icmp eq i32 %i.k, 0
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %71, i64 24
  %i.nc = getelementptr inbounds nuw i8, ptr %71, i64 32
  %i.nd = getelementptr inbounds nuw i8, ptr %71, i64 40
  %i.ne = getelementptr inbounds nuw i8, ptr %71, i64 48
  %i.nf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nk = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.nl = sext i32 %i.m to i64                    ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %8, i64 1144
  %i.nr = icmp eq i32 %i.m, 0
  %i.ns = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.nv = getelementptr inbounds nuw i8, ptr %74, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %74, i64 40
  %i.nx = getelementptr inbounds nuw i8, ptr %74, i64 48
  %i.ny = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.oe = zext nneg i32 %i.bb to i64
  %wide.trip.count457 = zext nneg i32 %9 to i64
  br label %bb.ad

bb.x:                                             ; preds = %bb.ac, %.lr.ph436.split
  %.0167435 = phi i32 [ 0, %.lr.ph436.split ], [ %i.pa, %bb.ac ] ; 3 uses
  %.2173434 = phi i32 [ 0, %.lr.ph436.split ], [ %.3174, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store ptr %i.im, ptr %65, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  %i.of = sext i32 %.2173434 to i64               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  br i1 %i.in, label %._crit_edge.i.i.i.i263, label %bb.y

._crit_edge.i.i.i.i263:                           ; preds = %bb.x
  %.pre.i.i.i.i265 = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !209
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.og = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !209 ; 2 uses
  %i.oh = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !209 ; 2 uses
  %i.oi = mul nsw i64 %i.oh, %i.of
  %.not.i.i.i.i.i262 = icmp eq ptr %i.og, null
  %i.oj = getelementptr [8 x i8], ptr %i.og, i64 %i.of
  %i.ok = getelementptr [8 x i8], ptr %i.oj, i64 %i.oi
  %i.ol = select i1 %.not.i.i.i.i.i262, ptr null, ptr %i.ok
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i263
  %i.om = phi i64 [ %i.oh, %bb.y ], [ %.pre.i.i.i.i265, %._crit_edge.i.i.i.i263 ]
  %i.on = phi ptr [ %i.ol, %bb.y ], [ null, %._crit_edge.i.i.i.i263 ]
  store ptr %i.on, ptr %66, align 8, !tbaa !31, !alias.scope !209
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !32, !alias.scope !209
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !32, !alias.scope !209
  store ptr %i.ie, ptr %i.ir, align 8, !tbaa !34, !alias.scope !209
  store i64 %i.of, ptr %i.is, align 8, !tbaa !32, !alias.scope !209
  store i64 %i.of, ptr %i.it, align 8, !tbaa !32, !alias.scope !209
  store i64 %i.om, ptr %i.iu, align 8, !tbaa !188, !alias.scope !209
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %66, ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 1 dereferenceable(1) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.oo = add nsw i32 %.2173434, %i.k             ; 3 uses
  %i.op = icmp slt i32 %.0167435, %i.bb
  br i1 %i.op, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store ptr %i.ji, ptr %67, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.oq = sext i32 %i.oo to i64                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  br i1 %i.jj, label %._crit_edge.i.i.i.i269, label %bb.ab

._crit_edge.i.i.i.i269:                           ; preds = %bb.aa
  %.pre.i.i.i.i271 = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !210
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272

bb.ab:                                            ; preds = %bb.aa
  %i.or = load ptr, ptr %i.ie, align 8, !tbaa !17, !noalias !210 ; 2 uses
  %i.os = load i64, ptr %i.if, align 8, !tbaa !13, !noalias !210 ; 2 uses
  %i.ot = mul nsw i64 %i.os, %i.oq
  %.not.i.i.i.i.i268 = icmp eq ptr %i.or, null
  %i.ou = getelementptr [8 x i8], ptr %i.or, i64 %i.oq
  %i.ov = getelementptr [8 x i8], ptr %i.ou, i64 %i.ot
  %i.ow = select i1 %.not.i.i.i.i.i268, ptr null, ptr %i.ov
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272: ; preds = %._crit_edge.i.i.i.i269, %bb.ab
  %i.ox = phi i64 [ %i.os, %bb.ab ], [ %.pre.i.i.i.i271, %._crit_edge.i.i.i.i269 ]
  %i.oy = phi ptr [ %i.ow, %bb.ab ], [ null, %._crit_edge.i.i.i.i269 ]
  store ptr %i.oy, ptr %68, align 8, !tbaa !31, !alias.scope !210
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !32, !alias.scope !210
  store i64 %i.jk, ptr %i.jm, align 8, !tbaa !32, !alias.scope !210
  store ptr %i.ie, ptr %i.jn, align 8, !tbaa !34, !alias.scope !210
  store i64 %i.oq, ptr %i.jo, align 8, !tbaa !32, !alias.scope !210
  store i64 %i.oq, ptr %i.jp, align 8, !tbaa !32, !alias.scope !210
  store i64 %i.ox, ptr %i.jq, align 8, !tbaa !188, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN5Eigen8internal10AssignmentINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_15DiagonalWrapperIKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS5_RKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %68, ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  %i.oz = add nsw i32 %i.oo, %i.m
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272
  %.3174 = phi i32 [ %i.oz, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_.exit272 ], [ %i.oo, %bb.z ] ; 2 uses
  %i.pa = add nuw nsw i32 %.0167435, 1            ; 2 uses
  %exitcond452.not = icmp eq i32 %.0167435, %i.jr
  br i1 %exitcond452.not, label %.preheader.loopexit.peel.begin, label %bb.x, !llvm.loop !157

._crit_edge440:                                   ; preds = %bb.au, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  ret void

bb.ad:                                            ; preds = %.lr.ph439, %bb.au
  %indvars.iv454 = phi i64 [ 0, %.lr.ph439 ], [ %indvars.iv.next455, %bb.au ] ; 6 uses
  %.4175437 = phi i32 [ 0, %.lr.ph439 ], [ %.5176, %bb.au ] ; 2 uses
  %i.pb = shl nuw nsw i64 %indvars.iv454, 3
  %i.pc = shl nuw nsw i64 %indvars.iv454, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  store i64 %i.mr, ptr %70, align 8, !tbaa !32, !alias.scope !212
  store i64 1, ptr %i.ms, align 8, !tbaa !32, !alias.scope !212
  store double 0.000000e+00, ptr %i.mt, align 8, !tbaa !56, !alias.scope !212
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 1 dereferenceable(1) %70)
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  %i.pd = load ptr, ptr %1, align 8, !tbaa !17, !noalias !213 ; 2 uses
  %i.pe = ptrtoaddr ptr %i.pd to i64
  %i.pf = load i64, ptr %i.mu, align 8, !tbaa !13, !noalias !213 ; 2 uses
  %i.pg = mul nsw i64 %i.pf, %indvars.iv454
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pd, i64 %i.pg ; 7 uses
  %i.pi = load i64, ptr %i.mv, align 8, !tbaa !13 ; 12 uses
  %i.pj = icmp sgt i64 %i.pi, 0
  br i1 %i.pj, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.pk = icmp samesign ugt i64 %i.pi, 2305843009213693951
  br i1 %i.pk, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310: ; preds = %bb.ae
  %i.pl = shl nuw i64 %i.pi, 3
  %i.pm = call noalias ptr @malloc(i64 noundef %i.pl) #24 ; 4 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %.invoke, label %bb.af

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310, %bb.ae
  %i.po = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.po, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.po, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.ag

.cont:                                            ; preds = %.invoke
  unreachable

.thread:                                          ; preds = %bb.ad
  %i.pp = load ptr, ptr %69, align 8, !tbaa !17
  %.nonneg = sub i64 0, %i.pi
  %i.pq = and i64 %.nonneg, -2
  %i.pr = sub i64 0, %i.pq
  br label %._crit_edge.i.i.i.i.i.i.i

bb.af:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i310
  %i.ps = load ptr, ptr %69, align 8, !tbaa !17   ; 3 uses
  %i.pt = and i64 %i.pi, 2305843009213693950      ; 3 uses
  %.not511 = icmp eq i64 %i.pi, 1
  br i1 %.not511, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.thread, %bb.af
  %i.pu = phi i64 [ %i.pr, %.thread ], [ %i.pt, %bb.af ], [ %i.pt, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %i.pv = phi ptr [ %i.pp, %.thread ], [ %i.ps, %bb.af ], [ %i.ps, %.lr.ph.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.0464.0494 = phi ptr [ null, %.thread ], [ %i.pm, %bb.af ], [ %i.pm, %.lr.ph.i.i.i.i.i.i.i ] ; 10 uses
  %.sroa.0464.0494553 = ptrtoaddr ptr %.sroa.0464.0494 to i64 ; 2 uses
  %i.pw = ptrtoaddr ptr %i.pv to i64
  %i.px = icmp slt i64 %i.pu, %i.pi
  br i1 %i.px, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit425

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.py = sub i64 %i.pi, %i.pu                    ; 3 uses
  %min.iters.check558 = icmp ult i64 %i.py, 8
  br i1 %min.iters.check558, label %.lr.ph.i.i.i.i.i.i.i.i.preheader574, label %vector.memcheck552

vector.memcheck552:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.pz = mul i64 %i.pf, %i.pb
  %i.qa = add i64 %i.pz, %i.pe
  %i.qb = sub i64 %i.qa, %.sroa.0464.0494553
  %diff.check554 = icmp ugt i64 %i.qb, -32
  %i.qc = sub i64 %i.pw, %.sroa.0464.0494553
  %diff.check555 = icmp ugt i64 %i.qc, -32
  %conflict.rdx556 = or i1 %diff.check554, %diff.check555
  br i1 %conflict.rdx556, label %.lr.ph.i.i.i.i.i.i.i.i.preheader574, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck552
  %n.vec560 = and i64 %i.py, -4                   ; 3 uses
  %i.qd = add i64 %i.pu, %n.vec560
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next567, %vector.body561 ] ; 2 uses
  %i.qe = add i64 %i.pu, %index562                ; 3 uses
  %i.qf = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.qe ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %wide.load563 = load <2 x double>, ptr %i.qg, align 8, !tbaa !19
  %wide.load564 = load <2 x double>, ptr %i.qh, align 8, !tbaa !19
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.qe ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %wide.load565 = load <2 x double>, ptr %i.qi, align 8, !tbaa !19
  %wide.load566 = load <2 x double>, ptr %i.qj, align 8, !tbaa !19
  %i.qk = fsub <2 x double> %wide.load563, %wide.load565
  %i.ql = fsub <2 x double> %wide.load564, %wide.load566
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store <2 x double> %i.qk, ptr %i.qf, align 8, !tbaa !19
  store <2 x double> %i.ql, ptr %i.qm, align 8, !tbaa !19
  %index.next567 = add nuw i64 %index562, 4       ; 2 uses
  %i.qn = icmp eq i64 %index.next567, %n.vec560
  br i1 %i.qn, label %middle.block568, label %vector.body561, !llvm.loop !166

middle.block568:                                  ; preds = %vector.body561
  %cmp.n569 = icmp eq i64 %i.py, %n.vec560
  br i1 %cmp.n569, label %.loopexit425, label %.lr.ph.i.i.i.i.i.i.i.i.preheader574

.lr.ph.i.i.i.i.i.i.i.i.preheader574:              ; preds = %vector.memcheck552, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block568
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.pu, %vector.memcheck552 ], [ %i.pu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.qd, %middle.block568 ] ; 4 uses
  %i.qo = sub i64 %i.pi, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.qo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader574, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.qv, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader574 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader574 ]
  %i.qp = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !19
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !19
  %i.qu = fsub double %i.qr, %i.qt
  store double %i.qu, ptr %i.qp, align 8, !tbaa !19
  %i.qv = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !167

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader574
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader574 ], [ %i.qv, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.qw = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.pi
  %i.qx = icmp ugt i64 %i.qw, -4
  br i1 %i.qx, label %.loopexit425, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.rz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.qy = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %.05.i.i.i.i.i.i.i.i
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %.05.i.i.i.i.i.i.i.i
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !19
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %.05.i.i.i.i.i.i.i.i
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !19
  %i.rd = fsub double %i.ra, %i.rc
  store double %i.rd, ptr %i.qy, align 8, !tbaa !19
  %i.re = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 3 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.re
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.re
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !19
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.re
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !19
  %i.rk = fsub double %i.rh, %i.rj
  store double %i.rk, ptr %i.rf, align 8, !tbaa !19
  %i.rl = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 3 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.rl
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.rl
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !19
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.rl
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !19
  %i.rr = fsub double %i.ro, %i.rq
  store double %i.rr, ptr %i.rm, align 8, !tbaa !19
  %i.rs = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 3 uses
  %i.rt = getelementptr inbounds [8 x i8], ptr %.sroa.0464.0494, i64 %i.rs
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.rs
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !19
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.rs
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !19
  %i.ry = fsub double %i.rv, %i.rx
  store double %i.ry, ptr %i.rt, align 8, !tbaa !19
  %i.rz = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.rz, %i.pi
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit425, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !168

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.sg, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.af ] ; 4 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %.011.i.i.i.i.i.i.i
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %.011.i.i.i.i.i.i.i
  %i.sc = load <2 x double>, ptr %i.sb, align 1, !tbaa !58
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %.011.i.i.i.i.i.i.i
  %i.se = load <2 x double>, ptr %i.sd, align 1, !tbaa !58
  %i.sf = fsub <2 x double> %i.sc, %i.se
  store <2 x double> %i.sf, ptr %i.sa, align 16, !tbaa !58
  %i.sg = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.sh = icmp samesign ult i64 %i.sg, %i.pt
  br i1 %i.sh, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !169

bb.ag:                                            ; preds = %.invoke
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit425:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block568, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  %i.sj = sext i32 %.4175437 to i64               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  br i1 %i.my, label %._crit_edge.i.i.i.i276, label %bb.ah

bb.ah:                                            ; preds = %.loopexit425
  %i.sk = load ptr, ptr %i.mx, align 8, !tbaa !17, !noalias !214 ; 2 uses
  %.not.i.i.i.i.i275 = icmp eq ptr %i.sk, null
  %i.sl = getelementptr [8 x i8], ptr %i.sk, i64 %i.sj
  %i.sm = select i1 %.not.i.i.i.i.i275, ptr null, ptr %i.sl
  br label %._crit_edge.i.i.i.i276

._crit_edge.i.i.i.i276:                           ; preds = %.loopexit425, %bb.ah
  %i.sn = phi ptr [ %i.sm, %bb.ah ], [ null, %.loopexit425 ] ; 2 uses
end_hunk_0
